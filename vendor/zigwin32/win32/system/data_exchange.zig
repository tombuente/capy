//! NOTE: this file is autogenerated, DO NOT MODIFY
//--------------------------------------------------------------------------------
// Section: Constants (66)
//--------------------------------------------------------------------------------
pub const WM_DDE_FIRST = @as(u32, 992);
pub const WM_DDE_INITIATE = @as(u32, 992);
pub const WM_DDE_TERMINATE = @as(u32, 993);
pub const WM_DDE_ADVISE = @as(u32, 994);
pub const WM_DDE_UNADVISE = @as(u32, 995);
pub const WM_DDE_ACK = @as(u32, 996);
pub const WM_DDE_DATA = @as(u32, 997);
pub const WM_DDE_REQUEST = @as(u32, 998);
pub const WM_DDE_POKE = @as(u32, 999);
pub const WM_DDE_EXECUTE = @as(u32, 1000);
pub const WM_DDE_LAST = @as(u32, 1000);
pub const CADV_LATEACK = @as(u32, 65535);
pub const DDE_FACK = @as(u32, 32768);
pub const DDE_FBUSY = @as(u32, 16384);
pub const DDE_FDEFERUPD = @as(u32, 16384);
pub const DDE_FACKREQ = @as(u32, 32768);
pub const DDE_FRELEASE = @as(u32, 8192);
pub const DDE_FREQUESTED = @as(u32, 4096);
pub const DDE_FAPPSTATUS = @as(u32, 255);
pub const DDE_FNOTPROCESSED = @as(u32, 0);
pub const MSGF_DDEMGR = @as(u32, 32769);
pub const CP_WINANSI = @as(i32, 1004);
pub const CP_WINUNICODE = @as(i32, 1200);
pub const CP_WINNEUTRAL = @as(i32, 1200);
pub const XTYPF_NOBLOCK = @as(u32, 2);
pub const XTYPF_NODATA = @as(u32, 4);
pub const XTYPF_ACKREQ = @as(u32, 8);
pub const XCLASS_MASK = @as(u32, 64512);
pub const XCLASS_BOOL = @as(u32, 4096);
pub const XCLASS_DATA = @as(u32, 8192);
pub const XCLASS_FLAGS = @as(u32, 16384);
pub const XCLASS_NOTIFICATION = @as(u32, 32768);
pub const XTYP_MASK = @as(u32, 240);
pub const XTYP_SHIFT = @as(u32, 4);
pub const TIMEOUT_ASYNC = @as(u32, 4294967295);
pub const QID_SYNC = @as(u32, 4294967295);
pub const APPCMD_MASK = @as(i32, 4080);
pub const APPCLASS_MASK = @as(i32, 15);
pub const HDATA_APPOWNED = @as(u32, 1);
pub const DMLERR_NO_ERROR = @as(u32, 0);
pub const DMLERR_FIRST = @as(u32, 16384);
pub const DMLERR_ADVACKTIMEOUT = @as(u32, 16384);
pub const DMLERR_BUSY = @as(u32, 16385);
pub const DMLERR_DATAACKTIMEOUT = @as(u32, 16386);
pub const DMLERR_DLL_NOT_INITIALIZED = @as(u32, 16387);
pub const DMLERR_DLL_USAGE = @as(u32, 16388);
pub const DMLERR_EXECACKTIMEOUT = @as(u32, 16389);
pub const DMLERR_INVALIDPARAMETER = @as(u32, 16390);
pub const DMLERR_LOW_MEMORY = @as(u32, 16391);
pub const DMLERR_MEMORY_ERROR = @as(u32, 16392);
pub const DMLERR_NOTPROCESSED = @as(u32, 16393);
pub const DMLERR_NO_CONV_ESTABLISHED = @as(u32, 16394);
pub const DMLERR_POKEACKTIMEOUT = @as(u32, 16395);
pub const DMLERR_POSTMSG_FAILED = @as(u32, 16396);
pub const DMLERR_REENTRANCY = @as(u32, 16397);
pub const DMLERR_SERVER_DIED = @as(u32, 16398);
pub const DMLERR_SYS_ERROR = @as(u32, 16399);
pub const DMLERR_UNADVACKTIMEOUT = @as(u32, 16400);
pub const DMLERR_UNFOUND_QUEUE_ID = @as(u32, 16401);
pub const DMLERR_LAST = @as(u32, 16401);
pub const MH_CREATE = @as(u32, 1);
pub const MH_KEEP = @as(u32, 2);
pub const MH_DELETE = @as(u32, 3);
pub const MH_CLEANUP = @as(u32, 4);
pub const MAX_MONITORS = @as(u32, 4);
pub const MF_MASK = @as(u32, 4278190080);

//--------------------------------------------------------------------------------
// Section: Types (30)
//--------------------------------------------------------------------------------
pub const DDE_ENABLE_CALLBACK_CMD = enum(u32) {
    ENABLEALL = 0,
    ENABLEONE = 128,
    DISABLE = 8,
    QUERYWAITING = 2,
};
pub const EC_ENABLEALL = DDE_ENABLE_CALLBACK_CMD.ENABLEALL;
pub const EC_ENABLEONE = DDE_ENABLE_CALLBACK_CMD.ENABLEONE;
pub const EC_DISABLE = DDE_ENABLE_CALLBACK_CMD.DISABLE;
pub const EC_QUERYWAITING = DDE_ENABLE_CALLBACK_CMD.QUERYWAITING;

pub const DDE_INITIALIZE_COMMAND = enum(u32) {
    APPCLASS_MONITOR = 1,
    APPCLASS_STANDARD = 0,
    APPCMD_CLIENTONLY = 16,
    APPCMD_FILTERINITS = 32,
    CBF_FAIL_ALLSVRXACTIONS = 258048,
    CBF_FAIL_ADVISES = 16384,
    CBF_FAIL_CONNECTIONS = 8192,
    CBF_FAIL_EXECUTES = 32768,
    CBF_FAIL_POKES = 65536,
    CBF_FAIL_REQUESTS = 131072,
    CBF_FAIL_SELFCONNECTIONS = 4096,
    CBF_SKIP_ALLNOTIFICATIONS = 3932160,
    CBF_SKIP_CONNECT_CONFIRMS = 262144,
    CBF_SKIP_DISCONNECTS = 2097152,
    CBF_SKIP_REGISTRATIONS = 524288,
    CBF_SKIP_UNREGISTRATIONS = 1048576,
    MF_CALLBACKS = 134217728,
    MF_CONV = 1073741824,
    MF_ERRORS = 268435456,
    MF_HSZ_INFO = 16777216,
    MF_LINKS = 536870912,
    MF_POSTMSGS = 67108864,
    MF_SENDMSGS = 33554432,
    _,
    pub fn initFlags(o: struct {
        APPCLASS_MONITOR: u1 = 0,
        APPCLASS_STANDARD: u1 = 0,
        APPCMD_CLIENTONLY: u1 = 0,
        APPCMD_FILTERINITS: u1 = 0,
        CBF_FAIL_ALLSVRXACTIONS: u1 = 0,
        CBF_FAIL_ADVISES: u1 = 0,
        CBF_FAIL_CONNECTIONS: u1 = 0,
        CBF_FAIL_EXECUTES: u1 = 0,
        CBF_FAIL_POKES: u1 = 0,
        CBF_FAIL_REQUESTS: u1 = 0,
        CBF_FAIL_SELFCONNECTIONS: u1 = 0,
        CBF_SKIP_ALLNOTIFICATIONS: u1 = 0,
        CBF_SKIP_CONNECT_CONFIRMS: u1 = 0,
        CBF_SKIP_DISCONNECTS: u1 = 0,
        CBF_SKIP_REGISTRATIONS: u1 = 0,
        CBF_SKIP_UNREGISTRATIONS: u1 = 0,
        MF_CALLBACKS: u1 = 0,
        MF_CONV: u1 = 0,
        MF_ERRORS: u1 = 0,
        MF_HSZ_INFO: u1 = 0,
        MF_LINKS: u1 = 0,
        MF_POSTMSGS: u1 = 0,
        MF_SENDMSGS: u1 = 0,
    }) DDE_INITIALIZE_COMMAND {
        return @enumFromInt(DDE_INITIALIZE_COMMAND, (if (o.APPCLASS_MONITOR == 1) @intFromEnum(DDE_INITIALIZE_COMMAND.APPCLASS_MONITOR) else 0) | (if (o.APPCLASS_STANDARD == 1) @intFromEnum(DDE_INITIALIZE_COMMAND.APPCLASS_STANDARD) else 0) | (if (o.APPCMD_CLIENTONLY == 1) @intFromEnum(DDE_INITIALIZE_COMMAND.APPCMD_CLIENTONLY) else 0) | (if (o.APPCMD_FILTERINITS == 1) @intFromEnum(DDE_INITIALIZE_COMMAND.APPCMD_FILTERINITS) else 0) | (if (o.CBF_FAIL_ALLSVRXACTIONS == 1) @intFromEnum(DDE_INITIALIZE_COMMAND.CBF_FAIL_ALLSVRXACTIONS) else 0) | (if (o.CBF_FAIL_ADVISES == 1) @intFromEnum(DDE_INITIALIZE_COMMAND.CBF_FAIL_ADVISES) else 0) | (if (o.CBF_FAIL_CONNECTIONS == 1) @intFromEnum(DDE_INITIALIZE_COMMAND.CBF_FAIL_CONNECTIONS) else 0) | (if (o.CBF_FAIL_EXECUTES == 1) @intFromEnum(DDE_INITIALIZE_COMMAND.CBF_FAIL_EXECUTES) else 0) | (if (o.CBF_FAIL_POKES == 1) @intFromEnum(DDE_INITIALIZE_COMMAND.CBF_FAIL_POKES) else 0) | (if (o.CBF_FAIL_REQUESTS == 1) @intFromEnum(DDE_INITIALIZE_COMMAND.CBF_FAIL_REQUESTS) else 0) | (if (o.CBF_FAIL_SELFCONNECTIONS == 1) @intFromEnum(DDE_INITIALIZE_COMMAND.CBF_FAIL_SELFCONNECTIONS) else 0) | (if (o.CBF_SKIP_ALLNOTIFICATIONS == 1) @intFromEnum(DDE_INITIALIZE_COMMAND.CBF_SKIP_ALLNOTIFICATIONS) else 0) | (if (o.CBF_SKIP_CONNECT_CONFIRMS == 1) @intFromEnum(DDE_INITIALIZE_COMMAND.CBF_SKIP_CONNECT_CONFIRMS) else 0) | (if (o.CBF_SKIP_DISCONNECTS == 1) @intFromEnum(DDE_INITIALIZE_COMMAND.CBF_SKIP_DISCONNECTS) else 0) | (if (o.CBF_SKIP_REGISTRATIONS == 1) @intFromEnum(DDE_INITIALIZE_COMMAND.CBF_SKIP_REGISTRATIONS) else 0) | (if (o.CBF_SKIP_UNREGISTRATIONS == 1) @intFromEnum(DDE_INITIALIZE_COMMAND.CBF_SKIP_UNREGISTRATIONS) else 0) | (if (o.MF_CALLBACKS == 1) @intFromEnum(DDE_INITIALIZE_COMMAND.MF_CALLBACKS) else 0) | (if (o.MF_CONV == 1) @intFromEnum(DDE_INITIALIZE_COMMAND.MF_CONV) else 0) | (if (o.MF_ERRORS == 1) @intFromEnum(DDE_INITIALIZE_COMMAND.MF_ERRORS) else 0) | (if (o.MF_HSZ_INFO == 1) @intFromEnum(DDE_INITIALIZE_COMMAND.MF_HSZ_INFO) else 0) | (if (o.MF_LINKS == 1) @intFromEnum(DDE_INITIALIZE_COMMAND.MF_LINKS) else 0) | (if (o.MF_POSTMSGS == 1) @intFromEnum(DDE_INITIALIZE_COMMAND.MF_POSTMSGS) else 0) | (if (o.MF_SENDMSGS == 1) @intFromEnum(DDE_INITIALIZE_COMMAND.MF_SENDMSGS) else 0));
    }
};
pub const APPCLASS_MONITOR = DDE_INITIALIZE_COMMAND.APPCLASS_MONITOR;
pub const APPCLASS_STANDARD = DDE_INITIALIZE_COMMAND.APPCLASS_STANDARD;
pub const APPCMD_CLIENTONLY = DDE_INITIALIZE_COMMAND.APPCMD_CLIENTONLY;
pub const APPCMD_FILTERINITS = DDE_INITIALIZE_COMMAND.APPCMD_FILTERINITS;
pub const CBF_FAIL_ALLSVRXACTIONS = DDE_INITIALIZE_COMMAND.CBF_FAIL_ALLSVRXACTIONS;
pub const CBF_FAIL_ADVISES = DDE_INITIALIZE_COMMAND.CBF_FAIL_ADVISES;
pub const CBF_FAIL_CONNECTIONS = DDE_INITIALIZE_COMMAND.CBF_FAIL_CONNECTIONS;
pub const CBF_FAIL_EXECUTES = DDE_INITIALIZE_COMMAND.CBF_FAIL_EXECUTES;
pub const CBF_FAIL_POKES = DDE_INITIALIZE_COMMAND.CBF_FAIL_POKES;
pub const CBF_FAIL_REQUESTS = DDE_INITIALIZE_COMMAND.CBF_FAIL_REQUESTS;
pub const CBF_FAIL_SELFCONNECTIONS = DDE_INITIALIZE_COMMAND.CBF_FAIL_SELFCONNECTIONS;
pub const CBF_SKIP_ALLNOTIFICATIONS = DDE_INITIALIZE_COMMAND.CBF_SKIP_ALLNOTIFICATIONS;
pub const CBF_SKIP_CONNECT_CONFIRMS = DDE_INITIALIZE_COMMAND.CBF_SKIP_CONNECT_CONFIRMS;
pub const CBF_SKIP_DISCONNECTS = DDE_INITIALIZE_COMMAND.CBF_SKIP_DISCONNECTS;
pub const CBF_SKIP_REGISTRATIONS = DDE_INITIALIZE_COMMAND.CBF_SKIP_REGISTRATIONS;
pub const CBF_SKIP_UNREGISTRATIONS = DDE_INITIALIZE_COMMAND.CBF_SKIP_UNREGISTRATIONS;
pub const MF_CALLBACKS = DDE_INITIALIZE_COMMAND.MF_CALLBACKS;
pub const MF_CONV = DDE_INITIALIZE_COMMAND.MF_CONV;
pub const MF_ERRORS = DDE_INITIALIZE_COMMAND.MF_ERRORS;
pub const MF_HSZ_INFO = DDE_INITIALIZE_COMMAND.MF_HSZ_INFO;
pub const MF_LINKS = DDE_INITIALIZE_COMMAND.MF_LINKS;
pub const MF_POSTMSGS = DDE_INITIALIZE_COMMAND.MF_POSTMSGS;
pub const MF_SENDMSGS = DDE_INITIALIZE_COMMAND.MF_SENDMSGS;

pub const DDE_NAME_SERVICE_CMD = enum(u32) {
    REGISTER = 1,
    UNREGISTER = 2,
    FILTERON = 4,
    FILTEROFF = 8,
};
pub const DNS_REGISTER = DDE_NAME_SERVICE_CMD.REGISTER;
pub const DNS_UNREGISTER = DDE_NAME_SERVICE_CMD.UNREGISTER;
pub const DNS_FILTERON = DDE_NAME_SERVICE_CMD.FILTERON;
pub const DNS_FILTEROFF = DDE_NAME_SERVICE_CMD.FILTEROFF;

pub const DDE_CLIENT_TRANSACTION_TYPE = enum(u32) {
    ADVSTART = 4144,
    ADVSTOP = 32832,
    EXECUTE = 16464,
    POKE = 16528,
    REQUEST = 8368,
    ADVDATA = 16400,
    ADVREQ = 8226,
    CONNECT = 4194,
    CONNECT_CONFIRM = 32882,
    DISCONNECT = 32962,
    MONITOR = 33010,
    REGISTER = 32930,
    UNREGISTER = 32978,
    WILDCONNECT = 8418,
    XACT_COMPLETE = 32896,
};
pub const XTYP_ADVSTART = DDE_CLIENT_TRANSACTION_TYPE.ADVSTART;
pub const XTYP_ADVSTOP = DDE_CLIENT_TRANSACTION_TYPE.ADVSTOP;
pub const XTYP_EXECUTE = DDE_CLIENT_TRANSACTION_TYPE.EXECUTE;
pub const XTYP_POKE = DDE_CLIENT_TRANSACTION_TYPE.POKE;
pub const XTYP_REQUEST = DDE_CLIENT_TRANSACTION_TYPE.REQUEST;
pub const XTYP_ADVDATA = DDE_CLIENT_TRANSACTION_TYPE.ADVDATA;
pub const XTYP_ADVREQ = DDE_CLIENT_TRANSACTION_TYPE.ADVREQ;
pub const XTYP_CONNECT = DDE_CLIENT_TRANSACTION_TYPE.CONNECT;
pub const XTYP_CONNECT_CONFIRM = DDE_CLIENT_TRANSACTION_TYPE.CONNECT_CONFIRM;
pub const XTYP_DISCONNECT = DDE_CLIENT_TRANSACTION_TYPE.DISCONNECT;
pub const XTYP_MONITOR = DDE_CLIENT_TRANSACTION_TYPE.MONITOR;
pub const XTYP_REGISTER = DDE_CLIENT_TRANSACTION_TYPE.REGISTER;
pub const XTYP_UNREGISTER = DDE_CLIENT_TRANSACTION_TYPE.UNREGISTER;
pub const XTYP_WILDCONNECT = DDE_CLIENT_TRANSACTION_TYPE.WILDCONNECT;
pub const XTYP_XACT_COMPLETE = DDE_CLIENT_TRANSACTION_TYPE.XACT_COMPLETE;

pub const CONVINFO_CONVERSATION_STATE = enum(u32) {
    ADVACKRCVD = 13,
    ADVDATAACKRCVD = 16,
    ADVDATASENT = 15,
    ADVSENT = 11,
    CONNECTED = 2,
    DATARCVD = 6,
    EXECACKRCVD = 10,
    EXECSENT = 9,
    INCOMPLETE = 1,
    INIT1 = 3,
    INIT2 = 4,
    NULL = 0,
    POKEACKRCVD = 8,
    POKESENT = 7,
    REQSENT = 5,
    UNADVACKRCVD = 14,
    UNADVSENT = 12,
};
pub const XST_ADVACKRCVD = CONVINFO_CONVERSATION_STATE.ADVACKRCVD;
pub const XST_ADVDATAACKRCVD = CONVINFO_CONVERSATION_STATE.ADVDATAACKRCVD;
pub const XST_ADVDATASENT = CONVINFO_CONVERSATION_STATE.ADVDATASENT;
pub const XST_ADVSENT = CONVINFO_CONVERSATION_STATE.ADVSENT;
pub const XST_CONNECTED = CONVINFO_CONVERSATION_STATE.CONNECTED;
pub const XST_DATARCVD = CONVINFO_CONVERSATION_STATE.DATARCVD;
pub const XST_EXECACKRCVD = CONVINFO_CONVERSATION_STATE.EXECACKRCVD;
pub const XST_EXECSENT = CONVINFO_CONVERSATION_STATE.EXECSENT;
pub const XST_INCOMPLETE = CONVINFO_CONVERSATION_STATE.INCOMPLETE;
pub const XST_INIT1 = CONVINFO_CONVERSATION_STATE.INIT1;
pub const XST_INIT2 = CONVINFO_CONVERSATION_STATE.INIT2;
pub const XST_NULL = CONVINFO_CONVERSATION_STATE.NULL;
pub const XST_POKEACKRCVD = CONVINFO_CONVERSATION_STATE.POKEACKRCVD;
pub const XST_POKESENT = CONVINFO_CONVERSATION_STATE.POKESENT;
pub const XST_REQSENT = CONVINFO_CONVERSATION_STATE.REQSENT;
pub const XST_UNADVACKRCVD = CONVINFO_CONVERSATION_STATE.UNADVACKRCVD;
pub const XST_UNADVSENT = CONVINFO_CONVERSATION_STATE.UNADVSENT;

pub const CONVINFO_STATUS = enum(u32) {
    ADVISE = 2,
    BLOCKED = 8,
    BLOCKNEXT = 128,
    CLIENT = 16,
    CONNECTED = 1,
    INLIST = 64,
    ISLOCAL = 4,
    ISSELF = 256,
    TERMINATED = 32,
    _,
    pub fn initFlags(o: struct {
        ADVISE: u1 = 0,
        BLOCKED: u1 = 0,
        BLOCKNEXT: u1 = 0,
        CLIENT: u1 = 0,
        CONNECTED: u1 = 0,
        INLIST: u1 = 0,
        ISLOCAL: u1 = 0,
        ISSELF: u1 = 0,
        TERMINATED: u1 = 0,
    }) CONVINFO_STATUS {
        return @enumFromInt(CONVINFO_STATUS, (if (o.ADVISE == 1) @intFromEnum(CONVINFO_STATUS.ADVISE) else 0) | (if (o.BLOCKED == 1) @intFromEnum(CONVINFO_STATUS.BLOCKED) else 0) | (if (o.BLOCKNEXT == 1) @intFromEnum(CONVINFO_STATUS.BLOCKNEXT) else 0) | (if (o.CLIENT == 1) @intFromEnum(CONVINFO_STATUS.CLIENT) else 0) | (if (o.CONNECTED == 1) @intFromEnum(CONVINFO_STATUS.CONNECTED) else 0) | (if (o.INLIST == 1) @intFromEnum(CONVINFO_STATUS.INLIST) else 0) | (if (o.ISLOCAL == 1) @intFromEnum(CONVINFO_STATUS.ISLOCAL) else 0) | (if (o.ISSELF == 1) @intFromEnum(CONVINFO_STATUS.ISSELF) else 0) | (if (o.TERMINATED == 1) @intFromEnum(CONVINFO_STATUS.TERMINATED) else 0));
    }
};
pub const ST_ADVISE = CONVINFO_STATUS.ADVISE;
pub const ST_BLOCKED = CONVINFO_STATUS.BLOCKED;
pub const ST_BLOCKNEXT = CONVINFO_STATUS.BLOCKNEXT;
pub const ST_CLIENT = CONVINFO_STATUS.CLIENT;
pub const ST_CONNECTED = CONVINFO_STATUS.CONNECTED;
pub const ST_INLIST = CONVINFO_STATUS.INLIST;
pub const ST_ISLOCAL = CONVINFO_STATUS.ISLOCAL;
pub const ST_ISSELF = CONVINFO_STATUS.ISSELF;
pub const ST_TERMINATED = CONVINFO_STATUS.TERMINATED;

pub const HSZ = *opaque {};

pub const HCONV = *opaque {};

pub const HCONVLIST = *opaque {};

pub const HDDEDATA = *opaque {};

pub const DDEACK = extern struct {
    _bitfield: u16,
};

pub const DDEADVISE = extern struct {
    _bitfield: u16,
    cfFormat: i16,
};

pub const DDEDATA = extern struct {
    _bitfield: u16,
    cfFormat: i16,
    Value: [1]u8,
};

pub const DDEPOKE = extern struct {
    _bitfield: u16,
    cfFormat: i16,
    Value: [1]u8,
};

pub const DDELN = extern struct {
    _bitfield: u16,
    cfFormat: i16,
};

pub const DDEUP = extern struct {
    _bitfield: u16,
    cfFormat: i16,
    rgb: [1]u8,
};

pub const HSZPAIR = extern struct {
    hszSvc: ?HSZ,
    hszTopic: ?HSZ,
};

pub const CONVCONTEXT = extern struct {
    cb: u32,
    wFlags: u32,
    wCountryID: u32,
    iCodePage: i32,
    dwLangID: u32,
    dwSecurity: u32,
    qos: SECURITY_QUALITY_OF_SERVICE,
};

pub const CONVINFO = extern struct {
    cb: u32,
    hUser: usize,
    hConvPartner: ?HCONV,
    hszSvcPartner: ?HSZ,
    hszServiceReq: ?HSZ,
    hszTopic: ?HSZ,
    hszItem: ?HSZ,
    wFmt: u32,
    wType: DDE_CLIENT_TRANSACTION_TYPE,
    wStatus: CONVINFO_STATUS,
    wConvst: CONVINFO_CONVERSATION_STATE,
    wLastError: u32,
    hConvList: ?HCONVLIST,
    ConvCtxt: CONVCONTEXT,
    hwnd: ?HWND,
    hwndPartner: ?HWND,
};

pub const PFNCALLBACK = switch (@import("builtin").zig_backend) {
    .stage1 => fn (
        wType: u32,
        wFmt: u32,
        hConv: ?HCONV,
        hsz1: ?HSZ,
        hsz2: ?HSZ,
        hData: ?HDDEDATA,
        dwData1: usize,
        dwData2: usize,
    ) callconv(@import("std").os.windows.WINAPI) ?HDDEDATA,
    else => *const fn (
        wType: u32,
        wFmt: u32,
        hConv: ?HCONV,
        hsz1: ?HSZ,
        hsz2: ?HSZ,
        hData: ?HDDEDATA,
        dwData1: usize,
        dwData2: usize,
    ) callconv(@import("std").os.windows.WINAPI) ?HDDEDATA,
};

pub const DDEML_MSG_HOOK_DATA = extern struct {
    uiLo: usize,
    uiHi: usize,
    cbData: u32,
    Data: [8]u32,
};

pub const MONMSGSTRUCT = extern struct {
    cb: u32,
    hwndTo: ?HWND,
    dwTime: u32,
    hTask: ?HANDLE,
    wMsg: u32,
    wParam: WPARAM,
    lParam: LPARAM,
    dmhd: DDEML_MSG_HOOK_DATA,
};

pub const MONCBSTRUCT = extern struct {
    cb: u32,
    dwTime: u32,
    hTask: ?HANDLE,
    dwRet: u32,
    wType: u32,
    wFmt: u32,
    hConv: ?HCONV,
    hsz1: ?HSZ,
    hsz2: ?HSZ,
    hData: ?HDDEDATA,
    dwData1: usize,
    dwData2: usize,
    cc: CONVCONTEXT,
    cbData: u32,
    Data: [8]u32,
};

pub const MONHSZSTRUCTA = extern struct {
    cb: u32,
    fsAction: BOOL,
    dwTime: u32,
    hsz: ?HSZ,
    hTask: ?HANDLE,
    str: [1]CHAR,
};

pub const MONHSZSTRUCTW = extern struct {
    cb: u32,
    fsAction: BOOL,
    dwTime: u32,
    hsz: ?HSZ,
    hTask: ?HANDLE,
    str: [1]u16,
};

pub const MONERRSTRUCT = extern struct {
    cb: u32,
    wLastError: u32,
    dwTime: u32,
    hTask: ?HANDLE,
};

pub const MONLINKSTRUCT = extern struct {
    cb: u32,
    dwTime: u32,
    hTask: ?HANDLE,
    fEstablished: BOOL,
    fNoData: BOOL,
    hszSvc: ?HSZ,
    hszTopic: ?HSZ,
    hszItem: ?HSZ,
    wFmt: u32,
    fServer: BOOL,
    hConvServer: ?HCONV,
    hConvClient: ?HCONV,
};

pub const MONCONVSTRUCT = extern struct {
    cb: u32,
    fConnect: BOOL,
    dwTime: u32,
    hTask: ?HANDLE,
    hszSvc: ?HSZ,
    hszTopic: ?HSZ,
    hConvClient: ?HCONV,
    hConvServer: ?HCONV,
};

pub const METAFILEPICT = extern struct {
    mm: i32,
    xExt: i32,
    yExt: i32,
    hMF: ?HMETAFILE,
};

pub const COPYDATASTRUCT = extern struct {
    dwData: usize,
    cbData: u32,
    lpData: ?*anyopaque,
};

//--------------------------------------------------------------------------------
// Section: Functions (77)
//--------------------------------------------------------------------------------
// TODO: this type is limited to platform 'windows5.0'
pub extern "user32" fn DdeSetQualityOfService(
    hwndClient: ?HWND,
    pqosNew: ?*const SECURITY_QUALITY_OF_SERVICE,
    pqosPrev: ?*SECURITY_QUALITY_OF_SERVICE,
) callconv(@import("std").os.windows.WINAPI) BOOL;

// TODO: this type is limited to platform 'windows5.0'
pub extern "user32" fn ImpersonateDdeClientWindow(
    hWndClient: ?HWND,
    hWndServer: ?HWND,
) callconv(@import("std").os.windows.WINAPI) BOOL;

// TODO: this type is limited to platform 'windows5.0'
pub extern "user32" fn PackDDElParam(
    msg: u32,
    uiLo: usize,
    uiHi: usize,
) callconv(@import("std").os.windows.WINAPI) LPARAM;

// TODO: this type is limited to platform 'windows5.0'
pub extern "user32" fn UnpackDDElParam(
    msg: u32,
    lParam: LPARAM,
    puiLo: ?*usize,
    puiHi: ?*usize,
) callconv(@import("std").os.windows.WINAPI) BOOL;

// TODO: this type is limited to platform 'windows5.0'
pub extern "user32" fn FreeDDElParam(
    msg: u32,
    lParam: LPARAM,
) callconv(@import("std").os.windows.WINAPI) BOOL;

// TODO: this type is limited to platform 'windows5.0'
pub extern "user32" fn ReuseDDElParam(
    lParam: LPARAM,
    msgIn: u32,
    msgOut: u32,
    uiLo: usize,
    uiHi: usize,
) callconv(@import("std").os.windows.WINAPI) LPARAM;

// TODO: this type is limited to platform 'windows5.0'
pub extern "user32" fn DdeInitializeA(
    pidInst: ?*u32,
    pfnCallback: ?PFNCALLBACK,
    afCmd: DDE_INITIALIZE_COMMAND,
    ulRes: u32,
) callconv(@import("std").os.windows.WINAPI) u32;

// TODO: this type is limited to platform 'windows5.0'
pub extern "user32" fn DdeInitializeW(
    pidInst: ?*u32,
    pfnCallback: ?PFNCALLBACK,
    afCmd: DDE_INITIALIZE_COMMAND,
    ulRes: u32,
) callconv(@import("std").os.windows.WINAPI) u32;

// TODO: this type is limited to platform 'windows5.0'
pub extern "user32" fn DdeUninitialize(
    idInst: u32,
) callconv(@import("std").os.windows.WINAPI) BOOL;

// TODO: this type is limited to platform 'windows5.0'
pub extern "user32" fn DdeConnectList(
    idInst: u32,
    hszService: ?HSZ,
    hszTopic: ?HSZ,
    hConvList: ?HCONVLIST,
    pCC: ?*CONVCONTEXT,
) callconv(@import("std").os.windows.WINAPI) ?HCONVLIST;

// TODO: this type is limited to platform 'windows5.0'
pub extern "user32" fn DdeQueryNextServer(
    hConvList: ?HCONVLIST,
    hConvPrev: ?HCONV,
) callconv(@import("std").os.windows.WINAPI) ?HCONV;

// TODO: this type is limited to platform 'windows5.0'
pub extern "user32" fn DdeDisconnectList(
    hConvList: ?HCONVLIST,
) callconv(@import("std").os.windows.WINAPI) BOOL;

// TODO: this type is limited to platform 'windows5.0'
pub extern "user32" fn DdeConnect(
    idInst: u32,
    hszService: ?HSZ,
    hszTopic: ?HSZ,
    pCC: ?*CONVCONTEXT,
) callconv(@import("std").os.windows.WINAPI) ?HCONV;

// TODO: this type is limited to platform 'windows5.0'
pub extern "user32" fn DdeDisconnect(
    hConv: ?HCONV,
) callconv(@import("std").os.windows.WINAPI) BOOL;

// TODO: this type is limited to platform 'windows5.0'
pub extern "user32" fn DdeReconnect(
    hConv: ?HCONV,
) callconv(@import("std").os.windows.WINAPI) ?HCONV;

// TODO: this type is limited to platform 'windows5.0'
pub extern "user32" fn DdeQueryConvInfo(
    hConv: ?HCONV,
    idTransaction: u32,
    pConvInfo: ?*CONVINFO,
) callconv(@import("std").os.windows.WINAPI) u32;

// TODO: this type is limited to platform 'windows5.0'
pub extern "user32" fn DdeSetUserHandle(
    hConv: ?HCONV,
    id: u32,
    hUser: usize,
) callconv(@import("std").os.windows.WINAPI) BOOL;

// TODO: this type is limited to platform 'windows5.0'
pub extern "user32" fn DdeAbandonTransaction(
    idInst: u32,
    hConv: ?HCONV,
    idTransaction: u32,
) callconv(@import("std").os.windows.WINAPI) BOOL;

// TODO: this type is limited to platform 'windows5.0'
pub extern "user32" fn DdePostAdvise(
    idInst: u32,
    hszTopic: ?HSZ,
    hszItem: ?HSZ,
) callconv(@import("std").os.windows.WINAPI) BOOL;

// TODO: this type is limited to platform 'windows5.0'
pub extern "user32" fn DdeEnableCallback(
    idInst: u32,
    hConv: ?HCONV,
    wCmd: DDE_ENABLE_CALLBACK_CMD,
) callconv(@import("std").os.windows.WINAPI) BOOL;

// TODO: this type is limited to platform 'windows5.0'
pub extern "user32" fn DdeImpersonateClient(
    hConv: ?HCONV,
) callconv(@import("std").os.windows.WINAPI) BOOL;

// TODO: this type is limited to platform 'windows5.0'
pub extern "user32" fn DdeNameService(
    idInst: u32,
    hsz1: ?HSZ,
    hsz2: ?HSZ,
    afCmd: DDE_NAME_SERVICE_CMD,
) callconv(@import("std").os.windows.WINAPI) ?HDDEDATA;

// TODO: this type is limited to platform 'windows5.0'
pub extern "user32" fn DdeClientTransaction(
    pData: ?*u8,
    cbData: u32,
    hConv: ?HCONV,
    hszItem: ?HSZ,
    wFmt: u32,
    wType: DDE_CLIENT_TRANSACTION_TYPE,
    dwTimeout: u32,
    pdwResult: ?*u32,
) callconv(@import("std").os.windows.WINAPI) ?HDDEDATA;

// TODO: this type is limited to platform 'windows5.0'
pub extern "user32" fn DdeCreateDataHandle(
    idInst: u32,
    // TODO: what to do with BytesParamIndex 2?
    pSrc: ?*u8,
    cb: u32,
    cbOff: u32,
    hszItem: ?HSZ,
    wFmt: u32,
    afCmd: u32,
) callconv(@import("std").os.windows.WINAPI) ?HDDEDATA;

// TODO: this type is limited to platform 'windows5.0'
pub extern "user32" fn DdeAddData(
    hData: ?HDDEDATA,
    // TODO: what to do with BytesParamIndex 2?
    pSrc: ?*u8,
    cb: u32,
    cbOff: u32,
) callconv(@import("std").os.windows.WINAPI) ?HDDEDATA;

// TODO: this type is limited to platform 'windows5.0'
pub extern "user32" fn DdeGetData(
    hData: ?HDDEDATA,
    // TODO: what to do with BytesParamIndex 2?
    pDst: ?*u8,
    cbMax: u32,
    cbOff: u32,
) callconv(@import("std").os.windows.WINAPI) u32;

// TODO: this type is limited to platform 'windows5.0'
pub extern "user32" fn DdeAccessData(
    hData: ?HDDEDATA,
    pcbDataSize: ?*u32,
) callconv(@import("std").os.windows.WINAPI) ?*u8;

// TODO: this type is limited to platform 'windows5.0'
pub extern "user32" fn DdeUnaccessData(
    hData: ?HDDEDATA,
) callconv(@import("std").os.windows.WINAPI) BOOL;

// TODO: this type is limited to platform 'windows5.0'
pub extern "user32" fn DdeFreeDataHandle(
    hData: ?HDDEDATA,
) callconv(@import("std").os.windows.WINAPI) BOOL;

// TODO: this type is limited to platform 'windows5.0'
pub extern "user32" fn DdeGetLastError(
    idInst: u32,
) callconv(@import("std").os.windows.WINAPI) u32;

// TODO: this type is limited to platform 'windows5.0'
pub extern "user32" fn DdeCreateStringHandleA(
    idInst: u32,
    psz: ?[*:0]const u8,
    iCodePage: i32,
) callconv(@import("std").os.windows.WINAPI) ?HSZ;

// TODO: this type is limited to platform 'windows5.0'
pub extern "user32" fn DdeCreateStringHandleW(
    idInst: u32,
    psz: ?[*:0]const u16,
    iCodePage: i32,
) callconv(@import("std").os.windows.WINAPI) ?HSZ;

// TODO: this type is limited to platform 'windows5.0'
pub extern "user32" fn DdeQueryStringA(
    idInst: u32,
    hsz: ?HSZ,
    psz: ?[*:0]u8,
    cchMax: u32,
    iCodePage: i32,
) callconv(@import("std").os.windows.WINAPI) u32;

// TODO: this type is limited to platform 'windows5.0'
pub extern "user32" fn DdeQueryStringW(
    idInst: u32,
    hsz: ?HSZ,
    psz: ?[*:0]u16,
    cchMax: u32,
    iCodePage: i32,
) callconv(@import("std").os.windows.WINAPI) u32;

// TODO: this type is limited to platform 'windows5.0'
pub extern "user32" fn DdeFreeStringHandle(
    idInst: u32,
    hsz: ?HSZ,
) callconv(@import("std").os.windows.WINAPI) BOOL;

// TODO: this type is limited to platform 'windows5.0'
pub extern "user32" fn DdeKeepStringHandle(
    idInst: u32,
    hsz: ?HSZ,
) callconv(@import("std").os.windows.WINAPI) BOOL;

// TODO: this type is limited to platform 'windows5.0'
pub extern "user32" fn DdeCmpStringHandles(
    hsz1: ?HSZ,
    hsz2: ?HSZ,
) callconv(@import("std").os.windows.WINAPI) i32;

// TODO: this type is limited to platform 'windows5.0'
pub extern "gdi32" fn SetWinMetaFileBits(
    nSize: u32,
    // TODO: what to do with BytesParamIndex 0?
    lpMeta16Data: ?*const u8,
    hdcRef: ?HDC,
    lpMFP: ?*const METAFILEPICT,
) callconv(@import("std").os.windows.WINAPI) ?HENHMETAFILE;

// TODO: this type is limited to platform 'windows5.0'
pub extern "user32" fn OpenClipboard(
    hWndNewOwner: ?HWND,
) callconv(@import("std").os.windows.WINAPI) BOOL;

// TODO: this type is limited to platform 'windows5.0'
pub extern "user32" fn CloseClipboard() callconv(@import("std").os.windows.WINAPI) BOOL;

// TODO: this type is limited to platform 'windows5.0'
pub extern "user32" fn GetClipboardSequenceNumber() callconv(@import("std").os.windows.WINAPI) u32;

// TODO: this type is limited to platform 'windows5.0'
pub extern "user32" fn GetClipboardOwner() callconv(@import("std").os.windows.WINAPI) ?HWND;

// TODO: this type is limited to platform 'windows5.0'
pub extern "user32" fn SetClipboardViewer(
    hWndNewViewer: ?HWND,
) callconv(@import("std").os.windows.WINAPI) ?HWND;

// TODO: this type is limited to platform 'windows5.0'
pub extern "user32" fn GetClipboardViewer() callconv(@import("std").os.windows.WINAPI) ?HWND;

// TODO: this type is limited to platform 'windows5.0'
pub extern "user32" fn ChangeClipboardChain(
    hWndRemove: ?HWND,
    hWndNewNext: ?HWND,
) callconv(@import("std").os.windows.WINAPI) BOOL;

// TODO: this type is limited to platform 'windows5.0'
pub extern "user32" fn SetClipboardData(
    uFormat: u32,
    hMem: ?HANDLE,
) callconv(@import("std").os.windows.WINAPI) ?HANDLE;

// TODO: this type is limited to platform 'windows5.0'
pub extern "user32" fn GetClipboardData(
    uFormat: u32,
) callconv(@import("std").os.windows.WINAPI) ?HANDLE;

// TODO: this type is limited to platform 'windows5.0'
pub extern "user32" fn RegisterClipboardFormatA(
    lpszFormat: ?[*:0]const u8,
) callconv(@import("std").os.windows.WINAPI) u32;

// TODO: this type is limited to platform 'windows5.0'
pub extern "user32" fn RegisterClipboardFormatW(
    lpszFormat: ?[*:0]const u16,
) callconv(@import("std").os.windows.WINAPI) u32;

// TODO: this type is limited to platform 'windows5.0'
pub extern "user32" fn CountClipboardFormats() callconv(@import("std").os.windows.WINAPI) i32;

// TODO: this type is limited to platform 'windows5.0'
pub extern "user32" fn EnumClipboardFormats(
    format: u32,
) callconv(@import("std").os.windows.WINAPI) u32;

// TODO: this type is limited to platform 'windows5.0'
pub extern "user32" fn GetClipboardFormatNameA(
    format: u32,
    lpszFormatName: [*:0]u8,
    cchMaxCount: i32,
) callconv(@import("std").os.windows.WINAPI) i32;

// TODO: this type is limited to platform 'windows5.0'
pub extern "user32" fn GetClipboardFormatNameW(
    format: u32,
    lpszFormatName: [*:0]u16,
    cchMaxCount: i32,
) callconv(@import("std").os.windows.WINAPI) i32;

// TODO: this type is limited to platform 'windows5.0'
pub extern "user32" fn EmptyClipboard() callconv(@import("std").os.windows.WINAPI) BOOL;

// TODO: this type is limited to platform 'windows5.0'
pub extern "user32" fn IsClipboardFormatAvailable(
    format: u32,
) callconv(@import("std").os.windows.WINAPI) BOOL;

// TODO: this type is limited to platform 'windows5.0'
pub extern "user32" fn GetPriorityClipboardFormat(
    paFormatPriorityList: [*]u32,
    cFormats: i32,
) callconv(@import("std").os.windows.WINAPI) i32;

// TODO: this type is limited to platform 'windows5.0'
pub extern "user32" fn GetOpenClipboardWindow() callconv(@import("std").os.windows.WINAPI) ?HWND;

// TODO: this type is limited to platform 'windows6.0.6000'
pub extern "user32" fn AddClipboardFormatListener(
    hwnd: ?HWND,
) callconv(@import("std").os.windows.WINAPI) BOOL;

// TODO: this type is limited to platform 'windows6.0.6000'
pub extern "user32" fn RemoveClipboardFormatListener(
    hwnd: ?HWND,
) callconv(@import("std").os.windows.WINAPI) BOOL;

// TODO: this type is limited to platform 'windows6.0.6000'
pub extern "user32" fn GetUpdatedClipboardFormats(
    lpuiFormats: [*]u32,
    cFormats: u32,
    pcFormatsOut: ?*u32,
) callconv(@import("std").os.windows.WINAPI) BOOL;

// TODO: this type is limited to platform 'windows5.0'
pub extern "kernel32" fn GlobalDeleteAtom(
    nAtom: u16,
) callconv(@import("std").os.windows.WINAPI) u16;

// TODO: this type is limited to platform 'windows5.0'
pub extern "kernel32" fn InitAtomTable(
    nSize: u32,
) callconv(@import("std").os.windows.WINAPI) BOOL;

// TODO: this type is limited to platform 'windows5.0'
pub extern "kernel32" fn DeleteAtom(
    nAtom: u16,
) callconv(@import("std").os.windows.WINAPI) u16;

// TODO: this type is limited to platform 'windows5.0'
pub extern "kernel32" fn GlobalAddAtomA(
    lpString: ?[*:0]const u8,
) callconv(@import("std").os.windows.WINAPI) u16;

// TODO: this type is limited to platform 'windows5.0'
pub extern "kernel32" fn GlobalAddAtomW(
    lpString: ?[*:0]const u16,
) callconv(@import("std").os.windows.WINAPI) u16;

pub extern "kernel32" fn GlobalAddAtomExA(
    lpString: ?[*:0]const u8,
    Flags: u32,
) callconv(@import("std").os.windows.WINAPI) u16;

pub extern "kernel32" fn GlobalAddAtomExW(
    lpString: ?[*:0]const u16,
    Flags: u32,
) callconv(@import("std").os.windows.WINAPI) u16;

// TODO: this type is limited to platform 'windows5.0'
pub extern "kernel32" fn GlobalFindAtomA(
    lpString: ?[*:0]const u8,
) callconv(@import("std").os.windows.WINAPI) u16;

// TODO: this type is limited to platform 'windows5.0'
pub extern "kernel32" fn GlobalFindAtomW(
    lpString: ?[*:0]const u16,
) callconv(@import("std").os.windows.WINAPI) u16;

// TODO: this type is limited to platform 'windows5.0'
pub extern "kernel32" fn GlobalGetAtomNameA(
    nAtom: u16,
    lpBuffer: [*:0]u8,
    nSize: i32,
) callconv(@import("std").os.windows.WINAPI) u32;

// TODO: this type is limited to platform 'windows5.0'
pub extern "kernel32" fn GlobalGetAtomNameW(
    nAtom: u16,
    lpBuffer: [*:0]u16,
    nSize: i32,
) callconv(@import("std").os.windows.WINAPI) u32;

// TODO: this type is limited to platform 'windows5.0'
pub extern "kernel32" fn AddAtomA(
    lpString: ?[*:0]const u8,
) callconv(@import("std").os.windows.WINAPI) u16;

// TODO: this type is limited to platform 'windows5.0'
pub extern "kernel32" fn AddAtomW(
    lpString: ?[*:0]const u16,
) callconv(@import("std").os.windows.WINAPI) u16;

// TODO: this type is limited to platform 'windows5.0'
pub extern "kernel32" fn FindAtomA(
    lpString: ?[*:0]const u8,
) callconv(@import("std").os.windows.WINAPI) u16;

// TODO: this type is limited to platform 'windows5.0'
pub extern "kernel32" fn FindAtomW(
    lpString: ?[*:0]const u16,
) callconv(@import("std").os.windows.WINAPI) u16;

// TODO: this type is limited to platform 'windows5.0'
pub extern "kernel32" fn GetAtomNameA(
    nAtom: u16,
    lpBuffer: [*:0]u8,
    nSize: i32,
) callconv(@import("std").os.windows.WINAPI) u32;

// TODO: this type is limited to platform 'windows5.0'
pub extern "kernel32" fn GetAtomNameW(
    nAtom: u16,
    lpBuffer: [*:0]u16,
    nSize: i32,
) callconv(@import("std").os.windows.WINAPI) u32;

//--------------------------------------------------------------------------------
// Section: Unicode Aliases (13)
//--------------------------------------------------------------------------------
const thismodule = @This();
pub usingnamespace switch (@import("../zig.zig").unicode_mode) {
    .ansi => struct {
        pub const MONHSZSTRUCT = thismodule.MONHSZSTRUCTA;
        pub const DdeInitialize = thismodule.DdeInitializeA;
        pub const DdeCreateStringHandle = thismodule.DdeCreateStringHandleA;
        pub const DdeQueryString = thismodule.DdeQueryStringA;
        pub const RegisterClipboardFormat = thismodule.RegisterClipboardFormatA;
        pub const GetClipboardFormatName = thismodule.GetClipboardFormatNameA;
        pub const GlobalAddAtom = thismodule.GlobalAddAtomA;
        pub const GlobalAddAtomEx = thismodule.GlobalAddAtomExA;
        pub const GlobalFindAtom = thismodule.GlobalFindAtomA;
        pub const GlobalGetAtomName = thismodule.GlobalGetAtomNameA;
        pub const AddAtom = thismodule.AddAtomA;
        pub const FindAtom = thismodule.FindAtomA;
        pub const GetAtomName = thismodule.GetAtomNameA;
    },
    .wide => struct {
        pub const MONHSZSTRUCT = thismodule.MONHSZSTRUCTW;
        pub const DdeInitialize = thismodule.DdeInitializeW;
        pub const DdeCreateStringHandle = thismodule.DdeCreateStringHandleW;
        pub const DdeQueryString = thismodule.DdeQueryStringW;
        pub const RegisterClipboardFormat = thismodule.RegisterClipboardFormatW;
        pub const GetClipboardFormatName = thismodule.GetClipboardFormatNameW;
        pub const GlobalAddAtom = thismodule.GlobalAddAtomW;
        pub const GlobalAddAtomEx = thismodule.GlobalAddAtomExW;
        pub const GlobalFindAtom = thismodule.GlobalFindAtomW;
        pub const GlobalGetAtomName = thismodule.GlobalGetAtomNameW;
        pub const AddAtom = thismodule.AddAtomW;
        pub const FindAtom = thismodule.FindAtomW;
        pub const GetAtomName = thismodule.GetAtomNameW;
    },
    .unspecified => if (@import("builtin").is_test) struct {
        pub const MONHSZSTRUCT = *opaque {};
        pub const DdeInitialize = *opaque {};
        pub const DdeCreateStringHandle = *opaque {};
        pub const DdeQueryString = *opaque {};
        pub const RegisterClipboardFormat = *opaque {};
        pub const GetClipboardFormatName = *opaque {};
        pub const GlobalAddAtom = *opaque {};
        pub const GlobalAddAtomEx = *opaque {};
        pub const GlobalFindAtom = *opaque {};
        pub const GlobalGetAtomName = *opaque {};
        pub const AddAtom = *opaque {};
        pub const FindAtom = *opaque {};
        pub const GetAtomName = *opaque {};
    } else struct {
        pub const MONHSZSTRUCT = @compileError("'MONHSZSTRUCT' requires that UNICODE be set to true or false in the root module");
        pub const DdeInitialize = @compileError("'DdeInitialize' requires that UNICODE be set to true or false in the root module");
        pub const DdeCreateStringHandle = @compileError("'DdeCreateStringHandle' requires that UNICODE be set to true or false in the root module");
        pub const DdeQueryString = @compileError("'DdeQueryString' requires that UNICODE be set to true or false in the root module");
        pub const RegisterClipboardFormat = @compileError("'RegisterClipboardFormat' requires that UNICODE be set to true or false in the root module");
        pub const GetClipboardFormatName = @compileError("'GetClipboardFormatName' requires that UNICODE be set to true or false in the root module");
        pub const GlobalAddAtom = @compileError("'GlobalAddAtom' requires that UNICODE be set to true or false in the root module");
        pub const GlobalAddAtomEx = @compileError("'GlobalAddAtomEx' requires that UNICODE be set to true or false in the root module");
        pub const GlobalFindAtom = @compileError("'GlobalFindAtom' requires that UNICODE be set to true or false in the root module");
        pub const GlobalGetAtomName = @compileError("'GlobalGetAtomName' requires that UNICODE be set to true or false in the root module");
        pub const AddAtom = @compileError("'AddAtom' requires that UNICODE be set to true or false in the root module");
        pub const FindAtom = @compileError("'FindAtom' requires that UNICODE be set to true or false in the root module");
        pub const GetAtomName = @compileError("'GetAtomName' requires that UNICODE be set to true or false in the root module");
    },
};
//--------------------------------------------------------------------------------
// Section: Imports (12)
//--------------------------------------------------------------------------------
const BOOL = @import("../foundation.zig").BOOL;
const CHAR = @import("../foundation.zig").CHAR;
const HANDLE = @import("../foundation.zig").HANDLE;
const HDC = @import("../graphics/gdi.zig").HDC;
const HENHMETAFILE = @import("../graphics/gdi.zig").HENHMETAFILE;
const HMETAFILE = @import("../graphics/gdi.zig").HMETAFILE;
const HWND = @import("../foundation.zig").HWND;
const LPARAM = @import("../foundation.zig").LPARAM;
const PSTR = @import("../foundation.zig").PSTR;
const PWSTR = @import("../foundation.zig").PWSTR;
const SECURITY_QUALITY_OF_SERVICE = @import("../security.zig").SECURITY_QUALITY_OF_SERVICE;
const WPARAM = @import("../foundation.zig").WPARAM;

test {
    // The following '_ = <FuncPtrType>' lines are a workaround for https://github.com/ziglang/zig/issues/4476
    if (@hasDecl(@This(), "PFNCALLBACK")) {
        _ = PFNCALLBACK;
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
