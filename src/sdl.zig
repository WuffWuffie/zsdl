const __root = @This();
pub const __builtin = @import("std").zig.c_translation.builtins;
pub const __helpers = @import("std").zig.c_translation.helpers;
pub const struct___va_list_tag_1 = extern struct {
    unnamed_0: c_uint = 0,
    unnamed_1: c_uint = 0,
    unnamed_2: ?*anyopaque = null,
    unnamed_3: ?*anyopaque = null,
};
pub const __builtin_va_list = [1]struct___va_list_tag_1;
pub const va_list = __builtin_va_list;
pub const __gnuc_va_list = __builtin_va_list;
pub const ptrdiff_t = c_long;
pub const wchar_t = c_int;
pub const max_align_t = extern struct {
    __aro_max_align_ll: c_longlong = 0,
    __aro_max_align_ld: c_longdouble = 0,
};
extern fn memcpy(noalias __dest: ?*anyopaque, noalias __src: ?*const anyopaque, __n: usize) ?*anyopaque;
extern fn memmove(__dest: ?*anyopaque, __src: ?*const anyopaque, __n: usize) ?*anyopaque;
extern fn memccpy(noalias __dest: ?*anyopaque, noalias __src: ?*const anyopaque, __c: c_int, __n: usize) ?*anyopaque;
extern fn memset(__s: ?*anyopaque, __c: c_int, __n: usize) ?*anyopaque;
extern fn memset_explicit(__s: ?*anyopaque, __c: c_int, __n: usize) ?*anyopaque;
extern fn memcmp(__s1: ?*const anyopaque, __s2: ?*const anyopaque, __n: usize) c_int;
extern fn __memcmpeq(__s1: ?*const anyopaque, __s2: ?*const anyopaque, __n: usize) c_int;
extern fn memchr(__s: ?*const anyopaque, __c: c_int, __n: usize) ?*anyopaque;
extern fn strcpy(noalias __dest: [*c]u8, noalias __src: [*c]const u8) [*c]u8;
extern fn strncpy(noalias __dest: [*c]u8, noalias __src: [*c]const u8, __n: usize) [*c]u8;
extern fn strcat(noalias __dest: [*c]u8, noalias __src: [*c]const u8) [*c]u8;
extern fn strncat(noalias __dest: [*c]u8, noalias __src: [*c]const u8, __n: usize) [*c]u8;
extern fn strcmp(__s1: [*c]const u8, __s2: [*c]const u8) c_int;
extern fn strncmp(__s1: [*c]const u8, __s2: [*c]const u8, __n: usize) c_int;
extern fn strcoll(__s1: [*c]const u8, __s2: [*c]const u8) c_int;
extern fn strxfrm(noalias __dest: [*c]u8, noalias __src: [*c]const u8, __n: usize) usize;
pub const struct___locale_data_2 = opaque {};
pub const struct___locale_struct = extern struct {
    __locales: [13]?*struct___locale_data_2 = @import("std").mem.zeroes([13]?*struct___locale_data_2),
    __ctype_b: [*c]const c_ushort = null,
    __ctype_tolower: [*c]const c_int = null,
    __ctype_toupper: [*c]const c_int = null,
    __names: [13][*c]const u8 = @import("std").mem.zeroes([13][*c]const u8),
};
pub const __locale_t = [*c]struct___locale_struct;
pub const locale_t = __locale_t;
extern fn strcoll_l(__s1: [*c]const u8, __s2: [*c]const u8, __l: locale_t) c_int;
extern fn strxfrm_l(__dest: [*c]u8, __src: [*c]const u8, __n: usize, __l: locale_t) usize;
extern fn strdup(__s: [*c]const u8) [*c]u8;
extern fn strndup(__string: [*c]const u8, __n: usize) [*c]u8;
extern fn strchr(__s: [*c]const u8, __c: c_int) [*c]u8;
extern fn strrchr(__s: [*c]const u8, __c: c_int) [*c]u8;
extern fn strchrnul(__s: [*c]const u8, __c: c_int) [*c]u8;
extern fn strcspn(__s: [*c]const u8, __reject: [*c]const u8) usize;
extern fn strspn(__s: [*c]const u8, __accept: [*c]const u8) usize;
extern fn strpbrk(__s: [*c]const u8, __accept: [*c]const u8) [*c]u8;
extern fn strstr(__haystack: [*c]const u8, __needle: [*c]const u8) [*c]u8;
extern fn strtok(noalias __s: [*c]u8, noalias __delim: [*c]const u8) [*c]u8;
extern fn __strtok_r(noalias __s: [*c]u8, noalias __delim: [*c]const u8, noalias __save_ptr: [*c][*c]u8) [*c]u8;
extern fn strtok_r(noalias __s: [*c]u8, noalias __delim: [*c]const u8, noalias __save_ptr: [*c][*c]u8) [*c]u8;
extern fn strcasestr(__haystack: [*c]const u8, __needle: [*c]const u8) [*c]u8;
extern fn memmem(__haystack: ?*const anyopaque, __haystacklen: usize, __needle: ?*const anyopaque, __needlelen: usize) ?*anyopaque;
extern fn __mempcpy(noalias __dest: ?*anyopaque, noalias __src: ?*const anyopaque, __n: usize) ?*anyopaque;
extern fn mempcpy(noalias __dest: ?*anyopaque, noalias __src: ?*const anyopaque, __n: usize) ?*anyopaque;
extern fn strlen(__s: [*c]const u8) usize;
extern fn strnlen(__string: [*c]const u8, __maxlen: usize) usize;
extern fn strerror(__errnum: c_int) [*c]u8;
extern fn strerror_r(__errnum: c_int, __buf: [*c]u8, __buflen: usize) c_int;
extern fn strerror_l(__errnum: c_int, __l: locale_t) [*c]u8;
extern fn bcmp(__s1: ?*const anyopaque, __s2: ?*const anyopaque, __n: usize) c_int;
extern fn bcopy(__src: ?*const anyopaque, __dest: ?*anyopaque, __n: usize) void;
extern fn bzero(__s: ?*anyopaque, __n: usize) void;
extern fn index(__s: [*c]const u8, __c: c_int) [*c]u8;
extern fn rindex(__s: [*c]const u8, __c: c_int) [*c]u8;
extern fn ffs(__i: c_int) c_int;
extern fn ffsl(__l: c_long) c_int;
extern fn ffsll(__ll: c_longlong) c_int;
extern fn strcasecmp(__s1: [*c]const u8, __s2: [*c]const u8) c_int;
extern fn strncasecmp(__s1: [*c]const u8, __s2: [*c]const u8, __n: usize) c_int;
extern fn strcasecmp_l(__s1: [*c]const u8, __s2: [*c]const u8, __loc: locale_t) c_int;
extern fn strncasecmp_l(__s1: [*c]const u8, __s2: [*c]const u8, __n: usize, __loc: locale_t) c_int;
extern fn explicit_bzero(__s: ?*anyopaque, __n: usize) void;
extern fn strsep(noalias __stringp: [*c][*c]u8, noalias __delim: [*c]const u8) [*c]u8;
extern fn strsignal(__sig: c_int) [*c]u8;
extern fn __stpcpy(noalias __dest: [*c]u8, noalias __src: [*c]const u8) [*c]u8;
extern fn stpcpy(noalias __dest: [*c]u8, noalias __src: [*c]const u8) [*c]u8;
extern fn __stpncpy(noalias __dest: [*c]u8, noalias __src: [*c]const u8, __n: usize) [*c]u8;
extern fn stpncpy(noalias __dest: [*c]u8, noalias __src: [*c]const u8, __n: usize) [*c]u8;
extern fn strlcpy(noalias __dest: [*c]u8, noalias __src: [*c]const u8, __n: usize) usize;
extern fn strlcat(noalias __dest: [*c]u8, noalias __src: [*c]const u8, __n: usize) usize;
pub const wint_t = c_uint;
const union_unnamed_3 = extern union {
    __wch: c_uint,
    __wchb: [4]u8,
};
pub const __mbstate_t = extern struct {
    __count: c_int = 0,
    __value: union_unnamed_3 = @import("std").mem.zeroes(union_unnamed_3),
};
pub const mbstate_t = __mbstate_t;
pub const struct__IO_FILE = opaque {};
pub const __FILE = struct__IO_FILE;
pub const FILE = struct__IO_FILE;
pub const struct_tm = opaque {};
extern fn wcscpy(noalias __dest: [*c]wchar_t, noalias __src: [*c]const wchar_t) [*c]wchar_t;
extern fn wcsncpy(noalias __dest: [*c]wchar_t, noalias __src: [*c]const wchar_t, __n: usize) [*c]wchar_t;
extern fn wcslcpy(noalias __dest: [*c]wchar_t, noalias __src: [*c]const wchar_t, __n: usize) usize;
extern fn wcslcat(noalias __dest: [*c]wchar_t, noalias __src: [*c]const wchar_t, __n: usize) usize;
extern fn wcscat(noalias __dest: [*c]wchar_t, noalias __src: [*c]const wchar_t) [*c]wchar_t;
extern fn wcsncat(noalias __dest: [*c]wchar_t, noalias __src: [*c]const wchar_t, __n: usize) [*c]wchar_t;
extern fn wcscmp(__s1: [*c]const wchar_t, __s2: [*c]const wchar_t) c_int;
extern fn wcsncmp(__s1: [*c]const wchar_t, __s2: [*c]const wchar_t, __n: usize) c_int;
extern fn wcscasecmp(__s1: [*c]const wchar_t, __s2: [*c]const wchar_t) c_int;
extern fn wcsncasecmp(__s1: [*c]const wchar_t, __s2: [*c]const wchar_t, __n: usize) c_int;
extern fn wcscasecmp_l(__s1: [*c]const wchar_t, __s2: [*c]const wchar_t, __loc: locale_t) c_int;
extern fn wcsncasecmp_l(__s1: [*c]const wchar_t, __s2: [*c]const wchar_t, __n: usize, __loc: locale_t) c_int;
extern fn wcscoll(__s1: [*c]const wchar_t, __s2: [*c]const wchar_t) c_int;
extern fn wcsxfrm(noalias __s1: [*c]wchar_t, noalias __s2: [*c]const wchar_t, __n: usize) usize;
extern fn wcscoll_l(__s1: [*c]const wchar_t, __s2: [*c]const wchar_t, __loc: locale_t) c_int;
extern fn wcsxfrm_l(__s1: [*c]wchar_t, __s2: [*c]const wchar_t, __n: usize, __loc: locale_t) usize;
extern fn wcsdup(__s: [*c]const wchar_t) [*c]wchar_t;
extern fn wcschr(__wcs: [*c]const wchar_t, __wc: wchar_t) [*c]wchar_t;
extern fn wcsrchr(__wcs: [*c]const wchar_t, __wc: wchar_t) [*c]wchar_t;
extern fn wcscspn(__wcs: [*c]const wchar_t, __reject: [*c]const wchar_t) usize;
extern fn wcsspn(__wcs: [*c]const wchar_t, __accept: [*c]const wchar_t) usize;
extern fn wcspbrk(__wcs: [*c]const wchar_t, __accept: [*c]const wchar_t) [*c]wchar_t;
extern fn wcsstr(__haystack: [*c]const wchar_t, __needle: [*c]const wchar_t) [*c]wchar_t;
extern fn wcstok(noalias __s: [*c]wchar_t, noalias __delim: [*c]const wchar_t, noalias __ptr: [*c][*c]wchar_t) [*c]wchar_t;
extern fn wcslen(__s: [*c]const wchar_t) usize;
extern fn wcsnlen(__s: [*c]const wchar_t, __maxlen: usize) usize;
extern fn wmemchr(__s: [*c]const wchar_t, __c: wchar_t, __n: usize) [*c]wchar_t;
extern fn wmemcmp(__s1: [*c]const wchar_t, __s2: [*c]const wchar_t, __n: usize) c_int;
extern fn wmemcpy(noalias __s1: [*c]wchar_t, noalias __s2: [*c]const wchar_t, __n: usize) [*c]wchar_t;
extern fn wmemmove(__s1: [*c]wchar_t, __s2: [*c]const wchar_t, __n: usize) [*c]wchar_t;
extern fn wmemset(__s: [*c]wchar_t, __c: wchar_t, __n: usize) [*c]wchar_t;
extern fn btowc(__c: c_int) wint_t;
extern fn wctob(__c: wint_t) c_int;
extern fn mbsinit(__ps: [*c]const mbstate_t) c_int;
extern fn mbrtowc(noalias __pwc: [*c]wchar_t, noalias __s: [*c]const u8, __n: usize, noalias __p: [*c]mbstate_t) usize;
extern fn wcrtomb(noalias __s: [*c]u8, __wc: wchar_t, noalias __ps: [*c]mbstate_t) usize;
extern fn __mbrlen(noalias __s: [*c]const u8, __n: usize, noalias __ps: [*c]mbstate_t) usize;
extern fn mbrlen(noalias __s: [*c]const u8, __n: usize, noalias __ps: [*c]mbstate_t) usize;
extern fn mbsrtowcs(noalias __dst: [*c]wchar_t, noalias __src: [*c][*c]const u8, __len: usize, noalias __ps: [*c]mbstate_t) usize;
extern fn wcsrtombs(noalias __dst: [*c]u8, noalias __src: [*c][*c]const wchar_t, __len: usize, noalias __ps: [*c]mbstate_t) usize;
extern fn mbsnrtowcs(noalias __dst: [*c]wchar_t, noalias __src: [*c][*c]const u8, __nmc: usize, __len: usize, noalias __ps: [*c]mbstate_t) usize;
extern fn wcsnrtombs(noalias __dst: [*c]u8, noalias __src: [*c][*c]const wchar_t, __nwc: usize, __len: usize, noalias __ps: [*c]mbstate_t) usize;
extern fn wcstod(noalias __nptr: [*c]const wchar_t, noalias __endptr: [*c][*c]wchar_t) f64;
extern fn wcstof(noalias __nptr: [*c]const wchar_t, noalias __endptr: [*c][*c]wchar_t) f32;
extern fn wcstold(noalias __nptr: [*c]const wchar_t, noalias __endptr: [*c][*c]wchar_t) c_longdouble;
extern fn wcstol(noalias __nptr: [*c]const wchar_t, noalias __endptr: [*c][*c]wchar_t, __base: c_int) c_long;
extern fn wcstoul(noalias __nptr: [*c]const wchar_t, noalias __endptr: [*c][*c]wchar_t, __base: c_int) c_ulong;
extern fn wcstoll(noalias __nptr: [*c]const wchar_t, noalias __endptr: [*c][*c]wchar_t, __base: c_int) c_longlong;
extern fn wcstoull(noalias __nptr: [*c]const wchar_t, noalias __endptr: [*c][*c]wchar_t, __base: c_int) c_ulonglong;
extern fn wcpcpy(noalias __dest: [*c]wchar_t, noalias __src: [*c]const wchar_t) [*c]wchar_t;
extern fn wcpncpy(noalias __dest: [*c]wchar_t, noalias __src: [*c]const wchar_t, __n: usize) [*c]wchar_t;
extern fn open_wmemstream(__bufloc: [*c][*c]wchar_t, __sizeloc: [*c]usize) ?*__FILE;
extern fn fwide(__fp: ?*__FILE, __mode: c_int) c_int;
extern fn fwprintf(noalias __stream: ?*__FILE, noalias __format: [*c]const wchar_t, ...) c_int;
extern fn wprintf(noalias __format: [*c]const wchar_t, ...) c_int;
extern fn swprintf(noalias __s: [*c]wchar_t, __n: usize, noalias __format: [*c]const wchar_t, ...) c_int;
extern fn vfwprintf(noalias __s: ?*__FILE, noalias __format: [*c]const wchar_t, __arg: [*c]struct___va_list_tag_1) c_int;
extern fn vwprintf(noalias __format: [*c]const wchar_t, __arg: [*c]struct___va_list_tag_1) c_int;
extern fn vswprintf(noalias __s: [*c]wchar_t, __n: usize, noalias __format: [*c]const wchar_t, __arg: [*c]struct___va_list_tag_1) c_int;
extern fn fwscanf(noalias __stream: ?*__FILE, noalias __format: [*c]const wchar_t, ...) c_int;
extern fn wscanf(noalias __format: [*c]const wchar_t, ...) c_int;
extern fn swscanf(noalias __s: [*c]const wchar_t, noalias __format: [*c]const wchar_t, ...) c_int;
extern fn vfwscanf(noalias __s: ?*__FILE, noalias __format: [*c]const wchar_t, __arg: [*c]struct___va_list_tag_1) c_int;
extern fn vwscanf(noalias __format: [*c]const wchar_t, __arg: [*c]struct___va_list_tag_1) c_int;
extern fn vswscanf(noalias __s: [*c]const wchar_t, noalias __format: [*c]const wchar_t, __arg: [*c]struct___va_list_tag_1) c_int;
extern fn fgetwc(__stream: ?*__FILE) wint_t;
extern fn getwc(__stream: ?*__FILE) wint_t;
extern fn getwchar() wint_t;
extern fn fputwc(__wc: wchar_t, __stream: ?*__FILE) wint_t;
extern fn putwc(__wc: wchar_t, __stream: ?*__FILE) wint_t;
extern fn putwchar(__wc: wchar_t) wint_t;
extern fn fgetws(noalias __ws: [*c]wchar_t, __n: c_int, noalias __stream: ?*__FILE) [*c]wchar_t;
extern fn fputws(noalias __ws: [*c]const wchar_t, noalias __stream: ?*__FILE) c_int;
extern fn ungetwc(__wc: wint_t, __stream: ?*__FILE) wint_t;
extern fn wcsftime(noalias __s: [*c]wchar_t, __maxsize: usize, noalias __format: [*c]const wchar_t, noalias __tp: ?*const struct_tm) usize;
pub const __u_char = u8;
pub const __u_short = c_ushort;
pub const __u_int = c_uint;
pub const __u_long = c_ulong;
pub const __int8_t = i8;
pub const __uint8_t = u8;
pub const __int16_t = c_short;
pub const __uint16_t = c_ushort;
pub const __int32_t = c_int;
pub const __uint32_t = c_uint;
pub const __int64_t = c_long;
pub const __uint64_t = c_ulong;
pub const __int_least8_t = __int8_t;
pub const __uint_least8_t = __uint8_t;
pub const __int_least16_t = __int16_t;
pub const __uint_least16_t = __uint16_t;
pub const __int_least32_t = __int32_t;
pub const __uint_least32_t = __uint32_t;
pub const __int_least64_t = __int64_t;
pub const __uint_least64_t = __uint64_t;
pub const __quad_t = c_long;
pub const __u_quad_t = c_ulong;
pub const __intmax_t = c_long;
pub const __uintmax_t = c_ulong;
pub const __dev_t = c_ulong;
pub const __uid_t = c_uint;
pub const __gid_t = c_uint;
pub const __ino_t = c_ulong;
pub const __ino64_t = c_ulong;
pub const __mode_t = c_uint;
pub const __nlink_t = c_ulong;
pub const __off_t = c_long;
pub const __off64_t = c_long;
pub const __pid_t = c_int;
pub const __fsid_t = extern struct {
    __val: [2]c_int = @import("std").mem.zeroes([2]c_int),
};
pub const __clock_t = c_long;
pub const __rlim_t = c_ulong;
pub const __rlim64_t = c_ulong;
pub const __id_t = c_uint;
pub const __time_t = c_long;
pub const __useconds_t = c_uint;
pub const __suseconds_t = c_long;
pub const __suseconds64_t = c_long;
pub const __daddr_t = c_int;
pub const __key_t = c_int;
pub const __clockid_t = c_int;
pub const __timer_t = ?*anyopaque;
pub const __blksize_t = c_long;
pub const __blkcnt_t = c_long;
pub const __blkcnt64_t = c_long;
pub const __fsblkcnt_t = c_ulong;
pub const __fsblkcnt64_t = c_ulong;
pub const __fsfilcnt_t = c_ulong;
pub const __fsfilcnt64_t = c_ulong;
pub const __fsword_t = c_long;
pub const __ssize_t = c_long;
pub const __syscall_slong_t = c_long;
pub const __syscall_ulong_t = c_ulong;
pub const __loff_t = __off64_t;
pub const __caddr_t = [*c]u8;
pub const __intptr_t = c_long;
pub const __socklen_t = c_uint;
pub const __sig_atomic_t = c_int;
pub const int_least8_t = __int_least8_t;
pub const int_least16_t = __int_least16_t;
pub const int_least32_t = __int_least32_t;
pub const int_least64_t = __int_least64_t;
pub const uint_least8_t = __uint_least8_t;
pub const uint_least16_t = __uint_least16_t;
pub const uint_least32_t = __uint_least32_t;
pub const uint_least64_t = __uint_least64_t;
pub const int_fast8_t = i8;
pub const int_fast16_t = c_long;
pub const int_fast32_t = c_long;
pub const int_fast64_t = c_long;
pub const uint_fast8_t = u8;
pub const uint_fast16_t = c_ulong;
pub const uint_fast32_t = c_ulong;
pub const uint_fast64_t = c_ulong;
pub const intmax_t = __intmax_t;
pub const uintmax_t = __uintmax_t;
pub const __gwchar_t = c_int;
pub const imaxdiv_t = extern struct {
    quot: c_long = 0,
    rem: c_long = 0,
};
extern fn imaxabs(__n: intmax_t) intmax_t;
extern fn imaxdiv(__numer: intmax_t, __denom: intmax_t) imaxdiv_t;
extern fn strtoimax(noalias __nptr: [*c]const u8, noalias __endptr: [*c][*c]u8, __base: c_int) intmax_t;
extern fn strtoumax(noalias __nptr: [*c]const u8, noalias __endptr: [*c][*c]u8, __base: c_int) uintmax_t;
extern fn wcstoimax(noalias __nptr: [*c]const __gwchar_t, noalias __endptr: [*c][*c]__gwchar_t, __base: c_int) intmax_t;
extern fn wcstoumax(noalias __nptr: [*c]const __gwchar_t, noalias __endptr: [*c][*c]__gwchar_t, __base: c_int) uintmax_t;
pub const Sint8 = i8;
pub const Uint8 = u8;
pub const Sint16 = i16;
pub const Uint16 = u16;
pub const Sint32 = i32;
pub const Uint32 = u32;
pub const Sint64 = i64;
pub const Uint64 = u64;
pub const Time = Sint64;
comptime {
    if (!(@sizeOf(bool) == @as(c_ulong, 1))) @compileError("static assertion failed \"sizeof(bool) == 1\"");
}
comptime {
    if (!(@sizeOf(Uint8) == @as(c_ulong, 1))) @compileError("static assertion failed \"sizeof(Uint8) == 1\"");
}
comptime {
    if (!(@sizeOf(Sint8) == @as(c_ulong, 1))) @compileError("static assertion failed \"sizeof(Sint8) == 1\"");
}
comptime {
    if (!(@sizeOf(Uint16) == @as(c_ulong, 2))) @compileError("static assertion failed \"sizeof(Uint16) == 2\"");
}
comptime {
    if (!(@sizeOf(Sint16) == @as(c_ulong, 2))) @compileError("static assertion failed \"sizeof(Sint16) == 2\"");
}
comptime {
    if (!(@sizeOf(Uint32) == @as(c_ulong, 4))) @compileError("static assertion failed \"sizeof(Uint32) == 4\"");
}
comptime {
    if (!(@sizeOf(Sint32) == @as(c_ulong, 4))) @compileError("static assertion failed \"sizeof(Sint32) == 4\"");
}
comptime {
    if (!(@sizeOf(Uint64) == @as(c_ulong, 8))) @compileError("static assertion failed \"sizeof(Uint64) == 8\"");
}
comptime {
    if (!(@sizeOf(Sint64) == @as(c_ulong, 8))) @compileError("static assertion failed \"sizeof(Sint64) == 8\"");
}
comptime {
    if (!(@sizeOf(Uint64) <= @sizeOf(c_ulonglong))) @compileError("static assertion failed \"sizeof(Uint64) <= sizeof(unsigned long long)\"");
}
comptime {
    if (!(@sizeOf(usize) <= @sizeOf(c_ulonglong))) @compileError("static assertion failed \"sizeof(size_t) <= sizeof(unsigned long long)\"");
}
pub const alignment_test = extern struct {
    a: Uint8 = 0,
    b: ?*anyopaque = null,
};
comptime {
    if (!(@sizeOf(alignment_test) == (@as(c_ulong, 2) *% @sizeOf(?*anyopaque)))) @compileError("static assertion failed \"sizeof(SDL_alignment_test) == (2 * sizeof(void *))\"");
}
comptime {
    if (!(~@as(c_int, 0) == -@as(c_int, 1))) @compileError("static assertion failed \"SDL_static_cast(int, ~SDL_static_cast(int, 0)) == SDL_static_cast(int, -1)\"");
}
pub const DUMMY_ENUM_VALUE: c_int = 0;
pub const enum_SDL_DUMMY_ENUM = c_uint;
pub const DUMMY_ENUM = enum_SDL_DUMMY_ENUM;
comptime {
    if (!(@sizeOf(DUMMY_ENUM) == @sizeOf(c_int))) @compileError("static assertion failed \"sizeof(SDL_DUMMY_ENUM) == sizeof(int)\"");
}
extern fn SDL_malloc(size: usize) ?*anyopaque;
extern fn SDL_calloc(nmemb: usize, size: usize) ?*anyopaque;
extern fn SDL_realloc(mem: ?*anyopaque, size: usize) ?*anyopaque;
extern fn SDL_free(mem: ?*anyopaque) void;
pub const malloc_func = ?*const fn (size: usize) callconv(.c) ?*anyopaque;
pub const calloc_func = ?*const fn (nmemb: usize, size: usize) callconv(.c) ?*anyopaque;
pub const realloc_func = ?*const fn (mem: ?*anyopaque, size: usize) callconv(.c) ?*anyopaque;
pub const free_func = ?*const fn (mem: ?*anyopaque) callconv(.c) void;
extern fn SDL_GetOriginalMemoryFunctions(malloc_func: [*c]malloc_func, calloc_func: [*c]calloc_func, realloc_func: [*c]realloc_func, free_func: [*c]free_func) void;
extern fn SDL_GetMemoryFunctions(malloc_func: [*c]malloc_func, calloc_func: [*c]calloc_func, realloc_func: [*c]realloc_func, free_func: [*c]free_func) void;
extern fn SDL_SetMemoryFunctions(malloc_func: malloc_func, calloc_func: calloc_func, realloc_func: realloc_func, free_func: free_func) bool;
extern fn SDL_aligned_alloc(alignment: usize, size: usize) ?*anyopaque;
extern fn SDL_aligned_free(mem: ?*anyopaque) void;
extern fn SDL_GetNumAllocations() c_int;
pub const Environment = opaque {};
extern fn SDL_GetEnvironment() ?*Environment;
extern fn SDL_CreateEnvironment(populated: bool) ?*Environment;
extern fn SDL_GetEnvironmentVariable(env: ?*Environment, name: [*c]const u8) [*c]const u8;
extern fn SDL_GetEnvironmentVariables(env: ?*Environment) [*c][*c]u8;
extern fn SDL_SetEnvironmentVariable(env: ?*Environment, name: [*c]const u8, value: [*c]const u8, overwrite: bool) bool;
extern fn SDL_UnsetEnvironmentVariable(env: ?*Environment, name: [*c]const u8) bool;
extern fn SDL_DestroyEnvironment(env: ?*Environment) void;
extern fn SDL_getenv(name: [*c]const u8) [*c]const u8;
extern fn SDL_getenv_unsafe(name: [*c]const u8) [*c]const u8;
extern fn SDL_setenv_unsafe(name: [*c]const u8, value: [*c]const u8, overwrite: c_int) c_int;
extern fn SDL_unsetenv_unsafe(name: [*c]const u8) c_int;
pub const CompareCallback = ?*const fn (a: ?*const anyopaque, b: ?*const anyopaque) callconv(.c) c_int;
extern fn SDL_qsort(base: ?*anyopaque, nmemb: usize, size: usize, compare: CompareCallback) void;
extern fn SDL_bsearch(key: ?*const anyopaque, base: ?*const anyopaque, nmemb: usize, size: usize, compare: CompareCallback) ?*anyopaque;
pub const CompareCallback_r = ?*const fn (userdata: ?*anyopaque, a: ?*const anyopaque, b: ?*const anyopaque) callconv(.c) c_int;
extern fn SDL_qsort_r(base: ?*anyopaque, nmemb: usize, size: usize, compare: CompareCallback_r, userdata: ?*anyopaque) void;
extern fn SDL_bsearch_r(key: ?*const anyopaque, base: ?*const anyopaque, nmemb: usize, size: usize, compare: CompareCallback_r, userdata: ?*anyopaque) ?*anyopaque;
extern fn SDL_abs(x: c_int) c_int;
extern fn SDL_isalpha(x: c_int) c_int;
extern fn SDL_isalnum(x: c_int) c_int;
extern fn SDL_isblank(x: c_int) c_int;
extern fn SDL_iscntrl(x: c_int) c_int;
extern fn SDL_isdigit(x: c_int) c_int;
extern fn SDL_isxdigit(x: c_int) c_int;
extern fn SDL_ispunct(x: c_int) c_int;
extern fn SDL_isspace(x: c_int) c_int;
extern fn SDL_isupper(x: c_int) c_int;
extern fn SDL_islower(x: c_int) c_int;
extern fn SDL_isprint(x: c_int) c_int;
extern fn SDL_isgraph(x: c_int) c_int;
extern fn SDL_toupper(x: c_int) c_int;
extern fn SDL_tolower(x: c_int) c_int;
extern fn SDL_crc16(crc: Uint16, data: ?*const anyopaque, len: usize) Uint16;
extern fn SDL_crc32(crc: Uint32, data: ?*const anyopaque, len: usize) Uint32;
extern fn SDL_murmur3_32(data: ?*const anyopaque, len: usize, seed: Uint32) Uint32;
extern fn SDL_memcpy(dst: ?*anyopaque, src: ?*const anyopaque, len: usize) ?*anyopaque;
extern fn SDL_memmove(dst: ?*anyopaque, src: ?*const anyopaque, len: usize) ?*anyopaque;
extern fn SDL_memset(dst: ?*anyopaque, c: c_int, len: usize) ?*anyopaque;
extern fn SDL_memset4(dst: ?*anyopaque, val: Uint32, dwords: usize) ?*anyopaque;
extern fn SDL_memcmp(s1: ?*const anyopaque, s2: ?*const anyopaque, len: usize) c_int;
extern fn SDL_wcslen(wstr: [*c]const wchar_t) usize;
extern fn SDL_wcsnlen(wstr: [*c]const wchar_t, maxlen: usize) usize;
extern fn SDL_wcslcpy(dst: [*c]wchar_t, src: [*c]const wchar_t, maxlen: usize) usize;
extern fn SDL_wcslcat(dst: [*c]wchar_t, src: [*c]const wchar_t, maxlen: usize) usize;
extern fn SDL_wcsdup(wstr: [*c]const wchar_t) [*c]wchar_t;
extern fn SDL_wcsstr(haystack: [*c]const wchar_t, needle: [*c]const wchar_t) [*c]wchar_t;
extern fn SDL_wcsnstr(haystack: [*c]const wchar_t, needle: [*c]const wchar_t, maxlen: usize) [*c]wchar_t;
extern fn SDL_wcscmp(str1: [*c]const wchar_t, str2: [*c]const wchar_t) c_int;
extern fn SDL_wcsncmp(str1: [*c]const wchar_t, str2: [*c]const wchar_t, maxlen: usize) c_int;
extern fn SDL_wcscasecmp(str1: [*c]const wchar_t, str2: [*c]const wchar_t) c_int;
extern fn SDL_wcsncasecmp(str1: [*c]const wchar_t, str2: [*c]const wchar_t, maxlen: usize) c_int;
extern fn SDL_wcstol(str: [*c]const wchar_t, endp: [*c][*c]wchar_t, base: c_int) c_long;
extern fn SDL_strlen(str: [*c]const u8) usize;
extern fn SDL_strnlen(str: [*c]const u8, maxlen: usize) usize;
extern fn SDL_strlcpy(dst: [*c]u8, src: [*c]const u8, maxlen: usize) usize;
extern fn SDL_utf8strlcpy(dst: [*c]u8, src: [*c]const u8, dst_bytes: usize) usize;
extern fn SDL_strlcat(dst: [*c]u8, src: [*c]const u8, maxlen: usize) usize;
extern fn SDL_strdup(str: [*c]const u8) [*c]u8;
extern fn SDL_strndup(str: [*c]const u8, maxlen: usize) [*c]u8;
extern fn SDL_strrev(str: [*c]u8) [*c]u8;
extern fn SDL_strupr(str: [*c]u8) [*c]u8;
extern fn SDL_strlwr(str: [*c]u8) [*c]u8;
extern fn SDL_strchr(str: [*c]const u8, c: c_int) [*c]u8;
extern fn SDL_strrchr(str: [*c]const u8, c: c_int) [*c]u8;
extern fn SDL_strstr(haystack: [*c]const u8, needle: [*c]const u8) [*c]u8;
extern fn SDL_strnstr(haystack: [*c]const u8, needle: [*c]const u8, maxlen: usize) [*c]u8;
extern fn SDL_strcasestr(haystack: [*c]const u8, needle: [*c]const u8) [*c]u8;
extern fn SDL_strtok_r(str: [*c]u8, delim: [*c]const u8, saveptr: [*c][*c]u8) [*c]u8;
extern fn SDL_utf8strlen(str: [*c]const u8) usize;
extern fn SDL_utf8strnlen(str: [*c]const u8, bytes: usize) usize;
extern fn SDL_itoa(value: c_int, str: [*c]u8, radix: c_int) [*c]u8;
extern fn SDL_uitoa(value: c_uint, str: [*c]u8, radix: c_int) [*c]u8;
extern fn SDL_ltoa(value: c_long, str: [*c]u8, radix: c_int) [*c]u8;
extern fn SDL_ultoa(value: c_ulong, str: [*c]u8, radix: c_int) [*c]u8;
extern fn SDL_lltoa(value: c_longlong, str: [*c]u8, radix: c_int) [*c]u8;
extern fn SDL_ulltoa(value: c_ulonglong, str: [*c]u8, radix: c_int) [*c]u8;
extern fn SDL_atoi(str: [*c]const u8) c_int;
extern fn SDL_atof(str: [*c]const u8) f64;
extern fn SDL_strtol(str: [*c]const u8, endp: [*c][*c]u8, base: c_int) c_long;
extern fn SDL_strtoul(str: [*c]const u8, endp: [*c][*c]u8, base: c_int) c_ulong;
extern fn SDL_strtoll(str: [*c]const u8, endp: [*c][*c]u8, base: c_int) c_longlong;
extern fn SDL_strtoull(str: [*c]const u8, endp: [*c][*c]u8, base: c_int) c_ulonglong;
extern fn SDL_strtod(str: [*c]const u8, endp: [*c][*c]u8) f64;
extern fn SDL_strcmp(str1: [*c]const u8, str2: [*c]const u8) c_int;
extern fn SDL_strncmp(str1: [*c]const u8, str2: [*c]const u8, maxlen: usize) c_int;
extern fn SDL_strcasecmp(str1: [*c]const u8, str2: [*c]const u8) c_int;
extern fn SDL_strncasecmp(str1: [*c]const u8, str2: [*c]const u8, maxlen: usize) c_int;
extern fn SDL_strpbrk(str: [*c]const u8, breakset: [*c]const u8) [*c]u8;
extern fn SDL_StepUTF8(pstr: [*c][*c]const u8, pslen: [*c]usize) Uint32;
extern fn SDL_StepBackUTF8(start: [*c]const u8, pstr: [*c][*c]const u8) Uint32;
extern fn SDL_UCS4ToUTF8(codepoint: Uint32, dst: [*c]u8) [*c]u8;
extern fn SDL_sscanf(text: [*c]const u8, fmt: [*c]const u8, ...) c_int;
extern fn SDL_vsscanf(text: [*c]const u8, fmt: [*c]const u8, ap: [*c]struct___va_list_tag_1) c_int;
extern fn SDL_snprintf(text: [*c]u8, maxlen: usize, fmt: [*c]const u8, ...) c_int;
extern fn SDL_swprintf(text: [*c]wchar_t, maxlen: usize, fmt: [*c]const wchar_t, ...) c_int;
extern fn SDL_vsnprintf(text: [*c]u8, maxlen: usize, fmt: [*c]const u8, ap: [*c]struct___va_list_tag_1) c_int;
extern fn SDL_vswprintf(text: [*c]wchar_t, maxlen: usize, fmt: [*c]const wchar_t, ap: [*c]struct___va_list_tag_1) c_int;
extern fn SDL_asprintf(strp: [*c][*c]u8, fmt: [*c]const u8, ...) c_int;
extern fn SDL_vasprintf(strp: [*c][*c]u8, fmt: [*c]const u8, ap: [*c]struct___va_list_tag_1) c_int;
extern fn SDL_srand(seed: Uint64) void;
extern fn SDL_rand(n: Sint32) Sint32;
extern fn SDL_randf() f32;
extern fn SDL_rand_bits() Uint32;
extern fn SDL_rand_r(state: [*c]Uint64, n: Sint32) Sint32;
extern fn SDL_randf_r(state: [*c]Uint64) f32;
extern fn SDL_rand_bits_r(state: [*c]Uint64) Uint32;
extern fn SDL_acos(x: f64) f64;
extern fn SDL_acosf(x: f32) f32;
extern fn SDL_asin(x: f64) f64;
extern fn SDL_asinf(x: f32) f32;
extern fn SDL_atan(x: f64) f64;
extern fn SDL_atanf(x: f32) f32;
extern fn SDL_atan2(y: f64, x: f64) f64;
extern fn SDL_atan2f(y: f32, x: f32) f32;
extern fn SDL_ceil(x: f64) f64;
extern fn SDL_ceilf(x: f32) f32;
extern fn SDL_copysign(x: f64, y: f64) f64;
extern fn SDL_copysignf(x: f32, y: f32) f32;
extern fn SDL_cos(x: f64) f64;
extern fn SDL_cosf(x: f32) f32;
extern fn SDL_exp(x: f64) f64;
extern fn SDL_expf(x: f32) f32;
extern fn SDL_fabs(x: f64) f64;
extern fn SDL_fabsf(x: f32) f32;
extern fn SDL_floor(x: f64) f64;
extern fn SDL_floorf(x: f32) f32;
extern fn SDL_trunc(x: f64) f64;
extern fn SDL_truncf(x: f32) f32;
extern fn SDL_fmod(x: f64, y: f64) f64;
extern fn SDL_fmodf(x: f32, y: f32) f32;
extern fn SDL_isinf(x: f64) c_int;
extern fn SDL_isinff(x: f32) c_int;
extern fn SDL_isnan(x: f64) c_int;
extern fn SDL_isnanf(x: f32) c_int;
extern fn SDL_log(x: f64) f64;
extern fn SDL_logf(x: f32) f32;
extern fn SDL_log10(x: f64) f64;
extern fn SDL_log10f(x: f32) f32;
extern fn SDL_modf(x: f64, y: [*c]f64) f64;
extern fn SDL_modff(x: f32, y: [*c]f32) f32;
extern fn SDL_pow(x: f64, y: f64) f64;
extern fn SDL_powf(x: f32, y: f32) f32;
extern fn SDL_round(x: f64) f64;
extern fn SDL_roundf(x: f32) f32;
extern fn SDL_lround(x: f64) c_long;
extern fn SDL_lroundf(x: f32) c_long;
extern fn SDL_scalbn(x: f64, n: c_int) f64;
extern fn SDL_scalbnf(x: f32, n: c_int) f32;
extern fn SDL_sin(x: f64) f64;
extern fn SDL_sinf(x: f32) f32;
extern fn SDL_sqrt(x: f64) f64;
extern fn SDL_sqrtf(x: f32) f32;
extern fn SDL_tan(x: f64) f64;
extern fn SDL_tanf(x: f32) f32;
pub const iconv_data_t = opaque {};
pub const iconv_t = ?*iconv_data_t;
extern fn SDL_iconv_open(tocode: [*c]const u8, fromcode: [*c]const u8) iconv_t;
extern fn SDL_iconv_close(cd: iconv_t) c_int;
extern fn SDL_iconv(cd: iconv_t, inbuf: [*c][*c]const u8, inbytesleft: [*c]usize, outbuf: [*c][*c]u8, outbytesleft: [*c]usize) usize;
extern fn SDL_iconv_string(tocode: [*c]const u8, fromcode: [*c]const u8, inbuf: [*c]const u8, inbytesleft: usize) [*c]u8;
pub inline fn size_mul_check_overflow(arg_a: usize, arg_b: usize, arg_ret: [*c]usize) bool {
    var a = arg_a;
    _ = &a;
    var b = arg_b;
    _ = &b;
    var ret = arg_ret;
    _ = &ret;
    if ((a != @as(usize, 0)) and (b > (@as(c_ulong, 18446744073709551615) / a))) {
        return false_val != 0;
    }
    ret.* = a *% b;
    return true_val != 0;
}
pub inline fn size_mul_check_overflow_builtin(arg_a: usize, arg_b: usize, arg_ret: [*c]usize) bool {
    var a = arg_a;
    _ = &a;
    var b = arg_b;
    _ = &b;
    var ret = arg_ret;
    _ = &ret;
    return @as(c_int, @intFromBool(__builtin.mul_overflow(a, b, ret))) == @as(c_int, 0);
}
pub inline fn size_add_check_overflow(arg_a: usize, arg_b: usize, arg_ret: [*c]usize) bool {
    var a = arg_a;
    _ = &a;
    var b = arg_b;
    _ = &b;
    var ret = arg_ret;
    _ = &ret;
    if (b > (@as(c_ulong, 18446744073709551615) -% a)) {
        return false_val != 0;
    }
    ret.* = a +% b;
    return true_val != 0;
} // include/SDL3/SDL_stdinc.h:6145:13: warning: TODO implement function '__builtin_add_overflow' in std.zig.c_builtins
// include/SDL3/SDL_stdinc.h:6143:23: warning: unable to translate function, demoted to extern
extern fn SDL_size_add_check_overflow_builtin(arg_a: usize, arg_b: usize, arg_ret: [*c]usize) bool;
pub const FunctionPointer = ?*const fn () callconv(.c) void;
pub const AsyncIO = opaque {};
pub const ASYNCIO_TASK_READ: c_int = 0;
pub const ASYNCIO_TASK_WRITE: c_int = 1;
pub const ASYNCIO_TASK_CLOSE: c_int = 2;
pub const enum_SDL_AsyncIOTaskType = c_uint;
pub const AsyncIOTaskType = enum_SDL_AsyncIOTaskType;
pub const ASYNCIO_COMPLETE: c_int = 0;
pub const ASYNCIO_FAILURE: c_int = 1;
pub const ASYNCIO_CANCELED: c_int = 2;
pub const enum_SDL_AsyncIOResult = c_uint;
pub const AsyncIOResult = enum_SDL_AsyncIOResult;
pub const AsyncIOOutcome = extern struct {
    asyncio: ?*AsyncIO = null,
    type: AsyncIOTaskType = @import("std").mem.zeroes(AsyncIOTaskType),
    result: AsyncIOResult = @import("std").mem.zeroes(AsyncIOResult),
    buffer: ?*anyopaque = null,
    offset: Uint64 = 0,
    bytes_requested: Uint64 = 0,
    bytes_transferred: Uint64 = 0,
    userdata: ?*anyopaque = null,
};
pub const AsyncIOQueue = opaque {};
extern fn SDL_AsyncIOFromFile(file: [*c]const u8, mode: [*c]const u8) ?*AsyncIO;
extern fn SDL_GetAsyncIOSize(asyncio: ?*AsyncIO) Sint64;
extern fn SDL_ReadAsyncIO(asyncio: ?*AsyncIO, ptr: ?*anyopaque, offset: Uint64, size: Uint64, queue: ?*AsyncIOQueue, userdata: ?*anyopaque) bool;
extern fn SDL_WriteAsyncIO(asyncio: ?*AsyncIO, ptr: ?*anyopaque, offset: Uint64, size: Uint64, queue: ?*AsyncIOQueue, userdata: ?*anyopaque) bool;
extern fn SDL_CloseAsyncIO(asyncio: ?*AsyncIO, flush: bool, queue: ?*AsyncIOQueue, userdata: ?*anyopaque) bool;
extern fn SDL_CreateAsyncIOQueue() ?*AsyncIOQueue;
extern fn SDL_DestroyAsyncIOQueue(queue: ?*AsyncIOQueue) void;
extern fn SDL_GetAsyncIOResult(queue: ?*AsyncIOQueue, outcome: [*c]AsyncIOOutcome) bool;
extern fn SDL_WaitAsyncIOResult(queue: ?*AsyncIOQueue, outcome: [*c]AsyncIOOutcome, timeoutMS: Sint32) bool;
extern fn SDL_SignalAsyncIOQueue(queue: ?*AsyncIOQueue) void;
extern fn SDL_LoadFileAsync(file: [*c]const u8, queue: ?*AsyncIOQueue, userdata: ?*anyopaque) bool;
pub const SpinLock = c_int;
extern fn SDL_TryLockSpinlock(lock: [*c]SpinLock) bool;
extern fn SDL_LockSpinlock(lock: [*c]SpinLock) void;
extern fn SDL_UnlockSpinlock(lock: [*c]SpinLock) void;
extern fn SDL_MemoryBarrierReleaseFunction() void;
extern fn SDL_MemoryBarrierAcquireFunction() void;
pub const AtomicInt = extern struct {
    value: c_int = 0,
};
extern fn SDL_CompareAndSwapAtomicInt(a: [*c]AtomicInt, oldval: c_int, newval: c_int) bool;
extern fn SDL_SetAtomicInt(a: [*c]AtomicInt, v: c_int) c_int;
extern fn SDL_GetAtomicInt(a: [*c]AtomicInt) c_int;
extern fn SDL_AddAtomicInt(a: [*c]AtomicInt, v: c_int) c_int;
pub const AtomicU32 = extern struct {
    value: Uint32 = 0,
};
extern fn SDL_CompareAndSwapAtomicU32(a: [*c]AtomicU32, oldval: Uint32, newval: Uint32) bool;
extern fn SDL_SetAtomicU32(a: [*c]AtomicU32, v: Uint32) Uint32;
extern fn SDL_GetAtomicU32(a: [*c]AtomicU32) Uint32;
extern fn SDL_AddAtomicU32(a: [*c]AtomicU32, v: c_int) Uint32;
extern fn SDL_CompareAndSwapAtomicPointer(a: [*c]?*anyopaque, oldval: ?*anyopaque, newval: ?*anyopaque) bool;
extern fn SDL_SetAtomicPointer(a: [*c]?*anyopaque, v: ?*anyopaque) ?*anyopaque;
extern fn SDL_GetAtomicPointer(a: [*c]?*anyopaque) ?*anyopaque;
pub fn __bswap_16(arg___bsx: __uint16_t) callconv(.c) __uint16_t {
    var __bsx = arg___bsx;
    _ = &__bsx;
    return @byteSwap(@as(__uint16_t, __bsx));
}
pub fn __bswap_32(arg___bsx: __uint32_t) callconv(.c) __uint32_t {
    var __bsx = arg___bsx;
    _ = &__bsx;
    return @bitCast(@as(c_int, @byteSwap(@as(c_int, @bitCast(@as(c_uint, @truncate(__bsx)))))));
}
pub fn __bswap_64(arg___bsx: __uint64_t) callconv(.c) __uint64_t {
    var __bsx = arg___bsx;
    _ = &__bsx;
    return @bitCast(@as(c_long, @byteSwap(@as(c_long, @bitCast(@as(c_ulong, @truncate(__bsx)))))));
}
pub fn __uint16_identity(arg___x: __uint16_t) callconv(.c) __uint16_t {
    var __x = arg___x;
    _ = &__x;
    return __x;
}
pub fn __uint32_identity(arg___x: __uint32_t) callconv(.c) __uint32_t {
    var __x = arg___x;
    _ = &__x;
    return __x;
}
pub fn __uint64_identity(arg___x: __uint64_t) callconv(.c) __uint64_t {
    var __x = arg___x;
    _ = &__x;
    return __x;
}
pub inline fn SwapFloat(arg_x: f32) f32 {
    var x = arg_x;
    _ = &x;
    const union_unnamed_4 = extern union {
        f: f32,
        ui32: Uint32,
    };
    _ = &union_unnamed_4;
    var swapper: union_unnamed_4 = undefined;
    _ = &swapper;
    swapper.f = x;
    swapper.ui32 = @bitCast(@as(c_int, @byteSwap(@as(c_int, @bitCast(@as(c_uint, @truncate(swapper.ui32)))))));
    return swapper.f;
}
extern fn SDL_SetError(fmt: [*c]const u8, ...) bool;
extern fn SDL_SetErrorV(fmt: [*c]const u8, ap: [*c]struct___va_list_tag_1) bool;
extern fn SDL_OutOfMemory() bool;
extern fn SDL_GetError() [*c]const u8;
extern fn SDL_ClearError() bool;
pub const PropertiesID = Uint32;
pub const PROPERTY_TYPE_INVALID: c_int = 0;
pub const PROPERTY_TYPE_POINTER: c_int = 1;
pub const PROPERTY_TYPE_STRING: c_int = 2;
pub const PROPERTY_TYPE_NUMBER: c_int = 3;
pub const PROPERTY_TYPE_FLOAT: c_int = 4;
pub const PROPERTY_TYPE_BOOLEAN: c_int = 5;
pub const enum_SDL_PropertyType = c_uint;
pub const PropertyType = enum_SDL_PropertyType;
extern fn SDL_GetGlobalProperties() PropertiesID;
extern fn SDL_CreateProperties() PropertiesID;
extern fn SDL_CopyProperties(src: PropertiesID, dst: PropertiesID) bool;
extern fn SDL_LockProperties(props: PropertiesID) bool;
extern fn SDL_UnlockProperties(props: PropertiesID) void;
pub const CleanupPropertyCallback = ?*const fn (userdata: ?*anyopaque, value: ?*anyopaque) callconv(.c) void;
extern fn SDL_SetPointerPropertyWithCleanup(props: PropertiesID, name: [*c]const u8, value: ?*anyopaque, cleanup: CleanupPropertyCallback, userdata: ?*anyopaque) bool;
extern fn SDL_SetPointerProperty(props: PropertiesID, name: [*c]const u8, value: ?*anyopaque) bool;
extern fn SDL_SetStringProperty(props: PropertiesID, name: [*c]const u8, value: [*c]const u8) bool;
extern fn SDL_SetNumberProperty(props: PropertiesID, name: [*c]const u8, value: Sint64) bool;
extern fn SDL_SetFloatProperty(props: PropertiesID, name: [*c]const u8, value: f32) bool;
extern fn SDL_SetBooleanProperty(props: PropertiesID, name: [*c]const u8, value: bool) bool;
extern fn SDL_HasProperty(props: PropertiesID, name: [*c]const u8) bool;
extern fn SDL_GetPropertyType(props: PropertiesID, name: [*c]const u8) PropertyType;
extern fn SDL_GetPointerProperty(props: PropertiesID, name: [*c]const u8, default_value: ?*anyopaque) ?*anyopaque;
extern fn SDL_GetStringProperty(props: PropertiesID, name: [*c]const u8, default_value: [*c]const u8) [*c]const u8;
extern fn SDL_GetNumberProperty(props: PropertiesID, name: [*c]const u8, default_value: Sint64) Sint64;
extern fn SDL_GetFloatProperty(props: PropertiesID, name: [*c]const u8, default_value: f32) f32;
extern fn SDL_GetBooleanProperty(props: PropertiesID, name: [*c]const u8, default_value: bool) bool;
extern fn SDL_ClearProperty(props: PropertiesID, name: [*c]const u8) bool;
pub const EnumeratePropertiesCallback = ?*const fn (userdata: ?*anyopaque, props: PropertiesID, name: [*c]const u8) callconv(.c) void;
extern fn SDL_EnumerateProperties(props: PropertiesID, callback: EnumeratePropertiesCallback, userdata: ?*anyopaque) bool;
extern fn SDL_DestroyProperties(props: PropertiesID) void;
pub const Thread = opaque {};
pub const ThreadID = Uint64;
pub const TLSID = AtomicInt;
pub const THREAD_PRIORITY_LOW: c_int = 0;
pub const THREAD_PRIORITY_NORMAL: c_int = 1;
pub const THREAD_PRIORITY_HIGH: c_int = 2;
pub const THREAD_PRIORITY_TIME_CRITICAL: c_int = 3;
pub const enum_SDL_ThreadPriority = c_uint;
pub const ThreadPriority = enum_SDL_ThreadPriority;
pub const THREAD_UNKNOWN: c_int = 0;
pub const THREAD_ALIVE: c_int = 1;
pub const THREAD_DETACHED: c_int = 2;
pub const THREAD_COMPLETE: c_int = 3;
pub const enum_SDL_ThreadState = c_uint;
pub const ThreadState = enum_SDL_ThreadState;
pub const ThreadFunction = ?*const fn (data: ?*anyopaque) callconv(.c) c_int;
extern fn SDL_CreateThreadRuntime(@"fn": ThreadFunction, name: [*c]const u8, data: ?*anyopaque, pfnBeginThread: FunctionPointer, pfnEndThread: FunctionPointer) ?*Thread;
extern fn SDL_CreateThreadWithPropertiesRuntime(props: PropertiesID, pfnBeginThread: FunctionPointer, pfnEndThread: FunctionPointer) ?*Thread;
extern fn SDL_GetThreadName(thread: ?*Thread) [*c]const u8;
extern fn SDL_GetCurrentThreadID() ThreadID;
extern fn SDL_GetThreadID(thread: ?*Thread) ThreadID;
extern fn SDL_SetCurrentThreadPriority(priority: ThreadPriority) bool;
extern fn SDL_WaitThread(thread: ?*Thread, status: [*c]c_int) void;
extern fn SDL_GetThreadState(thread: ?*Thread) ThreadState;
extern fn SDL_DetachThread(thread: ?*Thread) void;
extern fn SDL_GetTLS(id: [*c]TLSID) ?*anyopaque;
pub const TLSDestructorCallback = ?*const fn (value: ?*anyopaque) callconv(.c) void;
extern fn SDL_SetTLS(id: [*c]TLSID, value: ?*const anyopaque, destructor: TLSDestructorCallback) bool;
extern fn SDL_CleanupTLS() void;
pub const Mutex = opaque {};
extern fn SDL_CreateMutex() ?*Mutex;
extern fn SDL_LockMutex(mutex: ?*Mutex) void;
extern fn SDL_TryLockMutex(mutex: ?*Mutex) bool;
extern fn SDL_UnlockMutex(mutex: ?*Mutex) void;
extern fn SDL_DestroyMutex(mutex: ?*Mutex) void;
pub const RWLock = opaque {};
extern fn SDL_CreateRWLock() ?*RWLock;
extern fn SDL_LockRWLockForReading(rwlock: ?*RWLock) void;
extern fn SDL_LockRWLockForWriting(rwlock: ?*RWLock) void;
extern fn SDL_TryLockRWLockForReading(rwlock: ?*RWLock) bool;
extern fn SDL_TryLockRWLockForWriting(rwlock: ?*RWLock) bool;
extern fn SDL_UnlockRWLock(rwlock: ?*RWLock) void;
extern fn SDL_DestroyRWLock(rwlock: ?*RWLock) void;
pub const Semaphore = opaque {};
extern fn SDL_CreateSemaphore(initial_value: Uint32) ?*Semaphore;
extern fn SDL_DestroySemaphore(sem: ?*Semaphore) void;
extern fn SDL_WaitSemaphore(sem: ?*Semaphore) void;
extern fn SDL_TryWaitSemaphore(sem: ?*Semaphore) bool;
extern fn SDL_WaitSemaphoreTimeout(sem: ?*Semaphore, timeoutMS: Sint32) bool;
extern fn SDL_SignalSemaphore(sem: ?*Semaphore) void;
extern fn SDL_GetSemaphoreValue(sem: ?*Semaphore) Uint32;
pub const Condition = opaque {};
extern fn SDL_CreateCondition() ?*Condition;
extern fn SDL_DestroyCondition(cond: ?*Condition) void;
extern fn SDL_SignalCondition(cond: ?*Condition) void;
extern fn SDL_BroadcastCondition(cond: ?*Condition) void;
extern fn SDL_WaitCondition(cond: ?*Condition, mutex: ?*Mutex) void;
extern fn SDL_WaitConditionTimeout(cond: ?*Condition, mutex: ?*Mutex, timeoutMS: Sint32) bool;
pub const INIT_STATUS_UNINITIALIZED: c_int = 0;
pub const INIT_STATUS_INITIALIZING: c_int = 1;
pub const INIT_STATUS_INITIALIZED: c_int = 2;
pub const INIT_STATUS_UNINITIALIZING: c_int = 3;
pub const enum_SDL_InitStatus = c_uint;
pub const InitStatus = enum_SDL_InitStatus;
pub const InitState = extern struct {
    status: AtomicInt = @import("std").mem.zeroes(AtomicInt),
    thread: ThreadID = 0,
    reserved: ?*anyopaque = null,
};
extern fn SDL_ShouldInit(state: [*c]InitState) bool;
extern fn SDL_ShouldQuit(state: [*c]InitState) bool;
extern fn SDL_SetInitialized(state: [*c]InitState, initialized: bool) void;
pub const IO_STATUS_READY: c_int = 0;
pub const IO_STATUS_ERROR: c_int = 1;
pub const IO_STATUS_EOF: c_int = 2;
pub const IO_STATUS_NOT_READY: c_int = 3;
pub const IO_STATUS_READONLY: c_int = 4;
pub const IO_STATUS_WRITEONLY: c_int = 5;
pub const enum_SDL_IOStatus = c_uint;
pub const IOStatus = enum_SDL_IOStatus;
pub const IO_SEEK_SET: c_int = 0;
pub const IO_SEEK_CUR: c_int = 1;
pub const IO_SEEK_END: c_int = 2;
pub const enum_SDL_IOWhence = c_uint;
pub const IOWhence = enum_SDL_IOWhence;
pub const IOStreamInterface = extern struct {
    version: Uint32 = 0,
    size: ?*const fn (userdata: ?*anyopaque) callconv(.c) Sint64 = null,
    seek: ?*const fn (userdata: ?*anyopaque, offset: Sint64, whence: IOWhence) callconv(.c) Sint64 = null,
    read: ?*const fn (userdata: ?*anyopaque, ptr: ?*anyopaque, size: usize, status: [*c]IOStatus) callconv(.c) usize = null,
    write: ?*const fn (userdata: ?*anyopaque, ptr: ?*const anyopaque, size: usize, status: [*c]IOStatus) callconv(.c) usize = null,
    flush: ?*const fn (userdata: ?*anyopaque, status: [*c]IOStatus) callconv(.c) bool = null,
    close: ?*const fn (userdata: ?*anyopaque) callconv(.c) bool = null,
};
comptime {
    if (!(((@sizeOf(?*anyopaque) == @as(c_ulong, 4)) and (@sizeOf(IOStreamInterface) == @as(c_ulong, 28))) or ((@sizeOf(?*anyopaque) == @as(c_ulong, 8)) and (@sizeOf(IOStreamInterface) == @as(c_ulong, 56))))) @compileError("static assertion failed \"(sizeof(void *) == 4 && sizeof(SDL_IOStreamInterface) == 28) || (sizeof(void *) == 8 && sizeof(SDL_IOStreamInterface) == 56)\"");
}
pub const IOStream = opaque {};
extern fn SDL_IOFromFile(file: [*c]const u8, mode: [*c]const u8) ?*IOStream;
extern fn SDL_IOFromMem(mem: ?*anyopaque, size: usize) ?*IOStream;
extern fn SDL_IOFromConstMem(mem: ?*const anyopaque, size: usize) ?*IOStream;
extern fn SDL_IOFromDynamicMem() ?*IOStream;
extern fn SDL_OpenIO(iface: [*c]const IOStreamInterface, userdata: ?*anyopaque) ?*IOStream;
extern fn SDL_CloseIO(context: ?*IOStream) bool;
extern fn SDL_GetIOProperties(context: ?*IOStream) PropertiesID;
extern fn SDL_GetIOStatus(context: ?*IOStream) IOStatus;
extern fn SDL_GetIOSize(context: ?*IOStream) Sint64;
extern fn SDL_SeekIO(context: ?*IOStream, offset: Sint64, whence: IOWhence) Sint64;
extern fn SDL_TellIO(context: ?*IOStream) Sint64;
extern fn SDL_ReadIO(context: ?*IOStream, ptr: ?*anyopaque, size: usize) usize;
extern fn SDL_WriteIO(context: ?*IOStream, ptr: ?*const anyopaque, size: usize) usize;
extern fn SDL_IOprintf(context: ?*IOStream, fmt: [*c]const u8, ...) usize;
extern fn SDL_IOvprintf(context: ?*IOStream, fmt: [*c]const u8, ap: [*c]struct___va_list_tag_1) usize;
extern fn SDL_FlushIO(context: ?*IOStream) bool;
extern fn SDL_LoadFile_IO(src: ?*IOStream, datasize: [*c]usize, closeio: bool) ?*anyopaque;
extern fn SDL_LoadFile(file: [*c]const u8, datasize: [*c]usize) ?*anyopaque;
extern fn SDL_SaveFile_IO(src: ?*IOStream, data: ?*const anyopaque, datasize: usize, closeio: bool) bool;
extern fn SDL_SaveFile(file: [*c]const u8, data: ?*const anyopaque, datasize: usize) bool;
extern fn SDL_ReadU8(src: ?*IOStream, value: [*c]Uint8) bool;
extern fn SDL_ReadS8(src: ?*IOStream, value: [*c]Sint8) bool;
extern fn SDL_ReadU16LE(src: ?*IOStream, value: [*c]Uint16) bool;
extern fn SDL_ReadS16LE(src: ?*IOStream, value: [*c]Sint16) bool;
extern fn SDL_ReadU16BE(src: ?*IOStream, value: [*c]Uint16) bool;
extern fn SDL_ReadS16BE(src: ?*IOStream, value: [*c]Sint16) bool;
extern fn SDL_ReadU32LE(src: ?*IOStream, value: [*c]Uint32) bool;
extern fn SDL_ReadS32LE(src: ?*IOStream, value: [*c]Sint32) bool;
extern fn SDL_ReadU32BE(src: ?*IOStream, value: [*c]Uint32) bool;
extern fn SDL_ReadS32BE(src: ?*IOStream, value: [*c]Sint32) bool;
extern fn SDL_ReadU64LE(src: ?*IOStream, value: [*c]Uint64) bool;
extern fn SDL_ReadS64LE(src: ?*IOStream, value: [*c]Sint64) bool;
extern fn SDL_ReadU64BE(src: ?*IOStream, value: [*c]Uint64) bool;
extern fn SDL_ReadS64BE(src: ?*IOStream, value: [*c]Sint64) bool;
extern fn SDL_WriteU8(dst: ?*IOStream, value: Uint8) bool;
extern fn SDL_WriteS8(dst: ?*IOStream, value: Sint8) bool;
extern fn SDL_WriteU16LE(dst: ?*IOStream, value: Uint16) bool;
extern fn SDL_WriteS16LE(dst: ?*IOStream, value: Sint16) bool;
extern fn SDL_WriteU16BE(dst: ?*IOStream, value: Uint16) bool;
extern fn SDL_WriteS16BE(dst: ?*IOStream, value: Sint16) bool;
extern fn SDL_WriteU32LE(dst: ?*IOStream, value: Uint32) bool;
extern fn SDL_WriteS32LE(dst: ?*IOStream, value: Sint32) bool;
extern fn SDL_WriteU32BE(dst: ?*IOStream, value: Uint32) bool;
extern fn SDL_WriteS32BE(dst: ?*IOStream, value: Sint32) bool;
extern fn SDL_WriteU64LE(dst: ?*IOStream, value: Uint64) bool;
extern fn SDL_WriteS64LE(dst: ?*IOStream, value: Sint64) bool;
extern fn SDL_WriteU64BE(dst: ?*IOStream, value: Uint64) bool;
extern fn SDL_WriteS64BE(dst: ?*IOStream, value: Sint64) bool;
pub const AUDIO_UNKNOWN: c_int = 0;
pub const AUDIO_U8: c_int = 8;
pub const AUDIO_S8: c_int = 32776;
pub const AUDIO_S16LE: c_int = 32784;
pub const AUDIO_S16BE: c_int = 36880;
pub const AUDIO_S32LE: c_int = 32800;
pub const AUDIO_S32BE: c_int = 36896;
pub const AUDIO_F32LE: c_int = 33056;
pub const AUDIO_F32BE: c_int = 37152;
pub const AUDIO_S16: c_int = 32784;
pub const AUDIO_S32: c_int = 32800;
pub const AUDIO_F32: c_int = 33056;
pub const enum_SDL_AudioFormat = c_uint;
pub const AudioFormat = enum_SDL_AudioFormat;
pub const AudioDeviceID = Uint32;
pub const AudioSpec = extern struct {
    format: AudioFormat = @import("std").mem.zeroes(AudioFormat),
    channels: c_int = 0,
    freq: c_int = 0,
};
pub const AudioStream = opaque {};
extern fn SDL_GetNumAudioDrivers() c_int;
extern fn SDL_GetAudioDriver(index: c_int) [*c]const u8;
extern fn SDL_GetCurrentAudioDriver() [*c]const u8;
extern fn SDL_GetAudioPlaybackDevices(count: [*c]c_int) [*c]AudioDeviceID;
extern fn SDL_GetAudioRecordingDevices(count: [*c]c_int) [*c]AudioDeviceID;
extern fn SDL_GetAudioDeviceName(devid: AudioDeviceID) [*c]const u8;
extern fn SDL_GetAudioDeviceFormat(devid: AudioDeviceID, spec: [*c]AudioSpec, sample_frames: [*c]c_int) bool;
extern fn SDL_GetAudioDeviceChannelMap(devid: AudioDeviceID, count: [*c]c_int) [*c]c_int;
extern fn SDL_OpenAudioDevice(devid: AudioDeviceID, spec: [*c]const AudioSpec) AudioDeviceID;
extern fn SDL_IsAudioDevicePhysical(devid: AudioDeviceID) bool;
extern fn SDL_IsAudioDevicePlayback(devid: AudioDeviceID) bool;
extern fn SDL_PauseAudioDevice(devid: AudioDeviceID) bool;
extern fn SDL_ResumeAudioDevice(devid: AudioDeviceID) bool;
extern fn SDL_AudioDevicePaused(devid: AudioDeviceID) bool;
extern fn SDL_GetAudioDeviceGain(devid: AudioDeviceID) f32;
extern fn SDL_SetAudioDeviceGain(devid: AudioDeviceID, gain: f32) bool;
extern fn SDL_CloseAudioDevice(devid: AudioDeviceID) void;
extern fn SDL_BindAudioStreams(devid: AudioDeviceID, streams: [*c]const ?*AudioStream, num_streams: c_int) bool;
extern fn SDL_BindAudioStream(devid: AudioDeviceID, stream: ?*AudioStream) bool;
extern fn SDL_UnbindAudioStreams(streams: [*c]const ?*AudioStream, num_streams: c_int) void;
extern fn SDL_UnbindAudioStream(stream: ?*AudioStream) void;
extern fn SDL_GetAudioStreamDevice(stream: ?*AudioStream) AudioDeviceID;
extern fn SDL_CreateAudioStream(src_spec: [*c]const AudioSpec, dst_spec: [*c]const AudioSpec) ?*AudioStream;
extern fn SDL_GetAudioStreamProperties(stream: ?*AudioStream) PropertiesID;
extern fn SDL_GetAudioStreamFormat(stream: ?*AudioStream, src_spec: [*c]AudioSpec, dst_spec: [*c]AudioSpec) bool;
extern fn SDL_SetAudioStreamFormat(stream: ?*AudioStream, src_spec: [*c]const AudioSpec, dst_spec: [*c]const AudioSpec) bool;
extern fn SDL_GetAudioStreamFrequencyRatio(stream: ?*AudioStream) f32;
extern fn SDL_SetAudioStreamFrequencyRatio(stream: ?*AudioStream, ratio: f32) bool;
extern fn SDL_GetAudioStreamGain(stream: ?*AudioStream) f32;
extern fn SDL_SetAudioStreamGain(stream: ?*AudioStream, gain: f32) bool;
extern fn SDL_GetAudioStreamInputChannelMap(stream: ?*AudioStream, count: [*c]c_int) [*c]c_int;
extern fn SDL_GetAudioStreamOutputChannelMap(stream: ?*AudioStream, count: [*c]c_int) [*c]c_int;
extern fn SDL_SetAudioStreamInputChannelMap(stream: ?*AudioStream, chmap: [*c]const c_int, count: c_int) bool;
extern fn SDL_SetAudioStreamOutputChannelMap(stream: ?*AudioStream, chmap: [*c]const c_int, count: c_int) bool;
extern fn SDL_PutAudioStreamData(stream: ?*AudioStream, buf: ?*const anyopaque, len: c_int) bool;
pub const AudioStreamDataCompleteCallback = ?*const fn (userdata: ?*anyopaque, buf: ?*const anyopaque, buflen: c_int) callconv(.c) void;
extern fn SDL_PutAudioStreamDataNoCopy(stream: ?*AudioStream, buf: ?*const anyopaque, len: c_int, callback: AudioStreamDataCompleteCallback, userdata: ?*anyopaque) bool;
extern fn SDL_PutAudioStreamPlanarData(stream: ?*AudioStream, channel_buffers: [*c]const ?*const anyopaque, num_channels: c_int, num_samples: c_int) bool;
extern fn SDL_GetAudioStreamData(stream: ?*AudioStream, buf: ?*anyopaque, len: c_int) c_int;
extern fn SDL_GetAudioStreamAvailable(stream: ?*AudioStream) c_int;
extern fn SDL_GetAudioStreamQueued(stream: ?*AudioStream) c_int;
extern fn SDL_FlushAudioStream(stream: ?*AudioStream) bool;
extern fn SDL_ClearAudioStream(stream: ?*AudioStream) bool;
extern fn SDL_PauseAudioStreamDevice(stream: ?*AudioStream) bool;
extern fn SDL_ResumeAudioStreamDevice(stream: ?*AudioStream) bool;
extern fn SDL_AudioStreamDevicePaused(stream: ?*AudioStream) bool;
extern fn SDL_LockAudioStream(stream: ?*AudioStream) bool;
extern fn SDL_UnlockAudioStream(stream: ?*AudioStream) bool;
pub const AudioStreamCallback = ?*const fn (userdata: ?*anyopaque, stream: ?*AudioStream, additional_amount: c_int, total_amount: c_int) callconv(.c) void;
extern fn SDL_SetAudioStreamGetCallback(stream: ?*AudioStream, callback: AudioStreamCallback, userdata: ?*anyopaque) bool;
extern fn SDL_SetAudioStreamPutCallback(stream: ?*AudioStream, callback: AudioStreamCallback, userdata: ?*anyopaque) bool;
extern fn SDL_DestroyAudioStream(stream: ?*AudioStream) void;
extern fn SDL_OpenAudioDeviceStream(devid: AudioDeviceID, spec: [*c]const AudioSpec, callback: AudioStreamCallback, userdata: ?*anyopaque) ?*AudioStream;
pub const AudioPostmixCallback = ?*const fn (userdata: ?*anyopaque, spec: [*c]const AudioSpec, buffer: [*c]f32, buflen: c_int) callconv(.c) void;
extern fn SDL_SetAudioPostmixCallback(devid: AudioDeviceID, callback: AudioPostmixCallback, userdata: ?*anyopaque) bool;
extern fn SDL_LoadWAV_IO(src: ?*IOStream, closeio: bool, spec: [*c]AudioSpec, audio_buf: [*c][*c]Uint8, audio_len: [*c]Uint32) bool;
extern fn SDL_LoadWAV(path: [*c]const u8, spec: [*c]AudioSpec, audio_buf: [*c][*c]Uint8, audio_len: [*c]Uint32) bool;
extern fn SDL_MixAudio(dst: [*c]Uint8, src: [*c]const Uint8, format: AudioFormat, len: Uint32, volume: f32) bool;
extern fn SDL_ConvertAudioSamples(src_spec: [*c]const AudioSpec, src_data: [*c]const Uint8, src_len: c_int, dst_spec: [*c]const AudioSpec, dst_data: [*c][*c]Uint8, dst_len: [*c]c_int) bool;
extern fn SDL_GetAudioFormatName(format: AudioFormat) [*c]const u8;
extern fn SDL_GetSilenceValueForFormat(format: AudioFormat) c_int;
pub inline fn MostSignificantBitIndex32(arg_x: Uint32) c_int {
    var x = arg_x;
    _ = &x;
    if (x == @as(Uint32, 0)) {
        return -@as(c_int, 1);
    }
    return @as(c_int, 31) - __builtin.clz(x);
}
pub inline fn HasExactlyOneBitSet32(arg_x: Uint32) bool {
    var x = arg_x;
    _ = &x;
    if ((x != 0) and (@as(Uint32, @bitCast(@as(c_int, @intFromBool(!((x & (x -% @as(Uint32, 1))) != 0))))) != 0)) {
        return true_val != 0;
    }
    return false_val != 0;
}
pub const BlendMode = Uint32;
pub const BLENDOPERATION_ADD: c_int = 1;
pub const BLENDOPERATION_SUBTRACT: c_int = 2;
pub const BLENDOPERATION_REV_SUBTRACT: c_int = 3;
pub const BLENDOPERATION_MINIMUM: c_int = 4;
pub const BLENDOPERATION_MAXIMUM: c_int = 5;
pub const enum_SDL_BlendOperation = c_uint;
pub const BlendOperation = enum_SDL_BlendOperation;
pub const BLENDFACTOR_ZERO: c_int = 1;
pub const BLENDFACTOR_ONE: c_int = 2;
pub const BLENDFACTOR_SRC_COLOR: c_int = 3;
pub const BLENDFACTOR_ONE_MINUS_SRC_COLOR: c_int = 4;
pub const BLENDFACTOR_SRC_ALPHA: c_int = 5;
pub const BLENDFACTOR_ONE_MINUS_SRC_ALPHA: c_int = 6;
pub const BLENDFACTOR_DST_COLOR: c_int = 7;
pub const BLENDFACTOR_ONE_MINUS_DST_COLOR: c_int = 8;
pub const BLENDFACTOR_DST_ALPHA: c_int = 9;
pub const BLENDFACTOR_ONE_MINUS_DST_ALPHA: c_int = 10;
pub const enum_SDL_BlendFactor = c_uint;
pub const BlendFactor = enum_SDL_BlendFactor;
extern fn SDL_ComposeCustomBlendMode(srcColorFactor: BlendFactor, dstColorFactor: BlendFactor, colorOperation: BlendOperation, srcAlphaFactor: BlendFactor, dstAlphaFactor: BlendFactor, alphaOperation: BlendOperation) BlendMode;
pub const PIXELTYPE_UNKNOWN: c_int = 0;
pub const PIXELTYPE_INDEX1: c_int = 1;
pub const PIXELTYPE_INDEX4: c_int = 2;
pub const PIXELTYPE_INDEX8: c_int = 3;
pub const PIXELTYPE_PACKED8: c_int = 4;
pub const PIXELTYPE_PACKED16: c_int = 5;
pub const PIXELTYPE_PACKED32: c_int = 6;
pub const PIXELTYPE_ARRAYU8: c_int = 7;
pub const PIXELTYPE_ARRAYU16: c_int = 8;
pub const PIXELTYPE_ARRAYU32: c_int = 9;
pub const PIXELTYPE_ARRAYF16: c_int = 10;
pub const PIXELTYPE_ARRAYF32: c_int = 11;
pub const PIXELTYPE_INDEX2: c_int = 12;
pub const enum_SDL_PixelType = c_uint;
pub const PixelType = enum_SDL_PixelType;
pub const BITMAPORDER_NONE: c_int = 0;
pub const BITMAPORDER_4321: c_int = 1;
pub const BITMAPORDER_1234: c_int = 2;
pub const enum_SDL_BitmapOrder = c_uint;
pub const BitmapOrder = enum_SDL_BitmapOrder;
pub const PACKEDORDER_NONE: c_int = 0;
pub const PACKEDORDER_XRGB: c_int = 1;
pub const PACKEDORDER_RGBX: c_int = 2;
pub const PACKEDORDER_ARGB: c_int = 3;
pub const PACKEDORDER_RGBA: c_int = 4;
pub const PACKEDORDER_XBGR: c_int = 5;
pub const PACKEDORDER_BGRX: c_int = 6;
pub const PACKEDORDER_ABGR: c_int = 7;
pub const PACKEDORDER_BGRA: c_int = 8;
pub const enum_SDL_PackedOrder = c_uint;
pub const PackedOrder = enum_SDL_PackedOrder;
pub const ARRAYORDER_NONE: c_int = 0;
pub const ARRAYORDER_RGB: c_int = 1;
pub const ARRAYORDER_RGBA: c_int = 2;
pub const ARRAYORDER_ARGB: c_int = 3;
pub const ARRAYORDER_BGR: c_int = 4;
pub const ARRAYORDER_BGRA: c_int = 5;
pub const ARRAYORDER_ABGR: c_int = 6;
pub const enum_SDL_ArrayOrder = c_uint;
pub const ArrayOrder = enum_SDL_ArrayOrder;
pub const PACKEDLAYOUT_NONE: c_int = 0;
pub const PACKEDLAYOUT_332: c_int = 1;
pub const PACKEDLAYOUT_4444: c_int = 2;
pub const PACKEDLAYOUT_1555: c_int = 3;
pub const PACKEDLAYOUT_5551: c_int = 4;
pub const PACKEDLAYOUT_565: c_int = 5;
pub const PACKEDLAYOUT_8888: c_int = 6;
pub const PACKEDLAYOUT_2101010: c_int = 7;
pub const PACKEDLAYOUT_1010102: c_int = 8;
pub const enum_SDL_PackedLayout = c_uint;
pub const PackedLayout = enum_SDL_PackedLayout;
pub const PIXELFORMAT_UNKNOWN: c_int = 0;
pub const PIXELFORMAT_INDEX1LSB: c_int = 286261504;
pub const PIXELFORMAT_INDEX1MSB: c_int = 287310080;
pub const PIXELFORMAT_INDEX2LSB: c_int = 470811136;
pub const PIXELFORMAT_INDEX2MSB: c_int = 471859712;
pub const PIXELFORMAT_INDEX4LSB: c_int = 303039488;
pub const PIXELFORMAT_INDEX4MSB: c_int = 304088064;
pub const PIXELFORMAT_INDEX8: c_int = 318769153;
pub const PIXELFORMAT_RGB332: c_int = 336660481;
pub const PIXELFORMAT_XRGB4444: c_int = 353504258;
pub const PIXELFORMAT_XBGR4444: c_int = 357698562;
pub const PIXELFORMAT_XRGB1555: c_int = 353570562;
pub const PIXELFORMAT_XBGR1555: c_int = 357764866;
pub const PIXELFORMAT_ARGB4444: c_int = 355602434;
pub const PIXELFORMAT_RGBA4444: c_int = 356651010;
pub const PIXELFORMAT_ABGR4444: c_int = 359796738;
pub const PIXELFORMAT_BGRA4444: c_int = 360845314;
pub const PIXELFORMAT_ARGB1555: c_int = 355667970;
pub const PIXELFORMAT_RGBA5551: c_int = 356782082;
pub const PIXELFORMAT_ABGR1555: c_int = 359862274;
pub const PIXELFORMAT_BGRA5551: c_int = 360976386;
pub const PIXELFORMAT_RGB565: c_int = 353701890;
pub const PIXELFORMAT_BGR565: c_int = 357896194;
pub const PIXELFORMAT_RGB24: c_int = 386930691;
pub const PIXELFORMAT_BGR24: c_int = 390076419;
pub const PIXELFORMAT_XRGB8888: c_int = 370546692;
pub const PIXELFORMAT_RGBX8888: c_int = 371595268;
pub const PIXELFORMAT_XBGR8888: c_int = 374740996;
pub const PIXELFORMAT_BGRX8888: c_int = 375789572;
pub const PIXELFORMAT_ARGB8888: c_int = 372645892;
pub const PIXELFORMAT_RGBA8888: c_int = 373694468;
pub const PIXELFORMAT_ABGR8888: c_int = 376840196;
pub const PIXELFORMAT_BGRA8888: c_int = 377888772;
pub const PIXELFORMAT_XRGB2101010: c_int = 370614276;
pub const PIXELFORMAT_XBGR2101010: c_int = 374808580;
pub const PIXELFORMAT_ARGB2101010: c_int = 372711428;
pub const PIXELFORMAT_ABGR2101010: c_int = 376905732;
pub const PIXELFORMAT_RGB48: c_int = 403714054;
pub const PIXELFORMAT_BGR48: c_int = 406859782;
pub const PIXELFORMAT_RGBA64: c_int = 404766728;
pub const PIXELFORMAT_ARGB64: c_int = 405815304;
pub const PIXELFORMAT_BGRA64: c_int = 407912456;
pub const PIXELFORMAT_ABGR64: c_int = 408961032;
pub const PIXELFORMAT_RGB48_FLOAT: c_int = 437268486;
pub const PIXELFORMAT_BGR48_FLOAT: c_int = 440414214;
pub const PIXELFORMAT_RGBA64_FLOAT: c_int = 438321160;
pub const PIXELFORMAT_ARGB64_FLOAT: c_int = 439369736;
pub const PIXELFORMAT_BGRA64_FLOAT: c_int = 441466888;
pub const PIXELFORMAT_ABGR64_FLOAT: c_int = 442515464;
pub const PIXELFORMAT_RGB96_FLOAT: c_int = 454057996;
pub const PIXELFORMAT_BGR96_FLOAT: c_int = 457203724;
pub const PIXELFORMAT_RGBA128_FLOAT: c_int = 455114768;
pub const PIXELFORMAT_ARGB128_FLOAT: c_int = 456163344;
pub const PIXELFORMAT_BGRA128_FLOAT: c_int = 458260496;
pub const PIXELFORMAT_ABGR128_FLOAT: c_int = 459309072;
pub const PIXELFORMAT_YV12: c_int = 842094169;
pub const PIXELFORMAT_IYUV: c_int = 1448433993;
pub const PIXELFORMAT_YUY2: c_int = 844715353;
pub const PIXELFORMAT_UYVY: c_int = 1498831189;
pub const PIXELFORMAT_YVYU: c_int = 1431918169;
pub const PIXELFORMAT_NV12: c_int = 842094158;
pub const PIXELFORMAT_NV21: c_int = 825382478;
pub const PIXELFORMAT_P010: c_int = 808530000;
pub const PIXELFORMAT_EXTERNAL_OES: c_int = 542328143;
pub const PIXELFORMAT_MJPG: c_int = 1196444237;
pub const PIXELFORMAT_RGBA32: c_int = 376840196;
pub const PIXELFORMAT_ARGB32: c_int = 377888772;
pub const PIXELFORMAT_BGRA32: c_int = 372645892;
pub const PIXELFORMAT_ABGR32: c_int = 373694468;
pub const PIXELFORMAT_RGBX32: c_int = 374740996;
pub const PIXELFORMAT_XRGB32: c_int = 375789572;
pub const PIXELFORMAT_BGRX32: c_int = 370546692;
pub const PIXELFORMAT_XBGR32: c_int = 371595268;
pub const enum_SDL_PixelFormat = c_uint;
pub const PixelFormat = enum_SDL_PixelFormat;
pub const COLOR_TYPE_UNKNOWN: c_int = 0;
pub const COLOR_TYPE_RGB: c_int = 1;
pub const COLOR_TYPE_YCBCR: c_int = 2;
pub const enum_SDL_ColorType = c_uint;
pub const ColorType = enum_SDL_ColorType;
pub const COLOR_RANGE_UNKNOWN: c_int = 0;
pub const COLOR_RANGE_LIMITED: c_int = 1;
pub const COLOR_RANGE_FULL: c_int = 2;
pub const enum_SDL_ColorRange = c_uint;
pub const ColorRange = enum_SDL_ColorRange;
pub const COLOR_PRIMARIES_UNKNOWN: c_int = 0;
pub const COLOR_PRIMARIES_BT709: c_int = 1;
pub const COLOR_PRIMARIES_UNSPECIFIED: c_int = 2;
pub const COLOR_PRIMARIES_BT470M: c_int = 4;
pub const COLOR_PRIMARIES_BT470BG: c_int = 5;
pub const COLOR_PRIMARIES_BT601: c_int = 6;
pub const COLOR_PRIMARIES_SMPTE240: c_int = 7;
pub const COLOR_PRIMARIES_GENERIC_FILM: c_int = 8;
pub const COLOR_PRIMARIES_BT2020: c_int = 9;
pub const COLOR_PRIMARIES_XYZ: c_int = 10;
pub const COLOR_PRIMARIES_SMPTE431: c_int = 11;
pub const COLOR_PRIMARIES_SMPTE432: c_int = 12;
pub const COLOR_PRIMARIES_EBU3213: c_int = 22;
pub const COLOR_PRIMARIES_CUSTOM: c_int = 31;
pub const enum_SDL_ColorPrimaries = c_uint;
pub const ColorPrimaries = enum_SDL_ColorPrimaries;
pub const TRANSFER_CHARACTERISTICS_UNKNOWN: c_int = 0;
pub const TRANSFER_CHARACTERISTICS_BT709: c_int = 1;
pub const TRANSFER_CHARACTERISTICS_UNSPECIFIED: c_int = 2;
pub const TRANSFER_CHARACTERISTICS_GAMMA22: c_int = 4;
pub const TRANSFER_CHARACTERISTICS_GAMMA28: c_int = 5;
pub const TRANSFER_CHARACTERISTICS_BT601: c_int = 6;
pub const TRANSFER_CHARACTERISTICS_SMPTE240: c_int = 7;
pub const TRANSFER_CHARACTERISTICS_LINEAR: c_int = 8;
pub const TRANSFER_CHARACTERISTICS_LOG100: c_int = 9;
pub const TRANSFER_CHARACTERISTICS_LOG100_SQRT10: c_int = 10;
pub const TRANSFER_CHARACTERISTICS_IEC61966: c_int = 11;
pub const TRANSFER_CHARACTERISTICS_BT1361: c_int = 12;
pub const TRANSFER_CHARACTERISTICS_SRGB: c_int = 13;
pub const TRANSFER_CHARACTERISTICS_BT2020_10BIT: c_int = 14;
pub const TRANSFER_CHARACTERISTICS_BT2020_12BIT: c_int = 15;
pub const TRANSFER_CHARACTERISTICS_PQ: c_int = 16;
pub const TRANSFER_CHARACTERISTICS_SMPTE428: c_int = 17;
pub const TRANSFER_CHARACTERISTICS_HLG: c_int = 18;
pub const TRANSFER_CHARACTERISTICS_CUSTOM: c_int = 31;
pub const enum_SDL_TransferCharacteristics = c_uint;
pub const TransferCharacteristics = enum_SDL_TransferCharacteristics;
pub const MATRIX_COEFFICIENTS_IDENTITY: c_int = 0;
pub const MATRIX_COEFFICIENTS_BT709: c_int = 1;
pub const MATRIX_COEFFICIENTS_UNSPECIFIED: c_int = 2;
pub const MATRIX_COEFFICIENTS_FCC: c_int = 4;
pub const MATRIX_COEFFICIENTS_BT470BG: c_int = 5;
pub const MATRIX_COEFFICIENTS_BT601: c_int = 6;
pub const MATRIX_COEFFICIENTS_SMPTE240: c_int = 7;
pub const MATRIX_COEFFICIENTS_YCGCO: c_int = 8;
pub const MATRIX_COEFFICIENTS_BT2020_NCL: c_int = 9;
pub const MATRIX_COEFFICIENTS_BT2020_CL: c_int = 10;
pub const MATRIX_COEFFICIENTS_SMPTE2085: c_int = 11;
pub const MATRIX_COEFFICIENTS_CHROMA_DERIVED_NCL: c_int = 12;
pub const MATRIX_COEFFICIENTS_CHROMA_DERIVED_CL: c_int = 13;
pub const MATRIX_COEFFICIENTS_ICTCP: c_int = 14;
pub const MATRIX_COEFFICIENTS_CUSTOM: c_int = 31;
pub const enum_SDL_MatrixCoefficients = c_uint;
pub const MatrixCoefficients = enum_SDL_MatrixCoefficients;
pub const CHROMA_LOCATION_NONE: c_int = 0;
pub const CHROMA_LOCATION_LEFT: c_int = 1;
pub const CHROMA_LOCATION_CENTER: c_int = 2;
pub const CHROMA_LOCATION_TOPLEFT: c_int = 3;
pub const enum_SDL_ChromaLocation = c_uint;
pub const ChromaLocation = enum_SDL_ChromaLocation;
pub const COLORSPACE_UNKNOWN: c_int = 0;
pub const COLORSPACE_SRGB: c_int = 301991328;
pub const COLORSPACE_SRGB_LINEAR: c_int = 301991168;
pub const COLORSPACE_HDR10: c_int = 301999616;
pub const COLORSPACE_JPEG: c_int = 570426566;
pub const COLORSPACE_BT601_LIMITED: c_int = 554703046;
pub const COLORSPACE_BT601_FULL: c_int = 571480262;
pub const COLORSPACE_BT709_LIMITED: c_int = 554697761;
pub const COLORSPACE_BT709_FULL: c_int = 571474977;
pub const COLORSPACE_BT2020_LIMITED: c_int = 554706441;
pub const COLORSPACE_BT2020_FULL: c_int = 571483657;
pub const COLORSPACE_RGB_DEFAULT: c_int = 301991328;
pub const COLORSPACE_YUV_DEFAULT: c_int = 554703046;
pub const enum_SDL_Colorspace = c_uint;
pub const Colorspace = enum_SDL_Colorspace;
pub const Color = extern struct {
    r: Uint8 = 0,
    g: Uint8 = 0,
    b: Uint8 = 0,
    a: Uint8 = 0,
};
pub const FColor = extern struct {
    r: f32 = 0,
    g: f32 = 0,
    b: f32 = 0,
    a: f32 = 0,
};
pub const Palette = extern struct {
    ncolors: c_int = 0,
    colors: [*c]Color = null,
    version: Uint32 = 0,
    refcount: c_int = 0,
};
pub const PixelFormatDetails = extern struct {
    format: PixelFormat = @import("std").mem.zeroes(PixelFormat),
    bits_per_pixel: Uint8 = 0,
    bytes_per_pixel: Uint8 = 0,
    padding: [2]Uint8 = @import("std").mem.zeroes([2]Uint8),
    Rmask: Uint32 = 0,
    Gmask: Uint32 = 0,
    Bmask: Uint32 = 0,
    Amask: Uint32 = 0,
    Rbits: Uint8 = 0,
    Gbits: Uint8 = 0,
    Bbits: Uint8 = 0,
    Abits: Uint8 = 0,
    Rshift: Uint8 = 0,
    Gshift: Uint8 = 0,
    Bshift: Uint8 = 0,
    Ashift: Uint8 = 0,
};
extern fn SDL_GetPixelFormatName(format: PixelFormat) [*c]const u8;
extern fn SDL_GetMasksForPixelFormat(format: PixelFormat, bpp: [*c]c_int, Rmask: [*c]Uint32, Gmask: [*c]Uint32, Bmask: [*c]Uint32, Amask: [*c]Uint32) bool;
extern fn SDL_GetPixelFormatForMasks(bpp: c_int, Rmask: Uint32, Gmask: Uint32, Bmask: Uint32, Amask: Uint32) PixelFormat;
extern fn SDL_GetPixelFormatDetails(format: PixelFormat) [*c]const PixelFormatDetails;
extern fn SDL_CreatePalette(ncolors: c_int) [*c]Palette;
extern fn SDL_SetPaletteColors(palette: [*c]Palette, colors: [*c]const Color, firstcolor: c_int, ncolors: c_int) bool;
extern fn SDL_DestroyPalette(palette: [*c]Palette) void;
extern fn SDL_MapRGB(format: [*c]const PixelFormatDetails, palette: [*c]const Palette, r: Uint8, g: Uint8, b: Uint8) Uint32;
extern fn SDL_MapRGBA(format: [*c]const PixelFormatDetails, palette: [*c]const Palette, r: Uint8, g: Uint8, b: Uint8, a: Uint8) Uint32;
extern fn SDL_GetRGB(pixelvalue: Uint32, format: [*c]const PixelFormatDetails, palette: [*c]const Palette, r: [*c]Uint8, g: [*c]Uint8, b: [*c]Uint8) void;
extern fn SDL_GetRGBA(pixelvalue: Uint32, format: [*c]const PixelFormatDetails, palette: [*c]const Palette, r: [*c]Uint8, g: [*c]Uint8, b: [*c]Uint8, a: [*c]Uint8) void;
pub const Point = extern struct {
    x: c_int = 0,
    y: c_int = 0,
};
pub const FPoint = extern struct {
    x: f32 = 0,
    y: f32 = 0,
};
pub const Rect = extern struct {
    x: c_int = 0,
    y: c_int = 0,
    w: c_int = 0,
    h: c_int = 0,
};
pub const FRect = extern struct {
    x: f32 = 0,
    y: f32 = 0,
    w: f32 = 0,
    h: f32 = 0,
};
pub inline fn RectToFRect(arg_rect: [*c]const Rect, arg_frect: [*c]FRect) void {
    var rect = arg_rect;
    _ = &rect;
    var frect = arg_frect;
    _ = &frect;
    frect.*.x = @as(f32, @floatFromInt(rect.*.x));
    frect.*.y = @as(f32, @floatFromInt(rect.*.y));
    frect.*.w = @as(f32, @floatFromInt(rect.*.w));
    frect.*.h = @as(f32, @floatFromInt(rect.*.h));
}
pub inline fn PointInRect(arg_p: [*c]const Point, arg_r: [*c]const Rect) bool {
    var p = arg_p;
    _ = &p;
    var r = arg_r;
    _ = &r;
    return (if ((((((p != null) and (r != null)) and (p.*.x >= r.*.x)) and (p.*.x < (r.*.x + r.*.w))) and (p.*.y >= r.*.y)) and (p.*.y < (r.*.y + r.*.h))) true_val else false_val) != 0;
}
pub inline fn RectEmpty(arg_r: [*c]const Rect) bool {
    var r = arg_r;
    _ = &r;
    return (if ((!(r != null) or (r.*.w <= @as(c_int, 0))) or (r.*.h <= @as(c_int, 0))) true_val else false_val) != 0;
}
pub inline fn RectsEqual(arg_a: [*c]const Rect, arg_b: [*c]const Rect) bool {
    var a = arg_a;
    _ = &a;
    var b = arg_b;
    _ = &b;
    return (if ((((((a != null) and (b != null)) and (a.*.x == b.*.x)) and (a.*.y == b.*.y)) and (a.*.w == b.*.w)) and (a.*.h == b.*.h)) true_val else false_val) != 0;
}
extern fn SDL_HasRectIntersection(A: [*c]const Rect, B: [*c]const Rect) bool;
extern fn SDL_GetRectIntersection(A: [*c]const Rect, B: [*c]const Rect, result: [*c]Rect) bool;
extern fn SDL_GetRectUnion(A: [*c]const Rect, B: [*c]const Rect, result: [*c]Rect) bool;
extern fn SDL_GetRectEnclosingPoints(points: [*c]const Point, count: c_int, clip: [*c]const Rect, result: [*c]Rect) bool;
extern fn SDL_GetRectAndLineIntersection(rect: [*c]const Rect, X1: [*c]c_int, Y1: [*c]c_int, X2: [*c]c_int, Y2: [*c]c_int) bool;
pub inline fn PointInRectFloat(arg_p: [*c]const FPoint, arg_r: [*c]const FRect) bool {
    var p = arg_p;
    _ = &p;
    var r = arg_r;
    _ = &r;
    return (if ((((((p != null) and (r != null)) and (p.*.x >= r.*.x)) and (p.*.x <= (r.*.x + r.*.w))) and (p.*.y >= r.*.y)) and (p.*.y <= (r.*.y + r.*.h))) true_val else false_val) != 0;
}
pub inline fn RectEmptyFloat(arg_r: [*c]const FRect) bool {
    var r = arg_r;
    _ = &r;
    return (if ((!(r != null) or (r.*.w < @as(f32, 0.0))) or (r.*.h < @as(f32, 0.0))) true_val else false_val) != 0;
}
pub inline fn RectsEqualEpsilon(arg_a: [*c]const FRect, arg_b: [*c]const FRect, arg_epsilon: f32) bool {
    var a = arg_a;
    _ = &a;
    var b = arg_b;
    _ = &b;
    var epsilon = arg_epsilon;
    _ = &epsilon;
    return (if (((a != null) and (b != null)) and ((a == b) or ((((SDL_fabsf(a.*.x - b.*.x) <= epsilon) and (SDL_fabsf(a.*.y - b.*.y) <= epsilon)) and (SDL_fabsf(a.*.w - b.*.w) <= epsilon)) and (SDL_fabsf(a.*.h - b.*.h) <= epsilon)))) true_val else false_val) != 0;
}
pub inline fn RectsEqualFloat(arg_a: [*c]const FRect, arg_b: [*c]const FRect) bool {
    var a = arg_a;
    _ = &a;
    var b = arg_b;
    _ = &b;
    return RectsEqualEpsilon(a, b, FLT_EPSILON);
}
extern fn SDL_HasRectIntersectionFloat(A: [*c]const FRect, B: [*c]const FRect) bool;
extern fn SDL_GetRectIntersectionFloat(A: [*c]const FRect, B: [*c]const FRect, result: [*c]FRect) bool;
extern fn SDL_GetRectUnionFloat(A: [*c]const FRect, B: [*c]const FRect, result: [*c]FRect) bool;
extern fn SDL_GetRectEnclosingPointsFloat(points: [*c]const FPoint, count: c_int, clip: [*c]const FRect, result: [*c]FRect) bool;
extern fn SDL_GetRectAndLineIntersectionFloat(rect: [*c]const FRect, X1: [*c]f32, Y1: [*c]f32, X2: [*c]f32, Y2: [*c]f32) bool;
pub const SurfaceFlags = Uint32;
pub const SCALEMODE_INVALID: c_int = -1;
pub const SCALEMODE_NEAREST: c_int = 0;
pub const SCALEMODE_LINEAR: c_int = 1;
pub const SCALEMODE_PIXELART: c_int = 2;
pub const enum_SDL_ScaleMode = c_int;
pub const ScaleMode = enum_SDL_ScaleMode;
pub const FLIP_NONE: c_int = 0;
pub const FLIP_HORIZONTAL: c_int = 1;
pub const FLIP_VERTICAL: c_int = 2;
pub const FLIP_HORIZONTAL_AND_VERTICAL: c_int = 3;
pub const enum_SDL_FlipMode = c_uint;
pub const FlipMode = enum_SDL_FlipMode;
pub const Surface = extern struct {
    flags: SurfaceFlags = 0,
    format: PixelFormat = @import("std").mem.zeroes(PixelFormat),
    w: c_int = 0,
    h: c_int = 0,
    pitch: c_int = 0,
    pixels: ?*anyopaque = null,
    refcount: c_int = 0,
    reserved: ?*anyopaque = null,
};
extern fn SDL_CreateSurface(width: c_int, height: c_int, format: PixelFormat) [*c]Surface;
extern fn SDL_CreateSurfaceFrom(width: c_int, height: c_int, format: PixelFormat, pixels: ?*anyopaque, pitch: c_int) [*c]Surface;
extern fn SDL_DestroySurface(surface: [*c]Surface) void;
extern fn SDL_GetSurfaceProperties(surface: [*c]Surface) PropertiesID;
extern fn SDL_SetSurfaceColorspace(surface: [*c]Surface, colorspace: Colorspace) bool;
extern fn SDL_GetSurfaceColorspace(surface: [*c]Surface) Colorspace;
extern fn SDL_CreateSurfacePalette(surface: [*c]Surface) [*c]Palette;
extern fn SDL_SetSurfacePalette(surface: [*c]Surface, palette: [*c]Palette) bool;
extern fn SDL_GetSurfacePalette(surface: [*c]Surface) [*c]Palette;
extern fn SDL_AddSurfaceAlternateImage(surface: [*c]Surface, image: [*c]Surface) bool;
extern fn SDL_SurfaceHasAlternateImages(surface: [*c]Surface) bool;
extern fn SDL_GetSurfaceImages(surface: [*c]Surface, count: [*c]c_int) [*c][*c]Surface;
extern fn SDL_RemoveSurfaceAlternateImages(surface: [*c]Surface) void;
extern fn SDL_LockSurface(surface: [*c]Surface) bool;
extern fn SDL_UnlockSurface(surface: [*c]Surface) void;
extern fn SDL_LoadSurface_IO(src: ?*IOStream, closeio: bool) [*c]Surface;
extern fn SDL_LoadSurface(file: [*c]const u8) [*c]Surface;
extern fn SDL_LoadBMP_IO(src: ?*IOStream, closeio: bool) [*c]Surface;
extern fn SDL_LoadBMP(file: [*c]const u8) [*c]Surface;
extern fn SDL_SaveBMP_IO(surface: [*c]Surface, dst: ?*IOStream, closeio: bool) bool;
extern fn SDL_SaveBMP(surface: [*c]Surface, file: [*c]const u8) bool;
extern fn SDL_LoadPNG_IO(src: ?*IOStream, closeio: bool) [*c]Surface;
extern fn SDL_LoadPNG(file: [*c]const u8) [*c]Surface;
extern fn SDL_SavePNG_IO(surface: [*c]Surface, dst: ?*IOStream, closeio: bool) bool;
extern fn SDL_SavePNG(surface: [*c]Surface, file: [*c]const u8) bool;
extern fn SDL_SetSurfaceRLE(surface: [*c]Surface, enabled: bool) bool;
extern fn SDL_SurfaceHasRLE(surface: [*c]Surface) bool;
extern fn SDL_SetSurfaceColorKey(surface: [*c]Surface, enabled: bool, key: Uint32) bool;
extern fn SDL_SurfaceHasColorKey(surface: [*c]Surface) bool;
extern fn SDL_GetSurfaceColorKey(surface: [*c]Surface, key: [*c]Uint32) bool;
extern fn SDL_SetSurfaceColorMod(surface: [*c]Surface, r: Uint8, g: Uint8, b: Uint8) bool;
extern fn SDL_GetSurfaceColorMod(surface: [*c]Surface, r: [*c]Uint8, g: [*c]Uint8, b: [*c]Uint8) bool;
extern fn SDL_SetSurfaceAlphaMod(surface: [*c]Surface, alpha: Uint8) bool;
extern fn SDL_GetSurfaceAlphaMod(surface: [*c]Surface, alpha: [*c]Uint8) bool;
extern fn SDL_SetSurfaceBlendMode(surface: [*c]Surface, blendMode: BlendMode) bool;
extern fn SDL_GetSurfaceBlendMode(surface: [*c]Surface, blendMode: [*c]BlendMode) bool;
extern fn SDL_SetSurfaceClipRect(surface: [*c]Surface, rect: [*c]const Rect) bool;
extern fn SDL_GetSurfaceClipRect(surface: [*c]Surface, rect: [*c]Rect) bool;
extern fn SDL_FlipSurface(surface: [*c]Surface, flip: FlipMode) bool;
extern fn SDL_RotateSurface(surface: [*c]Surface, angle: f32) [*c]Surface;
extern fn SDL_DuplicateSurface(surface: [*c]Surface) [*c]Surface;
extern fn SDL_ScaleSurface(surface: [*c]Surface, width: c_int, height: c_int, scaleMode: ScaleMode) [*c]Surface;
extern fn SDL_ConvertSurface(surface: [*c]Surface, format: PixelFormat) [*c]Surface;
extern fn SDL_ConvertSurfaceAndColorspace(surface: [*c]Surface, format: PixelFormat, palette: [*c]Palette, colorspace: Colorspace, props: PropertiesID) [*c]Surface;
extern fn SDL_ConvertPixels(width: c_int, height: c_int, src_format: PixelFormat, src: ?*const anyopaque, src_pitch: c_int, dst_format: PixelFormat, dst: ?*anyopaque, dst_pitch: c_int) bool;
extern fn SDL_ConvertPixelsAndColorspace(width: c_int, height: c_int, src_format: PixelFormat, src_colorspace: Colorspace, src_properties: PropertiesID, src: ?*const anyopaque, src_pitch: c_int, dst_format: PixelFormat, dst_colorspace: Colorspace, dst_properties: PropertiesID, dst: ?*anyopaque, dst_pitch: c_int) bool;
extern fn SDL_PremultiplyAlpha(width: c_int, height: c_int, src_format: PixelFormat, src: ?*const anyopaque, src_pitch: c_int, dst_format: PixelFormat, dst: ?*anyopaque, dst_pitch: c_int, linear: bool) bool;
extern fn SDL_PremultiplySurfaceAlpha(surface: [*c]Surface, linear: bool) bool;
extern fn SDL_ClearSurface(surface: [*c]Surface, r: f32, g: f32, b: f32, a: f32) bool;
extern fn SDL_FillSurfaceRect(dst: [*c]Surface, rect: [*c]const Rect, color: Uint32) bool;
extern fn SDL_FillSurfaceRects(dst: [*c]Surface, rects: [*c]const Rect, count: c_int, color: Uint32) bool;
extern fn SDL_BlitSurface(src: [*c]Surface, srcrect: [*c]const Rect, dst: [*c]Surface, dstrect: [*c]const Rect) bool;
extern fn SDL_BlitSurfaceUnchecked(src: [*c]Surface, srcrect: [*c]const Rect, dst: [*c]Surface, dstrect: [*c]const Rect) bool;
extern fn SDL_BlitSurfaceScaled(src: [*c]Surface, srcrect: [*c]const Rect, dst: [*c]Surface, dstrect: [*c]const Rect, scaleMode: ScaleMode) bool;
extern fn SDL_BlitSurfaceUncheckedScaled(src: [*c]Surface, srcrect: [*c]const Rect, dst: [*c]Surface, dstrect: [*c]const Rect, scaleMode: ScaleMode) bool;
extern fn SDL_StretchSurface(src: [*c]Surface, srcrect: [*c]const Rect, dst: [*c]Surface, dstrect: [*c]const Rect, scaleMode: ScaleMode) bool;
extern fn SDL_BlitSurfaceTiled(src: [*c]Surface, srcrect: [*c]const Rect, dst: [*c]Surface, dstrect: [*c]const Rect) bool;
extern fn SDL_BlitSurfaceTiledWithScale(src: [*c]Surface, srcrect: [*c]const Rect, scale: f32, scaleMode: ScaleMode, dst: [*c]Surface, dstrect: [*c]const Rect) bool;
extern fn SDL_BlitSurface9Grid(src: [*c]Surface, srcrect: [*c]const Rect, left_width: c_int, right_width: c_int, top_height: c_int, bottom_height: c_int, scale: f32, scaleMode: ScaleMode, dst: [*c]Surface, dstrect: [*c]const Rect) bool;
extern fn SDL_MapSurfaceRGB(surface: [*c]Surface, r: Uint8, g: Uint8, b: Uint8) Uint32;
extern fn SDL_MapSurfaceRGBA(surface: [*c]Surface, r: Uint8, g: Uint8, b: Uint8, a: Uint8) Uint32;
extern fn SDL_ReadSurfacePixel(surface: [*c]Surface, x: c_int, y: c_int, r: [*c]Uint8, g: [*c]Uint8, b: [*c]Uint8, a: [*c]Uint8) bool;
extern fn SDL_ReadSurfacePixelFloat(surface: [*c]Surface, x: c_int, y: c_int, r: [*c]f32, g: [*c]f32, b: [*c]f32, a: [*c]f32) bool;
extern fn SDL_WriteSurfacePixel(surface: [*c]Surface, x: c_int, y: c_int, r: Uint8, g: Uint8, b: Uint8, a: Uint8) bool;
extern fn SDL_WriteSurfacePixelFloat(surface: [*c]Surface, x: c_int, y: c_int, r: f32, g: f32, b: f32, a: f32) bool;
pub const CameraID = Uint32;
pub const Camera = opaque {};
pub const CameraSpec = extern struct {
    format: PixelFormat = @import("std").mem.zeroes(PixelFormat),
    colorspace: Colorspace = @import("std").mem.zeroes(Colorspace),
    width: c_int = 0,
    height: c_int = 0,
    framerate_numerator: c_int = 0,
    framerate_denominator: c_int = 0,
};
pub const CAMERA_POSITION_UNKNOWN: c_int = 0;
pub const CAMERA_POSITION_FRONT_FACING: c_int = 1;
pub const CAMERA_POSITION_BACK_FACING: c_int = 2;
pub const enum_SDL_CameraPosition = c_uint;
pub const CameraPosition = enum_SDL_CameraPosition;
pub const CAMERA_PERMISSION_STATE_DENIED: c_int = -1;
pub const CAMERA_PERMISSION_STATE_PENDING: c_int = 0;
pub const CAMERA_PERMISSION_STATE_APPROVED: c_int = 1;
pub const enum_SDL_CameraPermissionState = c_int;
pub const CameraPermissionState = enum_SDL_CameraPermissionState;
extern fn SDL_GetNumCameraDrivers() c_int;
extern fn SDL_GetCameraDriver(index: c_int) [*c]const u8;
extern fn SDL_GetCurrentCameraDriver() [*c]const u8;
extern fn SDL_GetCameras(count: [*c]c_int) [*c]CameraID;
extern fn SDL_GetCameraSupportedFormats(instance_id: CameraID, count: [*c]c_int) [*c][*c]CameraSpec;
extern fn SDL_GetCameraName(instance_id: CameraID) [*c]const u8;
extern fn SDL_GetCameraPosition(instance_id: CameraID) CameraPosition;
extern fn SDL_OpenCamera(instance_id: CameraID, spec: [*c]const CameraSpec) ?*Camera;
extern fn SDL_GetCameraPermissionState(camera: ?*Camera) CameraPermissionState;
extern fn SDL_GetCameraID(camera: ?*Camera) CameraID;
extern fn SDL_GetCameraProperties(camera: ?*Camera) PropertiesID;
extern fn SDL_GetCameraFormat(camera: ?*Camera, spec: [*c]CameraSpec) bool;
extern fn SDL_AcquireCameraFrame(camera: ?*Camera, timestampNS: [*c]Uint64) [*c]Surface;
extern fn SDL_ReleaseCameraFrame(camera: ?*Camera, frame: [*c]Surface) void;
extern fn SDL_CloseCamera(camera: ?*Camera) void;
extern fn SDL_SetClipboardText(text: [*c]const u8) bool;
extern fn SDL_GetClipboardText() [*c]u8;
extern fn SDL_HasClipboardText() bool;
extern fn SDL_SetPrimarySelectionText(text: [*c]const u8) bool;
extern fn SDL_GetPrimarySelectionText() [*c]u8;
extern fn SDL_HasPrimarySelectionText() bool;
pub const ClipboardDataCallback = ?*const fn (userdata: ?*anyopaque, mime_type: [*c]const u8, size: [*c]usize) callconv(.c) ?*const anyopaque;
pub const ClipboardCleanupCallback = ?*const fn (userdata: ?*anyopaque) callconv(.c) void;
extern fn SDL_SetClipboardData(callback: ClipboardDataCallback, cleanup: ClipboardCleanupCallback, userdata: ?*anyopaque, mime_types: [*c][*c]const u8, num_mime_types: usize) bool;
extern fn SDL_ClearClipboardData() bool;
extern fn SDL_GetClipboardData(mime_type: [*c]const u8, size: [*c]usize) ?*anyopaque;
extern fn SDL_HasClipboardData(mime_type: [*c]const u8) bool;
extern fn SDL_GetClipboardMimeTypes(num_mime_types: [*c]usize) [*c][*c]u8;
extern fn SDL_GetNumLogicalCPUCores() c_int;
extern fn SDL_GetCPUCacheLineSize() c_int;
extern fn SDL_HasAltiVec() bool;
extern fn SDL_HasMMX() bool;
extern fn SDL_HasSSE() bool;
extern fn SDL_HasSSE2() bool;
extern fn SDL_HasSSE3() bool;
extern fn SDL_HasSSE41() bool;
extern fn SDL_HasSSE42() bool;
extern fn SDL_HasAVX() bool;
extern fn SDL_HasAVX2() bool;
extern fn SDL_HasAVX512F() bool;
extern fn SDL_HasARMSIMD() bool;
extern fn SDL_HasNEON() bool;
extern fn SDL_HasLSX() bool;
extern fn SDL_HasLASX() bool;
extern fn SDL_GetSystemRAM() c_int;
extern fn SDL_GetSIMDAlignment() usize;
extern fn SDL_GetSystemPageSize() c_int;
pub const DisplayID = Uint32;
pub const WindowID = Uint32;
pub const SYSTEM_THEME_UNKNOWN: c_int = 0;
pub const SYSTEM_THEME_LIGHT: c_int = 1;
pub const SYSTEM_THEME_DARK: c_int = 2;
pub const enum_SDL_SystemTheme = c_uint;
pub const SystemTheme = enum_SDL_SystemTheme;
pub const DisplayModeData = opaque {};
pub const DisplayMode = extern struct {
    displayID: DisplayID = 0,
    format: PixelFormat = @import("std").mem.zeroes(PixelFormat),
    w: c_int = 0,
    h: c_int = 0,
    pixel_density: f32 = 0,
    refresh_rate: f32 = 0,
    refresh_rate_numerator: c_int = 0,
    refresh_rate_denominator: c_int = 0,
    internal: ?*DisplayModeData = null,
};
pub const ORIENTATION_UNKNOWN: c_int = 0;
pub const ORIENTATION_LANDSCAPE: c_int = 1;
pub const ORIENTATION_LANDSCAPE_FLIPPED: c_int = 2;
pub const ORIENTATION_PORTRAIT: c_int = 3;
pub const ORIENTATION_PORTRAIT_FLIPPED: c_int = 4;
pub const enum_SDL_DisplayOrientation = c_uint;
pub const DisplayOrientation = enum_SDL_DisplayOrientation;
pub const Window = opaque {};
pub const WindowFlags = Uint64;
pub const FLASH_CANCEL: c_int = 0;
pub const FLASH_BRIEFLY: c_int = 1;
pub const FLASH_UNTIL_FOCUSED: c_int = 2;
pub const enum_SDL_FlashOperation = c_uint;
pub const FlashOperation = enum_SDL_FlashOperation;
pub const PROGRESS_STATE_INVALID: c_int = -1;
pub const PROGRESS_STATE_NONE: c_int = 0;
pub const PROGRESS_STATE_INDETERMINATE: c_int = 1;
pub const PROGRESS_STATE_NORMAL: c_int = 2;
pub const PROGRESS_STATE_PAUSED: c_int = 3;
pub const PROGRESS_STATE_ERROR: c_int = 4;
pub const enum_SDL_ProgressState = c_int;
pub const ProgressState = enum_SDL_ProgressState;
pub const GLContextState = opaque {};
pub const GLContext = ?*GLContextState;
pub const EGLDisplay = ?*anyopaque;
pub const EGLConfig = ?*anyopaque;
pub const EGLSurface = ?*anyopaque;
pub const EGLAttrib = isize;
pub const EGLint = c_int;
pub const EGLAttribArrayCallback = ?*const fn (userdata: ?*anyopaque) callconv(.c) [*c]EGLAttrib;
pub const EGLIntArrayCallback = ?*const fn (userdata: ?*anyopaque, display: EGLDisplay, config: EGLConfig) callconv(.c) [*c]EGLint;
pub const GL_RED_SIZE: c_int = 0;
pub const GL_GREEN_SIZE: c_int = 1;
pub const GL_BLUE_SIZE: c_int = 2;
pub const GL_ALPHA_SIZE: c_int = 3;
pub const GL_BUFFER_SIZE: c_int = 4;
pub const GL_DOUBLEBUFFER: c_int = 5;
pub const GL_DEPTH_SIZE: c_int = 6;
pub const GL_STENCIL_SIZE: c_int = 7;
pub const GL_ACCUM_RED_SIZE: c_int = 8;
pub const GL_ACCUM_GREEN_SIZE: c_int = 9;
pub const GL_ACCUM_BLUE_SIZE: c_int = 10;
pub const GL_ACCUM_ALPHA_SIZE: c_int = 11;
pub const GL_STEREO: c_int = 12;
pub const GL_MULTISAMPLEBUFFERS: c_int = 13;
pub const GL_MULTISAMPLESAMPLES: c_int = 14;
pub const GL_ACCELERATED_VISUAL: c_int = 15;
pub const GL_RETAINED_BACKING: c_int = 16;
pub const GL_CONTEXT_MAJOR_VERSION: c_int = 17;
pub const GL_CONTEXT_MINOR_VERSION: c_int = 18;
pub const GL_CONTEXT_FLAGS: c_int = 19;
pub const GL_CONTEXT_PROFILE_MASK: c_int = 20;
pub const GL_SHARE_WITH_CURRENT_CONTEXT: c_int = 21;
pub const GL_FRAMEBUFFER_SRGB_CAPABLE: c_int = 22;
pub const GL_CONTEXT_RELEASE_BEHAVIOR: c_int = 23;
pub const GL_CONTEXT_RESET_NOTIFICATION: c_int = 24;
pub const GL_CONTEXT_NO_ERROR: c_int = 25;
pub const GL_FLOATBUFFERS: c_int = 26;
pub const GL_EGL_PLATFORM: c_int = 27;
pub const enum_SDL_GLAttr = c_uint;
pub const GLAttr = enum_SDL_GLAttr;
pub const GLProfile = Uint32;
pub const GLContextFlag = Uint32;
pub const GLContextReleaseFlag = Uint32;
pub const GLContextResetNotification = Uint32;
extern fn SDL_GetNumVideoDrivers() c_int;
extern fn SDL_GetVideoDriver(index: c_int) [*c]const u8;
extern fn SDL_GetCurrentVideoDriver() [*c]const u8;
extern fn SDL_GetSystemTheme() SystemTheme;
extern fn SDL_GetDisplays(count: [*c]c_int) [*c]DisplayID;
extern fn SDL_GetPrimaryDisplay() DisplayID;
extern fn SDL_GetDisplayProperties(displayID: DisplayID) PropertiesID;
extern fn SDL_GetDisplayName(displayID: DisplayID) [*c]const u8;
extern fn SDL_GetDisplayBounds(displayID: DisplayID, rect: [*c]Rect) bool;
extern fn SDL_GetDisplayUsableBounds(displayID: DisplayID, rect: [*c]Rect) bool;
extern fn SDL_GetNaturalDisplayOrientation(displayID: DisplayID) DisplayOrientation;
extern fn SDL_GetCurrentDisplayOrientation(displayID: DisplayID) DisplayOrientation;
extern fn SDL_GetDisplayContentScale(displayID: DisplayID) f32;
extern fn SDL_GetFullscreenDisplayModes(displayID: DisplayID, count: [*c]c_int) [*c][*c]DisplayMode;
extern fn SDL_GetClosestFullscreenDisplayMode(displayID: DisplayID, w: c_int, h: c_int, refresh_rate: f32, include_high_density_modes: bool, closest: [*c]DisplayMode) bool;
extern fn SDL_GetDesktopDisplayMode(displayID: DisplayID) [*c]const DisplayMode;
extern fn SDL_GetCurrentDisplayMode(displayID: DisplayID) [*c]const DisplayMode;
extern fn SDL_GetDisplayForPoint(point: [*c]const Point) DisplayID;
extern fn SDL_GetDisplayForRect(rect: [*c]const Rect) DisplayID;
extern fn SDL_GetDisplayForWindow(window: ?*Window) DisplayID;
extern fn SDL_GetWindowPixelDensity(window: ?*Window) f32;
extern fn SDL_GetWindowDisplayScale(window: ?*Window) f32;
extern fn SDL_SetWindowFullscreenMode(window: ?*Window, mode: [*c]const DisplayMode) bool;
extern fn SDL_GetWindowFullscreenMode(window: ?*Window) [*c]const DisplayMode;
extern fn SDL_GetWindowICCProfile(window: ?*Window, size: [*c]usize) ?*anyopaque;
extern fn SDL_GetWindowPixelFormat(window: ?*Window) PixelFormat;
extern fn SDL_GetWindows(count: [*c]c_int) [*c]?*Window;
extern fn SDL_CreateWindow(title: [*c]const u8, w: c_int, h: c_int, flags: WindowFlags) ?*Window;
extern fn SDL_CreatePopupWindow(parent: ?*Window, offset_x: c_int, offset_y: c_int, w: c_int, h: c_int, flags: WindowFlags) ?*Window;
extern fn SDL_CreateWindowWithProperties(props: PropertiesID) ?*Window;
extern fn SDL_GetWindowID(window: ?*Window) WindowID;
extern fn SDL_GetWindowFromID(id: WindowID) ?*Window;
extern fn SDL_GetWindowParent(window: ?*Window) ?*Window;
extern fn SDL_GetWindowProperties(window: ?*Window) PropertiesID;
extern fn SDL_GetWindowFlags(window: ?*Window) WindowFlags;
extern fn SDL_SetWindowTitle(window: ?*Window, title: [*c]const u8) bool;
extern fn SDL_GetWindowTitle(window: ?*Window) [*c]const u8;
extern fn SDL_SetWindowIcon(window: ?*Window, icon: [*c]Surface) bool;
extern fn SDL_SetWindowPosition(window: ?*Window, x: c_int, y: c_int) bool;
extern fn SDL_GetWindowPosition(window: ?*Window, x: [*c]c_int, y: [*c]c_int) bool;
extern fn SDL_SetWindowSize(window: ?*Window, w: c_int, h: c_int) bool;
extern fn SDL_GetWindowSize(window: ?*Window, w: [*c]c_int, h: [*c]c_int) bool;
extern fn SDL_GetWindowSafeArea(window: ?*Window, rect: [*c]Rect) bool;
extern fn SDL_SetWindowAspectRatio(window: ?*Window, min_aspect: f32, max_aspect: f32) bool;
extern fn SDL_GetWindowAspectRatio(window: ?*Window, min_aspect: [*c]f32, max_aspect: [*c]f32) bool;
extern fn SDL_GetWindowBordersSize(window: ?*Window, top: [*c]c_int, left: [*c]c_int, bottom: [*c]c_int, right: [*c]c_int) bool;
extern fn SDL_GetWindowSizeInPixels(window: ?*Window, w: [*c]c_int, h: [*c]c_int) bool;
extern fn SDL_SetWindowMinimumSize(window: ?*Window, min_w: c_int, min_h: c_int) bool;
extern fn SDL_GetWindowMinimumSize(window: ?*Window, w: [*c]c_int, h: [*c]c_int) bool;
extern fn SDL_SetWindowMaximumSize(window: ?*Window, max_w: c_int, max_h: c_int) bool;
extern fn SDL_GetWindowMaximumSize(window: ?*Window, w: [*c]c_int, h: [*c]c_int) bool;
extern fn SDL_SetWindowBordered(window: ?*Window, bordered: bool) bool;
extern fn SDL_SetWindowResizable(window: ?*Window, resizable: bool) bool;
extern fn SDL_SetWindowAlwaysOnTop(window: ?*Window, on_top: bool) bool;
extern fn SDL_SetWindowFillDocument(window: ?*Window, fill: bool) bool;
extern fn SDL_ShowWindow(window: ?*Window) bool;
extern fn SDL_HideWindow(window: ?*Window) bool;
extern fn SDL_RaiseWindow(window: ?*Window) bool;
extern fn SDL_MaximizeWindow(window: ?*Window) bool;
extern fn SDL_MinimizeWindow(window: ?*Window) bool;
extern fn SDL_RestoreWindow(window: ?*Window) bool;
extern fn SDL_SetWindowFullscreen(window: ?*Window, fullscreen: bool) bool;
extern fn SDL_SyncWindow(window: ?*Window) bool;
extern fn SDL_WindowHasSurface(window: ?*Window) bool;
extern fn SDL_GetWindowSurface(window: ?*Window) [*c]Surface;
extern fn SDL_SetWindowSurfaceVSync(window: ?*Window, vsync: c_int) bool;
extern fn SDL_GetWindowSurfaceVSync(window: ?*Window, vsync: [*c]c_int) bool;
extern fn SDL_UpdateWindowSurface(window: ?*Window) bool;
extern fn SDL_UpdateWindowSurfaceRects(window: ?*Window, rects: [*c]const Rect, numrects: c_int) bool;
extern fn SDL_DestroyWindowSurface(window: ?*Window) bool;
extern fn SDL_SetWindowKeyboardGrab(window: ?*Window, grabbed: bool) bool;
extern fn SDL_SetWindowMouseGrab(window: ?*Window, grabbed: bool) bool;
extern fn SDL_GetWindowKeyboardGrab(window: ?*Window) bool;
extern fn SDL_GetWindowMouseGrab(window: ?*Window) bool;
extern fn SDL_GetGrabbedWindow() ?*Window;
extern fn SDL_SetWindowMouseRect(window: ?*Window, rect: [*c]const Rect) bool;
extern fn SDL_GetWindowMouseRect(window: ?*Window) [*c]const Rect;
extern fn SDL_SetWindowOpacity(window: ?*Window, opacity: f32) bool;
extern fn SDL_GetWindowOpacity(window: ?*Window) f32;
extern fn SDL_SetWindowParent(window: ?*Window, parent: ?*Window) bool;
extern fn SDL_SetWindowModal(window: ?*Window, modal: bool) bool;
extern fn SDL_SetWindowFocusable(window: ?*Window, focusable: bool) bool;
extern fn SDL_ShowWindowSystemMenu(window: ?*Window, x: c_int, y: c_int) bool;
pub const HITTEST_NORMAL: c_int = 0;
pub const HITTEST_DRAGGABLE: c_int = 1;
pub const HITTEST_RESIZE_TOPLEFT: c_int = 2;
pub const HITTEST_RESIZE_TOP: c_int = 3;
pub const HITTEST_RESIZE_TOPRIGHT: c_int = 4;
pub const HITTEST_RESIZE_RIGHT: c_int = 5;
pub const HITTEST_RESIZE_BOTTOMRIGHT: c_int = 6;
pub const HITTEST_RESIZE_BOTTOM: c_int = 7;
pub const HITTEST_RESIZE_BOTTOMLEFT: c_int = 8;
pub const HITTEST_RESIZE_LEFT: c_int = 9;
pub const enum_SDL_HitTestResult = c_uint;
pub const HitTestResult = enum_SDL_HitTestResult;
pub const HitTest = ?*const fn (win: ?*Window, area: [*c]const Point, data: ?*anyopaque) callconv(.c) HitTestResult;
extern fn SDL_SetWindowHitTest(window: ?*Window, callback: HitTest, callback_data: ?*anyopaque) bool;
extern fn SDL_SetWindowShape(window: ?*Window, shape: [*c]Surface) bool;
extern fn SDL_FlashWindow(window: ?*Window, operation: FlashOperation) bool;
extern fn SDL_SetWindowProgressState(window: ?*Window, state: ProgressState) bool;
extern fn SDL_GetWindowProgressState(window: ?*Window) ProgressState;
extern fn SDL_SetWindowProgressValue(window: ?*Window, value: f32) bool;
extern fn SDL_GetWindowProgressValue(window: ?*Window) f32;
extern fn SDL_DestroyWindow(window: ?*Window) void;
extern fn SDL_ScreenSaverEnabled() bool;
extern fn SDL_EnableScreenSaver() bool;
extern fn SDL_DisableScreenSaver() bool;
extern fn SDL_GL_LoadLibrary(path: [*c]const u8) bool;
extern fn SDL_GL_GetProcAddress(proc: [*c]const u8) FunctionPointer;
extern fn SDL_EGL_GetProcAddress(proc: [*c]const u8) FunctionPointer;
extern fn SDL_GL_UnloadLibrary() void;
extern fn SDL_GL_ExtensionSupported(extension: [*c]const u8) bool;
extern fn SDL_GL_ResetAttributes() void;
extern fn SDL_GL_SetAttribute(attr: GLAttr, value: c_int) bool;
extern fn SDL_GL_GetAttribute(attr: GLAttr, value: [*c]c_int) bool;
extern fn SDL_GL_CreateContext(window: ?*Window) GLContext;
extern fn SDL_GL_MakeCurrent(window: ?*Window, context: GLContext) bool;
extern fn SDL_GL_GetCurrentWindow() ?*Window;
extern fn SDL_GL_GetCurrentContext() GLContext;
extern fn SDL_EGL_GetCurrentDisplay() EGLDisplay;
extern fn SDL_EGL_GetCurrentConfig() EGLConfig;
extern fn SDL_EGL_GetWindowSurface(window: ?*Window) EGLSurface;
extern fn SDL_EGL_SetAttributeCallbacks(platformAttribCallback: EGLAttribArrayCallback, surfaceAttribCallback: EGLIntArrayCallback, contextAttribCallback: EGLIntArrayCallback, userdata: ?*anyopaque) void;
extern fn SDL_GL_SetSwapInterval(interval: c_int) bool;
extern fn SDL_GL_GetSwapInterval(interval: [*c]c_int) bool;
extern fn SDL_GL_SwapWindow(window: ?*Window) bool;
extern fn SDL_GL_DestroyContext(context: GLContext) bool;
pub const DialogFileFilter = extern struct {
    name: [*c]const u8 = null,
    pattern: [*c]const u8 = null,
};
pub const DialogFileCallback = ?*const fn (userdata: ?*anyopaque, filelist: [*c]const [*c]const u8, filter: c_int) callconv(.c) void;
extern fn SDL_ShowOpenFileDialog(callback: DialogFileCallback, userdata: ?*anyopaque, window: ?*Window, filters: [*c]const DialogFileFilter, nfilters: c_int, default_location: [*c]const u8, allow_many: bool) void;
extern fn SDL_ShowSaveFileDialog(callback: DialogFileCallback, userdata: ?*anyopaque, window: ?*Window, filters: [*c]const DialogFileFilter, nfilters: c_int, default_location: [*c]const u8) void;
extern fn SDL_ShowOpenFolderDialog(callback: DialogFileCallback, userdata: ?*anyopaque, window: ?*Window, default_location: [*c]const u8, allow_many: bool) void;
pub const FILEDIALOG_OPENFILE: c_int = 0;
pub const FILEDIALOG_SAVEFILE: c_int = 1;
pub const FILEDIALOG_OPENFOLDER: c_int = 2;
pub const enum_SDL_FileDialogType = c_uint;
pub const FileDialogType = enum_SDL_FileDialogType;
extern fn SDL_ShowFileDialogWithProperties(@"type": FileDialogType, callback: DialogFileCallback, userdata: ?*anyopaque, props: PropertiesID) void;
pub const GUID = extern struct {
    data: [16]Uint8 = @import("std").mem.zeroes([16]Uint8),
};
extern fn SDL_GUIDToString(guid: GUID, pszGUID: [*c]u8, cbGUID: c_int) void;
extern fn SDL_StringToGUID(pchGUID: [*c]const u8) GUID;
pub const POWERSTATE_ERROR: c_int = -1;
pub const POWERSTATE_UNKNOWN: c_int = 0;
pub const POWERSTATE_ON_BATTERY: c_int = 1;
pub const POWERSTATE_NO_BATTERY: c_int = 2;
pub const POWERSTATE_CHARGING: c_int = 3;
pub const POWERSTATE_CHARGED: c_int = 4;
pub const enum_SDL_PowerState = c_int;
pub const PowerState = enum_SDL_PowerState;
extern fn SDL_GetPowerInfo(seconds: [*c]c_int, percent: [*c]c_int) PowerState;
pub const Sensor = opaque {};
pub const SensorID = Uint32;
pub const SENSOR_INVALID: c_int = -1;
pub const SENSOR_UNKNOWN: c_int = 0;
pub const SENSOR_ACCEL: c_int = 1;
pub const SENSOR_GYRO: c_int = 2;
pub const SENSOR_ACCEL_L: c_int = 3;
pub const SENSOR_GYRO_L: c_int = 4;
pub const SENSOR_ACCEL_R: c_int = 5;
pub const SENSOR_GYRO_R: c_int = 6;
pub const SENSOR_COUNT: c_int = 7;
pub const enum_SDL_SensorType = c_int;
pub const SensorType = enum_SDL_SensorType;
extern fn SDL_GetSensors(count: [*c]c_int) [*c]SensorID;
extern fn SDL_GetSensorNameForID(instance_id: SensorID) [*c]const u8;
extern fn SDL_GetSensorTypeForID(instance_id: SensorID) SensorType;
extern fn SDL_GetSensorNonPortableTypeForID(instance_id: SensorID) c_int;
extern fn SDL_OpenSensor(instance_id: SensorID) ?*Sensor;
extern fn SDL_GetSensorFromID(instance_id: SensorID) ?*Sensor;
extern fn SDL_GetSensorProperties(sensor: ?*Sensor) PropertiesID;
extern fn SDL_GetSensorName(sensor: ?*Sensor) [*c]const u8;
extern fn SDL_GetSensorType(sensor: ?*Sensor) SensorType;
extern fn SDL_GetSensorNonPortableType(sensor: ?*Sensor) c_int;
extern fn SDL_GetSensorID(sensor: ?*Sensor) SensorID;
extern fn SDL_GetSensorData(sensor: ?*Sensor, data: [*c]f32, num_values: c_int) bool;
extern fn SDL_CloseSensor(sensor: ?*Sensor) void;
extern fn SDL_UpdateSensors() void;
pub const Joystick = opaque {};
pub const JoystickID = Uint32;
pub const JOYSTICK_TYPE_UNKNOWN: c_int = 0;
pub const JOYSTICK_TYPE_GAMEPAD: c_int = 1;
pub const JOYSTICK_TYPE_WHEEL: c_int = 2;
pub const JOYSTICK_TYPE_ARCADE_STICK: c_int = 3;
pub const JOYSTICK_TYPE_FLIGHT_STICK: c_int = 4;
pub const JOYSTICK_TYPE_DANCE_PAD: c_int = 5;
pub const JOYSTICK_TYPE_GUITAR: c_int = 6;
pub const JOYSTICK_TYPE_DRUM_KIT: c_int = 7;
pub const JOYSTICK_TYPE_ARCADE_PAD: c_int = 8;
pub const JOYSTICK_TYPE_THROTTLE: c_int = 9;
pub const JOYSTICK_TYPE_COUNT: c_int = 10;
pub const enum_SDL_JoystickType = c_uint;
pub const JoystickType = enum_SDL_JoystickType;
pub const JOYSTICK_CONNECTION_INVALID: c_int = -1;
pub const JOYSTICK_CONNECTION_UNKNOWN: c_int = 0;
pub const JOYSTICK_CONNECTION_WIRED: c_int = 1;
pub const JOYSTICK_CONNECTION_WIRELESS: c_int = 2;
pub const enum_SDL_JoystickConnectionState = c_int;
pub const JoystickConnectionState = enum_SDL_JoystickConnectionState;
extern fn SDL_LockJoysticks() void;
extern fn SDL_TryLockJoysticks() bool;
extern fn SDL_UnlockJoysticks() void;
extern fn SDL_HasJoystick() bool;
extern fn SDL_GetJoysticks(count: [*c]c_int) [*c]JoystickID;
extern fn SDL_GetJoystickNameForID(instance_id: JoystickID) [*c]const u8;
extern fn SDL_GetJoystickPathForID(instance_id: JoystickID) [*c]const u8;
extern fn SDL_GetJoystickPlayerIndexForID(instance_id: JoystickID) c_int;
extern fn SDL_GetJoystickGUIDForID(instance_id: JoystickID) GUID;
extern fn SDL_GetJoystickVendorForID(instance_id: JoystickID) Uint16;
extern fn SDL_GetJoystickProductForID(instance_id: JoystickID) Uint16;
extern fn SDL_GetJoystickProductVersionForID(instance_id: JoystickID) Uint16;
extern fn SDL_GetJoystickTypeForID(instance_id: JoystickID) JoystickType;
extern fn SDL_OpenJoystick(instance_id: JoystickID) ?*Joystick;
extern fn SDL_GetJoystickFromID(instance_id: JoystickID) ?*Joystick;
extern fn SDL_GetJoystickFromPlayerIndex(player_index: c_int) ?*Joystick;
pub const VirtualJoystickTouchpadDesc = extern struct {
    nfingers: Uint16 = 0,
    padding: [3]Uint16 = @import("std").mem.zeroes([3]Uint16),
};
pub const VirtualJoystickSensorDesc = extern struct {
    type: SensorType = @import("std").mem.zeroes(SensorType),
    rate: f32 = 0,
};
pub const VirtualJoystickDesc = extern struct {
    version: Uint32 = 0,
    type: Uint16 = 0,
    padding: Uint16 = 0,
    vendor_id: Uint16 = 0,
    product_id: Uint16 = 0,
    naxes: Uint16 = 0,
    nbuttons: Uint16 = 0,
    nballs: Uint16 = 0,
    nhats: Uint16 = 0,
    ntouchpads: Uint16 = 0,
    nsensors: Uint16 = 0,
    padding2: [2]Uint16 = @import("std").mem.zeroes([2]Uint16),
    button_mask: Uint32 = 0,
    axis_mask: Uint32 = 0,
    name: [*c]const u8 = null,
    touchpads: [*c]const VirtualJoystickTouchpadDesc = null,
    sensors: [*c]const VirtualJoystickSensorDesc = null,
    userdata: ?*anyopaque = null,
    Update: ?*const fn (userdata: ?*anyopaque) callconv(.c) void = null,
    SetPlayerIndex: ?*const fn (userdata: ?*anyopaque, player_index: c_int) callconv(.c) void = null,
    Rumble: ?*const fn (userdata: ?*anyopaque, low_frequency_rumble: Uint16, high_frequency_rumble: Uint16) callconv(.c) bool = null,
    RumbleTriggers: ?*const fn (userdata: ?*anyopaque, left_rumble: Uint16, right_rumble: Uint16) callconv(.c) bool = null,
    SetLED: ?*const fn (userdata: ?*anyopaque, red: Uint8, green: Uint8, blue: Uint8) callconv(.c) bool = null,
    SendEffect: ?*const fn (userdata: ?*anyopaque, data: ?*const anyopaque, size: c_int) callconv(.c) bool = null,
    SetSensorsEnabled: ?*const fn (userdata: ?*anyopaque, enabled: bool) callconv(.c) bool = null,
    Cleanup: ?*const fn (userdata: ?*anyopaque) callconv(.c) void = null,
};
comptime {
    if (!(((@sizeOf(?*anyopaque) == @as(c_ulong, 4)) and (@sizeOf(VirtualJoystickDesc) == @as(c_ulong, 84))) or ((@sizeOf(?*anyopaque) == @as(c_ulong, 8)) and (@sizeOf(VirtualJoystickDesc) == @as(c_ulong, 136))))) @compileError("static assertion failed \"(sizeof(void *) == 4 && sizeof(SDL_VirtualJoystickDesc) == 84) || (sizeof(void *) == 8 && sizeof(SDL_VirtualJoystickDesc) == 136)\"");
}
extern fn SDL_AttachVirtualJoystick(desc: [*c]const VirtualJoystickDesc) JoystickID;
extern fn SDL_DetachVirtualJoystick(instance_id: JoystickID) bool;
extern fn SDL_IsJoystickVirtual(instance_id: JoystickID) bool;
extern fn SDL_SetJoystickVirtualAxis(joystick: ?*Joystick, axis: c_int, value: Sint16) bool;
extern fn SDL_SetJoystickVirtualBall(joystick: ?*Joystick, ball: c_int, xrel: Sint16, yrel: Sint16) bool;
extern fn SDL_SetJoystickVirtualButton(joystick: ?*Joystick, button: c_int, down: bool) bool;
extern fn SDL_SetJoystickVirtualHat(joystick: ?*Joystick, hat: c_int, value: Uint8) bool;
extern fn SDL_SetJoystickVirtualTouchpad(joystick: ?*Joystick, touchpad: c_int, finger: c_int, down: bool, x: f32, y: f32, pressure: f32) bool;
extern fn SDL_SendJoystickVirtualSensorData(joystick: ?*Joystick, @"type": SensorType, sensor_timestamp: Uint64, data: [*c]const f32, num_values: c_int) bool;
extern fn SDL_GetJoystickProperties(joystick: ?*Joystick) PropertiesID;
extern fn SDL_GetJoystickName(joystick: ?*Joystick) [*c]const u8;
extern fn SDL_GetJoystickPath(joystick: ?*Joystick) [*c]const u8;
extern fn SDL_GetJoystickPlayerIndex(joystick: ?*Joystick) c_int;
extern fn SDL_SetJoystickPlayerIndex(joystick: ?*Joystick, player_index: c_int) bool;
extern fn SDL_GetJoystickGUID(joystick: ?*Joystick) GUID;
extern fn SDL_GetJoystickVendor(joystick: ?*Joystick) Uint16;
extern fn SDL_GetJoystickProduct(joystick: ?*Joystick) Uint16;
extern fn SDL_GetJoystickProductVersion(joystick: ?*Joystick) Uint16;
extern fn SDL_GetJoystickFirmwareVersion(joystick: ?*Joystick) Uint16;
extern fn SDL_GetJoystickSerial(joystick: ?*Joystick) [*c]const u8;
extern fn SDL_GetJoystickType(joystick: ?*Joystick) JoystickType;
extern fn SDL_GetJoystickGUIDInfo(guid: GUID, vendor: [*c]Uint16, product: [*c]Uint16, version: [*c]Uint16, crc16: [*c]Uint16) void;
extern fn SDL_JoystickConnected(joystick: ?*Joystick) bool;
extern fn SDL_GetJoystickID(joystick: ?*Joystick) JoystickID;
extern fn SDL_GetNumJoystickAxes(joystick: ?*Joystick) c_int;
extern fn SDL_GetNumJoystickBalls(joystick: ?*Joystick) c_int;
extern fn SDL_GetNumJoystickHats(joystick: ?*Joystick) c_int;
extern fn SDL_GetNumJoystickButtons(joystick: ?*Joystick) c_int;
extern fn SDL_SetJoystickEventsEnabled(enabled: bool) void;
extern fn SDL_JoystickEventsEnabled() bool;
extern fn SDL_UpdateJoysticks() void;
extern fn SDL_GetJoystickAxis(joystick: ?*Joystick, axis: c_int) Sint16;
extern fn SDL_GetJoystickAxisInitialState(joystick: ?*Joystick, axis: c_int, state: [*c]Sint16) bool;
extern fn SDL_GetJoystickBall(joystick: ?*Joystick, ball: c_int, dx: [*c]c_int, dy: [*c]c_int) bool;
extern fn SDL_GetJoystickHat(joystick: ?*Joystick, hat: c_int) Uint8;
extern fn SDL_GetJoystickButton(joystick: ?*Joystick, button: c_int) bool;
extern fn SDL_RumbleJoystick(joystick: ?*Joystick, low_frequency_rumble: Uint16, high_frequency_rumble: Uint16, duration_ms: Uint32) bool;
extern fn SDL_RumbleJoystickTriggers(joystick: ?*Joystick, left_rumble: Uint16, right_rumble: Uint16, duration_ms: Uint32) bool;
extern fn SDL_SetJoystickLED(joystick: ?*Joystick, red: Uint8, green: Uint8, blue: Uint8) bool;
extern fn SDL_SendJoystickEffect(joystick: ?*Joystick, data: ?*const anyopaque, size: c_int) bool;
extern fn SDL_CloseJoystick(joystick: ?*Joystick) void;
extern fn SDL_GetJoystickConnectionState(joystick: ?*Joystick) JoystickConnectionState;
extern fn SDL_GetJoystickPowerInfo(joystick: ?*Joystick, percent: [*c]c_int) PowerState;
pub const Gamepad = opaque {};
pub const GAMEPAD_TYPE_UNKNOWN: c_int = 0;
pub const GAMEPAD_TYPE_STANDARD: c_int = 1;
pub const GAMEPAD_TYPE_XBOX360: c_int = 2;
pub const GAMEPAD_TYPE_XBOXONE: c_int = 3;
pub const GAMEPAD_TYPE_PS3: c_int = 4;
pub const GAMEPAD_TYPE_PS4: c_int = 5;
pub const GAMEPAD_TYPE_PS5: c_int = 6;
pub const GAMEPAD_TYPE_NINTENDO_SWITCH_PRO: c_int = 7;
pub const GAMEPAD_TYPE_NINTENDO_SWITCH_JOYCON_LEFT: c_int = 8;
pub const GAMEPAD_TYPE_NINTENDO_SWITCH_JOYCON_RIGHT: c_int = 9;
pub const GAMEPAD_TYPE_NINTENDO_SWITCH_JOYCON_PAIR: c_int = 10;
pub const GAMEPAD_TYPE_GAMECUBE: c_int = 11;
pub const GAMEPAD_TYPE_COUNT: c_int = 12;
pub const enum_SDL_GamepadType = c_uint;
pub const GamepadType = enum_SDL_GamepadType;
pub const GAMEPAD_BUTTON_INVALID: c_int = -1;
pub const GAMEPAD_BUTTON_SOUTH: c_int = 0;
pub const GAMEPAD_BUTTON_EAST: c_int = 1;
pub const GAMEPAD_BUTTON_WEST: c_int = 2;
pub const GAMEPAD_BUTTON_NORTH: c_int = 3;
pub const GAMEPAD_BUTTON_BACK: c_int = 4;
pub const GAMEPAD_BUTTON_GUIDE: c_int = 5;
pub const GAMEPAD_BUTTON_START: c_int = 6;
pub const GAMEPAD_BUTTON_LEFT_STICK: c_int = 7;
pub const GAMEPAD_BUTTON_RIGHT_STICK: c_int = 8;
pub const GAMEPAD_BUTTON_LEFT_SHOULDER: c_int = 9;
pub const GAMEPAD_BUTTON_RIGHT_SHOULDER: c_int = 10;
pub const GAMEPAD_BUTTON_DPAD_UP: c_int = 11;
pub const GAMEPAD_BUTTON_DPAD_DOWN: c_int = 12;
pub const GAMEPAD_BUTTON_DPAD_LEFT: c_int = 13;
pub const GAMEPAD_BUTTON_DPAD_RIGHT: c_int = 14;
pub const GAMEPAD_BUTTON_MISC1: c_int = 15;
pub const GAMEPAD_BUTTON_RIGHT_PADDLE1: c_int = 16;
pub const GAMEPAD_BUTTON_LEFT_PADDLE1: c_int = 17;
pub const GAMEPAD_BUTTON_RIGHT_PADDLE2: c_int = 18;
pub const GAMEPAD_BUTTON_LEFT_PADDLE2: c_int = 19;
pub const GAMEPAD_BUTTON_TOUCHPAD: c_int = 20;
pub const GAMEPAD_BUTTON_MISC2: c_int = 21;
pub const GAMEPAD_BUTTON_MISC3: c_int = 22;
pub const GAMEPAD_BUTTON_MISC4: c_int = 23;
pub const GAMEPAD_BUTTON_MISC5: c_int = 24;
pub const GAMEPAD_BUTTON_MISC6: c_int = 25;
pub const GAMEPAD_BUTTON_COUNT: c_int = 26;
pub const enum_SDL_GamepadButton = c_int;
pub const GamepadButton = enum_SDL_GamepadButton;
pub const GAMEPAD_BUTTON_LABEL_UNKNOWN: c_int = 0;
pub const GAMEPAD_BUTTON_LABEL_A: c_int = 1;
pub const GAMEPAD_BUTTON_LABEL_B: c_int = 2;
pub const GAMEPAD_BUTTON_LABEL_X: c_int = 3;
pub const GAMEPAD_BUTTON_LABEL_Y: c_int = 4;
pub const GAMEPAD_BUTTON_LABEL_CROSS: c_int = 5;
pub const GAMEPAD_BUTTON_LABEL_CIRCLE: c_int = 6;
pub const GAMEPAD_BUTTON_LABEL_SQUARE: c_int = 7;
pub const GAMEPAD_BUTTON_LABEL_TRIANGLE: c_int = 8;
pub const enum_SDL_GamepadButtonLabel = c_uint;
pub const GamepadButtonLabel = enum_SDL_GamepadButtonLabel;
pub const GAMEPAD_AXIS_INVALID: c_int = -1;
pub const GAMEPAD_AXIS_LEFTX: c_int = 0;
pub const GAMEPAD_AXIS_LEFTY: c_int = 1;
pub const GAMEPAD_AXIS_RIGHTX: c_int = 2;
pub const GAMEPAD_AXIS_RIGHTY: c_int = 3;
pub const GAMEPAD_AXIS_LEFT_TRIGGER: c_int = 4;
pub const GAMEPAD_AXIS_RIGHT_TRIGGER: c_int = 5;
pub const GAMEPAD_AXIS_COUNT: c_int = 6;
pub const enum_SDL_GamepadAxis = c_int;
pub const GamepadAxis = enum_SDL_GamepadAxis;
pub const GAMEPAD_BINDTYPE_NONE: c_int = 0;
pub const GAMEPAD_BINDTYPE_BUTTON: c_int = 1;
pub const GAMEPAD_BINDTYPE_AXIS: c_int = 2;
pub const GAMEPAD_BINDTYPE_HAT: c_int = 3;
pub const enum_SDL_GamepadBindingType = c_uint;
pub const GamepadBindingType = enum_SDL_GamepadBindingType;
const struct_unnamed_6 = extern struct {
    axis: c_int = 0,
    axis_min: c_int = 0,
    axis_max: c_int = 0,
};
const struct_unnamed_7 = extern struct {
    hat: c_int = 0,
    hat_mask: c_int = 0,
};
const union_unnamed_5 = extern union {
    button: c_int,
    axis: struct_unnamed_6,
    hat: struct_unnamed_7,
};
const struct_unnamed_9 = extern struct {
    axis: GamepadAxis = @import("std").mem.zeroes(GamepadAxis),
    axis_min: c_int = 0,
    axis_max: c_int = 0,
};
const union_unnamed_8 = extern union {
    button: GamepadButton,
    axis: struct_unnamed_9,
};
pub const GamepadBinding = extern struct {
    input_type: GamepadBindingType = @import("std").mem.zeroes(GamepadBindingType),
    input: union_unnamed_5 = @import("std").mem.zeroes(union_unnamed_5),
    output_type: GamepadBindingType = @import("std").mem.zeroes(GamepadBindingType),
    output: union_unnamed_8 = @import("std").mem.zeroes(union_unnamed_8),
};
extern fn SDL_AddGamepadMapping(mapping: [*c]const u8) c_int;
extern fn SDL_AddGamepadMappingsFromIO(src: ?*IOStream, closeio: bool) c_int;
extern fn SDL_AddGamepadMappingsFromFile(file: [*c]const u8) c_int;
extern fn SDL_ReloadGamepadMappings() bool;
extern fn SDL_GetGamepadMappings(count: [*c]c_int) [*c][*c]u8;
extern fn SDL_GetGamepadMappingForGUID(guid: GUID) [*c]u8;
extern fn SDL_GetGamepadMapping(gamepad: ?*Gamepad) [*c]u8;
extern fn SDL_SetGamepadMapping(instance_id: JoystickID, mapping: [*c]const u8) bool;
extern fn SDL_HasGamepad() bool;
extern fn SDL_GetGamepads(count: [*c]c_int) [*c]JoystickID;
extern fn SDL_IsGamepad(instance_id: JoystickID) bool;
extern fn SDL_GetGamepadNameForID(instance_id: JoystickID) [*c]const u8;
extern fn SDL_GetGamepadPathForID(instance_id: JoystickID) [*c]const u8;
extern fn SDL_GetGamepadPlayerIndexForID(instance_id: JoystickID) c_int;
extern fn SDL_GetGamepadGUIDForID(instance_id: JoystickID) GUID;
extern fn SDL_GetGamepadVendorForID(instance_id: JoystickID) Uint16;
extern fn SDL_GetGamepadProductForID(instance_id: JoystickID) Uint16;
extern fn SDL_GetGamepadProductVersionForID(instance_id: JoystickID) Uint16;
extern fn SDL_GetGamepadTypeForID(instance_id: JoystickID) GamepadType;
extern fn SDL_GetRealGamepadTypeForID(instance_id: JoystickID) GamepadType;
extern fn SDL_GetGamepadMappingForID(instance_id: JoystickID) [*c]u8;
extern fn SDL_OpenGamepad(instance_id: JoystickID) ?*Gamepad;
extern fn SDL_GetGamepadFromID(instance_id: JoystickID) ?*Gamepad;
extern fn SDL_GetGamepadFromPlayerIndex(player_index: c_int) ?*Gamepad;
extern fn SDL_GetGamepadProperties(gamepad: ?*Gamepad) PropertiesID;
extern fn SDL_GetGamepadID(gamepad: ?*Gamepad) JoystickID;
extern fn SDL_GetGamepadName(gamepad: ?*Gamepad) [*c]const u8;
extern fn SDL_GetGamepadPath(gamepad: ?*Gamepad) [*c]const u8;
extern fn SDL_GetGamepadType(gamepad: ?*Gamepad) GamepadType;
extern fn SDL_GetRealGamepadType(gamepad: ?*Gamepad) GamepadType;
extern fn SDL_GetGamepadPlayerIndex(gamepad: ?*Gamepad) c_int;
extern fn SDL_SetGamepadPlayerIndex(gamepad: ?*Gamepad, player_index: c_int) bool;
extern fn SDL_GetGamepadVendor(gamepad: ?*Gamepad) Uint16;
extern fn SDL_GetGamepadProduct(gamepad: ?*Gamepad) Uint16;
extern fn SDL_GetGamepadProductVersion(gamepad: ?*Gamepad) Uint16;
extern fn SDL_GetGamepadFirmwareVersion(gamepad: ?*Gamepad) Uint16;
extern fn SDL_GetGamepadSerial(gamepad: ?*Gamepad) [*c]const u8;
extern fn SDL_GetGamepadSteamHandle(gamepad: ?*Gamepad) Uint64;
extern fn SDL_GetGamepadConnectionState(gamepad: ?*Gamepad) JoystickConnectionState;
extern fn SDL_GetGamepadPowerInfo(gamepad: ?*Gamepad, percent: [*c]c_int) PowerState;
extern fn SDL_GamepadConnected(gamepad: ?*Gamepad) bool;
extern fn SDL_GetGamepadJoystick(gamepad: ?*Gamepad) ?*Joystick;
extern fn SDL_SetGamepadEventsEnabled(enabled: bool) void;
extern fn SDL_GamepadEventsEnabled() bool;
extern fn SDL_GetGamepadBindings(gamepad: ?*Gamepad, count: [*c]c_int) [*c][*c]GamepadBinding;
extern fn SDL_UpdateGamepads() void;
extern fn SDL_GetGamepadTypeFromString(str: [*c]const u8) GamepadType;
extern fn SDL_GetGamepadStringForType(@"type": GamepadType) [*c]const u8;
extern fn SDL_GetGamepadAxisFromString(str: [*c]const u8) GamepadAxis;
extern fn SDL_GetGamepadStringForAxis(axis: GamepadAxis) [*c]const u8;
extern fn SDL_GamepadHasAxis(gamepad: ?*Gamepad, axis: GamepadAxis) bool;
extern fn SDL_GetGamepadAxis(gamepad: ?*Gamepad, axis: GamepadAxis) Sint16;
extern fn SDL_GetGamepadButtonFromString(str: [*c]const u8) GamepadButton;
extern fn SDL_GetGamepadStringForButton(button: GamepadButton) [*c]const u8;
extern fn SDL_GamepadHasButton(gamepad: ?*Gamepad, button: GamepadButton) bool;
extern fn SDL_GetGamepadButton(gamepad: ?*Gamepad, button: GamepadButton) bool;
extern fn SDL_GetGamepadButtonLabelForType(@"type": GamepadType, button: GamepadButton) GamepadButtonLabel;
extern fn SDL_GetGamepadButtonLabel(gamepad: ?*Gamepad, button: GamepadButton) GamepadButtonLabel;
extern fn SDL_GetNumGamepadTouchpads(gamepad: ?*Gamepad) c_int;
extern fn SDL_GetNumGamepadTouchpadFingers(gamepad: ?*Gamepad, touchpad: c_int) c_int;
extern fn SDL_GetGamepadTouchpadFinger(gamepad: ?*Gamepad, touchpad: c_int, finger: c_int, down: [*c]bool, x: [*c]f32, y: [*c]f32, pressure: [*c]f32) bool;
extern fn SDL_GamepadHasSensor(gamepad: ?*Gamepad, @"type": SensorType) bool;
extern fn SDL_SetGamepadSensorEnabled(gamepad: ?*Gamepad, @"type": SensorType, enabled: bool) bool;
extern fn SDL_GamepadSensorEnabled(gamepad: ?*Gamepad, @"type": SensorType) bool;
extern fn SDL_GetGamepadSensorDataRate(gamepad: ?*Gamepad, @"type": SensorType) f32;
extern fn SDL_GetGamepadSensorData(gamepad: ?*Gamepad, @"type": SensorType, data: [*c]f32, num_values: c_int) bool;
extern fn SDL_RumbleGamepad(gamepad: ?*Gamepad, low_frequency_rumble: Uint16, high_frequency_rumble: Uint16, duration_ms: Uint32) bool;
extern fn SDL_RumbleGamepadTriggers(gamepad: ?*Gamepad, left_rumble: Uint16, right_rumble: Uint16, duration_ms: Uint32) bool;
extern fn SDL_SetGamepadLED(gamepad: ?*Gamepad, red: Uint8, green: Uint8, blue: Uint8) bool;
extern fn SDL_SendGamepadEffect(gamepad: ?*Gamepad, data: ?*const anyopaque, size: c_int) bool;
extern fn SDL_CloseGamepad(gamepad: ?*Gamepad) void;
extern fn SDL_GetGamepadAppleSFSymbolsNameForButton(gamepad: ?*Gamepad, button: GamepadButton) [*c]const u8;
extern fn SDL_GetGamepadAppleSFSymbolsNameForAxis(gamepad: ?*Gamepad, axis: GamepadAxis) [*c]const u8;
pub const SCANCODE_UNKNOWN: c_int = 0;
pub const SCANCODE_A: c_int = 4;
pub const SCANCODE_B: c_int = 5;
pub const SCANCODE_C: c_int = 6;
pub const SCANCODE_D: c_int = 7;
pub const SCANCODE_E: c_int = 8;
pub const SCANCODE_F: c_int = 9;
pub const SCANCODE_G: c_int = 10;
pub const SCANCODE_H: c_int = 11;
pub const SCANCODE_I: c_int = 12;
pub const SCANCODE_J: c_int = 13;
pub const SCANCODE_K: c_int = 14;
pub const SCANCODE_L: c_int = 15;
pub const SCANCODE_M: c_int = 16;
pub const SCANCODE_N: c_int = 17;
pub const SCANCODE_O: c_int = 18;
pub const SCANCODE_P: c_int = 19;
pub const SCANCODE_Q: c_int = 20;
pub const SCANCODE_R: c_int = 21;
pub const SCANCODE_S: c_int = 22;
pub const SCANCODE_T: c_int = 23;
pub const SCANCODE_U: c_int = 24;
pub const SCANCODE_V: c_int = 25;
pub const SCANCODE_W: c_int = 26;
pub const SCANCODE_X: c_int = 27;
pub const SCANCODE_Y: c_int = 28;
pub const SCANCODE_Z: c_int = 29;
pub const SCANCODE_1: c_int = 30;
pub const SCANCODE_2: c_int = 31;
pub const SCANCODE_3: c_int = 32;
pub const SCANCODE_4: c_int = 33;
pub const SCANCODE_5: c_int = 34;
pub const SCANCODE_6: c_int = 35;
pub const SCANCODE_7: c_int = 36;
pub const SCANCODE_8: c_int = 37;
pub const SCANCODE_9: c_int = 38;
pub const SCANCODE_0: c_int = 39;
pub const SCANCODE_RETURN: c_int = 40;
pub const SCANCODE_ESCAPE: c_int = 41;
pub const SCANCODE_BACKSPACE: c_int = 42;
pub const SCANCODE_TAB: c_int = 43;
pub const SCANCODE_SPACE: c_int = 44;
pub const SCANCODE_MINUS: c_int = 45;
pub const SCANCODE_EQUALS: c_int = 46;
pub const SCANCODE_LEFTBRACKET: c_int = 47;
pub const SCANCODE_RIGHTBRACKET: c_int = 48;
pub const SCANCODE_BACKSLASH: c_int = 49;
pub const SCANCODE_NONUSHASH: c_int = 50;
pub const SCANCODE_SEMICOLON: c_int = 51;
pub const SCANCODE_APOSTROPHE: c_int = 52;
pub const SCANCODE_GRAVE: c_int = 53;
pub const SCANCODE_COMMA: c_int = 54;
pub const SCANCODE_PERIOD: c_int = 55;
pub const SCANCODE_SLASH: c_int = 56;
pub const SCANCODE_CAPSLOCK: c_int = 57;
pub const SCANCODE_F1: c_int = 58;
pub const SCANCODE_F2: c_int = 59;
pub const SCANCODE_F3: c_int = 60;
pub const SCANCODE_F4: c_int = 61;
pub const SCANCODE_F5: c_int = 62;
pub const SCANCODE_F6: c_int = 63;
pub const SCANCODE_F7: c_int = 64;
pub const SCANCODE_F8: c_int = 65;
pub const SCANCODE_F9: c_int = 66;
pub const SCANCODE_F10: c_int = 67;
pub const SCANCODE_F11: c_int = 68;
pub const SCANCODE_F12: c_int = 69;
pub const SCANCODE_PRINTSCREEN: c_int = 70;
pub const SCANCODE_SCROLLLOCK: c_int = 71;
pub const SCANCODE_PAUSE: c_int = 72;
pub const SCANCODE_INSERT: c_int = 73;
pub const SCANCODE_HOME: c_int = 74;
pub const SCANCODE_PAGEUP: c_int = 75;
pub const SCANCODE_DELETE: c_int = 76;
pub const SCANCODE_END: c_int = 77;
pub const SCANCODE_PAGEDOWN: c_int = 78;
pub const SCANCODE_RIGHT: c_int = 79;
pub const SCANCODE_LEFT: c_int = 80;
pub const SCANCODE_DOWN: c_int = 81;
pub const SCANCODE_UP: c_int = 82;
pub const SCANCODE_NUMLOCKCLEAR: c_int = 83;
pub const SCANCODE_KP_DIVIDE: c_int = 84;
pub const SCANCODE_KP_MULTIPLY: c_int = 85;
pub const SCANCODE_KP_MINUS: c_int = 86;
pub const SCANCODE_KP_PLUS: c_int = 87;
pub const SCANCODE_KP_ENTER: c_int = 88;
pub const SCANCODE_KP_1: c_int = 89;
pub const SCANCODE_KP_2: c_int = 90;
pub const SCANCODE_KP_3: c_int = 91;
pub const SCANCODE_KP_4: c_int = 92;
pub const SCANCODE_KP_5: c_int = 93;
pub const SCANCODE_KP_6: c_int = 94;
pub const SCANCODE_KP_7: c_int = 95;
pub const SCANCODE_KP_8: c_int = 96;
pub const SCANCODE_KP_9: c_int = 97;
pub const SCANCODE_KP_0: c_int = 98;
pub const SCANCODE_KP_PERIOD: c_int = 99;
pub const SCANCODE_NONUSBACKSLASH: c_int = 100;
pub const SCANCODE_APPLICATION: c_int = 101;
pub const SCANCODE_POWER: c_int = 102;
pub const SCANCODE_KP_EQUALS: c_int = 103;
pub const SCANCODE_F13: c_int = 104;
pub const SCANCODE_F14: c_int = 105;
pub const SCANCODE_F15: c_int = 106;
pub const SCANCODE_F16: c_int = 107;
pub const SCANCODE_F17: c_int = 108;
pub const SCANCODE_F18: c_int = 109;
pub const SCANCODE_F19: c_int = 110;
pub const SCANCODE_F20: c_int = 111;
pub const SCANCODE_F21: c_int = 112;
pub const SCANCODE_F22: c_int = 113;
pub const SCANCODE_F23: c_int = 114;
pub const SCANCODE_F24: c_int = 115;
pub const SCANCODE_EXECUTE: c_int = 116;
pub const SCANCODE_HELP: c_int = 117;
pub const SCANCODE_MENU: c_int = 118;
pub const SCANCODE_SELECT: c_int = 119;
pub const SCANCODE_STOP: c_int = 120;
pub const SCANCODE_AGAIN: c_int = 121;
pub const SCANCODE_UNDO: c_int = 122;
pub const SCANCODE_CUT: c_int = 123;
pub const SCANCODE_COPY: c_int = 124;
pub const SCANCODE_PASTE: c_int = 125;
pub const SCANCODE_FIND: c_int = 126;
pub const SCANCODE_MUTE: c_int = 127;
pub const SCANCODE_VOLUMEUP: c_int = 128;
pub const SCANCODE_VOLUMEDOWN: c_int = 129;
pub const SCANCODE_KP_COMMA: c_int = 133;
pub const SCANCODE_KP_EQUALSAS400: c_int = 134;
pub const SCANCODE_INTERNATIONAL1: c_int = 135;
pub const SCANCODE_INTERNATIONAL2: c_int = 136;
pub const SCANCODE_INTERNATIONAL3: c_int = 137;
pub const SCANCODE_INTERNATIONAL4: c_int = 138;
pub const SCANCODE_INTERNATIONAL5: c_int = 139;
pub const SCANCODE_INTERNATIONAL6: c_int = 140;
pub const SCANCODE_INTERNATIONAL7: c_int = 141;
pub const SCANCODE_INTERNATIONAL8: c_int = 142;
pub const SCANCODE_INTERNATIONAL9: c_int = 143;
pub const SCANCODE_LANG1: c_int = 144;
pub const SCANCODE_LANG2: c_int = 145;
pub const SCANCODE_LANG3: c_int = 146;
pub const SCANCODE_LANG4: c_int = 147;
pub const SCANCODE_LANG5: c_int = 148;
pub const SCANCODE_LANG6: c_int = 149;
pub const SCANCODE_LANG7: c_int = 150;
pub const SCANCODE_LANG8: c_int = 151;
pub const SCANCODE_LANG9: c_int = 152;
pub const SCANCODE_ALTERASE: c_int = 153;
pub const SCANCODE_SYSREQ: c_int = 154;
pub const SCANCODE_CANCEL: c_int = 155;
pub const SCANCODE_CLEAR: c_int = 156;
pub const SCANCODE_PRIOR: c_int = 157;
pub const SCANCODE_RETURN2: c_int = 158;
pub const SCANCODE_SEPARATOR: c_int = 159;
pub const SCANCODE_OUT: c_int = 160;
pub const SCANCODE_OPER: c_int = 161;
pub const SCANCODE_CLEARAGAIN: c_int = 162;
pub const SCANCODE_CRSEL: c_int = 163;
pub const SCANCODE_EXSEL: c_int = 164;
pub const SCANCODE_KP_00: c_int = 176;
pub const SCANCODE_KP_000: c_int = 177;
pub const SCANCODE_THOUSANDSSEPARATOR: c_int = 178;
pub const SCANCODE_DECIMALSEPARATOR: c_int = 179;
pub const SCANCODE_CURRENCYUNIT: c_int = 180;
pub const SCANCODE_CURRENCYSUBUNIT: c_int = 181;
pub const SCANCODE_KP_LEFTPAREN: c_int = 182;
pub const SCANCODE_KP_RIGHTPAREN: c_int = 183;
pub const SCANCODE_KP_LEFTBRACE: c_int = 184;
pub const SCANCODE_KP_RIGHTBRACE: c_int = 185;
pub const SCANCODE_KP_TAB: c_int = 186;
pub const SCANCODE_KP_BACKSPACE: c_int = 187;
pub const SCANCODE_KP_A: c_int = 188;
pub const SCANCODE_KP_B: c_int = 189;
pub const SCANCODE_KP_C: c_int = 190;
pub const SCANCODE_KP_D: c_int = 191;
pub const SCANCODE_KP_E: c_int = 192;
pub const SCANCODE_KP_F: c_int = 193;
pub const SCANCODE_KP_XOR: c_int = 194;
pub const SCANCODE_KP_POWER: c_int = 195;
pub const SCANCODE_KP_PERCENT: c_int = 196;
pub const SCANCODE_KP_LESS: c_int = 197;
pub const SCANCODE_KP_GREATER: c_int = 198;
pub const SCANCODE_KP_AMPERSAND: c_int = 199;
pub const SCANCODE_KP_DBLAMPERSAND: c_int = 200;
pub const SCANCODE_KP_VERTICALBAR: c_int = 201;
pub const SCANCODE_KP_DBLVERTICALBAR: c_int = 202;
pub const SCANCODE_KP_COLON: c_int = 203;
pub const SCANCODE_KP_HASH: c_int = 204;
pub const SCANCODE_KP_SPACE: c_int = 205;
pub const SCANCODE_KP_AT: c_int = 206;
pub const SCANCODE_KP_EXCLAM: c_int = 207;
pub const SCANCODE_KP_MEMSTORE: c_int = 208;
pub const SCANCODE_KP_MEMRECALL: c_int = 209;
pub const SCANCODE_KP_MEMCLEAR: c_int = 210;
pub const SCANCODE_KP_MEMADD: c_int = 211;
pub const SCANCODE_KP_MEMSUBTRACT: c_int = 212;
pub const SCANCODE_KP_MEMMULTIPLY: c_int = 213;
pub const SCANCODE_KP_MEMDIVIDE: c_int = 214;
pub const SCANCODE_KP_PLUSMINUS: c_int = 215;
pub const SCANCODE_KP_CLEAR: c_int = 216;
pub const SCANCODE_KP_CLEARENTRY: c_int = 217;
pub const SCANCODE_KP_BINARY: c_int = 218;
pub const SCANCODE_KP_OCTAL: c_int = 219;
pub const SCANCODE_KP_DECIMAL: c_int = 220;
pub const SCANCODE_KP_HEXADECIMAL: c_int = 221;
pub const SCANCODE_LCTRL: c_int = 224;
pub const SCANCODE_LSHIFT: c_int = 225;
pub const SCANCODE_LALT: c_int = 226;
pub const SCANCODE_LGUI: c_int = 227;
pub const SCANCODE_RCTRL: c_int = 228;
pub const SCANCODE_RSHIFT: c_int = 229;
pub const SCANCODE_RALT: c_int = 230;
pub const SCANCODE_RGUI: c_int = 231;
pub const SCANCODE_MODE: c_int = 257;
pub const SCANCODE_SLEEP: c_int = 258;
pub const SCANCODE_WAKE: c_int = 259;
pub const SCANCODE_CHANNEL_INCREMENT: c_int = 260;
pub const SCANCODE_CHANNEL_DECREMENT: c_int = 261;
pub const SCANCODE_MEDIA_PLAY: c_int = 262;
pub const SCANCODE_MEDIA_PAUSE: c_int = 263;
pub const SCANCODE_MEDIA_RECORD: c_int = 264;
pub const SCANCODE_MEDIA_FAST_FORWARD: c_int = 265;
pub const SCANCODE_MEDIA_REWIND: c_int = 266;
pub const SCANCODE_MEDIA_NEXT_TRACK: c_int = 267;
pub const SCANCODE_MEDIA_PREVIOUS_TRACK: c_int = 268;
pub const SCANCODE_MEDIA_STOP: c_int = 269;
pub const SCANCODE_MEDIA_EJECT: c_int = 270;
pub const SCANCODE_MEDIA_PLAY_PAUSE: c_int = 271;
pub const SCANCODE_MEDIA_SELECT: c_int = 272;
pub const SCANCODE_AC_NEW: c_int = 273;
pub const SCANCODE_AC_OPEN: c_int = 274;
pub const SCANCODE_AC_CLOSE: c_int = 275;
pub const SCANCODE_AC_EXIT: c_int = 276;
pub const SCANCODE_AC_SAVE: c_int = 277;
pub const SCANCODE_AC_PRINT: c_int = 278;
pub const SCANCODE_AC_PROPERTIES: c_int = 279;
pub const SCANCODE_AC_SEARCH: c_int = 280;
pub const SCANCODE_AC_HOME: c_int = 281;
pub const SCANCODE_AC_BACK: c_int = 282;
pub const SCANCODE_AC_FORWARD: c_int = 283;
pub const SCANCODE_AC_STOP: c_int = 284;
pub const SCANCODE_AC_REFRESH: c_int = 285;
pub const SCANCODE_AC_BOOKMARKS: c_int = 286;
pub const SCANCODE_SOFTLEFT: c_int = 287;
pub const SCANCODE_SOFTRIGHT: c_int = 288;
pub const SCANCODE_CALL: c_int = 289;
pub const SCANCODE_ENDCALL: c_int = 290;
pub const SCANCODE_RESERVED: c_int = 400;
pub const SCANCODE_COUNT: c_int = 512;
pub const enum_SDL_Scancode = c_uint;
pub const Scancode = enum_SDL_Scancode;
pub const Keycode = Uint32;
pub const Keymod = Uint16;
pub const KeyboardID = Uint32;
extern fn SDL_HasKeyboard() bool;
extern fn SDL_GetKeyboards(count: [*c]c_int) [*c]KeyboardID;
extern fn SDL_GetKeyboardNameForID(instance_id: KeyboardID) [*c]const u8;
extern fn SDL_GetKeyboardFocus() ?*Window;
extern fn SDL_GetKeyboardState(numkeys: [*c]c_int) [*c]const bool;
extern fn SDL_ResetKeyboard() void;
extern fn SDL_GetModState() Keymod;
extern fn SDL_SetModState(modstate: Keymod) void;
extern fn SDL_GetKeyFromScancode(scancode: Scancode, modstate: Keymod, key_event: bool) Keycode;
extern fn SDL_GetScancodeFromKey(key: Keycode, modstate: [*c]Keymod) Scancode;
extern fn SDL_SetScancodeName(scancode: Scancode, name: [*c]const u8) bool;
extern fn SDL_GetScancodeName(scancode: Scancode) [*c]const u8;
extern fn SDL_GetScancodeFromName(name: [*c]const u8) Scancode;
extern fn SDL_GetKeyName(key: Keycode) [*c]const u8;
extern fn SDL_GetKeyFromName(name: [*c]const u8) Keycode;
extern fn SDL_StartTextInput(window: ?*Window) bool;
pub const TEXTINPUT_TYPE_TEXT: c_int = 0;
pub const TEXTINPUT_TYPE_TEXT_NAME: c_int = 1;
pub const TEXTINPUT_TYPE_TEXT_EMAIL: c_int = 2;
pub const TEXTINPUT_TYPE_TEXT_USERNAME: c_int = 3;
pub const TEXTINPUT_TYPE_TEXT_PASSWORD_HIDDEN: c_int = 4;
pub const TEXTINPUT_TYPE_TEXT_PASSWORD_VISIBLE: c_int = 5;
pub const TEXTINPUT_TYPE_NUMBER: c_int = 6;
pub const TEXTINPUT_TYPE_NUMBER_PASSWORD_HIDDEN: c_int = 7;
pub const TEXTINPUT_TYPE_NUMBER_PASSWORD_VISIBLE: c_int = 8;
pub const enum_SDL_TextInputType = c_uint;
pub const TextInputType = enum_SDL_TextInputType;
pub const CAPITALIZE_NONE: c_int = 0;
pub const CAPITALIZE_SENTENCES: c_int = 1;
pub const CAPITALIZE_WORDS: c_int = 2;
pub const CAPITALIZE_LETTERS: c_int = 3;
pub const enum_SDL_Capitalization = c_uint;
pub const Capitalization = enum_SDL_Capitalization;
extern fn SDL_StartTextInputWithProperties(window: ?*Window, props: PropertiesID) bool;
extern fn SDL_TextInputActive(window: ?*Window) bool;
extern fn SDL_StopTextInput(window: ?*Window) bool;
extern fn SDL_ClearComposition(window: ?*Window) bool;
extern fn SDL_SetTextInputArea(window: ?*Window, rect: [*c]const Rect, cursor: c_int) bool;
extern fn SDL_GetTextInputArea(window: ?*Window, rect: [*c]Rect, cursor: [*c]c_int) bool;
extern fn SDL_HasScreenKeyboardSupport() bool;
extern fn SDL_ScreenKeyboardShown(window: ?*Window) bool;
pub const MouseID = Uint32;
pub const Cursor = opaque {};
pub const SYSTEM_CURSOR_DEFAULT: c_int = 0;
pub const SYSTEM_CURSOR_TEXT: c_int = 1;
pub const SYSTEM_CURSOR_WAIT: c_int = 2;
pub const SYSTEM_CURSOR_CROSSHAIR: c_int = 3;
pub const SYSTEM_CURSOR_PROGRESS: c_int = 4;
pub const SYSTEM_CURSOR_NWSE_RESIZE: c_int = 5;
pub const SYSTEM_CURSOR_NESW_RESIZE: c_int = 6;
pub const SYSTEM_CURSOR_EW_RESIZE: c_int = 7;
pub const SYSTEM_CURSOR_NS_RESIZE: c_int = 8;
pub const SYSTEM_CURSOR_MOVE: c_int = 9;
pub const SYSTEM_CURSOR_NOT_ALLOWED: c_int = 10;
pub const SYSTEM_CURSOR_POINTER: c_int = 11;
pub const SYSTEM_CURSOR_NW_RESIZE: c_int = 12;
pub const SYSTEM_CURSOR_N_RESIZE: c_int = 13;
pub const SYSTEM_CURSOR_NE_RESIZE: c_int = 14;
pub const SYSTEM_CURSOR_E_RESIZE: c_int = 15;
pub const SYSTEM_CURSOR_SE_RESIZE: c_int = 16;
pub const SYSTEM_CURSOR_S_RESIZE: c_int = 17;
pub const SYSTEM_CURSOR_SW_RESIZE: c_int = 18;
pub const SYSTEM_CURSOR_W_RESIZE: c_int = 19;
pub const SYSTEM_CURSOR_COUNT: c_int = 20;
pub const enum_SDL_SystemCursor = c_uint;
pub const SystemCursor = enum_SDL_SystemCursor;
pub const MOUSEWHEEL_NORMAL: c_int = 0;
pub const MOUSEWHEEL_FLIPPED: c_int = 1;
pub const enum_SDL_MouseWheelDirection = c_uint;
pub const MouseWheelDirection = enum_SDL_MouseWheelDirection;
pub const CursorFrameInfo = extern struct {
    surface: [*c]Surface = null,
    duration: Uint32 = 0,
};
pub const MouseButtonFlags = Uint32;
pub const MouseMotionTransformCallback = ?*const fn (userdata: ?*anyopaque, timestamp: Uint64, window: ?*Window, mouseID: MouseID, x: [*c]f32, y: [*c]f32) callconv(.c) void;
extern fn SDL_HasMouse() bool;
extern fn SDL_GetMice(count: [*c]c_int) [*c]MouseID;
extern fn SDL_GetMouseNameForID(instance_id: MouseID) [*c]const u8;
extern fn SDL_GetMouseFocus() ?*Window;
extern fn SDL_GetMouseState(x: [*c]f32, y: [*c]f32) MouseButtonFlags;
extern fn SDL_GetGlobalMouseState(x: [*c]f32, y: [*c]f32) MouseButtonFlags;
extern fn SDL_GetRelativeMouseState(x: [*c]f32, y: [*c]f32) MouseButtonFlags;
extern fn SDL_WarpMouseInWindow(window: ?*Window, x: f32, y: f32) void;
extern fn SDL_WarpMouseGlobal(x: f32, y: f32) bool;
extern fn SDL_SetRelativeMouseTransform(callback: MouseMotionTransformCallback, userdata: ?*anyopaque) bool;
extern fn SDL_SetWindowRelativeMouseMode(window: ?*Window, enabled: bool) bool;
extern fn SDL_GetWindowRelativeMouseMode(window: ?*Window) bool;
extern fn SDL_CaptureMouse(enabled: bool) bool;
extern fn SDL_CreateCursor(data: [*c]const Uint8, mask: [*c]const Uint8, w: c_int, h: c_int, hot_x: c_int, hot_y: c_int) ?*Cursor;
extern fn SDL_CreateColorCursor(surface: [*c]Surface, hot_x: c_int, hot_y: c_int) ?*Cursor;
extern fn SDL_CreateAnimatedCursor(frames: [*c]CursorFrameInfo, frame_count: c_int, hot_x: c_int, hot_y: c_int) ?*Cursor;
extern fn SDL_CreateSystemCursor(id: SystemCursor) ?*Cursor;
extern fn SDL_SetCursor(cursor: ?*Cursor) bool;
extern fn SDL_GetCursor() ?*Cursor;
extern fn SDL_GetDefaultCursor() ?*Cursor;
extern fn SDL_DestroyCursor(cursor: ?*Cursor) void;
extern fn SDL_ShowCursor() bool;
extern fn SDL_HideCursor() bool;
extern fn SDL_CursorVisible() bool;
pub const TouchID = Uint64;
pub const FingerID = Uint64;
pub const TOUCH_DEVICE_INVALID: c_int = -1;
pub const TOUCH_DEVICE_DIRECT: c_int = 0;
pub const TOUCH_DEVICE_INDIRECT_ABSOLUTE: c_int = 1;
pub const TOUCH_DEVICE_INDIRECT_RELATIVE: c_int = 2;
pub const enum_SDL_TouchDeviceType = c_int;
pub const TouchDeviceType = enum_SDL_TouchDeviceType;
pub const Finger = extern struct {
    id: FingerID = 0,
    x: f32 = 0,
    y: f32 = 0,
    pressure: f32 = 0,
};
extern fn SDL_GetTouchDevices(count: [*c]c_int) [*c]TouchID;
extern fn SDL_GetTouchDeviceName(touchID: TouchID) [*c]const u8;
extern fn SDL_GetTouchDeviceType(touchID: TouchID) TouchDeviceType;
extern fn SDL_GetTouchFingers(touchID: TouchID, count: [*c]c_int) [*c][*c]Finger;
pub const PenID = Uint32;
pub const PenInputFlags = Uint32;
pub const PEN_AXIS_PRESSURE: c_int = 0;
pub const PEN_AXIS_XTILT: c_int = 1;
pub const PEN_AXIS_YTILT: c_int = 2;
pub const PEN_AXIS_DISTANCE: c_int = 3;
pub const PEN_AXIS_ROTATION: c_int = 4;
pub const PEN_AXIS_SLIDER: c_int = 5;
pub const PEN_AXIS_TANGENTIAL_PRESSURE: c_int = 6;
pub const PEN_AXIS_COUNT: c_int = 7;
pub const enum_SDL_PenAxis = c_uint;
pub const PenAxis = enum_SDL_PenAxis;
pub const PEN_DEVICE_TYPE_INVALID: c_int = -1;
pub const PEN_DEVICE_TYPE_UNKNOWN: c_int = 0;
pub const PEN_DEVICE_TYPE_DIRECT: c_int = 1;
pub const PEN_DEVICE_TYPE_INDIRECT: c_int = 2;
pub const enum_SDL_PenDeviceType = c_int;
pub const PenDeviceType = enum_SDL_PenDeviceType;
extern fn SDL_GetPenDeviceType(instance_id: PenID) PenDeviceType;
pub const EVENT_FIRST: c_int = 0;
pub const EVENT_QUIT: c_int = 256;
pub const EVENT_TERMINATING: c_int = 257;
pub const EVENT_LOW_MEMORY: c_int = 258;
pub const EVENT_WILL_ENTER_BACKGROUND: c_int = 259;
pub const EVENT_DID_ENTER_BACKGROUND: c_int = 260;
pub const EVENT_WILL_ENTER_FOREGROUND: c_int = 261;
pub const EVENT_DID_ENTER_FOREGROUND: c_int = 262;
pub const EVENT_LOCALE_CHANGED: c_int = 263;
pub const EVENT_SYSTEM_THEME_CHANGED: c_int = 264;
pub const EVENT_DISPLAY_ORIENTATION: c_int = 337;
pub const EVENT_DISPLAY_ADDED: c_int = 338;
pub const EVENT_DISPLAY_REMOVED: c_int = 339;
pub const EVENT_DISPLAY_MOVED: c_int = 340;
pub const EVENT_DISPLAY_DESKTOP_MODE_CHANGED: c_int = 341;
pub const EVENT_DISPLAY_CURRENT_MODE_CHANGED: c_int = 342;
pub const EVENT_DISPLAY_CONTENT_SCALE_CHANGED: c_int = 343;
pub const EVENT_DISPLAY_USABLE_BOUNDS_CHANGED: c_int = 344;
pub const EVENT_DISPLAY_FIRST: c_int = 337;
pub const EVENT_DISPLAY_LAST: c_int = 344;
pub const EVENT_WINDOW_SHOWN: c_int = 514;
pub const EVENT_WINDOW_HIDDEN: c_int = 515;
pub const EVENT_WINDOW_EXPOSED: c_int = 516;
pub const EVENT_WINDOW_MOVED: c_int = 517;
pub const EVENT_WINDOW_RESIZED: c_int = 518;
pub const EVENT_WINDOW_PIXEL_SIZE_CHANGED: c_int = 519;
pub const EVENT_WINDOW_METAL_VIEW_RESIZED: c_int = 520;
pub const EVENT_WINDOW_MINIMIZED: c_int = 521;
pub const EVENT_WINDOW_MAXIMIZED: c_int = 522;
pub const EVENT_WINDOW_RESTORED: c_int = 523;
pub const EVENT_WINDOW_MOUSE_ENTER: c_int = 524;
pub const EVENT_WINDOW_MOUSE_LEAVE: c_int = 525;
pub const EVENT_WINDOW_FOCUS_GAINED: c_int = 526;
pub const EVENT_WINDOW_FOCUS_LOST: c_int = 527;
pub const EVENT_WINDOW_CLOSE_REQUESTED: c_int = 528;
pub const EVENT_WINDOW_HIT_TEST: c_int = 529;
pub const EVENT_WINDOW_ICCPROF_CHANGED: c_int = 530;
pub const EVENT_WINDOW_DISPLAY_CHANGED: c_int = 531;
pub const EVENT_WINDOW_DISPLAY_SCALE_CHANGED: c_int = 532;
pub const EVENT_WINDOW_SAFE_AREA_CHANGED: c_int = 533;
pub const EVENT_WINDOW_OCCLUDED: c_int = 534;
pub const EVENT_WINDOW_ENTER_FULLSCREEN: c_int = 535;
pub const EVENT_WINDOW_LEAVE_FULLSCREEN: c_int = 536;
pub const EVENT_WINDOW_DESTROYED: c_int = 537;
pub const EVENT_WINDOW_HDR_STATE_CHANGED: c_int = 538;
pub const EVENT_WINDOW_FIRST: c_int = 514;
pub const EVENT_WINDOW_LAST: c_int = 538;
pub const EVENT_KEY_DOWN: c_int = 768;
pub const EVENT_KEY_UP: c_int = 769;
pub const EVENT_TEXT_EDITING: c_int = 770;
pub const EVENT_TEXT_INPUT: c_int = 771;
pub const EVENT_KEYMAP_CHANGED: c_int = 772;
pub const EVENT_KEYBOARD_ADDED: c_int = 773;
pub const EVENT_KEYBOARD_REMOVED: c_int = 774;
pub const EVENT_TEXT_EDITING_CANDIDATES: c_int = 775;
pub const EVENT_SCREEN_KEYBOARD_SHOWN: c_int = 776;
pub const EVENT_SCREEN_KEYBOARD_HIDDEN: c_int = 777;
pub const EVENT_MOUSE_MOTION: c_int = 1024;
pub const EVENT_MOUSE_BUTTON_DOWN: c_int = 1025;
pub const EVENT_MOUSE_BUTTON_UP: c_int = 1026;
pub const EVENT_MOUSE_WHEEL: c_int = 1027;
pub const EVENT_MOUSE_ADDED: c_int = 1028;
pub const EVENT_MOUSE_REMOVED: c_int = 1029;
pub const EVENT_JOYSTICK_AXIS_MOTION: c_int = 1536;
pub const EVENT_JOYSTICK_BALL_MOTION: c_int = 1537;
pub const EVENT_JOYSTICK_HAT_MOTION: c_int = 1538;
pub const EVENT_JOYSTICK_BUTTON_DOWN: c_int = 1539;
pub const EVENT_JOYSTICK_BUTTON_UP: c_int = 1540;
pub const EVENT_JOYSTICK_ADDED: c_int = 1541;
pub const EVENT_JOYSTICK_REMOVED: c_int = 1542;
pub const EVENT_JOYSTICK_BATTERY_UPDATED: c_int = 1543;
pub const EVENT_JOYSTICK_UPDATE_COMPLETE: c_int = 1544;
pub const EVENT_GAMEPAD_AXIS_MOTION: c_int = 1616;
pub const EVENT_GAMEPAD_BUTTON_DOWN: c_int = 1617;
pub const EVENT_GAMEPAD_BUTTON_UP: c_int = 1618;
pub const EVENT_GAMEPAD_ADDED: c_int = 1619;
pub const EVENT_GAMEPAD_REMOVED: c_int = 1620;
pub const EVENT_GAMEPAD_REMAPPED: c_int = 1621;
pub const EVENT_GAMEPAD_TOUCHPAD_DOWN: c_int = 1622;
pub const EVENT_GAMEPAD_TOUCHPAD_MOTION: c_int = 1623;
pub const EVENT_GAMEPAD_TOUCHPAD_UP: c_int = 1624;
pub const EVENT_GAMEPAD_SENSOR_UPDATE: c_int = 1625;
pub const EVENT_GAMEPAD_UPDATE_COMPLETE: c_int = 1626;
pub const EVENT_GAMEPAD_STEAM_HANDLE_UPDATED: c_int = 1627;
pub const EVENT_FINGER_DOWN: c_int = 1792;
pub const EVENT_FINGER_UP: c_int = 1793;
pub const EVENT_FINGER_MOTION: c_int = 1794;
pub const EVENT_FINGER_CANCELED: c_int = 1795;
pub const EVENT_PINCH_BEGIN: c_int = 1808;
pub const EVENT_PINCH_UPDATE: c_int = 1809;
pub const EVENT_PINCH_END: c_int = 1810;
pub const EVENT_CLIPBOARD_UPDATE: c_int = 2304;
pub const EVENT_DROP_FILE: c_int = 4096;
pub const EVENT_DROP_TEXT: c_int = 4097;
pub const EVENT_DROP_BEGIN: c_int = 4098;
pub const EVENT_DROP_COMPLETE: c_int = 4099;
pub const EVENT_DROP_POSITION: c_int = 4100;
pub const EVENT_AUDIO_DEVICE_ADDED: c_int = 4352;
pub const EVENT_AUDIO_DEVICE_REMOVED: c_int = 4353;
pub const EVENT_AUDIO_DEVICE_FORMAT_CHANGED: c_int = 4354;
pub const EVENT_SENSOR_UPDATE: c_int = 4608;
pub const EVENT_PEN_PROXIMITY_IN: c_int = 4864;
pub const EVENT_PEN_PROXIMITY_OUT: c_int = 4865;
pub const EVENT_PEN_DOWN: c_int = 4866;
pub const EVENT_PEN_UP: c_int = 4867;
pub const EVENT_PEN_BUTTON_DOWN: c_int = 4868;
pub const EVENT_PEN_BUTTON_UP: c_int = 4869;
pub const EVENT_PEN_MOTION: c_int = 4870;
pub const EVENT_PEN_AXIS: c_int = 4871;
pub const EVENT_CAMERA_DEVICE_ADDED: c_int = 5120;
pub const EVENT_CAMERA_DEVICE_REMOVED: c_int = 5121;
pub const EVENT_CAMERA_DEVICE_APPROVED: c_int = 5122;
pub const EVENT_CAMERA_DEVICE_DENIED: c_int = 5123;
pub const EVENT_RENDER_TARGETS_RESET: c_int = 8192;
pub const EVENT_RENDER_DEVICE_RESET: c_int = 8193;
pub const EVENT_RENDER_DEVICE_LOST: c_int = 8194;
pub const EVENT_PRIVATE0: c_int = 16384;
pub const EVENT_PRIVATE1: c_int = 16385;
pub const EVENT_PRIVATE2: c_int = 16386;
pub const EVENT_PRIVATE3: c_int = 16387;
pub const EVENT_POLL_SENTINEL: c_int = 32512;
pub const EVENT_USER: c_int = 32768;
pub const EVENT_LAST: c_int = 65535;
pub const EVENT_ENUM_PADDING: c_int = 2147483647;
pub const enum_SDL_EventType = c_uint;
pub const EventType = enum_SDL_EventType;
pub const CommonEvent = extern struct {
    type: Uint32 = 0,
    reserved: Uint32 = 0,
    timestamp: Uint64 = 0,
};
pub const DisplayEvent = extern struct {
    type: EventType = @import("std").mem.zeroes(EventType),
    reserved: Uint32 = 0,
    timestamp: Uint64 = 0,
    displayID: DisplayID = 0,
    data1: Sint32 = 0,
    data2: Sint32 = 0,
};
pub const WindowEvent = extern struct {
    type: EventType = @import("std").mem.zeroes(EventType),
    reserved: Uint32 = 0,
    timestamp: Uint64 = 0,
    windowID: WindowID = 0,
    data1: Sint32 = 0,
    data2: Sint32 = 0,
};
pub const KeyboardDeviceEvent = extern struct {
    type: EventType = @import("std").mem.zeroes(EventType),
    reserved: Uint32 = 0,
    timestamp: Uint64 = 0,
    which: KeyboardID = 0,
};
pub const KeyboardEvent = extern struct {
    type: EventType = @import("std").mem.zeroes(EventType),
    reserved: Uint32 = 0,
    timestamp: Uint64 = 0,
    windowID: WindowID = 0,
    which: KeyboardID = 0,
    scancode: Scancode = @import("std").mem.zeroes(Scancode),
    key: Keycode = 0,
    mod: Keymod = 0,
    raw: Uint16 = 0,
    down: bool = false,
    repeat: bool = false,
};
pub const TextEditingEvent = extern struct {
    type: EventType = @import("std").mem.zeroes(EventType),
    reserved: Uint32 = 0,
    timestamp: Uint64 = 0,
    windowID: WindowID = 0,
    text: [*c]const u8 = null,
    start: Sint32 = 0,
    length: Sint32 = 0,
};
pub const TextEditingCandidatesEvent = extern struct {
    type: EventType = @import("std").mem.zeroes(EventType),
    reserved: Uint32 = 0,
    timestamp: Uint64 = 0,
    windowID: WindowID = 0,
    candidates: [*c]const [*c]const u8 = null,
    num_candidates: Sint32 = 0,
    selected_candidate: Sint32 = 0,
    horizontal: bool = false,
    padding1: Uint8 = 0,
    padding2: Uint8 = 0,
    padding3: Uint8 = 0,
};
pub const TextInputEvent = extern struct {
    type: EventType = @import("std").mem.zeroes(EventType),
    reserved: Uint32 = 0,
    timestamp: Uint64 = 0,
    windowID: WindowID = 0,
    text: [*c]const u8 = null,
};
pub const MouseDeviceEvent = extern struct {
    type: EventType = @import("std").mem.zeroes(EventType),
    reserved: Uint32 = 0,
    timestamp: Uint64 = 0,
    which: MouseID = 0,
};
pub const MouseMotionEvent = extern struct {
    type: EventType = @import("std").mem.zeroes(EventType),
    reserved: Uint32 = 0,
    timestamp: Uint64 = 0,
    windowID: WindowID = 0,
    which: MouseID = 0,
    state: MouseButtonFlags = 0,
    x: f32 = 0,
    y: f32 = 0,
    xrel: f32 = 0,
    yrel: f32 = 0,
};
pub const MouseButtonEvent = extern struct {
    type: EventType = @import("std").mem.zeroes(EventType),
    reserved: Uint32 = 0,
    timestamp: Uint64 = 0,
    windowID: WindowID = 0,
    which: MouseID = 0,
    button: Uint8 = 0,
    down: bool = false,
    clicks: Uint8 = 0,
    padding: Uint8 = 0,
    x: f32 = 0,
    y: f32 = 0,
};
pub const MouseWheelEvent = extern struct {
    type: EventType = @import("std").mem.zeroes(EventType),
    reserved: Uint32 = 0,
    timestamp: Uint64 = 0,
    windowID: WindowID = 0,
    which: MouseID = 0,
    x: f32 = 0,
    y: f32 = 0,
    direction: MouseWheelDirection = @import("std").mem.zeroes(MouseWheelDirection),
    mouse_x: f32 = 0,
    mouse_y: f32 = 0,
    integer_x: Sint32 = 0,
    integer_y: Sint32 = 0,
};
pub const JoyAxisEvent = extern struct {
    type: EventType = @import("std").mem.zeroes(EventType),
    reserved: Uint32 = 0,
    timestamp: Uint64 = 0,
    which: JoystickID = 0,
    axis: Uint8 = 0,
    padding1: Uint8 = 0,
    padding2: Uint8 = 0,
    padding3: Uint8 = 0,
    value: Sint16 = 0,
    padding4: Uint16 = 0,
};
pub const JoyBallEvent = extern struct {
    type: EventType = @import("std").mem.zeroes(EventType),
    reserved: Uint32 = 0,
    timestamp: Uint64 = 0,
    which: JoystickID = 0,
    ball: Uint8 = 0,
    padding1: Uint8 = 0,
    padding2: Uint8 = 0,
    padding3: Uint8 = 0,
    xrel: Sint16 = 0,
    yrel: Sint16 = 0,
};
pub const JoyHatEvent = extern struct {
    type: EventType = @import("std").mem.zeroes(EventType),
    reserved: Uint32 = 0,
    timestamp: Uint64 = 0,
    which: JoystickID = 0,
    hat: Uint8 = 0,
    value: Uint8 = 0,
    padding1: Uint8 = 0,
    padding2: Uint8 = 0,
};
pub const JoyButtonEvent = extern struct {
    type: EventType = @import("std").mem.zeroes(EventType),
    reserved: Uint32 = 0,
    timestamp: Uint64 = 0,
    which: JoystickID = 0,
    button: Uint8 = 0,
    down: bool = false,
    padding1: Uint8 = 0,
    padding2: Uint8 = 0,
};
pub const JoyDeviceEvent = extern struct {
    type: EventType = @import("std").mem.zeroes(EventType),
    reserved: Uint32 = 0,
    timestamp: Uint64 = 0,
    which: JoystickID = 0,
};
pub const JoyBatteryEvent = extern struct {
    type: EventType = @import("std").mem.zeroes(EventType),
    reserved: Uint32 = 0,
    timestamp: Uint64 = 0,
    which: JoystickID = 0,
    state: PowerState = @import("std").mem.zeroes(PowerState),
    percent: c_int = 0,
};
pub const GamepadAxisEvent = extern struct {
    type: EventType = @import("std").mem.zeroes(EventType),
    reserved: Uint32 = 0,
    timestamp: Uint64 = 0,
    which: JoystickID = 0,
    axis: Uint8 = 0,
    padding1: Uint8 = 0,
    padding2: Uint8 = 0,
    padding3: Uint8 = 0,
    value: Sint16 = 0,
    padding4: Uint16 = 0,
};
pub const GamepadButtonEvent = extern struct {
    type: EventType = @import("std").mem.zeroes(EventType),
    reserved: Uint32 = 0,
    timestamp: Uint64 = 0,
    which: JoystickID = 0,
    button: Uint8 = 0,
    down: bool = false,
    padding1: Uint8 = 0,
    padding2: Uint8 = 0,
};
pub const GamepadDeviceEvent = extern struct {
    type: EventType = @import("std").mem.zeroes(EventType),
    reserved: Uint32 = 0,
    timestamp: Uint64 = 0,
    which: JoystickID = 0,
};
pub const GamepadTouchpadEvent = extern struct {
    type: EventType = @import("std").mem.zeroes(EventType),
    reserved: Uint32 = 0,
    timestamp: Uint64 = 0,
    which: JoystickID = 0,
    touchpad: Sint32 = 0,
    finger: Sint32 = 0,
    x: f32 = 0,
    y: f32 = 0,
    pressure: f32 = 0,
};
pub const GamepadSensorEvent = extern struct {
    type: EventType = @import("std").mem.zeroes(EventType),
    reserved: Uint32 = 0,
    timestamp: Uint64 = 0,
    which: JoystickID = 0,
    sensor: Sint32 = 0,
    data: [3]f32 = @import("std").mem.zeroes([3]f32),
    sensor_timestamp: Uint64 = 0,
};
pub const AudioDeviceEvent = extern struct {
    type: EventType = @import("std").mem.zeroes(EventType),
    reserved: Uint32 = 0,
    timestamp: Uint64 = 0,
    which: AudioDeviceID = 0,
    recording: bool = false,
    padding1: Uint8 = 0,
    padding2: Uint8 = 0,
    padding3: Uint8 = 0,
};
pub const CameraDeviceEvent = extern struct {
    type: EventType = @import("std").mem.zeroes(EventType),
    reserved: Uint32 = 0,
    timestamp: Uint64 = 0,
    which: CameraID = 0,
};
pub const RenderEvent = extern struct {
    type: EventType = @import("std").mem.zeroes(EventType),
    reserved: Uint32 = 0,
    timestamp: Uint64 = 0,
    windowID: WindowID = 0,
};
pub const TouchFingerEvent = extern struct {
    type: EventType = @import("std").mem.zeroes(EventType),
    reserved: Uint32 = 0,
    timestamp: Uint64 = 0,
    touchID: TouchID = 0,
    fingerID: FingerID = 0,
    x: f32 = 0,
    y: f32 = 0,
    dx: f32 = 0,
    dy: f32 = 0,
    pressure: f32 = 0,
    windowID: WindowID = 0,
};
pub const PinchFingerEvent = extern struct {
    type: EventType = @import("std").mem.zeroes(EventType),
    reserved: Uint32 = 0,
    timestamp: Uint64 = 0,
    scale: f32 = 0,
    windowID: WindowID = 0,
};
pub const PenProximityEvent = extern struct {
    type: EventType = @import("std").mem.zeroes(EventType),
    reserved: Uint32 = 0,
    timestamp: Uint64 = 0,
    windowID: WindowID = 0,
    which: PenID = 0,
};
pub const PenMotionEvent = extern struct {
    type: EventType = @import("std").mem.zeroes(EventType),
    reserved: Uint32 = 0,
    timestamp: Uint64 = 0,
    windowID: WindowID = 0,
    which: PenID = 0,
    pen_state: PenInputFlags = 0,
    x: f32 = 0,
    y: f32 = 0,
};
pub const PenTouchEvent = extern struct {
    type: EventType = @import("std").mem.zeroes(EventType),
    reserved: Uint32 = 0,
    timestamp: Uint64 = 0,
    windowID: WindowID = 0,
    which: PenID = 0,
    pen_state: PenInputFlags = 0,
    x: f32 = 0,
    y: f32 = 0,
    eraser: bool = false,
    down: bool = false,
};
pub const PenButtonEvent = extern struct {
    type: EventType = @import("std").mem.zeroes(EventType),
    reserved: Uint32 = 0,
    timestamp: Uint64 = 0,
    windowID: WindowID = 0,
    which: PenID = 0,
    pen_state: PenInputFlags = 0,
    x: f32 = 0,
    y: f32 = 0,
    button: Uint8 = 0,
    down: bool = false,
};
pub const PenAxisEvent = extern struct {
    type: EventType = @import("std").mem.zeroes(EventType),
    reserved: Uint32 = 0,
    timestamp: Uint64 = 0,
    windowID: WindowID = 0,
    which: PenID = 0,
    pen_state: PenInputFlags = 0,
    x: f32 = 0,
    y: f32 = 0,
    axis: PenAxis = @import("std").mem.zeroes(PenAxis),
    value: f32 = 0,
};
pub const DropEvent = extern struct {
    type: EventType = @import("std").mem.zeroes(EventType),
    reserved: Uint32 = 0,
    timestamp: Uint64 = 0,
    windowID: WindowID = 0,
    x: f32 = 0,
    y: f32 = 0,
    source: [*c]const u8 = null,
    data: [*c]const u8 = null,
};
pub const ClipboardEvent = extern struct {
    type: EventType = @import("std").mem.zeroes(EventType),
    reserved: Uint32 = 0,
    timestamp: Uint64 = 0,
    owner: bool = false,
    num_mime_types: Sint32 = 0,
    mime_types: [*c][*c]const u8 = null,
};
pub const SensorEvent = extern struct {
    type: EventType = @import("std").mem.zeroes(EventType),
    reserved: Uint32 = 0,
    timestamp: Uint64 = 0,
    which: SensorID = 0,
    data: [6]f32 = @import("std").mem.zeroes([6]f32),
    sensor_timestamp: Uint64 = 0,
};
pub const QuitEvent = extern struct {
    type: EventType = @import("std").mem.zeroes(EventType),
    reserved: Uint32 = 0,
    timestamp: Uint64 = 0,
};
pub const UserEvent = extern struct {
    type: Uint32 = 0,
    reserved: Uint32 = 0,
    timestamp: Uint64 = 0,
    windowID: WindowID = 0,
    code: Sint32 = 0,
    data1: ?*anyopaque = null,
    data2: ?*anyopaque = null,
};
pub const union_SDL_Event = extern union {
    type: Uint32,
    common: CommonEvent,
    display: DisplayEvent,
    window: WindowEvent,
    kdevice: KeyboardDeviceEvent,
    key: KeyboardEvent,
    edit: TextEditingEvent,
    edit_candidates: TextEditingCandidatesEvent,
    text: TextInputEvent,
    mdevice: MouseDeviceEvent,
    motion: MouseMotionEvent,
    button: MouseButtonEvent,
    wheel: MouseWheelEvent,
    jdevice: JoyDeviceEvent,
    jaxis: JoyAxisEvent,
    jball: JoyBallEvent,
    jhat: JoyHatEvent,
    jbutton: JoyButtonEvent,
    jbattery: JoyBatteryEvent,
    gdevice: GamepadDeviceEvent,
    gaxis: GamepadAxisEvent,
    gbutton: GamepadButtonEvent,
    gtouchpad: GamepadTouchpadEvent,
    gsensor: GamepadSensorEvent,
    adevice: AudioDeviceEvent,
    cdevice: CameraDeviceEvent,
    sensor: SensorEvent,
    quit: QuitEvent,
    user: UserEvent,
    tfinger: TouchFingerEvent,
    pinch: PinchFingerEvent,
    pproximity: PenProximityEvent,
    ptouch: PenTouchEvent,
    pmotion: PenMotionEvent,
    pbutton: PenButtonEvent,
    paxis: PenAxisEvent,
    render: RenderEvent,
    drop: DropEvent,
    clipboard: ClipboardEvent,
    padding: [128]Uint8,
};
pub const Event = union_SDL_Event;
comptime {
    if (!(@sizeOf(Event) == @sizeOf(@TypeOf(@as([*c]Event, null).*.padding)))) @compileError("static assertion failed \"sizeof(SDL_Event) == sizeof((SDL_static_cast(SDL_Event *, NULL))->padding)\"");
}
extern fn SDL_PumpEvents() void;
pub const ADDEVENT: c_int = 0;
pub const PEEKEVENT: c_int = 1;
pub const GETEVENT: c_int = 2;
pub const enum_SDL_EventAction = c_uint;
pub const EventAction = enum_SDL_EventAction;
extern fn SDL_PeepEvents(events: [*c]Event, numevents: c_int, action: EventAction, minType: Uint32, maxType: Uint32) c_int;
extern fn SDL_HasEvent(@"type": Uint32) bool;
extern fn SDL_HasEvents(minType: Uint32, maxType: Uint32) bool;
extern fn SDL_FlushEvent(@"type": Uint32) void;
extern fn SDL_FlushEvents(minType: Uint32, maxType: Uint32) void;
extern fn SDL_PollEvent(event: [*c]Event) bool;
extern fn SDL_WaitEvent(event: [*c]Event) bool;
extern fn SDL_WaitEventTimeout(event: [*c]Event, timeoutMS: Sint32) bool;
extern fn SDL_PushEvent(event: [*c]Event) bool;
pub const EventFilter = ?*const fn (userdata: ?*anyopaque, event: [*c]Event) callconv(.c) bool;
extern fn SDL_SetEventFilter(filter: EventFilter, userdata: ?*anyopaque) void;
extern fn SDL_GetEventFilter(filter: [*c]EventFilter, userdata: [*c]?*anyopaque) bool;
extern fn SDL_AddEventWatch(filter: EventFilter, userdata: ?*anyopaque) bool;
extern fn SDL_RemoveEventWatch(filter: EventFilter, userdata: ?*anyopaque) void;
extern fn SDL_FilterEvents(filter: EventFilter, userdata: ?*anyopaque) void;
extern fn SDL_SetEventEnabled(@"type": Uint32, enabled: bool) void;
extern fn SDL_EventEnabled(@"type": Uint32) bool;
extern fn SDL_RegisterEvents(numevents: c_int) Uint32;
extern fn SDL_GetWindowFromEvent(event: [*c]const Event) ?*Window;
extern fn SDL_GetEventDescription(event: [*c]const Event, buf: [*c]u8, buflen: c_int) c_int;
extern fn SDL_GetBasePath() [*c]const u8;
extern fn SDL_GetPrefPath(org: [*c]const u8, app: [*c]const u8) [*c]u8;
pub const FOLDER_HOME: c_int = 0;
pub const FOLDER_DESKTOP: c_int = 1;
pub const FOLDER_DOCUMENTS: c_int = 2;
pub const FOLDER_DOWNLOADS: c_int = 3;
pub const FOLDER_MUSIC: c_int = 4;
pub const FOLDER_PICTURES: c_int = 5;
pub const FOLDER_PUBLICSHARE: c_int = 6;
pub const FOLDER_SAVEDGAMES: c_int = 7;
pub const FOLDER_SCREENSHOTS: c_int = 8;
pub const FOLDER_TEMPLATES: c_int = 9;
pub const FOLDER_VIDEOS: c_int = 10;
pub const FOLDER_COUNT: c_int = 11;
pub const enum_SDL_Folder = c_uint;
pub const Folder = enum_SDL_Folder;
extern fn SDL_GetUserFolder(folder: Folder) [*c]const u8;
pub const PATHTYPE_NONE: c_int = 0;
pub const PATHTYPE_FILE: c_int = 1;
pub const PATHTYPE_DIRECTORY: c_int = 2;
pub const PATHTYPE_OTHER: c_int = 3;
pub const enum_SDL_PathType = c_uint;
pub const PathType = enum_SDL_PathType;
pub const PathInfo = extern struct {
    type: PathType = @import("std").mem.zeroes(PathType),
    size: Uint64 = 0,
    create_time: Time = 0,
    modify_time: Time = 0,
    access_time: Time = 0,
};
pub const GlobFlags = Uint32;
extern fn SDL_CreateDirectory(path: [*c]const u8) bool;
pub const ENUM_CONTINUE: c_int = 0;
pub const ENUM_SUCCESS: c_int = 1;
pub const ENUM_FAILURE: c_int = 2;
pub const enum_SDL_EnumerationResult = c_uint;
pub const EnumerationResult = enum_SDL_EnumerationResult;
pub const EnumerateDirectoryCallback = ?*const fn (userdata: ?*anyopaque, dirname: [*c]const u8, fname: [*c]const u8) callconv(.c) EnumerationResult;
extern fn SDL_EnumerateDirectory(path: [*c]const u8, callback: EnumerateDirectoryCallback, userdata: ?*anyopaque) bool;
extern fn SDL_RemovePath(path: [*c]const u8) bool;
extern fn SDL_RenamePath(oldpath: [*c]const u8, newpath: [*c]const u8) bool;
extern fn SDL_CopyFile(oldpath: [*c]const u8, newpath: [*c]const u8) bool;
extern fn SDL_GetPathInfo(path: [*c]const u8, info: [*c]PathInfo) bool;
extern fn SDL_GlobDirectory(path: [*c]const u8, pattern: [*c]const u8, flags: GlobFlags, count: [*c]c_int) [*c][*c]u8;
extern fn SDL_GetCurrentDirectory() [*c]u8;
pub const GPUDevice = opaque {};
pub const GPUBuffer = opaque {};
pub const GPUTransferBuffer = opaque {};
pub const GPUTexture = opaque {};
pub const GPUSampler = opaque {};
pub const GPUShader = opaque {};
pub const GPUComputePipeline = opaque {};
pub const GPUGraphicsPipeline = opaque {};
pub const GPUCommandBuffer = opaque {};
pub const GPURenderPass = opaque {};
pub const GPUComputePass = opaque {};
pub const GPUCopyPass = opaque {};
pub const GPUFence = opaque {};
pub const GPU_PRIMITIVETYPE_TRIANGLELIST: c_int = 0;
pub const GPU_PRIMITIVETYPE_TRIANGLESTRIP: c_int = 1;
pub const GPU_PRIMITIVETYPE_LINELIST: c_int = 2;
pub const GPU_PRIMITIVETYPE_LINESTRIP: c_int = 3;
pub const GPU_PRIMITIVETYPE_POINTLIST: c_int = 4;
pub const enum_SDL_GPUPrimitiveType = c_uint;
pub const GPUPrimitiveType = enum_SDL_GPUPrimitiveType;
pub const GPU_LOADOP_LOAD: c_int = 0;
pub const GPU_LOADOP_CLEAR: c_int = 1;
pub const GPU_LOADOP_DONT_CARE: c_int = 2;
pub const enum_SDL_GPULoadOp = c_uint;
pub const GPULoadOp = enum_SDL_GPULoadOp;
pub const GPU_STOREOP_STORE: c_int = 0;
pub const GPU_STOREOP_DONT_CARE: c_int = 1;
pub const GPU_STOREOP_RESOLVE: c_int = 2;
pub const GPU_STOREOP_RESOLVE_AND_STORE: c_int = 3;
pub const enum_SDL_GPUStoreOp = c_uint;
pub const GPUStoreOp = enum_SDL_GPUStoreOp;
pub const GPU_INDEXELEMENTSIZE_16BIT: c_int = 0;
pub const GPU_INDEXELEMENTSIZE_32BIT: c_int = 1;
pub const enum_SDL_GPUIndexElementSize = c_uint;
pub const GPUIndexElementSize = enum_SDL_GPUIndexElementSize;
pub const GPU_TEXTUREFORMAT_INVALID: c_int = 0;
pub const GPU_TEXTUREFORMAT_A8_UNORM: c_int = 1;
pub const GPU_TEXTUREFORMAT_R8_UNORM: c_int = 2;
pub const GPU_TEXTUREFORMAT_R8G8_UNORM: c_int = 3;
pub const GPU_TEXTUREFORMAT_R8G8B8A8_UNORM: c_int = 4;
pub const GPU_TEXTUREFORMAT_R16_UNORM: c_int = 5;
pub const GPU_TEXTUREFORMAT_R16G16_UNORM: c_int = 6;
pub const GPU_TEXTUREFORMAT_R16G16B16A16_UNORM: c_int = 7;
pub const GPU_TEXTUREFORMAT_R10G10B10A2_UNORM: c_int = 8;
pub const GPU_TEXTUREFORMAT_B5G6R5_UNORM: c_int = 9;
pub const GPU_TEXTUREFORMAT_B5G5R5A1_UNORM: c_int = 10;
pub const GPU_TEXTUREFORMAT_B4G4R4A4_UNORM: c_int = 11;
pub const GPU_TEXTUREFORMAT_B8G8R8A8_UNORM: c_int = 12;
pub const GPU_TEXTUREFORMAT_BC1_RGBA_UNORM: c_int = 13;
pub const GPU_TEXTUREFORMAT_BC2_RGBA_UNORM: c_int = 14;
pub const GPU_TEXTUREFORMAT_BC3_RGBA_UNORM: c_int = 15;
pub const GPU_TEXTUREFORMAT_BC4_R_UNORM: c_int = 16;
pub const GPU_TEXTUREFORMAT_BC5_RG_UNORM: c_int = 17;
pub const GPU_TEXTUREFORMAT_BC7_RGBA_UNORM: c_int = 18;
pub const GPU_TEXTUREFORMAT_BC6H_RGB_FLOAT: c_int = 19;
pub const GPU_TEXTUREFORMAT_BC6H_RGB_UFLOAT: c_int = 20;
pub const GPU_TEXTUREFORMAT_R8_SNORM: c_int = 21;
pub const GPU_TEXTUREFORMAT_R8G8_SNORM: c_int = 22;
pub const GPU_TEXTUREFORMAT_R8G8B8A8_SNORM: c_int = 23;
pub const GPU_TEXTUREFORMAT_R16_SNORM: c_int = 24;
pub const GPU_TEXTUREFORMAT_R16G16_SNORM: c_int = 25;
pub const GPU_TEXTUREFORMAT_R16G16B16A16_SNORM: c_int = 26;
pub const GPU_TEXTUREFORMAT_R16_FLOAT: c_int = 27;
pub const GPU_TEXTUREFORMAT_R16G16_FLOAT: c_int = 28;
pub const GPU_TEXTUREFORMAT_R16G16B16A16_FLOAT: c_int = 29;
pub const GPU_TEXTUREFORMAT_R32_FLOAT: c_int = 30;
pub const GPU_TEXTUREFORMAT_R32G32_FLOAT: c_int = 31;
pub const GPU_TEXTUREFORMAT_R32G32B32A32_FLOAT: c_int = 32;
pub const GPU_TEXTUREFORMAT_R11G11B10_UFLOAT: c_int = 33;
pub const GPU_TEXTUREFORMAT_R8_UINT: c_int = 34;
pub const GPU_TEXTUREFORMAT_R8G8_UINT: c_int = 35;
pub const GPU_TEXTUREFORMAT_R8G8B8A8_UINT: c_int = 36;
pub const GPU_TEXTUREFORMAT_R16_UINT: c_int = 37;
pub const GPU_TEXTUREFORMAT_R16G16_UINT: c_int = 38;
pub const GPU_TEXTUREFORMAT_R16G16B16A16_UINT: c_int = 39;
pub const GPU_TEXTUREFORMAT_R32_UINT: c_int = 40;
pub const GPU_TEXTUREFORMAT_R32G32_UINT: c_int = 41;
pub const GPU_TEXTUREFORMAT_R32G32B32A32_UINT: c_int = 42;
pub const GPU_TEXTUREFORMAT_R8_INT: c_int = 43;
pub const GPU_TEXTUREFORMAT_R8G8_INT: c_int = 44;
pub const GPU_TEXTUREFORMAT_R8G8B8A8_INT: c_int = 45;
pub const GPU_TEXTUREFORMAT_R16_INT: c_int = 46;
pub const GPU_TEXTUREFORMAT_R16G16_INT: c_int = 47;
pub const GPU_TEXTUREFORMAT_R16G16B16A16_INT: c_int = 48;
pub const GPU_TEXTUREFORMAT_R32_INT: c_int = 49;
pub const GPU_TEXTUREFORMAT_R32G32_INT: c_int = 50;
pub const GPU_TEXTUREFORMAT_R32G32B32A32_INT: c_int = 51;
pub const GPU_TEXTUREFORMAT_R8G8B8A8_UNORM_SRGB: c_int = 52;
pub const GPU_TEXTUREFORMAT_B8G8R8A8_UNORM_SRGB: c_int = 53;
pub const GPU_TEXTUREFORMAT_BC1_RGBA_UNORM_SRGB: c_int = 54;
pub const GPU_TEXTUREFORMAT_BC2_RGBA_UNORM_SRGB: c_int = 55;
pub const GPU_TEXTUREFORMAT_BC3_RGBA_UNORM_SRGB: c_int = 56;
pub const GPU_TEXTUREFORMAT_BC7_RGBA_UNORM_SRGB: c_int = 57;
pub const GPU_TEXTUREFORMAT_D16_UNORM: c_int = 58;
pub const GPU_TEXTUREFORMAT_D24_UNORM: c_int = 59;
pub const GPU_TEXTUREFORMAT_D32_FLOAT: c_int = 60;
pub const GPU_TEXTUREFORMAT_D24_UNORM_S8_UINT: c_int = 61;
pub const GPU_TEXTUREFORMAT_D32_FLOAT_S8_UINT: c_int = 62;
pub const GPU_TEXTUREFORMAT_ASTC_4x4_UNORM: c_int = 63;
pub const GPU_TEXTUREFORMAT_ASTC_5x4_UNORM: c_int = 64;
pub const GPU_TEXTUREFORMAT_ASTC_5x5_UNORM: c_int = 65;
pub const GPU_TEXTUREFORMAT_ASTC_6x5_UNORM: c_int = 66;
pub const GPU_TEXTUREFORMAT_ASTC_6x6_UNORM: c_int = 67;
pub const GPU_TEXTUREFORMAT_ASTC_8x5_UNORM: c_int = 68;
pub const GPU_TEXTUREFORMAT_ASTC_8x6_UNORM: c_int = 69;
pub const GPU_TEXTUREFORMAT_ASTC_8x8_UNORM: c_int = 70;
pub const GPU_TEXTUREFORMAT_ASTC_10x5_UNORM: c_int = 71;
pub const GPU_TEXTUREFORMAT_ASTC_10x6_UNORM: c_int = 72;
pub const GPU_TEXTUREFORMAT_ASTC_10x8_UNORM: c_int = 73;
pub const GPU_TEXTUREFORMAT_ASTC_10x10_UNORM: c_int = 74;
pub const GPU_TEXTUREFORMAT_ASTC_12x10_UNORM: c_int = 75;
pub const GPU_TEXTUREFORMAT_ASTC_12x12_UNORM: c_int = 76;
pub const GPU_TEXTUREFORMAT_ASTC_4x4_UNORM_SRGB: c_int = 77;
pub const GPU_TEXTUREFORMAT_ASTC_5x4_UNORM_SRGB: c_int = 78;
pub const GPU_TEXTUREFORMAT_ASTC_5x5_UNORM_SRGB: c_int = 79;
pub const GPU_TEXTUREFORMAT_ASTC_6x5_UNORM_SRGB: c_int = 80;
pub const GPU_TEXTUREFORMAT_ASTC_6x6_UNORM_SRGB: c_int = 81;
pub const GPU_TEXTUREFORMAT_ASTC_8x5_UNORM_SRGB: c_int = 82;
pub const GPU_TEXTUREFORMAT_ASTC_8x6_UNORM_SRGB: c_int = 83;
pub const GPU_TEXTUREFORMAT_ASTC_8x8_UNORM_SRGB: c_int = 84;
pub const GPU_TEXTUREFORMAT_ASTC_10x5_UNORM_SRGB: c_int = 85;
pub const GPU_TEXTUREFORMAT_ASTC_10x6_UNORM_SRGB: c_int = 86;
pub const GPU_TEXTUREFORMAT_ASTC_10x8_UNORM_SRGB: c_int = 87;
pub const GPU_TEXTUREFORMAT_ASTC_10x10_UNORM_SRGB: c_int = 88;
pub const GPU_TEXTUREFORMAT_ASTC_12x10_UNORM_SRGB: c_int = 89;
pub const GPU_TEXTUREFORMAT_ASTC_12x12_UNORM_SRGB: c_int = 90;
pub const GPU_TEXTUREFORMAT_ASTC_4x4_FLOAT: c_int = 91;
pub const GPU_TEXTUREFORMAT_ASTC_5x4_FLOAT: c_int = 92;
pub const GPU_TEXTUREFORMAT_ASTC_5x5_FLOAT: c_int = 93;
pub const GPU_TEXTUREFORMAT_ASTC_6x5_FLOAT: c_int = 94;
pub const GPU_TEXTUREFORMAT_ASTC_6x6_FLOAT: c_int = 95;
pub const GPU_TEXTUREFORMAT_ASTC_8x5_FLOAT: c_int = 96;
pub const GPU_TEXTUREFORMAT_ASTC_8x6_FLOAT: c_int = 97;
pub const GPU_TEXTUREFORMAT_ASTC_8x8_FLOAT: c_int = 98;
pub const GPU_TEXTUREFORMAT_ASTC_10x5_FLOAT: c_int = 99;
pub const GPU_TEXTUREFORMAT_ASTC_10x6_FLOAT: c_int = 100;
pub const GPU_TEXTUREFORMAT_ASTC_10x8_FLOAT: c_int = 101;
pub const GPU_TEXTUREFORMAT_ASTC_10x10_FLOAT: c_int = 102;
pub const GPU_TEXTUREFORMAT_ASTC_12x10_FLOAT: c_int = 103;
pub const GPU_TEXTUREFORMAT_ASTC_12x12_FLOAT: c_int = 104;
pub const enum_SDL_GPUTextureFormat = c_uint;
pub const GPUTextureFormat = enum_SDL_GPUTextureFormat;
pub const GPUTextureUsageFlags = Uint32;
pub const GPU_TEXTURETYPE_2D: c_int = 0;
pub const GPU_TEXTURETYPE_2D_ARRAY: c_int = 1;
pub const GPU_TEXTURETYPE_3D: c_int = 2;
pub const GPU_TEXTURETYPE_CUBE: c_int = 3;
pub const GPU_TEXTURETYPE_CUBE_ARRAY: c_int = 4;
pub const enum_SDL_GPUTextureType = c_uint;
pub const GPUTextureType = enum_SDL_GPUTextureType;
pub const GPU_SAMPLECOUNT_1: c_int = 0;
pub const GPU_SAMPLECOUNT_2: c_int = 1;
pub const GPU_SAMPLECOUNT_4: c_int = 2;
pub const GPU_SAMPLECOUNT_8: c_int = 3;
pub const enum_SDL_GPUSampleCount = c_uint;
pub const GPUSampleCount = enum_SDL_GPUSampleCount;
pub const GPU_CUBEMAPFACE_POSITIVEX: c_int = 0;
pub const GPU_CUBEMAPFACE_NEGATIVEX: c_int = 1;
pub const GPU_CUBEMAPFACE_POSITIVEY: c_int = 2;
pub const GPU_CUBEMAPFACE_NEGATIVEY: c_int = 3;
pub const GPU_CUBEMAPFACE_POSITIVEZ: c_int = 4;
pub const GPU_CUBEMAPFACE_NEGATIVEZ: c_int = 5;
pub const enum_SDL_GPUCubeMapFace = c_uint;
pub const GPUCubeMapFace = enum_SDL_GPUCubeMapFace;
pub const GPUBufferUsageFlags = Uint32;
pub const GPU_TRANSFERBUFFERUSAGE_UPLOAD: c_int = 0;
pub const GPU_TRANSFERBUFFERUSAGE_DOWNLOAD: c_int = 1;
pub const enum_SDL_GPUTransferBufferUsage = c_uint;
pub const GPUTransferBufferUsage = enum_SDL_GPUTransferBufferUsage;
pub const GPU_SHADERSTAGE_VERTEX: c_int = 0;
pub const GPU_SHADERSTAGE_FRAGMENT: c_int = 1;
pub const enum_SDL_GPUShaderStage = c_uint;
pub const GPUShaderStage = enum_SDL_GPUShaderStage;
pub const GPUShaderFormat = Uint32;
pub const GPU_VERTEXELEMENTFORMAT_INVALID: c_int = 0;
pub const GPU_VERTEXELEMENTFORMAT_INT: c_int = 1;
pub const GPU_VERTEXELEMENTFORMAT_INT2: c_int = 2;
pub const GPU_VERTEXELEMENTFORMAT_INT3: c_int = 3;
pub const GPU_VERTEXELEMENTFORMAT_INT4: c_int = 4;
pub const GPU_VERTEXELEMENTFORMAT_UINT: c_int = 5;
pub const GPU_VERTEXELEMENTFORMAT_UINT2: c_int = 6;
pub const GPU_VERTEXELEMENTFORMAT_UINT3: c_int = 7;
pub const GPU_VERTEXELEMENTFORMAT_UINT4: c_int = 8;
pub const GPU_VERTEXELEMENTFORMAT_FLOAT: c_int = 9;
pub const GPU_VERTEXELEMENTFORMAT_FLOAT2: c_int = 10;
pub const GPU_VERTEXELEMENTFORMAT_FLOAT3: c_int = 11;
pub const GPU_VERTEXELEMENTFORMAT_FLOAT4: c_int = 12;
pub const GPU_VERTEXELEMENTFORMAT_BYTE2: c_int = 13;
pub const GPU_VERTEXELEMENTFORMAT_BYTE4: c_int = 14;
pub const GPU_VERTEXELEMENTFORMAT_UBYTE2: c_int = 15;
pub const GPU_VERTEXELEMENTFORMAT_UBYTE4: c_int = 16;
pub const GPU_VERTEXELEMENTFORMAT_BYTE2_NORM: c_int = 17;
pub const GPU_VERTEXELEMENTFORMAT_BYTE4_NORM: c_int = 18;
pub const GPU_VERTEXELEMENTFORMAT_UBYTE2_NORM: c_int = 19;
pub const GPU_VERTEXELEMENTFORMAT_UBYTE4_NORM: c_int = 20;
pub const GPU_VERTEXELEMENTFORMAT_SHORT2: c_int = 21;
pub const GPU_VERTEXELEMENTFORMAT_SHORT4: c_int = 22;
pub const GPU_VERTEXELEMENTFORMAT_USHORT2: c_int = 23;
pub const GPU_VERTEXELEMENTFORMAT_USHORT4: c_int = 24;
pub const GPU_VERTEXELEMENTFORMAT_SHORT2_NORM: c_int = 25;
pub const GPU_VERTEXELEMENTFORMAT_SHORT4_NORM: c_int = 26;
pub const GPU_VERTEXELEMENTFORMAT_USHORT2_NORM: c_int = 27;
pub const GPU_VERTEXELEMENTFORMAT_USHORT4_NORM: c_int = 28;
pub const GPU_VERTEXELEMENTFORMAT_HALF2: c_int = 29;
pub const GPU_VERTEXELEMENTFORMAT_HALF4: c_int = 30;
pub const enum_SDL_GPUVertexElementFormat = c_uint;
pub const GPUVertexElementFormat = enum_SDL_GPUVertexElementFormat;
pub const GPU_VERTEXINPUTRATE_VERTEX: c_int = 0;
pub const GPU_VERTEXINPUTRATE_INSTANCE: c_int = 1;
pub const enum_SDL_GPUVertexInputRate = c_uint;
pub const GPUVertexInputRate = enum_SDL_GPUVertexInputRate;
pub const GPU_FILLMODE_FILL: c_int = 0;
pub const GPU_FILLMODE_LINE: c_int = 1;
pub const enum_SDL_GPUFillMode = c_uint;
pub const GPUFillMode = enum_SDL_GPUFillMode;
pub const GPU_CULLMODE_NONE: c_int = 0;
pub const GPU_CULLMODE_FRONT: c_int = 1;
pub const GPU_CULLMODE_BACK: c_int = 2;
pub const enum_SDL_GPUCullMode = c_uint;
pub const GPUCullMode = enum_SDL_GPUCullMode;
pub const GPU_FRONTFACE_COUNTER_CLOCKWISE: c_int = 0;
pub const GPU_FRONTFACE_CLOCKWISE: c_int = 1;
pub const enum_SDL_GPUFrontFace = c_uint;
pub const GPUFrontFace = enum_SDL_GPUFrontFace;
pub const GPU_COMPAREOP_INVALID: c_int = 0;
pub const GPU_COMPAREOP_NEVER: c_int = 1;
pub const GPU_COMPAREOP_LESS: c_int = 2;
pub const GPU_COMPAREOP_EQUAL: c_int = 3;
pub const GPU_COMPAREOP_LESS_OR_EQUAL: c_int = 4;
pub const GPU_COMPAREOP_GREATER: c_int = 5;
pub const GPU_COMPAREOP_NOT_EQUAL: c_int = 6;
pub const GPU_COMPAREOP_GREATER_OR_EQUAL: c_int = 7;
pub const GPU_COMPAREOP_ALWAYS: c_int = 8;
pub const enum_SDL_GPUCompareOp = c_uint;
pub const GPUCompareOp = enum_SDL_GPUCompareOp;
pub const GPU_STENCILOP_INVALID: c_int = 0;
pub const GPU_STENCILOP_KEEP: c_int = 1;
pub const GPU_STENCILOP_ZERO: c_int = 2;
pub const GPU_STENCILOP_REPLACE: c_int = 3;
pub const GPU_STENCILOP_INCREMENT_AND_CLAMP: c_int = 4;
pub const GPU_STENCILOP_DECREMENT_AND_CLAMP: c_int = 5;
pub const GPU_STENCILOP_INVERT: c_int = 6;
pub const GPU_STENCILOP_INCREMENT_AND_WRAP: c_int = 7;
pub const GPU_STENCILOP_DECREMENT_AND_WRAP: c_int = 8;
pub const enum_SDL_GPUStencilOp = c_uint;
pub const GPUStencilOp = enum_SDL_GPUStencilOp;
pub const GPU_BLENDOP_INVALID: c_int = 0;
pub const GPU_BLENDOP_ADD: c_int = 1;
pub const GPU_BLENDOP_SUBTRACT: c_int = 2;
pub const GPU_BLENDOP_REVERSE_SUBTRACT: c_int = 3;
pub const GPU_BLENDOP_MIN: c_int = 4;
pub const GPU_BLENDOP_MAX: c_int = 5;
pub const enum_SDL_GPUBlendOp = c_uint;
pub const GPUBlendOp = enum_SDL_GPUBlendOp;
pub const GPU_BLENDFACTOR_INVALID: c_int = 0;
pub const GPU_BLENDFACTOR_ZERO: c_int = 1;
pub const GPU_BLENDFACTOR_ONE: c_int = 2;
pub const GPU_BLENDFACTOR_SRC_COLOR: c_int = 3;
pub const GPU_BLENDFACTOR_ONE_MINUS_SRC_COLOR: c_int = 4;
pub const GPU_BLENDFACTOR_DST_COLOR: c_int = 5;
pub const GPU_BLENDFACTOR_ONE_MINUS_DST_COLOR: c_int = 6;
pub const GPU_BLENDFACTOR_SRC_ALPHA: c_int = 7;
pub const GPU_BLENDFACTOR_ONE_MINUS_SRC_ALPHA: c_int = 8;
pub const GPU_BLENDFACTOR_DST_ALPHA: c_int = 9;
pub const GPU_BLENDFACTOR_ONE_MINUS_DST_ALPHA: c_int = 10;
pub const GPU_BLENDFACTOR_CONSTANT_COLOR: c_int = 11;
pub const GPU_BLENDFACTOR_ONE_MINUS_CONSTANT_COLOR: c_int = 12;
pub const GPU_BLENDFACTOR_SRC_ALPHA_SATURATE: c_int = 13;
pub const enum_SDL_GPUBlendFactor = c_uint;
pub const GPUBlendFactor = enum_SDL_GPUBlendFactor;
pub const GPUColorComponentFlags = Uint8;
pub const GPU_FILTER_NEAREST: c_int = 0;
pub const GPU_FILTER_LINEAR: c_int = 1;
pub const enum_SDL_GPUFilter = c_uint;
pub const GPUFilter = enum_SDL_GPUFilter;
pub const GPU_SAMPLERMIPMAPMODE_NEAREST: c_int = 0;
pub const GPU_SAMPLERMIPMAPMODE_LINEAR: c_int = 1;
pub const enum_SDL_GPUSamplerMipmapMode = c_uint;
pub const GPUSamplerMipmapMode = enum_SDL_GPUSamplerMipmapMode;
pub const GPU_SAMPLERADDRESSMODE_REPEAT: c_int = 0;
pub const GPU_SAMPLERADDRESSMODE_MIRRORED_REPEAT: c_int = 1;
pub const GPU_SAMPLERADDRESSMODE_CLAMP_TO_EDGE: c_int = 2;
pub const enum_SDL_GPUSamplerAddressMode = c_uint;
pub const GPUSamplerAddressMode = enum_SDL_GPUSamplerAddressMode;
pub const GPU_PRESENTMODE_VSYNC: c_int = 0;
pub const GPU_PRESENTMODE_IMMEDIATE: c_int = 1;
pub const GPU_PRESENTMODE_MAILBOX: c_int = 2;
pub const enum_SDL_GPUPresentMode = c_uint;
pub const GPUPresentMode = enum_SDL_GPUPresentMode;
pub const GPU_SWAPCHAINCOMPOSITION_SDR: c_int = 0;
pub const GPU_SWAPCHAINCOMPOSITION_SDR_LINEAR: c_int = 1;
pub const GPU_SWAPCHAINCOMPOSITION_HDR_EXTENDED_LINEAR: c_int = 2;
pub const GPU_SWAPCHAINCOMPOSITION_HDR10_ST2084: c_int = 3;
pub const enum_SDL_GPUSwapchainComposition = c_uint;
pub const GPUSwapchainComposition = enum_SDL_GPUSwapchainComposition;
pub const GPUViewport = extern struct {
    x: f32 = 0,
    y: f32 = 0,
    w: f32 = 0,
    h: f32 = 0,
    min_depth: f32 = 0,
    max_depth: f32 = 0,
};
pub const GPUTextureTransferInfo = extern struct {
    transfer_buffer: ?*GPUTransferBuffer = null,
    offset: Uint32 = 0,
    pixels_per_row: Uint32 = 0,
    rows_per_layer: Uint32 = 0,
};
pub const GPUTransferBufferLocation = extern struct {
    transfer_buffer: ?*GPUTransferBuffer = null,
    offset: Uint32 = 0,
};
pub const GPUTextureLocation = extern struct {
    texture: ?*GPUTexture = null,
    mip_level: Uint32 = 0,
    layer: Uint32 = 0,
    x: Uint32 = 0,
    y: Uint32 = 0,
    z: Uint32 = 0,
};
pub const GPUTextureRegion = extern struct {
    texture: ?*GPUTexture = null,
    mip_level: Uint32 = 0,
    layer: Uint32 = 0,
    x: Uint32 = 0,
    y: Uint32 = 0,
    z: Uint32 = 0,
    w: Uint32 = 0,
    h: Uint32 = 0,
    d: Uint32 = 0,
};
pub const GPUBlitRegion = extern struct {
    texture: ?*GPUTexture = null,
    mip_level: Uint32 = 0,
    layer_or_depth_plane: Uint32 = 0,
    x: Uint32 = 0,
    y: Uint32 = 0,
    w: Uint32 = 0,
    h: Uint32 = 0,
};
pub const GPUBufferLocation = extern struct {
    buffer: ?*GPUBuffer = null,
    offset: Uint32 = 0,
};
pub const GPUBufferRegion = extern struct {
    buffer: ?*GPUBuffer = null,
    offset: Uint32 = 0,
    size: Uint32 = 0,
};
pub const GPUIndirectDrawCommand = extern struct {
    num_vertices: Uint32 = 0,
    num_instances: Uint32 = 0,
    first_vertex: Uint32 = 0,
    first_instance: Uint32 = 0,
};
pub const GPUIndexedIndirectDrawCommand = extern struct {
    num_indices: Uint32 = 0,
    num_instances: Uint32 = 0,
    first_index: Uint32 = 0,
    vertex_offset: Sint32 = 0,
    first_instance: Uint32 = 0,
};
pub const GPUIndirectDispatchCommand = extern struct {
    groupcount_x: Uint32 = 0,
    groupcount_y: Uint32 = 0,
    groupcount_z: Uint32 = 0,
};
pub const GPUSamplerCreateInfo = extern struct {
    min_filter: GPUFilter = @import("std").mem.zeroes(GPUFilter),
    mag_filter: GPUFilter = @import("std").mem.zeroes(GPUFilter),
    mipmap_mode: GPUSamplerMipmapMode = @import("std").mem.zeroes(GPUSamplerMipmapMode),
    address_mode_u: GPUSamplerAddressMode = @import("std").mem.zeroes(GPUSamplerAddressMode),
    address_mode_v: GPUSamplerAddressMode = @import("std").mem.zeroes(GPUSamplerAddressMode),
    address_mode_w: GPUSamplerAddressMode = @import("std").mem.zeroes(GPUSamplerAddressMode),
    mip_lod_bias: f32 = 0,
    max_anisotropy: f32 = 0,
    compare_op: GPUCompareOp = @import("std").mem.zeroes(GPUCompareOp),
    min_lod: f32 = 0,
    max_lod: f32 = 0,
    enable_anisotropy: bool = false,
    enable_compare: bool = false,
    padding1: Uint8 = 0,
    padding2: Uint8 = 0,
    props: PropertiesID = 0,
};
pub const GPUVertexBufferDescription = extern struct {
    slot: Uint32 = 0,
    pitch: Uint32 = 0,
    input_rate: GPUVertexInputRate = @import("std").mem.zeroes(GPUVertexInputRate),
    instance_step_rate: Uint32 = 0,
};
pub const GPUVertexAttribute = extern struct {
    location: Uint32 = 0,
    buffer_slot: Uint32 = 0,
    format: GPUVertexElementFormat = @import("std").mem.zeroes(GPUVertexElementFormat),
    offset: Uint32 = 0,
};
pub const GPUVertexInputState = extern struct {
    vertex_buffer_descriptions: [*c]const GPUVertexBufferDescription = null,
    num_vertex_buffers: Uint32 = 0,
    vertex_attributes: [*c]const GPUVertexAttribute = null,
    num_vertex_attributes: Uint32 = 0,
};
pub const GPUStencilOpState = extern struct {
    fail_op: GPUStencilOp = @import("std").mem.zeroes(GPUStencilOp),
    pass_op: GPUStencilOp = @import("std").mem.zeroes(GPUStencilOp),
    depth_fail_op: GPUStencilOp = @import("std").mem.zeroes(GPUStencilOp),
    compare_op: GPUCompareOp = @import("std").mem.zeroes(GPUCompareOp),
};
pub const GPUColorTargetBlendState = extern struct {
    src_color_blendfactor: GPUBlendFactor = @import("std").mem.zeroes(GPUBlendFactor),
    dst_color_blendfactor: GPUBlendFactor = @import("std").mem.zeroes(GPUBlendFactor),
    color_blend_op: GPUBlendOp = @import("std").mem.zeroes(GPUBlendOp),
    src_alpha_blendfactor: GPUBlendFactor = @import("std").mem.zeroes(GPUBlendFactor),
    dst_alpha_blendfactor: GPUBlendFactor = @import("std").mem.zeroes(GPUBlendFactor),
    alpha_blend_op: GPUBlendOp = @import("std").mem.zeroes(GPUBlendOp),
    color_write_mask: GPUColorComponentFlags = 0,
    enable_blend: bool = false,
    enable_color_write_mask: bool = false,
    padding1: Uint8 = 0,
    padding2: Uint8 = 0,
};
pub const GPUShaderCreateInfo = extern struct {
    code_size: usize = 0,
    code: [*c]const Uint8 = null,
    entrypoint: [*c]const u8 = null,
    format: GPUShaderFormat = 0,
    stage: GPUShaderStage = @import("std").mem.zeroes(GPUShaderStage),
    num_samplers: Uint32 = 0,
    num_storage_textures: Uint32 = 0,
    num_storage_buffers: Uint32 = 0,
    num_uniform_buffers: Uint32 = 0,
    props: PropertiesID = 0,
};
pub const GPUTextureCreateInfo = extern struct {
    type: GPUTextureType = @import("std").mem.zeroes(GPUTextureType),
    format: GPUTextureFormat = @import("std").mem.zeroes(GPUTextureFormat),
    usage: GPUTextureUsageFlags = 0,
    width: Uint32 = 0,
    height: Uint32 = 0,
    layer_count_or_depth: Uint32 = 0,
    num_levels: Uint32 = 0,
    sample_count: GPUSampleCount = @import("std").mem.zeroes(GPUSampleCount),
    props: PropertiesID = 0,
};
pub const GPUBufferCreateInfo = extern struct {
    usage: GPUBufferUsageFlags = 0,
    size: Uint32 = 0,
    props: PropertiesID = 0,
};
pub const GPUTransferBufferCreateInfo = extern struct {
    usage: GPUTransferBufferUsage = @import("std").mem.zeroes(GPUTransferBufferUsage),
    size: Uint32 = 0,
    props: PropertiesID = 0,
};
pub const GPURasterizerState = extern struct {
    fill_mode: GPUFillMode = @import("std").mem.zeroes(GPUFillMode),
    cull_mode: GPUCullMode = @import("std").mem.zeroes(GPUCullMode),
    front_face: GPUFrontFace = @import("std").mem.zeroes(GPUFrontFace),
    depth_bias_constant_factor: f32 = 0,
    depth_bias_clamp: f32 = 0,
    depth_bias_slope_factor: f32 = 0,
    enable_depth_bias: bool = false,
    enable_depth_clip: bool = false,
    padding1: Uint8 = 0,
    padding2: Uint8 = 0,
};
pub const GPUMultisampleState = extern struct {
    sample_count: GPUSampleCount = @import("std").mem.zeroes(GPUSampleCount),
    sample_mask: Uint32 = 0,
    enable_mask: bool = false,
    enable_alpha_to_coverage: bool = false,
    padding2: Uint8 = 0,
    padding3: Uint8 = 0,
};
pub const GPUDepthStencilState = extern struct {
    compare_op: GPUCompareOp = @import("std").mem.zeroes(GPUCompareOp),
    back_stencil_state: GPUStencilOpState = @import("std").mem.zeroes(GPUStencilOpState),
    front_stencil_state: GPUStencilOpState = @import("std").mem.zeroes(GPUStencilOpState),
    compare_mask: Uint8 = 0,
    write_mask: Uint8 = 0,
    enable_depth_test: bool = false,
    enable_depth_write: bool = false,
    enable_stencil_test: bool = false,
    padding1: Uint8 = 0,
    padding2: Uint8 = 0,
    padding3: Uint8 = 0,
};
pub const GPUColorTargetDescription = extern struct {
    format: GPUTextureFormat = @import("std").mem.zeroes(GPUTextureFormat),
    blend_state: GPUColorTargetBlendState = @import("std").mem.zeroes(GPUColorTargetBlendState),
};
pub const GPUGraphicsPipelineTargetInfo = extern struct {
    color_target_descriptions: [*c]const GPUColorTargetDescription = null,
    num_color_targets: Uint32 = 0,
    depth_stencil_format: GPUTextureFormat = @import("std").mem.zeroes(GPUTextureFormat),
    has_depth_stencil_target: bool = false,
    padding1: Uint8 = 0,
    padding2: Uint8 = 0,
    padding3: Uint8 = 0,
};
pub const GPUGraphicsPipelineCreateInfo = extern struct {
    vertex_shader: ?*GPUShader = null,
    fragment_shader: ?*GPUShader = null,
    vertex_input_state: GPUVertexInputState = @import("std").mem.zeroes(GPUVertexInputState),
    primitive_type: GPUPrimitiveType = @import("std").mem.zeroes(GPUPrimitiveType),
    rasterizer_state: GPURasterizerState = @import("std").mem.zeroes(GPURasterizerState),
    multisample_state: GPUMultisampleState = @import("std").mem.zeroes(GPUMultisampleState),
    depth_stencil_state: GPUDepthStencilState = @import("std").mem.zeroes(GPUDepthStencilState),
    target_info: GPUGraphicsPipelineTargetInfo = @import("std").mem.zeroes(GPUGraphicsPipelineTargetInfo),
    props: PropertiesID = 0,
};
pub const GPUComputePipelineCreateInfo = extern struct {
    code_size: usize = 0,
    code: [*c]const Uint8 = null,
    entrypoint: [*c]const u8 = null,
    format: GPUShaderFormat = 0,
    num_samplers: Uint32 = 0,
    num_readonly_storage_textures: Uint32 = 0,
    num_readonly_storage_buffers: Uint32 = 0,
    num_readwrite_storage_textures: Uint32 = 0,
    num_readwrite_storage_buffers: Uint32 = 0,
    num_uniform_buffers: Uint32 = 0,
    threadcount_x: Uint32 = 0,
    threadcount_y: Uint32 = 0,
    threadcount_z: Uint32 = 0,
    props: PropertiesID = 0,
};
pub const GPUColorTargetInfo = extern struct {
    texture: ?*GPUTexture = null,
    mip_level: Uint32 = 0,
    layer_or_depth_plane: Uint32 = 0,
    clear_color: FColor = @import("std").mem.zeroes(FColor),
    load_op: GPULoadOp = @import("std").mem.zeroes(GPULoadOp),
    store_op: GPUStoreOp = @import("std").mem.zeroes(GPUStoreOp),
    resolve_texture: ?*GPUTexture = null,
    resolve_mip_level: Uint32 = 0,
    resolve_layer: Uint32 = 0,
    cycle: bool = false,
    cycle_resolve_texture: bool = false,
    padding1: Uint8 = 0,
    padding2: Uint8 = 0,
};
pub const GPUDepthStencilTargetInfo = extern struct {
    texture: ?*GPUTexture = null,
    clear_depth: f32 = 0,
    load_op: GPULoadOp = @import("std").mem.zeroes(GPULoadOp),
    store_op: GPUStoreOp = @import("std").mem.zeroes(GPUStoreOp),
    stencil_load_op: GPULoadOp = @import("std").mem.zeroes(GPULoadOp),
    stencil_store_op: GPUStoreOp = @import("std").mem.zeroes(GPUStoreOp),
    cycle: bool = false,
    clear_stencil: Uint8 = 0,
    mip_level: Uint8 = 0,
    layer: Uint8 = 0,
};
pub const GPUBlitInfo = extern struct {
    source: GPUBlitRegion = @import("std").mem.zeroes(GPUBlitRegion),
    destination: GPUBlitRegion = @import("std").mem.zeroes(GPUBlitRegion),
    load_op: GPULoadOp = @import("std").mem.zeroes(GPULoadOp),
    clear_color: FColor = @import("std").mem.zeroes(FColor),
    flip_mode: FlipMode = @import("std").mem.zeroes(FlipMode),
    filter: GPUFilter = @import("std").mem.zeroes(GPUFilter),
    cycle: bool = false,
    padding1: Uint8 = 0,
    padding2: Uint8 = 0,
    padding3: Uint8 = 0,
};
pub const GPUBufferBinding = extern struct {
    buffer: ?*GPUBuffer = null,
    offset: Uint32 = 0,
};
pub const GPUTextureSamplerBinding = extern struct {
    texture: ?*GPUTexture = null,
    sampler: ?*GPUSampler = null,
};
pub const GPUStorageBufferReadWriteBinding = extern struct {
    buffer: ?*GPUBuffer = null,
    cycle: bool = false,
    padding1: Uint8 = 0,
    padding2: Uint8 = 0,
    padding3: Uint8 = 0,
};
pub const GPUStorageTextureReadWriteBinding = extern struct {
    texture: ?*GPUTexture = null,
    mip_level: Uint32 = 0,
    layer: Uint32 = 0,
    cycle: bool = false,
    padding1: Uint8 = 0,
    padding2: Uint8 = 0,
    padding3: Uint8 = 0,
};
extern fn SDL_GPUSupportsShaderFormats(format_flags: GPUShaderFormat, name: [*c]const u8) bool;
extern fn SDL_GPUSupportsProperties(props: PropertiesID) bool;
extern fn SDL_CreateGPUDevice(format_flags: GPUShaderFormat, debug_mode: bool, name: [*c]const u8) ?*GPUDevice;
extern fn SDL_CreateGPUDeviceWithProperties(props: PropertiesID) ?*GPUDevice;
pub const GPUVulkanOptions = extern struct {
    vulkan_api_version: Uint32 = 0,
    feature_list: ?*anyopaque = null,
    vulkan_10_physical_device_features: ?*anyopaque = null,
    device_extension_count: Uint32 = 0,
    device_extension_names: [*c][*c]const u8 = null,
    instance_extension_count: Uint32 = 0,
    instance_extension_names: [*c][*c]const u8 = null,
};
extern fn SDL_DestroyGPUDevice(device: ?*GPUDevice) void;
extern fn SDL_GetNumGPUDrivers() c_int;
extern fn SDL_GetGPUDriver(index: c_int) [*c]const u8;
extern fn SDL_GetGPUDeviceDriver(device: ?*GPUDevice) [*c]const u8;
extern fn SDL_GetGPUShaderFormats(device: ?*GPUDevice) GPUShaderFormat;
extern fn SDL_GetGPUDeviceProperties(device: ?*GPUDevice) PropertiesID;
extern fn SDL_CreateGPUComputePipeline(device: ?*GPUDevice, createinfo: [*c]const GPUComputePipelineCreateInfo) ?*GPUComputePipeline;
extern fn SDL_CreateGPUGraphicsPipeline(device: ?*GPUDevice, createinfo: [*c]const GPUGraphicsPipelineCreateInfo) ?*GPUGraphicsPipeline;
extern fn SDL_CreateGPUSampler(device: ?*GPUDevice, createinfo: [*c]const GPUSamplerCreateInfo) ?*GPUSampler;
extern fn SDL_CreateGPUShader(device: ?*GPUDevice, createinfo: [*c]const GPUShaderCreateInfo) ?*GPUShader;
extern fn SDL_CreateGPUTexture(device: ?*GPUDevice, createinfo: [*c]const GPUTextureCreateInfo) ?*GPUTexture;
extern fn SDL_CreateGPUBuffer(device: ?*GPUDevice, createinfo: [*c]const GPUBufferCreateInfo) ?*GPUBuffer;
extern fn SDL_CreateGPUTransferBuffer(device: ?*GPUDevice, createinfo: [*c]const GPUTransferBufferCreateInfo) ?*GPUTransferBuffer;
extern fn SDL_SetGPUBufferName(device: ?*GPUDevice, buffer: ?*GPUBuffer, text: [*c]const u8) void;
extern fn SDL_SetGPUTextureName(device: ?*GPUDevice, texture: ?*GPUTexture, text: [*c]const u8) void;
extern fn SDL_InsertGPUDebugLabel(command_buffer: ?*GPUCommandBuffer, text: [*c]const u8) void;
extern fn SDL_PushGPUDebugGroup(command_buffer: ?*GPUCommandBuffer, name: [*c]const u8) void;
extern fn SDL_PopGPUDebugGroup(command_buffer: ?*GPUCommandBuffer) void;
extern fn SDL_ReleaseGPUTexture(device: ?*GPUDevice, texture: ?*GPUTexture) void;
extern fn SDL_ReleaseGPUSampler(device: ?*GPUDevice, sampler: ?*GPUSampler) void;
extern fn SDL_ReleaseGPUBuffer(device: ?*GPUDevice, buffer: ?*GPUBuffer) void;
extern fn SDL_ReleaseGPUTransferBuffer(device: ?*GPUDevice, transfer_buffer: ?*GPUTransferBuffer) void;
extern fn SDL_ReleaseGPUComputePipeline(device: ?*GPUDevice, compute_pipeline: ?*GPUComputePipeline) void;
extern fn SDL_ReleaseGPUShader(device: ?*GPUDevice, shader: ?*GPUShader) void;
extern fn SDL_ReleaseGPUGraphicsPipeline(device: ?*GPUDevice, graphics_pipeline: ?*GPUGraphicsPipeline) void;
extern fn SDL_AcquireGPUCommandBuffer(device: ?*GPUDevice) ?*GPUCommandBuffer;
extern fn SDL_PushGPUVertexUniformData(command_buffer: ?*GPUCommandBuffer, slot_index: Uint32, data: ?*const anyopaque, length: Uint32) void;
extern fn SDL_PushGPUFragmentUniformData(command_buffer: ?*GPUCommandBuffer, slot_index: Uint32, data: ?*const anyopaque, length: Uint32) void;
extern fn SDL_PushGPUComputeUniformData(command_buffer: ?*GPUCommandBuffer, slot_index: Uint32, data: ?*const anyopaque, length: Uint32) void;
extern fn SDL_BeginGPURenderPass(command_buffer: ?*GPUCommandBuffer, color_target_infos: [*c]const GPUColorTargetInfo, num_color_targets: Uint32, depth_stencil_target_info: [*c]const GPUDepthStencilTargetInfo) ?*GPURenderPass;
extern fn SDL_BindGPUGraphicsPipeline(render_pass: ?*GPURenderPass, graphics_pipeline: ?*GPUGraphicsPipeline) void;
extern fn SDL_SetGPUViewport(render_pass: ?*GPURenderPass, viewport: [*c]const GPUViewport) void;
extern fn SDL_SetGPUScissor(render_pass: ?*GPURenderPass, scissor: [*c]const Rect) void;
extern fn SDL_SetGPUBlendConstants(render_pass: ?*GPURenderPass, blend_constants: FColor) void;
extern fn SDL_SetGPUStencilReference(render_pass: ?*GPURenderPass, reference: Uint8) void;
extern fn SDL_BindGPUVertexBuffers(render_pass: ?*GPURenderPass, first_slot: Uint32, bindings: [*c]const GPUBufferBinding, num_bindings: Uint32) void;
extern fn SDL_BindGPUIndexBuffer(render_pass: ?*GPURenderPass, binding: [*c]const GPUBufferBinding, index_element_size: GPUIndexElementSize) void;
extern fn SDL_BindGPUVertexSamplers(render_pass: ?*GPURenderPass, first_slot: Uint32, texture_sampler_bindings: [*c]const GPUTextureSamplerBinding, num_bindings: Uint32) void;
extern fn SDL_BindGPUVertexStorageTextures(render_pass: ?*GPURenderPass, first_slot: Uint32, storage_textures: [*c]const ?*GPUTexture, num_bindings: Uint32) void;
extern fn SDL_BindGPUVertexStorageBuffers(render_pass: ?*GPURenderPass, first_slot: Uint32, storage_buffers: [*c]const ?*GPUBuffer, num_bindings: Uint32) void;
extern fn SDL_BindGPUFragmentSamplers(render_pass: ?*GPURenderPass, first_slot: Uint32, texture_sampler_bindings: [*c]const GPUTextureSamplerBinding, num_bindings: Uint32) void;
extern fn SDL_BindGPUFragmentStorageTextures(render_pass: ?*GPURenderPass, first_slot: Uint32, storage_textures: [*c]const ?*GPUTexture, num_bindings: Uint32) void;
extern fn SDL_BindGPUFragmentStorageBuffers(render_pass: ?*GPURenderPass, first_slot: Uint32, storage_buffers: [*c]const ?*GPUBuffer, num_bindings: Uint32) void;
extern fn SDL_DrawGPUIndexedPrimitives(render_pass: ?*GPURenderPass, num_indices: Uint32, num_instances: Uint32, first_index: Uint32, vertex_offset: Sint32, first_instance: Uint32) void;
extern fn SDL_DrawGPUPrimitives(render_pass: ?*GPURenderPass, num_vertices: Uint32, num_instances: Uint32, first_vertex: Uint32, first_instance: Uint32) void;
extern fn SDL_DrawGPUPrimitivesIndirect(render_pass: ?*GPURenderPass, buffer: ?*GPUBuffer, offset: Uint32, draw_count: Uint32) void;
extern fn SDL_DrawGPUIndexedPrimitivesIndirect(render_pass: ?*GPURenderPass, buffer: ?*GPUBuffer, offset: Uint32, draw_count: Uint32) void;
extern fn SDL_EndGPURenderPass(render_pass: ?*GPURenderPass) void;
extern fn SDL_BeginGPUComputePass(command_buffer: ?*GPUCommandBuffer, storage_texture_bindings: [*c]const GPUStorageTextureReadWriteBinding, num_storage_texture_bindings: Uint32, storage_buffer_bindings: [*c]const GPUStorageBufferReadWriteBinding, num_storage_buffer_bindings: Uint32) ?*GPUComputePass;
extern fn SDL_BindGPUComputePipeline(compute_pass: ?*GPUComputePass, compute_pipeline: ?*GPUComputePipeline) void;
extern fn SDL_BindGPUComputeSamplers(compute_pass: ?*GPUComputePass, first_slot: Uint32, texture_sampler_bindings: [*c]const GPUTextureSamplerBinding, num_bindings: Uint32) void;
extern fn SDL_BindGPUComputeStorageTextures(compute_pass: ?*GPUComputePass, first_slot: Uint32, storage_textures: [*c]const ?*GPUTexture, num_bindings: Uint32) void;
extern fn SDL_BindGPUComputeStorageBuffers(compute_pass: ?*GPUComputePass, first_slot: Uint32, storage_buffers: [*c]const ?*GPUBuffer, num_bindings: Uint32) void;
extern fn SDL_DispatchGPUCompute(compute_pass: ?*GPUComputePass, groupcount_x: Uint32, groupcount_y: Uint32, groupcount_z: Uint32) void;
extern fn SDL_DispatchGPUComputeIndirect(compute_pass: ?*GPUComputePass, buffer: ?*GPUBuffer, offset: Uint32) void;
extern fn SDL_EndGPUComputePass(compute_pass: ?*GPUComputePass) void;
extern fn SDL_MapGPUTransferBuffer(device: ?*GPUDevice, transfer_buffer: ?*GPUTransferBuffer, cycle: bool) ?*anyopaque;
extern fn SDL_UnmapGPUTransferBuffer(device: ?*GPUDevice, transfer_buffer: ?*GPUTransferBuffer) void;
extern fn SDL_BeginGPUCopyPass(command_buffer: ?*GPUCommandBuffer) ?*GPUCopyPass;
extern fn SDL_UploadToGPUTexture(copy_pass: ?*GPUCopyPass, source: [*c]const GPUTextureTransferInfo, destination: [*c]const GPUTextureRegion, cycle: bool) void;
extern fn SDL_UploadToGPUBuffer(copy_pass: ?*GPUCopyPass, source: [*c]const GPUTransferBufferLocation, destination: [*c]const GPUBufferRegion, cycle: bool) void;
extern fn SDL_CopyGPUTextureToTexture(copy_pass: ?*GPUCopyPass, source: [*c]const GPUTextureLocation, destination: [*c]const GPUTextureLocation, w: Uint32, h: Uint32, d: Uint32, cycle: bool) void;
extern fn SDL_CopyGPUBufferToBuffer(copy_pass: ?*GPUCopyPass, source: [*c]const GPUBufferLocation, destination: [*c]const GPUBufferLocation, size: Uint32, cycle: bool) void;
extern fn SDL_DownloadFromGPUTexture(copy_pass: ?*GPUCopyPass, source: [*c]const GPUTextureRegion, destination: [*c]const GPUTextureTransferInfo) void;
extern fn SDL_DownloadFromGPUBuffer(copy_pass: ?*GPUCopyPass, source: [*c]const GPUBufferRegion, destination: [*c]const GPUTransferBufferLocation) void;
extern fn SDL_EndGPUCopyPass(copy_pass: ?*GPUCopyPass) void;
extern fn SDL_GenerateMipmapsForGPUTexture(command_buffer: ?*GPUCommandBuffer, texture: ?*GPUTexture) void;
extern fn SDL_BlitGPUTexture(command_buffer: ?*GPUCommandBuffer, info: [*c]const GPUBlitInfo) void;
extern fn SDL_WindowSupportsGPUSwapchainComposition(device: ?*GPUDevice, window: ?*Window, swapchain_composition: GPUSwapchainComposition) bool;
extern fn SDL_WindowSupportsGPUPresentMode(device: ?*GPUDevice, window: ?*Window, present_mode: GPUPresentMode) bool;
extern fn SDL_ClaimWindowForGPUDevice(device: ?*GPUDevice, window: ?*Window) bool;
extern fn SDL_ReleaseWindowFromGPUDevice(device: ?*GPUDevice, window: ?*Window) void;
extern fn SDL_SetGPUSwapchainParameters(device: ?*GPUDevice, window: ?*Window, swapchain_composition: GPUSwapchainComposition, present_mode: GPUPresentMode) bool;
extern fn SDL_SetGPUAllowedFramesInFlight(device: ?*GPUDevice, allowed_frames_in_flight: Uint32) bool;
extern fn SDL_GetGPUSwapchainTextureFormat(device: ?*GPUDevice, window: ?*Window) GPUTextureFormat;
extern fn SDL_AcquireGPUSwapchainTexture(command_buffer: ?*GPUCommandBuffer, window: ?*Window, swapchain_texture: [*c]?*GPUTexture, swapchain_texture_width: [*c]Uint32, swapchain_texture_height: [*c]Uint32) bool;
extern fn SDL_WaitForGPUSwapchain(device: ?*GPUDevice, window: ?*Window) bool;
extern fn SDL_WaitAndAcquireGPUSwapchainTexture(command_buffer: ?*GPUCommandBuffer, window: ?*Window, swapchain_texture: [*c]?*GPUTexture, swapchain_texture_width: [*c]Uint32, swapchain_texture_height: [*c]Uint32) bool;
extern fn SDL_SubmitGPUCommandBuffer(command_buffer: ?*GPUCommandBuffer) bool;
extern fn SDL_SubmitGPUCommandBufferAndAcquireFence(command_buffer: ?*GPUCommandBuffer) ?*GPUFence;
extern fn SDL_CancelGPUCommandBuffer(command_buffer: ?*GPUCommandBuffer) bool;
extern fn SDL_WaitForGPUIdle(device: ?*GPUDevice) bool;
extern fn SDL_WaitForGPUFences(device: ?*GPUDevice, wait_all: bool, fences: [*c]const ?*GPUFence, num_fences: Uint32) bool;
extern fn SDL_QueryGPUFence(device: ?*GPUDevice, fence: ?*GPUFence) bool;
extern fn SDL_ReleaseGPUFence(device: ?*GPUDevice, fence: ?*GPUFence) void;
extern fn SDL_GPUTextureFormatTexelBlockSize(format: GPUTextureFormat) Uint32;
extern fn SDL_GPUTextureSupportsFormat(device: ?*GPUDevice, format: GPUTextureFormat, @"type": GPUTextureType, usage: GPUTextureUsageFlags) bool;
extern fn SDL_GPUTextureSupportsSampleCount(device: ?*GPUDevice, format: GPUTextureFormat, sample_count: GPUSampleCount) bool;
extern fn SDL_CalculateGPUTextureFormatSize(format: GPUTextureFormat, width: Uint32, height: Uint32, depth_or_layer_count: Uint32) Uint32;
extern fn SDL_GetPixelFormatFromGPUTextureFormat(format: GPUTextureFormat) PixelFormat;
extern fn SDL_GetGPUTextureFormatFromPixelFormat(format: PixelFormat) GPUTextureFormat;
pub const Haptic = opaque {};
pub const HapticEffectType = Uint16;
pub const HapticDirectionType = Uint8;
pub const HapticEffectID = c_int;
pub const HapticDirection = extern struct {
    type: HapticDirectionType = 0,
    dir: [3]Sint32 = @import("std").mem.zeroes([3]Sint32),
};
pub const HapticConstant = extern struct {
    type: HapticEffectType = 0,
    direction: HapticDirection = @import("std").mem.zeroes(HapticDirection),
    length: Uint32 = 0,
    delay: Uint16 = 0,
    button: Uint16 = 0,
    interval: Uint16 = 0,
    level: Sint16 = 0,
    attack_length: Uint16 = 0,
    attack_level: Uint16 = 0,
    fade_length: Uint16 = 0,
    fade_level: Uint16 = 0,
};
pub const HapticPeriodic = extern struct {
    type: HapticEffectType = 0,
    direction: HapticDirection = @import("std").mem.zeroes(HapticDirection),
    length: Uint32 = 0,
    delay: Uint16 = 0,
    button: Uint16 = 0,
    interval: Uint16 = 0,
    period: Uint16 = 0,
    magnitude: Sint16 = 0,
    offset: Sint16 = 0,
    phase: Uint16 = 0,
    attack_length: Uint16 = 0,
    attack_level: Uint16 = 0,
    fade_length: Uint16 = 0,
    fade_level: Uint16 = 0,
};
pub const HapticCondition = extern struct {
    type: HapticEffectType = 0,
    direction: HapticDirection = @import("std").mem.zeroes(HapticDirection),
    length: Uint32 = 0,
    delay: Uint16 = 0,
    button: Uint16 = 0,
    interval: Uint16 = 0,
    right_sat: [3]Uint16 = @import("std").mem.zeroes([3]Uint16),
    left_sat: [3]Uint16 = @import("std").mem.zeroes([3]Uint16),
    right_coeff: [3]Sint16 = @import("std").mem.zeroes([3]Sint16),
    left_coeff: [3]Sint16 = @import("std").mem.zeroes([3]Sint16),
    deadband: [3]Uint16 = @import("std").mem.zeroes([3]Uint16),
    center: [3]Sint16 = @import("std").mem.zeroes([3]Sint16),
};
pub const HapticRamp = extern struct {
    type: HapticEffectType = 0,
    direction: HapticDirection = @import("std").mem.zeroes(HapticDirection),
    length: Uint32 = 0,
    delay: Uint16 = 0,
    button: Uint16 = 0,
    interval: Uint16 = 0,
    start: Sint16 = 0,
    end: Sint16 = 0,
    attack_length: Uint16 = 0,
    attack_level: Uint16 = 0,
    fade_length: Uint16 = 0,
    fade_level: Uint16 = 0,
};
pub const HapticLeftRight = extern struct {
    type: HapticEffectType = 0,
    length: Uint32 = 0,
    large_magnitude: Uint16 = 0,
    small_magnitude: Uint16 = 0,
};
pub const HapticCustom = extern struct {
    type: HapticEffectType = 0,
    direction: HapticDirection = @import("std").mem.zeroes(HapticDirection),
    length: Uint32 = 0,
    delay: Uint16 = 0,
    button: Uint16 = 0,
    interval: Uint16 = 0,
    channels: Uint8 = 0,
    period: Uint16 = 0,
    samples: Uint16 = 0,
    data: [*c]Uint16 = null,
    attack_length: Uint16 = 0,
    attack_level: Uint16 = 0,
    fade_length: Uint16 = 0,
    fade_level: Uint16 = 0,
};
pub const union_SDL_HapticEffect = extern union {
    type: HapticEffectType,
    constant: HapticConstant,
    periodic: HapticPeriodic,
    condition: HapticCondition,
    ramp: HapticRamp,
    leftright: HapticLeftRight,
    custom: HapticCustom,
};
pub const HapticEffect = union_SDL_HapticEffect;
pub const HapticID = Uint32;
extern fn SDL_GetHaptics(count: [*c]c_int) [*c]HapticID;
extern fn SDL_GetHapticNameForID(instance_id: HapticID) [*c]const u8;
extern fn SDL_OpenHaptic(instance_id: HapticID) ?*Haptic;
extern fn SDL_GetHapticFromID(instance_id: HapticID) ?*Haptic;
extern fn SDL_GetHapticID(haptic: ?*Haptic) HapticID;
extern fn SDL_GetHapticName(haptic: ?*Haptic) [*c]const u8;
extern fn SDL_IsMouseHaptic() bool;
extern fn SDL_OpenHapticFromMouse() ?*Haptic;
extern fn SDL_IsJoystickHaptic(joystick: ?*Joystick) bool;
extern fn SDL_OpenHapticFromJoystick(joystick: ?*Joystick) ?*Haptic;
extern fn SDL_CloseHaptic(haptic: ?*Haptic) void;
extern fn SDL_GetMaxHapticEffects(haptic: ?*Haptic) c_int;
extern fn SDL_GetMaxHapticEffectsPlaying(haptic: ?*Haptic) c_int;
extern fn SDL_GetHapticFeatures(haptic: ?*Haptic) Uint32;
extern fn SDL_GetNumHapticAxes(haptic: ?*Haptic) c_int;
extern fn SDL_HapticEffectSupported(haptic: ?*Haptic, effect: [*c]const HapticEffect) bool;
extern fn SDL_CreateHapticEffect(haptic: ?*Haptic, effect: [*c]const HapticEffect) HapticEffectID;
extern fn SDL_UpdateHapticEffect(haptic: ?*Haptic, effect: HapticEffectID, data: [*c]const HapticEffect) bool;
extern fn SDL_RunHapticEffect(haptic: ?*Haptic, effect: HapticEffectID, iterations: Uint32) bool;
extern fn SDL_StopHapticEffect(haptic: ?*Haptic, effect: HapticEffectID) bool;
extern fn SDL_DestroyHapticEffect(haptic: ?*Haptic, effect: HapticEffectID) void;
extern fn SDL_GetHapticEffectStatus(haptic: ?*Haptic, effect: HapticEffectID) bool;
extern fn SDL_SetHapticGain(haptic: ?*Haptic, gain: c_int) bool;
extern fn SDL_SetHapticAutocenter(haptic: ?*Haptic, autocenter: c_int) bool;
extern fn SDL_PauseHaptic(haptic: ?*Haptic) bool;
extern fn SDL_ResumeHaptic(haptic: ?*Haptic) bool;
extern fn SDL_StopHapticEffects(haptic: ?*Haptic) bool;
extern fn SDL_HapticRumbleSupported(haptic: ?*Haptic) bool;
extern fn SDL_InitHapticRumble(haptic: ?*Haptic) bool;
extern fn SDL_PlayHapticRumble(haptic: ?*Haptic, strength: f32, length: Uint32) bool;
extern fn SDL_StopHapticRumble(haptic: ?*Haptic) bool;
pub const hid_device = opaque {};
pub const HID_API_BUS_UNKNOWN: c_int = 0;
pub const HID_API_BUS_USB: c_int = 1;
pub const HID_API_BUS_BLUETOOTH: c_int = 2;
pub const HID_API_BUS_I2C: c_int = 3;
pub const HID_API_BUS_SPI: c_int = 4;
pub const enum_SDL_hid_bus_type = c_uint;
pub const hid_bus_type = enum_SDL_hid_bus_type;
pub const hid_device_info = extern struct {
    path: [*c]u8 = null,
    vendor_id: c_ushort = 0,
    product_id: c_ushort = 0,
    serial_number: [*c]wchar_t = null,
    release_number: c_ushort = 0,
    manufacturer_string: [*c]wchar_t = null,
    product_string: [*c]wchar_t = null,
    usage_page: c_ushort = 0,
    usage: c_ushort = 0,
    interface_number: c_int = 0,
    interface_class: c_int = 0,
    interface_subclass: c_int = 0,
    interface_protocol: c_int = 0,
    bus_type: hid_bus_type = @import("std").mem.zeroes(hid_bus_type),
    next: [*c]hid_device_info = null,
};
extern fn SDL_hid_init() c_int;
extern fn SDL_hid_exit() c_int;
extern fn SDL_hid_device_change_count() Uint32;
extern fn SDL_hid_enumerate(vendor_id: c_ushort, product_id: c_ushort) [*c]hid_device_info;
extern fn SDL_hid_free_enumeration(devs: [*c]hid_device_info) void;
extern fn SDL_hid_open(vendor_id: c_ushort, product_id: c_ushort, serial_number: [*c]const wchar_t) ?*hid_device;
extern fn SDL_hid_open_path(path: [*c]const u8) ?*hid_device;
extern fn SDL_hid_get_properties(dev: ?*hid_device) PropertiesID;
extern fn SDL_hid_write(dev: ?*hid_device, data: [*c]const u8, length: usize) c_int;
extern fn SDL_hid_read_timeout(dev: ?*hid_device, data: [*c]u8, length: usize, milliseconds: c_int) c_int;
extern fn SDL_hid_read(dev: ?*hid_device, data: [*c]u8, length: usize) c_int;
extern fn SDL_hid_set_nonblocking(dev: ?*hid_device, nonblock: c_int) c_int;
extern fn SDL_hid_send_feature_report(dev: ?*hid_device, data: [*c]const u8, length: usize) c_int;
extern fn SDL_hid_get_feature_report(dev: ?*hid_device, data: [*c]u8, length: usize) c_int;
extern fn SDL_hid_get_input_report(dev: ?*hid_device, data: [*c]u8, length: usize) c_int;
extern fn SDL_hid_close(dev: ?*hid_device) c_int;
extern fn SDL_hid_get_manufacturer_string(dev: ?*hid_device, string: [*c]wchar_t, maxlen: usize) c_int;
extern fn SDL_hid_get_product_string(dev: ?*hid_device, string: [*c]wchar_t, maxlen: usize) c_int;
extern fn SDL_hid_get_serial_number_string(dev: ?*hid_device, string: [*c]wchar_t, maxlen: usize) c_int;
extern fn SDL_hid_get_indexed_string(dev: ?*hid_device, string_index: c_int, string: [*c]wchar_t, maxlen: usize) c_int;
extern fn SDL_hid_get_device_info(dev: ?*hid_device) [*c]hid_device_info;
extern fn SDL_hid_get_report_descriptor(dev: ?*hid_device, buf: [*c]u8, buf_size: usize) c_int;
extern fn SDL_hid_ble_scan(active: bool) void;
pub const HINT_DEFAULT: c_int = 0;
pub const HINT_NORMAL: c_int = 1;
pub const HINT_OVERRIDE: c_int = 2;
pub const enum_SDL_HintPriority = c_uint;
pub const HintPriority = enum_SDL_HintPriority;
extern fn SDL_SetHintWithPriority(name: [*c]const u8, value: [*c]const u8, priority: HintPriority) bool;
extern fn SDL_SetHint(name: [*c]const u8, value: [*c]const u8) bool;
extern fn SDL_ResetHint(name: [*c]const u8) bool;
extern fn SDL_ResetHints() void;
extern fn SDL_GetHint(name: [*c]const u8) [*c]const u8;
extern fn SDL_GetHintBoolean(name: [*c]const u8, default_value: bool) bool;
pub const HintCallback = ?*const fn (userdata: ?*anyopaque, name: [*c]const u8, oldValue: [*c]const u8, newValue: [*c]const u8) callconv(.c) void;
extern fn SDL_AddHintCallback(name: [*c]const u8, callback: HintCallback, userdata: ?*anyopaque) bool;
extern fn SDL_RemoveHintCallback(name: [*c]const u8, callback: HintCallback, userdata: ?*anyopaque) void;
pub const InitFlags = Uint32;
pub const APP_CONTINUE: c_int = 0;
pub const APP_SUCCESS: c_int = 1;
pub const APP_FAILURE: c_int = 2;
pub const enum_SDL_AppResult = c_uint;
pub const AppResult = enum_SDL_AppResult;
pub const AppInit_func = ?*const fn (appstate: [*c]?*anyopaque, argc: c_int, argv: [*c][*c]u8) callconv(.c) AppResult;
pub const AppIterate_func = ?*const fn (appstate: ?*anyopaque) callconv(.c) AppResult;
pub const AppEvent_func = ?*const fn (appstate: ?*anyopaque, event: [*c]Event) callconv(.c) AppResult;
pub const AppQuit_func = ?*const fn (appstate: ?*anyopaque, result: AppResult) callconv(.c) void;
extern fn SDL_Init(flags: InitFlags) bool;
extern fn SDL_InitSubSystem(flags: InitFlags) bool;
extern fn SDL_QuitSubSystem(flags: InitFlags) void;
extern fn SDL_WasInit(flags: InitFlags) InitFlags;
extern fn SDL_Quit() void;
extern fn SDL_IsMainThread() bool;
pub const MainThreadCallback = ?*const fn (userdata: ?*anyopaque) callconv(.c) void;
extern fn SDL_RunOnMainThread(callback: MainThreadCallback, userdata: ?*anyopaque, wait_complete: bool) bool;
extern fn SDL_SetAppMetadata(appname: [*c]const u8, appversion: [*c]const u8, appidentifier: [*c]const u8) bool;
extern fn SDL_SetAppMetadataProperty(name: [*c]const u8, value: [*c]const u8) bool;
extern fn SDL_GetAppMetadataProperty(name: [*c]const u8) [*c]const u8;
pub const SharedObject = opaque {};
extern fn SDL_LoadObject(sofile: [*c]const u8) ?*SharedObject;
extern fn SDL_LoadFunction(handle: ?*SharedObject, name: [*c]const u8) FunctionPointer;
extern fn SDL_UnloadObject(handle: ?*SharedObject) void;
pub const Locale = extern struct {
    language: [*c]const u8 = null,
    country: [*c]const u8 = null,
};
extern fn SDL_GetPreferredLocales(count: [*c]c_int) [*c][*c]Locale;
pub const LOG_CATEGORY_APPLICATION: c_int = 0;
pub const LOG_CATEGORY_ERROR: c_int = 1;
pub const LOG_CATEGORY_ASSERT: c_int = 2;
pub const LOG_CATEGORY_SYSTEM: c_int = 3;
pub const LOG_CATEGORY_AUDIO: c_int = 4;
pub const LOG_CATEGORY_VIDEO: c_int = 5;
pub const LOG_CATEGORY_RENDER: c_int = 6;
pub const LOG_CATEGORY_INPUT: c_int = 7;
pub const LOG_CATEGORY_TEST: c_int = 8;
pub const LOG_CATEGORY_GPU: c_int = 9;
pub const LOG_CATEGORY_RESERVED2: c_int = 10;
pub const LOG_CATEGORY_RESERVED3: c_int = 11;
pub const LOG_CATEGORY_RESERVED4: c_int = 12;
pub const LOG_CATEGORY_RESERVED5: c_int = 13;
pub const LOG_CATEGORY_RESERVED6: c_int = 14;
pub const LOG_CATEGORY_RESERVED7: c_int = 15;
pub const LOG_CATEGORY_RESERVED8: c_int = 16;
pub const LOG_CATEGORY_RESERVED9: c_int = 17;
pub const LOG_CATEGORY_RESERVED10: c_int = 18;
pub const LOG_CATEGORY_CUSTOM: c_int = 19;
pub const enum_SDL_LogCategory = c_uint;
pub const LogCategory = enum_SDL_LogCategory;
pub const LOG_PRIORITY_INVALID: c_int = 0;
pub const LOG_PRIORITY_TRACE: c_int = 1;
pub const LOG_PRIORITY_VERBOSE: c_int = 2;
pub const LOG_PRIORITY_DEBUG: c_int = 3;
pub const LOG_PRIORITY_INFO: c_int = 4;
pub const LOG_PRIORITY_WARN: c_int = 5;
pub const LOG_PRIORITY_ERROR: c_int = 6;
pub const LOG_PRIORITY_CRITICAL: c_int = 7;
pub const LOG_PRIORITY_COUNT: c_int = 8;
pub const enum_SDL_LogPriority = c_uint;
pub const LogPriority = enum_SDL_LogPriority;
extern fn SDL_SetLogPriorities(priority: LogPriority) void;
extern fn SDL_SetLogPriority(category: c_int, priority: LogPriority) void;
extern fn SDL_GetLogPriority(category: c_int) LogPriority;
extern fn SDL_ResetLogPriorities() void;
extern fn SDL_SetLogPriorityPrefix(priority: LogPriority, prefix: [*c]const u8) bool;
extern fn SDL_Log(fmt: [*c]const u8, ...) void;
extern fn SDL_LogTrace(category: c_int, fmt: [*c]const u8, ...) void;
extern fn SDL_LogVerbose(category: c_int, fmt: [*c]const u8, ...) void;
extern fn SDL_LogDebug(category: c_int, fmt: [*c]const u8, ...) void;
extern fn SDL_LogInfo(category: c_int, fmt: [*c]const u8, ...) void;
extern fn SDL_LogWarn(category: c_int, fmt: [*c]const u8, ...) void;
extern fn SDL_LogError(category: c_int, fmt: [*c]const u8, ...) void;
extern fn SDL_LogCritical(category: c_int, fmt: [*c]const u8, ...) void;
extern fn SDL_LogMessage(category: c_int, priority: LogPriority, fmt: [*c]const u8, ...) void;
extern fn SDL_LogMessageV(category: c_int, priority: LogPriority, fmt: [*c]const u8, ap: [*c]struct___va_list_tag_1) void;
pub const LogOutputFunction = ?*const fn (userdata: ?*anyopaque, category: c_int, priority: LogPriority, message: [*c]const u8) callconv(.c) void;
extern fn SDL_GetDefaultLogOutputFunction() LogOutputFunction;
extern fn SDL_GetLogOutputFunction(callback: [*c]LogOutputFunction, userdata: [*c]?*anyopaque) void;
extern fn SDL_SetLogOutputFunction(callback: LogOutputFunction, userdata: ?*anyopaque) void;
pub const MessageBoxFlags = Uint32;
pub const MessageBoxButtonFlags = Uint32;
pub const MessageBoxButtonData = extern struct {
    flags: MessageBoxButtonFlags = 0,
    buttonID: c_int = 0,
    text: [*c]const u8 = null,
};
pub const MessageBoxColor = extern struct {
    r: Uint8 = 0,
    g: Uint8 = 0,
    b: Uint8 = 0,
};
pub const MESSAGEBOX_COLOR_BACKGROUND: c_int = 0;
pub const MESSAGEBOX_COLOR_TEXT: c_int = 1;
pub const MESSAGEBOX_COLOR_BUTTON_BORDER: c_int = 2;
pub const MESSAGEBOX_COLOR_BUTTON_BACKGROUND: c_int = 3;
pub const MESSAGEBOX_COLOR_BUTTON_SELECTED: c_int = 4;
pub const MESSAGEBOX_COLOR_COUNT: c_int = 5;
pub const enum_SDL_MessageBoxColorType = c_uint;
pub const MessageBoxColorType = enum_SDL_MessageBoxColorType;
pub const MessageBoxColorScheme = extern struct {
    colors: [5]MessageBoxColor = @import("std").mem.zeroes([5]MessageBoxColor),
};
pub const MessageBoxData = extern struct {
    flags: MessageBoxFlags = 0,
    window: ?*Window = null,
    title: [*c]const u8 = null,
    message: [*c]const u8 = null,
    numbuttons: c_int = 0,
    buttons: [*c]const MessageBoxButtonData = null,
    colorScheme: [*c]const MessageBoxColorScheme = null,
};
extern fn SDL_ShowMessageBox(messageboxdata: [*c]const MessageBoxData, buttonid: [*c]c_int) bool;
extern fn SDL_ShowSimpleMessageBox(flags: MessageBoxFlags, title: [*c]const u8, message: [*c]const u8, window: ?*Window) bool;
pub const MetalView = ?*anyopaque;
extern fn SDL_Metal_CreateView(window: ?*Window) MetalView;
extern fn SDL_Metal_DestroyView(view: MetalView) void;
extern fn SDL_Metal_GetLayer(view: MetalView) ?*anyopaque;
extern fn SDL_OpenURL(url: [*c]const u8) bool;
extern fn SDL_GetPlatform() [*c]const u8;
pub const Process = opaque {};
extern fn SDL_CreateProcess(args: [*c]const [*c]const u8, pipe_stdio: bool) ?*Process;
pub const PROCESS_STDIO_INHERITED: c_int = 0;
pub const PROCESS_STDIO_NULL: c_int = 1;
pub const PROCESS_STDIO_APP: c_int = 2;
pub const PROCESS_STDIO_REDIRECT: c_int = 3;
pub const enum_SDL_ProcessIO = c_uint;
pub const ProcessIO = enum_SDL_ProcessIO;
extern fn SDL_CreateProcessWithProperties(props: PropertiesID) ?*Process;
extern fn SDL_GetProcessProperties(process: ?*Process) PropertiesID;
extern fn SDL_ReadProcess(process: ?*Process, datasize: [*c]usize, exitcode: [*c]c_int) ?*anyopaque;
extern fn SDL_GetProcessInput(process: ?*Process) ?*IOStream;
extern fn SDL_GetProcessOutput(process: ?*Process) ?*IOStream;
extern fn SDL_KillProcess(process: ?*Process, force: bool) bool;
extern fn SDL_WaitProcess(process: ?*Process, block: bool, exitcode: [*c]c_int) bool;
extern fn SDL_DestroyProcess(process: ?*Process) void;
pub const Vertex = extern struct {
    position: FPoint = @import("std").mem.zeroes(FPoint),
    color: FColor = @import("std").mem.zeroes(FColor),
    tex_coord: FPoint = @import("std").mem.zeroes(FPoint),
};
pub const TEXTUREACCESS_STATIC: c_int = 0;
pub const TEXTUREACCESS_STREAMING: c_int = 1;
pub const TEXTUREACCESS_TARGET: c_int = 2;
pub const enum_SDL_TextureAccess = c_uint;
pub const TextureAccess = enum_SDL_TextureAccess;
pub const TEXTURE_ADDRESS_INVALID: c_int = -1;
pub const TEXTURE_ADDRESS_AUTO: c_int = 0;
pub const TEXTURE_ADDRESS_CLAMP: c_int = 1;
pub const TEXTURE_ADDRESS_WRAP: c_int = 2;
pub const enum_SDL_TextureAddressMode = c_int;
pub const TextureAddressMode = enum_SDL_TextureAddressMode;
pub const LOGICAL_PRESENTATION_DISABLED: c_int = 0;
pub const LOGICAL_PRESENTATION_STRETCH: c_int = 1;
pub const LOGICAL_PRESENTATION_LETTERBOX: c_int = 2;
pub const LOGICAL_PRESENTATION_OVERSCAN: c_int = 3;
pub const LOGICAL_PRESENTATION_INTEGER_SCALE: c_int = 4;
pub const enum_SDL_RendererLogicalPresentation = c_uint;
pub const RendererLogicalPresentation = enum_SDL_RendererLogicalPresentation;
pub const Renderer = opaque {};
pub const Texture = extern struct {
    format: PixelFormat = @import("std").mem.zeroes(PixelFormat),
    w: c_int = 0,
    h: c_int = 0,
    refcount: c_int = 0,
};
extern fn SDL_GetNumRenderDrivers() c_int;
extern fn SDL_GetRenderDriver(index: c_int) [*c]const u8;
extern fn SDL_CreateWindowAndRenderer(title: [*c]const u8, width: c_int, height: c_int, window_flags: WindowFlags, window: [*c]?*Window, renderer: [*c]?*Renderer) bool;
extern fn SDL_CreateRenderer(window: ?*Window, name: [*c]const u8) ?*Renderer;
extern fn SDL_CreateRendererWithProperties(props: PropertiesID) ?*Renderer;
extern fn SDL_CreateGPURenderer(device: ?*GPUDevice, window: ?*Window) ?*Renderer;
extern fn SDL_GetGPURendererDevice(renderer: ?*Renderer) ?*GPUDevice;
extern fn SDL_CreateSoftwareRenderer(surface: [*c]Surface) ?*Renderer;
extern fn SDL_GetRenderer(window: ?*Window) ?*Renderer;
extern fn SDL_GetRenderWindow(renderer: ?*Renderer) ?*Window;
extern fn SDL_GetRendererName(renderer: ?*Renderer) [*c]const u8;
extern fn SDL_GetRendererProperties(renderer: ?*Renderer) PropertiesID;
extern fn SDL_GetRenderOutputSize(renderer: ?*Renderer, w: [*c]c_int, h: [*c]c_int) bool;
extern fn SDL_GetCurrentRenderOutputSize(renderer: ?*Renderer, w: [*c]c_int, h: [*c]c_int) bool;
extern fn SDL_CreateTexture(renderer: ?*Renderer, format: PixelFormat, access: TextureAccess, w: c_int, h: c_int) [*c]Texture;
extern fn SDL_CreateTextureFromSurface(renderer: ?*Renderer, surface: [*c]Surface) [*c]Texture;
extern fn SDL_CreateTextureWithProperties(renderer: ?*Renderer, props: PropertiesID) [*c]Texture;
extern fn SDL_GetTextureProperties(texture: [*c]Texture) PropertiesID;
extern fn SDL_GetRendererFromTexture(texture: [*c]Texture) ?*Renderer;
extern fn SDL_GetTextureSize(texture: [*c]Texture, w: [*c]f32, h: [*c]f32) bool;
extern fn SDL_SetTexturePalette(texture: [*c]Texture, palette: [*c]Palette) bool;
extern fn SDL_GetTexturePalette(texture: [*c]Texture) [*c]Palette;
extern fn SDL_SetTextureColorMod(texture: [*c]Texture, r: Uint8, g: Uint8, b: Uint8) bool;
extern fn SDL_SetTextureColorModFloat(texture: [*c]Texture, r: f32, g: f32, b: f32) bool;
extern fn SDL_GetTextureColorMod(texture: [*c]Texture, r: [*c]Uint8, g: [*c]Uint8, b: [*c]Uint8) bool;
extern fn SDL_GetTextureColorModFloat(texture: [*c]Texture, r: [*c]f32, g: [*c]f32, b: [*c]f32) bool;
extern fn SDL_SetTextureAlphaMod(texture: [*c]Texture, alpha: Uint8) bool;
extern fn SDL_SetTextureAlphaModFloat(texture: [*c]Texture, alpha: f32) bool;
extern fn SDL_GetTextureAlphaMod(texture: [*c]Texture, alpha: [*c]Uint8) bool;
extern fn SDL_GetTextureAlphaModFloat(texture: [*c]Texture, alpha: [*c]f32) bool;
extern fn SDL_SetTextureBlendMode(texture: [*c]Texture, blendMode: BlendMode) bool;
extern fn SDL_GetTextureBlendMode(texture: [*c]Texture, blendMode: [*c]BlendMode) bool;
extern fn SDL_SetTextureScaleMode(texture: [*c]Texture, scaleMode: ScaleMode) bool;
extern fn SDL_GetTextureScaleMode(texture: [*c]Texture, scaleMode: [*c]ScaleMode) bool;
extern fn SDL_UpdateTexture(texture: [*c]Texture, rect: [*c]const Rect, pixels: ?*const anyopaque, pitch: c_int) bool;
extern fn SDL_UpdateYUVTexture(texture: [*c]Texture, rect: [*c]const Rect, Yplane: [*c]const Uint8, Ypitch: c_int, Uplane: [*c]const Uint8, Upitch: c_int, Vplane: [*c]const Uint8, Vpitch: c_int) bool;
extern fn SDL_UpdateNVTexture(texture: [*c]Texture, rect: [*c]const Rect, Yplane: [*c]const Uint8, Ypitch: c_int, UVplane: [*c]const Uint8, UVpitch: c_int) bool;
extern fn SDL_LockTexture(texture: [*c]Texture, rect: [*c]const Rect, pixels: [*c]?*anyopaque, pitch: [*c]c_int) bool;
extern fn SDL_LockTextureToSurface(texture: [*c]Texture, rect: [*c]const Rect, surface: [*c][*c]Surface) bool;
extern fn SDL_UnlockTexture(texture: [*c]Texture) void;
extern fn SDL_SetRenderTarget(renderer: ?*Renderer, texture: [*c]Texture) bool;
extern fn SDL_GetRenderTarget(renderer: ?*Renderer) [*c]Texture;
extern fn SDL_SetRenderLogicalPresentation(renderer: ?*Renderer, w: c_int, h: c_int, mode: RendererLogicalPresentation) bool;
extern fn SDL_GetRenderLogicalPresentation(renderer: ?*Renderer, w: [*c]c_int, h: [*c]c_int, mode: [*c]RendererLogicalPresentation) bool;
extern fn SDL_GetRenderLogicalPresentationRect(renderer: ?*Renderer, rect: [*c]FRect) bool;
extern fn SDL_RenderCoordinatesFromWindow(renderer: ?*Renderer, window_x: f32, window_y: f32, x: [*c]f32, y: [*c]f32) bool;
extern fn SDL_RenderCoordinatesToWindow(renderer: ?*Renderer, x: f32, y: f32, window_x: [*c]f32, window_y: [*c]f32) bool;
extern fn SDL_ConvertEventToRenderCoordinates(renderer: ?*Renderer, event: [*c]Event) bool;
extern fn SDL_SetRenderViewport(renderer: ?*Renderer, rect: [*c]const Rect) bool;
extern fn SDL_GetRenderViewport(renderer: ?*Renderer, rect: [*c]Rect) bool;
extern fn SDL_RenderViewportSet(renderer: ?*Renderer) bool;
extern fn SDL_GetRenderSafeArea(renderer: ?*Renderer, rect: [*c]Rect) bool;
extern fn SDL_SetRenderClipRect(renderer: ?*Renderer, rect: [*c]const Rect) bool;
extern fn SDL_GetRenderClipRect(renderer: ?*Renderer, rect: [*c]Rect) bool;
extern fn SDL_RenderClipEnabled(renderer: ?*Renderer) bool;
extern fn SDL_SetRenderScale(renderer: ?*Renderer, scaleX: f32, scaleY: f32) bool;
extern fn SDL_GetRenderScale(renderer: ?*Renderer, scaleX: [*c]f32, scaleY: [*c]f32) bool;
extern fn SDL_SetRenderDrawColor(renderer: ?*Renderer, r: Uint8, g: Uint8, b: Uint8, a: Uint8) bool;
extern fn SDL_SetRenderDrawColorFloat(renderer: ?*Renderer, r: f32, g: f32, b: f32, a: f32) bool;
extern fn SDL_GetRenderDrawColor(renderer: ?*Renderer, r: [*c]Uint8, g: [*c]Uint8, b: [*c]Uint8, a: [*c]Uint8) bool;
extern fn SDL_GetRenderDrawColorFloat(renderer: ?*Renderer, r: [*c]f32, g: [*c]f32, b: [*c]f32, a: [*c]f32) bool;
extern fn SDL_SetRenderColorScale(renderer: ?*Renderer, scale: f32) bool;
extern fn SDL_GetRenderColorScale(renderer: ?*Renderer, scale: [*c]f32) bool;
extern fn SDL_SetRenderDrawBlendMode(renderer: ?*Renderer, blendMode: BlendMode) bool;
extern fn SDL_GetRenderDrawBlendMode(renderer: ?*Renderer, blendMode: [*c]BlendMode) bool;
extern fn SDL_RenderClear(renderer: ?*Renderer) bool;
extern fn SDL_RenderPoint(renderer: ?*Renderer, x: f32, y: f32) bool;
extern fn SDL_RenderPoints(renderer: ?*Renderer, points: [*c]const FPoint, count: c_int) bool;
extern fn SDL_RenderLine(renderer: ?*Renderer, x1: f32, y1: f32, x2: f32, y2: f32) bool;
extern fn SDL_RenderLines(renderer: ?*Renderer, points: [*c]const FPoint, count: c_int) bool;
extern fn SDL_RenderRect(renderer: ?*Renderer, rect: [*c]const FRect) bool;
extern fn SDL_RenderRects(renderer: ?*Renderer, rects: [*c]const FRect, count: c_int) bool;
extern fn SDL_RenderFillRect(renderer: ?*Renderer, rect: [*c]const FRect) bool;
extern fn SDL_RenderFillRects(renderer: ?*Renderer, rects: [*c]const FRect, count: c_int) bool;
extern fn SDL_RenderTexture(renderer: ?*Renderer, texture: [*c]Texture, srcrect: [*c]const FRect, dstrect: [*c]const FRect) bool;
extern fn SDL_RenderTextureRotated(renderer: ?*Renderer, texture: [*c]Texture, srcrect: [*c]const FRect, dstrect: [*c]const FRect, angle: f64, center: [*c]const FPoint, flip: FlipMode) bool;
extern fn SDL_RenderTextureAffine(renderer: ?*Renderer, texture: [*c]Texture, srcrect: [*c]const FRect, origin: [*c]const FPoint, right: [*c]const FPoint, down: [*c]const FPoint) bool;
extern fn SDL_RenderTextureTiled(renderer: ?*Renderer, texture: [*c]Texture, srcrect: [*c]const FRect, scale: f32, dstrect: [*c]const FRect) bool;
extern fn SDL_RenderTexture9Grid(renderer: ?*Renderer, texture: [*c]Texture, srcrect: [*c]const FRect, left_width: f32, right_width: f32, top_height: f32, bottom_height: f32, scale: f32, dstrect: [*c]const FRect) bool;
extern fn SDL_RenderTexture9GridTiled(renderer: ?*Renderer, texture: [*c]Texture, srcrect: [*c]const FRect, left_width: f32, right_width: f32, top_height: f32, bottom_height: f32, scale: f32, dstrect: [*c]const FRect, tileScale: f32) bool;
extern fn SDL_RenderGeometry(renderer: ?*Renderer, texture: [*c]Texture, vertices: [*c]const Vertex, num_vertices: c_int, indices: [*c]const c_int, num_indices: c_int) bool;
extern fn SDL_RenderGeometryRaw(renderer: ?*Renderer, texture: [*c]Texture, xy: [*c]const f32, xy_stride: c_int, color: [*c]const FColor, color_stride: c_int, uv: [*c]const f32, uv_stride: c_int, num_vertices: c_int, indices: ?*const anyopaque, num_indices: c_int, size_indices: c_int) bool;
extern fn SDL_SetRenderTextureAddressMode(renderer: ?*Renderer, u_mode: TextureAddressMode, v_mode: TextureAddressMode) bool;
extern fn SDL_GetRenderTextureAddressMode(renderer: ?*Renderer, u_mode: [*c]TextureAddressMode, v_mode: [*c]TextureAddressMode) bool;
extern fn SDL_RenderReadPixels(renderer: ?*Renderer, rect: [*c]const Rect) [*c]Surface;
extern fn SDL_RenderPresent(renderer: ?*Renderer) bool;
extern fn SDL_DestroyTexture(texture: [*c]Texture) void;
extern fn SDL_DestroyRenderer(renderer: ?*Renderer) void;
extern fn SDL_FlushRenderer(renderer: ?*Renderer) bool;
extern fn SDL_GetRenderMetalLayer(renderer: ?*Renderer) ?*anyopaque;
extern fn SDL_GetRenderMetalCommandEncoder(renderer: ?*Renderer) ?*anyopaque;
extern fn SDL_AddVulkanRenderSemaphores(renderer: ?*Renderer, wait_stage_mask: Uint32, wait_semaphore: Sint64, signal_semaphore: Sint64) bool;
extern fn SDL_SetRenderVSync(renderer: ?*Renderer, vsync: c_int) bool;
extern fn SDL_GetRenderVSync(renderer: ?*Renderer, vsync: [*c]c_int) bool;
extern fn SDL_RenderDebugText(renderer: ?*Renderer, x: f32, y: f32, str: [*c]const u8) bool;
extern fn SDL_RenderDebugTextFormat(renderer: ?*Renderer, x: f32, y: f32, fmt: [*c]const u8, ...) bool;
extern fn SDL_SetDefaultTextureScaleMode(renderer: ?*Renderer, scale_mode: ScaleMode) bool;
extern fn SDL_GetDefaultTextureScaleMode(renderer: ?*Renderer, scale_mode: [*c]ScaleMode) bool;
pub const GPURenderStateCreateInfo = extern struct {
    fragment_shader: ?*GPUShader = null,
    num_sampler_bindings: Sint32 = 0,
    sampler_bindings: [*c]const GPUTextureSamplerBinding = null,
    num_storage_textures: Sint32 = 0,
    storage_textures: [*c]const ?*GPUTexture = null,
    num_storage_buffers: Sint32 = 0,
    storage_buffers: [*c]const ?*GPUBuffer = null,
    props: PropertiesID = 0,
};
pub const GPURenderState = opaque {};
extern fn SDL_CreateGPURenderState(renderer: ?*Renderer, createinfo: [*c]const GPURenderStateCreateInfo) ?*GPURenderState;
extern fn SDL_SetGPURenderStateSamplerBindings(state: ?*GPURenderState, num_sampler_bindings: c_int, sampler_bindings: [*c]const GPUTextureSamplerBinding) bool;
extern fn SDL_SetGPURenderStateStorageTextures(state: ?*GPURenderState, num_storage_textures: c_int, storage_textures: [*c]const ?*GPUTexture) bool;
extern fn SDL_SetGPURenderStateStorageBuffers(state: ?*GPURenderState, num_storage_buffers: c_int, storage_buffers: [*c]const ?*GPUBuffer) bool;
extern fn SDL_SetGPURenderStateFragmentUniforms(state: ?*GPURenderState, slot_index: Uint32, data: ?*const anyopaque, length: Uint32) bool;
extern fn SDL_SetGPURenderState(renderer: ?*Renderer, state: ?*GPURenderState) bool;
extern fn SDL_DestroyGPURenderState(state: ?*GPURenderState) void;
pub const StorageInterface = extern struct {
    version: Uint32 = 0,
    close: ?*const fn (userdata: ?*anyopaque) callconv(.c) bool = null,
    ready: ?*const fn (userdata: ?*anyopaque) callconv(.c) bool = null,
    enumerate: ?*const fn (userdata: ?*anyopaque, path: [*c]const u8, callback: EnumerateDirectoryCallback, callback_userdata: ?*anyopaque) callconv(.c) bool = null,
    info: ?*const fn (userdata: ?*anyopaque, path: [*c]const u8, info: [*c]PathInfo) callconv(.c) bool = null,
    read_file: ?*const fn (userdata: ?*anyopaque, path: [*c]const u8, destination: ?*anyopaque, length: Uint64) callconv(.c) bool = null,
    write_file: ?*const fn (userdata: ?*anyopaque, path: [*c]const u8, source: ?*const anyopaque, length: Uint64) callconv(.c) bool = null,
    mkdir: ?*const fn (userdata: ?*anyopaque, path: [*c]const u8) callconv(.c) bool = null,
    remove: ?*const fn (userdata: ?*anyopaque, path: [*c]const u8) callconv(.c) bool = null,
    rename: ?*const fn (userdata: ?*anyopaque, oldpath: [*c]const u8, newpath: [*c]const u8) callconv(.c) bool = null,
    copy: ?*const fn (userdata: ?*anyopaque, oldpath: [*c]const u8, newpath: [*c]const u8) callconv(.c) bool = null,
    space_remaining: ?*const fn (userdata: ?*anyopaque) callconv(.c) Uint64 = null,
};
comptime {
    if (!(((@sizeOf(?*anyopaque) == @as(c_ulong, 4)) and (@sizeOf(StorageInterface) == @as(c_ulong, 48))) or ((@sizeOf(?*anyopaque) == @as(c_ulong, 8)) and (@sizeOf(StorageInterface) == @as(c_ulong, 96))))) @compileError("static assertion failed \"(sizeof(void *) == 4 && sizeof(SDL_StorageInterface) == 48) || (sizeof(void *) == 8 && sizeof(SDL_StorageInterface) == 96)\"");
}
pub const Storage = opaque {};
extern fn SDL_OpenTitleStorage(override: [*c]const u8, props: PropertiesID) ?*Storage;
extern fn SDL_OpenUserStorage(org: [*c]const u8, app: [*c]const u8, props: PropertiesID) ?*Storage;
extern fn SDL_OpenFileStorage(path: [*c]const u8) ?*Storage;
extern fn SDL_OpenStorage(iface: [*c]const StorageInterface, userdata: ?*anyopaque) ?*Storage;
extern fn SDL_CloseStorage(storage: ?*Storage) bool;
extern fn SDL_StorageReady(storage: ?*Storage) bool;
extern fn SDL_GetStorageFileSize(storage: ?*Storage, path: [*c]const u8, length: [*c]Uint64) bool;
extern fn SDL_ReadStorageFile(storage: ?*Storage, path: [*c]const u8, destination: ?*anyopaque, length: Uint64) bool;
extern fn SDL_WriteStorageFile(storage: ?*Storage, path: [*c]const u8, source: ?*const anyopaque, length: Uint64) bool;
extern fn SDL_CreateStorageDirectory(storage: ?*Storage, path: [*c]const u8) bool;
extern fn SDL_EnumerateStorageDirectory(storage: ?*Storage, path: [*c]const u8, callback: EnumerateDirectoryCallback, userdata: ?*anyopaque) bool;
extern fn SDL_RemoveStoragePath(storage: ?*Storage, path: [*c]const u8) bool;
extern fn SDL_RenameStoragePath(storage: ?*Storage, oldpath: [*c]const u8, newpath: [*c]const u8) bool;
extern fn SDL_CopyStorageFile(storage: ?*Storage, oldpath: [*c]const u8, newpath: [*c]const u8) bool;
extern fn SDL_GetStoragePathInfo(storage: ?*Storage, path: [*c]const u8, info: [*c]PathInfo) bool;
extern fn SDL_GetStorageSpaceRemaining(storage: ?*Storage) Uint64;
extern fn SDL_GlobStorageDirectory(storage: ?*Storage, path: [*c]const u8, pattern: [*c]const u8, flags: GlobFlags, count: [*c]c_int) [*c][*c]u8;
pub const union__XEvent = opaque {};
pub const XEvent = union__XEvent;
pub const X11EventHook = ?*const fn (userdata: ?*anyopaque, xevent: ?*XEvent) callconv(.c) bool;
extern fn SDL_SetX11EventHook(callback: X11EventHook, userdata: ?*anyopaque) void;
extern fn SDL_SetLinuxThreadPriority(threadID: Sint64, priority: c_int) bool;
extern fn SDL_SetLinuxThreadPriorityAndPolicy(threadID: Sint64, sdlPriority: c_int, schedPolicy: c_int) bool;
extern fn SDL_IsPhone() bool;
extern fn SDL_IsTablet() bool;
extern fn SDL_IsTV() bool;
pub const SANDBOX_NONE: c_int = 0;
pub const SANDBOX_UNKNOWN_CONTAINER: c_int = 1;
pub const SANDBOX_FLATPAK: c_int = 2;
pub const SANDBOX_SNAP: c_int = 3;
pub const SANDBOX_MACOS: c_int = 4;
pub const enum_SDL_Sandbox = c_uint;
pub const Sandbox = enum_SDL_Sandbox;
extern fn SDL_GetSandbox() Sandbox;
extern fn SDL_OnApplicationWillTerminate() void;
extern fn SDL_OnApplicationDidReceiveMemoryWarning() void;
extern fn SDL_OnApplicationWillEnterBackground() void;
extern fn SDL_OnApplicationDidEnterBackground() void;
extern fn SDL_OnApplicationWillEnterForeground() void;
extern fn SDL_OnApplicationDidEnterForeground() void;
pub const DateTime = extern struct {
    year: c_int = 0,
    month: c_int = 0,
    day: c_int = 0,
    hour: c_int = 0,
    minute: c_int = 0,
    second: c_int = 0,
    nanosecond: c_int = 0,
    day_of_week: c_int = 0,
    utc_offset: c_int = 0,
};
pub const DATE_FORMAT_YYYYMMDD: c_int = 0;
pub const DATE_FORMAT_DDMMYYYY: c_int = 1;
pub const DATE_FORMAT_MMDDYYYY: c_int = 2;
pub const enum_SDL_DateFormat = c_uint;
pub const DateFormat = enum_SDL_DateFormat;
pub const TIME_FORMAT_24HR: c_int = 0;
pub const TIME_FORMAT_12HR: c_int = 1;
pub const enum_SDL_TimeFormat = c_uint;
pub const TimeFormat = enum_SDL_TimeFormat;
extern fn SDL_GetDateTimeLocalePreferences(dateFormat: [*c]DateFormat, timeFormat: [*c]TimeFormat) bool;
extern fn SDL_GetCurrentTime(ticks: [*c]Time) bool;
extern fn SDL_TimeToDateTime(ticks: Time, dt: [*c]DateTime, localTime: bool) bool;
extern fn SDL_DateTimeToTime(dt: [*c]const DateTime, ticks: [*c]Time) bool;
extern fn SDL_TimeToWindows(ticks: Time, dwLowDateTime: [*c]Uint32, dwHighDateTime: [*c]Uint32) void;
extern fn SDL_TimeFromWindows(dwLowDateTime: Uint32, dwHighDateTime: Uint32) Time;
extern fn SDL_GetDaysInMonth(year: c_int, month: c_int) c_int;
extern fn SDL_GetDayOfYear(year: c_int, month: c_int, day: c_int) c_int;
extern fn SDL_GetDayOfWeek(year: c_int, month: c_int, day: c_int) c_int;
extern fn SDL_GetTicks() Uint64;
extern fn SDL_GetTicksNS() Uint64;
extern fn SDL_GetPerformanceCounter() Uint64;
extern fn SDL_GetPerformanceFrequency() Uint64;
extern fn SDL_Delay(ms: Uint32) void;
extern fn SDL_DelayNS(ns: Uint64) void;
extern fn SDL_DelayPrecise(ns: Uint64) void;
pub const TimerID = Uint32;
pub const TimerCallback = ?*const fn (userdata: ?*anyopaque, timerID: TimerID, interval: Uint32) callconv(.c) Uint32;
extern fn SDL_AddTimer(interval: Uint32, callback: TimerCallback, userdata: ?*anyopaque) TimerID;
pub const NSTimerCallback = ?*const fn (userdata: ?*anyopaque, timerID: TimerID, interval: Uint64) callconv(.c) Uint64;
extern fn SDL_AddTimerNS(interval: Uint64, callback: NSTimerCallback, userdata: ?*anyopaque) TimerID;
extern fn SDL_RemoveTimer(id: TimerID) bool;
pub const Tray = opaque {};
pub const TrayMenu = opaque {};
pub const TrayEntry = opaque {};
pub const TrayEntryFlags = Uint32;
pub const TrayCallback = ?*const fn (userdata: ?*anyopaque, entry: ?*TrayEntry) callconv(.c) void;
pub const TrayClickCallback = ?*const fn (userdata: ?*anyopaque, tray: ?*Tray) callconv(.c) bool;
extern fn SDL_CreateTray(icon: [*c]Surface, tooltip: [*c]const u8) ?*Tray;
extern fn SDL_CreateTrayWithProperties(props: PropertiesID) ?*Tray;
extern fn SDL_SetTrayIcon(tray: ?*Tray, icon: [*c]Surface) void;
extern fn SDL_SetTrayTooltip(tray: ?*Tray, tooltip: [*c]const u8) void;
extern fn SDL_CreateTrayMenu(tray: ?*Tray) ?*TrayMenu;
extern fn SDL_CreateTraySubmenu(entry: ?*TrayEntry) ?*TrayMenu;
extern fn SDL_GetTrayMenu(tray: ?*Tray) ?*TrayMenu;
extern fn SDL_GetTraySubmenu(entry: ?*TrayEntry) ?*TrayMenu;
extern fn SDL_GetTrayEntries(menu: ?*TrayMenu, count: [*c]c_int) [*c]?*const TrayEntry;
extern fn SDL_RemoveTrayEntry(entry: ?*TrayEntry) void;
extern fn SDL_InsertTrayEntryAt(menu: ?*TrayMenu, pos: c_int, label: [*c]const u8, flags: TrayEntryFlags) ?*TrayEntry;
extern fn SDL_SetTrayEntryLabel(entry: ?*TrayEntry, label: [*c]const u8) void;
extern fn SDL_GetTrayEntryLabel(entry: ?*TrayEntry) [*c]const u8;
extern fn SDL_SetTrayEntryChecked(entry: ?*TrayEntry, checked: bool) void;
extern fn SDL_GetTrayEntryChecked(entry: ?*TrayEntry) bool;
extern fn SDL_SetTrayEntryEnabled(entry: ?*TrayEntry, enabled: bool) void;
extern fn SDL_GetTrayEntryEnabled(entry: ?*TrayEntry) bool;
extern fn SDL_SetTrayEntryCallback(entry: ?*TrayEntry, callback: TrayCallback, userdata: ?*anyopaque) void;
extern fn SDL_ClickTrayEntry(entry: ?*TrayEntry) void;
extern fn SDL_DestroyTray(tray: ?*Tray) void;
extern fn SDL_GetTrayEntryParent(entry: ?*TrayEntry) ?*TrayMenu;
extern fn SDL_GetTrayMenuParentEntry(menu: ?*TrayMenu) ?*TrayEntry;
extern fn SDL_GetTrayMenuParentTray(menu: ?*TrayMenu) ?*Tray;
extern fn SDL_UpdateTrays() void;
extern fn SDL_GetVersion() c_int;
extern fn SDL_GetRevision() [*c]const u8;
pub const __VERSION__ = "Aro aro-zig";
pub const __Aro__ = "";
pub const __STDC__ = @as(c_int, 1);
pub const __STDC_HOSTED__ = @as(c_int, 1);
pub const __STDC_UTF_16__ = @as(c_int, 1);
pub const __STDC_UTF_32__ = @as(c_int, 1);
pub const __STDC_EMBED_NOT_FOUND__ = @as(c_int, 0);
pub const __STDC_EMBED_FOUND__ = @as(c_int, 1);
pub const __STDC_EMBED_EMPTY__ = @as(c_int, 2);
pub const __STDC_VERSION__ = @as(c_long, 201710);
pub const __ARO_EMULATE_NO__ = @as(c_int, 0);
pub const __ARO_EMULATE_CLANG__ = @as(c_int, 1);
pub const __ARO_EMULATE_GCC__ = @as(c_int, 2);
pub const __ARO_EMULATE_MSVC__ = @as(c_int, 3);
pub const __ARO_EMULATE__ = __ARO_EMULATE_GCC__;
pub inline fn __building_module(x: anytype) @TypeOf(@as(c_int, 0)) {
    _ = &x;
    return @as(c_int, 0);
}
pub const linux = @as(c_int, 1);
pub const __linux = @as(c_int, 1);
pub const __linux__ = @as(c_int, 1);
pub const unix = @as(c_int, 1);
pub const __unix = @as(c_int, 1);
pub const __unix__ = @as(c_int, 1);
pub const __code_model_small__ = @as(c_int, 1);
pub const __amd64__ = @as(c_int, 1);
pub const __amd64 = @as(c_int, 1);
pub const __x86_64__ = @as(c_int, 1);
pub const __x86_64 = @as(c_int, 1);
pub const __SEG_GS = @as(c_int, 1);
pub const __SEG_FS = @as(c_int, 1);
pub const __seg_gs = @compileError("unable to translate macro: undefined identifier `address_space`"); // <builtin>:33:9
pub const __seg_fs = @compileError("unable to translate macro: undefined identifier `address_space`"); // <builtin>:34:9
pub const __LAHF_SAHF__ = @as(c_int, 1);
pub const __AES__ = @as(c_int, 1);
pub const __VAES__ = @as(c_int, 1);
pub const __PCLMUL__ = @as(c_int, 1);
pub const __VPCLMULQDQ__ = @as(c_int, 1);
pub const __LZCNT__ = @as(c_int, 1);
pub const __RDRND__ = @as(c_int, 1);
pub const __FSGSBASE__ = @as(c_int, 1);
pub const __BMI__ = @as(c_int, 1);
pub const __BMI2__ = @as(c_int, 1);
pub const __POPCNT__ = @as(c_int, 1);
pub const __PRFCHW__ = @as(c_int, 1);
pub const __RDSEED__ = @as(c_int, 1);
pub const __ADX__ = @as(c_int, 1);
pub const __MOVBE__ = @as(c_int, 1);
pub const __FMA__ = @as(c_int, 1);
pub const __F16C__ = @as(c_int, 1);
pub const __GFNI__ = @as(c_int, 1);
pub const __SHA__ = @as(c_int, 1);
pub const __FXSR__ = @as(c_int, 1);
pub const __XSAVE__ = @as(c_int, 1);
pub const __XSAVEOPT__ = @as(c_int, 1);
pub const __XSAVEC__ = @as(c_int, 1);
pub const __XSAVES__ = @as(c_int, 1);
pub const __PKU__ = @as(c_int, 1);
pub const __CLFLUSHOPT__ = @as(c_int, 1);
pub const __CLWB__ = @as(c_int, 1);
pub const __SHSTK__ = @as(c_int, 1);
pub const __RDPID__ = @as(c_int, 1);
pub const __WAITPKG__ = @as(c_int, 1);
pub const __MOVDIRI__ = @as(c_int, 1);
pub const __MOVDIR64B__ = @as(c_int, 1);
pub const __PTWRITE__ = @as(c_int, 1);
pub const __INVPCID__ = @as(c_int, 1);
pub const __HRESET__ = @as(c_int, 1);
pub const __AVXVNNI__ = @as(c_int, 1);
pub const __SERIALIZE__ = @as(c_int, 1);
pub const __CRC32__ = @as(c_int, 1);
pub const __AVX2__ = @as(c_int, 1);
pub const __AVX__ = @as(c_int, 1);
pub const __SSE4_2__ = @as(c_int, 1);
pub const __SSE4_1__ = @as(c_int, 1);
pub const __SSSE3__ = @as(c_int, 1);
pub const __SSE3__ = @as(c_int, 1);
pub const __SSE2__ = @as(c_int, 1);
pub const __SSE__ = @as(c_int, 1);
pub const __SSE_MATH__ = @as(c_int, 1);
pub const __MMX__ = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_8 = @as(c_int, 1);
pub const __SIZEOF_FLOAT128__ = @as(c_int, 16);
pub const _LP64 = @as(c_int, 1);
pub const __LP64__ = @as(c_int, 1);
pub const __FLOAT128__ = @as(c_int, 1);
pub const __ORDER_LITTLE_ENDIAN__ = @as(c_int, 1234);
pub const __ORDER_BIG_ENDIAN__ = @as(c_int, 4321);
pub const __ORDER_PDP_ENDIAN__ = @as(c_int, 3412);
pub const __BYTE_ORDER__ = __ORDER_LITTLE_ENDIAN__;
pub const __LITTLE_ENDIAN__ = @as(c_int, 1);
pub const __ELF__ = @as(c_int, 1);
pub const __ATOMIC_RELAXED = @as(c_int, 0);
pub const __ATOMIC_CONSUME = @as(c_int, 1);
pub const __ATOMIC_ACQUIRE = @as(c_int, 2);
pub const __ATOMIC_RELEASE = @as(c_int, 3);
pub const __ATOMIC_ACQ_REL = @as(c_int, 4);
pub const __ATOMIC_SEQ_CST = @as(c_int, 5);
pub const __ATOMIC_BOOL_LOCK_FREE = @as(c_int, 1);
pub const __ATOMIC_CHAR_LOCK_FREE = @as(c_int, 1);
pub const __ATOMIC_CHAR16_T_LOCK_FREE = @as(c_int, 1);
pub const __ATOMIC_CHAR32_T_LOCK_FREE = @as(c_int, 1);
pub const __ATOMIC_WCHAR_T_LOCK_FREE = @as(c_int, 1);
pub const __ATOMIC_WINT_T_LOCK_FREE = @as(c_int, 1);
pub const __ATOMIC_SHORT_LOCK_FREE = @as(c_int, 1);
pub const __ATOMIC_INT_LOCK_FREE = @as(c_int, 1);
pub const __ATOMIC_LONG_LOCK_FREE = @as(c_int, 1);
pub const __ATOMIC_LLONG_LOCK_FREE = @as(c_int, 1);
pub const __ATOMIC_POINTER_LOCK_FREE = @as(c_int, 1);
pub const __WINT_UNSIGNED__ = @as(c_int, 1);
pub const __CHAR_BIT__ = @as(c_int, 8);
pub const __BOOL_WIDTH__ = @as(c_int, 8);
pub const __SCHAR_MAX__ = @as(c_int, 127);
pub const __SCHAR_WIDTH__ = @as(c_int, 8);
pub const __SHRT_MAX__ = @as(c_int, 32767);
pub const __SHRT_WIDTH__ = @as(c_int, 16);
pub const __INT_MAX__ = __helpers.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __INT_WIDTH__ = @as(c_int, 32);
pub const __LONG_MAX__ = __helpers.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __LONG_WIDTH__ = @as(c_int, 64);
pub const __LONG_LONG_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __LONG_LONG_WIDTH__ = @as(c_int, 64);
pub const __WCHAR_MAX__ = __helpers.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __WCHAR_WIDTH__ = @as(c_int, 32);
pub const __WINT_MAX__ = __helpers.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __WINT_WIDTH__ = @as(c_int, 32);
pub const __INTMAX_MAX__ = __helpers.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INTMAX_WIDTH__ = @as(c_int, 64);
pub const __SIZE_MAX__ = __helpers.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __SIZE_WIDTH__ = @as(c_int, 64);
pub const __UINTMAX_MAX__ = __helpers.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __UINTMAX_WIDTH__ = @as(c_int, 64);
pub const __PTRDIFF_MAX__ = __helpers.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __PTRDIFF_WIDTH__ = @as(c_int, 64);
pub const __INTPTR_MAX__ = __helpers.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INTPTR_WIDTH__ = @as(c_int, 64);
pub const __UINTPTR_MAX__ = __helpers.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __UINTPTR_WIDTH__ = @as(c_int, 64);
pub const __SIG_ATOMIC_MAX__ = __helpers.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __SIG_ATOMIC_WIDTH__ = @as(c_int, 32);
pub const __BITINT_MAXWIDTH__ = __helpers.promoteIntLiteral(c_int, 65535, .decimal);
pub const __SIZEOF_FLOAT__ = @as(c_int, 4);
pub const __SIZEOF_DOUBLE__ = @as(c_int, 8);
pub const __SIZEOF_LONG_DOUBLE__ = @as(c_int, 10);
pub const __SIZEOF_SHORT__ = @as(c_int, 2);
pub const __SIZEOF_INT__ = @as(c_int, 4);
pub const __SIZEOF_LONG__ = @as(c_int, 8);
pub const __SIZEOF_LONG_LONG__ = @as(c_int, 8);
pub const __SIZEOF_POINTER__ = @as(c_int, 8);
pub const __SIZEOF_PTRDIFF_T__ = @as(c_int, 8);
pub const __SIZEOF_SIZE_T__ = @as(c_int, 8);
pub const __SIZEOF_WCHAR_T__ = @as(c_int, 4);
pub const __SIZEOF_WINT_T__ = @as(c_int, 4);
pub const __SIZEOF_INT128__ = @as(c_int, 16);
pub const __INTPTR_TYPE__ = c_long;
pub const __UINTPTR_TYPE__ = c_ulong;
pub const __INTMAX_TYPE__ = c_long;
pub const __INTMAX_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `L`"); // <builtin>:160:9
pub const __INTMAX_C = __helpers.L_SUFFIX;
pub const __UINTMAX_TYPE__ = c_ulong;
pub const __UINTMAX_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `UL`"); // <builtin>:163:9
pub const __UINTMAX_C = __helpers.UL_SUFFIX;
pub const __PTRDIFF_TYPE__ = c_long;
pub const __SIZE_TYPE__ = c_ulong;
pub const __WCHAR_TYPE__ = c_int;
pub const __WINT_TYPE__ = c_uint;
pub const __CHAR16_TYPE__ = c_ushort;
pub const __CHAR32_TYPE__ = c_uint;
pub const __INT8_TYPE__ = i8;
pub const __INT8_FMTd__ = "hhd";
pub const __INT8_FMTi__ = "hhi";
pub const __INT8_C_SUFFIX__ = "";
pub inline fn __INT8_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub const __INT16_TYPE__ = c_short;
pub const __INT16_FMTd__ = "hd";
pub const __INT16_FMTi__ = "hi";
pub const __INT16_C_SUFFIX__ = "";
pub inline fn __INT16_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub const __INT32_TYPE__ = c_int;
pub const __INT32_FMTd__ = "d";
pub const __INT32_FMTi__ = "i";
pub const __INT32_C_SUFFIX__ = "";
pub inline fn __INT32_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub const __INT64_TYPE__ = c_long;
pub const __INT64_FMTd__ = "ld";
pub const __INT64_FMTi__ = "li";
pub const __INT64_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `L`"); // <builtin>:189:9
pub const __UINT8_TYPE__ = u8;
pub const __UINT8_FMTo__ = "hho";
pub const __UINT8_FMTu__ = "hhu";
pub const __UINT8_FMTx__ = "hhx";
pub const __UINT8_FMTX__ = "hhX";
pub const __UINT8_C_SUFFIX__ = "";
pub inline fn __UINT8_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub const __UINT8_MAX__ = @as(c_int, 255);
pub const __INT8_MAX__ = @as(c_int, 127);
pub const __UINT16_TYPE__ = c_ushort;
pub const __UINT16_FMTo__ = "ho";
pub const __UINT16_FMTu__ = "hu";
pub const __UINT16_FMTx__ = "hx";
pub const __UINT16_FMTX__ = "hX";
pub const __UINT16_C_SUFFIX__ = "";
pub inline fn __UINT16_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub const __UINT16_MAX__ = __helpers.promoteIntLiteral(c_int, 65535, .decimal);
pub const __INT16_MAX__ = @as(c_int, 32767);
pub const __UINT32_TYPE__ = c_uint;
pub const __UINT32_FMTo__ = "o";
pub const __UINT32_FMTu__ = "u";
pub const __UINT32_FMTx__ = "x";
pub const __UINT32_FMTX__ = "X";
pub const __UINT32_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `U`"); // <builtin>:214:9
pub const __UINT32_C = __helpers.U_SUFFIX;
pub const __UINT32_MAX__ = __helpers.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __INT32_MAX__ = __helpers.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __UINT64_TYPE__ = c_ulong;
pub const __UINT64_FMTo__ = "lo";
pub const __UINT64_FMTu__ = "lu";
pub const __UINT64_FMTx__ = "lx";
pub const __UINT64_FMTX__ = "lX";
pub const __UINT64_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `UL`"); // <builtin>:223:9
pub const __UINT64_MAX__ = __helpers.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __INT64_MAX__ = __helpers.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INT_LEAST8_TYPE__ = i8;
pub const __INT_LEAST8_MAX__ = @as(c_int, 127);
pub const __INT_LEAST8_WIDTH__ = @as(c_int, 8);
pub const INT_LEAST8_FMTd__ = "hhd";
pub const INT_LEAST8_FMTi__ = "hhi";
pub const __UINT_LEAST8_TYPE__ = u8;
pub const __UINT_LEAST8_MAX__ = @as(c_int, 255);
pub const UINT_LEAST8_FMTo__ = "hho";
pub const UINT_LEAST8_FMTu__ = "hhu";
pub const UINT_LEAST8_FMTx__ = "hhx";
pub const UINT_LEAST8_FMTX__ = "hhX";
pub const __INT_FAST8_TYPE__ = i8;
pub const __INT_FAST8_MAX__ = @as(c_int, 127);
pub const __INT_FAST8_WIDTH__ = @as(c_int, 8);
pub const INT_FAST8_FMTd__ = "hhd";
pub const INT_FAST8_FMTi__ = "hhi";
pub const __UINT_FAST8_TYPE__ = u8;
pub const __UINT_FAST8_MAX__ = @as(c_int, 255);
pub const UINT_FAST8_FMTo__ = "hho";
pub const UINT_FAST8_FMTu__ = "hhu";
pub const UINT_FAST8_FMTx__ = "hhx";
pub const UINT_FAST8_FMTX__ = "hhX";
pub const __INT_LEAST16_TYPE__ = c_short;
pub const __INT_LEAST16_MAX__ = @as(c_int, 32767);
pub const __INT_LEAST16_WIDTH__ = @as(c_int, 16);
pub const INT_LEAST16_FMTd__ = "hd";
pub const INT_LEAST16_FMTi__ = "hi";
pub const __UINT_LEAST16_TYPE__ = c_ushort;
pub const __UINT_LEAST16_MAX__ = __helpers.promoteIntLiteral(c_int, 65535, .decimal);
pub const UINT_LEAST16_FMTo__ = "ho";
pub const UINT_LEAST16_FMTu__ = "hu";
pub const UINT_LEAST16_FMTx__ = "hx";
pub const UINT_LEAST16_FMTX__ = "hX";
pub const __INT_FAST16_TYPE__ = c_short;
pub const __INT_FAST16_MAX__ = @as(c_int, 32767);
pub const __INT_FAST16_WIDTH__ = @as(c_int, 16);
pub const INT_FAST16_FMTd__ = "hd";
pub const INT_FAST16_FMTi__ = "hi";
pub const __UINT_FAST16_TYPE__ = c_ushort;
pub const __UINT_FAST16_MAX__ = __helpers.promoteIntLiteral(c_int, 65535, .decimal);
pub const UINT_FAST16_FMTo__ = "ho";
pub const UINT_FAST16_FMTu__ = "hu";
pub const UINT_FAST16_FMTx__ = "hx";
pub const UINT_FAST16_FMTX__ = "hX";
pub const __INT_LEAST32_TYPE__ = c_int;
pub const __INT_LEAST32_MAX__ = __helpers.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __INT_LEAST32_WIDTH__ = @as(c_int, 32);
pub const INT_LEAST32_FMTd__ = "d";
pub const INT_LEAST32_FMTi__ = "i";
pub const __UINT_LEAST32_TYPE__ = c_uint;
pub const __UINT_LEAST32_MAX__ = __helpers.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const UINT_LEAST32_FMTo__ = "o";
pub const UINT_LEAST32_FMTu__ = "u";
pub const UINT_LEAST32_FMTx__ = "x";
pub const UINT_LEAST32_FMTX__ = "X";
pub const __INT_FAST32_TYPE__ = c_int;
pub const __INT_FAST32_MAX__ = __helpers.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __INT_FAST32_WIDTH__ = @as(c_int, 32);
pub const INT_FAST32_FMTd__ = "d";
pub const INT_FAST32_FMTi__ = "i";
pub const __UINT_FAST32_TYPE__ = c_uint;
pub const __UINT_FAST32_MAX__ = __helpers.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const UINT_FAST32_FMTo__ = "o";
pub const UINT_FAST32_FMTu__ = "u";
pub const UINT_FAST32_FMTx__ = "x";
pub const UINT_FAST32_FMTX__ = "X";
pub const __INT_LEAST64_TYPE__ = c_long;
pub const __INT_LEAST64_MAX__ = __helpers.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INT_LEAST64_WIDTH__ = @as(c_int, 64);
pub const INT_LEAST64_FMTd__ = "ld";
pub const INT_LEAST64_FMTi__ = "li";
pub const __UINT_LEAST64_TYPE__ = c_ulong;
pub const __UINT_LEAST64_MAX__ = __helpers.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const UINT_LEAST64_FMTo__ = "lo";
pub const UINT_LEAST64_FMTu__ = "lu";
pub const UINT_LEAST64_FMTx__ = "lx";
pub const UINT_LEAST64_FMTX__ = "lX";
pub const __INT_FAST64_TYPE__ = c_long;
pub const __INT_FAST64_MAX__ = __helpers.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INT_FAST64_WIDTH__ = @as(c_int, 64);
pub const INT_FAST64_FMTd__ = "ld";
pub const INT_FAST64_FMTi__ = "li";
pub const __UINT_FAST64_TYPE__ = c_ulong;
pub const __UINT_FAST64_MAX__ = __helpers.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const UINT_FAST64_FMTo__ = "lo";
pub const UINT_FAST64_FMTu__ = "lu";
pub const UINT_FAST64_FMTx__ = "lx";
pub const UINT_FAST64_FMTX__ = "lX";
pub const __FLT16_DENORM_MIN__ = @as(f16, 5.9604644775390625e-8);
pub const __FLT16_HAS_DENORM__ = "";
pub const __FLT16_DIG__ = @as(c_int, 3);
pub const __FLT16_DECIMAL_DIG__ = @as(c_int, 5);
pub const __FLT16_EPSILON__ = @as(f16, 9.765625e-4);
pub const __FLT16_HAS_INFINITY__ = "";
pub const __FLT16_HAS_QUIET_NAN__ = "";
pub const __FLT16_MANT_DIG__ = @as(c_int, 11);
pub const __FLT16_MAX_10_EXP__ = @as(c_int, 4);
pub const __FLT16_MAX_EXP__ = @as(c_int, 16);
pub const __FLT16_MAX__ = @as(f16, 6.5504e+4);
pub const __FLT16_MIN_10_EXP__ = -@as(c_int, 4);
pub const __FLT16_MIN_EXP__ = -@as(c_int, 13);
pub const __FLT16_MIN__ = @as(f16, 6.103515625e-5);
pub const __FLT_DENORM_MIN__ = @as(f32, 1.40129846e-45);
pub const __FLT_HAS_DENORM__ = "";
pub const __FLT_DIG__ = @as(c_int, 6);
pub const __FLT_DECIMAL_DIG__ = @as(c_int, 9);
pub const __FLT_EPSILON__ = @as(f32, 1.19209290e-7);
pub const __FLT_HAS_INFINITY__ = "";
pub const __FLT_HAS_QUIET_NAN__ = "";
pub const __FLT_MANT_DIG__ = @as(c_int, 24);
pub const __FLT_MAX_10_EXP__ = @as(c_int, 38);
pub const __FLT_MAX_EXP__ = @as(c_int, 128);
pub const __FLT_MAX__ = @as(f32, 3.40282347e+38);
pub const __FLT_MIN_10_EXP__ = -@as(c_int, 37);
pub const __FLT_MIN_EXP__ = -@as(c_int, 125);
pub const __FLT_MIN__ = @as(f32, 1.17549435e-38);
pub const __DBL_DENORM_MIN__ = @as(f64, 4.9406564584124654e-324);
pub const __DBL_HAS_DENORM__ = "";
pub const __DBL_DIG__ = @as(c_int, 15);
pub const __DBL_DECIMAL_DIG__ = @as(c_int, 17);
pub const __DBL_EPSILON__ = @as(f64, 2.2204460492503131e-16);
pub const __DBL_HAS_INFINITY__ = "";
pub const __DBL_HAS_QUIET_NAN__ = "";
pub const __DBL_MANT_DIG__ = @as(c_int, 53);
pub const __DBL_MAX_10_EXP__ = @as(c_int, 308);
pub const __DBL_MAX_EXP__ = @as(c_int, 1024);
pub const __DBL_MAX__ = @as(f64, 1.7976931348623157e+308);
pub const __DBL_MIN_10_EXP__ = -@as(c_int, 307);
pub const __DBL_MIN_EXP__ = -@as(c_int, 1021);
pub const __DBL_MIN__ = @as(f64, 2.2250738585072014e-308);
pub const __LDBL_DENORM_MIN__ = @as(c_longdouble, 3.64519953188247460253e-4951);
pub const __LDBL_HAS_DENORM__ = "";
pub const __LDBL_DIG__ = @as(c_int, 18);
pub const __LDBL_DECIMAL_DIG__ = @as(c_int, 21);
pub const __LDBL_EPSILON__ = @as(c_longdouble, 1.08420217248550443401e-19);
pub const __LDBL_HAS_INFINITY__ = "";
pub const __LDBL_HAS_QUIET_NAN__ = "";
pub const __LDBL_MANT_DIG__ = @as(c_int, 64);
pub const __LDBL_MAX_10_EXP__ = @as(c_int, 4932);
pub const __LDBL_MAX_EXP__ = @as(c_int, 16384);
pub const __LDBL_MAX__ = @as(c_longdouble, 1.18973149535723176502e+4932);
pub const __LDBL_MIN_10_EXP__ = -@as(c_int, 4931);
pub const __LDBL_MIN_EXP__ = -@as(c_int, 16381);
pub const __LDBL_MIN__ = @as(c_longdouble, 3.36210314311209350626e-4932);
pub const __FLT_EVAL_METHOD__ = @as(c_int, 0);
pub const __FLT_RADIX__ = @as(c_int, 2);
pub const __DECIMAL_DIG__ = __LDBL_DECIMAL_DIG__;
pub const __pic__ = @as(c_int, 2);
pub const __PIC__ = @as(c_int, 2);
pub const USING_GENERATED_CONFIG_H = @as(c_int, 1);
pub const STATIC_LIB = @as(c_int, 1);
pub const h_ = "";
pub const PLATFORM_LINUX = @as(c_int, 1);
pub const PLATFORM_UNIX = @as(c_int, 1);
pub const __STDC_VERSION_STDARG_H__ = @as(c_int, 0);
pub const va_start = @compileError("unable to translate macro: undefined identifier `__builtin_va_start`"); // /home/engus/.zvm/0.16.0/lib/compiler/aro/include/stdarg.h:12:9
pub const va_end = @compileError("unable to translate macro: undefined identifier `__builtin_va_end`"); // /home/engus/.zvm/0.16.0/lib/compiler/aro/include/stdarg.h:14:9
pub const va_arg = @compileError("unable to translate macro: undefined identifier `__builtin_va_arg`"); // /home/engus/.zvm/0.16.0/lib/compiler/aro/include/stdarg.h:15:9
pub const __va_copy = @compileError("unable to translate macro: undefined identifier `__builtin_va_copy`"); // /home/engus/.zvm/0.16.0/lib/compiler/aro/include/stdarg.h:18:9
pub const va_copy = @compileError("unable to translate macro: undefined identifier `__builtin_va_copy`"); // /home/engus/.zvm/0.16.0/lib/compiler/aro/include/stdarg.h:22:9
pub const _STRING_H = @as(c_int, 1);
pub const _FEATURES_H = @as(c_int, 1);
pub const __KERNEL_STRICT_NAMES = "";
pub const _DEFAULT_SOURCE = @as(c_int, 1);
pub const __USE_ISOC11 = @as(c_int, 1);
pub const __USE_POSIX_IMPLICITLY = @as(c_int, 1);
pub const _POSIX_SOURCE = @as(c_int, 1);
pub const _POSIX_C_SOURCE = @as(c_long, 202405);
pub const __USE_POSIX = @as(c_int, 1);
pub const __USE_POSIX2 = @as(c_int, 1);
pub const __USE_POSIX199309 = @as(c_int, 1);
pub const __USE_POSIX199506 = @as(c_int, 1);
pub const __USE_XOPEN2K = @as(c_int, 1);
pub const __USE_ISOC95 = @as(c_int, 1);
pub const __USE_ISOC99 = @as(c_int, 1);
pub const __USE_XOPEN2K8 = @as(c_int, 1);
pub const _ATFILE_SOURCE = @as(c_int, 1);
pub const __USE_XOPEN2K24 = @as(c_int, 1);
pub const __WORDSIZE = @as(c_int, 64);
pub const __WORDSIZE_TIME64_COMPAT32 = @as(c_int, 1);
pub const __SYSCALL_WORDSIZE = @as(c_int, 64);
pub const __TIMESIZE = __WORDSIZE;
pub const __USE_TIME_BITS64 = @as(c_int, 1);
pub const __USE_MISC = @as(c_int, 1);
pub const __USE_ATFILE = @as(c_int, 1);
pub const __USE_FORTIFY_LEVEL = @as(c_int, 0);
pub const _STDC_PREDEF_H = @as(c_int, 1);
pub const __STDC_IEC_559__ = @as(c_int, 1);
pub const __STDC_IEC_60559_BFP__ = @as(c_long, 201404);
pub const __STDC_IEC_559_COMPLEX__ = @as(c_int, 1);
pub const __STDC_IEC_60559_COMPLEX__ = @as(c_long, 201404);
pub const __STDC_ISO_10646__ = @as(c_long, 201706);
pub const __GNU_LIBRARY__ = @as(c_int, 6);
pub const _SYS_CDEFS_H = @as(c_int, 1);
pub const __LEAF = @compileError("unable to translate macro: undefined identifier `__leaf__`"); // /usr/include/sys/cdefs.h:65:11
pub const __LEAF_ATTR = @compileError("unable to translate macro: undefined identifier `__leaf__`"); // /usr/include/sys/cdefs.h:66:11
pub const __THROW = @compileError("unable to translate macro: undefined identifier `__nothrow__`"); // /usr/include/sys/cdefs.h:79:11
pub const __THROWNL = @compileError("unable to translate macro: undefined identifier `__nothrow__`"); // /usr/include/sys/cdefs.h:80:11
pub const __NTH = @compileError("unable to translate macro: undefined identifier `__nothrow__`"); // /usr/include/sys/cdefs.h:81:11
pub const __NTHNL = @compileError("unable to translate macro: undefined identifier `__nothrow__`"); // /usr/include/sys/cdefs.h:82:11
pub const __COLD = @compileError("unable to translate macro: undefined identifier `__cold__`"); // /usr/include/sys/cdefs.h:102:11
pub inline fn __P(args: anytype) @TypeOf(args) {
    _ = &args;
    return args;
}
pub inline fn __PMT(args: anytype) @TypeOf(args) {
    _ = &args;
    return args;
}
pub const __CONCAT = @compileError("unable to translate C expr: unexpected token '##'"); // /usr/include/sys/cdefs.h:131:9
pub const __STRING = @compileError("unable to translate C expr: unexpected token ''"); // /usr/include/sys/cdefs.h:132:9
pub const __ptr_t = ?*anyopaque;
pub const __BEGIN_DECLS = "";
pub const __END_DECLS = "";
pub const __attribute_overloadable__ = "";
pub inline fn __bos(ptr: anytype) @TypeOf(__builtin.object_size(ptr, __USE_FORTIFY_LEVEL > @as(c_int, 1))) {
    _ = &ptr;
    return __builtin.object_size(ptr, __USE_FORTIFY_LEVEL > @as(c_int, 1));
}
pub inline fn __bos0(ptr: anytype) @TypeOf(__builtin.object_size(ptr, @as(c_int, 0))) {
    _ = &ptr;
    return __builtin.object_size(ptr, @as(c_int, 0));
}
pub const __warnattr = @compileError("unable to translate macro: undefined identifier `__warning__`"); // /usr/include/sys/cdefs.h:366:10
pub const __errordecl = @compileError("unable to translate macro: undefined identifier `__error__`"); // /usr/include/sys/cdefs.h:367:10
pub const __flexarr = @compileError("unable to translate C expr: unexpected token '['"); // /usr/include/sys/cdefs.h:379:10
pub const __REDIRECT = @compileError("unable to translate C expr: unexpected token '__asm__'"); // /usr/include/sys/cdefs.h:410:10
pub const __REDIRECT_NTH = @compileError("unable to translate C expr: unexpected token '__asm__'"); // /usr/include/sys/cdefs.h:417:11
pub const __REDIRECT_NTHNL = @compileError("unable to translate C expr: unexpected token '__asm__'"); // /usr/include/sys/cdefs.h:419:11
pub const __ASMNAME = @compileError("unable to translate macro: undefined identifier `__USER_LABEL_PREFIX__`"); // /usr/include/sys/cdefs.h:422:10
pub inline fn __ASMNAME2(prefix: anytype, cname: anytype) @TypeOf(__STRING(prefix) ++ cname) {
    _ = &prefix;
    _ = &cname;
    return __STRING(prefix) ++ cname;
}
pub const __REDIRECT_FORTIFY = __REDIRECT;
pub const __REDIRECT_FORTIFY_NTH = __REDIRECT_NTH;
pub const __attribute_malloc__ = @compileError("unable to translate macro: undefined identifier `__malloc__`"); // /usr/include/sys/cdefs.h:452:10
pub const __attribute_alloc_size__ = @compileError("unable to translate macro: undefined identifier `__alloc_size__`"); // /usr/include/sys/cdefs.h:460:10
pub const __attribute_alloc_align__ = @compileError("unable to translate macro: undefined identifier `__alloc_align__`"); // /usr/include/sys/cdefs.h:469:10
pub const __attribute_pure__ = @compileError("unable to translate macro: undefined identifier `__pure__`"); // /usr/include/sys/cdefs.h:479:10
pub const __attribute_const__ = @compileError("unable to translate C expr: unexpected token '__attribute__'"); // /usr/include/sys/cdefs.h:486:10
pub const __attribute_maybe_unused__ = @compileError("unable to translate macro: undefined identifier `__unused__`"); // /usr/include/sys/cdefs.h:492:10
pub const __attribute_used__ = @compileError("unable to translate macro: undefined identifier `__used__`"); // /usr/include/sys/cdefs.h:501:10
pub const __attribute_noinline__ = @compileError("unable to translate macro: undefined identifier `__noinline__`"); // /usr/include/sys/cdefs.h:502:10
pub const __attribute_deprecated__ = @compileError("unable to translate macro: undefined identifier `__deprecated__`"); // /usr/include/sys/cdefs.h:510:10
pub const __attribute_deprecated_msg__ = @compileError("unable to translate macro: undefined identifier `__deprecated__`"); // /usr/include/sys/cdefs.h:520:10
pub const __attribute_format_arg__ = @compileError("unable to translate macro: undefined identifier `__format_arg__`"); // /usr/include/sys/cdefs.h:533:10
pub const __attribute_format_strfmon__ = @compileError("unable to translate macro: undefined identifier `__format__`"); // /usr/include/sys/cdefs.h:543:10
pub const __attribute_nonnull__ = @compileError("unable to translate macro: undefined identifier `__nonnull__`"); // /usr/include/sys/cdefs.h:555:11
pub inline fn __nonnull(params: anytype) @TypeOf(__attribute_nonnull__(params)) {
    _ = &params;
    return __attribute_nonnull__(params);
}
pub const __returns_nonnull = @compileError("unable to translate macro: undefined identifier `__returns_nonnull__`"); // /usr/include/sys/cdefs.h:568:10
pub const __attribute_warn_unused_result__ = @compileError("unable to translate macro: undefined identifier `__warn_unused_result__`"); // /usr/include/sys/cdefs.h:577:10
pub const __wur = "";
pub const __always_inline = @compileError("unable to translate macro: undefined identifier `__always_inline__`"); // /usr/include/sys/cdefs.h:595:10
pub const __attribute_artificial__ = @compileError("unable to translate macro: undefined identifier `__artificial__`"); // /usr/include/sys/cdefs.h:604:10
pub const __extern_inline = @compileError("unable to translate C expr: unexpected token 'extern'"); // /usr/include/sys/cdefs.h:626:11
pub const __extern_always_inline = @compileError("unable to translate C expr: unexpected token 'extern'"); // /usr/include/sys/cdefs.h:627:11
pub const __fortify_function = __extern_always_inline ++ __attribute_artificial__;
pub const __va_arg_pack = @compileError("unable to translate macro: undefined identifier `__builtin_va_arg_pack`"); // /usr/include/sys/cdefs.h:638:10
pub const __va_arg_pack_len = @compileError("unable to translate macro: undefined identifier `__builtin_va_arg_pack_len`"); // /usr/include/sys/cdefs.h:639:10
pub const __restrict_arr = @compileError("unable to translate C expr: unexpected token '__restrict'"); // /usr/include/sys/cdefs.h:666:10
pub const __attribute_nonstring__ = "";
pub inline fn __attribute_copy__(arg: anytype) void {
    _ = &arg;
    return;
}
pub const __LDOUBLE_REDIRECTS_TO_FLOAT128_ABI = @as(c_int, 0);
pub inline fn __LDBL_REDIR1(name: anytype, proto: anytype, alias: anytype) @TypeOf(name ++ proto) {
    _ = &name;
    _ = &proto;
    _ = &alias;
    return name ++ proto;
}
pub inline fn __LDBL_REDIR(name: anytype, proto: anytype) @TypeOf(name ++ proto) {
    _ = &name;
    _ = &proto;
    return name ++ proto;
}
pub inline fn __LDBL_REDIR1_NTH(name: anytype, proto: anytype, alias: anytype) @TypeOf(name ++ proto ++ __THROW) {
    _ = &name;
    _ = &proto;
    _ = &alias;
    return name ++ proto ++ __THROW;
}
pub inline fn __LDBL_REDIR_NTH(name: anytype, proto: anytype) @TypeOf(name ++ proto ++ __THROW) {
    _ = &name;
    _ = &proto;
    return name ++ proto ++ __THROW;
}
pub inline fn __LDBL_REDIR2_DECL(name: anytype) void {
    _ = &name;
    return;
}
pub inline fn __LDBL_REDIR_DECL(name: anytype) void {
    _ = &name;
    return;
}
pub inline fn __REDIRECT_LDBL(name: anytype, proto: anytype, alias: anytype) @TypeOf(__REDIRECT(name, proto, alias)) {
    _ = &name;
    _ = &proto;
    _ = &alias;
    return __REDIRECT(name, proto, alias);
}
pub inline fn __REDIRECT_NTH_LDBL(name: anytype, proto: anytype, alias: anytype) @TypeOf(__REDIRECT_NTH(name, proto, alias)) {
    _ = &name;
    _ = &proto;
    _ = &alias;
    return __REDIRECT_NTH(name, proto, alias);
}
pub const __HAVE_GENERIC_SELECTION = @as(c_int, 1);
pub inline fn __fortified_attr_access(a: anytype, o: anytype, s: anytype) void {
    _ = &a;
    _ = &o;
    _ = &s;
    return;
}
pub inline fn __attr_access(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __attr_access_none(argno: anytype) void {
    _ = &argno;
    return;
}
pub inline fn __attr_dealloc(dealloc: anytype, argno: anytype) void {
    _ = &dealloc;
    _ = &argno;
    return;
}
pub const __attr_dealloc_free = "";
pub const __attribute_returns_twice__ = @compileError("unable to translate macro: undefined identifier `__returns_twice__`"); // /usr/include/sys/cdefs.h:884:10
pub const __attribute_struct_may_alias__ = @compileError("unable to translate macro: undefined identifier `__may_alias__`"); // /usr/include/sys/cdefs.h:893:10
pub const __stub___compat_bdflush = "";
pub const __stub_chflags = "";
pub const __stub_fchflags = "";
pub const __stub_gtty = "";
pub const __stub_revoke = "";
pub const __stub_setlogin = "";
pub const __stub_sigreturn = "";
pub const __stub_stty = "";
pub const __need_size_t = "";
pub const __need_NULL = "";
pub const __STDC_VERSION_STDDEF_H__ = @as(c_long, 202311);
pub const NULL = __helpers.cast(?*anyopaque, @as(c_int, 0));
pub const offsetof = @compileError("unable to translate macro: undefined identifier `__builtin_offsetof`"); // /home/engus/.zvm/0.16.0/lib/compiler/aro/include/stddef.h:18:9
pub const _BITS_TYPES_LOCALE_T_H = @as(c_int, 1);
pub const _BITS_TYPES___LOCALE_T_H = @as(c_int, 1);
pub const _STRINGS_H = @as(c_int, 1);
pub const _WCHAR_H = @as(c_int, 1);
pub const _BITS_FLOATN_H = "";
pub const __HAVE_FLOAT128 = @as(c_int, 1);
pub const __HAVE_DISTINCT_FLOAT128 = @as(c_int, 1);
pub const __HAVE_FLOAT64X = @as(c_int, 1);
pub const __HAVE_FLOAT64X_LONG_DOUBLE = @as(c_int, 1);
pub const __f128 = @compileError("unable to translate macro: undefined identifier `f128`"); // /usr/include/bits/floatn.h:72:12
pub const __CFLOAT128 = @compileError("unable to translate: invalid numeric type"); // /usr/include/bits/floatn.h:86:12
pub const _BITS_FLOATN_COMMON_H = "";
pub const __HAVE_FLOAT16 = @as(c_int, 0);
pub const __HAVE_FLOAT32 = @as(c_int, 1);
pub const __HAVE_FLOAT64 = @as(c_int, 1);
pub const __HAVE_FLOAT32X = @as(c_int, 1);
pub const __HAVE_FLOAT128X = @as(c_int, 0);
pub const __HAVE_DISTINCT_FLOAT16 = __HAVE_FLOAT16;
pub const __HAVE_DISTINCT_FLOAT32 = @as(c_int, 0);
pub const __HAVE_DISTINCT_FLOAT64 = @as(c_int, 0);
pub const __HAVE_DISTINCT_FLOAT32X = @as(c_int, 0);
pub const __HAVE_DISTINCT_FLOAT64X = @as(c_int, 0);
pub const __HAVE_DISTINCT_FLOAT128X = __HAVE_FLOAT128X;
pub const __HAVE_FLOAT128_UNLIKE_LDBL = (__HAVE_DISTINCT_FLOAT128 != 0) and (__LDBL_MANT_DIG__ != @as(c_int, 113));
pub const __HAVE_FLOATN_NOT_TYPEDEF = @as(c_int, 1);
pub const __f32 = @compileError("unable to translate macro: undefined identifier `f32`"); // /usr/include/bits/floatn-common.h:93:12
pub const __f64 = @compileError("unable to translate macro: undefined identifier `f64`"); // /usr/include/bits/floatn-common.h:105:12
pub const __f32x = @compileError("unable to translate macro: undefined identifier `f32x`"); // /usr/include/bits/floatn-common.h:113:12
pub const __f64x = @compileError("unable to translate macro: undefined identifier `f64x`"); // /usr/include/bits/floatn-common.h:125:12
pub const __CFLOAT32 = @compileError("unable to translate: invalid numeric type"); // /usr/include/bits/floatn-common.h:151:12
pub const __CFLOAT64 = @compileError("unable to translate: invalid numeric type"); // /usr/include/bits/floatn-common.h:163:12
pub const __CFLOAT32X = @compileError("unable to translate: invalid numeric type"); // /usr/include/bits/floatn-common.h:171:12
pub const __CFLOAT64X = @compileError("unable to translate: invalid numeric type"); // /usr/include/bits/floatn-common.h:183:12
pub const __need_wchar_t = "";
pub const __need___va_list = "";
pub const _VA_LIST_DEFINED = "";
pub const _BITS_WCHAR_H = @as(c_int, 1);
pub const __WCHAR_MAX = __WCHAR_MAX__;
pub const __WCHAR_MIN = -__WCHAR_MAX - @as(c_int, 1);
pub const __wint_t_defined = @as(c_int, 1);
pub const _WINT_T = @as(c_int, 1);
pub const __mbstate_t_defined = @as(c_int, 1);
pub const ____mbstate_t_defined = @as(c_int, 1);
pub const ____FILE_defined = @as(c_int, 1);
pub const __FILE_defined = @as(c_int, 1);
pub const WCHAR_MIN = __WCHAR_MIN;
pub const WCHAR_MAX = __WCHAR_MAX;
pub const WEOF = __helpers.promoteIntLiteral(c_uint, 0xffffffff, .hex);
pub const __attr_dealloc_fclose = "";
pub const __CLANG_STDINT_H = "";
pub const _STDINT_H = @as(c_int, 1);
pub const _BITS_TYPES_H = @as(c_int, 1);
pub const __S16_TYPE = c_short;
pub const __U16_TYPE = c_ushort;
pub const __S32_TYPE = c_int;
pub const __U32_TYPE = c_uint;
pub const __SLONGWORD_TYPE = c_long;
pub const __ULONGWORD_TYPE = c_ulong;
pub const __SQUAD_TYPE = c_long;
pub const __UQUAD_TYPE = c_ulong;
pub const __SWORD_TYPE = c_long;
pub const __UWORD_TYPE = c_ulong;
pub const __SLONG32_TYPE = c_int;
pub const __ULONG32_TYPE = c_uint;
pub const __S64_TYPE = c_long;
pub const __U64_TYPE = c_ulong;
pub const _BITS_TYPESIZES_H = @as(c_int, 1);
pub const __SYSCALL_SLONG_TYPE = __SLONGWORD_TYPE;
pub const __SYSCALL_ULONG_TYPE = __ULONGWORD_TYPE;
pub const __DEV_T_TYPE = __UQUAD_TYPE;
pub const __UID_T_TYPE = __U32_TYPE;
pub const __GID_T_TYPE = __U32_TYPE;
pub const __INO_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const __INO64_T_TYPE = __UQUAD_TYPE;
pub const __MODE_T_TYPE = __U32_TYPE;
pub const __NLINK_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const __FSWORD_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __OFF_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __OFF64_T_TYPE = __SQUAD_TYPE;
pub const __PID_T_TYPE = __S32_TYPE;
pub const __RLIM_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const __RLIM64_T_TYPE = __UQUAD_TYPE;
pub const __BLKCNT_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __BLKCNT64_T_TYPE = __SQUAD_TYPE;
pub const __FSBLKCNT_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const __FSBLKCNT64_T_TYPE = __UQUAD_TYPE;
pub const __FSFILCNT_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const __FSFILCNT64_T_TYPE = __UQUAD_TYPE;
pub const __ID_T_TYPE = __U32_TYPE;
pub const __CLOCK_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __TIME_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __USECONDS_T_TYPE = __U32_TYPE;
pub const __SUSECONDS_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __SUSECONDS64_T_TYPE = __SQUAD_TYPE;
pub const __DADDR_T_TYPE = __S32_TYPE;
pub const __KEY_T_TYPE = __S32_TYPE;
pub const __CLOCKID_T_TYPE = __S32_TYPE;
pub const __TIMER_T_TYPE = ?*anyopaque;
pub const __BLKSIZE_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __FSID_T_TYPE = @compileError("unable to translate macro: undefined identifier `__val`"); // /usr/include/bits/typesizes.h:73:9
pub const __SSIZE_T_TYPE = __SWORD_TYPE;
pub const __CPU_MASK_TYPE = __SYSCALL_ULONG_TYPE;
pub const __OFF_T_MATCHES_OFF64_T = @as(c_int, 1);
pub const __INO_T_MATCHES_INO64_T = @as(c_int, 1);
pub const __RLIM_T_MATCHES_RLIM64_T = @as(c_int, 1);
pub const __STATFS_MATCHES_STATFS64 = @as(c_int, 1);
pub const __KERNEL_OLD_TIMEVAL_MATCHES_TIMEVAL64 = @as(c_int, 1);
pub const __FD_SETSIZE = @as(c_int, 1024);
pub const _BITS_TIME64_H = @as(c_int, 1);
pub const __TIME64_T_TYPE = __TIME_T_TYPE;
pub const _BITS_STDINT_INTN_H = @as(c_int, 1);
pub const _BITS_STDINT_UINTN_H = @as(c_int, 1);
pub const _BITS_STDINT_LEAST_H = @as(c_int, 1);
pub const __intptr_t_defined = "";
pub const __INT64_C = __helpers.L_SUFFIX;
pub const __UINT64_C = __helpers.UL_SUFFIX;
pub const INT8_MIN = -@as(c_int, 128);
pub const INT16_MIN = -@as(c_int, 32767) - @as(c_int, 1);
pub const INT32_MIN = -__helpers.promoteIntLiteral(c_int, 2147483647, .decimal) - @as(c_int, 1);
pub const INT64_MIN = -__INT64_C(__helpers.promoteIntLiteral(c_int, 9223372036854775807, .decimal)) - @as(c_int, 1);
pub const INT8_MAX = @as(c_int, 127);
pub const INT16_MAX = @as(c_int, 32767);
pub const INT32_MAX = __helpers.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const INT64_MAX = __INT64_C(__helpers.promoteIntLiteral(c_int, 9223372036854775807, .decimal));
pub const UINT8_MAX = @as(c_int, 255);
pub const UINT16_MAX = __helpers.promoteIntLiteral(c_int, 65535, .decimal);
pub const UINT32_MAX = __helpers.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const UINT64_MAX = __UINT64_C(__helpers.promoteIntLiteral(c_int, 18446744073709551615, .decimal));
pub const INT_LEAST8_MIN = -@as(c_int, 128);
pub const INT_LEAST16_MIN = -@as(c_int, 32767) - @as(c_int, 1);
pub const INT_LEAST32_MIN = -__helpers.promoteIntLiteral(c_int, 2147483647, .decimal) - @as(c_int, 1);
pub const INT_LEAST64_MIN = -__INT64_C(__helpers.promoteIntLiteral(c_int, 9223372036854775807, .decimal)) - @as(c_int, 1);
pub const INT_LEAST8_MAX = @as(c_int, 127);
pub const INT_LEAST16_MAX = @as(c_int, 32767);
pub const INT_LEAST32_MAX = __helpers.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const INT_LEAST64_MAX = __INT64_C(__helpers.promoteIntLiteral(c_int, 9223372036854775807, .decimal));
pub const UINT_LEAST8_MAX = @as(c_int, 255);
pub const UINT_LEAST16_MAX = __helpers.promoteIntLiteral(c_int, 65535, .decimal);
pub const UINT_LEAST32_MAX = __helpers.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const UINT_LEAST64_MAX = __UINT64_C(__helpers.promoteIntLiteral(c_int, 18446744073709551615, .decimal));
pub const INT_FAST8_MIN = -@as(c_int, 128);
pub const INT_FAST16_MIN = -__helpers.promoteIntLiteral(c_long, 9223372036854775807, .decimal) - @as(c_int, 1);
pub const INT_FAST32_MIN = -__helpers.promoteIntLiteral(c_long, 9223372036854775807, .decimal) - @as(c_int, 1);
pub const INT_FAST64_MIN = -__INT64_C(__helpers.promoteIntLiteral(c_int, 9223372036854775807, .decimal)) - @as(c_int, 1);
pub const INT_FAST8_MAX = @as(c_int, 127);
pub const INT_FAST16_MAX = __helpers.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const INT_FAST32_MAX = __helpers.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const INT_FAST64_MAX = __INT64_C(__helpers.promoteIntLiteral(c_int, 9223372036854775807, .decimal));
pub const UINT_FAST8_MAX = @as(c_int, 255);
pub const UINT_FAST16_MAX = __helpers.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const UINT_FAST32_MAX = __helpers.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const UINT_FAST64_MAX = __UINT64_C(__helpers.promoteIntLiteral(c_int, 18446744073709551615, .decimal));
pub const INTPTR_MIN = -__helpers.promoteIntLiteral(c_long, 9223372036854775807, .decimal) - @as(c_int, 1);
pub const INTPTR_MAX = __helpers.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const UINTPTR_MAX = __helpers.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const INTMAX_MIN = -__INT64_C(__helpers.promoteIntLiteral(c_int, 9223372036854775807, .decimal)) - @as(c_int, 1);
pub const INTMAX_MAX = __INT64_C(__helpers.promoteIntLiteral(c_int, 9223372036854775807, .decimal));
pub const UINTMAX_MAX = __UINT64_C(__helpers.promoteIntLiteral(c_int, 18446744073709551615, .decimal));
pub const PTRDIFF_MIN = -__helpers.promoteIntLiteral(c_long, 9223372036854775807, .decimal) - @as(c_int, 1);
pub const PTRDIFF_MAX = __helpers.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const SIG_ATOMIC_MIN = -__helpers.promoteIntLiteral(c_int, 2147483647, .decimal) - @as(c_int, 1);
pub const SIG_ATOMIC_MAX = __helpers.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const SIZE_MAX = __helpers.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const WINT_MIN = @as(c_uint, 0);
pub const WINT_MAX = __helpers.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub inline fn INT8_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub inline fn INT16_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub inline fn INT32_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub const INT64_C = __helpers.L_SUFFIX;
pub inline fn UINT8_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub inline fn UINT16_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub const UINT32_C = __helpers.U_SUFFIX;
pub const UINT64_C = __helpers.UL_SUFFIX;
pub const INTMAX_C = __helpers.L_SUFFIX;
pub const UINTMAX_C = __helpers.UL_SUFFIX;
pub const __CLANG_INTTYPES_H = "";
pub const _INTTYPES_H = @as(c_int, 1);
pub const ____gwchar_t_defined = @as(c_int, 1);
pub const __PRI64_PREFIX = "l";
pub const __PRIPTR_PREFIX = "l";
pub const PRId8 = "hhd";
pub const PRId16 = "hd";
pub const PRId32 = "d";
pub const PRId64 = __PRI64_PREFIX ++ "d";
pub const PRIdLEAST8 = "hhd";
pub const PRIdLEAST16 = "hd";
pub const PRIdLEAST32 = "d";
pub const PRIdLEAST64 = __PRI64_PREFIX ++ "d";
pub const PRIdFAST8 = "hhd";
pub const PRIdFAST16 = __PRIPTR_PREFIX ++ "d";
pub const PRIdFAST32 = __PRIPTR_PREFIX ++ "d";
pub const PRIdFAST64 = __PRI64_PREFIX ++ "d";
pub const PRIi8 = "hhi";
pub const PRIi16 = "hi";
pub const PRIi32 = "i";
pub const PRIi64 = __PRI64_PREFIX ++ "i";
pub const PRIiLEAST8 = "hhi";
pub const PRIiLEAST16 = "hi";
pub const PRIiLEAST32 = "i";
pub const PRIiLEAST64 = __PRI64_PREFIX ++ "i";
pub const PRIiFAST8 = "hhi";
pub const PRIiFAST16 = __PRIPTR_PREFIX ++ "i";
pub const PRIiFAST32 = __PRIPTR_PREFIX ++ "i";
pub const PRIiFAST64 = __PRI64_PREFIX ++ "i";
pub const PRIo8 = "hho";
pub const PRIo16 = "ho";
pub const PRIo32 = "o";
pub const PRIo64 = __PRI64_PREFIX ++ "o";
pub const PRIoLEAST8 = "hho";
pub const PRIoLEAST16 = "ho";
pub const PRIoLEAST32 = "o";
pub const PRIoLEAST64 = __PRI64_PREFIX ++ "o";
pub const PRIoFAST8 = "hho";
pub const PRIoFAST16 = __PRIPTR_PREFIX ++ "o";
pub const PRIoFAST32 = __PRIPTR_PREFIX ++ "o";
pub const PRIoFAST64 = __PRI64_PREFIX ++ "o";
pub const PRIu8 = "hhu";
pub const PRIu16 = "hu";
pub const PRIu32 = "u";
pub const PRIu64 = __PRI64_PREFIX ++ "u";
pub const PRIuLEAST8 = "hhu";
pub const PRIuLEAST16 = "hu";
pub const PRIuLEAST32 = "u";
pub const PRIuLEAST64 = __PRI64_PREFIX ++ "u";
pub const PRIuFAST8 = "hhu";
pub const PRIuFAST16 = __PRIPTR_PREFIX ++ "u";
pub const PRIuFAST32 = __PRIPTR_PREFIX ++ "u";
pub const PRIuFAST64 = __PRI64_PREFIX ++ "u";
pub const PRIx8 = "hhx";
pub const PRIx16 = "hx";
pub const PRIx32 = "x";
pub const PRIx64 = __PRI64_PREFIX ++ "x";
pub const PRIxLEAST8 = "hhx";
pub const PRIxLEAST16 = "hx";
pub const PRIxLEAST32 = "x";
pub const PRIxLEAST64 = __PRI64_PREFIX ++ "x";
pub const PRIxFAST8 = "hhx";
pub const PRIxFAST16 = __PRIPTR_PREFIX ++ "x";
pub const PRIxFAST32 = __PRIPTR_PREFIX ++ "x";
pub const PRIxFAST64 = __PRI64_PREFIX ++ "x";
pub const PRIX8 = "hhX";
pub const PRIX16 = "hX";
pub const PRIX32 = "X";
pub const PRIX64 = __PRI64_PREFIX ++ "X";
pub const PRIXLEAST8 = "hhX";
pub const PRIXLEAST16 = "hX";
pub const PRIXLEAST32 = "X";
pub const PRIXLEAST64 = __PRI64_PREFIX ++ "X";
pub const PRIXFAST8 = "hhX";
pub const PRIXFAST16 = __PRIPTR_PREFIX ++ "X";
pub const PRIXFAST32 = __PRIPTR_PREFIX ++ "X";
pub const PRIXFAST64 = __PRI64_PREFIX ++ "X";
pub const PRIdMAX = __PRI64_PREFIX ++ "d";
pub const PRIiMAX = __PRI64_PREFIX ++ "i";
pub const PRIoMAX = __PRI64_PREFIX ++ "o";
pub const PRIuMAX = __PRI64_PREFIX ++ "u";
pub const PRIxMAX = __PRI64_PREFIX ++ "x";
pub const PRIXMAX = __PRI64_PREFIX ++ "X";
pub const PRIdPTR = __PRIPTR_PREFIX ++ "d";
pub const PRIiPTR = __PRIPTR_PREFIX ++ "i";
pub const PRIoPTR = __PRIPTR_PREFIX ++ "o";
pub const PRIuPTR = __PRIPTR_PREFIX ++ "u";
pub const PRIxPTR = __PRIPTR_PREFIX ++ "x";
pub const PRIXPTR = __PRIPTR_PREFIX ++ "X";
pub const SCNd8 = "hhd";
pub const SCNd16 = "hd";
pub const SCNd32 = "d";
pub const SCNd64 = __PRI64_PREFIX ++ "d";
pub const SCNdLEAST8 = "hhd";
pub const SCNdLEAST16 = "hd";
pub const SCNdLEAST32 = "d";
pub const SCNdLEAST64 = __PRI64_PREFIX ++ "d";
pub const SCNdFAST8 = "hhd";
pub const SCNdFAST16 = __PRIPTR_PREFIX ++ "d";
pub const SCNdFAST32 = __PRIPTR_PREFIX ++ "d";
pub const SCNdFAST64 = __PRI64_PREFIX ++ "d";
pub const SCNi8 = "hhi";
pub const SCNi16 = "hi";
pub const SCNi32 = "i";
pub const SCNi64 = __PRI64_PREFIX ++ "i";
pub const SCNiLEAST8 = "hhi";
pub const SCNiLEAST16 = "hi";
pub const SCNiLEAST32 = "i";
pub const SCNiLEAST64 = __PRI64_PREFIX ++ "i";
pub const SCNiFAST8 = "hhi";
pub const SCNiFAST16 = __PRIPTR_PREFIX ++ "i";
pub const SCNiFAST32 = __PRIPTR_PREFIX ++ "i";
pub const SCNiFAST64 = __PRI64_PREFIX ++ "i";
pub const SCNu8 = "hhu";
pub const SCNu16 = "hu";
pub const SCNu32 = "u";
pub const SCNu64 = __PRI64_PREFIX ++ "u";
pub const SCNuLEAST8 = "hhu";
pub const SCNuLEAST16 = "hu";
pub const SCNuLEAST32 = "u";
pub const SCNuLEAST64 = __PRI64_PREFIX ++ "u";
pub const SCNuFAST8 = "hhu";
pub const SCNuFAST16 = __PRIPTR_PREFIX ++ "u";
pub const SCNuFAST32 = __PRIPTR_PREFIX ++ "u";
pub const SCNuFAST64 = __PRI64_PREFIX ++ "u";
pub const SCNo8 = "hho";
pub const SCNo16 = "ho";
pub const SCNo32 = "o";
pub const SCNo64 = __PRI64_PREFIX ++ "o";
pub const SCNoLEAST8 = "hho";
pub const SCNoLEAST16 = "ho";
pub const SCNoLEAST32 = "o";
pub const SCNoLEAST64 = __PRI64_PREFIX ++ "o";
pub const SCNoFAST8 = "hho";
pub const SCNoFAST16 = __PRIPTR_PREFIX ++ "o";
pub const SCNoFAST32 = __PRIPTR_PREFIX ++ "o";
pub const SCNoFAST64 = __PRI64_PREFIX ++ "o";
pub const SCNx8 = "hhx";
pub const SCNx16 = "hx";
pub const SCNx32 = "x";
pub const SCNx64 = __PRI64_PREFIX ++ "x";
pub const SCNxLEAST8 = "hhx";
pub const SCNxLEAST16 = "hx";
pub const SCNxLEAST32 = "x";
pub const SCNxLEAST64 = __PRI64_PREFIX ++ "x";
pub const SCNxFAST8 = "hhx";
pub const SCNxFAST16 = __PRIPTR_PREFIX ++ "x";
pub const SCNxFAST32 = __PRIPTR_PREFIX ++ "x";
pub const SCNxFAST64 = __PRI64_PREFIX ++ "x";
pub const SCNdMAX = __PRI64_PREFIX ++ "d";
pub const SCNiMAX = __PRI64_PREFIX ++ "i";
pub const SCNoMAX = __PRI64_PREFIX ++ "o";
pub const SCNuMAX = __PRI64_PREFIX ++ "u";
pub const SCNxMAX = __PRI64_PREFIX ++ "x";
pub const SCNdPTR = __PRIPTR_PREFIX ++ "d";
pub const SCNiPTR = __PRIPTR_PREFIX ++ "i";
pub const SCNoPTR = __PRIPTR_PREFIX ++ "o";
pub const SCNuPTR = __PRIPTR_PREFIX ++ "u";
pub const SCNxPTR = __PRIPTR_PREFIX ++ "x";
pub const INCLUDE_STDBOOL_H = "";
pub const true_val = @as(c_int, 1);
pub const false_val = @as(c_int, 0);
pub const __bool_true_false_are_defined = @as(c_int, 1);
pub const alloca = @compileError("unable to translate macro: undefined identifier `__builtin_alloca`"); // include/SDL3/SDL_stdinc.h:117:12
pub const COMPILE_TIME_ASSERT = @compileError("unable to translate C expr: unexpected token '_Static_assert'"); // include/SDL3/SDL_stdinc.h:230:9
pub inline fn arraysize(array: anytype) @TypeOf(__helpers.div(__helpers.sizeof(array), __helpers.sizeof(array[@as(usize, @intCast(@as(c_int, 0)))]))) {
    _ = &array;
    return __helpers.div(__helpers.sizeof(array), __helpers.sizeof(array[@as(usize, @intCast(@as(c_int, 0)))]));
}
pub const STRINGIFY_ARG = @compileError("unable to translate C expr: unexpected token ''"); // include/SDL3/SDL_stdinc.h:261:9
pub const reinterpret_cast = __helpers.CAST_OR_CALL;
pub const static_cast = __helpers.CAST_OR_CALL;
pub const const_cast = __helpers.CAST_OR_CALL;
pub inline fn FOURCC(A: anytype, B: anytype, C: anytype, D: anytype) @TypeOf((((static_cast(Uint32, static_cast(Uint8, A)) << @as(c_int, 0)) | (static_cast(Uint32, static_cast(Uint8, B)) << @as(c_int, 8))) | (static_cast(Uint32, static_cast(Uint8, C)) << @as(c_int, 16))) | (static_cast(Uint32, static_cast(Uint8, D)) << @as(c_int, 24))) {
    _ = &A;
    _ = &B;
    _ = &C;
    _ = &D;
    return (((static_cast(Uint32, static_cast(Uint8, A)) << @as(c_int, 0)) | (static_cast(Uint32, static_cast(Uint8, B)) << @as(c_int, 8))) | (static_cast(Uint32, static_cast(Uint8, C)) << @as(c_int, 16))) | (static_cast(Uint32, static_cast(Uint8, D)) << @as(c_int, 24));
}
pub inline fn SINT64_C(c: anytype) @TypeOf(INT64_C(c)) {
    _ = &c;
    return INT64_C(c);
}
pub const MAX_SINT8 = __helpers.cast(Sint8, @as(c_int, 0x7F));
pub const MIN_SINT8 = __helpers.cast(Sint8, ~@as(c_int, 0x7F));
pub const MAX_UINT8 = __helpers.cast(Uint8, @as(c_int, 0xFF));
pub const MIN_UINT8 = __helpers.cast(Uint8, @as(c_int, 0x00));
pub const MAX_SINT16 = __helpers.cast(Sint16, @as(c_int, 0x7FFF));
pub const MIN_SINT16 = __helpers.cast(Sint16, ~@as(c_int, 0x7FFF));
pub const MAX_UINT16 = __helpers.cast(Uint16, __helpers.promoteIntLiteral(c_int, 0xFFFF, .hex));
pub const MIN_UINT16 = __helpers.cast(Uint16, @as(c_int, 0x0000));
pub const MAX_SINT32 = __helpers.cast(Sint32, __helpers.promoteIntLiteral(c_int, 0x7FFFFFFF, .hex));
pub const MIN_SINT32 = __helpers.cast(Sint32, ~__helpers.promoteIntLiteral(c_int, 0x7FFFFFFF, .hex));
pub const MAX_UINT32 = __helpers.cast(Uint32, __helpers.promoteIntLiteral(c_uint, 0xFFFFFFFF, .hex));
pub const MIN_UINT32 = __helpers.cast(Uint32, @as(c_int, 0x00000000));
pub const MAX_SINT64 = SINT64_C(__helpers.promoteIntLiteral(c_int, 0x7FFFFFFFFFFFFFFF, .hex));
pub const MIN_SINT64 = ~SINT64_C(__helpers.promoteIntLiteral(c_int, 0x7FFFFFFFFFFFFFFF, .hex));
pub const MAX_UINT64 = UINT64_C(__helpers.promoteIntLiteral(c_int, 0xFFFFFFFFFFFFFFFF, .hex));
pub const MIN_UINT64 = UINT64_C(@as(c_int, 0x0000000000000000));
pub const MAX_TIME = MAX_SINT64;
pub const MIN_TIME = MIN_SINT64;
pub const FLT_EPSILON = @as(f32, 1.1920928955078125e-07);
pub const PRIs64 = PRId64;
pub const PRIs32 = PRId32;
pub const PRILL_PREFIX = "ll";
pub const PRILLd = PRILL_PREFIX ++ "d";
pub const PRILLu = PRILL_PREFIX ++ "u";
pub const PRILLx = PRILL_PREFIX ++ "x";
pub const PRILLX = PRILL_PREFIX ++ "X";
pub inline fn IN_BYTECAP(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn INOUT_Z_CAP(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn OUT_Z_CAP(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn OUT_CAP(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn OUT_BYTECAP(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn OUT_Z_BYTECAP(x: anytype) void {
    _ = &x;
    return;
}
pub const PRINTF_FORMAT_STRING = "";
pub const SCANF_FORMAT_STRING = "";
pub const PRINTF_VARARG_FUNC = @compileError("unable to translate macro: undefined identifier `format`"); // include/SDL3/SDL_stdinc.h:1151:9
pub const PRINTF_VARARG_FUNCV = @compileError("unable to translate macro: undefined identifier `format`"); // include/SDL3/SDL_stdinc.h:1152:9
pub const SCANF_VARARG_FUNC = @compileError("unable to translate macro: undefined identifier `format`"); // include/SDL3/SDL_stdinc.h:1153:9
pub const SCANF_VARARG_FUNCV = @compileError("unable to translate macro: undefined identifier `format`"); // include/SDL3/SDL_stdinc.h:1154:9
pub inline fn WPRINTF_VARARG_FUNC(fmtargnumber: anytype) void {
    _ = &fmtargnumber;
    return;
}
pub inline fn WPRINTF_VARARG_FUNCV(fmtargnumber: anytype) void {
    _ = &fmtargnumber;
    return;
}
pub const RESTRICT = @compileError("unable to translate C expr: unexpected token 'restrict'"); // include/SDL3/SDL_begin_code.h:331:13
pub inline fn HAS_BUILTIN(x: anytype) @TypeOf(__builtin.has_builtin(x)) {
    _ = &x;
    return __builtin.has_builtin(x);
}
pub const DEPRECATED = @compileError("unable to translate macro: undefined identifier `deprecated`"); // include/SDL3/SDL_begin_code.h:349:13
pub const UNUSED = @compileError("unable to translate macro: undefined identifier `unused`"); // include/SDL3/SDL_begin_code.h:359:13
pub const DECLSPEC = @compileError("unable to translate macro: undefined identifier `visibility`"); // include/SDL3/SDL_begin_code.h:375:12
pub const SDLCALL = "";
pub const INLINE = @compileError("unable to translate C expr: unexpected token '__inline__'"); // include/SDL3/SDL_begin_code.h:416:9
pub const FORCE_INLINE = @compileError("unable to translate macro: undefined identifier `always_inline`"); // include/SDL3/SDL_begin_code.h:437:9
pub const NORETURN = @compileError("unable to translate macro: undefined identifier `noreturn`"); // include/SDL3/SDL_begin_code.h:445:9
pub const ANALYZER_NORETURN = "";
pub const FALLTHROUGH = @compileError("unable to translate macro: undefined identifier `__fallthrough__`"); // include/SDL3/SDL_begin_code.h:487:9
pub const NODISCARD = @compileError("unable to translate macro: undefined identifier `warn_unused_result`"); // include/SDL3/SDL_begin_code.h:500:9
pub const MALLOC = @compileError("unable to translate macro: undefined identifier `malloc`"); // include/SDL3/SDL_begin_code.h:510:9
pub const ALLOC_SIZE = @compileError("unable to translate macro: undefined identifier `alloc_size`"); // include/SDL3/SDL_begin_code.h:522:9
pub const ALLOC_SIZE2 = @compileError("unable to translate macro: undefined identifier `alloc_size`"); // include/SDL3/SDL_begin_code.h:532:9
pub const ALIGNED = @compileError("unable to translate macro: undefined identifier `aligned`"); // include/SDL3/SDL_begin_code.h:542:9
pub const INIT_INTERFACE = @compileError("unable to translate C expr: unexpected token 'do'"); // include/SDL3/SDL_stdinc.h:1256:9
pub inline fn stack_alloc(@"type": anytype, count: anytype) @TypeOf([*c]@"type" ++ alloca(__helpers.sizeof(@"type") * count)) {
    _ = &@"type";
    _ = &count;
    return [*c]@"type" ++ alloca(__helpers.sizeof(@"type") * count);
}
pub inline fn stack_free(data: anytype) void {
    _ = &data;
    return;
}
pub inline fn min(x: anytype, y: anytype) @TypeOf(if (__helpers.cast(bool, x < y)) x else y) {
    _ = &x;
    _ = &y;
    return if (__helpers.cast(bool, x < y)) x else y;
}
pub inline fn max(x: anytype, y: anytype) @TypeOf(if (__helpers.cast(bool, x > y)) x else y) {
    _ = &x;
    _ = &y;
    return if (__helpers.cast(bool, x > y)) x else y;
}
pub inline fn clamp(x: anytype, a: anytype, b: anytype) @TypeOf(if (__helpers.cast(bool, x < a)) a else if (__helpers.cast(bool, x > b)) b else x) {
    _ = &x;
    _ = &a;
    _ = &b;
    return if (__helpers.cast(bool, x < a)) a else if (__helpers.cast(bool, x > b)) b else x;
}
pub const copyp = @compileError("unable to translate C expr: unexpected token '{'"); // include/SDL3/SDL_stdinc.h:2539:9
pub inline fn zero(x: anytype) @TypeOf(SDL_memset(&x, @as(c_int, 0), __helpers.sizeof(x))) {
    _ = &x;
    return SDL_memset(&x, @as(c_int, 0), __helpers.sizeof(x));
}
pub inline fn zerop(x: anytype) @TypeOf(SDL_memset(x, @as(c_int, 0), __helpers.sizeof(x.*))) {
    _ = &x;
    return SDL_memset(x, @as(c_int, 0), __helpers.sizeof(x.*));
}
pub inline fn zeroa(x: anytype) @TypeOf(SDL_memset(x, @as(c_int, 0), __helpers.sizeof(x))) {
    _ = &x;
    return SDL_memset(x, @as(c_int, 0), __helpers.sizeof(x));
}
pub const INVALID_UNICODE_CODEPOINT = __helpers.promoteIntLiteral(c_int, 0xFFFD, .hex);
pub const PI_D = @as(f64, 3.141592653589793238462643383279502884);
pub const PI_F = @as(f32, 3.141592653589793238462643383279502884);
pub const ICONV_ERROR = __helpers.cast(usize, -@as(c_int, 1));
pub const ICONV_E2BIG = __helpers.cast(usize, -@as(c_int, 2));
pub const ICONV_EILSEQ = __helpers.cast(usize, -@as(c_int, 3));
pub const ICONV_EINVAL = __helpers.cast(usize, -@as(c_int, 4));
pub inline fn iconv_utf8_locale(S: anytype) @TypeOf(SDL_iconv_string("", "UTF-8", S, SDL_strlen(S) + @as(c_int, 1))) {
    _ = &S;
    return SDL_iconv_string("", "UTF-8", S, SDL_strlen(S) + @as(c_int, 1));
}
pub inline fn iconv_utf8_ucs2(S: anytype) @TypeOf(reinterpret_cast([*c]Uint16, SDL_iconv_string("UCS-2", "UTF-8", S, SDL_strlen(S) + @as(c_int, 1)))) {
    _ = &S;
    return reinterpret_cast([*c]Uint16, SDL_iconv_string("UCS-2", "UTF-8", S, SDL_strlen(S) + @as(c_int, 1)));
}
pub inline fn iconv_utf8_ucs4(S: anytype) @TypeOf(reinterpret_cast([*c]Uint32, SDL_iconv_string("UCS-4", "UTF-8", S, SDL_strlen(S) + @as(c_int, 1)))) {
    _ = &S;
    return reinterpret_cast([*c]Uint32, SDL_iconv_string("UCS-4", "UTF-8", S, SDL_strlen(S) + @as(c_int, 1)));
}
pub const iconv_wchar_utf8 = @compileError("unable to translate C expr: unexpected token 'const'"); // include/SDL3/SDL_stdinc.h:5993:9
pub const CompilerBarrier = @compileError("unable to translate C expr: unexpected token '__asm__'"); // include/SDL3/SDL_atomic.h:165:9
pub inline fn MemoryBarrierRelease() @TypeOf(CompilerBarrier()) {
    return CompilerBarrier();
}
pub inline fn MemoryBarrierAcquire() @TypeOf(CompilerBarrier()) {
    return CompilerBarrier();
}
pub const CPUPauseInstruction = @compileError("unable to translate C expr: unexpected token '__asm__'"); // include/SDL3/SDL_atomic.h:349:13
pub inline fn AtomicIncRef(a: anytype) @TypeOf(SDL_AddAtomicInt(a, @as(c_int, 1))) {
    _ = &a;
    return SDL_AddAtomicInt(a, @as(c_int, 1));
}
pub inline fn AtomicDecRef(a: anytype) @TypeOf(SDL_AddAtomicInt(a, -@as(c_int, 1)) == @as(c_int, 1)) {
    _ = &a;
    return SDL_AddAtomicInt(a, -@as(c_int, 1)) == @as(c_int, 1);
}
pub const LIL_ENDIAN = @as(c_int, 1234);
pub const _ENDIAN_H = @as(c_int, 1);
pub const _BITS_ENDIAN_H = @as(c_int, 1);
pub const __LITTLE_ENDIAN = @as(c_int, 1234);
pub const __BIG_ENDIAN = @as(c_int, 4321);
pub const __PDP_ENDIAN = @as(c_int, 3412);
pub const _BITS_ENDIANNESS_H = @as(c_int, 1);
pub const __BYTE_ORDER = __LITTLE_ENDIAN;
pub const __FLOAT_WORD_ORDER = __BYTE_ORDER;
pub inline fn __LONG_LONG_PAIR(HI: anytype, LO: anytype) @TypeOf(HI) {
    _ = &HI;
    _ = &LO;
    return blk: {
        _ = &LO;
        break :blk HI;
    };
}
pub const LITTLE_ENDIAN = __LITTLE_ENDIAN;
pub const BIG_ENDIAN = __BIG_ENDIAN;
pub const PDP_ENDIAN = __PDP_ENDIAN;
pub const BYTE_ORDER = __BYTE_ORDER;
pub const _BITS_BYTESWAP_H = @as(c_int, 1);
pub inline fn __bswap_constant_16(x: anytype) __uint16_t {
    _ = &x;
    return __helpers.cast(__uint16_t, ((x >> @as(c_int, 8)) & @as(c_int, 0xff)) | ((x & @as(c_int, 0xff)) << @as(c_int, 8)));
}
pub inline fn __bswap_constant_32(x: anytype) @TypeOf(((((x & __helpers.promoteIntLiteral(c_uint, 0xff000000, .hex)) >> @as(c_int, 24)) | ((x & __helpers.promoteIntLiteral(c_uint, 0x00ff0000, .hex)) >> @as(c_int, 8))) | ((x & @as(c_uint, 0x0000ff00)) << @as(c_int, 8))) | ((x & @as(c_uint, 0x000000ff)) << @as(c_int, 24))) {
    _ = &x;
    return ((((x & __helpers.promoteIntLiteral(c_uint, 0xff000000, .hex)) >> @as(c_int, 24)) | ((x & __helpers.promoteIntLiteral(c_uint, 0x00ff0000, .hex)) >> @as(c_int, 8))) | ((x & @as(c_uint, 0x0000ff00)) << @as(c_int, 8))) | ((x & @as(c_uint, 0x000000ff)) << @as(c_int, 24));
}
pub inline fn __bswap_constant_64(x: anytype) @TypeOf(((((((((x & @as(c_ulonglong, 0xff00000000000000)) >> @as(c_int, 56)) | ((x & @as(c_ulonglong, 0x00ff000000000000)) >> @as(c_int, 40))) | ((x & @as(c_ulonglong, 0x0000ff0000000000)) >> @as(c_int, 24))) | ((x & @as(c_ulonglong, 0x000000ff00000000)) >> @as(c_int, 8))) | ((x & @as(c_ulonglong, 0x00000000ff000000)) << @as(c_int, 8))) | ((x & @as(c_ulonglong, 0x0000000000ff0000)) << @as(c_int, 24))) | ((x & @as(c_ulonglong, 0x000000000000ff00)) << @as(c_int, 40))) | ((x & @as(c_ulonglong, 0x00000000000000ff)) << @as(c_int, 56))) {
    _ = &x;
    return ((((((((x & @as(c_ulonglong, 0xff00000000000000)) >> @as(c_int, 56)) | ((x & @as(c_ulonglong, 0x00ff000000000000)) >> @as(c_int, 40))) | ((x & @as(c_ulonglong, 0x0000ff0000000000)) >> @as(c_int, 24))) | ((x & @as(c_ulonglong, 0x000000ff00000000)) >> @as(c_int, 8))) | ((x & @as(c_ulonglong, 0x00000000ff000000)) << @as(c_int, 8))) | ((x & @as(c_ulonglong, 0x0000000000ff0000)) << @as(c_int, 24))) | ((x & @as(c_ulonglong, 0x000000000000ff00)) << @as(c_int, 40))) | ((x & @as(c_ulonglong, 0x00000000000000ff)) << @as(c_int, 56));
}
pub const _BITS_UINTN_IDENTITY_H = @as(c_int, 1);
pub inline fn htobe16(x: anytype) @TypeOf(__bswap_16(x)) {
    _ = &x;
    return __bswap_16(x);
}
pub inline fn htole16(x: anytype) @TypeOf(__uint16_identity(x)) {
    _ = &x;
    return __uint16_identity(x);
}
pub inline fn be16toh(x: anytype) @TypeOf(__bswap_16(x)) {
    _ = &x;
    return __bswap_16(x);
}
pub inline fn le16toh(x: anytype) @TypeOf(__uint16_identity(x)) {
    _ = &x;
    return __uint16_identity(x);
}
pub inline fn htobe32(x: anytype) @TypeOf(__bswap_32(x)) {
    _ = &x;
    return __bswap_32(x);
}
pub inline fn htole32(x: anytype) @TypeOf(__uint32_identity(x)) {
    _ = &x;
    return __uint32_identity(x);
}
pub inline fn be32toh(x: anytype) @TypeOf(__bswap_32(x)) {
    _ = &x;
    return __bswap_32(x);
}
pub inline fn le32toh(x: anytype) @TypeOf(__uint32_identity(x)) {
    _ = &x;
    return __uint32_identity(x);
}
pub inline fn htobe64(x: anytype) @TypeOf(__bswap_64(x)) {
    _ = &x;
    return __bswap_64(x);
}
pub inline fn htole64(x: anytype) @TypeOf(__uint64_identity(x)) {
    _ = &x;
    return __uint64_identity(x);
}
pub inline fn be64toh(x: anytype) @TypeOf(__bswap_64(x)) {
    _ = &x;
    return __bswap_64(x);
}
pub inline fn le64toh(x: anytype) @TypeOf(__uint64_identity(x)) {
    _ = &x;
    return __uint64_identity(x);
}
pub const BYTEORDER = __BYTE_ORDER;
pub const FLOATWORDORDER = BYTEORDER;
pub inline fn Swap16(x: anytype) @TypeOf(__builtin.bswap16(x)) {
    _ = &x;
    return __builtin.bswap16(x);
}
pub inline fn Swap32(x: anytype) @TypeOf(__builtin.bswap32(x)) {
    _ = &x;
    return __builtin.bswap32(x);
}
pub inline fn Swap64(x: anytype) @TypeOf(__builtin.bswap64(x)) {
    _ = &x;
    return __builtin.bswap64(x);
}
pub inline fn Swap16LE(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn Swap32LE(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn Swap64LE(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn SwapFloatLE(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn Swap16BE(x: anytype) @TypeOf(Swap16(x)) {
    _ = &x;
    return Swap16(x);
}
pub inline fn Swap32BE(x: anytype) @TypeOf(Swap32(x)) {
    _ = &x;
    return Swap32(x);
}
pub inline fn Swap64BE(x: anytype) @TypeOf(Swap64(x)) {
    _ = &x;
    return Swap64(x);
}
pub inline fn SwapFloatBE(x: anytype) @TypeOf(SwapFloat(x)) {
    _ = &x;
    return SwapFloat(x);
}
pub inline fn Unsupported() @TypeOf(SDL_SetError("That operation is not supported")) {
    return SDL_SetError("That operation is not supported");
}
pub inline fn InvalidParamError(param: anytype) @TypeOf(SDL_SetError("Parameter '%s' is invalid", param)) {
    _ = &param;
    return SDL_SetError("Parameter '%s' is invalid", param);
}
pub const PROP_NAME_STRING = "SDL.name";
pub const BeginThreadFunction = NULL;
pub const EndThreadFunction = NULL;
pub inline fn CreateThread(@"fn": anytype, name: anytype, data: anytype) @TypeOf(SDL_CreateThreadRuntime(@"fn", name, data, __helpers.cast(FunctionPointer, BeginThreadFunction), __helpers.cast(FunctionPointer, EndThreadFunction))) {
    _ = &@"fn";
    _ = &name;
    _ = &data;
    return SDL_CreateThreadRuntime(@"fn", name, data, __helpers.cast(FunctionPointer, BeginThreadFunction), __helpers.cast(FunctionPointer, EndThreadFunction));
}
pub inline fn CreateThreadWithProperties(props: anytype) @TypeOf(SDL_CreateThreadWithPropertiesRuntime(props, __helpers.cast(FunctionPointer, BeginThreadFunction), __helpers.cast(FunctionPointer, EndThreadFunction))) {
    _ = &props;
    return SDL_CreateThreadWithPropertiesRuntime(props, __helpers.cast(FunctionPointer, BeginThreadFunction), __helpers.cast(FunctionPointer, EndThreadFunction));
}
pub const PROP_THREAD_CREATE_ENTRY_FUNCTION_POINTER = "SDL.thread.create.entry_function";
pub const PROP_THREAD_CREATE_NAME_STRING = "SDL.thread.create.name";
pub const PROP_THREAD_CREATE_USERDATA_POINTER = "SDL.thread.create.userdata";
pub const PROP_THREAD_CREATE_STACKSIZE_NUMBER = "SDL.thread.create.stacksize";
pub inline fn THREAD_ANNOTATION_ATTRIBUTE__(x: anytype) void {
    _ = &x;
    return;
}
pub const CAPABILITY = @compileError("unable to translate macro: undefined identifier `capability`"); // include/SDL3/SDL_mutex.h:77:9
pub const SCOPED_CAPABILITY = @compileError("unable to translate macro: undefined identifier `scoped_lockable`"); // include/SDL3/SDL_mutex.h:87:9
pub const GUARDED_BY = @compileError("unable to translate macro: undefined identifier `guarded_by`"); // include/SDL3/SDL_mutex.h:97:9
pub const PT_GUARDED_BY = @compileError("unable to translate macro: undefined identifier `pt_guarded_by`"); // include/SDL3/SDL_mutex.h:107:9
pub const ACQUIRED_BEFORE = @compileError("unable to translate macro: undefined identifier `acquired_before`"); // include/SDL3/SDL_mutex.h:117:9
pub const ACQUIRED_AFTER = @compileError("unable to translate macro: undefined identifier `acquired_after`"); // include/SDL3/SDL_mutex.h:127:9
pub const REQUIRES = @compileError("unable to translate macro: undefined identifier `requires_capability`"); // include/SDL3/SDL_mutex.h:137:9
pub const REQUIRES_SHARED = @compileError("unable to translate macro: undefined identifier `requires_shared_capability`"); // include/SDL3/SDL_mutex.h:147:9
pub const ACQUIRE = @compileError("unable to translate macro: undefined identifier `acquire_capability`"); // include/SDL3/SDL_mutex.h:157:9
pub const ACQUIRE_SHARED = @compileError("unable to translate macro: undefined identifier `acquire_shared_capability`"); // include/SDL3/SDL_mutex.h:167:9
pub const RELEASE = @compileError("unable to translate macro: undefined identifier `release_capability`"); // include/SDL3/SDL_mutex.h:177:9
pub const RELEASE_SHARED = @compileError("unable to translate macro: undefined identifier `release_shared_capability`"); // include/SDL3/SDL_mutex.h:187:9
pub const RELEASE_GENERIC = @compileError("unable to translate macro: undefined identifier `release_generic_capability`"); // include/SDL3/SDL_mutex.h:197:9
pub const TRY_ACQUIRE = @compileError("unable to translate macro: undefined identifier `try_acquire_capability`"); // include/SDL3/SDL_mutex.h:207:9
pub const TRY_ACQUIRE_SHARED = @compileError("unable to translate macro: undefined identifier `try_acquire_shared_capability`"); // include/SDL3/SDL_mutex.h:217:9
pub const EXCLUDES = @compileError("unable to translate macro: undefined identifier `locks_excluded`"); // include/SDL3/SDL_mutex.h:227:9
pub const ASSERT_CAPABILITY = @compileError("unable to translate macro: undefined identifier `assert_capability`"); // include/SDL3/SDL_mutex.h:237:9
pub const ASSERT_SHARED_CAPABILITY = @compileError("unable to translate macro: undefined identifier `assert_shared_capability`"); // include/SDL3/SDL_mutex.h:247:9
pub const RETURN_CAPABILITY = @compileError("unable to translate macro: undefined identifier `lock_returned`"); // include/SDL3/SDL_mutex.h:257:9
pub const NO_THREAD_SAFETY_ANALYSIS = @compileError("unable to translate macro: undefined identifier `no_thread_safety_analysis`"); // include/SDL3/SDL_mutex.h:267:9
pub const PROP_IOSTREAM_WINDOWS_HANDLE_POINTER = "SDL.iostream.windows.handle";
pub const PROP_IOSTREAM_STDIO_FILE_POINTER = "SDL.iostream.stdio.file";
pub const PROP_IOSTREAM_FILE_DESCRIPTOR_NUMBER = "SDL.iostream.file_descriptor";
pub const PROP_IOSTREAM_ANDROID_AASSET_POINTER = "SDL.iostream.android.aasset";
pub const PROP_IOSTREAM_MEMORY_POINTER = "SDL.iostream.memory.base";
pub const PROP_IOSTREAM_MEMORY_SIZE_NUMBER = "SDL.iostream.memory.size";
pub const PROP_IOSTREAM_MEMORY_FREE_FUNC_POINTER = "SDL.iostream.memory.free";
pub const PROP_IOSTREAM_DYNAMIC_MEMORY_POINTER = "SDL.iostream.dynamic.memory";
pub const PROP_IOSTREAM_DYNAMIC_CHUNKSIZE_NUMBER = "SDL.iostream.dynamic.chunksize";
pub const AUDIO_MASK_BITSIZE = @as(c_uint, 0xFF);
pub const AUDIO_MASK_FLOAT = @as(c_uint, 1) << @as(c_int, 8);
pub const AUDIO_MASK_BIG_ENDIAN = @as(c_uint, 1) << @as(c_int, 12);
pub const AUDIO_MASK_SIGNED = @as(c_uint, 1) << @as(c_int, 15);
pub inline fn DEFINE_AUDIO_FORMAT(signed: anytype, bigendian: anytype, flt: anytype, size: anytype) @TypeOf((((__helpers.cast(Uint16, signed) << @as(c_int, 15)) | (__helpers.cast(Uint16, bigendian) << @as(c_int, 12))) | (__helpers.cast(Uint16, flt) << @as(c_int, 8))) | (size & AUDIO_MASK_BITSIZE)) {
    _ = &signed;
    _ = &bigendian;
    _ = &flt;
    _ = &size;
    return (((__helpers.cast(Uint16, signed) << @as(c_int, 15)) | (__helpers.cast(Uint16, bigendian) << @as(c_int, 12))) | (__helpers.cast(Uint16, flt) << @as(c_int, 8))) | (size & AUDIO_MASK_BITSIZE);
}
pub inline fn AUDIO_BITSIZE(x: anytype) @TypeOf(x & AUDIO_MASK_BITSIZE) {
    _ = &x;
    return x & AUDIO_MASK_BITSIZE;
}
pub inline fn AUDIO_BYTESIZE(x: anytype) @TypeOf(__helpers.div(AUDIO_BITSIZE(x), @as(c_int, 8))) {
    _ = &x;
    return __helpers.div(AUDIO_BITSIZE(x), @as(c_int, 8));
}
pub inline fn AUDIO_ISFLOAT(x: anytype) @TypeOf(x & AUDIO_MASK_FLOAT) {
    _ = &x;
    return x & AUDIO_MASK_FLOAT;
}
pub inline fn AUDIO_ISBIGENDIAN(x: anytype) @TypeOf(x & AUDIO_MASK_BIG_ENDIAN) {
    _ = &x;
    return x & AUDIO_MASK_BIG_ENDIAN;
}
pub inline fn AUDIO_ISLITTLEENDIAN(x: anytype) @TypeOf(!(AUDIO_ISBIGENDIAN(x) != 0)) {
    _ = &x;
    return !(AUDIO_ISBIGENDIAN(x) != 0);
}
pub inline fn AUDIO_ISSIGNED(x: anytype) @TypeOf(x & AUDIO_MASK_SIGNED) {
    _ = &x;
    return x & AUDIO_MASK_SIGNED;
}
pub inline fn AUDIO_ISINT(x: anytype) @TypeOf(!(AUDIO_ISFLOAT(x) != 0)) {
    _ = &x;
    return !(AUDIO_ISFLOAT(x) != 0);
}
pub inline fn AUDIO_ISUNSIGNED(x: anytype) @TypeOf(!(AUDIO_ISSIGNED(x) != 0)) {
    _ = &x;
    return !(AUDIO_ISSIGNED(x) != 0);
}
pub const AUDIO_DEVICE_DEFAULT_PLAYBACK = __helpers.cast(AudioDeviceID, __helpers.promoteIntLiteral(c_uint, 0xFFFFFFFF, .hex));
pub const AUDIO_DEVICE_DEFAULT_RECORDING = __helpers.cast(AudioDeviceID, __helpers.promoteIntLiteral(c_uint, 0xFFFFFFFE, .hex));
pub inline fn AUDIO_FRAMESIZE(x: anytype) @TypeOf(AUDIO_BYTESIZE(x.format) * x.channels) {
    _ = &x;
    return AUDIO_BYTESIZE(x.format) * x.channels;
}
pub const PROP_AUDIOSTREAM_AUTO_CLEANUP_BOOLEAN = "SDL.audiostream.auto_cleanup";
pub const BLENDMODE_NONE = @as(c_uint, 0x00000000);
pub const BLENDMODE_BLEND = @as(c_uint, 0x00000001);
pub const BLENDMODE_BLEND_PREMULTIPLIED = @as(c_uint, 0x00000010);
pub const BLENDMODE_ADD = @as(c_uint, 0x00000002);
pub const BLENDMODE_ADD_PREMULTIPLIED = @as(c_uint, 0x00000020);
pub const BLENDMODE_MOD = @as(c_uint, 0x00000004);
pub const BLENDMODE_MUL = @as(c_uint, 0x00000008);
pub const BLENDMODE_INVALID = __helpers.promoteIntLiteral(c_uint, 0x7FFFFFFF, .hex);
pub const ALPHA_OPAQUE = @as(c_int, 255);
pub const ALPHA_OPAQUE_FLOAT = @as(f32, 1.0);
pub const ALPHA_TRANSPARENT = @as(c_int, 0);
pub const ALPHA_TRANSPARENT_FLOAT = @as(f32, 0.0);
pub inline fn DEFINE_PIXELFOURCC(A: anytype, B: anytype, C: anytype, D: anytype) @TypeOf(FOURCC(A, B, C, D)) {
    _ = &A;
    _ = &B;
    _ = &C;
    _ = &D;
    return FOURCC(A, B, C, D);
}
pub inline fn DEFINE_PIXELFORMAT(@"type": anytype, order: anytype, layout: anytype, bits: anytype, bytes: anytype) @TypeOf((((((@as(c_int, 1) << @as(c_int, 28)) | (@"type" << @as(c_int, 24))) | (order << @as(c_int, 20))) | (layout << @as(c_int, 16))) | (bits << @as(c_int, 8))) | (bytes << @as(c_int, 0))) {
    _ = &@"type";
    _ = &order;
    _ = &layout;
    _ = &bits;
    _ = &bytes;
    return (((((@as(c_int, 1) << @as(c_int, 28)) | (@"type" << @as(c_int, 24))) | (order << @as(c_int, 20))) | (layout << @as(c_int, 16))) | (bits << @as(c_int, 8))) | (bytes << @as(c_int, 0));
}
pub inline fn PIXELFLAG(format: anytype) @TypeOf((format >> @as(c_int, 28)) & @as(c_int, 0x0F)) {
    _ = &format;
    return (format >> @as(c_int, 28)) & @as(c_int, 0x0F);
}
pub inline fn PIXELTYPE(format: anytype) @TypeOf((format >> @as(c_int, 24)) & @as(c_int, 0x0F)) {
    _ = &format;
    return (format >> @as(c_int, 24)) & @as(c_int, 0x0F);
}
pub inline fn PIXELORDER(format: anytype) @TypeOf((format >> @as(c_int, 20)) & @as(c_int, 0x0F)) {
    _ = &format;
    return (format >> @as(c_int, 20)) & @as(c_int, 0x0F);
}
pub inline fn PIXELLAYOUT(format: anytype) @TypeOf((format >> @as(c_int, 16)) & @as(c_int, 0x0F)) {
    _ = &format;
    return (format >> @as(c_int, 16)) & @as(c_int, 0x0F);
}
pub inline fn BITSPERPIXEL(format: anytype) @TypeOf(if (__helpers.cast(bool, ISPIXELFORMAT_FOURCC(format))) @as(c_int, 0) else (format >> @as(c_int, 8)) & @as(c_int, 0xFF)) {
    _ = &format;
    return if (__helpers.cast(bool, ISPIXELFORMAT_FOURCC(format))) @as(c_int, 0) else (format >> @as(c_int, 8)) & @as(c_int, 0xFF);
}
pub inline fn BYTESPERPIXEL(format: anytype) @TypeOf(if (__helpers.cast(bool, ISPIXELFORMAT_FOURCC(format))) if (__helpers.cast(bool, (((format == PIXELFORMAT_YUY2) or (format == PIXELFORMAT_UYVY)) or (format == PIXELFORMAT_YVYU)) or (format == PIXELFORMAT_P010))) @as(c_int, 2) else @as(c_int, 1) else (format >> @as(c_int, 0)) & @as(c_int, 0xFF)) {
    _ = &format;
    return if (__helpers.cast(bool, ISPIXELFORMAT_FOURCC(format))) if (__helpers.cast(bool, (((format == PIXELFORMAT_YUY2) or (format == PIXELFORMAT_UYVY)) or (format == PIXELFORMAT_YVYU)) or (format == PIXELFORMAT_P010))) @as(c_int, 2) else @as(c_int, 1) else (format >> @as(c_int, 0)) & @as(c_int, 0xFF);
}
pub inline fn ISPIXELFORMAT_INDEXED(format: anytype) @TypeOf(!(ISPIXELFORMAT_FOURCC(format) != 0) and ((((PIXELTYPE(format) == PIXELTYPE_INDEX1) or (PIXELTYPE(format) == PIXELTYPE_INDEX2)) or (PIXELTYPE(format) == PIXELTYPE_INDEX4)) or (PIXELTYPE(format) == PIXELTYPE_INDEX8))) {
    _ = &format;
    return !(ISPIXELFORMAT_FOURCC(format) != 0) and ((((PIXELTYPE(format) == PIXELTYPE_INDEX1) or (PIXELTYPE(format) == PIXELTYPE_INDEX2)) or (PIXELTYPE(format) == PIXELTYPE_INDEX4)) or (PIXELTYPE(format) == PIXELTYPE_INDEX8));
}
pub inline fn ISPIXELFORMAT_PACKED(format: anytype) @TypeOf(!(ISPIXELFORMAT_FOURCC(format) != 0) and (((PIXELTYPE(format) == PIXELTYPE_PACKED8) or (PIXELTYPE(format) == PIXELTYPE_PACKED16)) or (PIXELTYPE(format) == PIXELTYPE_PACKED32))) {
    _ = &format;
    return !(ISPIXELFORMAT_FOURCC(format) != 0) and (((PIXELTYPE(format) == PIXELTYPE_PACKED8) or (PIXELTYPE(format) == PIXELTYPE_PACKED16)) or (PIXELTYPE(format) == PIXELTYPE_PACKED32));
}
pub inline fn ISPIXELFORMAT_ARRAY(format: anytype) @TypeOf(!(ISPIXELFORMAT_FOURCC(format) != 0) and (((((PIXELTYPE(format) == PIXELTYPE_ARRAYU8) or (PIXELTYPE(format) == PIXELTYPE_ARRAYU16)) or (PIXELTYPE(format) == PIXELTYPE_ARRAYU32)) or (PIXELTYPE(format) == PIXELTYPE_ARRAYF16)) or (PIXELTYPE(format) == PIXELTYPE_ARRAYF32))) {
    _ = &format;
    return !(ISPIXELFORMAT_FOURCC(format) != 0) and (((((PIXELTYPE(format) == PIXELTYPE_ARRAYU8) or (PIXELTYPE(format) == PIXELTYPE_ARRAYU16)) or (PIXELTYPE(format) == PIXELTYPE_ARRAYU32)) or (PIXELTYPE(format) == PIXELTYPE_ARRAYF16)) or (PIXELTYPE(format) == PIXELTYPE_ARRAYF32));
}
pub inline fn ISPIXELFORMAT_10BIT(format: anytype) @TypeOf(!(ISPIXELFORMAT_FOURCC(format) != 0) and ((PIXELTYPE(format) == PIXELTYPE_PACKED32) and (PIXELLAYOUT(format) == PACKEDLAYOUT_2101010))) {
    _ = &format;
    return !(ISPIXELFORMAT_FOURCC(format) != 0) and ((PIXELTYPE(format) == PIXELTYPE_PACKED32) and (PIXELLAYOUT(format) == PACKEDLAYOUT_2101010));
}
pub inline fn ISPIXELFORMAT_FLOAT(format: anytype) @TypeOf(!(ISPIXELFORMAT_FOURCC(format) != 0) and ((PIXELTYPE(format) == PIXELTYPE_ARRAYF16) or (PIXELTYPE(format) == PIXELTYPE_ARRAYF32))) {
    _ = &format;
    return !(ISPIXELFORMAT_FOURCC(format) != 0) and ((PIXELTYPE(format) == PIXELTYPE_ARRAYF16) or (PIXELTYPE(format) == PIXELTYPE_ARRAYF32));
}
pub inline fn ISPIXELFORMAT_ALPHA(format: anytype) @TypeOf(((ISPIXELFORMAT_PACKED(format) != 0) and ((((PIXELORDER(format) == PACKEDORDER_ARGB) or (PIXELORDER(format) == PACKEDORDER_RGBA)) or (PIXELORDER(format) == PACKEDORDER_ABGR)) or (PIXELORDER(format) == PACKEDORDER_BGRA))) or ((ISPIXELFORMAT_ARRAY(format) != 0) and ((((PIXELORDER(format) == ARRAYORDER_ARGB) or (PIXELORDER(format) == ARRAYORDER_RGBA)) or (PIXELORDER(format) == ARRAYORDER_ABGR)) or (PIXELORDER(format) == ARRAYORDER_BGRA)))) {
    _ = &format;
    return ((ISPIXELFORMAT_PACKED(format) != 0) and ((((PIXELORDER(format) == PACKEDORDER_ARGB) or (PIXELORDER(format) == PACKEDORDER_RGBA)) or (PIXELORDER(format) == PACKEDORDER_ABGR)) or (PIXELORDER(format) == PACKEDORDER_BGRA))) or ((ISPIXELFORMAT_ARRAY(format) != 0) and ((((PIXELORDER(format) == ARRAYORDER_ARGB) or (PIXELORDER(format) == ARRAYORDER_RGBA)) or (PIXELORDER(format) == ARRAYORDER_ABGR)) or (PIXELORDER(format) == ARRAYORDER_BGRA)));
}
pub inline fn ISPIXELFORMAT_FOURCC(format: anytype) @TypeOf((format != 0) and (PIXELFLAG(format) != @as(c_int, 1))) {
    _ = &format;
    return (format != 0) and (PIXELFLAG(format) != @as(c_int, 1));
}
pub inline fn DEFINE_COLORSPACE(@"type": anytype, range: anytype, primaries: anytype, transfer: anytype, matrix: anytype, chroma: anytype) @TypeOf((((((__helpers.cast(Uint32, @"type") << @as(c_int, 28)) | (__helpers.cast(Uint32, range) << @as(c_int, 24))) | (__helpers.cast(Uint32, chroma) << @as(c_int, 20))) | (__helpers.cast(Uint32, primaries) << @as(c_int, 10))) | (__helpers.cast(Uint32, transfer) << @as(c_int, 5))) | (__helpers.cast(Uint32, matrix) << @as(c_int, 0))) {
    _ = &@"type";
    _ = &range;
    _ = &primaries;
    _ = &transfer;
    _ = &matrix;
    _ = &chroma;
    return (((((__helpers.cast(Uint32, @"type") << @as(c_int, 28)) | (__helpers.cast(Uint32, range) << @as(c_int, 24))) | (__helpers.cast(Uint32, chroma) << @as(c_int, 20))) | (__helpers.cast(Uint32, primaries) << @as(c_int, 10))) | (__helpers.cast(Uint32, transfer) << @as(c_int, 5))) | (__helpers.cast(Uint32, matrix) << @as(c_int, 0));
}
pub inline fn COLORSPACETYPE(cspace: anytype) ColorType {
    _ = &cspace;
    return __helpers.cast(ColorType, (cspace >> @as(c_int, 28)) & @as(c_int, 0x0F));
}
pub inline fn COLORSPACERANGE(cspace: anytype) ColorRange {
    _ = &cspace;
    return __helpers.cast(ColorRange, (cspace >> @as(c_int, 24)) & @as(c_int, 0x0F));
}
pub inline fn COLORSPACECHROMA(cspace: anytype) ChromaLocation {
    _ = &cspace;
    return __helpers.cast(ChromaLocation, (cspace >> @as(c_int, 20)) & @as(c_int, 0x0F));
}
pub inline fn COLORSPACEPRIMARIES(cspace: anytype) ColorPrimaries {
    _ = &cspace;
    return __helpers.cast(ColorPrimaries, (cspace >> @as(c_int, 10)) & @as(c_int, 0x1F));
}
pub inline fn COLORSPACETRANSFER(cspace: anytype) TransferCharacteristics {
    _ = &cspace;
    return __helpers.cast(TransferCharacteristics, (cspace >> @as(c_int, 5)) & @as(c_int, 0x1F));
}
pub inline fn COLORSPACEMATRIX(cspace: anytype) MatrixCoefficients {
    _ = &cspace;
    return __helpers.cast(MatrixCoefficients, cspace & @as(c_int, 0x1F));
}
pub inline fn ISCOLORSPACE_MATRIX_BT601(cspace: anytype) @TypeOf((COLORSPACEMATRIX(cspace) == MATRIX_COEFFICIENTS_BT601) or (COLORSPACEMATRIX(cspace) == MATRIX_COEFFICIENTS_BT470BG)) {
    _ = &cspace;
    return (COLORSPACEMATRIX(cspace) == MATRIX_COEFFICIENTS_BT601) or (COLORSPACEMATRIX(cspace) == MATRIX_COEFFICIENTS_BT470BG);
}
pub inline fn ISCOLORSPACE_MATRIX_BT709(cspace: anytype) @TypeOf(COLORSPACEMATRIX(cspace) == MATRIX_COEFFICIENTS_BT709) {
    _ = &cspace;
    return COLORSPACEMATRIX(cspace) == MATRIX_COEFFICIENTS_BT709;
}
pub inline fn ISCOLORSPACE_MATRIX_BT2020_NCL(cspace: anytype) @TypeOf(COLORSPACEMATRIX(cspace) == MATRIX_COEFFICIENTS_BT2020_NCL) {
    _ = &cspace;
    return COLORSPACEMATRIX(cspace) == MATRIX_COEFFICIENTS_BT2020_NCL;
}
pub inline fn ISCOLORSPACE_LIMITED_RANGE(cspace: anytype) @TypeOf(COLORSPACERANGE(cspace) != COLOR_RANGE_FULL) {
    _ = &cspace;
    return COLORSPACERANGE(cspace) != COLOR_RANGE_FULL;
}
pub inline fn ISCOLORSPACE_FULL_RANGE(cspace: anytype) @TypeOf(COLORSPACERANGE(cspace) == COLOR_RANGE_FULL) {
    _ = &cspace;
    return COLORSPACERANGE(cspace) == COLOR_RANGE_FULL;
}
pub const SURFACE_PREALLOCATED = @as(c_uint, 0x00000001);
pub const SURFACE_LOCK_NEEDED = @as(c_uint, 0x00000002);
pub const SURFACE_LOCKED = @as(c_uint, 0x00000004);
pub const SURFACE_SIMD_ALIGNED = @as(c_uint, 0x00000008);
pub inline fn MUSTLOCK(S: anytype) @TypeOf((S.*.flags & SURFACE_LOCK_NEEDED) == SURFACE_LOCK_NEEDED) {
    _ = &S;
    return (S.*.flags & SURFACE_LOCK_NEEDED) == SURFACE_LOCK_NEEDED;
}
pub const PROP_SURFACE_SDR_WHITE_POINT_FLOAT = "SDL.surface.SDR_white_point";
pub const PROP_SURFACE_HDR_HEADROOM_FLOAT = "SDL.surface.HDR_headroom";
pub const PROP_SURFACE_TONEMAP_OPERATOR_STRING = "SDL.surface.tonemap";
pub const PROP_SURFACE_HOTSPOT_X_NUMBER = "SDL.surface.hotspot.x";
pub const PROP_SURFACE_HOTSPOT_Y_NUMBER = "SDL.surface.hotspot.y";
pub const PROP_SURFACE_ROTATION_FLOAT = "SDL.surface.rotation";
pub const CACHELINE_SIZE = @as(c_int, 128);
pub const PROP_GLOBAL_VIDEO_WAYLAND_WL_DISPLAY_POINTER = "SDL.video.wayland.wl_display";
pub const WINDOW_FULLSCREEN = UINT64_C(@as(c_int, 0x0000000000000001));
pub const WINDOW_OPENGL = UINT64_C(@as(c_int, 0x0000000000000002));
pub const WINDOW_OCCLUDED = UINT64_C(@as(c_int, 0x0000000000000004));
pub const WINDOW_HIDDEN = UINT64_C(@as(c_int, 0x0000000000000008));
pub const WINDOW_BORDERLESS = UINT64_C(@as(c_int, 0x0000000000000010));
pub const WINDOW_RESIZABLE = UINT64_C(@as(c_int, 0x0000000000000020));
pub const WINDOW_MINIMIZED = UINT64_C(@as(c_int, 0x0000000000000040));
pub const WINDOW_MAXIMIZED = UINT64_C(@as(c_int, 0x0000000000000080));
pub const WINDOW_MOUSE_GRABBED = UINT64_C(@as(c_int, 0x0000000000000100));
pub const WINDOW_INPUT_FOCUS = UINT64_C(@as(c_int, 0x0000000000000200));
pub const WINDOW_MOUSE_FOCUS = UINT64_C(@as(c_int, 0x0000000000000400));
pub const WINDOW_EXTERNAL = UINT64_C(@as(c_int, 0x0000000000000800));
pub const WINDOW_MODAL = UINT64_C(@as(c_int, 0x0000000000001000));
pub const WINDOW_HIGH_PIXEL_DENSITY = UINT64_C(@as(c_int, 0x0000000000002000));
pub const WINDOW_MOUSE_CAPTURE = UINT64_C(@as(c_int, 0x0000000000004000));
pub const WINDOW_MOUSE_RELATIVE_MODE = UINT64_C(__helpers.promoteIntLiteral(c_int, 0x0000000000008000, .hex));
pub const WINDOW_ALWAYS_ON_TOP = UINT64_C(__helpers.promoteIntLiteral(c_int, 0x0000000000010000, .hex));
pub const WINDOW_UTILITY = UINT64_C(__helpers.promoteIntLiteral(c_int, 0x0000000000020000, .hex));
pub const WINDOW_TOOLTIP = UINT64_C(__helpers.promoteIntLiteral(c_int, 0x0000000000040000, .hex));
pub const WINDOW_POPUP_MENU = UINT64_C(__helpers.promoteIntLiteral(c_int, 0x0000000000080000, .hex));
pub const WINDOW_KEYBOARD_GRABBED = UINT64_C(__helpers.promoteIntLiteral(c_int, 0x0000000000100000, .hex));
pub const WINDOW_FILL_DOCUMENT = UINT64_C(__helpers.promoteIntLiteral(c_int, 0x0000000000200000, .hex));
pub const WINDOW_VULKAN = UINT64_C(__helpers.promoteIntLiteral(c_int, 0x0000000010000000, .hex));
pub const WINDOW_METAL = UINT64_C(__helpers.promoteIntLiteral(c_int, 0x0000000020000000, .hex));
pub const WINDOW_TRANSPARENT = UINT64_C(__helpers.promoteIntLiteral(c_int, 0x0000000040000000, .hex));
pub const WINDOW_NOT_FOCUSABLE = UINT64_C(__helpers.promoteIntLiteral(c_int, 0x0000000080000000, .hex));
pub const WINDOWPOS_UNDEFINED_MASK = __helpers.promoteIntLiteral(c_uint, 0x1FFF0000, .hex);
pub inline fn WINDOWPOS_UNDEFINED_DISPLAY(X: anytype) @TypeOf(WINDOWPOS_UNDEFINED_MASK | X) {
    _ = &X;
    return WINDOWPOS_UNDEFINED_MASK | X;
}
pub const WINDOWPOS_UNDEFINED = WINDOWPOS_UNDEFINED_DISPLAY(@as(c_int, 0));
pub inline fn WINDOWPOS_ISUNDEFINED(X: anytype) @TypeOf((X & __helpers.promoteIntLiteral(c_int, 0xFFFF0000, .hex)) == WINDOWPOS_UNDEFINED_MASK) {
    _ = &X;
    return (X & __helpers.promoteIntLiteral(c_int, 0xFFFF0000, .hex)) == WINDOWPOS_UNDEFINED_MASK;
}
pub const WINDOWPOS_CENTERED_MASK = __helpers.promoteIntLiteral(c_uint, 0x2FFF0000, .hex);
pub inline fn WINDOWPOS_CENTERED_DISPLAY(X: anytype) @TypeOf(WINDOWPOS_CENTERED_MASK | X) {
    _ = &X;
    return WINDOWPOS_CENTERED_MASK | X;
}
pub const WINDOWPOS_CENTERED = WINDOWPOS_CENTERED_DISPLAY(@as(c_int, 0));
pub inline fn WINDOWPOS_ISCENTERED(X: anytype) @TypeOf((X & __helpers.promoteIntLiteral(c_int, 0xFFFF0000, .hex)) == WINDOWPOS_CENTERED_MASK) {
    _ = &X;
    return (X & __helpers.promoteIntLiteral(c_int, 0xFFFF0000, .hex)) == WINDOWPOS_CENTERED_MASK;
}
pub const GL_CONTEXT_PROFILE_CORE = @as(c_int, 0x0001);
pub const GL_CONTEXT_PROFILE_COMPATIBILITY = @as(c_int, 0x0002);
pub const GL_CONTEXT_PROFILE_ES = @as(c_int, 0x0004);
pub const GL_CONTEXT_DEBUG_FLAG = @as(c_int, 0x0001);
pub const GL_CONTEXT_FORWARD_COMPATIBLE_FLAG = @as(c_int, 0x0002);
pub const GL_CONTEXT_ROBUST_ACCESS_FLAG = @as(c_int, 0x0004);
pub const GL_CONTEXT_RESET_ISOLATION_FLAG = @as(c_int, 0x0008);
pub const GL_CONTEXT_RELEASE_BEHAVIOR_NONE = @as(c_int, 0x0000);
pub const GL_CONTEXT_RELEASE_BEHAVIOR_FLUSH = @as(c_int, 0x0001);
pub const GL_CONTEXT_RESET_NO_NOTIFICATION = @as(c_int, 0x0000);
pub const GL_CONTEXT_RESET_LOSE_CONTEXT = @as(c_int, 0x0001);
pub const PROP_DISPLAY_HDR_ENABLED_BOOLEAN = "SDL.display.HDR_enabled";
pub const PROP_DISPLAY_KMSDRM_PANEL_ORIENTATION_NUMBER = "SDL.display.KMSDRM.panel_orientation";
pub const PROP_DISPLAY_WAYLAND_WL_OUTPUT_POINTER = "SDL.display.wayland.wl_output";
pub const PROP_DISPLAY_WINDOWS_HMONITOR_POINTER = "SDL.display.windows.hmonitor";
pub const PROP_WINDOW_CREATE_ALWAYS_ON_TOP_BOOLEAN = "SDL.window.create.always_on_top";
pub const PROP_WINDOW_CREATE_BORDERLESS_BOOLEAN = "SDL.window.create.borderless";
pub const PROP_WINDOW_CREATE_CONSTRAIN_POPUP_BOOLEAN = "SDL.window.create.constrain_popup";
pub const PROP_WINDOW_CREATE_FOCUSABLE_BOOLEAN = "SDL.window.create.focusable";
pub const PROP_WINDOW_CREATE_EXTERNAL_GRAPHICS_CONTEXT_BOOLEAN = "SDL.window.create.external_graphics_context";
pub const PROP_WINDOW_CREATE_FLAGS_NUMBER = "SDL.window.create.flags";
pub const PROP_WINDOW_CREATE_FULLSCREEN_BOOLEAN = "SDL.window.create.fullscreen";
pub const PROP_WINDOW_CREATE_HEIGHT_NUMBER = "SDL.window.create.height";
pub const PROP_WINDOW_CREATE_HIDDEN_BOOLEAN = "SDL.window.create.hidden";
pub const PROP_WINDOW_CREATE_HIGH_PIXEL_DENSITY_BOOLEAN = "SDL.window.create.high_pixel_density";
pub const PROP_WINDOW_CREATE_MAXIMIZED_BOOLEAN = "SDL.window.create.maximized";
pub const PROP_WINDOW_CREATE_MENU_BOOLEAN = "SDL.window.create.menu";
pub const PROP_WINDOW_CREATE_METAL_BOOLEAN = "SDL.window.create.metal";
pub const PROP_WINDOW_CREATE_MINIMIZED_BOOLEAN = "SDL.window.create.minimized";
pub const PROP_WINDOW_CREATE_MODAL_BOOLEAN = "SDL.window.create.modal";
pub const PROP_WINDOW_CREATE_MOUSE_GRABBED_BOOLEAN = "SDL.window.create.mouse_grabbed";
pub const PROP_WINDOW_CREATE_OPENGL_BOOLEAN = "SDL.window.create.opengl";
pub const PROP_WINDOW_CREATE_PARENT_POINTER = "SDL.window.create.parent";
pub const PROP_WINDOW_CREATE_RESIZABLE_BOOLEAN = "SDL.window.create.resizable";
pub const PROP_WINDOW_CREATE_TITLE_STRING = "SDL.window.create.title";
pub const PROP_WINDOW_CREATE_TRANSPARENT_BOOLEAN = "SDL.window.create.transparent";
pub const PROP_WINDOW_CREATE_TOOLTIP_BOOLEAN = "SDL.window.create.tooltip";
pub const PROP_WINDOW_CREATE_UTILITY_BOOLEAN = "SDL.window.create.utility";
pub const PROP_WINDOW_CREATE_VULKAN_BOOLEAN = "SDL.window.create.vulkan";
pub const PROP_WINDOW_CREATE_WIDTH_NUMBER = "SDL.window.create.width";
pub const PROP_WINDOW_CREATE_X_NUMBER = "SDL.window.create.x";
pub const PROP_WINDOW_CREATE_Y_NUMBER = "SDL.window.create.y";
pub const PROP_WINDOW_CREATE_COCOA_WINDOW_POINTER = "SDL.window.create.cocoa.window";
pub const PROP_WINDOW_CREATE_COCOA_VIEW_POINTER = "SDL.window.create.cocoa.view";
pub const PROP_WINDOW_CREATE_WINDOWSCENE_POINTER = "SDL.window.create.uikit.windowscene";
pub const PROP_WINDOW_CREATE_WAYLAND_SURFACE_ROLE_CUSTOM_BOOLEAN = "SDL.window.create.wayland.surface_role_custom";
pub const PROP_WINDOW_CREATE_WAYLAND_CREATE_EGL_WINDOW_BOOLEAN = "SDL.window.create.wayland.create_egl_window";
pub const PROP_WINDOW_CREATE_WAYLAND_WL_SURFACE_POINTER = "SDL.window.create.wayland.wl_surface";
pub const PROP_WINDOW_CREATE_WIN32_HWND_POINTER = "SDL.window.create.win32.hwnd";
pub const PROP_WINDOW_CREATE_WIN32_PIXEL_FORMAT_HWND_POINTER = "SDL.window.create.win32.pixel_format_hwnd";
pub const PROP_WINDOW_CREATE_X11_WINDOW_NUMBER = "SDL.window.create.x11.window";
pub const PROP_WINDOW_CREATE_EMSCRIPTEN_CANVAS_ID_STRING = "SDL.window.create.emscripten.canvas_id";
pub const PROP_WINDOW_CREATE_EMSCRIPTEN_KEYBOARD_ELEMENT_STRING = "SDL.window.create.emscripten.keyboard_element";
pub const PROP_WINDOW_SHAPE_POINTER = "SDL.window.shape";
pub const PROP_WINDOW_HDR_ENABLED_BOOLEAN = "SDL.window.HDR_enabled";
pub const PROP_WINDOW_SDR_WHITE_LEVEL_FLOAT = "SDL.window.SDR_white_level";
pub const PROP_WINDOW_HDR_HEADROOM_FLOAT = "SDL.window.HDR_headroom";
pub const PROP_WINDOW_ANDROID_WINDOW_POINTER = "SDL.window.android.window";
pub const PROP_WINDOW_ANDROID_SURFACE_POINTER = "SDL.window.android.surface";
pub const PROP_WINDOW_UIKIT_WINDOW_POINTER = "SDL.window.uikit.window";
pub const PROP_WINDOW_UIKIT_METAL_VIEW_TAG_NUMBER = "SDL.window.uikit.metal_view_tag";
pub const PROP_WINDOW_UIKIT_OPENGL_FRAMEBUFFER_NUMBER = "SDL.window.uikit.opengl.framebuffer";
pub const PROP_WINDOW_UIKIT_OPENGL_RENDERBUFFER_NUMBER = "SDL.window.uikit.opengl.renderbuffer";
pub const PROP_WINDOW_UIKIT_OPENGL_RESOLVE_FRAMEBUFFER_NUMBER = "SDL.window.uikit.opengl.resolve_framebuffer";
pub const PROP_WINDOW_KMSDRM_DEVICE_INDEX_NUMBER = "SDL.window.kmsdrm.dev_index";
pub const PROP_WINDOW_KMSDRM_DRM_FD_NUMBER = "SDL.window.kmsdrm.drm_fd";
pub const PROP_WINDOW_KMSDRM_GBM_DEVICE_POINTER = "SDL.window.kmsdrm.gbm_dev";
pub const PROP_WINDOW_COCOA_WINDOW_POINTER = "SDL.window.cocoa.window";
pub const PROP_WINDOW_COCOA_METAL_VIEW_TAG_NUMBER = "SDL.window.cocoa.metal_view_tag";
pub const PROP_WINDOW_OPENVR_OVERLAY_ID_NUMBER = "SDL.window.openvr.overlay_id";
pub const PROP_WINDOW_QNX_WINDOW_POINTER = "SDL.window.qnx.window";
pub const PROP_WINDOW_QNX_SURFACE_POINTER = "SDL.window.qnx.surface";
pub const PROP_WINDOW_VIVANTE_DISPLAY_POINTER = "SDL.window.vivante.display";
pub const PROP_WINDOW_VIVANTE_WINDOW_POINTER = "SDL.window.vivante.window";
pub const PROP_WINDOW_VIVANTE_SURFACE_POINTER = "SDL.window.vivante.surface";
pub const PROP_WINDOW_WIN32_HWND_POINTER = "SDL.window.win32.hwnd";
pub const PROP_WINDOW_WIN32_HDC_POINTER = "SDL.window.win32.hdc";
pub const PROP_WINDOW_WIN32_INSTANCE_POINTER = "SDL.window.win32.instance";
pub const PROP_WINDOW_WAYLAND_DISPLAY_POINTER = "SDL.window.wayland.display";
pub const PROP_WINDOW_WAYLAND_SURFACE_POINTER = "SDL.window.wayland.surface";
pub const PROP_WINDOW_WAYLAND_VIEWPORT_POINTER = "SDL.window.wayland.viewport";
pub const PROP_WINDOW_WAYLAND_EGL_WINDOW_POINTER = "SDL.window.wayland.egl_window";
pub const PROP_WINDOW_WAYLAND_XDG_SURFACE_POINTER = "SDL.window.wayland.xdg_surface";
pub const PROP_WINDOW_WAYLAND_XDG_TOPLEVEL_POINTER = "SDL.window.wayland.xdg_toplevel";
pub const PROP_WINDOW_WAYLAND_XDG_TOPLEVEL_EXPORT_HANDLE_STRING = "SDL.window.wayland.xdg_toplevel_export_handle";
pub const PROP_WINDOW_WAYLAND_XDG_POPUP_POINTER = "SDL.window.wayland.xdg_popup";
pub const PROP_WINDOW_WAYLAND_XDG_POSITIONER_POINTER = "SDL.window.wayland.xdg_positioner";
pub const PROP_WINDOW_X11_DISPLAY_POINTER = "SDL.window.x11.display";
pub const PROP_WINDOW_X11_SCREEN_NUMBER = "SDL.window.x11.screen";
pub const PROP_WINDOW_X11_WINDOW_NUMBER = "SDL.window.x11.window";
pub const PROP_WINDOW_EMSCRIPTEN_CANVAS_ID_STRING = "SDL.window.emscripten.canvas_id";
pub const PROP_WINDOW_EMSCRIPTEN_KEYBOARD_ELEMENT_STRING = "SDL.window.emscripten.keyboard_element";
pub const WINDOW_SURFACE_VSYNC_DISABLED = @as(c_int, 0);
pub const WINDOW_SURFACE_VSYNC_ADAPTIVE = -@as(c_int, 1);
pub const PROP_FILE_DIALOG_FILTERS_POINTER = "SDL.filedialog.filters";
pub const PROP_FILE_DIALOG_NFILTERS_NUMBER = "SDL.filedialog.nfilters";
pub const PROP_FILE_DIALOG_WINDOW_POINTER = "SDL.filedialog.window";
pub const PROP_FILE_DIALOG_LOCATION_STRING = "SDL.filedialog.location";
pub const PROP_FILE_DIALOG_MANY_BOOLEAN = "SDL.filedialog.many";
pub const PROP_FILE_DIALOG_TITLE_STRING = "SDL.filedialog.title";
pub const PROP_FILE_DIALOG_ACCEPT_STRING = "SDL.filedialog.accept";
pub const PROP_FILE_DIALOG_CANCEL_STRING = "SDL.filedialog.cancel";
pub const ELF_NOTE_DLOPEN_PRIORITY_SUGGESTED = "suggested";
pub const ELF_NOTE_DLOPEN_PRIORITY_RECOMMENDED = "recommended";
pub const ELF_NOTE_DLOPEN_PRIORITY_REQUIRED = "required";
pub const ELF_NOTE_DLOPEN_VENDOR = "FDO";
pub const ELF_NOTE_DLOPEN_TYPE = __helpers.promoteIntLiteral(c_uint, 0x407c0c0a, .hex);
pub const ELF_NOTE_INTERNAL2 = @compileError("unable to translate macro: undefined identifier `aligned`"); // include/SDL3/SDL_dlopennote.h:123:9
pub inline fn ELF_NOTE_INTERNAL(json: anytype, variable_name: anytype) @TypeOf(ELF_NOTE_INTERNAL2(json, variable_name)) {
    _ = &json;
    _ = &variable_name;
    return ELF_NOTE_INTERNAL2(json, variable_name);
}
pub inline fn DLNOTE_JSON_ARRAY1(N1: anytype) @TypeOf("[\"" ++ N1 ++ "\"]") {
    _ = &N1;
    return "[\"" ++ N1 ++ "\"]";
}
pub inline fn DLNOTE_JSON_ARRAY2(N1: anytype, N2: anytype) @TypeOf("[\"" ++ N1 ++ "\",\"" ++ N2 ++ "\"]") {
    _ = &N1;
    _ = &N2;
    return "[\"" ++ N1 ++ "\",\"" ++ N2 ++ "\"]";
}
pub inline fn DLNOTE_JSON_ARRAY3(N1: anytype, N2: anytype, N3: anytype) @TypeOf("[\"" ++ N1 ++ "\",\"" ++ N2 ++ "\",\"" ++ N3 ++ "\"]") {
    _ = &N1;
    _ = &N2;
    _ = &N3;
    return "[\"" ++ N1 ++ "\",\"" ++ N2 ++ "\",\"" ++ N3 ++ "\"]";
}
pub inline fn DLNOTE_JSON_ARRAY4(N1: anytype, N2: anytype, N3: anytype, N4: anytype) @TypeOf("[\"" ++ N1 ++ "\",\"" ++ N2 ++ "\",\"" ++ N3 ++ "\",\"" ++ N4 ++ "\"]") {
    _ = &N1;
    _ = &N2;
    _ = &N3;
    _ = &N4;
    return "[\"" ++ N1 ++ "\",\"" ++ N2 ++ "\",\"" ++ N3 ++ "\",\"" ++ N4 ++ "\"]";
}
pub inline fn DLNOTE_JSON_ARRAY5(N1: anytype, N2: anytype, N3: anytype, N4: anytype, N5: anytype) @TypeOf("[\"" ++ N1 ++ "\",\"" ++ N2 ++ "\",\"" ++ N3 ++ "\",\"" ++ N4 ++ "\",\"" ++ N5 ++ "\"]") {
    _ = &N1;
    _ = &N2;
    _ = &N3;
    _ = &N4;
    _ = &N5;
    return "[\"" ++ N1 ++ "\",\"" ++ N2 ++ "\",\"" ++ N3 ++ "\",\"" ++ N4 ++ "\",\"" ++ N5 ++ "\"]";
}
pub inline fn DLNOTE_JSON_ARRAY6(N1: anytype, N2: anytype, N3: anytype, N4: anytype, N5: anytype, N6: anytype) @TypeOf("[\"" ++ N1 ++ "\",\"" ++ N2 ++ "\",\"" ++ N3 ++ "\",\"" ++ N4 ++ "\",\"" ++ N5 ++ "\",\"" ++ N6 ++ "\"]") {
    _ = &N1;
    _ = &N2;
    _ = &N3;
    _ = &N4;
    _ = &N5;
    _ = &N6;
    return "[\"" ++ N1 ++ "\",\"" ++ N2 ++ "\",\"" ++ N3 ++ "\",\"" ++ N4 ++ "\",\"" ++ N5 ++ "\",\"" ++ N6 ++ "\"]";
}
pub inline fn DLNOTE_JSON_ARRAY7(N1: anytype, N2: anytype, N3: anytype, N4: anytype, N5: anytype, N6: anytype, N7: anytype) @TypeOf("[\"" ++ N1 ++ "\",\"" ++ N2 ++ "\",\"" ++ N3 ++ "\",\"" ++ N4 ++ "\",\"" ++ N5 ++ "\",\"" ++ N6 ++ "\",\"" ++ N7 ++ "\"]") {
    _ = &N1;
    _ = &N2;
    _ = &N3;
    _ = &N4;
    _ = &N5;
    _ = &N6;
    _ = &N7;
    return "[\"" ++ N1 ++ "\",\"" ++ N2 ++ "\",\"" ++ N3 ++ "\",\"" ++ N4 ++ "\",\"" ++ N5 ++ "\",\"" ++ N6 ++ "\",\"" ++ N7 ++ "\"]";
}
pub inline fn DLNOTE_JSON_ARRAY8(N1: anytype, N2: anytype, N3: anytype, N4: anytype, N5: anytype, N6: anytype, N7: anytype, N8: anytype) @TypeOf("[\"" ++ N1 ++ "\",\"" ++ N2 ++ "\",\"" ++ N3 ++ "\",\"" ++ N4 ++ "\",\"" ++ N5 ++ "\",\"" ++ N6 ++ "\",\"" ++ N7 ++ "\",\"" ++ N8 ++ "\"]") {
    _ = &N1;
    _ = &N2;
    _ = &N3;
    _ = &N4;
    _ = &N5;
    _ = &N6;
    _ = &N7;
    _ = &N8;
    return "[\"" ++ N1 ++ "\",\"" ++ N2 ++ "\",\"" ++ N3 ++ "\",\"" ++ N4 ++ "\",\"" ++ N5 ++ "\",\"" ++ N6 ++ "\",\"" ++ N7 ++ "\",\"" ++ N8 ++ "\"]";
}
pub inline fn DLNOTE_JSON_ARRAY_GET(N1: anytype, N2: anytype, N3: anytype, N4: anytype, N5: anytype, N6: anytype, N7: anytype, N8: anytype, NAME: anytype) @TypeOf(NAME) {
    _ = &N1;
    _ = &N2;
    _ = &N3;
    _ = &N4;
    _ = &N5;
    _ = &N6;
    _ = &N7;
    _ = &N8;
    _ = &NAME;
    return NAME;
}
pub const DLNOTE_JSON_ARRAY = @compileError("unable to translate C expr: unexpected token '__VA_ARGS__'"); // include/SDL3/SDL_dlopennote.h:155:9
pub const DLNOTE_JOIN2 = @compileError("unable to translate C expr: unexpected token '##'"); // include/SDL3/SDL_dlopennote.h:171:9
pub inline fn DLNOTE_JOIN(A: anytype, B: anytype) @TypeOf(DLNOTE_JOIN2(A, B)) {
    _ = &A;
    _ = &B;
    return DLNOTE_JOIN2(A, B);
}
pub const DLNOTE_UNIQUE_NAME = @compileError("unable to translate macro: undefined identifier `s_SDL_dlopen_note_`"); // include/SDL3/SDL_dlopennote.h:173:9
pub const ELF_NOTE_DLOPEN = @compileError("unable to translate C expr: unexpected token '__VA_ARGS__'"); // include/SDL3/SDL_dlopennote.h:212:9
pub const STANDARD_GRAVITY = @as(f32, 9.80665);
pub const JOYSTICK_AXIS_MAX = @as(c_int, 32767);
pub const JOYSTICK_AXIS_MIN = -__helpers.promoteIntLiteral(c_int, 32768, .decimal);
pub const PROP_JOYSTICK_CAP_MONO_LED_BOOLEAN = "SDL.joystick.cap.mono_led";
pub const PROP_JOYSTICK_CAP_RGB_LED_BOOLEAN = "SDL.joystick.cap.rgb_led";
pub const PROP_JOYSTICK_CAP_PLAYER_LED_BOOLEAN = "SDL.joystick.cap.player_led";
pub const PROP_JOYSTICK_CAP_RUMBLE_BOOLEAN = "SDL.joystick.cap.rumble";
pub const PROP_JOYSTICK_CAP_TRIGGER_RUMBLE_BOOLEAN = "SDL.joystick.cap.trigger_rumble";
pub const HAT_CENTERED = @as(c_uint, 0x00);
pub const HAT_UP = @as(c_uint, 0x01);
pub const HAT_RIGHT = @as(c_uint, 0x02);
pub const HAT_DOWN = @as(c_uint, 0x04);
pub const HAT_LEFT = @as(c_uint, 0x08);
pub const HAT_RIGHTUP = HAT_RIGHT | HAT_UP;
pub const HAT_RIGHTDOWN = HAT_RIGHT | HAT_DOWN;
pub const HAT_LEFTUP = HAT_LEFT | HAT_UP;
pub const HAT_LEFTDOWN = HAT_LEFT | HAT_DOWN;
pub const PROP_GAMEPAD_CAP_MONO_LED_BOOLEAN = PROP_JOYSTICK_CAP_MONO_LED_BOOLEAN;
pub const PROP_GAMEPAD_CAP_RGB_LED_BOOLEAN = PROP_JOYSTICK_CAP_RGB_LED_BOOLEAN;
pub const PROP_GAMEPAD_CAP_PLAYER_LED_BOOLEAN = PROP_JOYSTICK_CAP_PLAYER_LED_BOOLEAN;
pub const PROP_GAMEPAD_CAP_RUMBLE_BOOLEAN = PROP_JOYSTICK_CAP_RUMBLE_BOOLEAN;
pub const PROP_GAMEPAD_CAP_TRIGGER_RUMBLE_BOOLEAN = PROP_JOYSTICK_CAP_TRIGGER_RUMBLE_BOOLEAN;
pub const KEY_EXTENDED_MASK = @as(c_uint, 1) << @as(c_int, 29);
pub const KEY_SCANCODE_MASK = @as(c_uint, 1) << @as(c_int, 30);
pub inline fn SCANCODE_TO_KEYCODE(X: anytype) @TypeOf(X | KEY_SCANCODE_MASK) {
    _ = &X;
    return X | KEY_SCANCODE_MASK;
}
pub const KEY_UNKNOWN = @as(c_uint, 0x00000000);
pub const KEY_RETURN = @as(c_uint, 0x0000000d);
pub const KEY_ESCAPE = @as(c_uint, 0x0000001b);
pub const KEY_BACKSPACE = @as(c_uint, 0x00000008);
pub const KEY_TAB = @as(c_uint, 0x00000009);
pub const KEY_SPACE = @as(c_uint, 0x00000020);
pub const KEY_EXCLAIM = @as(c_uint, 0x00000021);
pub const KEY_DBLAPOSTROPHE = @as(c_uint, 0x00000022);
pub const KEY_HASH = @as(c_uint, 0x00000023);
pub const KEY_DOLLAR = @as(c_uint, 0x00000024);
pub const KEY_PERCENT = @as(c_uint, 0x00000025);
pub const KEY_AMPERSAND = @as(c_uint, 0x00000026);
pub const KEY_APOSTROPHE = @as(c_uint, 0x00000027);
pub const KEY_LEFTPAREN = @as(c_uint, 0x00000028);
pub const KEY_RIGHTPAREN = @as(c_uint, 0x00000029);
pub const KEY_ASTERISK = @as(c_uint, 0x0000002a);
pub const KEY_PLUS = @as(c_uint, 0x0000002b);
pub const KEY_COMMA = @as(c_uint, 0x0000002c);
pub const KEY_MINUS = @as(c_uint, 0x0000002d);
pub const KEY_PERIOD = @as(c_uint, 0x0000002e);
pub const KEY_SLASH = @as(c_uint, 0x0000002f);
pub const KEY_0 = @as(c_uint, 0x00000030);
pub const KEY_1 = @as(c_uint, 0x00000031);
pub const KEY_2 = @as(c_uint, 0x00000032);
pub const KEY_3 = @as(c_uint, 0x00000033);
pub const KEY_4 = @as(c_uint, 0x00000034);
pub const KEY_5 = @as(c_uint, 0x00000035);
pub const KEY_6 = @as(c_uint, 0x00000036);
pub const KEY_7 = @as(c_uint, 0x00000037);
pub const KEY_8 = @as(c_uint, 0x00000038);
pub const KEY_9 = @as(c_uint, 0x00000039);
pub const KEY_COLON = @as(c_uint, 0x0000003a);
pub const KEY_SEMICOLON = @as(c_uint, 0x0000003b);
pub const KEY_LESS = @as(c_uint, 0x0000003c);
pub const KEY_EQUALS = @as(c_uint, 0x0000003d);
pub const KEY_GREATER = @as(c_uint, 0x0000003e);
pub const KEY_QUESTION = @as(c_uint, 0x0000003f);
pub const KEY_AT = @as(c_uint, 0x00000040);
pub const KEY_LEFTBRACKET = @as(c_uint, 0x0000005b);
pub const KEY_BACKSLASH = @as(c_uint, 0x0000005c);
pub const KEY_RIGHTBRACKET = @as(c_uint, 0x0000005d);
pub const KEY_CARET = @as(c_uint, 0x0000005e);
pub const KEY_UNDERSCORE = @as(c_uint, 0x0000005f);
pub const KEY_GRAVE = @as(c_uint, 0x00000060);
pub const KEY_A = @as(c_uint, 0x00000061);
pub const KEY_B = @as(c_uint, 0x00000062);
pub const KEY_C = @as(c_uint, 0x00000063);
pub const KEY_D = @as(c_uint, 0x00000064);
pub const KEY_E = @as(c_uint, 0x00000065);
pub const KEY_F = @as(c_uint, 0x00000066);
pub const KEY_G = @as(c_uint, 0x00000067);
pub const KEY_H = @as(c_uint, 0x00000068);
pub const KEY_I = @as(c_uint, 0x00000069);
pub const KEY_J = @as(c_uint, 0x0000006a);
pub const KEY_K = @as(c_uint, 0x0000006b);
pub const KEY_L = @as(c_uint, 0x0000006c);
pub const KEY_M = @as(c_uint, 0x0000006d);
pub const KEY_N = @as(c_uint, 0x0000006e);
pub const KEY_O = @as(c_uint, 0x0000006f);
pub const KEY_P = @as(c_uint, 0x00000070);
pub const KEY_Q = @as(c_uint, 0x00000071);
pub const KEY_R = @as(c_uint, 0x00000072);
pub const KEY_S = @as(c_uint, 0x00000073);
pub const KEY_T = @as(c_uint, 0x00000074);
pub const KEY_U = @as(c_uint, 0x00000075);
pub const KEY_V = @as(c_uint, 0x00000076);
pub const KEY_W = @as(c_uint, 0x00000077);
pub const KEY_X = @as(c_uint, 0x00000078);
pub const KEY_Y = @as(c_uint, 0x00000079);
pub const KEY_Z = @as(c_uint, 0x0000007a);
pub const KEY_LEFTBRACE = @as(c_uint, 0x0000007b);
pub const KEY_PIPE = @as(c_uint, 0x0000007c);
pub const KEY_RIGHTBRACE = @as(c_uint, 0x0000007d);
pub const KEY_TILDE = @as(c_uint, 0x0000007e);
pub const KEY_DELETE = @as(c_uint, 0x0000007f);
pub const KEY_PLUSMINUS = @as(c_uint, 0x000000b1);
pub const KEY_CAPSLOCK = __helpers.promoteIntLiteral(c_uint, 0x40000039, .hex);
pub const KEY_F1 = __helpers.promoteIntLiteral(c_uint, 0x4000003a, .hex);
pub const KEY_F2 = __helpers.promoteIntLiteral(c_uint, 0x4000003b, .hex);
pub const KEY_F3 = __helpers.promoteIntLiteral(c_uint, 0x4000003c, .hex);
pub const KEY_F4 = __helpers.promoteIntLiteral(c_uint, 0x4000003d, .hex);
pub const KEY_F5 = __helpers.promoteIntLiteral(c_uint, 0x4000003e, .hex);
pub const KEY_F6 = __helpers.promoteIntLiteral(c_uint, 0x4000003f, .hex);
pub const KEY_F7 = __helpers.promoteIntLiteral(c_uint, 0x40000040, .hex);
pub const KEY_F8 = __helpers.promoteIntLiteral(c_uint, 0x40000041, .hex);
pub const KEY_F9 = __helpers.promoteIntLiteral(c_uint, 0x40000042, .hex);
pub const KEY_F10 = __helpers.promoteIntLiteral(c_uint, 0x40000043, .hex);
pub const KEY_F11 = __helpers.promoteIntLiteral(c_uint, 0x40000044, .hex);
pub const KEY_F12 = __helpers.promoteIntLiteral(c_uint, 0x40000045, .hex);
pub const KEY_PRINTSCREEN = __helpers.promoteIntLiteral(c_uint, 0x40000046, .hex);
pub const KEY_SCROLLLOCK = __helpers.promoteIntLiteral(c_uint, 0x40000047, .hex);
pub const KEY_PAUSE = __helpers.promoteIntLiteral(c_uint, 0x40000048, .hex);
pub const KEY_INSERT = __helpers.promoteIntLiteral(c_uint, 0x40000049, .hex);
pub const KEY_HOME = __helpers.promoteIntLiteral(c_uint, 0x4000004a, .hex);
pub const KEY_PAGEUP = __helpers.promoteIntLiteral(c_uint, 0x4000004b, .hex);
pub const KEY_END = __helpers.promoteIntLiteral(c_uint, 0x4000004d, .hex);
pub const KEY_PAGEDOWN = __helpers.promoteIntLiteral(c_uint, 0x4000004e, .hex);
pub const KEY_RIGHT = __helpers.promoteIntLiteral(c_uint, 0x4000004f, .hex);
pub const KEY_LEFT = __helpers.promoteIntLiteral(c_uint, 0x40000050, .hex);
pub const KEY_DOWN = __helpers.promoteIntLiteral(c_uint, 0x40000051, .hex);
pub const KEY_UP = __helpers.promoteIntLiteral(c_uint, 0x40000052, .hex);
pub const KEY_NUMLOCKCLEAR = __helpers.promoteIntLiteral(c_uint, 0x40000053, .hex);
pub const KEY_KP_DIVIDE = __helpers.promoteIntLiteral(c_uint, 0x40000054, .hex);
pub const KEY_KP_MULTIPLY = __helpers.promoteIntLiteral(c_uint, 0x40000055, .hex);
pub const KEY_KP_MINUS = __helpers.promoteIntLiteral(c_uint, 0x40000056, .hex);
pub const KEY_KP_PLUS = __helpers.promoteIntLiteral(c_uint, 0x40000057, .hex);
pub const KEY_KP_ENTER = __helpers.promoteIntLiteral(c_uint, 0x40000058, .hex);
pub const KEY_KP_1 = __helpers.promoteIntLiteral(c_uint, 0x40000059, .hex);
pub const KEY_KP_2 = __helpers.promoteIntLiteral(c_uint, 0x4000005a, .hex);
pub const KEY_KP_3 = __helpers.promoteIntLiteral(c_uint, 0x4000005b, .hex);
pub const KEY_KP_4 = __helpers.promoteIntLiteral(c_uint, 0x4000005c, .hex);
pub const KEY_KP_5 = __helpers.promoteIntLiteral(c_uint, 0x4000005d, .hex);
pub const KEY_KP_6 = __helpers.promoteIntLiteral(c_uint, 0x4000005e, .hex);
pub const KEY_KP_7 = __helpers.promoteIntLiteral(c_uint, 0x4000005f, .hex);
pub const KEY_KP_8 = __helpers.promoteIntLiteral(c_uint, 0x40000060, .hex);
pub const KEY_KP_9 = __helpers.promoteIntLiteral(c_uint, 0x40000061, .hex);
pub const KEY_KP_0 = __helpers.promoteIntLiteral(c_uint, 0x40000062, .hex);
pub const KEY_KP_PERIOD = __helpers.promoteIntLiteral(c_uint, 0x40000063, .hex);
pub const KEY_APPLICATION = __helpers.promoteIntLiteral(c_uint, 0x40000065, .hex);
pub const KEY_POWER = __helpers.promoteIntLiteral(c_uint, 0x40000066, .hex);
pub const KEY_KP_EQUALS = __helpers.promoteIntLiteral(c_uint, 0x40000067, .hex);
pub const KEY_F13 = __helpers.promoteIntLiteral(c_uint, 0x40000068, .hex);
pub const KEY_F14 = __helpers.promoteIntLiteral(c_uint, 0x40000069, .hex);
pub const KEY_F15 = __helpers.promoteIntLiteral(c_uint, 0x4000006a, .hex);
pub const KEY_F16 = __helpers.promoteIntLiteral(c_uint, 0x4000006b, .hex);
pub const KEY_F17 = __helpers.promoteIntLiteral(c_uint, 0x4000006c, .hex);
pub const KEY_F18 = __helpers.promoteIntLiteral(c_uint, 0x4000006d, .hex);
pub const KEY_F19 = __helpers.promoteIntLiteral(c_uint, 0x4000006e, .hex);
pub const KEY_F20 = __helpers.promoteIntLiteral(c_uint, 0x4000006f, .hex);
pub const KEY_F21 = __helpers.promoteIntLiteral(c_uint, 0x40000070, .hex);
pub const KEY_F22 = __helpers.promoteIntLiteral(c_uint, 0x40000071, .hex);
pub const KEY_F23 = __helpers.promoteIntLiteral(c_uint, 0x40000072, .hex);
pub const KEY_F24 = __helpers.promoteIntLiteral(c_uint, 0x40000073, .hex);
pub const KEY_EXECUTE = __helpers.promoteIntLiteral(c_uint, 0x40000074, .hex);
pub const KEY_HELP = __helpers.promoteIntLiteral(c_uint, 0x40000075, .hex);
pub const KEY_MENU = __helpers.promoteIntLiteral(c_uint, 0x40000076, .hex);
pub const KEY_SELECT = __helpers.promoteIntLiteral(c_uint, 0x40000077, .hex);
pub const KEY_STOP = __helpers.promoteIntLiteral(c_uint, 0x40000078, .hex);
pub const KEY_AGAIN = __helpers.promoteIntLiteral(c_uint, 0x40000079, .hex);
pub const KEY_UNDO = __helpers.promoteIntLiteral(c_uint, 0x4000007a, .hex);
pub const KEY_CUT = __helpers.promoteIntLiteral(c_uint, 0x4000007b, .hex);
pub const KEY_COPY = __helpers.promoteIntLiteral(c_uint, 0x4000007c, .hex);
pub const KEY_PASTE = __helpers.promoteIntLiteral(c_uint, 0x4000007d, .hex);
pub const KEY_FIND = __helpers.promoteIntLiteral(c_uint, 0x4000007e, .hex);
pub const KEY_MUTE = __helpers.promoteIntLiteral(c_uint, 0x4000007f, .hex);
pub const KEY_VOLUMEUP = __helpers.promoteIntLiteral(c_uint, 0x40000080, .hex);
pub const KEY_VOLUMEDOWN = __helpers.promoteIntLiteral(c_uint, 0x40000081, .hex);
pub const KEY_KP_COMMA = __helpers.promoteIntLiteral(c_uint, 0x40000085, .hex);
pub const KEY_KP_EQUALSAS400 = __helpers.promoteIntLiteral(c_uint, 0x40000086, .hex);
pub const KEY_ALTERASE = __helpers.promoteIntLiteral(c_uint, 0x40000099, .hex);
pub const KEY_SYSREQ = __helpers.promoteIntLiteral(c_uint, 0x4000009a, .hex);
pub const KEY_CANCEL = __helpers.promoteIntLiteral(c_uint, 0x4000009b, .hex);
pub const KEY_CLEAR = __helpers.promoteIntLiteral(c_uint, 0x4000009c, .hex);
pub const KEY_PRIOR = __helpers.promoteIntLiteral(c_uint, 0x4000009d, .hex);
pub const KEY_RETURN2 = __helpers.promoteIntLiteral(c_uint, 0x4000009e, .hex);
pub const KEY_SEPARATOR = __helpers.promoteIntLiteral(c_uint, 0x4000009f, .hex);
pub const KEY_OUT = __helpers.promoteIntLiteral(c_uint, 0x400000a0, .hex);
pub const KEY_OPER = __helpers.promoteIntLiteral(c_uint, 0x400000a1, .hex);
pub const KEY_CLEARAGAIN = __helpers.promoteIntLiteral(c_uint, 0x400000a2, .hex);
pub const KEY_CRSEL = __helpers.promoteIntLiteral(c_uint, 0x400000a3, .hex);
pub const KEY_EXSEL = __helpers.promoteIntLiteral(c_uint, 0x400000a4, .hex);
pub const KEY_KP_00 = __helpers.promoteIntLiteral(c_uint, 0x400000b0, .hex);
pub const KEY_KP_000 = __helpers.promoteIntLiteral(c_uint, 0x400000b1, .hex);
pub const KEY_THOUSANDSSEPARATOR = __helpers.promoteIntLiteral(c_uint, 0x400000b2, .hex);
pub const KEY_DECIMALSEPARATOR = __helpers.promoteIntLiteral(c_uint, 0x400000b3, .hex);
pub const KEY_CURRENCYUNIT = __helpers.promoteIntLiteral(c_uint, 0x400000b4, .hex);
pub const KEY_CURRENCYSUBUNIT = __helpers.promoteIntLiteral(c_uint, 0x400000b5, .hex);
pub const KEY_KP_LEFTPAREN = __helpers.promoteIntLiteral(c_uint, 0x400000b6, .hex);
pub const KEY_KP_RIGHTPAREN = __helpers.promoteIntLiteral(c_uint, 0x400000b7, .hex);
pub const KEY_KP_LEFTBRACE = __helpers.promoteIntLiteral(c_uint, 0x400000b8, .hex);
pub const KEY_KP_RIGHTBRACE = __helpers.promoteIntLiteral(c_uint, 0x400000b9, .hex);
pub const KEY_KP_TAB = __helpers.promoteIntLiteral(c_uint, 0x400000ba, .hex);
pub const KEY_KP_BACKSPACE = __helpers.promoteIntLiteral(c_uint, 0x400000bb, .hex);
pub const KEY_KP_A = __helpers.promoteIntLiteral(c_uint, 0x400000bc, .hex);
pub const KEY_KP_B = __helpers.promoteIntLiteral(c_uint, 0x400000bd, .hex);
pub const KEY_KP_C = __helpers.promoteIntLiteral(c_uint, 0x400000be, .hex);
pub const KEY_KP_D = __helpers.promoteIntLiteral(c_uint, 0x400000bf, .hex);
pub const KEY_KP_E = __helpers.promoteIntLiteral(c_uint, 0x400000c0, .hex);
pub const KEY_KP_F = __helpers.promoteIntLiteral(c_uint, 0x400000c1, .hex);
pub const KEY_KP_XOR = __helpers.promoteIntLiteral(c_uint, 0x400000c2, .hex);
pub const KEY_KP_POWER = __helpers.promoteIntLiteral(c_uint, 0x400000c3, .hex);
pub const KEY_KP_PERCENT = __helpers.promoteIntLiteral(c_uint, 0x400000c4, .hex);
pub const KEY_KP_LESS = __helpers.promoteIntLiteral(c_uint, 0x400000c5, .hex);
pub const KEY_KP_GREATER = __helpers.promoteIntLiteral(c_uint, 0x400000c6, .hex);
pub const KEY_KP_AMPERSAND = __helpers.promoteIntLiteral(c_uint, 0x400000c7, .hex);
pub const KEY_KP_DBLAMPERSAND = __helpers.promoteIntLiteral(c_uint, 0x400000c8, .hex);
pub const KEY_KP_VERTICALBAR = __helpers.promoteIntLiteral(c_uint, 0x400000c9, .hex);
pub const KEY_KP_DBLVERTICALBAR = __helpers.promoteIntLiteral(c_uint, 0x400000ca, .hex);
pub const KEY_KP_COLON = __helpers.promoteIntLiteral(c_uint, 0x400000cb, .hex);
pub const KEY_KP_HASH = __helpers.promoteIntLiteral(c_uint, 0x400000cc, .hex);
pub const KEY_KP_SPACE = __helpers.promoteIntLiteral(c_uint, 0x400000cd, .hex);
pub const KEY_KP_AT = __helpers.promoteIntLiteral(c_uint, 0x400000ce, .hex);
pub const KEY_KP_EXCLAM = __helpers.promoteIntLiteral(c_uint, 0x400000cf, .hex);
pub const KEY_KP_MEMSTORE = __helpers.promoteIntLiteral(c_uint, 0x400000d0, .hex);
pub const KEY_KP_MEMRECALL = __helpers.promoteIntLiteral(c_uint, 0x400000d1, .hex);
pub const KEY_KP_MEMCLEAR = __helpers.promoteIntLiteral(c_uint, 0x400000d2, .hex);
pub const KEY_KP_MEMADD = __helpers.promoteIntLiteral(c_uint, 0x400000d3, .hex);
pub const KEY_KP_MEMSUBTRACT = __helpers.promoteIntLiteral(c_uint, 0x400000d4, .hex);
pub const KEY_KP_MEMMULTIPLY = __helpers.promoteIntLiteral(c_uint, 0x400000d5, .hex);
pub const KEY_KP_MEMDIVIDE = __helpers.promoteIntLiteral(c_uint, 0x400000d6, .hex);
pub const KEY_KP_PLUSMINUS = __helpers.promoteIntLiteral(c_uint, 0x400000d7, .hex);
pub const KEY_KP_CLEAR = __helpers.promoteIntLiteral(c_uint, 0x400000d8, .hex);
pub const KEY_KP_CLEARENTRY = __helpers.promoteIntLiteral(c_uint, 0x400000d9, .hex);
pub const KEY_KP_BINARY = __helpers.promoteIntLiteral(c_uint, 0x400000da, .hex);
pub const KEY_KP_OCTAL = __helpers.promoteIntLiteral(c_uint, 0x400000db, .hex);
pub const KEY_KP_DECIMAL = __helpers.promoteIntLiteral(c_uint, 0x400000dc, .hex);
pub const KEY_KP_HEXADECIMAL = __helpers.promoteIntLiteral(c_uint, 0x400000dd, .hex);
pub const KEY_LCTRL = __helpers.promoteIntLiteral(c_uint, 0x400000e0, .hex);
pub const KEY_LSHIFT = __helpers.promoteIntLiteral(c_uint, 0x400000e1, .hex);
pub const KEY_LALT = __helpers.promoteIntLiteral(c_uint, 0x400000e2, .hex);
pub const KEY_LGUI = __helpers.promoteIntLiteral(c_uint, 0x400000e3, .hex);
pub const KEY_RCTRL = __helpers.promoteIntLiteral(c_uint, 0x400000e4, .hex);
pub const KEY_RSHIFT = __helpers.promoteIntLiteral(c_uint, 0x400000e5, .hex);
pub const KEY_RALT = __helpers.promoteIntLiteral(c_uint, 0x400000e6, .hex);
pub const KEY_RGUI = __helpers.promoteIntLiteral(c_uint, 0x400000e7, .hex);
pub const KEY_MODE = __helpers.promoteIntLiteral(c_uint, 0x40000101, .hex);
pub const KEY_SLEEP = __helpers.promoteIntLiteral(c_uint, 0x40000102, .hex);
pub const KEY_WAKE = __helpers.promoteIntLiteral(c_uint, 0x40000103, .hex);
pub const KEY_CHANNEL_INCREMENT = __helpers.promoteIntLiteral(c_uint, 0x40000104, .hex);
pub const KEY_CHANNEL_DECREMENT = __helpers.promoteIntLiteral(c_uint, 0x40000105, .hex);
pub const KEY_MEDIA_PLAY = __helpers.promoteIntLiteral(c_uint, 0x40000106, .hex);
pub const KEY_MEDIA_PAUSE = __helpers.promoteIntLiteral(c_uint, 0x40000107, .hex);
pub const KEY_MEDIA_RECORD = __helpers.promoteIntLiteral(c_uint, 0x40000108, .hex);
pub const KEY_MEDIA_FAST_FORWARD = __helpers.promoteIntLiteral(c_uint, 0x40000109, .hex);
pub const KEY_MEDIA_REWIND = __helpers.promoteIntLiteral(c_uint, 0x4000010a, .hex);
pub const KEY_MEDIA_NEXT_TRACK = __helpers.promoteIntLiteral(c_uint, 0x4000010b, .hex);
pub const KEY_MEDIA_PREVIOUS_TRACK = __helpers.promoteIntLiteral(c_uint, 0x4000010c, .hex);
pub const KEY_MEDIA_STOP = __helpers.promoteIntLiteral(c_uint, 0x4000010d, .hex);
pub const KEY_MEDIA_EJECT = __helpers.promoteIntLiteral(c_uint, 0x4000010e, .hex);
pub const KEY_MEDIA_PLAY_PAUSE = __helpers.promoteIntLiteral(c_uint, 0x4000010f, .hex);
pub const KEY_MEDIA_SELECT = __helpers.promoteIntLiteral(c_uint, 0x40000110, .hex);
pub const KEY_AC_NEW = __helpers.promoteIntLiteral(c_uint, 0x40000111, .hex);
pub const KEY_AC_OPEN = __helpers.promoteIntLiteral(c_uint, 0x40000112, .hex);
pub const KEY_AC_CLOSE = __helpers.promoteIntLiteral(c_uint, 0x40000113, .hex);
pub const KEY_AC_EXIT = __helpers.promoteIntLiteral(c_uint, 0x40000114, .hex);
pub const KEY_AC_SAVE = __helpers.promoteIntLiteral(c_uint, 0x40000115, .hex);
pub const KEY_AC_PRINT = __helpers.promoteIntLiteral(c_uint, 0x40000116, .hex);
pub const KEY_AC_PROPERTIES = __helpers.promoteIntLiteral(c_uint, 0x40000117, .hex);
pub const KEY_AC_SEARCH = __helpers.promoteIntLiteral(c_uint, 0x40000118, .hex);
pub const KEY_AC_HOME = __helpers.promoteIntLiteral(c_uint, 0x40000119, .hex);
pub const KEY_AC_BACK = __helpers.promoteIntLiteral(c_uint, 0x4000011a, .hex);
pub const KEY_AC_FORWARD = __helpers.promoteIntLiteral(c_uint, 0x4000011b, .hex);
pub const KEY_AC_STOP = __helpers.promoteIntLiteral(c_uint, 0x4000011c, .hex);
pub const KEY_AC_REFRESH = __helpers.promoteIntLiteral(c_uint, 0x4000011d, .hex);
pub const KEY_AC_BOOKMARKS = __helpers.promoteIntLiteral(c_uint, 0x4000011e, .hex);
pub const KEY_SOFTLEFT = __helpers.promoteIntLiteral(c_uint, 0x4000011f, .hex);
pub const KEY_SOFTRIGHT = __helpers.promoteIntLiteral(c_uint, 0x40000120, .hex);
pub const KEY_CALL = __helpers.promoteIntLiteral(c_uint, 0x40000121, .hex);
pub const KEY_ENDCALL = __helpers.promoteIntLiteral(c_uint, 0x40000122, .hex);
pub const KEY_LEFT_TAB = __helpers.promoteIntLiteral(c_uint, 0x20000001, .hex);
pub const KEY_LEVEL5_SHIFT = __helpers.promoteIntLiteral(c_uint, 0x20000002, .hex);
pub const KEY_MULTI_KEY_COMPOSE = __helpers.promoteIntLiteral(c_uint, 0x20000003, .hex);
pub const KEY_LMETA = __helpers.promoteIntLiteral(c_uint, 0x20000004, .hex);
pub const KEY_RMETA = __helpers.promoteIntLiteral(c_uint, 0x20000005, .hex);
pub const KEY_LHYPER = __helpers.promoteIntLiteral(c_uint, 0x20000006, .hex);
pub const KEY_RHYPER = __helpers.promoteIntLiteral(c_uint, 0x20000007, .hex);
pub const KMOD_NONE = @as(c_uint, 0x0000);
pub const KMOD_LSHIFT = @as(c_uint, 0x0001);
pub const KMOD_RSHIFT = @as(c_uint, 0x0002);
pub const KMOD_LEVEL5 = @as(c_uint, 0x0004);
pub const KMOD_LCTRL = @as(c_uint, 0x0040);
pub const KMOD_RCTRL = @as(c_uint, 0x0080);
pub const KMOD_LALT = @as(c_uint, 0x0100);
pub const KMOD_RALT = @as(c_uint, 0x0200);
pub const KMOD_LGUI = @as(c_uint, 0x0400);
pub const KMOD_RGUI = @as(c_uint, 0x0800);
pub const KMOD_NUM = @as(c_uint, 0x1000);
pub const KMOD_CAPS = @as(c_uint, 0x2000);
pub const KMOD_MODE = @as(c_uint, 0x4000);
pub const KMOD_SCROLL = @as(c_uint, 0x8000);
pub const KMOD_CTRL = KMOD_LCTRL | KMOD_RCTRL;
pub const KMOD_SHIFT = KMOD_LSHIFT | KMOD_RSHIFT;
pub const KMOD_ALT = KMOD_LALT | KMOD_RALT;
pub const KMOD_GUI = KMOD_LGUI | KMOD_RGUI;
pub const PROP_TEXTINPUT_TYPE_NUMBER = "SDL.textinput.type";
pub const PROP_TEXTINPUT_CAPITALIZATION_NUMBER = "SDL.textinput.capitalization";
pub const PROP_TEXTINPUT_AUTOCORRECT_BOOLEAN = "SDL.textinput.autocorrect";
pub const PROP_TEXTINPUT_MULTILINE_BOOLEAN = "SDL.textinput.multiline";
pub const PROP_TEXTINPUT_TITLE_STRING = "SDL.textinput.title";
pub const PROP_TEXTINPUT_PLACEHOLDER_STRING = "SDL.textinput.placeholder";
pub const PROP_TEXTINPUT_DEFAULT_TEXT_STRING = "SDL.textinput.default_text";
pub const PROP_TEXTINPUT_MAX_LENGTH_NUMBER = "SDL.textinput.max_length";
pub const PROP_TEXTINPUT_ANDROID_INPUTTYPE_NUMBER = "SDL.textinput.android.inputtype";
pub const BUTTON_LEFT = @as(c_int, 1);
pub const BUTTON_MIDDLE = @as(c_int, 2);
pub const BUTTON_RIGHT = @as(c_int, 3);
pub const BUTTON_X1 = @as(c_int, 4);
pub const BUTTON_X2 = @as(c_int, 5);
pub inline fn BUTTON_MASK(X: anytype) @TypeOf(@as(c_uint, 1) << (X - @as(c_int, 1))) {
    _ = &X;
    return @as(c_uint, 1) << (X - @as(c_int, 1));
}
pub const BUTTON_LMASK = BUTTON_MASK(BUTTON_LEFT);
pub const BUTTON_MMASK = BUTTON_MASK(BUTTON_MIDDLE);
pub const BUTTON_RMASK = BUTTON_MASK(BUTTON_RIGHT);
pub const BUTTON_X1MASK = BUTTON_MASK(BUTTON_X1);
pub const BUTTON_X2MASK = BUTTON_MASK(BUTTON_X2);
pub const TOUCH_MOUSEID = __helpers.cast(MouseID, -@as(c_int, 1));
pub const MOUSE_TOUCHID = __helpers.cast(TouchID, -@as(c_int, 1));
pub const PEN_MOUSEID = __helpers.cast(MouseID, -@as(c_int, 2));
pub const PEN_TOUCHID = __helpers.cast(TouchID, -@as(c_int, 2));
pub const PEN_INPUT_DOWN = @as(c_uint, 1) << @as(c_int, 0);
pub const PEN_INPUT_BUTTON_1 = @as(c_uint, 1) << @as(c_int, 1);
pub const PEN_INPUT_BUTTON_2 = @as(c_uint, 1) << @as(c_int, 2);
pub const PEN_INPUT_BUTTON_3 = @as(c_uint, 1) << @as(c_int, 3);
pub const PEN_INPUT_BUTTON_4 = @as(c_uint, 1) << @as(c_int, 4);
pub const PEN_INPUT_BUTTON_5 = @as(c_uint, 1) << @as(c_int, 5);
pub const PEN_INPUT_ERASER_TIP = @as(c_uint, 1) << @as(c_int, 30);
pub const PEN_INPUT_IN_PROXIMITY = @as(c_uint, 1) << @as(c_int, 31);
pub const GLOB_CASEINSENSITIVE = @as(c_uint, 1) << @as(c_int, 0);
pub const GPU_TEXTUREUSAGE_SAMPLER = @as(c_uint, 1) << @as(c_int, 0);
pub const GPU_TEXTUREUSAGE_COLOR_TARGET = @as(c_uint, 1) << @as(c_int, 1);
pub const GPU_TEXTUREUSAGE_DEPTH_STENCIL_TARGET = @as(c_uint, 1) << @as(c_int, 2);
pub const GPU_TEXTUREUSAGE_GRAPHICS_STORAGE_READ = @as(c_uint, 1) << @as(c_int, 3);
pub const GPU_TEXTUREUSAGE_COMPUTE_STORAGE_READ = @as(c_uint, 1) << @as(c_int, 4);
pub const GPU_TEXTUREUSAGE_COMPUTE_STORAGE_WRITE = @as(c_uint, 1) << @as(c_int, 5);
pub const GPU_TEXTUREUSAGE_COMPUTE_STORAGE_SIMULTANEOUS_READ_WRITE = @as(c_uint, 1) << @as(c_int, 6);
pub const GPU_BUFFERUSAGE_VERTEX = @as(c_uint, 1) << @as(c_int, 0);
pub const GPU_BUFFERUSAGE_INDEX = @as(c_uint, 1) << @as(c_int, 1);
pub const GPU_BUFFERUSAGE_INDIRECT = @as(c_uint, 1) << @as(c_int, 2);
pub const GPU_BUFFERUSAGE_GRAPHICS_STORAGE_READ = @as(c_uint, 1) << @as(c_int, 3);
pub const GPU_BUFFERUSAGE_COMPUTE_STORAGE_READ = @as(c_uint, 1) << @as(c_int, 4);
pub const GPU_BUFFERUSAGE_COMPUTE_STORAGE_WRITE = @as(c_uint, 1) << @as(c_int, 5);
pub const GPU_SHADERFORMAT_INVALID = @as(c_int, 0);
pub const GPU_SHADERFORMAT_PRIVATE = @as(c_uint, 1) << @as(c_int, 0);
pub const GPU_SHADERFORMAT_SPIRV = @as(c_uint, 1) << @as(c_int, 1);
pub const GPU_SHADERFORMAT_DXBC = @as(c_uint, 1) << @as(c_int, 2);
pub const GPU_SHADERFORMAT_DXIL = @as(c_uint, 1) << @as(c_int, 3);
pub const GPU_SHADERFORMAT_MSL = @as(c_uint, 1) << @as(c_int, 4);
pub const GPU_SHADERFORMAT_METALLIB = @as(c_uint, 1) << @as(c_int, 5);
pub const GPU_COLORCOMPONENT_R = @as(c_uint, 1) << @as(c_int, 0);
pub const GPU_COLORCOMPONENT_G = @as(c_uint, 1) << @as(c_int, 1);
pub const GPU_COLORCOMPONENT_B = @as(c_uint, 1) << @as(c_int, 2);
pub const GPU_COLORCOMPONENT_A = @as(c_uint, 1) << @as(c_int, 3);
pub const PROP_GPU_DEVICE_CREATE_DEBUGMODE_BOOLEAN = "SDL.gpu.device.create.debugmode";
pub const PROP_GPU_DEVICE_CREATE_PREFERLOWPOWER_BOOLEAN = "SDL.gpu.device.create.preferlowpower";
pub const PROP_GPU_DEVICE_CREATE_VERBOSE_BOOLEAN = "SDL.gpu.device.create.verbose";
pub const PROP_GPU_DEVICE_CREATE_NAME_STRING = "SDL.gpu.device.create.name";
pub const PROP_GPU_DEVICE_CREATE_FEATURE_CLIP_DISTANCE_BOOLEAN = "SDL.gpu.device.create.feature.clip_distance";
pub const PROP_GPU_DEVICE_CREATE_FEATURE_DEPTH_CLAMPING_BOOLEAN = "SDL.gpu.device.create.feature.depth_clamping";
pub const PROP_GPU_DEVICE_CREATE_FEATURE_INDIRECT_DRAW_FIRST_INSTANCE_BOOLEAN = "SDL.gpu.device.create.feature.indirect_draw_first_instance";
pub const PROP_GPU_DEVICE_CREATE_FEATURE_ANISOTROPY_BOOLEAN = "SDL.gpu.device.create.feature.anisotropy";
pub const PROP_GPU_DEVICE_CREATE_SHADERS_PRIVATE_BOOLEAN = "SDL.gpu.device.create.shaders.private";
pub const PROP_GPU_DEVICE_CREATE_SHADERS_SPIRV_BOOLEAN = "SDL.gpu.device.create.shaders.spirv";
pub const PROP_GPU_DEVICE_CREATE_SHADERS_DXBC_BOOLEAN = "SDL.gpu.device.create.shaders.dxbc";
pub const PROP_GPU_DEVICE_CREATE_SHADERS_DXIL_BOOLEAN = "SDL.gpu.device.create.shaders.dxil";
pub const PROP_GPU_DEVICE_CREATE_SHADERS_MSL_BOOLEAN = "SDL.gpu.device.create.shaders.msl";
pub const PROP_GPU_DEVICE_CREATE_SHADERS_METALLIB_BOOLEAN = "SDL.gpu.device.create.shaders.metallib";
pub const PROP_GPU_DEVICE_CREATE_D3D12_ALLOW_FEWER_RESOURCE_SLOTS_BOOLEAN = "SDL.gpu.device.create.d3d12.allowtier1resourcebinding";
pub const PROP_GPU_DEVICE_CREATE_D3D12_SEMANTIC_NAME_STRING = "SDL.gpu.device.create.d3d12.semantic";
pub const PROP_GPU_DEVICE_CREATE_D3D12_AGILITY_SDK_VERSION_NUMBER = "SDL.gpu.device.create.d3d12.agility_sdk_version";
pub const PROP_GPU_DEVICE_CREATE_D3D12_AGILITY_SDK_PATH_STRING = "SDL.gpu.device.create.d3d12.agility_sdk_path";
pub const PROP_GPU_DEVICE_CREATE_VULKAN_REQUIRE_HARDWARE_ACCELERATION_BOOLEAN = "SDL.gpu.device.create.vulkan.requirehardwareacceleration";
pub const PROP_GPU_DEVICE_CREATE_VULKAN_OPTIONS_POINTER = "SDL.gpu.device.create.vulkan.options";
pub const PROP_GPU_DEVICE_CREATE_METAL_ALLOW_MACFAMILY1_BOOLEAN = "SDL.gpu.device.create.metal.allowmacfamily1";
pub const PROP_GPU_DEVICE_CREATE_XR_ENABLE_BOOLEAN = "SDL.gpu.device.create.xr.enable";
pub const PROP_GPU_DEVICE_CREATE_XR_INSTANCE_POINTER = "SDL.gpu.device.create.xr.instance_out";
pub const PROP_GPU_DEVICE_CREATE_XR_SYSTEM_ID_POINTER = "SDL.gpu.device.create.xr.system_id_out";
pub const PROP_GPU_DEVICE_CREATE_XR_VERSION_NUMBER = "SDL.gpu.device.create.xr.version";
pub const PROP_GPU_DEVICE_CREATE_XR_FORM_FACTOR_NUMBER = "SDL.gpu.device.create.xr.form_factor";
pub const PROP_GPU_DEVICE_CREATE_XR_EXTENSION_COUNT_NUMBER = "SDL.gpu.device.create.xr.extensions.count";
pub const PROP_GPU_DEVICE_CREATE_XR_EXTENSION_NAMES_POINTER = "SDL.gpu.device.create.xr.extensions.names";
pub const PROP_GPU_DEVICE_CREATE_XR_LAYER_COUNT_NUMBER = "SDL.gpu.device.create.xr.layers.count";
pub const PROP_GPU_DEVICE_CREATE_XR_LAYER_NAMES_POINTER = "SDL.gpu.device.create.xr.layers.names";
pub const PROP_GPU_DEVICE_CREATE_XR_APPLICATION_NAME_STRING = "SDL.gpu.device.create.xr.application.name";
pub const PROP_GPU_DEVICE_CREATE_XR_APPLICATION_VERSION_NUMBER = "SDL.gpu.device.create.xr.application.version";
pub const PROP_GPU_DEVICE_CREATE_XR_ENGINE_NAME_STRING = "SDL.gpu.device.create.xr.engine.name";
pub const PROP_GPU_DEVICE_CREATE_XR_ENGINE_VERSION_NUMBER = "SDL.gpu.device.create.xr.engine.version";
pub const PROP_GPU_DEVICE_NAME_STRING = "SDL.gpu.device.name";
pub const PROP_GPU_DEVICE_DRIVER_NAME_STRING = "SDL.gpu.device.driver_name";
pub const PROP_GPU_DEVICE_DRIVER_VERSION_STRING = "SDL.gpu.device.driver_version";
pub const PROP_GPU_DEVICE_DRIVER_INFO_STRING = "SDL.gpu.device.driver_info";
pub const PROP_GPU_COMPUTEPIPELINE_CREATE_NAME_STRING = "SDL.gpu.computepipeline.create.name";
pub const PROP_GPU_GRAPHICSPIPELINE_CREATE_NAME_STRING = "SDL.gpu.graphicspipeline.create.name";
pub const PROP_GPU_SAMPLER_CREATE_NAME_STRING = "SDL.gpu.sampler.create.name";
pub const PROP_GPU_SHADER_CREATE_NAME_STRING = "SDL.gpu.shader.create.name";
pub const PROP_GPU_TEXTURE_CREATE_D3D12_CLEAR_R_FLOAT = "SDL.gpu.texture.create.d3d12.clear.r";
pub const PROP_GPU_TEXTURE_CREATE_D3D12_CLEAR_G_FLOAT = "SDL.gpu.texture.create.d3d12.clear.g";
pub const PROP_GPU_TEXTURE_CREATE_D3D12_CLEAR_B_FLOAT = "SDL.gpu.texture.create.d3d12.clear.b";
pub const PROP_GPU_TEXTURE_CREATE_D3D12_CLEAR_A_FLOAT = "SDL.gpu.texture.create.d3d12.clear.a";
pub const PROP_GPU_TEXTURE_CREATE_D3D12_CLEAR_DEPTH_FLOAT = "SDL.gpu.texture.create.d3d12.clear.depth";
pub const PROP_GPU_TEXTURE_CREATE_D3D12_CLEAR_STENCIL_NUMBER = "SDL.gpu.texture.create.d3d12.clear.stencil";
pub const PROP_GPU_TEXTURE_CREATE_NAME_STRING = "SDL.gpu.texture.create.name";
pub const PROP_GPU_BUFFER_CREATE_NAME_STRING = "SDL.gpu.buffer.create.name";
pub const PROP_GPU_TRANSFERBUFFER_CREATE_NAME_STRING = "SDL.gpu.transferbuffer.create.name";
pub const HAPTIC_INFINITY = __helpers.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const HAPTIC_CONSTANT = @as(c_uint, 1) << @as(c_int, 0);
pub const HAPTIC_SINE = @as(c_uint, 1) << @as(c_int, 1);
pub const HAPTIC_SQUARE = @as(c_uint, 1) << @as(c_int, 2);
pub const HAPTIC_TRIANGLE = @as(c_uint, 1) << @as(c_int, 3);
pub const HAPTIC_SAWTOOTHUP = @as(c_uint, 1) << @as(c_int, 4);
pub const HAPTIC_SAWTOOTHDOWN = @as(c_uint, 1) << @as(c_int, 5);
pub const HAPTIC_RAMP = @as(c_uint, 1) << @as(c_int, 6);
pub const HAPTIC_SPRING = @as(c_uint, 1) << @as(c_int, 7);
pub const HAPTIC_DAMPER = @as(c_uint, 1) << @as(c_int, 8);
pub const HAPTIC_INERTIA = @as(c_uint, 1) << @as(c_int, 9);
pub const HAPTIC_FRICTION = @as(c_uint, 1) << @as(c_int, 10);
pub const HAPTIC_LEFTRIGHT = @as(c_uint, 1) << @as(c_int, 11);
pub const HAPTIC_RESERVED1 = @as(c_uint, 1) << @as(c_int, 12);
pub const HAPTIC_RESERVED2 = @as(c_uint, 1) << @as(c_int, 13);
pub const HAPTIC_RESERVED3 = @as(c_uint, 1) << @as(c_int, 14);
pub const HAPTIC_CUSTOM = @as(c_uint, 1) << @as(c_int, 15);
pub const HAPTIC_GAIN = @as(c_uint, 1) << @as(c_int, 16);
pub const HAPTIC_AUTOCENTER = @as(c_uint, 1) << @as(c_int, 17);
pub const HAPTIC_STATUS = @as(c_uint, 1) << @as(c_int, 18);
pub const HAPTIC_PAUSE = @as(c_uint, 1) << @as(c_int, 19);
pub const HAPTIC_POLAR = @as(c_int, 0);
pub const HAPTIC_CARTESIAN = @as(c_int, 1);
pub const HAPTIC_SPHERICAL = @as(c_int, 2);
pub const HAPTIC_STEERING_AXIS = @as(c_int, 3);
pub const PROP_HIDAPI_LIBUSB_DEVICE_HANDLE_POINTER = "SDL.hidapi.libusb.device.handle";
pub const HINT_ALLOW_ALT_TAB_WHILE_GRABBED = "SDL_ALLOW_ALT_TAB_WHILE_GRABBED";
pub const HINT_ANDROID_ALLOW_RECREATE_ACTIVITY = "SDL_ANDROID_ALLOW_RECREATE_ACTIVITY";
pub const HINT_ANDROID_BLOCK_ON_PAUSE = "SDL_ANDROID_BLOCK_ON_PAUSE";
pub const HINT_ANDROID_LOW_LATENCY_AUDIO = "SDL_ANDROID_LOW_LATENCY_AUDIO";
pub const HINT_ANDROID_TRAP_BACK_BUTTON = "SDL_ANDROID_TRAP_BACK_BUTTON";
pub const HINT_APP_ID = "SDL_APP_ID";
pub const HINT_APP_NAME = "SDL_APP_NAME";
pub const HINT_APPLE_TV_CONTROLLER_UI_EVENTS = "SDL_APPLE_TV_CONTROLLER_UI_EVENTS";
pub const HINT_APPLE_TV_REMOTE_ALLOW_ROTATION = "SDL_APPLE_TV_REMOTE_ALLOW_ROTATION";
pub const HINT_AUDIO_ALSA_DEFAULT_DEVICE = "SDL_AUDIO_ALSA_DEFAULT_DEVICE";
pub const HINT_AUDIO_ALSA_DEFAULT_PLAYBACK_DEVICE = "SDL_AUDIO_ALSA_DEFAULT_PLAYBACK_DEVICE";
pub const HINT_AUDIO_ALSA_DEFAULT_RECORDING_DEVICE = "SDL_AUDIO_ALSA_DEFAULT_RECORDING_DEVICE";
pub const HINT_AUDIO_CATEGORY = "SDL_AUDIO_CATEGORY";
pub const HINT_AUDIO_CHANNELS = "SDL_AUDIO_CHANNELS";
pub const HINT_AUDIO_DEVICE_APP_ICON_NAME = "SDL_AUDIO_DEVICE_APP_ICON_NAME";
pub const HINT_AUDIO_DEVICE_SAMPLE_FRAMES = "SDL_AUDIO_DEVICE_SAMPLE_FRAMES";
pub const HINT_AUDIO_DEVICE_STREAM_NAME = "SDL_AUDIO_DEVICE_STREAM_NAME";
pub const HINT_AUDIO_DEVICE_STREAM_ROLE = "SDL_AUDIO_DEVICE_STREAM_ROLE";
pub const HINT_AUDIO_DEVICE_RAW_STREAM = "SDL_AUDIO_DEVICE_RAW_STREAM";
pub const HINT_AUDIO_DISK_INPUT_FILE = "SDL_AUDIO_DISK_INPUT_FILE";
pub const HINT_AUDIO_DISK_OUTPUT_FILE = "SDL_AUDIO_DISK_OUTPUT_FILE";
pub const HINT_AUDIO_DISK_TIMESCALE = "SDL_AUDIO_DISK_TIMESCALE";
pub const HINT_AUDIO_DRIVER = "SDL_AUDIO_DRIVER";
pub const HINT_AUDIO_DUMMY_TIMESCALE = "SDL_AUDIO_DUMMY_TIMESCALE";
pub const HINT_AUDIO_FORMAT = "SDL_AUDIO_FORMAT";
pub const HINT_AUDIO_FREQUENCY = "SDL_AUDIO_FREQUENCY";
pub const HINT_AUDIO_INCLUDE_MONITORS = "SDL_AUDIO_INCLUDE_MONITORS";
pub const HINT_AUTO_UPDATE_JOYSTICKS = "SDL_AUTO_UPDATE_JOYSTICKS";
pub const HINT_AUTO_UPDATE_SENSORS = "SDL_AUTO_UPDATE_SENSORS";
pub const HINT_BMP_SAVE_LEGACY_FORMAT = "SDL_BMP_SAVE_LEGACY_FORMAT";
pub const HINT_CAMERA_DRIVER = "SDL_CAMERA_DRIVER";
pub const HINT_CPU_FEATURE_MASK = "SDL_CPU_FEATURE_MASK";
pub const HINT_JOYSTICK_DIRECTINPUT = "SDL_JOYSTICK_DIRECTINPUT";
pub const HINT_FILE_DIALOG_DRIVER = "SDL_FILE_DIALOG_DRIVER";
pub const HINT_DISPLAY_USABLE_BOUNDS = "SDL_DISPLAY_USABLE_BOUNDS";
pub const HINT_INVALID_PARAM_CHECKS = "SDL_INVALID_PARAM_CHECKS";
pub const HINT_EMSCRIPTEN_ASYNCIFY = "SDL_EMSCRIPTEN_ASYNCIFY";
pub const HINT_EMSCRIPTEN_CANVAS_SELECTOR = "SDL_EMSCRIPTEN_CANVAS_SELECTOR";
pub const HINT_EMSCRIPTEN_KEYBOARD_ELEMENT = "SDL_EMSCRIPTEN_KEYBOARD_ELEMENT";
pub const HINT_ENABLE_SCREEN_KEYBOARD = "SDL_ENABLE_SCREEN_KEYBOARD";
pub const HINT_EVDEV_DEVICES = "SDL_EVDEV_DEVICES";
pub const HINT_EVENT_LOGGING = "SDL_EVENT_LOGGING";
pub const HINT_FORCE_RAISEWINDOW = "SDL_FORCE_RAISEWINDOW";
pub const HINT_FRAMEBUFFER_ACCELERATION = "SDL_FRAMEBUFFER_ACCELERATION";
pub const HINT_GAMECONTROLLERCONFIG = "SDL_GAMECONTROLLERCONFIG";
pub const HINT_GAMECONTROLLERCONFIG_FILE = "SDL_GAMECONTROLLERCONFIG_FILE";
pub const HINT_GAMECONTROLLERTYPE = "SDL_GAMECONTROLLERTYPE";
pub const HINT_GAMECONTROLLER_IGNORE_DEVICES = "SDL_GAMECONTROLLER_IGNORE_DEVICES";
pub const HINT_GAMECONTROLLER_IGNORE_DEVICES_EXCEPT = "SDL_GAMECONTROLLER_IGNORE_DEVICES_EXCEPT";
pub const HINT_GAMECONTROLLER_SENSOR_FUSION = "SDL_GAMECONTROLLER_SENSOR_FUSION";
pub const HINT_GDK_TEXTINPUT_DEFAULT_TEXT = "SDL_GDK_TEXTINPUT_DEFAULT_TEXT";
pub const HINT_GDK_TEXTINPUT_DESCRIPTION = "SDL_GDK_TEXTINPUT_DESCRIPTION";
pub const HINT_GDK_TEXTINPUT_MAX_LENGTH = "SDL_GDK_TEXTINPUT_MAX_LENGTH";
pub const HINT_GDK_TEXTINPUT_SCOPE = "SDL_GDK_TEXTINPUT_SCOPE";
pub const HINT_GDK_TEXTINPUT_TITLE = "SDL_GDK_TEXTINPUT_TITLE";
pub const HINT_HIDAPI_LIBUSB = "SDL_HIDAPI_LIBUSB";
pub const HINT_HIDAPI_LIBUSB_GAMECUBE = "SDL_HIDAPI_LIBUSB_GAMECUBE";
pub const HINT_HIDAPI_LIBUSB_WHITELIST = "SDL_HIDAPI_LIBUSB_WHITELIST";
pub const HINT_HIDAPI_UDEV = "SDL_HIDAPI_UDEV";
pub const HINT_GPU_DRIVER = "SDL_GPU_DRIVER";
pub const HINT_OPENXR_LIBRARY = "SDL_OPENXR_LIBRARY";
pub const HINT_HIDAPI_ENUMERATE_ONLY_CONTROLLERS = "SDL_HIDAPI_ENUMERATE_ONLY_CONTROLLERS";
pub const HINT_HIDAPI_IGNORE_DEVICES = "SDL_HIDAPI_IGNORE_DEVICES";
pub const HINT_IME_IMPLEMENTED_UI = "SDL_IME_IMPLEMENTED_UI";
pub const HINT_IOS_HIDE_HOME_INDICATOR = "SDL_IOS_HIDE_HOME_INDICATOR";
pub const HINT_JOYSTICK_ALLOW_BACKGROUND_EVENTS = "SDL_JOYSTICK_ALLOW_BACKGROUND_EVENTS";
pub const HINT_JOYSTICK_ARCADESTICK_DEVICES = "SDL_JOYSTICK_ARCADESTICK_DEVICES";
pub const HINT_JOYSTICK_ARCADESTICK_DEVICES_EXCLUDED = "SDL_JOYSTICK_ARCADESTICK_DEVICES_EXCLUDED";
pub const HINT_JOYSTICK_BLACKLIST_DEVICES = "SDL_JOYSTICK_BLACKLIST_DEVICES";
pub const HINT_JOYSTICK_BLACKLIST_DEVICES_EXCLUDED = "SDL_JOYSTICK_BLACKLIST_DEVICES_EXCLUDED";
pub const HINT_JOYSTICK_DEVICE = "SDL_JOYSTICK_DEVICE";
pub const HINT_JOYSTICK_DRUM_DEVICES = "SDL_JOYSTICK_DRUM_DEVICES";
pub const HINT_JOYSTICK_ENHANCED_REPORTS = "SDL_JOYSTICK_ENHANCED_REPORTS";
pub const HINT_JOYSTICK_FLIGHTSTICK_DEVICES = "SDL_JOYSTICK_FLIGHTSTICK_DEVICES";
pub const HINT_JOYSTICK_FLIGHTSTICK_DEVICES_EXCLUDED = "SDL_JOYSTICK_FLIGHTSTICK_DEVICES_EXCLUDED";
pub const HINT_JOYSTICK_GAMEINPUT = "SDL_JOYSTICK_GAMEINPUT";
pub const HINT_JOYSTICK_GAMEINPUT_RAW = "SDL_JOYSTICK_GAMEINPUT_RAW";
pub const HINT_JOYSTICK_GAMECUBE_DEVICES = "SDL_JOYSTICK_GAMECUBE_DEVICES";
pub const HINT_JOYSTICK_GAMECUBE_DEVICES_EXCLUDED = "SDL_JOYSTICK_GAMECUBE_DEVICES_EXCLUDED";
pub const HINT_JOYSTICK_GUITAR_DEVICES = "SDL_JOYSTICK_GUITAR_DEVICES";
pub const HINT_JOYSTICK_HIDAPI = "SDL_JOYSTICK_HIDAPI";
pub const HINT_JOYSTICK_HIDAPI_COMBINE_JOY_CONS = "SDL_JOYSTICK_HIDAPI_COMBINE_JOY_CONS";
pub const HINT_JOYSTICK_HIDAPI_GAMECUBE = "SDL_JOYSTICK_HIDAPI_GAMECUBE";
pub const HINT_JOYSTICK_HIDAPI_GAMECUBE_RUMBLE_BRAKE = "SDL_JOYSTICK_HIDAPI_GAMECUBE_RUMBLE_BRAKE";
pub const HINT_JOYSTICK_HIDAPI_JOY_CONS = "SDL_JOYSTICK_HIDAPI_JOY_CONS";
pub const HINT_JOYSTICK_HIDAPI_JOYCON_HOME_LED = "SDL_JOYSTICK_HIDAPI_JOYCON_HOME_LED";
pub const HINT_JOYSTICK_HIDAPI_LUNA = "SDL_JOYSTICK_HIDAPI_LUNA";
pub const HINT_JOYSTICK_HIDAPI_NINTENDO_CLASSIC = "SDL_JOYSTICK_HIDAPI_NINTENDO_CLASSIC";
pub const HINT_JOYSTICK_HIDAPI_PS3 = "SDL_JOYSTICK_HIDAPI_PS3";
pub const HINT_JOYSTICK_HIDAPI_PS3_SIXAXIS_DRIVER = "SDL_JOYSTICK_HIDAPI_PS3_SIXAXIS_DRIVER";
pub const HINT_JOYSTICK_HIDAPI_PS4 = "SDL_JOYSTICK_HIDAPI_PS4";
pub const HINT_JOYSTICK_HIDAPI_PS4_REPORT_INTERVAL = "SDL_JOYSTICK_HIDAPI_PS4_REPORT_INTERVAL";
pub const HINT_JOYSTICK_HIDAPI_PS5 = "SDL_JOYSTICK_HIDAPI_PS5";
pub const HINT_JOYSTICK_HIDAPI_PS5_PLAYER_LED = "SDL_JOYSTICK_HIDAPI_PS5_PLAYER_LED";
pub const HINT_JOYSTICK_HIDAPI_SHIELD = "SDL_JOYSTICK_HIDAPI_SHIELD";
pub const HINT_JOYSTICK_HIDAPI_STADIA = "SDL_JOYSTICK_HIDAPI_STADIA";
pub const HINT_JOYSTICK_HIDAPI_STEAM = "SDL_JOYSTICK_HIDAPI_STEAM";
pub const HINT_JOYSTICK_HIDAPI_STEAM_HOME_LED = "SDL_JOYSTICK_HIDAPI_STEAM_HOME_LED";
pub const HINT_JOYSTICK_HIDAPI_STEAMDECK = "SDL_JOYSTICK_HIDAPI_STEAMDECK";
pub const HINT_JOYSTICK_HIDAPI_STEAM_HORI = "SDL_JOYSTICK_HIDAPI_STEAM_HORI";
pub const HINT_JOYSTICK_HIDAPI_LG4FF = "SDL_JOYSTICK_HIDAPI_LG4FF";
pub const HINT_JOYSTICK_HIDAPI_8BITDO = "SDL_JOYSTICK_HIDAPI_8BITDO";
pub const HINT_JOYSTICK_HIDAPI_SINPUT = "SDL_JOYSTICK_HIDAPI_SINPUT";
pub const HINT_JOYSTICK_HIDAPI_ZUIKI = "SDL_JOYSTICK_HIDAPI_ZUIKI";
pub const HINT_JOYSTICK_HIDAPI_FLYDIGI = "SDL_JOYSTICK_HIDAPI_FLYDIGI";
pub const HINT_JOYSTICK_HIDAPI_GAMESIR = "SDL_JOYSTICK_HIDAPI_GAMESIR";
pub const HINT_JOYSTICK_HIDAPI_SWITCH = "SDL_JOYSTICK_HIDAPI_SWITCH";
pub const HINT_JOYSTICK_HIDAPI_SWITCH_HOME_LED = "SDL_JOYSTICK_HIDAPI_SWITCH_HOME_LED";
pub const HINT_JOYSTICK_HIDAPI_SWITCH_PLAYER_LED = "SDL_JOYSTICK_HIDAPI_SWITCH_PLAYER_LED";
pub const HINT_JOYSTICK_HIDAPI_SWITCH2 = "SDL_JOYSTICK_HIDAPI_SWITCH2";
pub const HINT_JOYSTICK_HIDAPI_VERTICAL_JOY_CONS = "SDL_JOYSTICK_HIDAPI_VERTICAL_JOY_CONS";
pub const HINT_JOYSTICK_HIDAPI_WII = "SDL_JOYSTICK_HIDAPI_WII";
pub const HINT_JOYSTICK_HIDAPI_WII_PLAYER_LED = "SDL_JOYSTICK_HIDAPI_WII_PLAYER_LED";
pub const HINT_JOYSTICK_HIDAPI_XBOX = "SDL_JOYSTICK_HIDAPI_XBOX";
pub const HINT_JOYSTICK_HIDAPI_XBOX_360 = "SDL_JOYSTICK_HIDAPI_XBOX_360";
pub const HINT_JOYSTICK_HIDAPI_XBOX_360_PLAYER_LED = "SDL_JOYSTICK_HIDAPI_XBOX_360_PLAYER_LED";
pub const HINT_JOYSTICK_HIDAPI_XBOX_360_WIRELESS = "SDL_JOYSTICK_HIDAPI_XBOX_360_WIRELESS";
pub const HINT_JOYSTICK_HIDAPI_XBOX_ONE = "SDL_JOYSTICK_HIDAPI_XBOX_ONE";
pub const HINT_JOYSTICK_HIDAPI_XBOX_ONE_HOME_LED = "SDL_JOYSTICK_HIDAPI_XBOX_ONE_HOME_LED";
pub const HINT_JOYSTICK_HIDAPI_GIP = "SDL_JOYSTICK_HIDAPI_GIP";
pub const HINT_JOYSTICK_HIDAPI_GIP_RESET_FOR_METADATA = "SDL_JOYSTICK_HIDAPI_GIP_RESET_FOR_METADATA";
pub const HINT_JOYSTICK_IOKIT = "SDL_JOYSTICK_IOKIT";
pub const HINT_JOYSTICK_LINUX_CLASSIC = "SDL_JOYSTICK_LINUX_CLASSIC";
pub const HINT_JOYSTICK_LINUX_DEADZONES = "SDL_JOYSTICK_LINUX_DEADZONES";
pub const HINT_JOYSTICK_LINUX_DIGITAL_HATS = "SDL_JOYSTICK_LINUX_DIGITAL_HATS";
pub const HINT_JOYSTICK_LINUX_HAT_DEADZONES = "SDL_JOYSTICK_LINUX_HAT_DEADZONES";
pub const HINT_JOYSTICK_MFI = "SDL_JOYSTICK_MFI";
pub const HINT_JOYSTICK_RAWINPUT = "SDL_JOYSTICK_RAWINPUT";
pub const HINT_JOYSTICK_RAWINPUT_CORRELATE_XINPUT = "SDL_JOYSTICK_RAWINPUT_CORRELATE_XINPUT";
pub const HINT_JOYSTICK_ROG_CHAKRAM = "SDL_JOYSTICK_ROG_CHAKRAM";
pub const HINT_JOYSTICK_THREAD = "SDL_JOYSTICK_THREAD";
pub const HINT_JOYSTICK_THROTTLE_DEVICES = "SDL_JOYSTICK_THROTTLE_DEVICES";
pub const HINT_JOYSTICK_THROTTLE_DEVICES_EXCLUDED = "SDL_JOYSTICK_THROTTLE_DEVICES_EXCLUDED";
pub const HINT_JOYSTICK_WGI = "SDL_JOYSTICK_WGI";
pub const HINT_JOYSTICK_WHEEL_DEVICES = "SDL_JOYSTICK_WHEEL_DEVICES";
pub const HINT_JOYSTICK_WHEEL_DEVICES_EXCLUDED = "SDL_JOYSTICK_WHEEL_DEVICES_EXCLUDED";
pub const HINT_JOYSTICK_ZERO_CENTERED_DEVICES = "SDL_JOYSTICK_ZERO_CENTERED_DEVICES";
pub const HINT_JOYSTICK_HAPTIC_AXES = "SDL_JOYSTICK_HAPTIC_AXES";
pub const HINT_KEYCODE_OPTIONS = "SDL_KEYCODE_OPTIONS";
pub const HINT_KMSDRM_DEVICE_INDEX = "SDL_KMSDRM_DEVICE_INDEX";
pub const HINT_KMSDRM_REQUIRE_DRM_MASTER = "SDL_KMSDRM_REQUIRE_DRM_MASTER";
pub const HINT_KMSDRM_ATOMIC = "SDL_KMSDRM_ATOMIC";
pub const HINT_LOGGING = "SDL_LOGGING";
pub const HINT_MAC_BACKGROUND_APP = "SDL_MAC_BACKGROUND_APP";
pub const HINT_MAC_CTRL_CLICK_EMULATE_RIGHT_CLICK = "SDL_MAC_CTRL_CLICK_EMULATE_RIGHT_CLICK";
pub const HINT_MAC_OPENGL_ASYNC_DISPATCH = "SDL_MAC_OPENGL_ASYNC_DISPATCH";
pub const HINT_MAC_OPTION_AS_ALT = "SDL_MAC_OPTION_AS_ALT";
pub const HINT_MAC_SCROLL_MOMENTUM = "SDL_MAC_SCROLL_MOMENTUM";
pub const HINT_MAC_PRESS_AND_HOLD = "SDL_MAC_PRESS_AND_HOLD";
pub const HINT_MAIN_CALLBACK_RATE = "SDL_MAIN_CALLBACK_RATE";
pub const HINT_MOUSE_AUTO_CAPTURE = "SDL_MOUSE_AUTO_CAPTURE";
pub const HINT_MOUSE_DOUBLE_CLICK_RADIUS = "SDL_MOUSE_DOUBLE_CLICK_RADIUS";
pub const HINT_MOUSE_DOUBLE_CLICK_TIME = "SDL_MOUSE_DOUBLE_CLICK_TIME";
pub const HINT_MOUSE_DEFAULT_SYSTEM_CURSOR = "SDL_MOUSE_DEFAULT_SYSTEM_CURSOR";
pub const HINT_MOUSE_DPI_SCALE_CURSORS = "SDL_MOUSE_DPI_SCALE_CURSORS";
pub const HINT_MOUSE_EMULATE_WARP_WITH_RELATIVE = "SDL_MOUSE_EMULATE_WARP_WITH_RELATIVE";
pub const HINT_MOUSE_FOCUS_CLICKTHROUGH = "SDL_MOUSE_FOCUS_CLICKTHROUGH";
pub const HINT_MOUSE_NORMAL_SPEED_SCALE = "SDL_MOUSE_NORMAL_SPEED_SCALE";
pub const HINT_MOUSE_RELATIVE_MODE_CENTER = "SDL_MOUSE_RELATIVE_MODE_CENTER";
pub const HINT_MOUSE_RELATIVE_SPEED_SCALE = "SDL_MOUSE_RELATIVE_SPEED_SCALE";
pub const HINT_MOUSE_RELATIVE_SYSTEM_SCALE = "SDL_MOUSE_RELATIVE_SYSTEM_SCALE";
pub const HINT_MOUSE_RELATIVE_WARP_MOTION = "SDL_MOUSE_RELATIVE_WARP_MOTION";
pub const HINT_MOUSE_RELATIVE_CURSOR_VISIBLE = "SDL_MOUSE_RELATIVE_CURSOR_VISIBLE";
pub const HINT_MOUSE_TOUCH_EVENTS = "SDL_MOUSE_TOUCH_EVENTS";
pub const HINT_MUTE_CONSOLE_KEYBOARD = "SDL_MUTE_CONSOLE_KEYBOARD";
pub const HINT_NO_SIGNAL_HANDLERS = "SDL_NO_SIGNAL_HANDLERS";
pub const HINT_OPENGL_LIBRARY = "SDL_OPENGL_LIBRARY";
pub const HINT_EGL_LIBRARY = "SDL_EGL_LIBRARY";
pub const HINT_OPENGL_ES_DRIVER = "SDL_OPENGL_ES_DRIVER";
pub const HINT_OPENGL_FORCE_SRGB_FRAMEBUFFER = "SDL_OPENGL_FORCE_SRGB_FRAMEBUFFER";
pub const HINT_OPENVR_LIBRARY = "SDL_OPENVR_LIBRARY";
pub const HINT_ORIENTATIONS = "SDL_ORIENTATIONS";
pub const HINT_POLL_SENTINEL = "SDL_POLL_SENTINEL";
pub const HINT_PREFERRED_LOCALES = "SDL_PREFERRED_LOCALES";
pub const HINT_QUIT_ON_LAST_WINDOW_CLOSE = "SDL_QUIT_ON_LAST_WINDOW_CLOSE";
pub const HINT_RENDER_DIRECT3D_THREADSAFE = "SDL_RENDER_DIRECT3D_THREADSAFE";
pub const HINT_RENDER_DIRECT3D11_DEBUG = "SDL_RENDER_DIRECT3D11_DEBUG";
pub const HINT_RENDER_DIRECT3D11_WARP = "SDL_RENDER_DIRECT3D11_WARP";
pub const HINT_RENDER_VULKAN_DEBUG = "SDL_RENDER_VULKAN_DEBUG";
pub const HINT_RENDER_GPU_DEBUG = "SDL_RENDER_GPU_DEBUG";
pub const HINT_RENDER_GPU_LOW_POWER = "SDL_RENDER_GPU_LOW_POWER";
pub const HINT_RENDER_DRIVER = "SDL_RENDER_DRIVER";
pub const HINT_RENDER_LINE_METHOD = "SDL_RENDER_LINE_METHOD";
pub const HINT_RENDER_METAL_PREFER_LOW_POWER_DEVICE = "SDL_RENDER_METAL_PREFER_LOW_POWER_DEVICE";
pub const HINT_RENDER_VSYNC = "SDL_RENDER_VSYNC";
pub const HINT_RETURN_KEY_HIDES_IME = "SDL_RETURN_KEY_HIDES_IME";
pub const HINT_ROG_GAMEPAD_MICE = "SDL_ROG_GAMEPAD_MICE";
pub const HINT_ROG_GAMEPAD_MICE_EXCLUDED = "SDL_ROG_GAMEPAD_MICE_EXCLUDED";
pub const HINT_PS2_GS_WIDTH = "SDL_PS2_GS_WIDTH";
pub const HINT_PS2_GS_HEIGHT = "SDL_PS2_GS_HEIGHT";
pub const HINT_PS2_GS_PROGRESSIVE = "SDL_PS2_GS_PROGRESSIVE";
pub const HINT_PS2_GS_MODE = "SDL_PS2_GS_MODE";
pub const HINT_RPI_VIDEO_LAYER = "SDL_RPI_VIDEO_LAYER";
pub const HINT_SCREENSAVER_INHIBIT_ACTIVITY_NAME = "SDL_SCREENSAVER_INHIBIT_ACTIVITY_NAME";
pub const HINT_SHUTDOWN_DBUS_ON_QUIT = "SDL_SHUTDOWN_DBUS_ON_QUIT";
pub const HINT_STORAGE_TITLE_DRIVER = "SDL_STORAGE_TITLE_DRIVER";
pub const HINT_STORAGE_USER_DRIVER = "SDL_STORAGE_USER_DRIVER";
pub const HINT_THREAD_FORCE_REALTIME_TIME_CRITICAL = "SDL_THREAD_FORCE_REALTIME_TIME_CRITICAL";
pub const HINT_THREAD_PRIORITY_POLICY = "SDL_THREAD_PRIORITY_POLICY";
pub const HINT_TIMER_RESOLUTION = "SDL_TIMER_RESOLUTION";
pub const HINT_TOUCH_MOUSE_EVENTS = "SDL_TOUCH_MOUSE_EVENTS";
pub const HINT_TRACKPAD_IS_TOUCH_ONLY = "SDL_TRACKPAD_IS_TOUCH_ONLY";
pub const HINT_TV_REMOTE_AS_JOYSTICK = "SDL_TV_REMOTE_AS_JOYSTICK";
pub const HINT_VIDEO_ALLOW_SCREENSAVER = "SDL_VIDEO_ALLOW_SCREENSAVER";
pub const HINT_VIDEO_DISPLAY_PRIORITY = "SDL_VIDEO_DISPLAY_PRIORITY";
pub const HINT_VIDEO_DOUBLE_BUFFER = "SDL_VIDEO_DOUBLE_BUFFER";
pub const HINT_VIDEO_DRIVER = "SDL_VIDEO_DRIVER";
pub const HINT_VIDEO_DUMMY_SAVE_FRAMES = "SDL_VIDEO_DUMMY_SAVE_FRAMES";
pub const HINT_VIDEO_EGL_ALLOW_GETDISPLAY_FALLBACK = "SDL_VIDEO_EGL_ALLOW_GETDISPLAY_FALLBACK";
pub const HINT_VIDEO_FORCE_EGL = "SDL_VIDEO_FORCE_EGL";
pub const HINT_VIDEO_MAC_FULLSCREEN_SPACES = "SDL_VIDEO_MAC_FULLSCREEN_SPACES";
pub const HINT_VIDEO_MAC_FULLSCREEN_MENU_VISIBILITY = "SDL_VIDEO_MAC_FULLSCREEN_MENU_VISIBILITY";
pub const HINT_VIDEO_METAL_AUTO_RESIZE_DRAWABLE = "SDL_VIDEO_METAL_AUTO_RESIZE_DRAWABLE";
pub const HINT_VIDEO_MATCH_EXCLUSIVE_MODE_ON_MOVE = "SDL_VIDEO_MATCH_EXCLUSIVE_MODE_ON_MOVE";
pub const HINT_VIDEO_MINIMIZE_ON_FOCUS_LOSS = "SDL_VIDEO_MINIMIZE_ON_FOCUS_LOSS";
pub const HINT_VIDEO_OFFSCREEN_SAVE_FRAMES = "SDL_VIDEO_OFFSCREEN_SAVE_FRAMES";
pub const HINT_VIDEO_SYNC_WINDOW_OPERATIONS = "SDL_VIDEO_SYNC_WINDOW_OPERATIONS";
pub const HINT_VIDEO_WAYLAND_ALLOW_LIBDECOR = "SDL_VIDEO_WAYLAND_ALLOW_LIBDECOR";
pub const HINT_VIDEO_WAYLAND_MODE_EMULATION = "SDL_VIDEO_WAYLAND_MODE_EMULATION";
pub const HINT_VIDEO_WAYLAND_MODE_SCALING = "SDL_VIDEO_WAYLAND_MODE_SCALING";
pub const HINT_VIDEO_WAYLAND_PREFER_LIBDECOR = "SDL_VIDEO_WAYLAND_PREFER_LIBDECOR";
pub const HINT_VIDEO_WAYLAND_SCALE_TO_DISPLAY = "SDL_VIDEO_WAYLAND_SCALE_TO_DISPLAY";
pub const HINT_VIDEO_WIN_D3DCOMPILER = "SDL_VIDEO_WIN_D3DCOMPILER";
pub const HINT_VIDEO_X11_EXTERNAL_WINDOW_INPUT = "SDL_VIDEO_X11_EXTERNAL_WINDOW_INPUT";
pub const HINT_VIDEO_X11_NET_WM_BYPASS_COMPOSITOR = "SDL_VIDEO_X11_NET_WM_BYPASS_COMPOSITOR";
pub const HINT_VIDEO_X11_NET_WM_PING = "SDL_VIDEO_X11_NET_WM_PING";
pub const HINT_VIDEO_X11_NODIRECTCOLOR = "SDL_VIDEO_X11_NODIRECTCOLOR";
pub const HINT_VIDEO_X11_SCALING_FACTOR = "SDL_VIDEO_X11_SCALING_FACTOR";
pub const HINT_VIDEO_X11_VISUALID = "SDL_VIDEO_X11_VISUALID";
pub const HINT_VIDEO_X11_WINDOW_VISUALID = "SDL_VIDEO_X11_WINDOW_VISUALID";
pub const HINT_VIDEO_X11_XRANDR = "SDL_VIDEO_X11_XRANDR";
pub const HINT_VITA_ENABLE_BACK_TOUCH = "SDL_VITA_ENABLE_BACK_TOUCH";
pub const HINT_VITA_ENABLE_FRONT_TOUCH = "SDL_VITA_ENABLE_FRONT_TOUCH";
pub const HINT_VITA_MODULE_PATH = "SDL_VITA_MODULE_PATH";
pub const HINT_VITA_PVR_INIT = "SDL_VITA_PVR_INIT";
pub const HINT_VITA_RESOLUTION = "SDL_VITA_RESOLUTION";
pub const HINT_VITA_PVR_OPENGL = "SDL_VITA_PVR_OPENGL";
pub const HINT_VITA_TOUCH_MOUSE_DEVICE = "SDL_VITA_TOUCH_MOUSE_DEVICE";
pub const HINT_VULKAN_DISPLAY = "SDL_VULKAN_DISPLAY";
pub const HINT_VULKAN_LIBRARY = "SDL_VULKAN_LIBRARY";
pub const HINT_WAVE_FACT_CHUNK = "SDL_WAVE_FACT_CHUNK";
pub const HINT_WAVE_CHUNK_LIMIT = "SDL_WAVE_CHUNK_LIMIT";
pub const HINT_WAVE_RIFF_CHUNK_SIZE = "SDL_WAVE_RIFF_CHUNK_SIZE";
pub const HINT_WAVE_TRUNCATION = "SDL_WAVE_TRUNCATION";
pub const HINT_WINDOW_ACTIVATE_WHEN_RAISED = "SDL_WINDOW_ACTIVATE_WHEN_RAISED";
pub const HINT_WINDOW_ACTIVATE_WHEN_SHOWN = "SDL_WINDOW_ACTIVATE_WHEN_SHOWN";
pub const HINT_WINDOW_ALLOW_TOPMOST = "SDL_WINDOW_ALLOW_TOPMOST";
pub const HINT_WINDOW_FRAME_USABLE_WHILE_CURSOR_HIDDEN = "SDL_WINDOW_FRAME_USABLE_WHILE_CURSOR_HIDDEN";
pub const HINT_WINDOWS_CLOSE_ON_ALT_F4 = "SDL_WINDOWS_CLOSE_ON_ALT_F4";
pub const HINT_WINDOWS_ENABLE_MENU_MNEMONICS = "SDL_WINDOWS_ENABLE_MENU_MNEMONICS";
pub const HINT_WINDOWS_ENABLE_MESSAGELOOP = "SDL_WINDOWS_ENABLE_MESSAGELOOP";
pub const HINT_WINDOWS_GAMEINPUT = "SDL_WINDOWS_GAMEINPUT";
pub const HINT_WINDOWS_RAW_KEYBOARD = "SDL_WINDOWS_RAW_KEYBOARD";
pub const HINT_WINDOWS_RAW_KEYBOARD_EXCLUDE_HOTKEYS = "SDL_WINDOWS_RAW_KEYBOARD_EXCLUDE_HOTKEYS";
pub const HINT_WINDOWS_RAW_KEYBOARD_INPUTSINK = "SDL_WINDOWS_RAW_KEYBOARD_INPUTSINK";
pub const HINT_WINDOWS_FORCE_SEMAPHORE_KERNEL = "SDL_WINDOWS_FORCE_SEMAPHORE_KERNEL";
pub const HINT_WINDOWS_INTRESOURCE_ICON = "SDL_WINDOWS_INTRESOURCE_ICON";
pub const HINT_WINDOWS_INTRESOURCE_ICON_SMALL = "SDL_WINDOWS_INTRESOURCE_ICON_SMALL";
pub const HINT_WINDOWS_USE_D3D9EX = "SDL_WINDOWS_USE_D3D9EX";
pub const HINT_WINDOWS_ERASE_BACKGROUND_MODE = "SDL_WINDOWS_ERASE_BACKGROUND_MODE";
pub const HINT_X11_FORCE_OVERRIDE_REDIRECT = "SDL_X11_FORCE_OVERRIDE_REDIRECT";
pub const HINT_X11_WINDOW_TYPE = "SDL_X11_WINDOW_TYPE";
pub const HINT_X11_XCB_LIBRARY = "SDL_X11_XCB_LIBRARY";
pub const HINT_XINPUT_ENABLED = "SDL_XINPUT_ENABLED";
pub const HINT_ASSERT = "SDL_ASSERT";
pub const HINT_PEN_MOUSE_EVENTS = "SDL_PEN_MOUSE_EVENTS";
pub const HINT_PEN_TOUCH_EVENTS = "SDL_PEN_TOUCH_EVENTS";
pub const INIT_AUDIO = @as(c_uint, 0x00000010);
pub const INIT_VIDEO = @as(c_uint, 0x00000020);
pub const INIT_JOYSTICK = @as(c_uint, 0x00000200);
pub const INIT_HAPTIC = @as(c_uint, 0x00001000);
pub const INIT_GAMEPAD = @as(c_uint, 0x00002000);
pub const INIT_EVENTS = @as(c_uint, 0x00004000);
pub const INIT_SENSOR = @as(c_uint, 0x00008000);
pub const INIT_CAMERA = __helpers.promoteIntLiteral(c_uint, 0x00010000, .hex);
pub const PROP_APP_METADATA_NAME_STRING = "SDL.app.metadata.name";
pub const PROP_APP_METADATA_VERSION_STRING = "SDL.app.metadata.version";
pub const PROP_APP_METADATA_IDENTIFIER_STRING = "SDL.app.metadata.identifier";
pub const PROP_APP_METADATA_CREATOR_STRING = "SDL.app.metadata.creator";
pub const PROP_APP_METADATA_COPYRIGHT_STRING = "SDL.app.metadata.copyright";
pub const PROP_APP_METADATA_URL_STRING = "SDL.app.metadata.url";
pub const PROP_APP_METADATA_TYPE_STRING = "SDL.app.metadata.type";
pub const MESSAGEBOX_ERROR = @as(c_uint, 0x00000010);
pub const MESSAGEBOX_WARNING = @as(c_uint, 0x00000020);
pub const MESSAGEBOX_INFORMATION = @as(c_uint, 0x00000040);
pub const MESSAGEBOX_BUTTONS_LEFT_TO_RIGHT = @as(c_uint, 0x00000080);
pub const MESSAGEBOX_BUTTONS_RIGHT_TO_LEFT = @as(c_uint, 0x00000100);
pub const MESSAGEBOX_BUTTON_RETURNKEY_DEFAULT = @as(c_uint, 0x00000001);
pub const MESSAGEBOX_BUTTON_ESCAPEKEY_DEFAULT = @as(c_uint, 0x00000002);
pub const PROP_PROCESS_CREATE_ARGS_POINTER = "SDL.process.create.args";
pub const PROP_PROCESS_CREATE_ENVIRONMENT_POINTER = "SDL.process.create.environment";
pub const PROP_PROCESS_CREATE_WORKING_DIRECTORY_STRING = "SDL.process.create.working_directory";
pub const PROP_PROCESS_CREATE_STDIN_NUMBER = "SDL.process.create.stdin_option";
pub const PROP_PROCESS_CREATE_STDIN_POINTER = "SDL.process.create.stdin_source";
pub const PROP_PROCESS_CREATE_STDOUT_NUMBER = "SDL.process.create.stdout_option";
pub const PROP_PROCESS_CREATE_STDOUT_POINTER = "SDL.process.create.stdout_source";
pub const PROP_PROCESS_CREATE_STDERR_NUMBER = "SDL.process.create.stderr_option";
pub const PROP_PROCESS_CREATE_STDERR_POINTER = "SDL.process.create.stderr_source";
pub const PROP_PROCESS_CREATE_STDERR_TO_STDOUT_BOOLEAN = "SDL.process.create.stderr_to_stdout";
pub const PROP_PROCESS_CREATE_BACKGROUND_BOOLEAN = "SDL.process.create.background";
pub const PROP_PROCESS_CREATE_CMDLINE_STRING = "SDL.process.create.cmdline";
pub const PROP_PROCESS_PID_NUMBER = "SDL.process.pid";
pub const PROP_PROCESS_STDIN_POINTER = "SDL.process.stdin";
pub const PROP_PROCESS_STDOUT_POINTER = "SDL.process.stdout";
pub const PROP_PROCESS_STDERR_POINTER = "SDL.process.stderr";
pub const PROP_PROCESS_BACKGROUND_BOOLEAN = "SDL.process.background";
pub const SOFTWARE_RENDERER = "software";
pub const GPU_RENDERER = "gpu";
pub const PROP_RENDERER_CREATE_NAME_STRING = "SDL.renderer.create.name";
pub const PROP_RENDERER_CREATE_WINDOW_POINTER = "SDL.renderer.create.window";
pub const PROP_RENDERER_CREATE_SURFACE_POINTER = "SDL.renderer.create.surface";
pub const PROP_RENDERER_CREATE_OUTPUT_COLORSPACE_NUMBER = "SDL.renderer.create.output_colorspace";
pub const PROP_RENDERER_CREATE_PRESENT_VSYNC_NUMBER = "SDL.renderer.create.present_vsync";
pub const PROP_RENDERER_CREATE_GPU_DEVICE_POINTER = "SDL.renderer.create.gpu.device";
pub const PROP_RENDERER_CREATE_GPU_SHADERS_SPIRV_BOOLEAN = "SDL.renderer.create.gpu.shaders_spirv";
pub const PROP_RENDERER_CREATE_GPU_SHADERS_DXIL_BOOLEAN = "SDL.renderer.create.gpu.shaders_dxil";
pub const PROP_RENDERER_CREATE_GPU_SHADERS_MSL_BOOLEAN = "SDL.renderer.create.gpu.shaders_msl";
pub const PROP_RENDERER_CREATE_VULKAN_INSTANCE_POINTER = "SDL.renderer.create.vulkan.instance";
pub const PROP_RENDERER_CREATE_VULKAN_SURFACE_NUMBER = "SDL.renderer.create.vulkan.surface";
pub const PROP_RENDERER_CREATE_VULKAN_PHYSICAL_DEVICE_POINTER = "SDL.renderer.create.vulkan.physical_device";
pub const PROP_RENDERER_CREATE_VULKAN_DEVICE_POINTER = "SDL.renderer.create.vulkan.device";
pub const PROP_RENDERER_CREATE_VULKAN_GRAPHICS_QUEUE_FAMILY_INDEX_NUMBER = "SDL.renderer.create.vulkan.graphics_queue_family_index";
pub const PROP_RENDERER_CREATE_VULKAN_PRESENT_QUEUE_FAMILY_INDEX_NUMBER = "SDL.renderer.create.vulkan.present_queue_family_index";
pub const PROP_RENDERER_NAME_STRING = "SDL.renderer.name";
pub const PROP_RENDERER_WINDOW_POINTER = "SDL.renderer.window";
pub const PROP_RENDERER_SURFACE_POINTER = "SDL.renderer.surface";
pub const PROP_RENDERER_VSYNC_NUMBER = "SDL.renderer.vsync";
pub const PROP_RENDERER_MAX_TEXTURE_SIZE_NUMBER = "SDL.renderer.max_texture_size";
pub const PROP_RENDERER_TEXTURE_FORMATS_POINTER = "SDL.renderer.texture_formats";
pub const PROP_RENDERER_TEXTURE_WRAPPING_BOOLEAN = "SDL.renderer.texture_wrapping";
pub const PROP_RENDERER_OUTPUT_COLORSPACE_NUMBER = "SDL.renderer.output_colorspace";
pub const PROP_RENDERER_HDR_ENABLED_BOOLEAN = "SDL.renderer.HDR_enabled";
pub const PROP_RENDERER_SDR_WHITE_POINT_FLOAT = "SDL.renderer.SDR_white_point";
pub const PROP_RENDERER_HDR_HEADROOM_FLOAT = "SDL.renderer.HDR_headroom";
pub const PROP_RENDERER_D3D9_DEVICE_POINTER = "SDL.renderer.d3d9.device";
pub const PROP_RENDERER_D3D11_DEVICE_POINTER = "SDL.renderer.d3d11.device";
pub const PROP_RENDERER_D3D11_SWAPCHAIN_POINTER = "SDL.renderer.d3d11.swap_chain";
pub const PROP_RENDERER_D3D12_DEVICE_POINTER = "SDL.renderer.d3d12.device";
pub const PROP_RENDERER_D3D12_SWAPCHAIN_POINTER = "SDL.renderer.d3d12.swap_chain";
pub const PROP_RENDERER_D3D12_COMMAND_QUEUE_POINTER = "SDL.renderer.d3d12.command_queue";
pub const PROP_RENDERER_VULKAN_INSTANCE_POINTER = "SDL.renderer.vulkan.instance";
pub const PROP_RENDERER_VULKAN_SURFACE_NUMBER = "SDL.renderer.vulkan.surface";
pub const PROP_RENDERER_VULKAN_PHYSICAL_DEVICE_POINTER = "SDL.renderer.vulkan.physical_device";
pub const PROP_RENDERER_VULKAN_DEVICE_POINTER = "SDL.renderer.vulkan.device";
pub const PROP_RENDERER_VULKAN_GRAPHICS_QUEUE_FAMILY_INDEX_NUMBER = "SDL.renderer.vulkan.graphics_queue_family_index";
pub const PROP_RENDERER_VULKAN_PRESENT_QUEUE_FAMILY_INDEX_NUMBER = "SDL.renderer.vulkan.present_queue_family_index";
pub const PROP_RENDERER_VULKAN_SWAPCHAIN_IMAGE_COUNT_NUMBER = "SDL.renderer.vulkan.swapchain_image_count";
pub const PROP_RENDERER_GPU_DEVICE_POINTER = "SDL.renderer.gpu.device";
pub const PROP_TEXTURE_CREATE_COLORSPACE_NUMBER = "SDL.texture.create.colorspace";
pub const PROP_TEXTURE_CREATE_FORMAT_NUMBER = "SDL.texture.create.format";
pub const PROP_TEXTURE_CREATE_ACCESS_NUMBER = "SDL.texture.create.access";
pub const PROP_TEXTURE_CREATE_WIDTH_NUMBER = "SDL.texture.create.width";
pub const PROP_TEXTURE_CREATE_HEIGHT_NUMBER = "SDL.texture.create.height";
pub const PROP_TEXTURE_CREATE_PALETTE_POINTER = "SDL.texture.create.palette";
pub const PROP_TEXTURE_CREATE_SDR_WHITE_POINT_FLOAT = "SDL.texture.create.SDR_white_point";
pub const PROP_TEXTURE_CREATE_HDR_HEADROOM_FLOAT = "SDL.texture.create.HDR_headroom";
pub const PROP_TEXTURE_CREATE_D3D11_TEXTURE_POINTER = "SDL.texture.create.d3d11.texture";
pub const PROP_TEXTURE_CREATE_D3D11_TEXTURE_U_POINTER = "SDL.texture.create.d3d11.texture_u";
pub const PROP_TEXTURE_CREATE_D3D11_TEXTURE_V_POINTER = "SDL.texture.create.d3d11.texture_v";
pub const PROP_TEXTURE_CREATE_D3D12_TEXTURE_POINTER = "SDL.texture.create.d3d12.texture";
pub const PROP_TEXTURE_CREATE_D3D12_TEXTURE_U_POINTER = "SDL.texture.create.d3d12.texture_u";
pub const PROP_TEXTURE_CREATE_D3D12_TEXTURE_V_POINTER = "SDL.texture.create.d3d12.texture_v";
pub const PROP_TEXTURE_CREATE_METAL_PIXELBUFFER_POINTER = "SDL.texture.create.metal.pixelbuffer";
pub const PROP_TEXTURE_CREATE_OPENGL_TEXTURE_NUMBER = "SDL.texture.create.opengl.texture";
pub const PROP_TEXTURE_CREATE_OPENGL_TEXTURE_UV_NUMBER = "SDL.texture.create.opengl.texture_uv";
pub const PROP_TEXTURE_CREATE_OPENGL_TEXTURE_U_NUMBER = "SDL.texture.create.opengl.texture_u";
pub const PROP_TEXTURE_CREATE_OPENGL_TEXTURE_V_NUMBER = "SDL.texture.create.opengl.texture_v";
pub const PROP_TEXTURE_CREATE_OPENGLES2_TEXTURE_NUMBER = "SDL.texture.create.opengles2.texture";
pub const PROP_TEXTURE_CREATE_OPENGLES2_TEXTURE_UV_NUMBER = "SDL.texture.create.opengles2.texture_uv";
pub const PROP_TEXTURE_CREATE_OPENGLES2_TEXTURE_U_NUMBER = "SDL.texture.create.opengles2.texture_u";
pub const PROP_TEXTURE_CREATE_OPENGLES2_TEXTURE_V_NUMBER = "SDL.texture.create.opengles2.texture_v";
pub const PROP_TEXTURE_CREATE_VULKAN_TEXTURE_NUMBER = "SDL.texture.create.vulkan.texture";
pub const PROP_TEXTURE_CREATE_VULKAN_LAYOUT_NUMBER = "SDL.texture.create.vulkan.layout";
pub const PROP_TEXTURE_CREATE_GPU_TEXTURE_POINTER = "SDL.texture.create.gpu.texture";
pub const PROP_TEXTURE_CREATE_GPU_TEXTURE_UV_POINTER = "SDL.texture.create.gpu.texture_uv";
pub const PROP_TEXTURE_CREATE_GPU_TEXTURE_U_POINTER = "SDL.texture.create.gpu.texture_u";
pub const PROP_TEXTURE_CREATE_GPU_TEXTURE_V_POINTER = "SDL.texture.create.gpu.texture_v";
pub const PROP_TEXTURE_COLORSPACE_NUMBER = "SDL.texture.colorspace";
pub const PROP_TEXTURE_FORMAT_NUMBER = "SDL.texture.format";
pub const PROP_TEXTURE_ACCESS_NUMBER = "SDL.texture.access";
pub const PROP_TEXTURE_WIDTH_NUMBER = "SDL.texture.width";
pub const PROP_TEXTURE_HEIGHT_NUMBER = "SDL.texture.height";
pub const PROP_TEXTURE_SDR_WHITE_POINT_FLOAT = "SDL.texture.SDR_white_point";
pub const PROP_TEXTURE_HDR_HEADROOM_FLOAT = "SDL.texture.HDR_headroom";
pub const PROP_TEXTURE_D3D11_TEXTURE_POINTER = "SDL.texture.d3d11.texture";
pub const PROP_TEXTURE_D3D11_TEXTURE_U_POINTER = "SDL.texture.d3d11.texture_u";
pub const PROP_TEXTURE_D3D11_TEXTURE_V_POINTER = "SDL.texture.d3d11.texture_v";
pub const PROP_TEXTURE_D3D12_TEXTURE_POINTER = "SDL.texture.d3d12.texture";
pub const PROP_TEXTURE_D3D12_TEXTURE_U_POINTER = "SDL.texture.d3d12.texture_u";
pub const PROP_TEXTURE_D3D12_TEXTURE_V_POINTER = "SDL.texture.d3d12.texture_v";
pub const PROP_TEXTURE_OPENGL_TEXTURE_NUMBER = "SDL.texture.opengl.texture";
pub const PROP_TEXTURE_OPENGL_TEXTURE_UV_NUMBER = "SDL.texture.opengl.texture_uv";
pub const PROP_TEXTURE_OPENGL_TEXTURE_U_NUMBER = "SDL.texture.opengl.texture_u";
pub const PROP_TEXTURE_OPENGL_TEXTURE_V_NUMBER = "SDL.texture.opengl.texture_v";
pub const PROP_TEXTURE_OPENGL_TEXTURE_TARGET_NUMBER = "SDL.texture.opengl.target";
pub const PROP_TEXTURE_OPENGL_TEX_W_FLOAT = "SDL.texture.opengl.tex_w";
pub const PROP_TEXTURE_OPENGL_TEX_H_FLOAT = "SDL.texture.opengl.tex_h";
pub const PROP_TEXTURE_OPENGLES2_TEXTURE_NUMBER = "SDL.texture.opengles2.texture";
pub const PROP_TEXTURE_OPENGLES2_TEXTURE_UV_NUMBER = "SDL.texture.opengles2.texture_uv";
pub const PROP_TEXTURE_OPENGLES2_TEXTURE_U_NUMBER = "SDL.texture.opengles2.texture_u";
pub const PROP_TEXTURE_OPENGLES2_TEXTURE_V_NUMBER = "SDL.texture.opengles2.texture_v";
pub const PROP_TEXTURE_OPENGLES2_TEXTURE_TARGET_NUMBER = "SDL.texture.opengles2.target";
pub const PROP_TEXTURE_VULKAN_TEXTURE_NUMBER = "SDL.texture.vulkan.texture";
pub const PROP_TEXTURE_GPU_TEXTURE_POINTER = "SDL.texture.gpu.texture";
pub const PROP_TEXTURE_GPU_TEXTURE_UV_POINTER = "SDL.texture.gpu.texture_uv";
pub const PROP_TEXTURE_GPU_TEXTURE_U_POINTER = "SDL.texture.gpu.texture_u";
pub const PROP_TEXTURE_GPU_TEXTURE_V_POINTER = "SDL.texture.gpu.texture_v";
pub const RENDERER_VSYNC_DISABLED = @as(c_int, 0);
pub const RENDERER_VSYNC_ADAPTIVE = -@as(c_int, 1);
pub const DEBUG_TEXT_FONT_CHARACTER_SIZE = @as(c_int, 8);
pub const MS_PER_SECOND = @as(c_int, 1000);
pub const US_PER_SECOND = __helpers.promoteIntLiteral(c_int, 1000000, .decimal);
pub const NS_PER_SECOND = @as(c_longlong, 1000000000);
pub const NS_PER_MS = __helpers.promoteIntLiteral(c_int, 1000000, .decimal);
pub const NS_PER_US = @as(c_int, 1000);
pub inline fn SECONDS_TO_NS(S: anytype) @TypeOf(__helpers.cast(Uint64, S) * NS_PER_SECOND) {
    _ = &S;
    return __helpers.cast(Uint64, S) * NS_PER_SECOND;
}
pub inline fn NS_TO_SECONDS(NS: anytype) @TypeOf(__helpers.div(NS, NS_PER_SECOND)) {
    _ = &NS;
    return __helpers.div(NS, NS_PER_SECOND);
}
pub inline fn MS_TO_NS(MS: anytype) @TypeOf(__helpers.cast(Uint64, MS) * NS_PER_MS) {
    _ = &MS;
    return __helpers.cast(Uint64, MS) * NS_PER_MS;
}
pub inline fn NS_TO_MS(NS: anytype) @TypeOf(__helpers.div(NS, NS_PER_MS)) {
    _ = &NS;
    return __helpers.div(NS, NS_PER_MS);
}
pub inline fn US_TO_NS(US: anytype) @TypeOf(__helpers.cast(Uint64, US) * NS_PER_US) {
    _ = &US;
    return __helpers.cast(Uint64, US) * NS_PER_US;
}
pub inline fn NS_TO_US(NS: anytype) @TypeOf(__helpers.div(NS, NS_PER_US)) {
    _ = &NS;
    return __helpers.div(NS, NS_PER_US);
}
pub const TRAYENTRY_BUTTON = @as(c_uint, 0x00000001);
pub const TRAYENTRY_CHECKBOX = @as(c_uint, 0x00000002);
pub const TRAYENTRY_SUBMENU = @as(c_uint, 0x00000004);
pub const TRAYENTRY_DISABLED = __helpers.promoteIntLiteral(c_uint, 0x80000000, .hex);
pub const TRAYENTRY_CHECKED = __helpers.promoteIntLiteral(c_uint, 0x40000000, .hex);
pub const PROP_TRAY_CREATE_ICON_POINTER = "SDL.tray.create.icon";
pub const PROP_TRAY_CREATE_TOOLTIP_STRING = "SDL.tray.create.tooltip";
pub const PROP_TRAY_CREATE_USERDATA_POINTER = "SDL.tray.create.userdata";
pub const PROP_TRAY_CREATE_LEFTCLICK_CALLBACK_POINTER = "SDL.tray.create.leftclick_callback";
pub const PROP_TRAY_CREATE_RIGHTCLICK_CALLBACK_POINTER = "SDL.tray.create.rightclick_callback";
pub const PROP_TRAY_CREATE_MIDDLECLICK_CALLBACK_POINTER = "SDL.tray.create.middleclick_callback";
pub const MAJOR_VERSION = @as(c_int, 3);
pub const MINOR_VERSION = @as(c_int, 5);
pub const MICRO_VERSION = @as(c_int, 0);
pub inline fn VERSIONNUM(major: anytype, minor: anytype, patch: anytype) @TypeOf(((major * __helpers.promoteIntLiteral(c_int, 1000000, .decimal)) + (minor * @as(c_int, 1000))) + patch) {
    _ = &major;
    _ = &minor;
    _ = &patch;
    return ((major * __helpers.promoteIntLiteral(c_int, 1000000, .decimal)) + (minor * @as(c_int, 1000))) + patch;
}
pub inline fn VERSIONNUM_MAJOR(version: anytype) @TypeOf(__helpers.div(version, __helpers.promoteIntLiteral(c_int, 1000000, .decimal))) {
    _ = &version;
    return __helpers.div(version, __helpers.promoteIntLiteral(c_int, 1000000, .decimal));
}
pub inline fn VERSIONNUM_MINOR(version: anytype) @TypeOf(__helpers.rem(__helpers.div(version, @as(c_int, 1000)), @as(c_int, 1000))) {
    _ = &version;
    return __helpers.rem(__helpers.div(version, @as(c_int, 1000)), @as(c_int, 1000));
}
pub inline fn VERSIONNUM_MICRO(version: anytype) @TypeOf(__helpers.rem(version, @as(c_int, 1000))) {
    _ = &version;
    return __helpers.rem(version, @as(c_int, 1000));
}
pub const VERSION = VERSIONNUM(MAJOR_VERSION, MINOR_VERSION, MICRO_VERSION);
pub inline fn VERSION_ATLEAST(X: anytype, Y: anytype, Z: anytype) @TypeOf(VERSION >= VERSIONNUM(X, Y, Z)) {
    _ = &X;
    _ = &Y;
    _ = &Z;
    return VERSION >= VERSIONNUM(X, Y, Z);
}
pub const __locale_struct = struct___locale_struct;
pub const _IO_FILE = struct__IO_FILE;
pub const tm = struct_tm;
pub const _XEvent = union__XEvent;
pub const GetGamepadProductForID = SDL_GetGamepadProductForID;
pub const GetRenderClipRect = SDL_GetRenderClipRect;
pub const strtoll = SDL_strtoll;
pub const GetJoystickBall = SDL_GetJoystickBall;
pub const GetJoystickConnectionState = SDL_GetJoystickConnectionState;
pub const SetGPURenderStateStorageTextures = SDL_SetGPURenderStateStorageTextures;
pub const UnlockMutex = SDL_UnlockMutex;
pub const GetAudioStreamGain = SDL_GetAudioStreamGain;
pub const GetKeyFromScancode = SDL_GetKeyFromScancode;
pub const sscanf = SDL_sscanf;
pub const wcsnstr = SDL_wcsnstr;
pub const IsGamepad = SDL_IsGamepad;
pub const PushGPUDebugGroup = SDL_PushGPUDebugGroup;
pub const asin = SDL_asin;
pub const SaveBMP_IO = SDL_SaveBMP_IO;
pub const GetGamepadVendor = SDL_GetGamepadVendor;
pub const CopyProperties = SDL_CopyProperties;
pub const IsAudioDevicePhysical = SDL_IsAudioDevicePhysical;
pub const ReleaseGPUTransferBuffer = SDL_ReleaseGPUTransferBuffer;
pub const GetGamepadAxisFromString = SDL_GetGamepadAxisFromString;
pub const GL_SwapWindow = SDL_GL_SwapWindow;
pub const OpenAudioDevice = SDL_OpenAudioDevice;
pub const GPUTextureSupportsSampleCount = SDL_GPUTextureSupportsSampleCount;
pub const SetAtomicPointer = SDL_SetAtomicPointer;
pub const GetAppMetadataProperty = SDL_GetAppMetadataProperty;
pub const GetNumGPUDrivers = SDL_GetNumGPUDrivers;
pub const ReadStorageFile = SDL_ReadStorageFile;
pub const DestroyGPURenderState = SDL_DestroyGPURenderState;
pub const PauseAudioDevice = SDL_PauseAudioDevice;
pub const SetLogPriorityPrefix = SDL_SetLogPriorityPrefix;
pub const SetWindowTitle = SDL_SetWindowTitle;
pub const SetWindowMaximumSize = SDL_SetWindowMaximumSize;
pub const hid_enumerate = SDL_hid_enumerate;
pub const sinf = SDL_sinf;
pub const ReadS32BE = SDL_ReadS32BE;
pub const GetDisplayForWindow = SDL_GetDisplayForWindow;
pub const SetTrayEntryLabel = SDL_SetTrayEntryLabel;
pub const SetJoystickVirtualHat = SDL_SetJoystickVirtualHat;
pub const CreateMutex = SDL_CreateMutex;
pub const DestroyTexture = SDL_DestroyTexture;
pub const CopyStorageFile = SDL_CopyStorageFile;
pub const GetMaxHapticEffectsPlaying = SDL_GetMaxHapticEffectsPlaying;
pub const SetWindowRelativeMouseMode = SDL_SetWindowRelativeMouseMode;
pub const DestroyHapticEffect = SDL_DestroyHapticEffect;
pub const strnstr = SDL_strnstr;
pub const RenderPoint = SDL_RenderPoint;
pub const SetSurfaceColorKey = SDL_SetSurfaceColorKey;
pub const BeginGPUComputePass = SDL_BeginGPUComputePass;
pub const WaitSemaphore = SDL_WaitSemaphore;
pub const SetJoystickVirtualAxis = SDL_SetJoystickVirtualAxis;
pub const WaitForGPUFences = SDL_WaitForGPUFences;
pub const DelayNS = SDL_DelayNS;
pub const SetAudioPostmixCallback = SDL_SetAudioPostmixCallback;
pub const BindGPUComputeStorageTextures = SDL_BindGPUComputeStorageTextures;
pub const TimeToWindows = SDL_TimeToWindows;
pub const GetHapticName = SDL_GetHapticName;
pub const GetDisplayContentScale = SDL_GetDisplayContentScale;
pub const UpdateWindowSurface = SDL_UpdateWindowSurface;
pub const SetWindowShape = SDL_SetWindowShape;
pub const SetPointerPropertyWithCleanup = SDL_SetPointerPropertyWithCleanup;
pub const ClearComposition = SDL_ClearComposition;
pub const GetDisplayBounds = SDL_GetDisplayBounds;
pub const LockAudioStream = SDL_LockAudioStream;
pub const CreateRendererWithProperties = SDL_CreateRendererWithProperties;
pub const GetTrayEntryChecked = SDL_GetTrayEntryChecked;
pub const GetRenderScale = SDL_GetRenderScale;
pub const realloc = SDL_realloc;
pub const SetRelativeMouseTransform = SDL_SetRelativeMouseTransform;
pub const SetWindowFillDocument = SDL_SetWindowFillDocument;
pub const PutAudioStreamPlanarData = SDL_PutAudioStreamPlanarData;
pub const GetRenderMetalLayer = SDL_GetRenderMetalLayer;
pub const asprintf = SDL_asprintf;
pub const OpenJoystick = SDL_OpenJoystick;
pub const ClaimWindowForGPUDevice = SDL_ClaimWindowForGPUDevice;
pub const UnlockSpinlock = SDL_UnlockSpinlock;
pub const GetEnvironment = SDL_GetEnvironment;
pub const HasAVX2 = SDL_HasAVX2;
pub const GetPrimaryDisplay = SDL_GetPrimaryDisplay;
pub const SetRenderViewport = SDL_SetRenderViewport;
pub const hid_get_indexed_string = SDL_hid_get_indexed_string;
pub const GetRendererProperties = SDL_GetRendererProperties;
pub const ReadU16BE = SDL_ReadU16BE;
pub const SetAudioDeviceGain = SDL_SetAudioDeviceGain;
pub const fmodf = SDL_fmodf;
pub const SetFloatProperty = SDL_SetFloatProperty;
pub const ReloadGamepadMappings = SDL_ReloadGamepadMappings;
pub const HasScreenKeyboardSupport = SDL_HasScreenKeyboardSupport;
pub const IsMainThread = SDL_IsMainThread;
pub const OnApplicationWillEnterForeground = SDL_OnApplicationWillEnterForeground;
pub const CreateGPUDevice = SDL_CreateGPUDevice;
pub const SetBooleanProperty = SDL_SetBooleanProperty;
pub const BindGPUFragmentStorageBuffers = SDL_BindGPUFragmentStorageBuffers;
pub const SetAppMetadataProperty = SDL_SetAppMetadataProperty;
pub const GetPerformanceFrequency = SDL_GetPerformanceFrequency;
pub const DestroyCursor = SDL_DestroyCursor;
pub const utf8strlen = SDL_utf8strlen;
pub const SetCurrentThreadPriority = SDL_SetCurrentThreadPriority;
pub const ConvertSurface = SDL_ConvertSurface;
pub const ReadProcess = SDL_ReadProcess;
pub const GetTextureColorMod = SDL_GetTextureColorMod;
pub const vsscanf = SDL_vsscanf;
pub const setenv_unsafe = SDL_setenv_unsafe;
pub const randf = SDL_randf;
pub const lround = SDL_lround;
pub const IOprintf = SDL_IOprintf;
pub const UploadToGPUBuffer = SDL_UploadToGPUBuffer;
pub const SetGPUBlendConstants = SDL_SetGPUBlendConstants;
pub const GetDayOfWeek = SDL_GetDayOfWeek;
pub const OnApplicationWillEnterBackground = SDL_OnApplicationWillEnterBackground;
pub const GetTrayMenuParentEntry = SDL_GetTrayMenuParentEntry;
pub const AddSurfaceAlternateImage = SDL_AddSurfaceAlternateImage;
pub const BindGPUGraphicsPipeline = SDL_BindGPUGraphicsPipeline;
pub const GetGPUDeviceDriver = SDL_GetGPUDeviceDriver;
pub const SetTextInputArea = SDL_SetTextInputArea;
pub const getenv_unsafe = SDL_getenv_unsafe;
pub const ispunct = SDL_ispunct;
pub const SetWindowAspectRatio = SDL_SetWindowAspectRatio;
pub const OpenHaptic = SDL_OpenHaptic;
pub const RenderTextureAffine = SDL_RenderTextureAffine;
pub const isalnum = SDL_isalnum;
pub const LogVerbose = SDL_LogVerbose;
pub const SetCursor = SDL_SetCursor;
pub const WriteU16LE = SDL_WriteU16LE;
pub const SetWindowIcon = SDL_SetWindowIcon;
pub const GetSystemPageSize = SDL_GetSystemPageSize;
pub const ResetHints = SDL_ResetHints;
pub const SetWindowModal = SDL_SetWindowModal;
pub const UpdateTrays = SDL_UpdateTrays;
pub const MemoryBarrierAcquireFunction = SDL_MemoryBarrierAcquireFunction;
pub const WaitSemaphoreTimeout = SDL_WaitSemaphoreTimeout;
pub const GetSensorNonPortableType = SDL_GetSensorNonPortableType;
pub const CreateTextureFromSurface = SDL_CreateTextureFromSurface;
pub const PlayHapticRumble = SDL_PlayHapticRumble;
pub const GetTextureAlphaModFloat = SDL_GetTextureAlphaModFloat;
pub const calloc = SDL_calloc;
pub const DestroySemaphore = SDL_DestroySemaphore;
pub const GetMouseFocus = SDL_GetMouseFocus;
pub const CreateGPUShader = SDL_CreateGPUShader;
pub const WriteS32LE = SDL_WriteS32LE;
pub const GetSurfaceColorMod = SDL_GetSurfaceColorMod;
pub const GL_GetProcAddress = SDL_GL_GetProcAddress;
pub const SetRenderClipRect = SDL_SetRenderClipRect;
pub const GetGamepadPlayerIndex = SDL_GetGamepadPlayerIndex;
pub const GetRenderOutputSize = SDL_GetRenderOutputSize;
pub const IOFromFile = SDL_IOFromFile;
pub const SetSurfaceBlendMode = SDL_SetSurfaceBlendMode;
pub const CreateGPUTexture = SDL_CreateGPUTexture;
pub const SetLinuxThreadPriority = SDL_SetLinuxThreadPriority;
pub const ScreenSaverEnabled = SDL_ScreenSaverEnabled;
pub const GetNumAudioDrivers = SDL_GetNumAudioDrivers;
pub const GetRGBA = SDL_GetRGBA;
pub const ulltoa = SDL_ulltoa;
pub const CreateTrayWithProperties = SDL_CreateTrayWithProperties;
pub const SetEventFilter = SDL_SetEventFilter;
pub const GetGamepadSerial = SDL_GetGamepadSerial;
pub const UpdateSensors = SDL_UpdateSensors;
pub const SetStringProperty = SDL_SetStringProperty;
pub const GetPathInfo = SDL_GetPathInfo;
pub const AcquireGPUCommandBuffer = SDL_AcquireGPUCommandBuffer;
pub const GetTrayEntries = SDL_GetTrayEntries;
pub const IsTV = SDL_IsTV;
pub const GetCurrentTime = SDL_GetCurrentTime;
pub const atan = SDL_atan;
pub const WindowSupportsGPUPresentMode = SDL_WindowSupportsGPUPresentMode;
pub const GetJoystickVendor = SDL_GetJoystickVendor;
pub const GetGamepadButton = SDL_GetGamepadButton;
pub const GetRelativeMouseState = SDL_GetRelativeMouseState;
pub const WindowSupportsGPUSwapchainComposition = SDL_WindowSupportsGPUSwapchainComposition;
pub const OpenIO = SDL_OpenIO;
pub const BindGPUComputePipeline = SDL_BindGPUComputePipeline;
pub const GetTexturePalette = SDL_GetTexturePalette;
pub const SetWindowMinimumSize = SDL_SetWindowMinimumSize;
pub const GetSensorFromID = SDL_GetSensorFromID;
pub const GetRectIntersection = SDL_GetRectIntersection;
pub const SetJoystickVirtualButton = SDL_SetJoystickVirtualButton;
pub const GetHapticFromID = SDL_GetHapticFromID;
pub const islower = SDL_islower;
pub const GL_GetAttribute = SDL_GL_GetAttribute;
pub const MapGPUTransferBuffer = SDL_MapGPUTransferBuffer;
pub const LogError = SDL_LogError;
pub const RenderFillRects = SDL_RenderFillRects;
pub const AddTimer = SDL_AddTimer;
pub const StartTextInput = SDL_StartTextInput;
pub const SignalSemaphore = SDL_SignalSemaphore;
pub const BlitSurface = SDL_BlitSurface;
pub const CloseHaptic = SDL_CloseHaptic;
pub const AddGamepadMappingsFromFile = SDL_AddGamepadMappingsFromFile;
pub const RemoveSurfaceAlternateImages = SDL_RemoveSurfaceAlternateImages;
pub const LoadFile_IO = SDL_LoadFile_IO;
pub const ResumeHaptic = SDL_ResumeHaptic;
pub const HasJoystick = SDL_HasJoystick;
pub const GetJoystickTypeForID = SDL_GetJoystickTypeForID;
pub const RemoveTimer = SDL_RemoveTimer;
pub const KillProcess = SDL_KillProcess;
pub const GetGamepadStringForAxis = SDL_GetGamepadStringForAxis;
pub const DisableScreenSaver = SDL_DisableScreenSaver;
pub const isgraph = SDL_isgraph;
pub const CreateEnvironment = SDL_CreateEnvironment;
pub const SignalCondition = SDL_SignalCondition;
pub const GetEnvironmentVariables = SDL_GetEnvironmentVariables;
pub const HasClipboardData = SDL_HasClipboardData;
pub const strtol = SDL_strtol;
pub const GetLogPriority = SDL_GetLogPriority;
pub const IsMouseHaptic = SDL_IsMouseHaptic;
pub const HideWindow = SDL_HideWindow;
pub const isinff = SDL_isinff;
pub const log10 = SDL_log10;
pub const floorf = SDL_floorf;
pub const LoadBMP = SDL_LoadBMP;
pub const GetJoystickHat = SDL_GetJoystickHat;
pub const CreateGPUBuffer = SDL_CreateGPUBuffer;
pub const GetMemoryFunctions = SDL_GetMemoryFunctions;
pub const unsetenv_unsafe = SDL_unsetenv_unsafe;
pub const BindAudioStream = SDL_BindAudioStream;
pub const StepUTF8 = SDL_StepUTF8;
pub const ReadAsyncIO = SDL_ReadAsyncIO;
pub const CompareAndSwapAtomicPointer = SDL_CompareAndSwapAtomicPointer;
pub const SetAudioStreamFrequencyRatio = SDL_SetAudioStreamFrequencyRatio;
pub const BlitSurfaceScaled = SDL_BlitSurfaceScaled;
pub const GetAudioFormatName = SDL_GetAudioFormatName;
pub const CloseCamera = SDL_CloseCamera;
pub const SyncWindow = SDL_SyncWindow;
pub const SetJoystickEventsEnabled = SDL_SetJoystickEventsEnabled;
pub const SetGPUScissor = SDL_SetGPUScissor;
pub const SetGPUAllowedFramesInFlight = SDL_SetGPUAllowedFramesInFlight;
pub const LogMessageV = SDL_LogMessageV;
pub const GetTextureColorModFloat = SDL_GetTextureColorModFloat;
pub const RenderCoordinatesFromWindow = SDL_RenderCoordinatesFromWindow;
pub const EnableScreenSaver = SDL_EnableScreenSaver;
pub const SetX11EventHook = SDL_SetX11EventHook;
pub const tan = SDL_tan;
pub const GetWindowSizeInPixels = SDL_GetWindowSizeInPixels;
pub const isxdigit = SDL_isxdigit;
pub const snprintf = SDL_snprintf;
pub const srand = SDL_srand;
pub const LoadWAV_IO = SDL_LoadWAV_IO;
pub const RaiseWindow = SDL_RaiseWindow;
pub const GetRealGamepadType = SDL_GetRealGamepadType;
pub const GetNumGamepadTouchpadFingers = SDL_GetNumGamepadTouchpadFingers;
pub const InitSubSystem = SDL_InitSubSystem;
pub const QuitSubSystem = SDL_QuitSubSystem;
pub const CreateAudioStream = SDL_CreateAudioStream;
pub const ReadU8 = SDL_ReadU8;
pub const GetRenderDrawColor = SDL_GetRenderDrawColor;
pub const GetSensors = SDL_GetSensors;
pub const EndGPURenderPass = SDL_EndGPURenderPass;
pub const CreateGPUDeviceWithProperties = SDL_CreateGPUDeviceWithProperties;
pub const BlitSurfaceUnchecked = SDL_BlitSurfaceUnchecked;
pub const crc32 = SDL_crc32;
pub const rand = SDL_rand;
pub const cosf = SDL_cosf;
pub const WaitAndAcquireGPUSwapchainTexture = SDL_WaitAndAcquireGPUSwapchainTexture;
pub const strtoull = SDL_strtoull;
pub const GetCurrentDisplayOrientation = SDL_GetCurrentDisplayOrientation;
pub const hid_get_report_descriptor = SDL_hid_get_report_descriptor;
pub const TryLockSpinlock = SDL_TryLockSpinlock;
pub const ClearError = SDL_ClearError;
pub const SetTexturePalette = SDL_SetTexturePalette;
pub const GetSurfaceColorspace = SDL_GetSurfaceColorspace;
pub const GetProcessOutput = SDL_GetProcessOutput;
pub const ReadS64LE = SDL_ReadS64LE;
pub const GetPrefPath = SDL_GetPrefPath;
pub const OpenTitleStorage = SDL_OpenTitleStorage;
pub const OpenURL = SDL_OpenURL;
pub const copysignf = SDL_copysignf;
pub const DestroyWindow = SDL_DestroyWindow;
pub const ReleaseGPUComputePipeline = SDL_ReleaseGPUComputePipeline;
pub const SubmitGPUCommandBufferAndAcquireFence = SDL_SubmitGPUCommandBufferAndAcquireFence;
pub const SetWindowKeyboardGrab = SDL_SetWindowKeyboardGrab;
pub const GetGamepadName = SDL_GetGamepadName;
pub const OpenCamera = SDL_OpenCamera;
pub const GetMaxHapticEffects = SDL_GetMaxHapticEffects;
pub const SetRenderScale = SDL_SetRenderScale;
pub const qsort = SDL_qsort;
pub const InsertGPUDebugLabel = SDL_InsertGPUDebugLabel;
pub const ReleaseGPUSampler = SDL_ReleaseGPUSampler;
pub const OpenFileStorage = SDL_OpenFileStorage;
pub const qsort_r = SDL_qsort_r;
pub const GetJoystickProductForID = SDL_GetJoystickProductForID;
pub const CreateGPUComputePipeline = SDL_CreateGPUComputePipeline;
pub const GetWindowSize = SDL_GetWindowSize;
pub const GetWindowPixelDensity = SDL_GetWindowPixelDensity;
pub const vasprintf = SDL_vasprintf;
pub const GamepadConnected = SDL_GamepadConnected;
pub const GetKeyboardFocus = SDL_GetKeyboardFocus;
pub const HasEvent = SDL_HasEvent;
pub const memset4 = SDL_memset4;
pub const uitoa = SDL_uitoa;
pub const modf = SDL_modf;
pub const sqrt = SDL_sqrt;
pub const UnlockProperties = SDL_UnlockProperties;
pub const WriteSurfacePixel = SDL_WriteSurfacePixel;
pub const GetAsyncIOResult = SDL_GetAsyncIOResult;
pub const GetError = SDL_GetError;
pub const GPUSupportsShaderFormats = SDL_GPUSupportsShaderFormats;
pub const CreateTextureWithProperties = SDL_CreateTextureWithProperties;
pub const SavePNG = SDL_SavePNG;
pub const GetDateTimeLocalePreferences = SDL_GetDateTimeLocalePreferences;
pub const MinimizeWindow = SDL_MinimizeWindow;
pub const GetTrayMenu = SDL_GetTrayMenu;
pub const SetGamepadSensorEnabled = SDL_SetGamepadSensorEnabled;
pub const GetWindowFromEvent = SDL_GetWindowFromEvent;
pub const GetClipboardMimeTypes = SDL_GetClipboardMimeTypes;
pub const GetSurfaceAlphaMod = SDL_GetSurfaceAlphaMod;
pub const DestroyWindowSurface = SDL_DestroyWindowSurface;
pub const WriteS8 = SDL_WriteS8;
pub const GetNumHapticAxes = SDL_GetNumHapticAxes;
pub const powf = SDL_powf;
pub const UpdateJoysticks = SDL_UpdateJoysticks;
pub const BindGPUVertexStorageTextures = SDL_BindGPUVertexStorageTextures;
pub const ceilf = SDL_ceilf;
pub const GetAudioDriver = SDL_GetAudioDriver;
pub const CreateGPUTransferBuffer = SDL_CreateGPUTransferBuffer;
pub const BroadcastCondition = SDL_BroadcastCondition;
pub const getenv = SDL_getenv;
pub const GetNumJoystickButtons = SDL_GetNumJoystickButtons;
pub const CreateRWLock = SDL_CreateRWLock;
pub const free = SDL_free;
pub const GetJoystickPlayerIndex = SDL_GetJoystickPlayerIndex;
pub const LockSurface = SDL_LockSurface;
pub const BindGPUVertexBuffers = SDL_BindGPUVertexBuffers;
pub const TryLockRWLockForReading = SDL_TryLockRWLockForReading;
pub const GetThreadID = SDL_GetThreadID;
pub const GetAudioStreamInputChannelMap = SDL_GetAudioStreamInputChannelMap;
pub const SetJoystickPlayerIndex = SDL_SetJoystickPlayerIndex;
pub const EnumerateDirectory = SDL_EnumerateDirectory;
pub const ReleaseGPUFence = SDL_ReleaseGPUFence;
pub const GetUserFolder = SDL_GetUserFolder;
pub const strtod = SDL_strtod;
pub const ReleaseCameraFrame = SDL_ReleaseCameraFrame;
pub const GetJoystickPowerInfo = SDL_GetJoystickPowerInfo;
pub const bsearch_r = SDL_bsearch_r;
pub const GetWindowRelativeMouseMode = SDL_GetWindowRelativeMouseMode;
pub const hid_send_feature_report = SDL_hid_send_feature_report;
pub const GetWindowID = SDL_GetWindowID;
pub const GetTicks = SDL_GetTicks;
pub const GetGamepadPowerInfo = SDL_GetGamepadPowerInfo;
pub const strrev = SDL_strrev;
pub const ReadIO = SDL_ReadIO;
pub const ReadSurfacePixelFloat = SDL_ReadSurfacePixelFloat;
pub const GamepadEventsEnabled = SDL_GamepadEventsEnabled;
pub const GetGamepadBindings = SDL_GetGamepadBindings;
pub const CreateTexture = SDL_CreateTexture;
pub const asinf = SDL_asinf;
pub const GetSurfaceClipRect = SDL_GetSurfaceClipRect;
pub const GetWindows = SDL_GetWindows;
pub const ResetKeyboard = SDL_ResetKeyboard;
pub const GlobStorageDirectory = SDL_GlobStorageDirectory;
pub const GetVersion = SDL_GetVersion;
pub const CreateSoftwareRenderer = SDL_CreateSoftwareRenderer;
pub const DestroyProcess = SDL_DestroyProcess;
pub const SetAtomicInt = SDL_SetAtomicInt;
pub const AsyncIOFromFile = SDL_AsyncIOFromFile;
pub const acos = SDL_acos;
pub const SetAtomicU32 = SDL_SetAtomicU32;
pub const WasInit = SDL_WasInit;
pub const WaitAsyncIOResult = SDL_WaitAsyncIOResult;
pub const GetWindowParent = SDL_GetWindowParent;
pub const SaveFile = SDL_SaveFile;
pub const rand_bits_r = SDL_rand_bits_r;
pub const GetWindowMouseGrab = SDL_GetWindowMouseGrab;
pub const GetScancodeFromName = SDL_GetScancodeFromName;
pub const GetWindowFromID = SDL_GetWindowFromID;
pub const PollEvent = SDL_PollEvent;
pub const CreateSurfacePalette = SDL_CreateSurfacePalette;
pub const SurfaceHasColorKey = SDL_SurfaceHasColorKey;
pub const LogDebug = SDL_LogDebug;
pub const GetRenderDrawBlendMode = SDL_GetRenderDrawBlendMode;
pub const BeginGPURenderPass = SDL_BeginGPURenderPass;
pub const GetDesktopDisplayMode = SDL_GetDesktopDisplayMode;
pub const DrawGPUIndexedPrimitives = SDL_DrawGPUIndexedPrimitives;
pub const iconv_open = SDL_iconv_open;
pub const aligned_free = SDL_aligned_free;
pub const GetWindowKeyboardGrab = SDL_GetWindowKeyboardGrab;
pub const GPUTextureSupportsFormat = SDL_GPUTextureSupportsFormat;
pub const GetRenderDriver = SDL_GetRenderDriver;
pub const GetAudioDeviceGain = SDL_GetAudioDeviceGain;
pub const DestroyRWLock = SDL_DestroyRWLock;
pub const SetMemoryFunctions = SDL_SetMemoryFunctions;
pub const GetWindowSafeArea = SDL_GetWindowSafeArea;
pub const SetWindowAlwaysOnTop = SDL_SetWindowAlwaysOnTop;
pub const RestoreWindow = SDL_RestoreWindow;
pub const GetNumJoystickHats = SDL_GetNumJoystickHats;
pub const ultoa = SDL_ultoa;
pub const BindGPUComputeSamplers = SDL_BindGPUComputeSamplers;
pub const GetGamepadSensorDataRate = SDL_GetGamepadSensorDataRate;
pub const AddHintCallback = SDL_AddHintCallback;
pub const fabsf = SDL_fabsf;
pub const WaitEventTimeout = SDL_WaitEventTimeout;
pub const TimeFromWindows = SDL_TimeFromWindows;
pub const RenderLines = SDL_RenderLines;
pub const RenderDebugTextFormat = SDL_RenderDebugTextFormat;
pub const GetRenderVSync = SDL_GetRenderVSync;
pub const HapticRumbleSupported = SDL_HapticRumbleSupported;
pub const UCS4ToUTF8 = SDL_UCS4ToUTF8;
pub const lltoa = SDL_lltoa;
pub const TryLockMutex = SDL_TryLockMutex;
pub const GetDisplayForPoint = SDL_GetDisplayForPoint;
pub const GetWindowBordersSize = SDL_GetWindowBordersSize;
pub const DestroyGPUDevice = SDL_DestroyGPUDevice;
pub const GetSemaphoreValue = SDL_GetSemaphoreValue;
pub const CopyGPUTextureToTexture = SDL_CopyGPUTextureToTexture;
pub const GetModState = SDL_GetModState;
pub const exp = SDL_exp;
pub const size_add_check_overflow_builtin = SDL_size_add_check_overflow_builtin;
pub const GetPixelFormatDetails = SDL_GetPixelFormatDetails;
pub const TryWaitSemaphore = SDL_TryWaitSemaphore;
pub const SetWindowFocusable = SDL_SetWindowFocusable;
pub const GetVideoDriver = SDL_GetVideoDriver;
pub const GetGamepadProductVersion = SDL_GetGamepadProductVersion;
pub const ComposeCustomBlendMode = SDL_ComposeCustomBlendMode;
pub const WaitCondition = SDL_WaitCondition;
pub const GetCurrentThreadID = SDL_GetCurrentThreadID;
pub const LoadFileAsync = SDL_LoadFileAsync;
pub const ConvertSurfaceAndColorspace = SDL_ConvertSurfaceAndColorspace;
pub const GetSandbox = SDL_GetSandbox;
pub const CloseJoystick = SDL_CloseJoystick;
pub const Metal_DestroyView = SDL_Metal_DestroyView;
pub const GetTLS = SDL_GetTLS;
pub const ShowSaveFileDialog = SDL_ShowSaveFileDialog;
pub const GetJoystickPathForID = SDL_GetJoystickPathForID;
pub const GetGamepadAppleSFSymbolsNameForButton = SDL_GetGamepadAppleSFSymbolsNameForButton;
pub const SetRenderLogicalPresentation = SDL_SetRenderLogicalPresentation;
pub const SetGPUStencilReference = SDL_SetGPUStencilReference;
pub const SetGPUViewport = SDL_SetGPUViewport;
pub const UnbindAudioStreams = SDL_UnbindAudioStreams;
pub const CopyFile = SDL_CopyFile;
pub const SetGPURenderStateSamplerBindings = SDL_SetGPURenderStateSamplerBindings;
pub const ScaleSurface = SDL_ScaleSurface;
pub const SurfaceHasRLE = SDL_SurfaceHasRLE;
pub const CreatePopupWindow = SDL_CreatePopupWindow;
pub const GetEnvironmentVariable = SDL_GetEnvironmentVariable;
pub const FlushIO = SDL_FlushIO;
pub const CursorVisible = SDL_CursorVisible;
pub const DestroyCondition = SDL_DestroyCondition;
pub const EndGPUCopyPass = SDL_EndGPUCopyPass;
pub const GetBooleanProperty = SDL_GetBooleanProperty;
pub const RenderPresent = SDL_RenderPresent;
pub const StretchSurface = SDL_StretchSurface;
pub const hid_init = SDL_hid_init;
pub const DrawGPUPrimitivesIndirect = SDL_DrawGPUPrimitivesIndirect;
pub const hid_exit = SDL_hid_exit;
pub const GetDefaultLogOutputFunction = SDL_GetDefaultLogOutputFunction;
pub const SetGPUSwapchainParameters = SDL_SetGPUSwapchainParameters;
pub const HasLSX = SDL_HasLSX;
pub const DestroyEnvironment = SDL_DestroyEnvironment;
pub const WriteU32LE = SDL_WriteU32LE;
pub const UnlockSurface = SDL_UnlockSurface;
pub const FlushAudioStream = SDL_FlushAudioStream;
pub const GetCurrentCameraDriver = SDL_GetCurrentCameraDriver;
pub const GetWindowFlags = SDL_GetWindowFlags;
pub const LockMutex = SDL_LockMutex;
pub const GetTextureScaleMode = SDL_GetTextureScaleMode;
pub const GetAudioStreamOutputChannelMap = SDL_GetAudioStreamOutputChannelMap;
pub const GetGamepadMappings = SDL_GetGamepadMappings;
pub const fmod = SDL_fmod;
pub const AcquireCameraFrame = SDL_AcquireCameraFrame;
pub const hid_read = SDL_hid_read;
pub const SetWindowMouseRect = SDL_SetWindowMouseRect;
pub const GetHapticEffectStatus = SDL_GetHapticEffectStatus;
pub const RenderTextureRotated = SDL_RenderTextureRotated;
pub const GetJoystickFirmwareVersion = SDL_GetJoystickFirmwareVersion;
pub const ReadS64BE = SDL_ReadS64BE;
pub const GetJoystickGUIDForID = SDL_GetJoystickGUIDForID;
pub const CreateWindowWithProperties = SDL_CreateWindowWithProperties;
pub const GetJoystickNameForID = SDL_GetJoystickNameForID;
pub const PeepEvents = SDL_PeepEvents;
pub const isblank = SDL_isblank;
pub const CreateThreadRuntime = SDL_CreateThreadRuntime;
pub const TextInputActive = SDL_TextInputActive;
pub const SetGPURenderStateStorageBuffers = SDL_SetGPURenderStateStorageBuffers;
pub const GetTextInputArea = SDL_GetTextInputArea;
pub const CreateStorageDirectory = SDL_CreateStorageDirectory;
pub const GetGamepadFromPlayerIndex = SDL_GetGamepadFromPlayerIndex;
pub const GetAudioStreamAvailable = SDL_GetAudioStreamAvailable;
pub const DestroyTray = SDL_DestroyTray;
pub const logf = SDL_logf;
pub const ClearAudioStream = SDL_ClearAudioStream;
pub const SetTrayEntryEnabled = SDL_SetTrayEntryEnabled;
pub const RotateSurface = SDL_RotateSurface;
pub const LockJoysticks = SDL_LockJoysticks;
pub const StopHapticEffects = SDL_StopHapticEffects;
pub const GetJoystickProductVersion = SDL_GetJoystickProductVersion;
pub const hid_get_manufacturer_string = SDL_hid_get_manufacturer_string;
pub const SetSurfaceColorspace = SDL_SetSurfaceColorspace;
pub const CreateSurfaceFrom = SDL_CreateSurfaceFrom;
pub const CloseIO = SDL_CloseIO;
pub const GL_ExtensionSupported = SDL_GL_ExtensionSupported;
pub const WriteS32BE = SDL_WriteS32BE;
pub const SetTextureScaleMode = SDL_SetTextureScaleMode;
pub const SetGPURenderStateFragmentUniforms = SDL_SetGPURenderStateFragmentUniforms;
pub const SetSurfaceClipRect = SDL_SetSurfaceClipRect;
pub const GetGamepadNameForID = SDL_GetGamepadNameForID;
pub const GetTextureSize = SDL_GetTextureSize;
pub const itoa = SDL_itoa;
pub const GetPropertyType = SDL_GetPropertyType;
pub const WriteS64LE = SDL_WriteS64LE;
pub const SetSurfaceAlphaMod = SDL_SetSurfaceAlphaMod;
pub const vsnprintf = SDL_vsnprintf;
pub const UnlockRWLock = SDL_UnlockRWLock;
pub const GetKeyName = SDL_GetKeyName;
pub const ReleaseGPUGraphicsPipeline = SDL_ReleaseGPUGraphicsPipeline;
pub const GetAtomicInt = SDL_GetAtomicInt;
pub const GetSensorName = SDL_GetSensorName;
pub const BlitSurfaceTiled = SDL_BlitSurfaceTiled;
pub const GetGamepadPathForID = SDL_GetGamepadPathForID;
pub const LockTextureToSurface = SDL_LockTextureToSurface;
pub const GetTraySubmenu = SDL_GetTraySubmenu;
pub const WaitProcess = SDL_WaitProcess;
pub const GetWindowSurfaceVSync = SDL_GetWindowSurfaceVSync;
pub const SetWindowSurfaceVSync = SDL_SetWindowSurfaceVSync;
pub const GetDisplayName = SDL_GetDisplayName;
pub const LogWarn = SDL_LogWarn;
pub const LockSpinlock = SDL_LockSpinlock;
pub const OpenAudioDeviceStream = SDL_OpenAudioDeviceStream;
pub const WriteIO = SDL_WriteIO;
pub const SavePNG_IO = SDL_SavePNG_IO;
pub const GetMasksForPixelFormat = SDL_GetMasksForPixelFormat;
pub const GamepadHasButton = SDL_GamepadHasButton;
pub const GetTextureAlphaMod = SDL_GetTextureAlphaMod;
pub const SetGPUTextureName = SDL_SetGPUTextureName;
pub const GetOriginalMemoryFunctions = SDL_GetOriginalMemoryFunctions;
pub const OpenHapticFromJoystick = SDL_OpenHapticFromJoystick;
pub const SetTrayEntryCallback = SDL_SetTrayEntryCallback;
pub const GetAudioRecordingDevices = SDL_GetAudioRecordingDevices;
pub const PremultiplyAlpha = SDL_PremultiplyAlpha;
pub const GL_SetAttribute = SDL_GL_SetAttribute;
pub const GetJoystickProperties = SDL_GetJoystickProperties;
pub const SetRenderDrawBlendMode = SDL_SetRenderDrawBlendMode;
pub const UpdateGamepads = SDL_UpdateGamepads;
pub const RenamePath = SDL_RenamePath;
pub const truncf = SDL_truncf;
pub const AttachVirtualJoystick = SDL_AttachVirtualJoystick;
pub const CreateProcessWithProperties = SDL_CreateProcessWithProperties;
pub const GetWindowSurface = SDL_GetWindowSurface;
pub const GetWindowOpacity = SDL_GetWindowOpacity;
pub const GetSensorData = SDL_GetSensorData;
pub const RemoveTrayEntry = SDL_RemoveTrayEntry;
pub const GetTicksNS = SDL_GetTicksNS;
pub const DispatchGPUCompute = SDL_DispatchGPUCompute;
pub const LogMessage = SDL_LogMessage;
pub const SetScancodeName = SDL_SetScancodeName;
pub const isnanf = SDL_isnanf;
pub const TellIO = SDL_TellIO;
pub const WriteU64LE = SDL_WriteU64LE;
pub const atof = SDL_atof;
pub const UpdateTexture = SDL_UpdateTexture;
pub const trunc = SDL_trunc;
pub const GetRenderViewport = SDL_GetRenderViewport;
pub const aligned_alloc = SDL_aligned_alloc;
pub const GetProcessInput = SDL_GetProcessInput;
pub const CancelGPUCommandBuffer = SDL_CancelGPUCommandBuffer;
pub const CreateSystemCursor = SDL_CreateSystemCursor;
pub const LockTexture = SDL_LockTexture;
pub const CreateTray = SDL_CreateTray;
pub const GetSystemTheme = SDL_GetSystemTheme;
pub const randf_r = SDL_randf_r;
pub const SetJoystickLED = SDL_SetJoystickLED;
pub const DownloadFromGPUBuffer = SDL_DownloadFromGPUBuffer;
pub const GetStorageFileSize = SDL_GetStorageFileSize;
pub const ReadU16LE = SDL_ReadU16LE;
pub const DestroyRenderer = SDL_DestroyRenderer;
pub const EGL_GetCurrentConfig = SDL_EGL_GetCurrentConfig;
pub const GetCurrentDirectory = SDL_GetCurrentDirectory;
pub const SetWindowResizable = SDL_SetWindowResizable;
pub const CreateColorCursor = SDL_CreateColorCursor;
pub const isdigit = SDL_isdigit;
pub const GetNumCameraDrivers = SDL_GetNumCameraDrivers;
pub const isnan = SDL_isnan;
pub const HasNEON = SDL_HasNEON;
pub const DestroyProperties = SDL_DestroyProperties;
pub const IOvprintf = SDL_IOvprintf;
pub const SaveFile_IO = SDL_SaveFile_IO;
pub const ConvertAudioSamples = SDL_ConvertAudioSamples;
pub const DispatchGPUComputeIndirect = SDL_DispatchGPUComputeIndirect;
pub const EnumerateProperties = SDL_EnumerateProperties;
pub const CreateTrayMenu = SDL_CreateTrayMenu;
pub const GetCameraSupportedFormats = SDL_GetCameraSupportedFormats;
pub const HasSSE42 = SDL_HasSSE42;
pub const SendJoystickVirtualSensorData = SDL_SendJoystickVirtualSensorData;
pub const SetTextureColorModFloat = SDL_SetTextureColorModFloat;
pub const GetPreferredLocales = SDL_GetPreferredLocales;
pub const iconv_close = SDL_iconv_close;
pub const RenderRect = SDL_RenderRect;
pub const SetHintWithPriority = SDL_SetHintWithPriority;
pub const GetRenderTextureAddressMode = SDL_GetRenderTextureAddressMode;
pub const roundf = SDL_roundf;
pub const GetNumberProperty = SDL_GetNumberProperty;
pub const GetRevision = SDL_GetRevision;
pub const SetGamepadPlayerIndex = SDL_SetGamepadPlayerIndex;
pub const GetTrayEntryEnabled = SDL_GetTrayEntryEnabled;
pub const CreateSemaphore = SDL_CreateSemaphore;
pub const GetSurfaceColorKey = SDL_GetSurfaceColorKey;
pub const GetWindowProgressState = SDL_GetWindowProgressState;
pub const GetTrayEntryParent = SDL_GetTrayEntryParent;
pub const GetCameraPosition = SDL_GetCameraPosition;
pub const bsearch = SDL_bsearch;
pub const GetKeyFromName = SDL_GetKeyFromName;
pub const CreateHapticEffect = SDL_CreateHapticEffect;
pub const GetGamepadStringForType = SDL_GetGamepadStringForType;
pub const JoystickConnected = SDL_JoystickConnected;
pub const DestroyMutex = SDL_DestroyMutex;
pub const RenderGeometryRaw = SDL_RenderGeometryRaw;
pub const CreateGPURenderState = SDL_CreateGPURenderState;
pub const GetRectUnionFloat = SDL_GetRectUnionFloat;
pub const GetAtomicU32 = SDL_GetAtomicU32;
pub const GetProcessProperties = SDL_GetProcessProperties;
pub const InitHapticRumble = SDL_InitHapticRumble;
pub const Metal_GetLayer = SDL_Metal_GetLayer;
pub const SetHint = SDL_SetHint;
pub const StartTextInputWithProperties = SDL_StartTextInputWithProperties;
pub const RemoveStoragePath = SDL_RemoveStoragePath;
pub const scalbnf = SDL_scalbnf;
pub const GetAudioDeviceFormat = SDL_GetAudioDeviceFormat;
pub const SetAudioStreamFormat = SDL_SetAudioStreamFormat;
pub const GL_ResetAttributes = SDL_GL_ResetAttributes;
pub const GetFloatProperty = SDL_GetFloatProperty;
pub const HasARMSIMD = SDL_HasARMSIMD;
pub const PutAudioStreamData = SDL_PutAudioStreamData;
pub const EGL_GetCurrentDisplay = SDL_EGL_GetCurrentDisplay;
pub const GetHaptics = SDL_GetHaptics;
pub const GetStoragePathInfo = SDL_GetStoragePathInfo;
pub const crc16 = SDL_crc16;
pub const GetKeyboardState = SDL_GetKeyboardState;
pub const WaitThread = SDL_WaitThread;
pub const MapSurfaceRGBA = SDL_MapSurfaceRGBA;
pub const LogInfo = SDL_LogInfo;
pub const SetTextureColorMod = SDL_SetTextureColorMod;
pub const SetGamepadEventsEnabled = SDL_SetGamepadEventsEnabled;
pub const SetAudioStreamOutputChannelMap = SDL_SetAudioStreamOutputChannelMap;
pub const GetRenderSafeArea = SDL_GetRenderSafeArea;
pub const GetRenderColorScale = SDL_GetRenderColorScale;
pub const WaitEvent = SDL_WaitEvent;
pub const DetachVirtualJoystick = SDL_DetachVirtualJoystick;
pub const BlitSurface9Grid = SDL_BlitSurface9Grid;
pub const rand_r = SDL_rand_r;
pub const SetNumberProperty = SDL_SetNumberProperty;
pub const GetRenderDrawColorFloat = SDL_GetRenderDrawColorFloat;
pub const SetError = SDL_SetError;
pub const WriteStorageFile = SDL_WriteStorageFile;
pub const GetRectIntersectionFloat = SDL_GetRectIntersectionFloat;
pub const TryLockRWLockForWriting = SDL_TryLockRWLockForWriting;
pub const ShowOpenFileDialog = SDL_ShowOpenFileDialog;
pub const GetCameraPermissionState = SDL_GetCameraPermissionState;
pub const GetJoystickVendorForID = SDL_GetJoystickVendorForID;
pub const IsJoystickVirtual = SDL_IsJoystickVirtual;
pub const GetGamepadType = SDL_GetGamepadType;
pub const toupper = SDL_toupper;
pub const utf8strnlen = SDL_utf8strnlen;
pub const GetJoystickFromPlayerIndex = SDL_GetJoystickFromPlayerIndex;
pub const GetHint = SDL_GetHint;
pub const log10f = SDL_log10f;
pub const RenderTextureTiled = SDL_RenderTextureTiled;
pub const GetGamepadMapping = SDL_GetGamepadMapping;
pub const UnmapGPUTransferBuffer = SDL_UnmapGPUTransferBuffer;
pub const SetDefaultTextureScaleMode = SDL_SetDefaultTextureScaleMode;
pub const GL_GetCurrentContext = SDL_GL_GetCurrentContext;
pub const SetErrorV = SDL_SetErrorV;
pub const OnApplicationWillTerminate = SDL_OnApplicationWillTerminate;
pub const GetTouchFingers = SDL_GetTouchFingers;
pub const ltoa = SDL_ltoa;
pub const GetCameraFormat = SDL_GetCameraFormat;
pub const GetGamepadMappingForID = SDL_GetGamepadMappingForID;
pub const GetPenDeviceType = SDL_GetPenDeviceType;
pub const LogTrace = SDL_LogTrace;
pub const AddGamepadMapping = SDL_AddGamepadMapping;
pub const murmur3_32 = SDL_murmur3_32;
pub const FlashWindow = SDL_FlashWindow;
pub const GetRectAndLineIntersection = SDL_GetRectAndLineIntersection;
pub const DuplicateSurface = SDL_DuplicateSurface;
pub const SetLogOutputFunction = SDL_SetLogOutputFunction;
pub const UpdateHapticEffect = SDL_UpdateHapticEffect;
pub const expf = SDL_expf;
pub const ReadU64BE = SDL_ReadU64BE;
pub const SetClipboardData = SDL_SetClipboardData;
pub const CloseSensor = SDL_CloseSensor;
pub const DrawGPUPrimitives = SDL_DrawGPUPrimitives;
pub const GPUTextureFormatTexelBlockSize = SDL_GPUTextureFormatTexelBlockSize;
pub const GetSilenceValueForFormat = SDL_GetSilenceValueForFormat;
pub const StopTextInput = SDL_StopTextInput;
pub const UnloadObject = SDL_UnloadObject;
pub const SetTextureAlphaMod = SDL_SetTextureAlphaMod;
pub const GamepadHasSensor = SDL_GamepadHasSensor;
pub const SetAudioStreamPutCallback = SDL_SetAudioStreamPutCallback;
pub const GetGamepadAppleSFSymbolsNameForAxis = SDL_GetGamepadAppleSFSymbolsNameForAxis;
pub const GetJoysticks = SDL_GetJoysticks;
pub const DownloadFromGPUTexture = SDL_DownloadFromGPUTexture;
pub const CloseAsyncIO = SDL_CloseAsyncIO;
pub const GetAtomicPointer = SDL_GetAtomicPointer;
pub const WriteS64BE = SDL_WriteS64BE;
pub const HasMMX = SDL_HasMMX;
pub const ScreenKeyboardShown = SDL_ScreenKeyboardShown;
pub const hid_set_nonblocking = SDL_hid_set_nonblocking;
pub const ConvertEventToRenderCoordinates = SDL_ConvertEventToRenderCoordinates;
pub const GetJoystickGUID = SDL_GetJoystickGUID;
pub const GetWindowMinimumSize = SDL_GetWindowMinimumSize;
pub const BlitSurfaceTiledWithScale = SDL_BlitSurfaceTiledWithScale;
pub const IsTablet = SDL_IsTablet;
pub const CompareAndSwapAtomicU32 = SDL_CompareAndSwapAtomicU32;
pub const GetIOProperties = SDL_GetIOProperties;
pub const PushGPUFragmentUniformData = SDL_PushGPUFragmentUniformData;
pub const GetStorageSpaceRemaining = SDL_GetStorageSpaceRemaining;
pub const GetPixelFormatForMasks = SDL_GetPixelFormatForMasks;
pub const ReleaseGPUBuffer = SDL_ReleaseGPUBuffer;
pub const BindGPUVertexSamplers = SDL_BindGPUVertexSamplers;
pub const GetSurfaceProperties = SDL_GetSurfaceProperties;
pub const GetKeyboards = SDL_GetKeyboards;
pub const QueryGPUFence = SDL_QueryGPUFence;
pub const GetCursor = SDL_GetCursor;
pub const ReadSurfacePixel = SDL_ReadSurfacePixel;
pub const LoadBMP_IO = SDL_LoadBMP_IO;
pub const SetRenderTextureAddressMode = SDL_SetRenderTextureAddressMode;
pub const GetJoystickAxisInitialState = SDL_GetJoystickAxisInitialState;
pub const SetWindowProgressState = SDL_SetWindowProgressState;
pub const WaitForGPUSwapchain = SDL_WaitForGPUSwapchain;
pub const SetGPURenderState = SDL_SetGPURenderState;
pub const ConvertPixels = SDL_ConvertPixels;
pub const GetEventDescription = SDL_GetEventDescription;
pub const tanf = SDL_tanf;
pub const AddVulkanRenderSemaphores = SDL_AddVulkanRenderSemaphores;
pub const GetTextureProperties = SDL_GetTextureProperties;
pub const GetRectAndLineIntersectionFloat = SDL_GetRectAndLineIntersectionFloat;
pub const GetScancodeFromKey = SDL_GetScancodeFromKey;
pub const DetachThread = SDL_DetachThread;
pub const SetAudioStreamGetCallback = SDL_SetAudioStreamGetCallback;
pub const GetJoystickButton = SDL_GetJoystickButton;
pub const FlushRenderer = SDL_FlushRenderer;
pub const HasLASX = SDL_HasLASX;
pub const GetAudioStreamQueued = SDL_GetAudioStreamQueued;
pub const GetNumGamepadTouchpads = SDL_GetNumGamepadTouchpads;
pub const ClearClipboardData = SDL_ClearClipboardData;
pub const GetRenderWindow = SDL_GetRenderWindow;
pub const RenderTexture = SDL_RenderTexture;
pub const GetGPUShaderFormats = SDL_GetGPUShaderFormats;
pub const SubmitGPUCommandBuffer = SDL_SubmitGPUCommandBuffer;
pub const GetJoystickName = SDL_GetJoystickName;
pub const GetEventFilter = SDL_GetEventFilter;
pub const IOFromMem = SDL_IOFromMem;
pub const GetSIMDAlignment = SDL_GetSIMDAlignment;
pub const GetWindowPosition = SDL_GetWindowPosition;
pub const GetWindowTitle = SDL_GetWindowTitle;
pub const GetIOSize = SDL_GetIOSize;
pub const LockProperties = SDL_LockProperties;
pub const GetJoystickFromID = SDL_GetJoystickFromID;
pub const HasGamepad = SDL_HasGamepad;
pub const WaitConditionTimeout = SDL_WaitConditionTimeout;
pub const SetWindowProgressValue = SDL_SetWindowProgressValue;
pub const LogCritical = SDL_LogCritical;
pub const RenderClipEnabled = SDL_RenderClipEnabled;
pub const hid_device_change_count = SDL_hid_device_change_count;
pub const SetRenderColorScale = SDL_SetRenderColorScale;
pub const GetGamepadProductVersionForID = SDL_GetGamepadProductVersionForID;
pub const CreateWindowAndRenderer = SDL_CreateWindowAndRenderer;
pub const SetTrayTooltip = SDL_SetTrayTooltip;
pub const atan2f = SDL_atan2f;
pub const GetGamepadTypeFromString = SDL_GetGamepadTypeFromString;
pub const UnlockJoysticks = SDL_UnlockJoysticks;
pub const ReleaseGPUTexture = SDL_ReleaseGPUTexture;
pub const copysign = SDL_copysign;
pub const Delay = SDL_Delay;
pub const HasMouse = SDL_HasMouse;
pub const CloseGamepad = SDL_CloseGamepad;
pub const GenerateMipmapsForGPUTexture = SDL_GenerateMipmapsForGPUTexture;
pub const GL_CreateContext = SDL_GL_CreateContext;
pub const UploadToGPUTexture = SDL_UploadToGPUTexture;
pub const hid_ble_scan = SDL_hid_ble_scan;
pub const GetRenderer = SDL_GetRenderer;
pub const ClearSurface = SDL_ClearSurface;
pub const WarpMouseInWindow = SDL_WarpMouseInWindow;
pub const AudioStreamDevicePaused = SDL_AudioStreamDevicePaused;
pub const HideCursor = SDL_HideCursor;
pub const utf8strlcpy = SDL_utf8strlcpy;
pub const GetWindowProperties = SDL_GetWindowProperties;
pub const ReadU32BE = SDL_ReadU32BE;
pub const Metal_CreateView = SDL_Metal_CreateView;
pub const GetClosestFullscreenDisplayMode = SDL_GetClosestFullscreenDisplayMode;
pub const WindowHasSurface = SDL_WindowHasSurface;
pub const GetNumJoystickAxes = SDL_GetNumJoystickAxes;
pub const SetAppMetadata = SDL_SetAppMetadata;
pub const GetRenderTarget = SDL_GetRenderTarget;
pub const GetGamepadConnectionState = SDL_GetGamepadConnectionState;
pub const Init = SDL_Init;
pub const GetThreadState = SDL_GetThreadState;
pub const GetScancodeName = SDL_GetScancodeName;
pub const GetTextureBlendMode = SDL_GetTextureBlendMode;
pub const IsJoystickHaptic = SDL_IsJoystickHaptic;
pub const PremultiplySurfaceAlpha = SDL_PremultiplySurfaceAlpha;
pub const RenderTexture9Grid = SDL_RenderTexture9Grid;
pub const OnApplicationDidEnterBackground = SDL_OnApplicationDidEnterBackground;
pub const SetAudioStreamInputChannelMap = SDL_SetAudioStreamInputChannelMap;
pub const SetWindowSize = SDL_SetWindowSize;
pub const SetPrimarySelectionText = SDL_SetPrimarySelectionText;
pub const HasAVX = SDL_HasAVX;
pub const SetWindowFullscreen = SDL_SetWindowFullscreen;
pub const EGL_GetProcAddress = SDL_EGL_GetProcAddress;
pub const GetGamepadVendorForID = SDL_GetGamepadVendorForID;
pub const HasSSE2 = SDL_HasSSE2;
pub const GL_MakeCurrent = SDL_GL_MakeCurrent;
pub const GetAsyncIOSize = SDL_GetAsyncIOSize;
pub const DestroyAsyncIOQueue = SDL_DestroyAsyncIOQueue;
pub const MapRGB = SDL_MapRGB;
pub const AddAtomicU32 = SDL_AddAtomicU32;
pub const PushEvent = SDL_PushEvent;
pub const BindGPUComputeStorageBuffers = SDL_BindGPUComputeStorageBuffers;
pub const GetAudioStreamDevice = SDL_GetAudioStreamDevice;
pub const GetGPUTextureFormatFromPixelFormat = SDL_GetGPUTextureFormatFromPixelFormat;
pub const HapticEffectSupported = SDL_HapticEffectSupported;
pub const SendJoystickEffect = SDL_SendJoystickEffect;
pub const CreateCondition = SDL_CreateCondition;
pub const SetInitialized = SDL_SetInitialized;
pub const sin = SDL_sin;
pub const SetTLS = SDL_SetTLS;
pub const GetNumVideoDrivers = SDL_GetNumVideoDrivers;
pub const PushGPUComputeUniformData = SDL_PushGPUComputeUniformData;
pub const GetAudioStreamFormat = SDL_GetAudioStreamFormat;
pub const GL_DestroyContext = SDL_GL_DestroyContext;
pub const GetSystemRAM = SDL_GetSystemRAM;
pub const CreateProcess = SDL_CreateProcess;
pub const OnApplicationDidReceiveMemoryWarning = SDL_OnApplicationDidReceiveMemoryWarning;
pub const CreateThreadWithPropertiesRuntime = SDL_CreateThreadWithPropertiesRuntime;
pub const hid_get_feature_report = SDL_hid_get_feature_report;
pub const GetDisplayProperties = SDL_GetDisplayProperties;
pub const PutAudioStreamDataNoCopy = SDL_PutAudioStreamDataNoCopy;
pub const GL_SetSwapInterval = SDL_GL_SetSwapInterval;
pub const GetRenderLogicalPresentation = SDL_GetRenderLogicalPresentation;
pub const RenderDebugText = SDL_RenderDebugText;
pub const OpenHapticFromMouse = SDL_OpenHapticFromMouse;
pub const AddEventWatch = SDL_AddEventWatch;
pub const DestroyAudioStream = SDL_DestroyAudioStream;
pub const FillSurfaceRects = SDL_FillSurfaceRects;
pub const GetSensorNameForID = SDL_GetSensorNameForID;
pub const SetTrayEntryChecked = SDL_SetTrayEntryChecked;
pub const GetGamepadButtonLabel = SDL_GetGamepadButtonLabel;
pub const GetStringProperty = SDL_GetStringProperty;
pub const GetNumRenderDrivers = SDL_GetNumRenderDrivers;
pub const SeekIO = SDL_SeekIO;
pub const GetDefaultCursor = SDL_GetDefaultCursor;
pub const GetWindowProgressValue = SDL_GetWindowProgressValue;
pub const isinf = SDL_isinf;
pub const CreateWindow = SDL_CreateWindow;
pub const GetDayOfYear = SDL_GetDayOfYear;
pub const AddAtomicInt = SDL_AddAtomicInt;
pub const hid_get_device_info = SDL_hid_get_device_info;
pub const LoadObject = SDL_LoadObject;
pub const SetLogPriority = SDL_SetLogPriority;
pub const FillSurfaceRect = SDL_FillSurfaceRect;
pub const GetGamepadMappingForGUID = SDL_GetGamepadMappingForGUID;
pub const SetHapticAutocenter = SDL_SetHapticAutocenter;
pub const ShowWindow = SDL_ShowWindow;
pub const SetRenderVSync = SDL_SetRenderVSync;
pub const ShowFileDialogWithProperties = SDL_ShowFileDialogWithProperties;
pub const SetModState = SDL_SetModState;
pub const EventEnabled = SDL_EventEnabled;
pub const ReleaseGPUShader = SDL_ReleaseGPUShader;
pub const GetGlobalMouseState = SDL_GetGlobalMouseState;
pub const GetRGB = SDL_GetRGB;
pub const GetDefaultTextureScaleMode = SDL_GetDefaultTextureScaleMode;
pub const GetGlobalProperties = SDL_GetGlobalProperties;
pub const BlitGPUTexture = SDL_BlitGPUTexture;
pub const ReleaseWindowFromGPUDevice = SDL_ReleaseWindowFromGPUDevice;
pub const GamepadSensorEnabled = SDL_GamepadSensorEnabled;
pub const SetRenderDrawColorFloat = SDL_SetRenderDrawColorFloat;
pub const log = SDL_log;
pub const SetRenderTarget = SDL_SetRenderTarget;
pub const GetGamepadStringForButton = SDL_GetGamepadStringForButton;
pub const GetWindowPixelFormat = SDL_GetWindowPixelFormat;
pub const strlwr = SDL_strlwr;
pub const GL_LoadLibrary = SDL_GL_LoadLibrary;
pub const GetGamepadGUIDForID = SDL_GetGamepadGUIDForID;
pub const PauseHaptic = SDL_PauseHaptic;
pub const GetSurfaceImages = SDL_GetSurfaceImages;
pub const GetNumLogicalCPUCores = SDL_GetNumLogicalCPUCores;
pub const hid_read_timeout = SDL_hid_read_timeout;
pub const GetGamepadPath = SDL_GetGamepadPath;
pub const SetClipboardText = SDL_SetClipboardText;
pub const BlitSurfaceUncheckedScaled = SDL_BlitSurfaceUncheckedScaled;
pub const GetNumJoystickBalls = SDL_GetNumJoystickBalls;
pub const PushGPUVertexUniformData = SDL_PushGPUVertexUniformData;
pub const CreateGPURenderer = SDL_CreateGPURenderer;
pub const RenderViewportSet = SDL_RenderViewportSet;
pub const GetRenderLogicalPresentationRect = SDL_GetRenderLogicalPresentationRect;
pub const BindGPUFragmentStorageTextures = SDL_BindGPUFragmentStorageTextures;
pub const PopGPUDebugGroup = SDL_PopGPUDebugGroup;
pub const AudioDevicePaused = SDL_AudioDevicePaused;
pub const ClickTrayEntry = SDL_ClickTrayEntry;
pub const CopyGPUBufferToBuffer = SDL_CopyGPUBufferToBuffer;
pub const MixAudio = SDL_MixAudio;
pub const GetHapticID = SDL_GetHapticID;
pub const RenderRects = SDL_RenderRects;
pub const GUIDToString = SDL_GUIDToString;
pub const WriteU64BE = SDL_WriteU64BE;
pub const SetSurfaceColorMod = SDL_SetSurfaceColorMod;
pub const IsAudioDevicePlayback = SDL_IsAudioDevicePlayback;
pub const CaptureMouse = SDL_CaptureMouse;
pub const malloc = SDL_malloc;
pub const UnbindAudioStream = SDL_UnbindAudioStream;
pub const GetClipboardText = SDL_GetClipboardText;
pub const ShouldInit = SDL_ShouldInit;
pub const HasAltiVec = SDL_HasAltiVec;
pub const GetDisplayUsableBounds = SDL_GetDisplayUsableBounds;
pub const RunOnMainThread = SDL_RunOnMainThread;
pub const GetDaysInMonth = SDL_GetDaysInMonth;
pub const SaveBMP = SDL_SaveBMP;
pub const GetCurrentRenderOutputSize = SDL_GetCurrentRenderOutputSize;
pub const SetEnvironmentVariable = SDL_SetEnvironmentVariable;
pub const atanf = SDL_atanf;
pub const HasPrimarySelectionText = SDL_HasPrimarySelectionText;
pub const GetWindowICCProfile = SDL_GetWindowICCProfile;
pub const GetRectUnion = SDL_GetRectUnion;
pub const GetMice = SDL_GetMice;
pub const GetTouchDeviceName = SDL_GetTouchDeviceName;
pub const OpenUserStorage = SDL_OpenUserStorage;
pub const GetPointerProperty = SDL_GetPointerProperty;
pub const RunHapticEffect = SDL_RunHapticEffect;
pub const TryLockJoysticks = SDL_TryLockJoysticks;
pub const RenderFillRect = SDL_RenderFillRect;
pub const SetWindowMouseGrab = SDL_SetWindowMouseGrab;
pub const EndGPUComputePass = SDL_EndGPUComputePass;
pub const CreateCursor = SDL_CreateCursor;
pub const GetJoystickID = SDL_GetJoystickID;
pub const GetFullscreenDisplayModes = SDL_GetFullscreenDisplayModes;
pub const acosf = SDL_acosf;
pub const HasSSE41 = SDL_HasSSE41;
pub const GetPowerInfo = SDL_GetPowerInfo;
pub const ceil = SDL_ceil;
pub const GetAudioStreamProperties = SDL_GetAudioStreamProperties;
pub const GetGPURendererDevice = SDL_GetGPURendererDevice;
pub const ReadU64LE = SDL_ReadU64LE;
pub const GetGrabbedWindow = SDL_GetGrabbedWindow;
pub const GL_GetCurrentWindow = SDL_GL_GetCurrentWindow;
pub const GetSurfaceBlendMode = SDL_GetSurfaceBlendMode;
pub const SetJoystickVirtualBall = SDL_SetJoystickVirtualBall;
pub const GetJoystickGUIDInfo = SDL_GetJoystickGUIDInfo;
pub const GetGamepadTypeForID = SDL_GetGamepadTypeForID;
pub const StopHapticEffect = SDL_StopHapticEffect;
pub const SetSurfaceRLE = SDL_SetSurfaceRLE;
pub const GetNumAllocations = SDL_GetNumAllocations;
pub const CreateTraySubmenu = SDL_CreateTraySubmenu;
pub const UpdateWindowSurfaceRects = SDL_UpdateWindowSurfaceRects;
pub const hid_free_enumeration = SDL_hid_free_enumeration;
pub const FlipSurface = SDL_FlipSurface;
pub const GetJoystickPlayerIndexForID = SDL_GetJoystickPlayerIndexForID;
pub const GetThreadName = SDL_GetThreadName;
pub const GetRectEnclosingPointsFloat = SDL_GetRectEnclosingPointsFloat;
pub const GetCameraDriver = SDL_GetCameraDriver;
pub const LockRWLockForWriting = SDL_LockRWLockForWriting;
pub const RumbleJoystickTriggers = SDL_RumbleJoystickTriggers;
pub const GetRectEnclosingPoints = SDL_GetRectEnclosingPoints;
pub const BindGPUIndexBuffer = SDL_BindGPUIndexBuffer;
pub const CreateRenderer = SDL_CreateRenderer;
pub const GetSurfacePalette = SDL_GetSurfacePalette;
pub const GetPrimarySelectionText = SDL_GetPrimarySelectionText;
pub const GetJoystickType = SDL_GetJoystickType;
pub const CreateGPUSampler = SDL_CreateGPUSampler;
pub const AddGamepadMappingsFromIO = SDL_AddGamepadMappingsFromIO;
pub const UpdateYUVTexture = SDL_UpdateYUVTexture;
pub const GetSensorNonPortableTypeForID = SDL_GetSensorNonPortableTypeForID;
pub const GetGamepadTouchpadFinger = SDL_GetGamepadTouchpadFinger;
pub const HasKeyboard = SDL_HasKeyboard;
pub const GetWindowMaximumSize = SDL_GetWindowMaximumSize;
pub const WriteAsyncIO = SDL_WriteAsyncIO;
pub const UnlockTexture = SDL_UnlockTexture;
pub const SetJoystickVirtualTouchpad = SDL_SetJoystickVirtualTouchpad;
pub const EnumerateStorageDirectory = SDL_EnumerateStorageDirectory;
pub const strupr = SDL_strupr;
pub const SetGamepadMapping = SDL_SetGamepadMapping;
pub const StopHapticRumble = SDL_StopHapticRumble;
pub const GetWindowAspectRatio = SDL_GetWindowAspectRatio;
pub const OpenStorage = SDL_OpenStorage;
pub const rand_bits = SDL_rand_bits;
pub const SetWindowFullscreenMode = SDL_SetWindowFullscreenMode;
pub const PauseAudioStreamDevice = SDL_PauseAudioStreamDevice;
pub const CalculateGPUTextureFormatSize = SDL_CalculateGPUTextureFormatSize;
pub const SetPaletteColors = SDL_SetPaletteColors;
pub const LoadWAV = SDL_LoadWAV;
pub const abs = SDL_abs;
pub const AcquireGPUSwapchainTexture = SDL_AcquireGPUSwapchainTexture;
pub const GetHapticNameForID = SDL_GetHapticNameForID;
pub const atoi = SDL_atoi;
pub const BindAudioStreams = SDL_BindAudioStreams;
pub const GetGPUSwapchainTextureFormat = SDL_GetGPUSwapchainTextureFormat;
pub const RenderPoints = SDL_RenderPoints;
pub const HasSSE3 = SDL_HasSSE3;
pub const DestroySurface = SDL_DestroySurface;
pub const BindGPUFragmentSamplers = SDL_BindGPUFragmentSamplers;
pub const ResumeAudioDevice = SDL_ResumeAudioDevice;
pub const SignalAsyncIOQueue = SDL_SignalAsyncIOQueue;
pub const GetRealGamepadTypeForID = SDL_GetRealGamepadTypeForID;
pub const GetPerformanceCounter = SDL_GetPerformanceCounter;
pub const RemoveEventWatch = SDL_RemoveEventWatch;
pub const OpenSensor = SDL_OpenSensor;
pub const FilterEvents = SDL_FilterEvents;
pub const Log = SDL_Log;
pub const SetAudioStreamGain = SDL_SetAudioStreamGain;
pub const HasSSE = SDL_HasSSE;
pub const MaximizeWindow = SDL_MaximizeWindow;
pub const GetRendererName = SDL_GetRendererName;
pub const ResetHint = SDL_ResetHint;
pub const WarpMouseGlobal = SDL_WarpMouseGlobal;
pub const CloseAudioDevice = SDL_CloseAudioDevice;
pub const GetCurrentVideoDriver = SDL_GetCurrentVideoDriver;
pub const SetWindowOpacity = SDL_SetWindowOpacity;
pub const GetGamepadProperties = SDL_GetGamepadProperties;
pub const RenameStoragePath = SDL_RenameStoragePath;
pub const GetNaturalDisplayOrientation = SDL_GetNaturalDisplayOrientation;
pub const CreatePalette = SDL_CreatePalette;
pub const MapRGBA = SDL_MapRGBA;
pub const SurfaceHasAlternateImages = SDL_SurfaceHasAlternateImages;
pub const GetCPUCacheLineSize = SDL_GetCPUCacheLineSize;
pub const SetWindowBordered = SDL_SetWindowBordered;
pub const OpenGamepad = SDL_OpenGamepad;
pub const HasAVX512F = SDL_HasAVX512F;
pub const StringToGUID = SDL_StringToGUID;
pub const GetTouchDeviceType = SDL_GetTouchDeviceType;
pub const GetPlatform = SDL_GetPlatform;
pub const JoystickEventsEnabled = SDL_JoystickEventsEnabled;
pub const GetGamepads = SDL_GetGamepads;
pub const IsPhone = SDL_IsPhone;
pub const DelayPrecise = SDL_DelayPrecise;
pub const GetPixelFormatName = SDL_GetPixelFormatName;
pub const ReadS32LE = SDL_ReadS32LE;
pub const cos = SDL_cos;
pub const GL_GetSwapInterval = SDL_GL_GetSwapInterval;
pub const CompareAndSwapAtomicInt = SDL_CompareAndSwapAtomicInt;
pub const LockRWLockForReading = SDL_LockRWLockForReading;
pub const isspace = SDL_isspace;
pub const GetCameraProperties = SDL_GetCameraProperties;
pub const GetWindowFullscreenMode = SDL_GetWindowFullscreenMode;
pub const GetGamepadSteamHandle = SDL_GetGamepadSteamHandle;
pub const CreateGPUGraphicsPipeline = SDL_CreateGPUGraphicsPipeline;
pub const SetLogPriorities = SDL_SetLogPriorities;
pub const isalpha = SDL_isalpha;
pub const StorageReady = SDL_StorageReady;
pub const OnApplicationDidEnterForeground = SDL_OnApplicationDidEnterForeground;
pub const GetGamepadFirmwareVersion = SDL_GetGamepadFirmwareVersion;
pub const GamepadHasAxis = SDL_GamepadHasAxis;
pub const floor = SDL_floor;
pub const tolower = SDL_tolower;
pub const GlobDirectory = SDL_GlobDirectory;
pub const hid_write = SDL_hid_write;
pub const MemoryBarrierReleaseFunction = SDL_MemoryBarrierReleaseFunction;
pub const ShowMessageBox = SDL_ShowMessageBox;
pub const ReadS16LE = SDL_ReadS16LE;
pub const GetLogOutputFunction = SDL_GetLogOutputFunction;
pub const CreateProperties = SDL_CreateProperties;
pub const RenderClear = SDL_RenderClear;
pub const GetSensorType = SDL_GetSensorType;
pub const StepBackUTF8 = SDL_StepBackUTF8;
pub const AddTimerNS = SDL_AddTimerNS;
pub const GetAudioDeviceName = SDL_GetAudioDeviceName;
pub const WaitForGPUIdle = SDL_WaitForGPUIdle;
pub const WriteSurfacePixelFloat = SDL_WriteSurfacePixelFloat;
pub const lroundf = SDL_lroundf;
pub const ConvertPixelsAndColorspace = SDL_ConvertPixelsAndColorspace;
pub const EGL_GetWindowSurface = SDL_EGL_GetWindowSurface;
pub const GetGamepadID = SDL_GetGamepadID;
pub const hid_get_properties = SDL_hid_get_properties;
pub const GetGamepadButtonLabelForType = SDL_GetGamepadButtonLabelForType;
pub const ResumeAudioStreamDevice = SDL_ResumeAudioStreamDevice;
pub const RemovePath = SDL_RemovePath;
pub const SetWindowHitTest = SDL_SetWindowHitTest;
pub const pow = SDL_pow;
pub const FlushEvents = SDL_FlushEvents;
pub const GetMouseState = SDL_GetMouseState;
pub const GetGamepadFromID = SDL_GetGamepadFromID;
pub const LoadSurface = SDL_LoadSurface;
pub const BindGPUVertexStorageBuffers = SDL_BindGPUVertexStorageBuffers;
pub const LoadSurface_IO = SDL_LoadSurface_IO;
pub const RenderCoordinatesToWindow = SDL_RenderCoordinatesToWindow;
pub const CreateSurface = SDL_CreateSurface;
pub const scalbn = SDL_scalbn;
pub const GetAudioPlaybackDevices = SDL_GetAudioPlaybackDevices;
pub const SetWindowParent = SDL_SetWindowParent;
pub const GetJoystickProductVersionForID = SDL_GetJoystickProductVersionForID;
pub const HasRectIntersectionFloat = SDL_HasRectIntersectionFloat;
pub const SetHapticGain = SDL_SetHapticGain;
pub const GetGamepadJoystick = SDL_GetGamepadJoystick;
pub const ShowWindowSystemMenu = SDL_ShowWindowSystemMenu;
pub const WriteS16LE = SDL_WriteS16LE;
pub const RenderLine = SDL_RenderLine;
pub const UnlockAudioStream = SDL_UnlockAudioStream;
pub const ReadU32LE = SDL_ReadU32LE;
pub const GetHapticFeatures = SDL_GetHapticFeatures;
pub const hid_close = SDL_hid_close;
pub const BeginGPUCopyPass = SDL_BeginGPUCopyPass;
pub const SetTextureBlendMode = SDL_SetTextureBlendMode;
pub const LoadFunction = SDL_LoadFunction;
pub const WriteU8 = SDL_WriteU8;
pub const SetPointerProperty = SDL_SetPointerProperty;
pub const iconv = SDL_iconv;
pub const InsertTrayEntryAt = SDL_InsertTrayEntryAt;
pub const ReadS8 = SDL_ReadS8;
pub const WriteU16BE = SDL_WriteU16BE;
pub const hid_open = SDL_hid_open;
pub const GetMouseNameForID = SDL_GetMouseNameForID;
pub const RumbleGamepad = SDL_RumbleGamepad;
pub const hid_get_serial_number_string = SDL_hid_get_serial_number_string;
pub const GetCurrentAudioDriver = SDL_GetCurrentAudioDriver;
pub const GL_UnloadLibrary = SDL_GL_UnloadLibrary;
pub const iscntrl = SDL_iscntrl;
pub const WriteS16BE = SDL_WriteS16BE;
pub const RemoveHintCallback = SDL_RemoveHintCallback;
pub const RenderGeometry = SDL_RenderGeometry;
pub const DestroyPalette = SDL_DestroyPalette;
pub const GetTouchDevices = SDL_GetTouchDevices;
pub const sqrtf = SDL_sqrtf;
pub const FlushEvent = SDL_FlushEvent;
pub const GetTrayMenuParentTray = SDL_GetTrayMenuParentTray;
pub const GetDisplayForRect = SDL_GetDisplayForRect;
pub const IOFromConstMem = SDL_IOFromConstMem;
pub const GetAudioStreamData = SDL_GetAudioStreamData;
pub const GetAudioStreamFrequencyRatio = SDL_GetAudioStreamFrequencyRatio;
pub const iconv_string = SDL_iconv_string;
pub const GetIOStatus = SDL_GetIOStatus;
pub const SetEventEnabled = SDL_SetEventEnabled;
pub const ReadS16BE = SDL_ReadS16BE;
pub const ClearProperty = SDL_ClearProperty;
pub const CloseStorage = SDL_CloseStorage;
pub const ResetLogPriorities = SDL_ResetLogPriorities;
pub const RegisterEvents = SDL_RegisterEvents;
pub const SetTrayIcon = SDL_SetTrayIcon;
pub const MapSurfaceRGB = SDL_MapSurfaceRGB;
pub const GetJoystickSerial = SDL_GetJoystickSerial;
pub const GetGamepadButtonFromString = SDL_GetGamepadButtonFromString;
pub const GetGamepadPlayerIndexForID = SDL_GetGamepadPlayerIndexForID;
pub const CreateAnimatedCursor = SDL_CreateAnimatedCursor;
pub const CreateDirectory = SDL_CreateDirectory;
pub const RenderReadPixels = SDL_RenderReadPixels;
pub const ShowSimpleMessageBox = SDL_ShowSimpleMessageBox;
pub const GetRendererFromTexture = SDL_GetRendererFromTexture;
pub const GetJoystickAxis = SDL_GetJoystickAxis;
pub const GetWindowDisplayScale = SDL_GetWindowDisplayScale;
pub const GetGPUDriver = SDL_GetGPUDriver;
pub const ShowOpenFolderDialog = SDL_ShowOpenFolderDialog;
pub const fabs = SDL_fabs;
pub const hid_get_input_report = SDL_hid_get_input_report;
pub const SetSurfacePalette = SDL_SetSurfacePalette;
pub const GetBasePath = SDL_GetBasePath;
pub const modff = SDL_modff;
pub const SetGamepadLED = SDL_SetGamepadLED;
pub const GetPixelFormatFromGPUTextureFormat = SDL_GetPixelFormatFromGPUTextureFormat;
pub const SetRenderDrawColor = SDL_SetRenderDrawColor;
pub const TimeToDateTime = SDL_TimeToDateTime;
pub const SetWindowPosition = SDL_SetWindowPosition;
pub const GetCurrentDisplayMode = SDL_GetCurrentDisplayMode;
pub const GetSensorTypeForID = SDL_GetSensorTypeForID;
pub const GetGamepadSensorData = SDL_GetGamepadSensorData;
pub const GetSensorProperties = SDL_GetSensorProperties;
pub const CreateAsyncIOQueue = SDL_CreateAsyncIOQueue;
pub const IOFromDynamicMem = SDL_IOFromDynamicMem;
pub const LoadPNG_IO = SDL_LoadPNG_IO;
pub const CleanupTLS = SDL_CleanupTLS;
pub const isupper = SDL_isupper;
pub const GetGamepadProduct = SDL_GetGamepadProduct;
pub const strtoul = SDL_strtoul;
pub const HasProperty = SDL_HasProperty;
pub const RumbleGamepadTriggers = SDL_RumbleGamepadTriggers;
pub const DrawGPUIndexedPrimitivesIndirect = SDL_DrawGPUIndexedPrimitivesIndirect;
pub const GetTrayEntryLabel = SDL_GetTrayEntryLabel;
pub const GetGamepadAxis = SDL_GetGamepadAxis;
pub const GetSensorID = SDL_GetSensorID;
pub const GetCameras = SDL_GetCameras;
pub const GetJoystickProduct = SDL_GetJoystickProduct;
pub const SendGamepadEffect = SDL_SendGamepadEffect;
pub const GetWindowMouseRect = SDL_GetWindowMouseRect;
pub const WriteU32BE = SDL_WriteU32BE;
pub const GetGPUDeviceProperties = SDL_GetGPUDeviceProperties;
pub const RenderTexture9GridTiled = SDL_RenderTexture9GridTiled;
pub const LoadFile = SDL_LoadFile;
pub const hid_open_path = SDL_hid_open_path;
pub const SetLinuxThreadPriorityAndPolicy = SDL_SetLinuxThreadPriorityAndPolicy;
pub const atan2 = SDL_atan2;
pub const SetGPUBufferName = SDL_SetGPUBufferName;
pub const GPUSupportsProperties = SDL_GPUSupportsProperties;
pub const GetCameraName = SDL_GetCameraName;
pub const PumpEvents = SDL_PumpEvents;
pub const GetHintBoolean = SDL_GetHintBoolean;
pub const SetTextureAlphaModFloat = SDL_SetTextureAlphaModFloat;
pub const UpdateNVTexture = SDL_UpdateNVTexture;
pub const GetJoystickPath = SDL_GetJoystickPath;
pub const GetClipboardData = SDL_GetClipboardData;
pub const HasEvents = SDL_HasEvents;
pub const isprint = SDL_isprint;
pub const RumbleJoystick = SDL_RumbleJoystick;
pub const GetCameraID = SDL_GetCameraID;
pub const round = SDL_round;
pub const GetRenderMetalCommandEncoder = SDL_GetRenderMetalCommandEncoder;
pub const LoadPNG = SDL_LoadPNG;
pub const OutOfMemory = SDL_OutOfMemory;
pub const HasClipboardText = SDL_HasClipboardText;
pub const Quit = SDL_Quit;
pub const UnsetEnvironmentVariable = SDL_UnsetEnvironmentVariable;
pub const GetKeyboardNameForID = SDL_GetKeyboardNameForID;
pub const HasRectIntersection = SDL_HasRectIntersection;
pub const DateTimeToTime = SDL_DateTimeToTime;
pub const EGL_SetAttributeCallbacks = SDL_EGL_SetAttributeCallbacks;
pub const ShowCursor = SDL_ShowCursor;
pub const hid_get_product_string = SDL_hid_get_product_string;
pub const ShouldQuit = SDL_ShouldQuit;
pub const GetAudioDeviceChannelMap = SDL_GetAudioDeviceChannelMap;
pub const GetDisplays = SDL_GetDisplays;
