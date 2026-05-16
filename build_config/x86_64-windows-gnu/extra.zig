const std = @import("std");

pub fn build(b: *std.Build, sdl_dep: *std.Build.Dependency, mod: *std.Build.Module) void {
    _ = b;
    _ = sdl_dep;

    // mod.link_libcpp = true;

    // mod.linkSystemLibrary("mingwex", .{ .use_pkg_config = .no });
    // exe.addLinkerFlag("-lmingwex");
    // exe.addLinkerFlag("-lmsvcrt");
    // mod.linkSystemLibrary("msvcrt", .{});

    mod.linkSystemLibrary("m", .{});
    mod.linkSystemLibrary("kernel32", .{});
    mod.linkSystemLibrary("user32", .{});
    mod.linkSystemLibrary("gdi32", .{});
    mod.linkSystemLibrary("winmm", .{});
    mod.linkSystemLibrary("imm32", .{});
    mod.linkSystemLibrary("ole32", .{});
    mod.linkSystemLibrary("oleaut32", .{});
    mod.linkSystemLibrary("version", .{});
    mod.linkSystemLibrary("uuid", .{});
    mod.linkSystemLibrary("advapi32", .{});
    mod.linkSystemLibrary("setupapi", .{});
    mod.linkSystemLibrary("shell32", .{});
    mod.linkSystemLibrary("hid", .{});
    mod.linkSystemLibrary("dinput8", .{});
}
