const std = @import("std");
const Io = std.Io;

pub fn main(init: std.process.Init) !void {
    const allocator = init.arena.allocator();
    const io = init.io;

    const args = try init.minimal.args.toSlice(allocator);

    var run_tc = try std.process.spawn(io, .{
        .stdout = .pipe,
        .cwd = .{ .path = args[1] },
        .argv = &.{
            "zig",
            "translate-c",
            "include/SDL3/SDL.h",
            "-Iinclude",
            "-DUSING_GENERATED_CONFIG_H",
            "-DSDL_STATIC_LIB",
            "-DSDL_assert_h_",
            "-DSDL_oldnames_h_",
            "-lc",
        },
    });

    var reader = run_tc.stdout.?.reader(io, &.{});
    const source = try reader.interface.allocRemainingAlignedSentinel(allocator, .unlimited, .of(u8), 0);
    _ = try run_tc.wait(io);

    var lines_filtered: std.ArrayList(u8) = .empty;

    var lines = std.mem.tokenizeAny(u8, source, "\r\n");
    while (lines.next()) |line| {
        if (std.mem.startsWith(u8, line, "    pub const")) continue;
        try lines_filtered.appendSlice(allocator, line);
        try lines_filtered.append(allocator, '\n');
    }
    try lines_filtered.append(allocator, '\x00');

    const source_filtered = try std.mem.replaceOwned(u8, allocator, lines_filtered.items, "pub extern fn", "extern fn");

    var seen_decls: std.StringHashMapUnmanaged(void) = .empty;
    var seen_consts: std.StringHashMapUnmanaged(struct { std.zig.Ast.Node.Index, []const u8 }) = .empty;
    var seen_structs: std.StringHashMapUnmanaged([]const u8) = .empty;
    var generate_wrappers: std.StringHashMapUnmanaged([]const u8) = .empty;

    var fixups = std.zig.Ast.Render.Fixups{};

    const ast = try std.zig.Ast.parse(allocator, source_filtered[0 .. source_filtered.len - 1 :0], .zig);
    for (ast.rootDecls()) |node| {
        switch (ast.nodeTag(node)) {
            .simple_var_decl => {
                const decl = ast.fullVarDecl(node).?;
                const var_name = ast.tokenSlice(decl.ast.mut_token + 1);
                if (std.mem.cutPrefix(u8, var_name, "struct_SDL_")) |name| {
                    try seen_structs.put(allocator, name, var_name);
                } else if (std.mem.cutPrefix(u8, var_name, "SDL_")) |name| {
                    if (std.mem.endsWith(u8, name, "_h") or std.mem.endsWith(u8, name, "_h_")) {
                        std.debug.print("removed: {s}\n", .{var_name});
                        try fixups.omit_nodes.put(allocator, node, {});
                    } else {
                        try seen_consts.put(allocator, name, .{ node, var_name });
                    }
                } else if (std.mem.startsWith(u8, var_name, "__glibc") or
                    std.mem.startsWith(u8, var_name, "__GLIBC") or
                    std.mem.startsWith(u8, var_name, "__GNUC") or
                    std.mem.eql(u8, var_name, "@\"bool\""))
                {
                    try fixups.omit_nodes.put(allocator, node, {});
                } else if (std.mem.eql(u8, var_name, "@\"true\"")) {
                    try seen_consts.put(allocator, "true_val", .{ node, var_name });
                } else if (std.mem.eql(u8, var_name, "@\"false\"")) {
                    try seen_consts.put(allocator, "false_val", .{ node, var_name });
                } else if (std.mem.cutPrefix(u8, var_name, "AUDIO_")) |name| {
                    try seen_consts.put(allocator, name, .{ node, var_name });
                } else if (std.mem.cutPrefix(u8, var_name, "KMOD_")) |name| {
                    try seen_consts.put(allocator, name, .{ node, var_name });
                } else if (std.mem.cutPrefix(u8, var_name, "SDLK_")) |name| {
                    const new_name = try std.mem.concat(allocator, u8, &.{ "KEY_", name });
                    try seen_consts.put(allocator, new_name, .{ node, var_name });
                } else {
                    try seen_decls.put(allocator, var_name, {});
                }
            },
            .fn_proto,
            .fn_proto_multi,
            .fn_proto_one,
            .fn_proto_simple,
            .fn_decl,
            => {
                var buf: [1]std.zig.Ast.Node.Index = undefined;
                const decl = ast.fullFnProto(&buf, node).?;
                const fn_name = ast.tokenSlice(decl.ast.fn_token + 1);
                if (std.mem.startsWith(u8, fn_name, "__glibc") or
                    std.mem.startsWith(u8, fn_name, "__GLIBC") or
                    std.mem.startsWith(u8, fn_name, "__GNUC"))
                {
                    try fixups.omit_nodes.put(allocator, node, {});
                }
                if (std.mem.cutPrefix(u8, fn_name, "SDL_")) |name| {
                    if (decl.visib_token != null) {
                        try seen_consts.put(allocator, name, .{ node, fn_name });
                    } else {
                        try generate_wrappers.put(allocator, name, fn_name);
                    }
                } else {
                    try seen_decls.put(allocator, fn_name, {});
                }
            },
            else => {},
        }
    }

    var it = seen_consts.iterator();
    while (it.next()) |entry| {
        const new_name = entry.key_ptr.*;
        const node, const old_const_name = entry.value_ptr.*;
        try fixups.rename_identifiers.put(allocator, old_const_name, new_name);
        if (std.mem.eql(u8, new_name, "bool") or seen_decls.contains(new_name)) {
            std.debug.print("removed: {s}\n", .{old_const_name});
            try fixups.omit_nodes.put(allocator, node, {});
            continue;
        }

        if (seen_structs.get(new_name)) |old_struct_name| {
            try fixups.omit_nodes.put(allocator, node, {});
            try fixups.rename_identifiers.put(allocator, old_struct_name, new_name);
        }
    }

    var out_file = Io.File.stdout();
    var out_buffer: [4096]u8 = undefined;
    var out_writer = out_file.writer(init.io, &out_buffer);
    const out = &out_writer.interface;
    try ast.render(allocator, out, fixups);

    var wrappers_it = generate_wrappers.iterator();
    while (wrappers_it.next()) |entry| {
        if (seen_decls.contains(entry.key_ptr.*)) continue;
        try out.print("pub const {s} = {s};\n", .{ entry.key_ptr.*, entry.value_ptr.* });
    }

    try out.flush();
}
