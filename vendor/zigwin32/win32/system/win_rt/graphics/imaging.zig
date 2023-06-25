//! NOTE: this file is autogenerated, DO NOT MODIFY
//--------------------------------------------------------------------------------
// Section: Constants (1)
//--------------------------------------------------------------------------------
pub const CLSID_SoftwareBitmapNativeFactory = Guid.initString("84e65691-8602-4a84-be46-708be9cd4b74");

//--------------------------------------------------------------------------------
// Section: Types (2)
//--------------------------------------------------------------------------------
const IID_ISoftwareBitmapNative_Value = Guid.initString("94bc8415-04ea-4b2e-af13-4de95aa898eb");
pub const IID_ISoftwareBitmapNative = &IID_ISoftwareBitmapNative_Value;
pub const ISoftwareBitmapNative = extern struct {
    pub const VTable = extern struct {
        base: IInspectable.VTable,
        GetData: switch (@import("builtin").zig_backend) {
            .stage1 => fn (
                self: *const ISoftwareBitmapNative,
                riid: ?*const Guid,
                ppv: ?*?*anyopaque,
            ) callconv(@import("std").os.windows.WINAPI) HRESULT,
            else => *const fn (
                self: *const ISoftwareBitmapNative,
                riid: ?*const Guid,
                ppv: ?*?*anyopaque,
            ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        },
    };
    vtable: *const VTable,
    pub fn MethodMixin(comptime T: type) type {
        return struct {
            pub usingnamespace IInspectable.MethodMixin(T);
            // NOTE: method is namespaced with interface name to avoid conflicts for now
            pub inline fn ISoftwareBitmapNative_GetData(self: *const T, riid: ?*const Guid, ppv: ?*?*anyopaque) HRESULT {
                return @ptrCast(*const ISoftwareBitmapNative.VTable, self.vtable).GetData(@ptrCast(*const ISoftwareBitmapNative, self), riid, ppv);
            }
        };
    }
    pub usingnamespace MethodMixin(@This());
};

const IID_ISoftwareBitmapNativeFactory_Value = Guid.initString("c3c181ec-2914-4791-af02-02d224a10b43");
pub const IID_ISoftwareBitmapNativeFactory = &IID_ISoftwareBitmapNativeFactory_Value;
pub const ISoftwareBitmapNativeFactory = extern struct {
    pub const VTable = extern struct {
        base: IInspectable.VTable,
        CreateFromWICBitmap: switch (@import("builtin").zig_backend) {
            .stage1 => fn (
                self: *const ISoftwareBitmapNativeFactory,
                data: ?*IWICBitmap,
                forceReadOnly: BOOL,
                riid: ?*const Guid,
                ppv: ?*?*anyopaque,
            ) callconv(@import("std").os.windows.WINAPI) HRESULT,
            else => *const fn (
                self: *const ISoftwareBitmapNativeFactory,
                data: ?*IWICBitmap,
                forceReadOnly: BOOL,
                riid: ?*const Guid,
                ppv: ?*?*anyopaque,
            ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        },
        CreateFromMF2DBuffer2: switch (@import("builtin").zig_backend) {
            .stage1 => fn (
                self: *const ISoftwareBitmapNativeFactory,
                data: ?*IMF2DBuffer2,
                subtype: ?*const Guid,
                width: u32,
                height: u32,
                forceReadOnly: BOOL,
                minDisplayAperture: ?*const MFVideoArea,
                riid: ?*const Guid,
                ppv: ?*?*anyopaque,
            ) callconv(@import("std").os.windows.WINAPI) HRESULT,
            else => *const fn (
                self: *const ISoftwareBitmapNativeFactory,
                data: ?*IMF2DBuffer2,
                subtype: ?*const Guid,
                width: u32,
                height: u32,
                forceReadOnly: BOOL,
                minDisplayAperture: ?*const MFVideoArea,
                riid: ?*const Guid,
                ppv: ?*?*anyopaque,
            ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        },
    };
    vtable: *const VTable,
    pub fn MethodMixin(comptime T: type) type {
        return struct {
            pub usingnamespace IInspectable.MethodMixin(T);
            // NOTE: method is namespaced with interface name to avoid conflicts for now
            pub inline fn ISoftwareBitmapNativeFactory_CreateFromWICBitmap(self: *const T, data: ?*IWICBitmap, forceReadOnly: BOOL, riid: ?*const Guid, ppv: ?*?*anyopaque) HRESULT {
                return @ptrCast(*const ISoftwareBitmapNativeFactory.VTable, self.vtable).CreateFromWICBitmap(@ptrCast(*const ISoftwareBitmapNativeFactory, self), data, forceReadOnly, riid, ppv);
            }
            // NOTE: method is namespaced with interface name to avoid conflicts for now
            pub inline fn ISoftwareBitmapNativeFactory_CreateFromMF2DBuffer2(self: *const T, data: ?*IMF2DBuffer2, subtype: ?*const Guid, width: u32, height: u32, forceReadOnly: BOOL, minDisplayAperture: ?*const MFVideoArea, riid: ?*const Guid, ppv: ?*?*anyopaque) HRESULT {
                return @ptrCast(*const ISoftwareBitmapNativeFactory.VTable, self.vtable).CreateFromMF2DBuffer2(@ptrCast(*const ISoftwareBitmapNativeFactory, self), data, subtype, width, height, forceReadOnly, minDisplayAperture, riid, ppv);
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
pub usingnamespace switch (@import("../../../zig.zig").unicode_mode) {
    .ansi => struct {},
    .wide => struct {},
    .unspecified => if (@import("builtin").is_test) struct {} else struct {},
};
//--------------------------------------------------------------------------------
// Section: Imports (7)
//--------------------------------------------------------------------------------
const Guid = @import("../../../zig.zig").Guid;
const BOOL = @import("../../../foundation.zig").BOOL;
const HRESULT = @import("../../../foundation.zig").HRESULT;
const IInspectable = @import("../../../system/win_rt.zig").IInspectable;
const IMF2DBuffer2 = @import("../../../media/media_foundation.zig").IMF2DBuffer2;
const IWICBitmap = @import("../../../graphics/imaging.zig").IWICBitmap;
const MFVideoArea = @import("../../../media/media_foundation.zig").MFVideoArea;

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
