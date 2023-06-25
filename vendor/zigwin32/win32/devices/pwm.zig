//! NOTE: this file is autogenerated, DO NOT MODIFY
//--------------------------------------------------------------------------------
// Section: Constants (21)
//--------------------------------------------------------------------------------
pub const GUID_DEVINTERFACE_PWM_CONTROLLER = Guid.initString("60824b4c-eed1-4c9c-b49c-1b961461a819");
pub const IOCTL_PWM_CONTROLLER_GET_INFO = @as(u32, 262144);
pub const IOCTL_PWM_CONTROLLER_GET_ACTUAL_PERIOD = @as(u32, 262148);
pub const IOCTL_PWM_CONTROLLER_SET_DESIRED_PERIOD = @as(u32, 294920);
pub const IOCTL_PWM_PIN_GET_ACTIVE_DUTY_CYCLE_PERCENTAGE = @as(u32, 262544);
pub const IOCTL_PWM_PIN_SET_ACTIVE_DUTY_CYCLE_PERCENTAGE = @as(u32, 295316);
pub const IOCTL_PWM_PIN_GET_POLARITY = @as(u32, 262552);
pub const IOCTL_PWM_PIN_SET_POLARITY = @as(u32, 295324);
pub const IOCTL_PWM_PIN_START = @as(u32, 295331);
pub const IOCTL_PWM_PIN_STOP = @as(u32, 295335);
pub const IOCTL_PWM_PIN_IS_STARTED = @as(u32, 262568);
pub const PWM_IOCTL_ID_CONTROLLER_GET_INFO = @as(i32, 0);
pub const PWM_IOCTL_ID_CONTROLLER_GET_ACTUAL_PERIOD = @as(i32, 1);
pub const PWM_IOCTL_ID_CONTROLLER_SET_DESIRED_PERIOD = @as(i32, 2);
pub const PWM_IOCTL_ID_PIN_GET_ACTIVE_DUTY_CYCLE_PERCENTAGE = @as(i32, 100);
pub const PWM_IOCTL_ID_PIN_SET_ACTIVE_DUTY_CYCLE_PERCENTAGE = @as(i32, 101);
pub const PWM_IOCTL_ID_PIN_GET_POLARITY = @as(i32, 102);
pub const PWM_IOCTL_ID_PIN_SET_POLARITY = @as(i32, 103);
pub const PWM_IOCTL_ID_PIN_START = @as(i32, 104);
pub const PWM_IOCTL_ID_PIN_STOP = @as(i32, 105);
pub const PWM_IOCTL_ID_PIN_IS_STARTED = @as(i32, 106);

//--------------------------------------------------------------------------------
// Section: Types (10)
//--------------------------------------------------------------------------------
pub const PWM_CONTROLLER_INFO = extern struct {
    Size: usize,
    PinCount: u32,
    MinimumPeriod: u64,
    MaximumPeriod: u64,
};

pub const PWM_CONTROLLER_GET_ACTUAL_PERIOD_OUTPUT = extern struct {
    ActualPeriod: u64,
};

pub const PWM_CONTROLLER_SET_DESIRED_PERIOD_INPUT = extern struct {
    DesiredPeriod: u64,
};

pub const PWM_CONTROLLER_SET_DESIRED_PERIOD_OUTPUT = extern struct {
    ActualPeriod: u64,
};

pub const PWM_PIN_GET_ACTIVE_DUTY_CYCLE_PERCENTAGE_OUTPUT = extern struct {
    Percentage: u64,
};

pub const PWM_PIN_SET_ACTIVE_DUTY_CYCLE_PERCENTAGE_INPUT = extern struct {
    Percentage: u64,
};

pub const PWM_POLARITY = enum(i32) {
    HIGH = 0,
    LOW = 1,
};
pub const PWM_ACTIVE_HIGH = PWM_POLARITY.HIGH;
pub const PWM_ACTIVE_LOW = PWM_POLARITY.LOW;

pub const PWM_PIN_GET_POLARITY_OUTPUT = extern struct {
    Polarity: PWM_POLARITY,
};

pub const PWM_PIN_SET_POLARITY_INPUT = extern struct {
    Polarity: PWM_POLARITY,
};

pub const PWM_PIN_IS_STARTED_OUTPUT = extern struct {
    IsStarted: BOOLEAN,
};

//--------------------------------------------------------------------------------
// Section: Functions (0)
//--------------------------------------------------------------------------------

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
// Section: Imports (2)
//--------------------------------------------------------------------------------
const Guid = @import("../zig.zig").Guid;
const BOOLEAN = @import("../foundation.zig").BOOLEAN;

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
