const std = @import("std");
const sdl_build = @embedFile("sdl_build");
const mod_conf = @embedFile("mod_conf");
const Io = std.Io;

pub fn main(init: std.process.Init) !void {
    const cwd = Io.Dir.cwd();

    _, const sdl_build_cut = std.mem.cut(u8, sdl_build, "project(SDL3 LANGUAGES C VERSION \"").?;
    const sdl_version, _ = std.mem.cut(u8, sdl_build_cut, "\")").?;

    _, const mod_conf_cut = std.mem.cut(u8, mod_conf, "git+https://github.com/libsdl-org/SDL/#").?;
    const hash = mod_conf_cut[0..7];

    var out_buffer: [4096]u8 = undefined;
    const res = try std.fmt.bufPrint(
        &out_buffer,
        ".{{ .SDL_REVISION = \"SDL-{s}-{s}\", .SDL_VENDOR_INFO = false }}",
        .{ sdl_version, hash },
    );
    try cwd.writeFile(init.io, .{
        .sub_path = "build_config/revision.zig.zon",
        .data = res,
    });
}
