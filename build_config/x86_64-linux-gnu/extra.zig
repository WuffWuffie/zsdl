const std = @import("std");

pub fn build(b: *std.Build, sdl_dep: *std.Build.Dependency, mod: *std.Build.Module) void {
    _ = sdl_dep;

    mod.linkSystemLibrary("pipewire-0.3", .{});
    mod.linkSystemLibrary("spa-0.2", .{});
    mod.linkSystemLibrary("fribidi", .{});
    mod.linkSystemLibrary("libdrm", .{});
    mod.linkSystemLibrary("libdecor-0", .{});
    mod.linkSystemLibrary("dbus-1", .{});
    mod.linkSystemLibrary("libusb-1.0", .{});

    mod.addIncludePath(b.path("build_deps/x86_64-linux-gnu/wayland-generated-protocols"));
}
