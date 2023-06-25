//! NOTE: this file is autogenerated, DO NOT MODIFY
//--------------------------------------------------------------------------------
// Section: Constants (82)
//--------------------------------------------------------------------------------
pub const NCBNAMSZ = @as(u32, 16);
pub const MAX_LANA = @as(u32, 254);
pub const NAME_FLAGS_MASK = @as(u32, 135);
pub const GROUP_NAME = @as(u32, 128);
pub const UNIQUE_NAME = @as(u32, 0);
pub const REGISTERING = @as(u32, 0);
pub const REGISTERED = @as(u32, 4);
pub const DEREGISTERED = @as(u32, 5);
pub const DUPLICATE = @as(u32, 6);
pub const DUPLICATE_DEREG = @as(u32, 7);
pub const LISTEN_OUTSTANDING = @as(u32, 1);
pub const CALL_PENDING = @as(u32, 2);
pub const SESSION_ESTABLISHED = @as(u32, 3);
pub const HANGUP_PENDING = @as(u32, 4);
pub const HANGUP_COMPLETE = @as(u32, 5);
pub const SESSION_ABORTED = @as(u32, 6);
pub const NCBCALL = @as(u32, 16);
pub const NCBLISTEN = @as(u32, 17);
pub const NCBHANGUP = @as(u32, 18);
pub const NCBSEND = @as(u32, 20);
pub const NCBRECV = @as(u32, 21);
pub const NCBRECVANY = @as(u32, 22);
pub const NCBCHAINSEND = @as(u32, 23);
pub const NCBDGSEND = @as(u32, 32);
pub const NCBDGRECV = @as(u32, 33);
pub const NCBDGSENDBC = @as(u32, 34);
pub const NCBDGRECVBC = @as(u32, 35);
pub const NCBADDNAME = @as(u32, 48);
pub const NCBDELNAME = @as(u32, 49);
pub const NCBRESET = @as(u32, 50);
pub const NCBASTAT = @as(u32, 51);
pub const NCBSSTAT = @as(u32, 52);
pub const NCBCANCEL = @as(u32, 53);
pub const NCBADDGRNAME = @as(u32, 54);
pub const NCBENUM = @as(u32, 55);
pub const NCBUNLINK = @as(u32, 112);
pub const NCBSENDNA = @as(u32, 113);
pub const NCBCHAINSENDNA = @as(u32, 114);
pub const NCBLANSTALERT = @as(u32, 115);
pub const NCBACTION = @as(u32, 119);
pub const NCBFINDNAME = @as(u32, 120);
pub const NCBTRACE = @as(u32, 121);
pub const ASYNCH = @as(u32, 128);
pub const NRC_GOODRET = @as(u32, 0);
pub const NRC_BUFLEN = @as(u32, 1);
pub const NRC_ILLCMD = @as(u32, 3);
pub const NRC_CMDTMO = @as(u32, 5);
pub const NRC_INCOMP = @as(u32, 6);
pub const NRC_BADDR = @as(u32, 7);
pub const NRC_SNUMOUT = @as(u32, 8);
pub const NRC_NORES = @as(u32, 9);
pub const NRC_SCLOSED = @as(u32, 10);
pub const NRC_CMDCAN = @as(u32, 11);
pub const NRC_DUPNAME = @as(u32, 13);
pub const NRC_NAMTFUL = @as(u32, 14);
pub const NRC_ACTSES = @as(u32, 15);
pub const NRC_LOCTFUL = @as(u32, 17);
pub const NRC_REMTFUL = @as(u32, 18);
pub const NRC_ILLNN = @as(u32, 19);
pub const NRC_NOCALL = @as(u32, 20);
pub const NRC_NOWILD = @as(u32, 21);
pub const NRC_INUSE = @as(u32, 22);
pub const NRC_NAMERR = @as(u32, 23);
pub const NRC_SABORT = @as(u32, 24);
pub const NRC_NAMCONF = @as(u32, 25);
pub const NRC_IFBUSY = @as(u32, 33);
pub const NRC_TOOMANY = @as(u32, 34);
pub const NRC_BRIDGE = @as(u32, 35);
pub const NRC_CANOCCR = @as(u32, 36);
pub const NRC_CANCEL = @as(u32, 38);
pub const NRC_DUPENV = @as(u32, 48);
pub const NRC_ENVNOTDEF = @as(u32, 52);
pub const NRC_OSRESNOTAV = @as(u32, 53);
pub const NRC_MAXAPPS = @as(u32, 54);
pub const NRC_NOSAPS = @as(u32, 55);
pub const NRC_NORESOURCES = @as(u32, 56);
pub const NRC_INVADDRESS = @as(u32, 57);
pub const NRC_INVDDID = @as(u32, 59);
pub const NRC_LOCKFAIL = @as(u32, 60);
pub const NRC_OPENERR = @as(u32, 63);
pub const NRC_SYSTEM = @as(u32, 64);
pub const NRC_PENDING = @as(u32, 255);

//--------------------------------------------------------------------------------
// Section: Types (10)
//--------------------------------------------------------------------------------

pub const ADAPTER_STATUS = extern struct {
    adapter_address: [6]u8,
    rev_major: u8,
    reserved0: u8,
    adapter_type: u8,
    rev_minor: u8,
    duration: u16,
    frmr_recv: u16,
    frmr_xmit: u16,
    iframe_recv_err: u16,
    xmit_aborts: u16,
    xmit_success: u32,
    recv_success: u32,
    iframe_xmit_err: u16,
    recv_buff_unavail: u16,
    t1_timeouts: u16,
    ti_timeouts: u16,
    reserved1: u32,
    free_ncbs: u16,
    max_cfg_ncbs: u16,
    max_ncbs: u16,
    xmit_buf_unavail: u16,
    max_dgram_size: u16,
    pending_sess: u16,
    max_cfg_sess: u16,
    max_sess: u16,
    max_sess_pkt_size: u16,
    name_count: u16,
};

pub const NAME_BUFFER = extern struct {
    name: [16]u8,
    name_num: u8,
    name_flags: u8,
};

pub const SESSION_HEADER = extern struct {
    sess_name: u8,
    num_sess: u8,
    rcv_dg_outstanding: u8,
    rcv_any_outstanding: u8,
};

pub const SESSION_BUFFER = extern struct {
    lsn: u8,
    state: u8,
    local_name: [16]u8,
    remote_name: [16]u8,
    rcvs_outstanding: u8,
    sends_outstanding: u8,
};

pub const LANA_ENUM = extern struct {
    length: u8,
    lana: [255]u8,
};

pub const FIND_NAME_HEADER = extern struct {
    node_count: u16,
    reserved: u8,
    unique_group: u8,
};

pub const FIND_NAME_BUFFER = extern struct {
    length: u8,
    access_control: u8,
    frame_control: u8,
    destination_addr: [6]u8,
    source_addr: [6]u8,
    routing_info: [18]u8,
};

pub const ACTION_HEADER = extern struct {
    transport_id: u32,
    action_code: u16,
    reserved: u16,
};

pub const NCB = switch (@import("../zig.zig").arch) {
    .X64, .Arm64 => extern struct {
        ncb_command: u8,
        ncb_retcode: u8,
        ncb_lsn: u8,
        ncb_num: u8,
        ncb_buffer: ?*u8,
        ncb_length: u16,
        ncb_callname: [16]u8,
        ncb_name: [16]u8,
        ncb_rto: u8,
        ncb_sto: u8,
        ncb_post: isize,
        ncb_lana_num: u8,
        ncb_cmd_cplt: u8,
        ncb_reserve: [18]u8,
        ncb_event: ?HANDLE,
    },
    .X86 => extern struct {
        ncb_command: u8,
        ncb_retcode: u8,
        ncb_lsn: u8,
        ncb_num: u8,
        ncb_buffer: ?*u8,
        ncb_length: u16,
        ncb_callname: [16]u8,
        ncb_name: [16]u8,
        ncb_rto: u8,
        ncb_sto: u8,
        ncb_post: isize,
        ncb_lana_num: u8,
        ncb_cmd_cplt: u8,
        ncb_reserve: [10]u8,
        ncb_event: ?HANDLE,
    },
};

//--------------------------------------------------------------------------------
// Section: Functions (1)
//--------------------------------------------------------------------------------
// TODO: this type is limited to platform 'windows5.0'
pub extern "netapi32" fn Netbios(
    pncb: ?*NCB,
) callconv(@import("std").os.windows.WINAPI) u8;

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
// Section: Imports (1)
//--------------------------------------------------------------------------------
const HANDLE = @import("../foundation.zig").HANDLE;

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
