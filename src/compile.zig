const std = @import("std");
const Io = std.Io;

const options = @import("options");
const build_script_path_dir = options.proj_dir ++ "/build_config/" ++ target;
const build_script_path = build_script_path_dir ++ "/builder.zig";

// const target = "x86_64-linux-gnu";
const target = "x86_64-windows-gnu";

var lib_paths: std.StringArrayHashMapUnmanaged(void) = .empty;
var libs: std.StringArrayHashMapUnmanaged(void) = .empty;
var defs: std.StringArrayHashMapUnmanaged([]const u8) = .empty;
var include_dirs: std.StringArrayHashMapUnmanaged(void) = .empty;
var build_include_dirs: std.StringArrayHashMapUnmanaged(void) = .empty;
var sources: std.StringArrayHashMapUnmanaged(void) = .empty;
var build_sources: std.StringArrayHashMapUnmanaged(void) = .empty;
var build_source_dirs: std.StringArrayHashMapUnmanaged(void) = .empty;

fn collectArgs(allocator: std.mem.Allocator, args_str: []const u8) !void {
    var args = std.mem.tokenizeAny(u8, args_str, &std.ascii.whitespace);
    while (args.next()) |arg| {
        if ((std.mem.endsWith(u8, arg, ".c") and !std.mem.endsWith(u8, arg, ".h.c")) or
            std.mem.endsWith(u8, arg, ".cpp"))
        {
            if (std.mem.cutPrefix(u8, arg, "build/")) |cut_arg| {
                try build_sources.put(allocator, cut_arg, {});
            } else {
                try sources.put(allocator, arg, {});
            }
        } else if (std.mem.cutPrefix(u8, arg, "-I")) |path_raw| {
            const path = std.mem.trim(u8, path_raw, "\"");
            if (std.mem.cutPrefix(u8, path, "build/")) |path_cut| {
                if (!std.mem.endsWith(u8, path_cut, "include-revision")) {
                    try build_include_dirs.put(allocator, path_cut, {});
                }
            } else {
                try include_dirs.put(allocator, path, {});
            }
        } else if (std.mem.cutPrefix(u8, arg, "-L")) |path_raw| {
            const path = std.mem.trim(u8, path_raw, "\"");
            try lib_paths.put(allocator, path, {});
        } else if (std.mem.cutPrefix(u8, arg, "-l")) |path_raw| {
            const path = std.mem.trim(u8, path_raw, "\"");
            try libs.put(allocator, path, {});
        } else if (std.mem.cutPrefix(u8, arg, "-D")) |def| {
            const key, const value = std.mem.cut(u8, def, "=") orelse .{ def, "" };
            try defs.put(allocator, key, value);
        }
    }
}

fn copyBuildDir(io: Io, allocator: std.mem.Allocator, path: []const u8) !void {
    const dst_path = try std.fs.path.join(
        allocator,
        &.{ options.proj_dir ++ "/build_deps/" ++ target, path },
    );

    var run_mkdir = try std.process.spawn(io, .{
        .argv = &.{
            "mkdir",
            "-p",
            std.fs.path.dirname(dst_path) orelse ".",
        },
    });
    _ = try run_mkdir.wait(io);

    var run_cp = try std.process.spawn(io, .{
        .argv = &.{
            "cp",
            "-r",
            try std.fs.path.join(allocator, &.{ "build", path }),
            dst_path,
        },
    });
    _ = try run_cp.wait(io);
}

pub fn main(init: std.process.Init) !void {
    const allocator = init.arena.allocator();
    const cwd = Io.Dir.cwd();

    const cwd_path = try std.mem.concat(allocator, u8, &.{
        try cwd.realPathFileAlloc(init.io, ".", allocator),
        "/",
    });

    // const stderr = Io.File.stderr();

    // try cwd.deleteTree(init.io, "build");

    // var run_config = try std.process.spawn(init.io, .{
    //     .stderr = .{ .file = stderr },
    //     .stdout = .{ .file = stderr },
    //     .argv = &.{
    //         "cmake",
    //         "-S",
    //         ".",
    //         "-B",
    //         "build",
    //         "-DCMAKE_C_COMPILER=\'" ++ options.zig_exe ++ ";cc\'",
    //         "-DCMAKE_CXX_COMPILER=\'" ++ options.zig_exe ++ ";cc\'",
    //         "-DSDL_SHARED=OFF",
    //         "-DSDL_STATIC=ON",
    //         "-DSDL_TEST_LIBRARY=OFF",
    //         "-DCMAKE_BUILD_TYPE=Release",

    //         "-DCMAKE_SYSTEM_NAME=Windows",
    //         "-DCMAKE_C_COMPILER_TARGET=" ++ target,
    //         "-DCMAKE_CXX_COMPILER_TARGET=" ++ target,
    //         "-DCMAKE_RC_COMPILER=x86_64-w64-mingw32-windres",
    //     },
    // });
    // _ = try run_config.wait(init.io);

    // var run_build = try std.process.spawn(init.io, .{
    //     .stderr = .{ .file = stderr },
    //     .stdout = .{ .file = stderr },
    //     .argv = &.{
    //         "cmake",
    //         "--build",
    //         "build",
    //         "--config",
    //         "Release",
    //         // "--verbose",
    //     },
    // });
    // _ = try run_build.wait(init.io);

    const flags_data_raw = try cwd.readFileAlloc(init.io, "build/CMakeFiles/SDL3-static.dir/flags.make", allocator, .unlimited);
    const flags_data = try std.mem.replaceOwned(u8, allocator, flags_data_raw, cwd_path, "");

    var flags_lines = std.mem.tokenizeAny(u8, flags_data, "\r\n");
    while (flags_lines.next()) |line| {
        if (!std.mem.startsWith(u8, line, "C_DEFINES") and
            !std.mem.startsWith(u8, line, "C_INCLUDES") and
            !std.mem.startsWith(u8, line, "C_FLAGS") and
            !std.mem.startsWith(u8, line, "CXX_DEFINES") and
            !std.mem.startsWith(u8, line, "CXX_INCLUDES") and
            !std.mem.startsWith(u8, line, "CXX_FLAGS"))
        {
            continue;
        }
        try collectArgs(allocator, line);
    }

    inline for ([_][]const u8{
        "includes_C.rsp",
        "includes_CXX.rsp",
    }) |includes_file_name| {
        const includes_data_raw = try cwd.readFileAlloc(init.io, "build/CMakeFiles/SDL3-static.dir/" ++ includes_file_name, allocator, .unlimited);
        const includes_data = try std.mem.replaceOwned(u8, allocator, includes_data_raw, cwd_path, "");
        try collectArgs(allocator, includes_data);
    }

    const build_data_raw = try cwd.readFileAlloc(init.io, "build/CMakeFiles/SDL3-static.dir/build.make", allocator, .unlimited);
    const build_data = try std.mem.replaceOwned(u8, allocator, build_data_raw, cwd_path, "");

    var build_lines = std.mem.tokenizeAny(u8, build_data, "\r\n");
    while (build_lines.next()) |line_raw| {
        const line = std.mem.trim(u8, line_raw, &std.ascii.whitespace);
        if (!std.mem.startsWith(u8, line, options.zig_exe)) {
            continue;
        }
        try collectArgs(allocator, line);
    }

    const sdlpc_data_raw = try cwd.readFileAlloc(init.io, "build/sdl3.pc", allocator, .unlimited);
    var sdlpc_lines = std.mem.tokenizeAny(u8, sdlpc_data_raw, "\r\n");
    while (sdlpc_lines.next()) |line_raw| {
        const line = std.mem.trim(u8, line_raw, &std.ascii.whitespace);
        if (!std.mem.startsWith(u8, line, "Libs")) {
            continue;
        }
        try collectArgs(allocator, line);
    }

    for (build_include_dirs.keys()) |dir_path| {
        if (try build_source_dirs.fetchPut(allocator, dir_path, {}) == null) {
            try copyBuildDir(init.io, allocator, dir_path);
        }
    }

    try cwd.createDirPath(init.io, build_script_path_dir);
    const out_file = try cwd.createFile(init.io, build_script_path, .{});
    var out_buffer: [4096]u8 = undefined;
    var out_reader = out_file.writerStreaming(init.io, &out_buffer);
    var out = &out_reader.interface;

    try out.writeAll(
        \\const std = @import("std");
        \\const extra = @import("extra.zig");
        \\
        \\pub fn build(b: *std.Build, sdl_dep: *std.Build.Dependency, mod: *std.Build.Module) void {
        \\
    );

    for (build_include_dirs.keys()) |path| {
        try out.print("    mod.addIncludePath(b.path(\"build_deps/{s}/{f}\"));\n", .{ target, std.zig.fmtString(path) });
    }

    for (include_dirs.keys()) |path| {
        try out.print("    mod.addIncludePath(sdl_dep.path(\"{f}\"));\n", .{std.zig.fmtString(path)});
    }

    try out.writeAll("\n");

    for (defs.keys(), defs.values()) |key, value| {
        try out.print("    mod.addCMacro(\"{f}\", \"{f}\");\n", .{ std.zig.fmtString(key), std.zig.fmtString(value) });
    }

    try out.writeAll(
        \\
        \\    mod.addCSourceFiles(.{
        \\
    );
    try out.print("        .root = b.path(\"build_deps/{s}\"),\n", .{target});
    try out.writeAll(
        \\        .files = &.{
        \\
    );
    for (build_sources.keys()) |path| {
        const dir_path = std.fs.path.dirname(path).?;
        if (try build_source_dirs.fetchPut(allocator, dir_path, {}) == null) {
            try copyBuildDir(init.io, allocator, dir_path);
        }
        try out.print("            \"{f}\",\n", .{std.zig.fmtString(path)});
    }
    try out.writeAll(
        \\        },
        \\    });
        \\
    );

    try out.writeAll(
        \\
        \\    mod.addCSourceFiles(.{
        \\        .root = sdl_dep.path("."),
        \\        .files = &.{
        \\
    );
    for (sources.keys()) |path| {
        try out.print("            \"{f}\",\n", .{std.zig.fmtString(path)});
    }
    try out.writeAll(
        \\        },
        \\    });
        \\
        \\    extra.build(b, sdl_dep, mod);
        \\}
        \\
    );

    try out.flush();

    std.debug.print("Libs:\n", .{});
    for (libs.keys()) |lib| {
        std.debug.print("{s}\n", .{lib});
    }
}
