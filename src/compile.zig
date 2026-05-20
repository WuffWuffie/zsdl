const std = @import("std");
const Io = std.Io;
const options = @import("options");

const targets = [_][]const u8{
    "x86_64-linux-gnu",
    "x86_64-windows-gnu",
};

pub fn copyDirectoryRecursive(io: Io, allocator: std.mem.Allocator, src_dir: Io.Dir, dest_dir: Io.Dir) !void {
    var walker = try src_dir.walk(allocator);
    defer walker.deinit();

    while (try walker.next(io)) |entry| {
        switch (entry.kind) {
            .directory => try dest_dir.createDirPath(io, entry.path),
            .file => try src_dir.copyFile(entry.path, dest_dir, entry.path, io, .{}),
            else => {},
        }
    }
}

const BuildState = struct {
    allocator: std.mem.Allocator,
    target: []const u8,
    os: []const u8,
    cwd: Io.Dir,

    lib_paths: std.StringArrayHashMapUnmanaged(void) = .empty,
    libs: std.StringArrayHashMapUnmanaged(void) = .empty,
    defs: std.StringArrayHashMapUnmanaged([]const u8) = .empty,
    include_dirs: std.StringArrayHashMapUnmanaged(void) = .empty,
    build_include_dirs: std.StringArrayHashMapUnmanaged(void) = .empty,
    sources: std.StringArrayHashMapUnmanaged(void) = .empty,
    build_sources: std.StringArrayHashMapUnmanaged(void) = .empty,
    build_source_dirs: std.StringArrayHashMapUnmanaged(void) = .empty,

    fn isLinux(self: *const BuildState) bool {
        return std.mem.eql(u8, self.os, "linux");
    }

    fn isWindows(self: *const BuildState) bool {
        return std.mem.eql(u8, self.os, "windows");
    }

    fn join(self: *BuildState, parts: []const []const u8) ![]const u8 {
        return std.fs.path.join(self.allocator, parts);
    }

    fn collectArgs(self: *BuildState, args_str: []const u8) !void {
        var args = std.mem.tokenizeAny(u8, args_str, &std.ascii.whitespace);
        while (args.next()) |arg| {
            if ((std.mem.endsWith(u8, arg, ".c") and !std.mem.endsWith(u8, arg, ".h.c")) or
                std.mem.endsWith(u8, arg, ".cpp"))
            {
                if (std.mem.cutPrefix(u8, arg, "build/")) |cut| {
                    try self.build_sources.put(self.allocator, cut, {});
                } else {
                    try self.sources.put(self.allocator, arg, {});
                }
            } else if (std.mem.cutPrefix(u8, arg, "-I")) |path_raw| {
                const path = std.mem.trim(u8, path_raw, "\"");
                if (std.mem.cutPrefix(u8, path, "build/")) |cut| {
                    if (!std.mem.endsWith(u8, cut, "include-revision")) {
                        try self.build_include_dirs.put(self.allocator, cut, {});
                    }
                } else {
                    try self.include_dirs.put(self.allocator, path, {});
                }
            } else if (std.mem.cutPrefix(u8, arg, "-L")) |path_raw| {
                try self.lib_paths.put(self.allocator, std.mem.trim(u8, path_raw, "\""), {});
            } else if (std.mem.cutPrefix(u8, arg, "-l")) |path_raw| {
                try self.libs.put(self.allocator, std.mem.trim(u8, path_raw, "\""), {});
            } else if (std.mem.cutPrefix(u8, arg, "-D")) |def| {
                const key, const value = std.mem.cut(u8, def, "=") orelse .{ def, "" };
                try self.defs.put(self.allocator, key, value);
            }
        }
    }

    fn copyBuildDir(self: *BuildState, io: Io, path: []const u8) !void {
        const src_path = try self.join(&.{ "build", path });
        const dst_path = try self.join(&.{ options.proj_dir, "build_deps", self.target, path });

        var src_dir = try self.cwd.openDir(io, src_path, .{ .iterate = true });
        defer src_dir.close(io);

        var dest_dir = try self.cwd.createDirPathOpen(io, dst_path, .{});
        defer dest_dir.close(io);

        try copyDirectoryRecursive(io, self.allocator, src_dir, dest_dir);
    }

    fn runCmake(self: *BuildState, io: Io, cwd: Io.Dir, stderr: Io.File) !void {
        try cwd.deleteTree(io, "build");

        const c_compiler_flag = try std.fmt.allocPrint(
            self.allocator,
            "-DCMAKE_C_COMPILER='{s};cc'",
            .{options.zig_exe},
        );
        const cxx_compiler_flag = try std.fmt.allocPrint(
            self.allocator,
            "-DCMAKE_CXX_COMPILER='{s};cc'",
            .{options.zig_exe},
        );

        var argv: std.ArrayListUnmanaged([]const u8) = .empty;
        try argv.appendSlice(self.allocator, &.{
            "cmake",                      "-S",              ".",                "-B",              "build",
            c_compiler_flag,              cxx_compiler_flag, "-DSDL_SHARED=OFF", "-DSDL_STATIC=ON", "-DSDL_TEST_LIBRARY=OFF",
            "-DCMAKE_BUILD_TYPE=Release",
        });

        if (self.isLinux()) {
            try argv.appendSlice(self.allocator, &.{
                "-DCMAKE_SYSTEM_NAME=Linux",
                try std.fmt.allocPrint(self.allocator, "-DCMAKE_C_COMPILER_TARGET={s}", .{self.target}),
                try std.fmt.allocPrint(self.allocator, "-DCMAKE_CXX_COMPILER_TARGET={s}", .{self.target}),
            });
        } else if (self.isWindows()) {
            try argv.appendSlice(self.allocator, &.{
                "-DCMAKE_SYSTEM_NAME=Windows",
                try std.fmt.allocPrint(self.allocator, "-DCMAKE_C_COMPILER_TARGET={s}", .{self.target}),
                try std.fmt.allocPrint(self.allocator, "-DCMAKE_CXX_COMPILER_TARGET={s}", .{self.target}),
                "-DCMAKE_RC_COMPILER=x86_64-w64-mingw32-windres",
            });
        } else {
            return error.UnsupportedTarget;
        }

        var configure = try std.process.spawn(io, .{
            .stderr = .{ .file = stderr },
            .stdout = .{ .file = stderr },
            .argv = argv.items,
        });
        _ = try configure.wait(io);

        var build = try std.process.spawn(io, .{
            .stderr = .{ .file = stderr },
            .stdout = .{ .file = stderr },
            .argv = &.{ "cmake", "--build", "build", "--config", "Release" },
        });
        _ = try build.wait(io);
    }

    fn collectBuildInfo(
        self: *BuildState,
        io: Io,
        cwd: Io.Dir,
        cwd_path: []const u8,
    ) !void {
        // flags.make — compiler defines, includes, and flags
        const flags_raw = try cwd.readFileAlloc(
            io,
            "build/CMakeFiles/SDL3-static.dir/flags.make",
            self.allocator,
            .unlimited,
        );
        const flags = try std.mem.replaceOwned(u8, self.allocator, flags_raw, cwd_path, "");

        var flag_lines = std.mem.tokenizeAny(u8, flags, "\r\n");
        while (flag_lines.next()) |line| {
            if (!std.mem.startsWith(u8, line, "C_DEFINES") and
                !std.mem.startsWith(u8, line, "C_INCLUDES") and
                !std.mem.startsWith(u8, line, "C_FLAGS") and
                !std.mem.startsWith(u8, line, "CXX_DEFINES") and
                !std.mem.startsWith(u8, line, "CXX_INCLUDES") and
                !std.mem.startsWith(u8, line, "CXX_FLAGS")) continue;
            try self.collectArgs(line);
        }

        // Windows supplies extra include lists in response files.
        if (self.isWindows()) {
            for ([_][]const u8{ "includes_C.rsp", "includes_CXX.rsp" }) |rsp| {
                const rsp_path = try self.join(
                    &.{ "build/CMakeFiles/SDL3-static.dir", rsp },
                );
                const raw = try cwd.readFileAlloc(io, rsp_path, self.allocator, .unlimited);
                const data = try std.mem.replaceOwned(u8, self.allocator, raw, cwd_path, "");
                try self.collectArgs(data);
            }
        }

        // build.make — source files compiled by zig cc
        const build_raw = try cwd.readFileAlloc(
            io,
            "build/CMakeFiles/SDL3-static.dir/build.make",
            self.allocator,
            .unlimited,
        );
        const build_data = try std.mem.replaceOwned(u8, self.allocator, build_raw, cwd_path, "");

        var build_lines = std.mem.tokenizeAny(u8, build_data, "\r\n");
        while (build_lines.next()) |line_raw| {
            const line = std.mem.trim(u8, line_raw, &std.ascii.whitespace);
            if (!std.mem.startsWith(u8, line, options.zig_exe)) continue;
            try self.collectArgs(line);
        }

        // sdl3.pc — linker libs
        const pc_raw = try cwd.readFileAlloc(io, "build/sdl3.pc", self.allocator, .unlimited);
        var pc_lines = std.mem.tokenizeAny(u8, pc_raw, "\r\n");
        while (pc_lines.next()) |line_raw| {
            const line = std.mem.trim(u8, line_raw, &std.ascii.whitespace);
            if (!std.mem.startsWith(u8, line, "Libs")) continue;
            try self.collectArgs(line);
        }
    }

    fn copyRequiredBuildDirs(self: *BuildState, io: Io) !void {
        for (self.build_include_dirs.keys()) |dir_path| {
            if (try self.build_source_dirs.fetchPut(self.allocator, dir_path, {}) == null) {
                try self.copyBuildDir(io, dir_path);
            }
        }
    }

    fn writeBuilderScript(self: *BuildState, io: Io, cwd: Io.Dir) !void {
        const script_dir = try self.join(&.{ options.proj_dir, "build_config", self.target });
        const script_path = try self.join(&.{ script_dir, "builder.zig" });

        try cwd.createDirPath(io, script_dir);

        const out_file = try cwd.createFile(io, script_path, .{});
        var buf: [4096]u8 = undefined;
        var stream = out_file.writerStreaming(io, &buf);
        const out = &stream.interface;

        try out.writeAll(
            \\const std = @import("std");
            \\const extra = @import("extra.zig");
            \\
            \\pub fn build(b: *std.Build, sdl_dep: *std.Build.Dependency, mod: *std.Build.Module) void {
            \\
        );

        for (self.build_include_dirs.keys()) |path| {
            try out.print(
                "    mod.addIncludePath(b.path(\"build_deps/{s}/{f}\"));\n",
                .{ self.target, std.zig.fmtString(path) },
            );
        }
        for (self.include_dirs.keys()) |path| {
            try out.print(
                "    mod.addIncludePath(sdl_dep.path(\"{f}\"));\n",
                .{std.zig.fmtString(path)},
            );
        }

        try out.writeAll("\n");

        for (self.defs.keys(), self.defs.values()) |key, value| {
            try out.print(
                "    mod.addCMacro(\"{f}\", \"{f}\");\n",
                .{ std.zig.fmtString(key), std.zig.fmtString(value) },
            );
        }

        // Build-generated sources (live under build_deps/<target>/)
        try out.writeAll("\n    mod.addCSourceFiles(.{\n");
        try out.print("        .root = b.path(\"build_deps/{s}\"),\n", .{self.target});
        try out.writeAll("        .files = &.{\n");
        for (self.build_sources.keys()) |path| {
            const dir = std.fs.path.dirname(path).?;
            if (try self.build_source_dirs.fetchPut(self.allocator, dir, {}) == null) {
                try self.copyBuildDir(io, dir);
            }
            try out.print("            \"{f}\",\n", .{std.zig.fmtString(path)});
        }
        try out.writeAll("        },\n    });\n");

        // SDL upstream sources (live in the SDL dependency itself)
        try out.writeAll(
            \\
            \\    mod.addCSourceFiles(.{
            \\        .root = sdl_dep.path("."),
            \\        .files = &.{
            \\
        );
        for (self.sources.keys()) |path| {
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
    }

    fn printLibs(self: *const BuildState) void {
        std.debug.print("Libs for {s}:\n", .{self.target});
        for (self.libs.keys()) |lib| {
            std.debug.print("  {s}\n", .{lib});
        }
    }
};

pub fn main(init: std.process.Init) !void {
    const gpa = init.gpa;
    const allocator = init.arena.allocator();
    const cwd = Io.Dir.cwd();
    const stderr = Io.File.stderr();

    const cwd_realpath = try cwd.realPathFileAlloc(init.io, ".", allocator);
    const cwd_path = try std.mem.concat(allocator, u8, &.{ cwd_realpath, "/" });

    for (targets) |target| {
        var arena = std.heap.ArenaAllocator.init(gpa);
        defer arena.deinit();

        const target_build_deps = try std.fs.path.join(allocator, &.{ options.proj_dir, "build_deps", target });
        try cwd.deleteTree(init.io, target_build_deps);

        var it = std.mem.splitScalar(u8, target, '-');
        _ = it.next(); // arch
        const os = it.next() orelse return error.InvalidTarget;
        var state = BuildState{
            .cwd = cwd,
            .allocator = arena.allocator(),
            .target = target,
            .os = os,
        };

        try state.runCmake(init.io, cwd, stderr);
        try state.collectBuildInfo(init.io, cwd, cwd_path);
        try state.copyRequiredBuildDirs(init.io);
        try state.writeBuilderScript(init.io, cwd);
        state.printLibs();
    }
}
