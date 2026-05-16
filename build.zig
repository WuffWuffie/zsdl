const std = @import("std");

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});

    const sdl_dep = b.dependency("sdl", .{});

    codegen(b, target, sdl_dep);

    const config_revision = b.addConfigHeader(
        .{ .style = .{ .cmake = sdl_dep.path("include/build_config/SDL_revision.h.cmake") } },
        @import("build_config/revision.zig.zon"),
    );

    const mod = b.addModule("zsdl", .{
        .root_source_file = b.path("src/sdl.zig"),
        .target = target,
        .link_libc = true,
    });

    mod.addConfigHeader(config_revision);
    mod.addAfterIncludePath(sdl_dep.path("src/video/khronos"));

    const os = target.result.os.tag;
    const arch = target.result.cpu.arch;
    const abi = target.result.abi;

    switch (os) {
        .linux => switch (arch) {
            .x86_64 => switch (abi) {
                .gnu => @import("build_config/x86_64-linux-gnu/builder.zig").build(b, sdl_dep, mod),
                else => @panic("todo"),
            },
            else => @panic("todo"),
        },
        .windows => switch (arch) {
            .x86_64 => switch (abi) {
                .gnu => @import("build_config/x86_64-windows-gnu/builder.zig").build(b, sdl_dep, mod),
                else => @panic("todo"),
            },
            else => @panic("todo"),
        },
        else => @panic("todo"),
    }
}

pub fn codegen(b: *std.Build, target: std.Build.ResolvedTarget, sdl_dep: *std.Build.Dependency) void {
    const optimize = b.standardOptimizeOption(.{});

    const revision_exe = b.addExecutable(.{
        .name = "revision",
        .root_module = b.createModule(.{
            .root_source_file = b.path("src/revision.zig"),
            .target = target,
            .optimize = optimize,
        }),
    });

    revision_exe.root_module.addAnonymousImport("sdl_build", .{
        .root_source_file = sdl_dep.path("CMakeLists.txt"),
    });
    revision_exe.root_module.addAnonymousImport("mod_conf", .{
        .root_source_file = b.path("build.zig.zon"),
    });

    const gen_revision_step = b.step("gen-revision", "Generate revision");
    const gen_revision_cmd = b.addRunArtifact(revision_exe);
    gen_revision_step.dependOn(&gen_revision_cmd.step);

    const options = b.addOptions();
    options.addOption([]const u8, "zig_exe", b.graph.zig_exe);
    options.addOptionPath("proj_dir", b.path("."));

    const compile_exe = b.addExecutable(.{
        .name = "compile",
        .root_module = b.createModule(.{
            .root_source_file = b.path("src/compile.zig"),
            .target = target,
            .optimize = optimize,
            .imports = &.{
                .{ .name = "options", .module = options.createModule() },
            },
        }),
    });

    const compile_step = b.step("compile", "Compile and collect stuff");
    const compile_cmd = b.addRunArtifact(compile_exe);
    compile_cmd.cwd = sdl_dep.path(".");
    compile_step.dependOn(&compile_cmd.step);

    const bindgen_exe = b.addExecutable(.{
        .name = "bindgen",
        .root_module = b.createModule(.{
            .root_source_file = b.path("src/bindgen.zig"),
            .target = target,
            .optimize = optimize,
        }),
    });

    const bindgen_step = b.step("bindgen", "Bindgen stuff");
    const bindgen_cmd = b.addRunArtifact(bindgen_exe);
    bindgen_step.dependOn(&bindgen_cmd.step);
    bindgen_cmd.addDirectoryArg(sdl_dep.path("."));
}
