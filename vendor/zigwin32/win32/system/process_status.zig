//! NOTE: this file is autogenerated, DO NOT MODIFY
//--------------------------------------------------------------------------------
// Section: Constants (1)
//--------------------------------------------------------------------------------
pub const PSAPI_VERSION = @as(u32, 2);

//--------------------------------------------------------------------------------
// Section: Types (14)
//--------------------------------------------------------------------------------
pub const ENUM_PROCESS_MODULES_EX_FLAGS = enum(u32) {
    ALL = 3,
    DEFAULT = 0,
    @"32BIT" = 1,
    @"64BIT" = 2,
};
pub const LIST_MODULES_ALL = ENUM_PROCESS_MODULES_EX_FLAGS.ALL;
pub const LIST_MODULES_DEFAULT = ENUM_PROCESS_MODULES_EX_FLAGS.DEFAULT;
pub const LIST_MODULES_32BIT = ENUM_PROCESS_MODULES_EX_FLAGS.@"32BIT";
pub const LIST_MODULES_64BIT = ENUM_PROCESS_MODULES_EX_FLAGS.@"64BIT";

pub const MODULEINFO = extern struct {
    lpBaseOfDll: ?*anyopaque,
    SizeOfImage: u32,
    EntryPoint: ?*anyopaque,
};

pub const PSAPI_WS_WATCH_INFORMATION = extern struct {
    FaultingPc: ?*anyopaque,
    FaultingVa: ?*anyopaque,
};

pub const PSAPI_WS_WATCH_INFORMATION_EX = extern struct {
    BasicInfo: PSAPI_WS_WATCH_INFORMATION,
    FaultingThreadId: usize,
    Flags: usize,
};

pub const PSAPI_WORKING_SET_BLOCK = extern union {
    Flags: usize,
    Anonymous: extern struct {
        _bitfield: usize,
    },
};

pub const PSAPI_WORKING_SET_INFORMATION = extern struct {
    NumberOfEntries: usize,
    WorkingSetInfo: [1]PSAPI_WORKING_SET_BLOCK,
};

pub const PSAPI_WORKING_SET_EX_BLOCK = extern union {
    Flags: usize,
    Anonymous: extern union {
        Anonymous: extern struct {
            _bitfield: usize,
        },
        Invalid: extern struct {
            _bitfield: usize,
        },
    },
};

pub const PSAPI_WORKING_SET_EX_INFORMATION = extern struct {
    VirtualAddress: ?*anyopaque,
    VirtualAttributes: PSAPI_WORKING_SET_EX_BLOCK,
};

pub const PROCESS_MEMORY_COUNTERS = extern struct {
    cb: u32,
    PageFaultCount: u32,
    PeakWorkingSetSize: usize,
    WorkingSetSize: usize,
    QuotaPeakPagedPoolUsage: usize,
    QuotaPagedPoolUsage: usize,
    QuotaPeakNonPagedPoolUsage: usize,
    QuotaNonPagedPoolUsage: usize,
    PagefileUsage: usize,
    PeakPagefileUsage: usize,
};

pub const PROCESS_MEMORY_COUNTERS_EX = extern struct {
    cb: u32,
    PageFaultCount: u32,
    PeakWorkingSetSize: usize,
    WorkingSetSize: usize,
    QuotaPeakPagedPoolUsage: usize,
    QuotaPagedPoolUsage: usize,
    QuotaPeakNonPagedPoolUsage: usize,
    QuotaNonPagedPoolUsage: usize,
    PagefileUsage: usize,
    PeakPagefileUsage: usize,
    PrivateUsage: usize,
};

pub const PERFORMANCE_INFORMATION = extern struct {
    cb: u32,
    CommitTotal: usize,
    CommitLimit: usize,
    CommitPeak: usize,
    PhysicalTotal: usize,
    PhysicalAvailable: usize,
    SystemCache: usize,
    KernelTotal: usize,
    KernelPaged: usize,
    KernelNonpaged: usize,
    PageSize: usize,
    HandleCount: u32,
    ProcessCount: u32,
    ThreadCount: u32,
};

pub const ENUM_PAGE_FILE_INFORMATION = extern struct {
    cb: u32,
    Reserved: u32,
    TotalSize: usize,
    TotalInUse: usize,
    PeakUsage: usize,
};

pub const PENUM_PAGE_FILE_CALLBACKW = switch (@import("builtin").zig_backend) {
    .stage1 => fn (
        pContext: ?*anyopaque,
        pPageFileInfo: ?*ENUM_PAGE_FILE_INFORMATION,
        lpFilename: ?[*:0]const u16,
    ) callconv(@import("std").os.windows.WINAPI) BOOL,
    else => *const fn (
        pContext: ?*anyopaque,
        pPageFileInfo: ?*ENUM_PAGE_FILE_INFORMATION,
        lpFilename: ?[*:0]const u16,
    ) callconv(@import("std").os.windows.WINAPI) BOOL,
};

pub const PENUM_PAGE_FILE_CALLBACKA = switch (@import("builtin").zig_backend) {
    .stage1 => fn (
        pContext: ?*anyopaque,
        pPageFileInfo: ?*ENUM_PAGE_FILE_INFORMATION,
        lpFilename: ?[*:0]const u8,
    ) callconv(@import("std").os.windows.WINAPI) BOOL,
    else => *const fn (
        pContext: ?*anyopaque,
        pPageFileInfo: ?*ENUM_PAGE_FILE_INFORMATION,
        lpFilename: ?[*:0]const u8,
    ) callconv(@import("std").os.windows.WINAPI) BOOL,
};

//--------------------------------------------------------------------------------
// Section: Functions (27)
//--------------------------------------------------------------------------------
pub extern "kernel32" fn K32EnumProcesses(
    // TODO: what to do with BytesParamIndex 1?
    lpidProcess: ?*u32,
    cb: u32,
    lpcbNeeded: ?*u32,
) callconv(@import("std").os.windows.WINAPI) BOOL;

pub extern "kernel32" fn K32EnumProcessModules(
    hProcess: ?HANDLE,
    // TODO: what to do with BytesParamIndex 2?
    lphModule: ?*?HINSTANCE,
    cb: u32,
    lpcbNeeded: ?*u32,
) callconv(@import("std").os.windows.WINAPI) BOOL;

pub extern "kernel32" fn K32EnumProcessModulesEx(
    hProcess: ?HANDLE,
    // TODO: what to do with BytesParamIndex 2?
    lphModule: ?*?HINSTANCE,
    cb: u32,
    lpcbNeeded: ?*u32,
    dwFilterFlag: ENUM_PROCESS_MODULES_EX_FLAGS,
) callconv(@import("std").os.windows.WINAPI) BOOL;

pub extern "kernel32" fn K32GetModuleBaseNameA(
    hProcess: ?HANDLE,
    hModule: ?HINSTANCE,
    lpBaseName: [*:0]u8,
    nSize: u32,
) callconv(@import("std").os.windows.WINAPI) u32;

pub extern "kernel32" fn K32GetModuleBaseNameW(
    hProcess: ?HANDLE,
    hModule: ?HINSTANCE,
    lpBaseName: [*:0]u16,
    nSize: u32,
) callconv(@import("std").os.windows.WINAPI) u32;

pub extern "kernel32" fn K32GetModuleFileNameExA(
    hProcess: ?HANDLE,
    hModule: ?HINSTANCE,
    lpFilename: [*:0]u8,
    nSize: u32,
) callconv(@import("std").os.windows.WINAPI) u32;

pub extern "kernel32" fn K32GetModuleFileNameExW(
    hProcess: ?HANDLE,
    hModule: ?HINSTANCE,
    lpFilename: [*:0]u16,
    nSize: u32,
) callconv(@import("std").os.windows.WINAPI) u32;

pub extern "kernel32" fn K32GetModuleInformation(
    hProcess: ?HANDLE,
    hModule: ?HINSTANCE,
    lpmodinfo: ?*MODULEINFO,
    cb: u32,
) callconv(@import("std").os.windows.WINAPI) BOOL;

pub extern "kernel32" fn K32EmptyWorkingSet(
    hProcess: ?HANDLE,
) callconv(@import("std").os.windows.WINAPI) BOOL;

pub extern "kernel32" fn K32InitializeProcessForWsWatch(
    hProcess: ?HANDLE,
) callconv(@import("std").os.windows.WINAPI) BOOL;

pub extern "kernel32" fn K32GetWsChanges(
    hProcess: ?HANDLE,
    // TODO: what to do with BytesParamIndex 2?
    lpWatchInfo: ?*PSAPI_WS_WATCH_INFORMATION,
    cb: u32,
) callconv(@import("std").os.windows.WINAPI) BOOL;

pub extern "kernel32" fn K32GetWsChangesEx(
    hProcess: ?HANDLE,
    // TODO: what to do with BytesParamIndex 2?
    lpWatchInfoEx: ?*PSAPI_WS_WATCH_INFORMATION_EX,
    cb: ?*u32,
) callconv(@import("std").os.windows.WINAPI) BOOL;

pub extern "kernel32" fn K32GetMappedFileNameW(
    hProcess: ?HANDLE,
    lpv: ?*anyopaque,
    lpFilename: [*:0]u16,
    nSize: u32,
) callconv(@import("std").os.windows.WINAPI) u32;

pub extern "kernel32" fn K32GetMappedFileNameA(
    hProcess: ?HANDLE,
    lpv: ?*anyopaque,
    lpFilename: [*:0]u8,
    nSize: u32,
) callconv(@import("std").os.windows.WINAPI) u32;

pub extern "kernel32" fn K32EnumDeviceDrivers(
    // TODO: what to do with BytesParamIndex 1?
    lpImageBase: ?*?*anyopaque,
    cb: u32,
    lpcbNeeded: ?*u32,
) callconv(@import("std").os.windows.WINAPI) BOOL;

pub extern "kernel32" fn K32GetDeviceDriverBaseNameA(
    ImageBase: ?*anyopaque,
    lpFilename: [*:0]u8,
    nSize: u32,
) callconv(@import("std").os.windows.WINAPI) u32;

pub extern "kernel32" fn K32GetDeviceDriverBaseNameW(
    ImageBase: ?*anyopaque,
    lpBaseName: [*:0]u16,
    nSize: u32,
) callconv(@import("std").os.windows.WINAPI) u32;

pub extern "kernel32" fn K32GetDeviceDriverFileNameA(
    ImageBase: ?*anyopaque,
    lpFilename: [*:0]u8,
    nSize: u32,
) callconv(@import("std").os.windows.WINAPI) u32;

pub extern "kernel32" fn K32GetDeviceDriverFileNameW(
    ImageBase: ?*anyopaque,
    lpFilename: [*:0]u16,
    nSize: u32,
) callconv(@import("std").os.windows.WINAPI) u32;

pub extern "kernel32" fn K32QueryWorkingSet(
    hProcess: ?HANDLE,
    // TODO: what to do with BytesParamIndex 2?
    pv: ?*anyopaque,
    cb: u32,
) callconv(@import("std").os.windows.WINAPI) BOOL;

pub extern "kernel32" fn K32QueryWorkingSetEx(
    hProcess: ?HANDLE,
    // TODO: what to do with BytesParamIndex 2?
    pv: ?*anyopaque,
    cb: u32,
) callconv(@import("std").os.windows.WINAPI) BOOL;

pub extern "kernel32" fn K32GetProcessMemoryInfo(
    Process: ?HANDLE,
    ppsmemCounters: ?*PROCESS_MEMORY_COUNTERS,
    cb: u32,
) callconv(@import("std").os.windows.WINAPI) BOOL;

pub extern "kernel32" fn K32GetPerformanceInfo(
    pPerformanceInformation: ?*PERFORMANCE_INFORMATION,
    cb: u32,
) callconv(@import("std").os.windows.WINAPI) BOOL;

pub extern "kernel32" fn K32EnumPageFilesW(
    pCallBackRoutine: ?PENUM_PAGE_FILE_CALLBACKW,
    pContext: ?*anyopaque,
) callconv(@import("std").os.windows.WINAPI) BOOL;

pub extern "kernel32" fn K32EnumPageFilesA(
    pCallBackRoutine: ?PENUM_PAGE_FILE_CALLBACKA,
    pContext: ?*anyopaque,
) callconv(@import("std").os.windows.WINAPI) BOOL;

pub extern "kernel32" fn K32GetProcessImageFileNameA(
    hProcess: ?HANDLE,
    lpImageFileName: [*:0]u8,
    nSize: u32,
) callconv(@import("std").os.windows.WINAPI) u32;

pub extern "kernel32" fn K32GetProcessImageFileNameW(
    hProcess: ?HANDLE,
    lpImageFileName: [*:0]u16,
    nSize: u32,
) callconv(@import("std").os.windows.WINAPI) u32;

//--------------------------------------------------------------------------------
// Section: Unicode Aliases (8)
//--------------------------------------------------------------------------------
const thismodule = @This();
pub usingnamespace switch (@import("../zig.zig").unicode_mode) {
    .ansi => struct {
        pub const PENUM_PAGE_FILE_CALLBACK = thismodule.PENUM_PAGE_FILE_CALLBACKA;
        pub const K32GetModuleBaseName = thismodule.K32GetModuleBaseNameA;
        pub const K32GetModuleFileNameEx = thismodule.K32GetModuleFileNameExA;
        pub const K32GetMappedFileName = thismodule.K32GetMappedFileNameA;
        pub const K32GetDeviceDriverBaseName = thismodule.K32GetDeviceDriverBaseNameA;
        pub const K32GetDeviceDriverFileName = thismodule.K32GetDeviceDriverFileNameA;
        pub const K32EnumPageFiles = thismodule.K32EnumPageFilesA;
        pub const K32GetProcessImageFileName = thismodule.K32GetProcessImageFileNameA;
    },
    .wide => struct {
        pub const PENUM_PAGE_FILE_CALLBACK = thismodule.PENUM_PAGE_FILE_CALLBACKW;
        pub const K32GetModuleBaseName = thismodule.K32GetModuleBaseNameW;
        pub const K32GetModuleFileNameEx = thismodule.K32GetModuleFileNameExW;
        pub const K32GetMappedFileName = thismodule.K32GetMappedFileNameW;
        pub const K32GetDeviceDriverBaseName = thismodule.K32GetDeviceDriverBaseNameW;
        pub const K32GetDeviceDriverFileName = thismodule.K32GetDeviceDriverFileNameW;
        pub const K32EnumPageFiles = thismodule.K32EnumPageFilesW;
        pub const K32GetProcessImageFileName = thismodule.K32GetProcessImageFileNameW;
    },
    .unspecified => if (@import("builtin").is_test) struct {
        pub const PENUM_PAGE_FILE_CALLBACK = *opaque {};
        pub const K32GetModuleBaseName = *opaque {};
        pub const K32GetModuleFileNameEx = *opaque {};
        pub const K32GetMappedFileName = *opaque {};
        pub const K32GetDeviceDriverBaseName = *opaque {};
        pub const K32GetDeviceDriverFileName = *opaque {};
        pub const K32EnumPageFiles = *opaque {};
        pub const K32GetProcessImageFileName = *opaque {};
    } else struct {
        pub const PENUM_PAGE_FILE_CALLBACK = @compileError("'PENUM_PAGE_FILE_CALLBACK' requires that UNICODE be set to true or false in the root module");
        pub const K32GetModuleBaseName = @compileError("'K32GetModuleBaseName' requires that UNICODE be set to true or false in the root module");
        pub const K32GetModuleFileNameEx = @compileError("'K32GetModuleFileNameEx' requires that UNICODE be set to true or false in the root module");
        pub const K32GetMappedFileName = @compileError("'K32GetMappedFileName' requires that UNICODE be set to true or false in the root module");
        pub const K32GetDeviceDriverBaseName = @compileError("'K32GetDeviceDriverBaseName' requires that UNICODE be set to true or false in the root module");
        pub const K32GetDeviceDriverFileName = @compileError("'K32GetDeviceDriverFileName' requires that UNICODE be set to true or false in the root module");
        pub const K32EnumPageFiles = @compileError("'K32EnumPageFiles' requires that UNICODE be set to true or false in the root module");
        pub const K32GetProcessImageFileName = @compileError("'K32GetProcessImageFileName' requires that UNICODE be set to true or false in the root module");
    },
};
//--------------------------------------------------------------------------------
// Section: Imports (5)
//--------------------------------------------------------------------------------
const BOOL = @import("../foundation.zig").BOOL;
const HANDLE = @import("../foundation.zig").HANDLE;
const HINSTANCE = @import("../foundation.zig").HINSTANCE;
const PSTR = @import("../foundation.zig").PSTR;
const PWSTR = @import("../foundation.zig").PWSTR;

test {
    // The following '_ = <FuncPtrType>' lines are a workaround for https://github.com/ziglang/zig/issues/4476
    if (@hasDecl(@This(), "PENUM_PAGE_FILE_CALLBACKW")) {
        _ = PENUM_PAGE_FILE_CALLBACKW;
    }
    if (@hasDecl(@This(), "PENUM_PAGE_FILE_CALLBACKA")) {
        _ = PENUM_PAGE_FILE_CALLBACKA;
    }

    @setEvalBranchQuota(comptime @import("std").meta.declarations(@This()).len * 3);

    // reference all the pub declarations
    if (!@import("builtin").is_test) return;
    inline for (comptime @import("std").meta.declarations(@This())) |decl| {
        if (decl.is_pub) {
            _ = @field(@This(), decl.name);
        }
    }
}
