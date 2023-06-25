//! NOTE: this file is autogenerated, DO NOT MODIFY
//--------------------------------------------------------------------------------
// Section: Constants (0)
//--------------------------------------------------------------------------------

//--------------------------------------------------------------------------------
// Section: Types (7)
//--------------------------------------------------------------------------------
const IID_IPrinting3DManagerInterop_Value = Guid.initString("9ca31010-1484-4587-b26b-dddf9f9caecd");
pub const IID_IPrinting3DManagerInterop = &IID_IPrinting3DManagerInterop_Value;
pub const IPrinting3DManagerInterop = extern struct {
    pub const VTable = extern struct {
        base: IInspectable.VTable,
        GetForWindow: switch (@import("builtin").zig_backend) {
            .stage1 => fn (
                self: *const IPrinting3DManagerInterop,
                appWindow: ?HWND,
                riid: ?*const Guid,
                printManager: ?*?*anyopaque,
            ) callconv(@import("std").os.windows.WINAPI) HRESULT,
            else => *const fn (
                self: *const IPrinting3DManagerInterop,
                appWindow: ?HWND,
                riid: ?*const Guid,
                printManager: ?*?*anyopaque,
            ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        },
        ShowPrintUIForWindowAsync: switch (@import("builtin").zig_backend) {
            .stage1 => fn (
                self: *const IPrinting3DManagerInterop,
                appWindow: ?HWND,
                riid: ?*const Guid,
                asyncOperation: ?*?*anyopaque,
            ) callconv(@import("std").os.windows.WINAPI) HRESULT,
            else => *const fn (
                self: *const IPrinting3DManagerInterop,
                appWindow: ?HWND,
                riid: ?*const Guid,
                asyncOperation: ?*?*anyopaque,
            ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        },
    };
    vtable: *const VTable,
    pub fn MethodMixin(comptime T: type) type {
        return struct {
            pub usingnamespace IInspectable.MethodMixin(T);
            // NOTE: method is namespaced with interface name to avoid conflicts for now
            pub inline fn IPrinting3DManagerInterop_GetForWindow(self: *const T, appWindow: ?HWND, riid: ?*const Guid, printManager: ?*?*anyopaque) HRESULT {
                return @ptrCast(*const IPrinting3DManagerInterop.VTable, self.vtable).GetForWindow(@ptrCast(*const IPrinting3DManagerInterop, self), appWindow, riid, printManager);
            }
            // NOTE: method is namespaced with interface name to avoid conflicts for now
            pub inline fn IPrinting3DManagerInterop_ShowPrintUIForWindowAsync(self: *const T, appWindow: ?HWND, riid: ?*const Guid, asyncOperation: ?*?*anyopaque) HRESULT {
                return @ptrCast(*const IPrinting3DManagerInterop.VTable, self.vtable).ShowPrintUIForWindowAsync(@ptrCast(*const IPrinting3DManagerInterop, self), appWindow, riid, asyncOperation);
            }
        };
    }
    pub usingnamespace MethodMixin(@This());
};

// TODO: this type is limited to platform 'windows8.0'
const IID_IPrintManagerInterop_Value = Guid.initString("c5435a42-8d43-4e7b-a68a-ef311e392087");
pub const IID_IPrintManagerInterop = &IID_IPrintManagerInterop_Value;
pub const IPrintManagerInterop = extern struct {
    pub const VTable = extern struct {
        base: IInspectable.VTable,
        GetForWindow: switch (@import("builtin").zig_backend) {
            .stage1 => fn (
                self: *const IPrintManagerInterop,
                appWindow: ?HWND,
                riid: ?*const Guid,
                printManager: ?*?*anyopaque,
            ) callconv(@import("std").os.windows.WINAPI) HRESULT,
            else => *const fn (
                self: *const IPrintManagerInterop,
                appWindow: ?HWND,
                riid: ?*const Guid,
                printManager: ?*?*anyopaque,
            ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        },
        ShowPrintUIForWindowAsync: switch (@import("builtin").zig_backend) {
            .stage1 => fn (
                self: *const IPrintManagerInterop,
                appWindow: ?HWND,
                riid: ?*const Guid,
                asyncOperation: ?*?*anyopaque,
            ) callconv(@import("std").os.windows.WINAPI) HRESULT,
            else => *const fn (
                self: *const IPrintManagerInterop,
                appWindow: ?HWND,
                riid: ?*const Guid,
                asyncOperation: ?*?*anyopaque,
            ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        },
    };
    vtable: *const VTable,
    pub fn MethodMixin(comptime T: type) type {
        return struct {
            pub usingnamespace IInspectable.MethodMixin(T);
            // NOTE: method is namespaced with interface name to avoid conflicts for now
            pub inline fn IPrintManagerInterop_GetForWindow(self: *const T, appWindow: ?HWND, riid: ?*const Guid, printManager: ?*?*anyopaque) HRESULT {
                return @ptrCast(*const IPrintManagerInterop.VTable, self.vtable).GetForWindow(@ptrCast(*const IPrintManagerInterop, self), appWindow, riid, printManager);
            }
            // NOTE: method is namespaced with interface name to avoid conflicts for now
            pub inline fn IPrintManagerInterop_ShowPrintUIForWindowAsync(self: *const T, appWindow: ?HWND, riid: ?*const Guid, asyncOperation: ?*?*anyopaque) HRESULT {
                return @ptrCast(*const IPrintManagerInterop.VTable, self.vtable).ShowPrintUIForWindowAsync(@ptrCast(*const IPrintManagerInterop, self), appWindow, riid, asyncOperation);
            }
        };
    }
    pub usingnamespace MethodMixin(@This());
};

const IID_IPrintWorkflowXpsReceiver_Value = Guid.initString("04097374-77b8-47f6-8167-aae29d4cf84b");
pub const IID_IPrintWorkflowXpsReceiver = &IID_IPrintWorkflowXpsReceiver_Value;
pub const IPrintWorkflowXpsReceiver = extern struct {
    pub const VTable = extern struct {
        base: IUnknown.VTable,
        SetDocumentSequencePrintTicket: switch (@import("builtin").zig_backend) {
            .stage1 => fn (
                self: *const IPrintWorkflowXpsReceiver,
                documentSequencePrintTicket: ?*IStream,
            ) callconv(@import("std").os.windows.WINAPI) HRESULT,
            else => *const fn (
                self: *const IPrintWorkflowXpsReceiver,
                documentSequencePrintTicket: ?*IStream,
            ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        },
        SetDocumentSequenceUri: switch (@import("builtin").zig_backend) {
            .stage1 => fn (
                self: *const IPrintWorkflowXpsReceiver,
                documentSequenceUri: ?[*:0]const u16,
            ) callconv(@import("std").os.windows.WINAPI) HRESULT,
            else => *const fn (
                self: *const IPrintWorkflowXpsReceiver,
                documentSequenceUri: ?[*:0]const u16,
            ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        },
        AddDocumentData: switch (@import("builtin").zig_backend) {
            .stage1 => fn (
                self: *const IPrintWorkflowXpsReceiver,
                documentId: u32,
                documentPrintTicket: ?*IStream,
                documentUri: ?[*:0]const u16,
            ) callconv(@import("std").os.windows.WINAPI) HRESULT,
            else => *const fn (
                self: *const IPrintWorkflowXpsReceiver,
                documentId: u32,
                documentPrintTicket: ?*IStream,
                documentUri: ?[*:0]const u16,
            ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        },
        AddPage: switch (@import("builtin").zig_backend) {
            .stage1 => fn (
                self: *const IPrintWorkflowXpsReceiver,
                documentId: u32,
                pageId: u32,
                pageReference: ?*IXpsOMPageReference,
                pageUri: ?[*:0]const u16,
            ) callconv(@import("std").os.windows.WINAPI) HRESULT,
            else => *const fn (
                self: *const IPrintWorkflowXpsReceiver,
                documentId: u32,
                pageId: u32,
                pageReference: ?*IXpsOMPageReference,
                pageUri: ?[*:0]const u16,
            ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        },
        Close: switch (@import("builtin").zig_backend) {
            .stage1 => fn (
                self: *const IPrintWorkflowXpsReceiver,
            ) callconv(@import("std").os.windows.WINAPI) HRESULT,
            else => *const fn (
                self: *const IPrintWorkflowXpsReceiver,
            ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        },
    };
    vtable: *const VTable,
    pub fn MethodMixin(comptime T: type) type {
        return struct {
            pub usingnamespace IUnknown.MethodMixin(T);
            // NOTE: method is namespaced with interface name to avoid conflicts for now
            pub inline fn IPrintWorkflowXpsReceiver_SetDocumentSequencePrintTicket(self: *const T, documentSequencePrintTicket: ?*IStream) HRESULT {
                return @ptrCast(*const IPrintWorkflowXpsReceiver.VTable, self.vtable).SetDocumentSequencePrintTicket(@ptrCast(*const IPrintWorkflowXpsReceiver, self), documentSequencePrintTicket);
            }
            // NOTE: method is namespaced with interface name to avoid conflicts for now
            pub inline fn IPrintWorkflowXpsReceiver_SetDocumentSequenceUri(self: *const T, documentSequenceUri: ?[*:0]const u16) HRESULT {
                return @ptrCast(*const IPrintWorkflowXpsReceiver.VTable, self.vtable).SetDocumentSequenceUri(@ptrCast(*const IPrintWorkflowXpsReceiver, self), documentSequenceUri);
            }
            // NOTE: method is namespaced with interface name to avoid conflicts for now
            pub inline fn IPrintWorkflowXpsReceiver_AddDocumentData(self: *const T, documentId: u32, documentPrintTicket: ?*IStream, documentUri: ?[*:0]const u16) HRESULT {
                return @ptrCast(*const IPrintWorkflowXpsReceiver.VTable, self.vtable).AddDocumentData(@ptrCast(*const IPrintWorkflowXpsReceiver, self), documentId, documentPrintTicket, documentUri);
            }
            // NOTE: method is namespaced with interface name to avoid conflicts for now
            pub inline fn IPrintWorkflowXpsReceiver_AddPage(self: *const T, documentId: u32, pageId: u32, pageReference: ?*IXpsOMPageReference, pageUri: ?[*:0]const u16) HRESULT {
                return @ptrCast(*const IPrintWorkflowXpsReceiver.VTable, self.vtable).AddPage(@ptrCast(*const IPrintWorkflowXpsReceiver, self), documentId, pageId, pageReference, pageUri);
            }
            // NOTE: method is namespaced with interface name to avoid conflicts for now
            pub inline fn IPrintWorkflowXpsReceiver_Close(self: *const T) HRESULT {
                return @ptrCast(*const IPrintWorkflowXpsReceiver.VTable, self.vtable).Close(@ptrCast(*const IPrintWorkflowXpsReceiver, self));
            }
        };
    }
    pub usingnamespace MethodMixin(@This());
};

const IID_IPrintWorkflowXpsReceiver2_Value = Guid.initString("023bcc0c-dfab-4a61-b074-490c6995580d");
pub const IID_IPrintWorkflowXpsReceiver2 = &IID_IPrintWorkflowXpsReceiver2_Value;
pub const IPrintWorkflowXpsReceiver2 = extern struct {
    pub const VTable = extern struct {
        base: IPrintWorkflowXpsReceiver.VTable,
        Failed: switch (@import("builtin").zig_backend) {
            .stage1 => fn (
                self: *const IPrintWorkflowXpsReceiver2,
                XpsError: HRESULT,
            ) callconv(@import("std").os.windows.WINAPI) HRESULT,
            else => *const fn (
                self: *const IPrintWorkflowXpsReceiver2,
                XpsError: HRESULT,
            ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        },
    };
    vtable: *const VTable,
    pub fn MethodMixin(comptime T: type) type {
        return struct {
            pub usingnamespace IPrintWorkflowXpsReceiver.MethodMixin(T);
            // NOTE: method is namespaced with interface name to avoid conflicts for now
            pub inline fn IPrintWorkflowXpsReceiver2_Failed(self: *const T, XpsError: HRESULT) HRESULT {
                return @ptrCast(*const IPrintWorkflowXpsReceiver2.VTable, self.vtable).Failed(@ptrCast(*const IPrintWorkflowXpsReceiver2, self), XpsError);
            }
        };
    }
    pub usingnamespace MethodMixin(@This());
};

const IID_IPrintWorkflowObjectModelSourceFileContentNative_Value = Guid.initString("68c9e477-993e-4052-8ac6-454eff58db9d");
pub const IID_IPrintWorkflowObjectModelSourceFileContentNative = &IID_IPrintWorkflowObjectModelSourceFileContentNative_Value;
pub const IPrintWorkflowObjectModelSourceFileContentNative = extern struct {
    pub const VTable = extern struct {
        base: IUnknown.VTable,
        StartXpsOMGeneration: switch (@import("builtin").zig_backend) {
            .stage1 => fn (
                self: *const IPrintWorkflowObjectModelSourceFileContentNative,
                receiver: ?*IPrintWorkflowXpsReceiver,
            ) callconv(@import("std").os.windows.WINAPI) HRESULT,
            else => *const fn (
                self: *const IPrintWorkflowObjectModelSourceFileContentNative,
                receiver: ?*IPrintWorkflowXpsReceiver,
            ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        },
        // TODO: this function has a "SpecialName", should Zig do anything with this?
        get_ObjectFactory: switch (@import("builtin").zig_backend) {
            // TODO: this function has a "SpecialName", should Zig do anything with this?
            .stage1 => fn (
                self: *const IPrintWorkflowObjectModelSourceFileContentNative,
                value: ?*?*IXpsOMObjectFactory1,
            ) callconv(@import("std").os.windows.WINAPI) HRESULT,
            // TODO: this function has a "SpecialName", should Zig do anything with this?
            else => *const fn (
                self: *const IPrintWorkflowObjectModelSourceFileContentNative,
                value: ?*?*IXpsOMObjectFactory1,
            ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        },
    };
    vtable: *const VTable,
    pub fn MethodMixin(comptime T: type) type {
        return struct {
            pub usingnamespace IUnknown.MethodMixin(T);
            // NOTE: method is namespaced with interface name to avoid conflicts for now
            pub inline fn IPrintWorkflowObjectModelSourceFileContentNative_StartXpsOMGeneration(self: *const T, receiver: ?*IPrintWorkflowXpsReceiver) HRESULT {
                return @ptrCast(*const IPrintWorkflowObjectModelSourceFileContentNative.VTable, self.vtable).StartXpsOMGeneration(@ptrCast(*const IPrintWorkflowObjectModelSourceFileContentNative, self), receiver);
            }
            // NOTE: method is namespaced with interface name to avoid conflicts for now
            pub inline fn IPrintWorkflowObjectModelSourceFileContentNative_get_ObjectFactory(self: *const T, value: ?*?*IXpsOMObjectFactory1) HRESULT {
                return @ptrCast(*const IPrintWorkflowObjectModelSourceFileContentNative.VTable, self.vtable).get_ObjectFactory(@ptrCast(*const IPrintWorkflowObjectModelSourceFileContentNative, self), value);
            }
        };
    }
    pub usingnamespace MethodMixin(@This());
};

const IID_IPrintWorkflowXpsObjectModelTargetPackageNative_Value = Guid.initString("7d96bc74-9b54-4ca1-ad3a-979c3d44ddac");
pub const IID_IPrintWorkflowXpsObjectModelTargetPackageNative = &IID_IPrintWorkflowXpsObjectModelTargetPackageNative_Value;
pub const IPrintWorkflowXpsObjectModelTargetPackageNative = extern struct {
    pub const VTable = extern struct {
        base: IUnknown.VTable,
        // TODO: this function has a "SpecialName", should Zig do anything with this?
        get_DocumentPackageTarget: switch (@import("builtin").zig_backend) {
            // TODO: this function has a "SpecialName", should Zig do anything with this?
            .stage1 => fn (
                self: *const IPrintWorkflowXpsObjectModelTargetPackageNative,
                value: ?*?*IXpsDocumentPackageTarget,
            ) callconv(@import("std").os.windows.WINAPI) HRESULT,
            // TODO: this function has a "SpecialName", should Zig do anything with this?
            else => *const fn (
                self: *const IPrintWorkflowXpsObjectModelTargetPackageNative,
                value: ?*?*IXpsDocumentPackageTarget,
            ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        },
    };
    vtable: *const VTable,
    pub fn MethodMixin(comptime T: type) type {
        return struct {
            pub usingnamespace IUnknown.MethodMixin(T);
            // NOTE: method is namespaced with interface name to avoid conflicts for now
            pub inline fn IPrintWorkflowXpsObjectModelTargetPackageNative_get_DocumentPackageTarget(self: *const T, value: ?*?*IXpsDocumentPackageTarget) HRESULT {
                return @ptrCast(*const IPrintWorkflowXpsObjectModelTargetPackageNative.VTable, self.vtable).get_DocumentPackageTarget(@ptrCast(*const IPrintWorkflowXpsObjectModelTargetPackageNative, self), value);
            }
        };
    }
    pub usingnamespace MethodMixin(@This());
};

const IID_IPrintWorkflowConfigurationNative_Value = Guid.initString("c056be0a-9ee2-450a-9823-964f0006f2bb");
pub const IID_IPrintWorkflowConfigurationNative = &IID_IPrintWorkflowConfigurationNative_Value;
pub const IPrintWorkflowConfigurationNative = extern struct {
    pub const VTable = extern struct {
        base: IUnknown.VTable,
        // TODO: this function has a "SpecialName", should Zig do anything with this?
        get_PrinterQueue: switch (@import("builtin").zig_backend) {
            // TODO: this function has a "SpecialName", should Zig do anything with this?
            .stage1 => fn (
                self: *const IPrintWorkflowConfigurationNative,
                value: ?*?*IPrinterQueue,
            ) callconv(@import("std").os.windows.WINAPI) HRESULT,
            // TODO: this function has a "SpecialName", should Zig do anything with this?
            else => *const fn (
                self: *const IPrintWorkflowConfigurationNative,
                value: ?*?*IPrinterQueue,
            ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        },
        // TODO: this function has a "SpecialName", should Zig do anything with this?
        get_DriverProperties: switch (@import("builtin").zig_backend) {
            // TODO: this function has a "SpecialName", should Zig do anything with this?
            .stage1 => fn (
                self: *const IPrintWorkflowConfigurationNative,
                value: ?*?*IPrinterPropertyBag,
            ) callconv(@import("std").os.windows.WINAPI) HRESULT,
            // TODO: this function has a "SpecialName", should Zig do anything with this?
            else => *const fn (
                self: *const IPrintWorkflowConfigurationNative,
                value: ?*?*IPrinterPropertyBag,
            ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        },
        // TODO: this function has a "SpecialName", should Zig do anything with this?
        get_UserProperties: switch (@import("builtin").zig_backend) {
            // TODO: this function has a "SpecialName", should Zig do anything with this?
            .stage1 => fn (
                self: *const IPrintWorkflowConfigurationNative,
                value: ?*?*IPrinterPropertyBag,
            ) callconv(@import("std").os.windows.WINAPI) HRESULT,
            // TODO: this function has a "SpecialName", should Zig do anything with this?
            else => *const fn (
                self: *const IPrintWorkflowConfigurationNative,
                value: ?*?*IPrinterPropertyBag,
            ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        },
    };
    vtable: *const VTable,
    pub fn MethodMixin(comptime T: type) type {
        return struct {
            pub usingnamespace IUnknown.MethodMixin(T);
            // NOTE: method is namespaced with interface name to avoid conflicts for now
            pub inline fn IPrintWorkflowConfigurationNative_get_PrinterQueue(self: *const T, value: ?*?*IPrinterQueue) HRESULT {
                return @ptrCast(*const IPrintWorkflowConfigurationNative.VTable, self.vtable).get_PrinterQueue(@ptrCast(*const IPrintWorkflowConfigurationNative, self), value);
            }
            // NOTE: method is namespaced with interface name to avoid conflicts for now
            pub inline fn IPrintWorkflowConfigurationNative_get_DriverProperties(self: *const T, value: ?*?*IPrinterPropertyBag) HRESULT {
                return @ptrCast(*const IPrintWorkflowConfigurationNative.VTable, self.vtable).get_DriverProperties(@ptrCast(*const IPrintWorkflowConfigurationNative, self), value);
            }
            // NOTE: method is namespaced with interface name to avoid conflicts for now
            pub inline fn IPrintWorkflowConfigurationNative_get_UserProperties(self: *const T, value: ?*?*IPrinterPropertyBag) HRESULT {
                return @ptrCast(*const IPrintWorkflowConfigurationNative.VTable, self.vtable).get_UserProperties(@ptrCast(*const IPrintWorkflowConfigurationNative, self), value);
            }
        };
    }
    pub usingnamespace MethodMixin(@This());
};

//--------------------------------------------------------------------------------
// Section: Functions (0)
//--------------------------------------------------------------------------------

//--------------------------------------------------------------------------------
// Section: Unicode Aliases (0)
//--------------------------------------------------------------------------------
const thismodule = @This();
pub usingnamespace switch (@import("../../zig.zig").unicode_mode) {
    .ansi => struct {},
    .wide => struct {},
    .unspecified => if (@import("builtin").is_test) struct {} else struct {},
};
//--------------------------------------------------------------------------------
// Section: Imports (12)
//--------------------------------------------------------------------------------
const Guid = @import("../../zig.zig").Guid;
const HRESULT = @import("../../foundation.zig").HRESULT;
const HWND = @import("../../foundation.zig").HWND;
const IInspectable = @import("../../system/win_rt.zig").IInspectable;
const IPrinterPropertyBag = @import("../../graphics/printing.zig").IPrinterPropertyBag;
const IPrinterQueue = @import("../../graphics/printing.zig").IPrinterQueue;
const IStream = @import("../../system/com.zig").IStream;
const IUnknown = @import("../../system/com.zig").IUnknown;
const IXpsDocumentPackageTarget = @import("../../storage/xps.zig").IXpsDocumentPackageTarget;
const IXpsOMObjectFactory1 = @import("../../storage/xps.zig").IXpsOMObjectFactory1;
const IXpsOMPageReference = @import("../../storage/xps.zig").IXpsOMPageReference;
const PWSTR = @import("../../foundation.zig").PWSTR;

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
