//! NOTE: this file is autogenerated, DO NOT MODIFY
//--------------------------------------------------------------------------------
// Section: Constants (5)
//--------------------------------------------------------------------------------
pub const DPI_AWARENESS_CONTEXT_UNAWARE = @import("../zig.zig").typedConst(DPI_AWARENESS_CONTEXT, @as(i32, -1));
pub const DPI_AWARENESS_CONTEXT_SYSTEM_AWARE = @import("../zig.zig").typedConst(DPI_AWARENESS_CONTEXT, @as(i32, -2));
pub const DPI_AWARENESS_CONTEXT_PER_MONITOR_AWARE = @import("../zig.zig").typedConst(DPI_AWARENESS_CONTEXT, @as(i32, -3));
pub const DPI_AWARENESS_CONTEXT_PER_MONITOR_AWARE_V2 = @import("../zig.zig").typedConst(DPI_AWARENESS_CONTEXT, @as(i32, -4));
pub const DPI_AWARENESS_CONTEXT_UNAWARE_GDISCALED = @import("../zig.zig").typedConst(DPI_AWARENESS_CONTEXT, @as(i32, -5));

//--------------------------------------------------------------------------------
// Section: Types (7)
//--------------------------------------------------------------------------------
pub const DPI_AWARENESS_CONTEXT = isize;

pub const DPI_AWARENESS = enum(i32) {
    INVALID = -1,
    UNAWARE = 0,
    SYSTEM_AWARE = 1,
    PER_MONITOR_AWARE = 2,
};
pub const DPI_AWARENESS_INVALID = DPI_AWARENESS.INVALID;
pub const DPI_AWARENESS_UNAWARE = DPI_AWARENESS.UNAWARE;
pub const DPI_AWARENESS_SYSTEM_AWARE = DPI_AWARENESS.SYSTEM_AWARE;
pub const DPI_AWARENESS_PER_MONITOR_AWARE = DPI_AWARENESS.PER_MONITOR_AWARE;

pub const DPI_HOSTING_BEHAVIOR = enum(i32) {
    INVALID = -1,
    DEFAULT = 0,
    MIXED = 1,
};
pub const DPI_HOSTING_BEHAVIOR_INVALID = DPI_HOSTING_BEHAVIOR.INVALID;
pub const DPI_HOSTING_BEHAVIOR_DEFAULT = DPI_HOSTING_BEHAVIOR.DEFAULT;
pub const DPI_HOSTING_BEHAVIOR_MIXED = DPI_HOSTING_BEHAVIOR.MIXED;

pub const DIALOG_CONTROL_DPI_CHANGE_BEHAVIORS = enum(u32) {
    EFAULT = 0,
    ISABLE_FONT_UPDATE = 1,
    ISABLE_RELAYOUT = 2,
    _,
    pub fn initFlags(o: struct {
        EFAULT: u1 = 0,
        ISABLE_FONT_UPDATE: u1 = 0,
        ISABLE_RELAYOUT: u1 = 0,
    }) DIALOG_CONTROL_DPI_CHANGE_BEHAVIORS {
        return @enumFromInt(DIALOG_CONTROL_DPI_CHANGE_BEHAVIORS, (if (o.EFAULT == 1) @intFromEnum(DIALOG_CONTROL_DPI_CHANGE_BEHAVIORS.EFAULT) else 0) | (if (o.ISABLE_FONT_UPDATE == 1) @intFromEnum(DIALOG_CONTROL_DPI_CHANGE_BEHAVIORS.ISABLE_FONT_UPDATE) else 0) | (if (o.ISABLE_RELAYOUT == 1) @intFromEnum(DIALOG_CONTROL_DPI_CHANGE_BEHAVIORS.ISABLE_RELAYOUT) else 0));
    }
};
pub const DCDC_DEFAULT = DIALOG_CONTROL_DPI_CHANGE_BEHAVIORS.EFAULT;
pub const DCDC_DISABLE_FONT_UPDATE = DIALOG_CONTROL_DPI_CHANGE_BEHAVIORS.ISABLE_FONT_UPDATE;
pub const DCDC_DISABLE_RELAYOUT = DIALOG_CONTROL_DPI_CHANGE_BEHAVIORS.ISABLE_RELAYOUT;

pub const DIALOG_DPI_CHANGE_BEHAVIORS = enum(u32) {
    EFAULT = 0,
    ISABLE_ALL = 1,
    ISABLE_RESIZE = 2,
    ISABLE_CONTROL_RELAYOUT = 4,
    _,
    pub fn initFlags(o: struct {
        EFAULT: u1 = 0,
        ISABLE_ALL: u1 = 0,
        ISABLE_RESIZE: u1 = 0,
        ISABLE_CONTROL_RELAYOUT: u1 = 0,
    }) DIALOG_DPI_CHANGE_BEHAVIORS {
        return @enumFromInt(DIALOG_DPI_CHANGE_BEHAVIORS, (if (o.EFAULT == 1) @intFromEnum(DIALOG_DPI_CHANGE_BEHAVIORS.EFAULT) else 0) | (if (o.ISABLE_ALL == 1) @intFromEnum(DIALOG_DPI_CHANGE_BEHAVIORS.ISABLE_ALL) else 0) | (if (o.ISABLE_RESIZE == 1) @intFromEnum(DIALOG_DPI_CHANGE_BEHAVIORS.ISABLE_RESIZE) else 0) | (if (o.ISABLE_CONTROL_RELAYOUT == 1) @intFromEnum(DIALOG_DPI_CHANGE_BEHAVIORS.ISABLE_CONTROL_RELAYOUT) else 0));
    }
};
pub const DDC_DEFAULT = DIALOG_DPI_CHANGE_BEHAVIORS.EFAULT;
pub const DDC_DISABLE_ALL = DIALOG_DPI_CHANGE_BEHAVIORS.ISABLE_ALL;
pub const DDC_DISABLE_RESIZE = DIALOG_DPI_CHANGE_BEHAVIORS.ISABLE_RESIZE;
pub const DDC_DISABLE_CONTROL_RELAYOUT = DIALOG_DPI_CHANGE_BEHAVIORS.ISABLE_CONTROL_RELAYOUT;

pub const PROCESS_DPI_AWARENESS = enum(i32) {
    DPI_UNAWARE = 0,
    SYSTEM_DPI_AWARE = 1,
    PER_MONITOR_DPI_AWARE = 2,
};
pub const PROCESS_DPI_UNAWARE = PROCESS_DPI_AWARENESS.DPI_UNAWARE;
pub const PROCESS_SYSTEM_DPI_AWARE = PROCESS_DPI_AWARENESS.SYSTEM_DPI_AWARE;
pub const PROCESS_PER_MONITOR_DPI_AWARE = PROCESS_DPI_AWARENESS.PER_MONITOR_DPI_AWARE;

pub const MONITOR_DPI_TYPE = enum(i32) {
    EFFECTIVE_DPI = 0,
    ANGULAR_DPI = 1,
    RAW_DPI = 2,
    // DEFAULT = 0, this enum value conflicts with EFFECTIVE_DPI
};
pub const MDT_EFFECTIVE_DPI = MONITOR_DPI_TYPE.EFFECTIVE_DPI;
pub const MDT_ANGULAR_DPI = MONITOR_DPI_TYPE.ANGULAR_DPI;
pub const MDT_RAW_DPI = MONITOR_DPI_TYPE.RAW_DPI;
pub const MDT_DEFAULT = MONITOR_DPI_TYPE.EFFECTIVE_DPI;

//--------------------------------------------------------------------------------
// Section: Functions (29)
//--------------------------------------------------------------------------------
// TODO: this type is limited to platform 'windows10.0.15063'
pub extern "uxtheme" fn OpenThemeDataForDpi(
    hwnd: ?HWND,
    pszClassList: ?[*:0]const u16,
    dpi: u32,
) callconv(@import("std").os.windows.WINAPI) isize;

// TODO: this type is limited to platform 'windows10.0.15063'
pub extern "user32" fn SetDialogControlDpiChangeBehavior(
    hWnd: ?HWND,
    mask: DIALOG_CONTROL_DPI_CHANGE_BEHAVIORS,
    values: DIALOG_CONTROL_DPI_CHANGE_BEHAVIORS,
) callconv(@import("std").os.windows.WINAPI) BOOL;

// TODO: this type is limited to platform 'windows10.0.15063'
pub extern "user32" fn GetDialogControlDpiChangeBehavior(
    hWnd: ?HWND,
) callconv(@import("std").os.windows.WINAPI) DIALOG_CONTROL_DPI_CHANGE_BEHAVIORS;

// TODO: this type is limited to platform 'windows10.0.15063'
pub extern "user32" fn SetDialogDpiChangeBehavior(
    hDlg: ?HWND,
    mask: DIALOG_DPI_CHANGE_BEHAVIORS,
    values: DIALOG_DPI_CHANGE_BEHAVIORS,
) callconv(@import("std").os.windows.WINAPI) BOOL;

// TODO: this type is limited to platform 'windows10.0.15063'
pub extern "user32" fn GetDialogDpiChangeBehavior(
    hDlg: ?HWND,
) callconv(@import("std").os.windows.WINAPI) DIALOG_DPI_CHANGE_BEHAVIORS;

// TODO: this type is limited to platform 'windows10.0.14393'
pub extern "user32" fn GetSystemMetricsForDpi(
    nIndex: i32,
    dpi: u32,
) callconv(@import("std").os.windows.WINAPI) i32;

// TODO: this type is limited to platform 'windows10.0.14393'
pub extern "user32" fn AdjustWindowRectExForDpi(
    lpRect: ?*RECT,
    dwStyle: u32,
    bMenu: BOOL,
    dwExStyle: u32,
    dpi: u32,
) callconv(@import("std").os.windows.WINAPI) BOOL;

// TODO: this type is limited to platform 'windows8.1'
pub extern "user32" fn LogicalToPhysicalPointForPerMonitorDPI(
    hWnd: ?HWND,
    lpPoint: ?*POINT,
) callconv(@import("std").os.windows.WINAPI) BOOL;

// TODO: this type is limited to platform 'windows8.1'
pub extern "user32" fn PhysicalToLogicalPointForPerMonitorDPI(
    hWnd: ?HWND,
    lpPoint: ?*POINT,
) callconv(@import("std").os.windows.WINAPI) BOOL;

// TODO: this type is limited to platform 'windows10.0.14393'
pub extern "user32" fn SystemParametersInfoForDpi(
    uiAction: u32,
    uiParam: u32,
    pvParam: ?*anyopaque,
    fWinIni: u32,
    dpi: u32,
) callconv(@import("std").os.windows.WINAPI) BOOL;

// TODO: this type is limited to platform 'windows10.0.14393'
pub extern "user32" fn SetThreadDpiAwarenessContext(
    dpiContext: DPI_AWARENESS_CONTEXT,
) callconv(@import("std").os.windows.WINAPI) DPI_AWARENESS_CONTEXT;

// TODO: this type is limited to platform 'windows10.0.14393'
pub extern "user32" fn GetThreadDpiAwarenessContext() callconv(@import("std").os.windows.WINAPI) DPI_AWARENESS_CONTEXT;

// TODO: this type is limited to platform 'windows10.0.14393'
pub extern "user32" fn GetWindowDpiAwarenessContext(
    hwnd: ?HWND,
) callconv(@import("std").os.windows.WINAPI) DPI_AWARENESS_CONTEXT;

// TODO: this type is limited to platform 'windows10.0.14393'
pub extern "user32" fn GetAwarenessFromDpiAwarenessContext(
    value: DPI_AWARENESS_CONTEXT,
) callconv(@import("std").os.windows.WINAPI) DPI_AWARENESS;

// TODO: this type is limited to platform 'windows10.0.17134'
pub extern "user32" fn GetDpiFromDpiAwarenessContext(
    value: DPI_AWARENESS_CONTEXT,
) callconv(@import("std").os.windows.WINAPI) u32;

// TODO: this type is limited to platform 'windows10.0.14393'
pub extern "user32" fn AreDpiAwarenessContextsEqual(
    dpiContextA: DPI_AWARENESS_CONTEXT,
    dpiContextB: DPI_AWARENESS_CONTEXT,
) callconv(@import("std").os.windows.WINAPI) BOOL;

// TODO: this type is limited to platform 'windows10.0.14393'
pub extern "user32" fn IsValidDpiAwarenessContext(
    value: DPI_AWARENESS_CONTEXT,
) callconv(@import("std").os.windows.WINAPI) BOOL;

// TODO: this type is limited to platform 'windows10.0.14393'
pub extern "user32" fn GetDpiForWindow(
    hwnd: ?HWND,
) callconv(@import("std").os.windows.WINAPI) u32;

// TODO: this type is limited to platform 'windows10.0.14393'
pub extern "user32" fn GetDpiForSystem() callconv(@import("std").os.windows.WINAPI) u32;

// TODO: this type is limited to platform 'windows10.0.17134'
pub extern "user32" fn GetSystemDpiForProcess(
    hProcess: ?HANDLE,
) callconv(@import("std").os.windows.WINAPI) u32;

// TODO: this type is limited to platform 'windows10.0.14393'
pub extern "user32" fn EnableNonClientDpiScaling(
    hwnd: ?HWND,
) callconv(@import("std").os.windows.WINAPI) BOOL;

// TODO: this type is limited to platform 'windows10.0.15063'
pub extern "user32" fn SetProcessDpiAwarenessContext(
    value: DPI_AWARENESS_CONTEXT,
) callconv(@import("std").os.windows.WINAPI) BOOL;

pub extern "user32" fn GetDpiAwarenessContextForProcess(
    hProcess: ?HANDLE,
) callconv(@import("std").os.windows.WINAPI) DPI_AWARENESS_CONTEXT;

// TODO: this type is limited to platform 'windows10.0.17134'
pub extern "user32" fn SetThreadDpiHostingBehavior(
    value: DPI_HOSTING_BEHAVIOR,
) callconv(@import("std").os.windows.WINAPI) DPI_HOSTING_BEHAVIOR;

// TODO: this type is limited to platform 'windows10.0.17134'
pub extern "user32" fn GetThreadDpiHostingBehavior() callconv(@import("std").os.windows.WINAPI) DPI_HOSTING_BEHAVIOR;

// TODO: this type is limited to platform 'windows10.0.17134'
pub extern "user32" fn GetWindowDpiHostingBehavior(
    hwnd: ?HWND,
) callconv(@import("std").os.windows.WINAPI) DPI_HOSTING_BEHAVIOR;

// TODO: this type is limited to platform 'windows8.1'
pub extern "api-ms-win-shcore-scaling-l1-1-1" fn SetProcessDpiAwareness(
    value: PROCESS_DPI_AWARENESS,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

// TODO: this type is limited to platform 'windows8.1'
pub extern "api-ms-win-shcore-scaling-l1-1-1" fn GetProcessDpiAwareness(
    hprocess: ?HANDLE,
    value: ?*PROCESS_DPI_AWARENESS,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

// TODO: this type is limited to platform 'windows8.1'
pub extern "api-ms-win-shcore-scaling-l1-1-1" fn GetDpiForMonitor(
    hmonitor: ?HMONITOR,
    dpiType: MONITOR_DPI_TYPE,
    dpiX: ?*u32,
    dpiY: ?*u32,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

//--------------------------------------------------------------------------------
// Section: Unicode Aliases (0)
//--------------------------------------------------------------------------------
const thismodule = @This();
pub usingnamespace switch (@import("../zig.zig").unicode_mode) {
    .ansi => struct {},
    .wide => struct {},
    .unspecified => if (@import("builtin").is_test) struct {} else struct {},
};
//--------------------------------------------------------------------------------
// Section: Imports (8)
//--------------------------------------------------------------------------------
const BOOL = @import("../foundation.zig").BOOL;
const HANDLE = @import("../foundation.zig").HANDLE;
const HMONITOR = @import("../graphics/gdi.zig").HMONITOR;
const HRESULT = @import("../foundation.zig").HRESULT;
const HWND = @import("../foundation.zig").HWND;
const POINT = @import("../foundation.zig").POINT;
const PWSTR = @import("../foundation.zig").PWSTR;
const RECT = @import("../foundation.zig").RECT;

test {
    @setEvalBranchQuota(comptime @import("std").meta.declarations(@This()).len * 3);

    // reference all the pub declarations
    if (!@import("builtin").is_test) return;
    inline for (comptime @import("std").meta.declarations(@This())) |decl| {
        if (decl.is_pub) {
            _ = @field(@This(), decl.name);
        }
    }
}
