.class public Lcom/android/server/wifi/WifiMonitor;
.super Ljava/lang/Object;
.source "WifiMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiMonitor$1;,
        Lcom/android/server/wifi/WifiMonitor$MonitorThread;
    }
.end annotation


# static fields
.field private static final ADDR_STRING:Ljava/lang/String; = "addr="

.field public static final ANQP_DONE_EVENT:I = 0x2402c

.field private static final ANQP_DONE_STR:Ljava/lang/String; = "ANQP-QUERY-DONE"

.field public static final AP_STA_CONNECTED_EVENT:I = 0x2402a

.field private static final AP_STA_CONNECTED_STR:Ljava/lang/String; = "AP-STA-CONNECTED"

.field public static final AP_STA_DISCONNECTED_EVENT:I = 0x24029

.field private static final AP_STA_DISCONNECTED_STR:Ljava/lang/String; = "AP-STA-DISCONNECTED"

.field private static final ASSOCIATED_WITH_STR:Ljava/lang/String; = "Associated with "

.field public static final ASSOCIATION_REJECTION_EVENT:I = 0x2402b

.field private static final ASSOC_REJECT:I = 0x9

.field private static final ASSOC_REJECT_STR:Ljava/lang/String; = "ASSOC-REJECT"

.field public static final AUTHENTICATION_FAILURE_EVENT:I = 0x24007

.field private static final AUTH_EVENT_PREFIX_STR:Ljava/lang/String; = "Authentication with"

.field private static final AUTH_TIMEOUT_STR:Ljava/lang/String; = "timed out."

.field private static final BASE:I = 0x24000

.field private static final BSS_ADDED:I = 0xc

.field private static final BSS_ADDED_STR:Ljava/lang/String; = "BSS-ADDED"

.field private static final BSS_REMOVED:I = 0xd

.field private static final BSS_REMOVED_STR:Ljava/lang/String; = "BSS-REMOVED"

.field private static final CONFIG_AUTH_FAILURE:I = 0x12

.field private static final CONFIG_MULTIPLE_PBC_DETECTED:I = 0xc

.field private static final CONNECTED:I = 0x1

.field private static final CONNECTED_STR:Ljava/lang/String; = "CONNECTED"

.field private static final ConnectPrefix:Ljava/lang/String; = "Connection to "

.field private static final ConnectSuffix:Ljava/lang/String; = " completed"

.field private static DBG:Z = false

.field private static final DISCONNECTED:I = 0x2

.field private static final DISCONNECTED_STR:Ljava/lang/String; = "DISCONNECTED"

.field public static final DRIVER_HUNG_EVENT:I = 0x2400c

.field private static final DRIVER_STATE:I = 0x7

.field private static final DRIVER_STATE_STR:Ljava/lang/String; = "DRIVER-STATE"

.field private static final EAP_AUTH_FAILURE_STR:Ljava/lang/String; = "EAP authentication failed"

.field private static final EAP_FAILURE:I = 0x8

.field private static final EAP_FAILURE_STR:Ljava/lang/String; = "EAP-FAILURE"

.field private static final EVENT_PREFIX_LEN_STR:I

.field private static final EVENT_PREFIX_STR:Ljava/lang/String; = "CTRL-EVENT-"

.field public static final GAS_QUERY_DONE_EVENT:I = 0x24034

.field private static final GAS_QUERY_DONE_STR:Ljava/lang/String; = "GAS-QUERY-DONE"

.field private static final GAS_QUERY_PREFIX_STR:Ljava/lang/String; = "GAS-QUERY-"

.field public static final GAS_QUERY_START_EVENT:I = 0x24033

.field private static final GAS_QUERY_START_STR:Ljava/lang/String; = "GAS-QUERY-START"

.field private static final HOST_AP_EVENT_PREFIX_STR:Ljava/lang/String; = "AP"

.field public static final HS20_DEAUTH_STR:Ljava/lang/String; = "HS20-DEAUTH-IMMINENT-NOTICE"

.field private static final HS20_ICON_STR:Ljava/lang/String; = "RX-HS20-ICON"

.field private static final HS20_PREFIX_STR:Ljava/lang/String; = "HS20-"

.field public static final HS20_REMEDIATION_EVENT:I = 0x2403d

.field public static final HS20_SUB_REM_STR:Ljava/lang/String; = "HS20-SUBSCRIPTION-REMEDIATION"

.field private static final IDENTITY_STR:Ljava/lang/String; = "IDENTITY"

.field private static final LINK_SPEED:I = 0x5

.field private static final LINK_SPEED_STR:Ljava/lang/String; = "LINK-SPEED"

.field private static final MAX_RECV_ERRORS:I = 0xa

.field public static final NETWORK_CONNECTION_EVENT:I = 0x24003

.field public static final NETWORK_DISCONNECTION_EVENT:I = 0x24004

.field public static final P2P_DEVICE_FOUND_EVENT:I = 0x24015

.field private static final P2P_DEVICE_FOUND_STR:Ljava/lang/String; = "P2P-DEVICE-FOUND"

.field public static final P2P_DEVICE_LOST_EVENT:I = 0x24016

.field private static final P2P_DEVICE_LOST_STR:Ljava/lang/String; = "P2P-DEVICE-LOST"

.field private static final P2P_EVENT_PREFIX_STR:Ljava/lang/String; = "P2P"

.field public static final P2P_FIND_STOPPED_EVENT:I = 0x24025

.field private static final P2P_FIND_STOPPED_STR:Ljava/lang/String; = "P2P-FIND-STOPPED"

.field public static final P2P_GO_NEGOTIATION_FAILURE_EVENT:I = 0x2401a

.field public static final P2P_GO_NEGOTIATION_REQUEST_EVENT:I = 0x24017

.field public static final P2P_GO_NEGOTIATION_SUCCESS_EVENT:I = 0x24019

.field private static final P2P_GO_NEG_FAILURE_STR:Ljava/lang/String; = "P2P-GO-NEG-FAILURE"

.field private static final P2P_GO_NEG_REQUEST_STR:Ljava/lang/String; = "P2P-GO-NEG-REQUEST"

.field private static final P2P_GO_NEG_SUCCESS_STR:Ljava/lang/String; = "P2P-GO-NEG-SUCCESS"

.field public static final P2P_GROUP_FORMATION_FAILURE_EVENT:I = 0x2401c

.field private static final P2P_GROUP_FORMATION_FAILURE_STR:Ljava/lang/String; = "P2P-GROUP-FORMATION-FAILURE"

.field public static final P2P_GROUP_FORMATION_SUCCESS_EVENT:I = 0x2401b

.field private static final P2P_GROUP_FORMATION_SUCCESS_STR:Ljava/lang/String; = "P2P-GROUP-FORMATION-SUCCESS"

.field public static final P2P_GROUP_REMOVED_EVENT:I = 0x2401e

.field private static final P2P_GROUP_REMOVED_STR:Ljava/lang/String; = "P2P-GROUP-REMOVED"

.field public static final P2P_GROUP_STARTED_EVENT:I = 0x2401d

.field private static final P2P_GROUP_STARTED_STR:Ljava/lang/String; = "P2P-GROUP-STARTED"

.field public static final P2P_INVITATION_RECEIVED_EVENT:I = 0x2401f

.field private static final P2P_INVITATION_RECEIVED_STR:Ljava/lang/String; = "P2P-INVITATION-RECEIVED"

.field public static final P2P_INVITATION_RESULT_EVENT:I = 0x24020

.field private static final P2P_INVITATION_RESULT_STR:Ljava/lang/String; = "P2P-INVITATION-RESULT"

.field public static final P2P_PROV_DISC_ENTER_PIN_EVENT:I = 0x24023

.field private static final P2P_PROV_DISC_ENTER_PIN_STR:Ljava/lang/String; = "P2P-PROV-DISC-ENTER-PIN"

.field public static final P2P_PROV_DISC_FAILURE_EVENT:I = 0x24027

.field private static final P2P_PROV_DISC_FAILURE_STR:Ljava/lang/String; = "P2P-PROV-DISC-FAILURE"

.field public static final P2P_PROV_DISC_PBC_REQ_EVENT:I = 0x24021

.field private static final P2P_PROV_DISC_PBC_REQ_STR:Ljava/lang/String; = "P2P-PROV-DISC-PBC-REQ"

.field public static final P2P_PROV_DISC_PBC_RSP_EVENT:I = 0x24022

.field private static final P2P_PROV_DISC_PBC_RSP_STR:Ljava/lang/String; = "P2P-PROV-DISC-PBC-RESP"

.field public static final P2P_PROV_DISC_SHOW_PIN_EVENT:I = 0x24024

.field private static final P2P_PROV_DISC_SHOW_PIN_STR:Ljava/lang/String; = "P2P-PROV-DISC-SHOW-PIN"

.field public static final P2P_REMOVE_AND_REFORM_GROUP_EVENT:I = 0x24028

.field private static final P2P_REMOVE_AND_REFORM_GROUP_STR:Ljava/lang/String; = "P2P-REMOVE-AND-REFORM-GROUP"

.field public static final P2P_SERV_DISC_RESP_EVENT:I = 0x24026

.field private static final P2P_SERV_DISC_RESP_STR:Ljava/lang/String; = "P2P-SERV-DISC-RESP"

.field private static final PASSWORD_MAY_BE_INCORRECT_STR:Ljava/lang/String; = "pre-shared key may be incorrect"

.field private static final REASON_TKIP_ONLY_PROHIBITED:I = 0x1

.field private static final REASON_WEP_PROHIBITED:I = 0x2

.field private static final REENABLED_STR:Ljava/lang/String; = "SSID-REENABLED"

.field private static final REQUEST_PREFIX_LEN_STR:I

.field private static final REQUEST_PREFIX_STR:Ljava/lang/String; = "CTRL-REQ-"

.field private static final RESULT_STRING:Ljava/lang/String; = "result="

.field public static final RX_HS20_ANQP_ICON_EVENT:I = 0x24035

.field private static final RX_HS20_ANQP_ICON_STR:Ljava/lang/String; = "RX-HS20-ANQP-ICON"

.field private static final RX_HS20_ANQP_ICON_STR_LEN:I

.field private static final SCAN_FAILED:I = 0xf

.field public static final SCAN_FAILED_EVENT:I = 0x24011

.field private static final SCAN_FAILED_STR:Ljava/lang/String; = "SCAN-FAILED"

.field private static final SCAN_RESULTS:I = 0x4

.field public static final SCAN_RESULTS_EVENT:I = 0x24005

.field private static final SCAN_RESULTS_STR:Ljava/lang/String; = "SCAN-RESULTS"

.field private static final SIM_STR:Ljava/lang/String; = "SIM"

.field private static final SSID_REENABLE:I = 0xb

.field public static final SSID_REENABLED:I = 0x2400e

.field private static final SSID_TEMP_DISABLE:I = 0xa

.field public static final SSID_TEMP_DISABLED:I = 0x2400d

.field private static final STATE_CHANGE:I = 0x3

.field private static final STATE_CHANGE_STR:Ljava/lang/String; = "STATE-CHANGE"

.field private static final SUBNET_STATUS_UPDATE:I = 0x100

.field public static final SUBNET_STATUS_UPDATE_EVENT:I = 0x13d

.field private static final SUBNET_STATUS_UPDATE_STR:Ljava/lang/String; = "SUBNET-STATUS-UPDATE"

.field public static final SUPPLICANT_STATE_CHANGE_EVENT:I = 0x24006

.field public static final SUP_CONNECTION_EVENT:I = 0x24001

.field public static final SUP_DISCONNECTION_EVENT:I = 0x24002

.field public static final SUP_REQUEST_IDENTITY:I = 0x2400f

.field public static final SUP_REQUEST_SIM_AUTH:I = 0x24010

.field private static final TAG:Ljava/lang/String; = "WifiMonitor"

.field private static final TARGET_BSSID_STR:Ljava/lang/String; = "Trying to associate with "

.field private static final TEMP_DISABLED_STR:Ljava/lang/String; = "SSID-TEMP-DISABLED"

.field private static final TERMINATING:I = 0x6

.field private static final TERMINATING_STR:Ljava/lang/String; = "TERMINATING"

.field private static final UNKNOWN:I = 0xe

.field private static final VDBG:Z = false

.field private static final VENDOR_BASE_WIFI_MONITOR:I = 0xff

.field private static final WAPI_EVENT_PREFIX_STR:Ljava/lang/String; = "WAPI:"

.field private static final WIFI_VENDOR_EVENT_BASE:I = 0xff

.field private static final WPA_EVENT_PREFIX_STR:Ljava/lang/String; = "WPA:"

.field private static final WPA_RECV_ERROR_STR:Ljava/lang/String; = "recv error"

.field public static final WPS_FAIL_EVENT:I = 0x24009

.field private static final WPS_FAIL_PATTERN:Ljava/lang/String; = "WPS-FAIL msg=\\d+(?: config_error=(\\d+))?(?: reason=(\\d+))?"

.field private static final WPS_FAIL_STR:Ljava/lang/String; = "WPS-FAIL"

.field public static final WPS_OVERLAP_EVENT:I = 0x2400a

.field private static final WPS_OVERLAP_STR:Ljava/lang/String; = "WPS-OVERLAP-DETECTED"

.field public static final WPS_SUCCESS_EVENT:I = 0x24008

.field private static final WPS_SUCCESS_STR:Ljava/lang/String; = "WPS-SUCCESS"

.field public static final WPS_TIMEOUT_EVENT:I = 0x2400b

.field private static final WPS_TIMEOUT_STR:Ljava/lang/String; = "WPS-TIMEOUT"

.field private static eventLogCounter:I

.field private static mAssocRejectEventPattern:Ljava/util/regex/Pattern;

.field private static mAssociatedPattern:Ljava/util/regex/Pattern;

.field private static mConnectedEventPattern:Ljava/util/regex/Pattern;

.field private static mDisconnectedEventPattern:Ljava/util/regex/Pattern;

.field private static mRequestGsmAuthPattern:Ljava/util/regex/Pattern;

.field private static mRequestIdentityPattern:Ljava/util/regex/Pattern;

.field private static mRequestUmtsAuthPattern:Ljava/util/regex/Pattern;

.field private static mTargetBSSIDPattern:Ljava/util/regex/Pattern;

.field private static sWifiMonitor:Lcom/android/server/wifi/WifiMonitor;


# instance fields
.field private mConnected:Z

.field private final mHandlerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/Set",
            "<",
            "Landroid/os/Handler;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mLastConnectBSSIDs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mMonitoringMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mRecvErrors:I

.field private final mWifiNative:Lcom/android/server/wifi/WifiNative;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/wifi/WifiMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiMonitor;->mConnected:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/wifi/WifiMonitor;)Lcom/android/server/wifi/WifiNative;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiMonitor;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/wifi/WifiMonitor;Ljava/lang/String;)Z
    .locals 1
    .param p1, "eventStr"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiMonitor;->dispatchEvent(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 62
    sput-boolean v1, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    .line 90
    const-string/jumbo v0, "CTRL-EVENT-"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/android/server/wifi/WifiMonitor;->EVENT_PREFIX_LEN_STR:I

    .line 94
    const-string/jumbo v0, "CTRL-REQ-"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/android/server/wifi/WifiMonitor;->REQUEST_PREFIX_LEN_STR:I

    .line 131
    const-string/jumbo v0, "RX-HS20-ANQP-ICON"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/android/server/wifi/WifiMonitor;->RX_HS20_ANQP_ICON_STR_LEN:I

    .line 144
    sput v1, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    .line 259
    const-string/jumbo v0, "((?:[0-9a-f]{2}:){5}[0-9a-f]{2}) .* \\[id=([0-9]+) "

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 258
    sput-object v0, Lcom/android/server/wifi/WifiMonitor;->mConnectedEventPattern:Ljava/util/regex/Pattern;

    .line 267
    const-string/jumbo v0, "((?:[0-9a-f]{2}:){5}[0-9a-f]{2}) +reason=([0-9]+) +locally_generated=([0-1])"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 266
    sput-object v0, Lcom/android/server/wifi/WifiMonitor;->mDisconnectedEventPattern:Ljava/util/regex/Pattern;

    .line 276
    const-string/jumbo v0, "((?:[0-9a-f]{2}:){5}[0-9a-f]{2}) +status_code=([0-9]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 275
    sput-object v0, Lcom/android/server/wifi/WifiMonitor;->mAssocRejectEventPattern:Ljava/util/regex/Pattern;

    .line 287
    const-string/jumbo v0, "Trying to associate with ((?:[0-9a-f]{2}:){5}[0-9a-f]{2}).*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 286
    sput-object v0, Lcom/android/server/wifi/WifiMonitor;->mTargetBSSIDPattern:Ljava/util/regex/Pattern;

    .line 297
    const-string/jumbo v0, "Associated with ((?:[0-9a-f]{2}:){5}[0-9a-f]{2}).*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 296
    sput-object v0, Lcom/android/server/wifi/WifiMonitor;->mAssociatedPattern:Ljava/util/regex/Pattern;

    .line 311
    const-string/jumbo v0, "SIM-([0-9]*):GSM-AUTH((:[0-9a-f]+)+) needed for SSID (.+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 310
    sput-object v0, Lcom/android/server/wifi/WifiMonitor;->mRequestGsmAuthPattern:Ljava/util/regex/Pattern;

    .line 324
    const-string/jumbo v0, "SIM-([0-9]*):UMTS-AUTH:([0-9a-f]+):([0-9a-f]+) needed for SSID (.+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 323
    sput-object v0, Lcom/android/server/wifi/WifiMonitor;->mRequestUmtsAuthPattern:Ljava/util/regex/Pattern;

    .line 332
    const-string/jumbo v0, "IDENTITY-([0-9]+):Identity needed for SSID (.+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 331
    sput-object v0, Lcom/android/server/wifi/WifiMonitor;->mRequestIdentityPattern:Ljava/util/regex/Pattern;

    .line 551
    new-instance v0, Lcom/android/server/wifi/WifiMonitor;

    invoke-direct {v0}, Lcom/android/server/wifi/WifiMonitor;-><init>()V

    sput-object v0, Lcom/android/server/wifi/WifiMonitor;->sWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    .line 60
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 557
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 561
    iput v0, p0, Lcom/android/server/wifi/WifiMonitor;->mRecvErrors:I

    .line 571
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiMonitor;->mConnected:Z

    .line 574
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiMonitor;->mHandlerMap:Ljava/util/Map;

    .line 589
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiMonitor;->mMonitoringMap:Ljava/util/Map;

    .line 823
    new-instance v0, Lcom/android/server/wifi/WifiMonitor$1;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiMonitor$1;-><init>(Lcom/android/server/wifi/WifiMonitor;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiMonitor;->mLastConnectBSSIDs:Ljava/util/Map;

    .line 558
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->getWlanNativeInterface()Lcom/android/server/wifi/WifiNative;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiMonitor;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    .line 557
    return-void
.end method

.method private declared-synchronized dispatchEvent(Ljava/lang/String;)Z
    .locals 6
    .param p1, "eventStr"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    monitor-enter p0

    .line 785
    :try_start_0
    const-string/jumbo v2, "IFNAME="

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 786
    const/16 v2, 0x20

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 787
    .local v1, "space":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 788
    const/4 v2, 0x7

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 789
    .local v0, "iface":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/wifi/WifiMonitor;->mHandlerMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 790
    const-string/jumbo v2, "p2p-"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 794
    const-string/jumbo v0, "p2p0"

    .line 801
    :cond_0
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 816
    .end local v1    # "space":I
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/WifiMonitor;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 817
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/wifi/WifiMonitor;->mConnected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 818
    const/4 v2, 0x1

    monitor-exit p0

    return v2

    .line 796
    .restart local v1    # "space":I
    :cond_1
    :try_start_1
    const-string/jumbo v2, "WifiMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Ignoring event from unexpected interface: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 798
    return v5

    .line 806
    .end local v0    # "iface":Ljava/lang/String;
    :cond_2
    :try_start_2
    const-string/jumbo v2, "WifiMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Dropping malformed event (unparsable iface): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 807
    return v5

    .line 811
    .end local v1    # "space":I
    :cond_3
    :try_start_3
    const-string/jumbo v0, "p2p0"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .restart local v0    # "iface":Ljava/lang/String;
    goto :goto_0

    :cond_4
    monitor-exit p0

    .line 820
    return v5

    .end local v0    # "iface":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private dispatchEvent(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 34
    .param p1, "eventStr"    # Ljava/lang/String;
    .param p2, "iface"    # Ljava/lang/String;

    .prologue
    .line 835
    sget-boolean v4, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    if-eqz v4, :cond_0

    .line 837
    if-eqz p1, :cond_0

    const-string/jumbo v4, "CTRL-EVENT-BSS-ADDED"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 843
    :cond_0
    :goto_0
    const-string/jumbo v4, "CTRL-EVENT-"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_13

    .line 844
    const-string/jumbo v4, "WPA:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 845
    const-string/jumbo v4, "pre-shared key may be incorrect"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_3

    .line 846
    const v4, 0x24007

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v4}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;I)V

    .line 896
    :cond_1
    :goto_1
    sget v4, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    .line 897
    const/4 v4, 0x0

    return v4

    .line 838
    :cond_2
    const-string/jumbo v4, "WifiMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " cnt="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 839
    const-string/jumbo v6, " dispatchEvent: "

    .line 838
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 847
    :cond_3
    const-string/jumbo v4, "WPS-SUCCESS"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 848
    const v4, 0x24008

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v4}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;I)V

    goto :goto_1

    .line 849
    :cond_4
    const-string/jumbo v4, "WPS-FAIL"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 850
    invoke-direct/range {p0 .. p2}, Lcom/android/server/wifi/WifiMonitor;->handleWpsFailEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 851
    :cond_5
    const-string/jumbo v4, "WPS-OVERLAP-DETECTED"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 852
    const v4, 0x2400a

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v4}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;I)V

    goto :goto_1

    .line 853
    :cond_6
    const-string/jumbo v4, "WPS-TIMEOUT"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 854
    const v4, 0x2400b

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v4}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 855
    :cond_7
    const-string/jumbo v4, "P2P"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 856
    invoke-direct/range {p0 .. p2}, Lcom/android/server/wifi/WifiMonitor;->handleP2pEvents(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 857
    :cond_8
    const-string/jumbo v4, "AP"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 858
    invoke-direct/range {p0 .. p2}, Lcom/android/server/wifi/WifiMonitor;->handleHostApEvents(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 859
    :cond_9
    const-string/jumbo v4, "ANQP-QUERY-DONE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 861
    :try_start_0
    invoke-direct/range {p0 .. p2}, Lcom/android/server/wifi/WifiMonitor;->handleAnqpResult(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 863
    :catch_0
    move-exception v24

    .line 864
    .local v24, "iae":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v4, "WifiMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Bad ANQP event string: \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\': "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 866
    .end local v24    # "iae":Ljava/lang/IllegalArgumentException;
    :cond_a
    const-string/jumbo v4, "RX-HS20-ICON"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 868
    :try_start_1
    invoke-direct/range {p0 .. p2}, Lcom/android/server/wifi/WifiMonitor;->handleIconResult(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 870
    :catch_1
    move-exception v24

    .line 871
    .restart local v24    # "iae":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v4, "WifiMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Bad Icon event string: \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\': "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 874
    .end local v24    # "iae":Ljava/lang/IllegalArgumentException;
    :cond_b
    const-string/jumbo v4, "HS20-SUBSCRIPTION-REMEDIATION"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 876
    const-string/jumbo v4, "%012x %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 877
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/WifiMonitor;->mLastConnectBSSIDs:Ljava/util/Map;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const/4 v8, 0x0

    aput-object v6, v5, v8

    const/4 v6, 0x1

    aput-object p1, v5, v6

    .line 876
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v4, v1}, Lcom/android/server/wifi/WifiMonitor;->handleWnmFrame(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 878
    :cond_c
    const-string/jumbo v4, "HS20-DEAUTH-IMMINENT-NOTICE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 879
    const-string/jumbo v4, "%012x %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 880
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/WifiMonitor;->mLastConnectBSSIDs:Ljava/util/Map;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const/4 v8, 0x0

    aput-object v6, v5, v8

    const/4 v6, 0x1

    aput-object p1, v5, v6

    .line 879
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v4, v1}, Lcom/android/server/wifi/WifiMonitor;->handleWnmFrame(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 881
    :cond_d
    const-string/jumbo v4, "CTRL-REQ-"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 882
    invoke-direct/range {p0 .. p2}, Lcom/android/server/wifi/WifiMonitor;->handleRequests(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 883
    :cond_e
    const-string/jumbo v4, "Trying to associate with "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 884
    invoke-direct/range {p0 .. p2}, Lcom/android/server/wifi/WifiMonitor;->handleTargetBSSIDEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 885
    :cond_f
    const-string/jumbo v4, "Associated with "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 886
    invoke-direct/range {p0 .. p2}, Lcom/android/server/wifi/WifiMonitor;->handleAssociatedBSSIDEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 887
    :cond_10
    const-string/jumbo v4, "Authentication with"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 888
    const-string/jumbo v4, "timed out."

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    .line 887
    if-eqz v4, :cond_11

    .line 889
    const v4, 0x24007

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v4}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 890
    :cond_11
    const-string/jumbo v4, "WAPI:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 891
    const-string/jumbo v4, "pre-shared key may be incorrect"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_12

    .line 892
    const v4, 0x24007

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v4}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 894
    :cond_12
    sget-boolean v4, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    if-eqz v4, :cond_1

    const-string/jumbo v4, "WifiMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "couldn\'t identify event type - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 900
    :cond_13
    sget v4, Lcom/android/server/wifi/WifiMonitor;->EVENT_PREFIX_LEN_STR:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    .line 901
    .local v22, "eventName":Ljava/lang/String;
    const/16 v4, 0x20

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v29

    .line 902
    .local v29, "nameEnd":I
    const/4 v4, -0x1

    move/from16 v0, v29

    if-eq v0, v4, :cond_14

    .line 903
    const/4 v4, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v29

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    .line 904
    :cond_14
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_16

    .line 905
    sget-boolean v4, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    if-eqz v4, :cond_15

    const-string/jumbo v4, "WifiMonitor"

    const-string/jumbo v5, "Received wpa_supplicant event with empty event name"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    :cond_15
    sget v4, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    .line 907
    const/4 v4, 0x0

    return v4

    .line 913
    :cond_16
    const-string/jumbo v4, "CONNECTED"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 914
    const/16 v20, 0x1

    .line 915
    .local v20, "event":I
    const-wide/16 v16, -0x1

    .line 916
    .local v16, "bssid":J
    const-string/jumbo v4, "Connection to "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v30

    .line 917
    .local v30, "prefix":I
    if-ltz v30, :cond_17

    .line 918
    const-string/jumbo v4, " completed"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v33

    .line 919
    .local v33, "suffix":I
    move/from16 v0, v33

    move/from16 v1, v30

    if-le v0, v1, :cond_17

    .line 922
    :try_start_2
    const-string/jumbo v4, "Connection to "

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int v4, v4, v30

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 921
    invoke-static {v4}, Lcom/android/server/wifi/hotspot2/Utils;->parseMac(Ljava/lang/String;)J
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-wide v16

    .line 928
    .end local v33    # "suffix":I
    :cond_17
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiMonitor;->mLastConnectBSSIDs:Ljava/util/Map;

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 929
    const-wide/16 v4, -0x1

    cmp-long v4, v16, v4

    if-nez v4, :cond_18

    .line 930
    const-string/jumbo v4, "WifiMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed to parse out BSSID from \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    .end local v16    # "bssid":J
    .end local v30    # "prefix":I
    :cond_18
    :goto_3
    move-object/from16 v21, p1

    .line 965
    .local v21, "eventData":Ljava/lang/String;
    const/4 v4, 0x7

    move/from16 v0, v20

    if-eq v0, v4, :cond_19

    const/4 v4, 0x5

    move/from16 v0, v20

    if-ne v0, v4, :cond_2c

    .line 966
    :cond_19
    const-string/jumbo v4, " "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v21, v4, v5

    .line 979
    :cond_1a
    :goto_4
    const/16 v4, 0xa

    move/from16 v0, v20

    if-eq v0, v4, :cond_1b

    const/16 v4, 0xb

    move/from16 v0, v20

    if-ne v0, v4, :cond_33

    .line 980
    :cond_1b
    const/4 v9, 0x0

    .line 981
    .local v9, "substr":Ljava/lang/String;
    const/4 v7, -0x1

    .line 982
    .local v7, "netId":I
    const-string/jumbo v4, " "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v26

    .line 983
    .local v26, "ind":I
    const/4 v4, -0x1

    move/from16 v0, v26

    if-eq v0, v4, :cond_1c

    .line 984
    add-int/lit8 v4, v26, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 986
    .end local v9    # "substr":Ljava/lang/String;
    :cond_1c
    if-eqz v9, :cond_30

    .line 987
    const-string/jumbo v4, " "

    invoke-virtual {v9, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v31

    .line 988
    .local v31, "status":[Ljava/lang/String;
    const/4 v4, 0x0

    move-object/from16 v0, v31

    array-length v5, v0

    :goto_5
    if-ge v4, v5, :cond_30

    aget-object v27, v31, v4

    .line 989
    .local v27, "key":Ljava/lang/String;
    const-string/jumbo v6, "id="

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x3

    move-object/from16 v0, v27

    invoke-virtual {v0, v8, v6, v10, v11}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v6

    if-eqz v6, :cond_2f

    .line 990
    const/16 v25, 0x3

    .line 991
    .local v25, "idx":I
    const/4 v7, 0x0

    .line 992
    :goto_6
    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v6

    move/from16 v0, v25

    if-ge v0, v6, :cond_2f

    .line 993
    move-object/from16 v0, v27

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v18

    .line 994
    .local v18, "c":C
    const/16 v6, 0x30

    move/from16 v0, v18

    if-lt v0, v6, :cond_2f

    const/16 v6, 0x39

    move/from16 v0, v18

    if-gt v0, v6, :cond_2f

    .line 995
    mul-int/lit8 v7, v7, 0xa

    .line 996
    add-int/lit8 v6, v18, -0x30

    add-int/2addr v7, v6

    .line 997
    add-int/lit8 v25, v25, 0x1

    .line 994
    goto :goto_6

    .line 923
    .end local v7    # "netId":I
    .end local v18    # "c":C
    .end local v21    # "eventData":Ljava/lang/String;
    .end local v25    # "idx":I
    .end local v26    # "ind":I
    .end local v27    # "key":Ljava/lang/String;
    .end local v31    # "status":[Ljava/lang/String;
    .restart local v16    # "bssid":J
    .restart local v30    # "prefix":I
    .restart local v33    # "suffix":I
    :catch_2
    move-exception v24

    .line 924
    .restart local v24    # "iae":Ljava/lang/IllegalArgumentException;
    const-wide/16 v16, -0x1

    goto/16 :goto_2

    .line 933
    .end local v16    # "bssid":J
    .end local v20    # "event":I
    .end local v24    # "iae":Ljava/lang/IllegalArgumentException;
    .end local v30    # "prefix":I
    .end local v33    # "suffix":I
    :cond_1d
    const-string/jumbo v4, "DISCONNECTED"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 934
    const/16 v20, 0x2

    .restart local v20    # "event":I
    goto/16 :goto_3

    .line 935
    .end local v20    # "event":I
    :cond_1e
    const-string/jumbo v4, "STATE-CHANGE"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 936
    const/16 v20, 0x3

    .restart local v20    # "event":I
    goto/16 :goto_3

    .line 937
    .end local v20    # "event":I
    :cond_1f
    const-string/jumbo v4, "SCAN-RESULTS"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 938
    const/16 v20, 0x4

    .restart local v20    # "event":I
    goto/16 :goto_3

    .line 939
    .end local v20    # "event":I
    :cond_20
    const-string/jumbo v4, "SCAN-FAILED"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 940
    const/16 v20, 0xf

    .restart local v20    # "event":I
    goto/16 :goto_3

    .line 941
    .end local v20    # "event":I
    :cond_21
    const-string/jumbo v4, "LINK-SPEED"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 942
    const/16 v20, 0x5

    .restart local v20    # "event":I
    goto/16 :goto_3

    .line 943
    .end local v20    # "event":I
    :cond_22
    const-string/jumbo v4, "TERMINATING"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 944
    const/16 v20, 0x6

    .restart local v20    # "event":I
    goto/16 :goto_3

    .line 945
    .end local v20    # "event":I
    :cond_23
    const-string/jumbo v4, "DRIVER-STATE"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 946
    const/16 v20, 0x7

    .restart local v20    # "event":I
    goto/16 :goto_3

    .line 947
    .end local v20    # "event":I
    :cond_24
    const-string/jumbo v4, "EAP-FAILURE"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 948
    const/16 v20, 0x8

    .restart local v20    # "event":I
    goto/16 :goto_3

    .line 949
    .end local v20    # "event":I
    :cond_25
    const-string/jumbo v4, "ASSOC-REJECT"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 950
    const/16 v20, 0x9

    .restart local v20    # "event":I
    goto/16 :goto_3

    .line 951
    .end local v20    # "event":I
    :cond_26
    const-string/jumbo v4, "SSID-TEMP-DISABLED"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 952
    const/16 v20, 0xa

    .restart local v20    # "event":I
    goto/16 :goto_3

    .line 953
    .end local v20    # "event":I
    :cond_27
    const-string/jumbo v4, "SSID-REENABLED"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 954
    const/16 v20, 0xb

    .restart local v20    # "event":I
    goto/16 :goto_3

    .line 955
    .end local v20    # "event":I
    :cond_28
    const-string/jumbo v4, "BSS-ADDED"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 956
    const/16 v20, 0xc

    .restart local v20    # "event":I
    goto/16 :goto_3

    .line 957
    .end local v20    # "event":I
    :cond_29
    const-string/jumbo v4, "BSS-REMOVED"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 958
    const/16 v20, 0xd

    .restart local v20    # "event":I
    goto/16 :goto_3

    .line 959
    .end local v20    # "event":I
    :cond_2a
    const-string/jumbo v4, "SUBNET-STATUS-UPDATE"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 960
    const/16 v20, 0x100

    .restart local v20    # "event":I
    goto/16 :goto_3

    .line 962
    .end local v20    # "event":I
    :cond_2b
    const/16 v20, 0xe

    .restart local v20    # "event":I
    goto/16 :goto_3

    .line 967
    .restart local v21    # "eventData":Ljava/lang/String;
    :cond_2c
    const/4 v4, 0x3

    move/from16 v0, v20

    if-eq v0, v4, :cond_2d

    const/16 v4, 0x8

    move/from16 v0, v20

    if-ne v0, v4, :cond_2e

    .line 968
    :cond_2d
    const-string/jumbo v4, " "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v26

    .line 969
    .restart local v26    # "ind":I
    const/4 v4, -0x1

    move/from16 v0, v26

    if-eq v0, v4, :cond_1a

    .line 970
    add-int/lit8 v4, v26, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_4

    .line 973
    .end local v26    # "ind":I
    :cond_2e
    const-string/jumbo v4, " - "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v26

    .line 974
    .restart local v26    # "ind":I
    const/4 v4, -0x1

    move/from16 v0, v26

    if-eq v0, v4, :cond_1a

    .line 975
    add-int/lit8 v4, v26, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_4

    .line 988
    .restart local v7    # "netId":I
    .restart local v27    # "key":Ljava/lang/String;
    .restart local v31    # "status":[Ljava/lang/String;
    :cond_2f
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_5

    .line 1005
    .end local v27    # "key":Ljava/lang/String;
    .end local v31    # "status":[Ljava/lang/String;
    :cond_30
    const/16 v4, 0xa

    move/from16 v0, v20

    if-ne v0, v4, :cond_32

    .line 1006
    const v6, 0x2400d

    :goto_7
    const/4 v8, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    .line 1005
    invoke-direct/range {v4 .. v9}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;IIILjava/lang/Object;)V

    .line 1065
    .end local v7    # "netId":I
    .end local v26    # "ind":I
    :cond_31
    :goto_8
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/wifi/WifiMonitor;->mRecvErrors:I

    .line 1066
    sget v4, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    .line 1067
    const/4 v4, 0x0

    return v4

    .line 1006
    .restart local v7    # "netId":I
    .restart local v26    # "ind":I
    :cond_32
    const v6, 0x2400e

    goto :goto_7

    .line 1007
    .end local v7    # "netId":I
    .end local v26    # "ind":I
    :cond_33
    const/4 v4, 0x3

    move/from16 v0, v20

    if-ne v0, v4, :cond_34

    .line 1008
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/WifiMonitor;->handleSupplicantStateChange(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 1009
    :cond_34
    const/4 v4, 0x7

    move/from16 v0, v20

    if-ne v0, v4, :cond_35

    .line 1010
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/WifiMonitor;->handleDriverEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 1011
    :cond_35
    const/4 v4, 0x6

    move/from16 v0, v20

    if-ne v0, v4, :cond_38

    .line 1016
    const-string/jumbo v4, "recv error"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 1017
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wifi/WifiMonitor;->mRecvErrors:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/wifi/WifiMonitor;->mRecvErrors:I

    const/16 v5, 0xa

    if-le v4, v5, :cond_37

    .line 1018
    sget-boolean v4, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    if-eqz v4, :cond_36

    .line 1019
    const-string/jumbo v4, "WifiMonitor"

    const-string/jumbo v5, "too many recv errors, closing connection"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    :cond_36
    sget v4, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    const/4 v5, 0x0

    const v6, 0x24002

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6, v4}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;II)V

    .line 1029
    const/4 v4, 0x1

    return v4

    .line 1022
    :cond_37
    sget v4, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    .line 1023
    const/4 v4, 0x0

    return v4

    .line 1030
    :cond_38
    const/16 v4, 0x8

    move/from16 v0, v20

    if-ne v0, v4, :cond_39

    .line 1031
    const-string/jumbo v4, "EAP authentication failed"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 1032
    sget v4, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    const v5, 0x24007

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v5, v4}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;II)V

    goto/16 :goto_8

    .line 1034
    :cond_39
    const/16 v4, 0x9

    move/from16 v0, v20

    if-ne v0, v4, :cond_3d

    .line 1035
    sget-object v4, Lcom/android/server/wifi/WifiMonitor;->mAssocRejectEventPattern:Ljava/util/regex/Pattern;

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v28

    .line 1036
    .local v28, "match":Ljava/util/regex/Matcher;
    const-string/jumbo v15, ""

    .line 1037
    .local v15, "BSSID":Ljava/lang/String;
    const/4 v14, -0x1

    .line 1038
    .local v14, "status":I
    invoke-virtual/range {v28 .. v28}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-nez v4, :cond_3b

    .line 1039
    sget-boolean v4, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    if-eqz v4, :cond_3a

    const-string/jumbo v4, "WifiMonitor"

    const-string/jumbo v5, "Assoc Reject: Could not parse assoc reject string"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    .end local v15    # "BSSID":Ljava/lang/String;
    :cond_3a
    :goto_9
    sget v13, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    const v12, 0x2402b

    move-object/from16 v10, p0

    move-object/from16 v11, p2

    invoke-direct/range {v10 .. v15}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;IIILjava/lang/Object;)V

    goto/16 :goto_8

    .line 1041
    .restart local v15    # "BSSID":Ljava/lang/String;
    :cond_3b
    invoke-virtual/range {v28 .. v28}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v23

    .line 1042
    .local v23, "groupNumber":I
    const/16 v32, -0x1

    .line 1043
    .local v32, "statusGroupNumber":I
    const/4 v4, 0x2

    move/from16 v0, v23

    if-ne v0, v4, :cond_3c

    .line 1044
    const/4 v4, 0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v15

    .line 1045
    const/16 v32, 0x2

    .line 1052
    .end local v15    # "BSSID":Ljava/lang/String;
    :goto_a
    :try_start_3
    move-object/from16 v0, v28

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v14

    goto :goto_9

    .line 1048
    .restart local v15    # "BSSID":Ljava/lang/String;
    :cond_3c
    const/4 v15, 0x0

    .line 1049
    .local v15, "BSSID":Ljava/lang/String;
    const/16 v32, 0x1

    goto :goto_a

    .line 1053
    .end local v15    # "BSSID":Ljava/lang/String;
    :catch_3
    move-exception v19

    .line 1054
    .local v19, "e":Ljava/lang/NumberFormatException;
    const/4 v14, -0x1

    goto :goto_9

    .line 1058
    .end local v14    # "status":I
    .end local v19    # "e":Ljava/lang/NumberFormatException;
    .end local v23    # "groupNumber":I
    .end local v28    # "match":Ljava/util/regex/Matcher;
    .end local v32    # "statusGroupNumber":I
    :cond_3d
    const/16 v4, 0xc

    move/from16 v0, v20

    if-eq v0, v4, :cond_31

    .line 1060
    const/16 v4, 0xd

    move/from16 v0, v20

    if-eq v0, v4, :cond_31

    .line 1063
    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiMonitor;->handleEvent(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8
.end method

.method private ensureConnectedLocked()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 611
    iget-boolean v3, p0, Lcom/android/server/wifi/WifiMonitor;->mConnected:Z

    if-eqz v3, :cond_0

    .line 612
    return v6

    .line 615
    :cond_0
    sget-boolean v3, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    if-eqz v3, :cond_1

    const-string/jumbo v3, "WifiMonitor"

    const-string/jumbo v4, "connecting to supplicant"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    :cond_1
    const/4 v0, 0x0

    .line 618
    .local v0, "connectTries":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiMonitor;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiNative;->connectToSupplicant()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 619
    iput-boolean v6, p0, Lcom/android/server/wifi/WifiMonitor;->mConnected:Z

    .line 620
    new-instance v3, Lcom/android/server/wifi/WifiMonitor$MonitorThread;

    iget-object v4, p0, Lcom/android/server/wifi/WifiMonitor;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiNative;->getLocalLog()Landroid/util/LocalLog;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/server/wifi/WifiMonitor$MonitorThread;-><init>(Lcom/android/server/wifi/WifiMonitor;Landroid/util/LocalLog;)V

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiMonitor$MonitorThread;->start()V

    .line 621
    return v6

    .line 623
    :cond_2
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "connectTries":I
    .local v1, "connectTries":I
    const/16 v3, 0x32

    if-ge v0, v3, :cond_3

    .line 625
    const-wide/16 v4, 0x64

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move v0, v1

    .end local v1    # "connectTries":I
    .restart local v0    # "connectTries":I
    goto :goto_0

    .line 626
    .end local v0    # "connectTries":I
    .restart local v1    # "connectTries":I
    :catch_0
    move-exception v2

    .local v2, "ignore":Ljava/lang/InterruptedException;
    goto :goto_1

    .line 629
    .end local v2    # "ignore":Ljava/lang/InterruptedException;
    :cond_3
    const/4 v3, 0x0

    return v3
.end method

.method public static getInstance()Lcom/android/server/wifi/WifiMonitor;
    .locals 1

    .prologue
    .line 553
    sget-object v0, Lcom/android/server/wifi/WifiMonitor;->sWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    return-object v0
.end method

.method private getWifiP2pDevice(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 2
    .param p1, "dataString"    # Ljava/lang/String;

    .prologue
    .line 1202
    :try_start_0
    new-instance v1, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v1, p1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1203
    :catch_0
    move-exception v0

    .line 1204
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private getWifiP2pGroup(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pGroup;
    .locals 2
    .param p1, "dataString"    # Ljava/lang/String;

    .prologue
    .line 1210
    :try_start_0
    new-instance v1, Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-direct {v1, p1}, Landroid/net/wifi/p2p/WifiP2pGroup;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1211
    :catch_0
    move-exception v0

    .line 1212
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private handleAnqpResult(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p1, "eventStr"    # Ljava/lang/String;
    .param p2, "iface"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x20

    .line 1291
    const-string/jumbo v0, "addr="

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 1292
    .local v6, "addrPos":I
    const-string/jumbo v0, "result="

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    .line 1293
    .local v12, "resPos":I
    if-ltz v6, :cond_0

    if-gez v12, :cond_1

    .line 1294
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Unexpected ANQP result notification"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1296
    :cond_1
    const-string/jumbo v0, "addr="

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v6

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    .line 1297
    .local v7, "eoaddr":I
    if-gez v7, :cond_2

    .line 1298
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    .line 1300
    :cond_2
    const-string/jumbo v0, "result="

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v12

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v10

    .line 1301
    .local v10, "eoresult":I
    if-gez v10, :cond_3

    .line 1302
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    .line 1306
    :cond_3
    :try_start_0
    const-string/jumbo v0, "addr="

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v6

    invoke-virtual {p1, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wifi/hotspot2/Utils;->parseMac(Ljava/lang/String;)J

    move-result-wide v8

    .line 1308
    .local v8, "bssid":J
    const-string/jumbo v0, "result="

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v12

    .line 1307
    invoke-virtual {p1, v0, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1308
    const-string/jumbo v1, "success"

    .line 1307
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1308
    const/4 v3, 0x1

    .line 1310
    .local v3, "result":I
    :goto_0
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const v2, 0x2402c

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;IIILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1290
    .end local v3    # "result":I
    .end local v8    # "bssid":J
    :goto_1
    return-void

    .line 1308
    .restart local v8    # "bssid":J
    :cond_4
    const/4 v3, 0x0

    .restart local v3    # "result":I
    goto :goto_0

    .line 1312
    .end local v3    # "result":I
    .end local v8    # "bssid":J
    :catch_0
    move-exception v11

    .line 1313
    .local v11, "iae":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v0, "WifiMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Bad MAC address in ANQP response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v11}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private handleAssociatedBSSIDEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "eventStr"    # Ljava/lang/String;
    .param p2, "iface"    # Ljava/lang/String;

    .prologue
    .line 1130
    const/4 v5, 0x0

    .line 1131
    .local v5, "BSSID":Ljava/lang/String;
    sget-object v0, Lcom/android/server/wifi/WifiMonitor;->mAssociatedPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 1132
    .local v6, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1133
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 1135
    .end local v5    # "BSSID":Ljava/lang/String;
    :cond_0
    sget v3, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    const v2, 0x20093

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;IIILjava/lang/Object;)V

    .line 1129
    return-void
.end method

.method private handleDriverEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "state"    # Ljava/lang/String;
    .param p2, "iface"    # Ljava/lang/String;

    .prologue
    .line 1071
    if-nez p1, :cond_0

    .line 1072
    return-void

    .line 1074
    :cond_0
    const-string/jumbo v0, "HANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1075
    const v0, 0x2400c

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;I)V

    .line 1070
    :cond_1
    return-void
.end method

.method private handleEvent(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # I
    .param p2, "remainder"    # Ljava/lang/String;
    .param p3, "iface"    # Ljava/lang/String;

    .prologue
    .line 1086
    sget-boolean v0, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    if-eqz v0, :cond_0

    .line 1087
    const-string/jumbo v0, "WifiMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleEvent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 1085
    :cond_1
    :goto_0
    return-void

    .line 1091
    :sswitch_0
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-direct {p0, v0, p2, p3}, Lcom/android/server/wifi/WifiMonitor;->handleNetworkStateChange(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1095
    :sswitch_1
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-direct {p0, v0, p2, p3}, Lcom/android/server/wifi/WifiMonitor;->handleNetworkStateChange(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1099
    :sswitch_2
    const v0, 0x24005

    invoke-direct {p0, p3, v0}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;I)V

    goto :goto_0

    .line 1103
    :sswitch_3
    const v0, 0x24011

    invoke-direct {p0, p3, v0}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;I)V

    goto :goto_0

    .line 1107
    :sswitch_4
    invoke-direct {p0, p3, p2}, Lcom/android/server/wifi/WifiMonitor;->handleSupplicantVendorDebugEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1111
    :sswitch_5
    sget-boolean v0, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    if-eqz v0, :cond_1

    .line 1112
    const-string/jumbo v0, "WifiMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleEvent unknown: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1089
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_0
        0x4 -> :sswitch_2
        0xe -> :sswitch_5
        0xf -> :sswitch_3
        0x100 -> :sswitch_4
    .end sparse-switch
.end method

.method private handleHostApEvents(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "dataString"    # Ljava/lang/String;
    .param p2, "iface"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1275
    const-string/jumbo v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1277
    .local v0, "tokens":[Ljava/lang/String;
    aget-object v1, v0, v3

    const-string/jumbo v2, "AP-STA-CONNECTED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1278
    new-instance v1, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v1, p1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Ljava/lang/String;)V

    const v2, 0x2402a

    invoke-direct {p0, p2, v2, v1}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    .line 1274
    :cond_0
    :goto_0
    return-void

    .line 1280
    :cond_1
    aget-object v1, v0, v3

    const-string/jumbo v2, "AP-STA-DISCONNECTED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1281
    new-instance v1, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v1, p1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Ljava/lang/String;)V

    const v2, 0x24029

    invoke-direct {p0, p2, v2, v1}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private handleIconResult(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "eventStr"    # Ljava/lang/String;
    .param p2, "iface"    # Ljava/lang/String;

    .prologue
    .line 1319
    const-string/jumbo v5, " "

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1320
    .local v3, "segments":[Ljava/lang/String;
    array-length v5, v3

    const/4 v6, 0x4

    if-eq v5, v6, :cond_0

    .line 1321
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "Incorrect number of segments"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1325
    :cond_0
    const/4 v5, 0x1

    :try_start_0
    aget-object v0, v3, v5

    .line 1326
    .local v0, "bssid":Ljava/lang/String;
    const/4 v5, 0x2

    aget-object v1, v3, v5

    .line 1327
    .local v1, "fileName":Ljava/lang/String;
    const/4 v5, 0x3

    aget-object v5, v3, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1329
    .local v4, "size":I
    new-instance v5, Lcom/android/server/wifi/hotspot2/IconEvent;

    invoke-static {v0}, Lcom/android/server/wifi/hotspot2/Utils;->parseMac(Ljava/lang/String;)J

    move-result-wide v6

    invoke-direct {v5, v6, v7, v1, v4}, Lcom/android/server/wifi/hotspot2/IconEvent;-><init>(JLjava/lang/String;I)V

    .line 1328
    const v6, 0x24035

    invoke-direct {p0, p2, v6, v5}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1317
    return-void

    .line 1331
    .end local v0    # "bssid":Ljava/lang/String;
    .end local v1    # "fileName":Ljava/lang/String;
    .end local v4    # "size":I
    :catch_0
    move-exception v2

    .line 1332
    .local v2, "nfe":Ljava/lang/NumberFormatException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "Bad numeral"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private handleNetworkStateChange(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16
    .param p1, "newState"    # Landroid/net/NetworkInfo$DetailedState;
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "iface"    # Ljava/lang/String;

    .prologue
    .line 1456
    const/4 v6, 0x0

    .line 1457
    .local v6, "BSSID":Ljava/lang/String;
    const/4 v4, -0x1

    .line 1458
    .local v4, "networkId":I
    const/4 v5, 0x0

    .line 1459
    .local v5, "reason":I
    const/4 v14, -0x1

    .line 1460
    .local v14, "ind":I
    const/4 v10, 0x0

    .line 1462
    .local v10, "local":I
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, p1

    if-ne v0, v1, :cond_3

    .line 1463
    sget-object v1, Lcom/android/server/wifi/WifiMonitor;->mConnectedEventPattern:Ljava/util/regex/Pattern;

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v15

    .line 1464
    .local v15, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v15}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1465
    sget-boolean v1, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "WifiMonitor"

    const-string/jumbo v2, "handleNetworkStateChange: Couldnt find BSSID in event string"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1474
    .end local v6    # "BSSID":Ljava/lang/String;
    :cond_0
    :goto_0
    const v3, 0x24003

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;IIILjava/lang/Object;)V

    .line 1455
    .end local v15    # "match":Ljava/util/regex/Matcher;
    :cond_1
    :goto_1
    return-void

    .line 1467
    .restart local v6    # "BSSID":Ljava/lang/String;
    .restart local v15    # "match":Ljava/util/regex/Matcher;
    :cond_2
    const/4 v1, 0x1

    invoke-virtual {v15, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 1469
    .local v6, "BSSID":Ljava/lang/String;
    const/4 v1, 0x2

    :try_start_0
    invoke-virtual {v15, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    goto :goto_0

    .line 1470
    :catch_0
    move-exception v13

    .line 1471
    .local v13, "e":Ljava/lang/NumberFormatException;
    const/4 v4, -0x1

    goto :goto_0

    .line 1475
    .end local v13    # "e":Ljava/lang/NumberFormatException;
    .end local v15    # "match":Ljava/util/regex/Matcher;
    .local v6, "BSSID":Ljava/lang/String;
    :cond_3
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, p1

    if-ne v0, v1, :cond_1

    .line 1476
    sget-object v1, Lcom/android/server/wifi/WifiMonitor;->mDisconnectedEventPattern:Ljava/util/regex/Pattern;

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v15

    .line 1477
    .restart local v15    # "match":Ljava/util/regex/Matcher;
    invoke-virtual {v15}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-nez v1, :cond_6

    .line 1478
    sget-boolean v1, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    if-eqz v1, :cond_4

    const-string/jumbo v1, "WifiMonitor"

    const-string/jumbo v2, "handleNetworkStateChange: Could not parse disconnect string"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1492
    .end local v6    # "BSSID":Ljava/lang/String;
    :cond_4
    :goto_2
    sget-boolean v1, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    if-eqz v1, :cond_5

    const-string/jumbo v1, "WifiMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "WifiMonitor notify network disconnect: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1494
    const-string/jumbo v3, " reason="

    .line 1492
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1494
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 1492
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1495
    :cond_5
    const v9, 0x24004

    move-object/from16 v7, p0

    move-object/from16 v8, p3

    move v11, v5

    move-object v12, v6

    invoke-direct/range {v7 .. v12}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;IIILjava/lang/Object;)V

    goto :goto_1

    .line 1480
    .restart local v6    # "BSSID":Ljava/lang/String;
    :cond_6
    const/4 v1, 0x1

    invoke-virtual {v15, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 1482
    .local v6, "BSSID":Ljava/lang/String;
    const/4 v1, 0x2

    :try_start_1
    invoke-virtual {v15, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    .line 1487
    :goto_3
    const/4 v1, 0x3

    :try_start_2
    invoke-virtual {v15, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v10

    goto :goto_2

    .line 1483
    :catch_1
    move-exception v13

    .line 1484
    .restart local v13    # "e":Ljava/lang/NumberFormatException;
    const/4 v5, -0x1

    goto :goto_3

    .line 1488
    .end local v13    # "e":Ljava/lang/NumberFormatException;
    :catch_2
    move-exception v13

    .line 1489
    .restart local v13    # "e":Ljava/lang/NumberFormatException;
    const/4 v10, -0x1

    goto :goto_2
.end method

.method private handleP2pEvents(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "dataString"    # Ljava/lang/String;
    .param p2, "iface"    # Ljava/lang/String;

    .prologue
    .line 1220
    const-string/jumbo v3, "P2P-DEVICE-FOUND"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1221
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiMonitor;->getWifiP2pDevice(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v0

    .line 1222
    .local v0, "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    if-eqz v0, :cond_0

    const v3, 0x24015

    invoke-direct {p0, p2, v3, v0}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    .line 1219
    .end local v0    # "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_0
    :goto_0
    return-void

    .line 1223
    :cond_1
    const-string/jumbo v3, "P2P-DEVICE-LOST"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1224
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiMonitor;->getWifiP2pDevice(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v0

    .line 1225
    .restart local v0    # "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    if-eqz v0, :cond_0

    const v3, 0x24016

    invoke-direct {p0, p2, v3, v0}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_0

    .line 1226
    .end local v0    # "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_2
    const-string/jumbo v3, "P2P-FIND-STOPPED"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1227
    const v3, 0x24025

    invoke-direct {p0, p2, v3}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;I)V

    goto :goto_0

    .line 1228
    :cond_3
    const-string/jumbo v3, "P2P-GO-NEG-REQUEST"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1229
    new-instance v3, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-direct {v3, p1}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>(Ljava/lang/String;)V

    const v4, 0x24017

    invoke-direct {p0, p2, v4, v3}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_0

    .line 1230
    :cond_4
    const-string/jumbo v3, "P2P-GO-NEG-SUCCESS"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1231
    const v3, 0x24019

    invoke-direct {p0, p2, v3}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;I)V

    goto :goto_0

    .line 1232
    :cond_5
    const-string/jumbo v3, "P2P-GO-NEG-FAILURE"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1233
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiMonitor;->p2pError(Ljava/lang/String;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    move-result-object v3

    const v4, 0x2401a

    invoke-direct {p0, p2, v4, v3}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_0

    .line 1234
    :cond_6
    const-string/jumbo v3, "P2P-GROUP-FORMATION-SUCCESS"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1235
    const v3, 0x2401b

    invoke-direct {p0, p2, v3}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;I)V

    goto :goto_0

    .line 1236
    :cond_7
    const-string/jumbo v3, "P2P-GROUP-FORMATION-FAILURE"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1237
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiMonitor;->p2pError(Ljava/lang/String;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    move-result-object v3

    const v4, 0x2401c

    invoke-direct {p0, p2, v4, v3}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1238
    :cond_8
    const-string/jumbo v3, "P2P-GROUP-STARTED"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1239
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiMonitor;->getWifiP2pGroup(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v1

    .line 1240
    .local v1, "group":Landroid/net/wifi/p2p/WifiP2pGroup;
    if-eqz v1, :cond_0

    const v3, 0x2401d

    invoke-direct {p0, p2, v3, v1}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1241
    .end local v1    # "group":Landroid/net/wifi/p2p/WifiP2pGroup;
    :cond_9
    const-string/jumbo v3, "P2P-GROUP-REMOVED"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1242
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiMonitor;->getWifiP2pGroup(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v1

    .line 1243
    .restart local v1    # "group":Landroid/net/wifi/p2p/WifiP2pGroup;
    if-eqz v1, :cond_0

    const v3, 0x2401e

    invoke-direct {p0, p2, v3, v1}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1244
    .end local v1    # "group":Landroid/net/wifi/p2p/WifiP2pGroup;
    :cond_a
    const-string/jumbo v3, "P2P-INVITATION-RECEIVED"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1245
    new-instance v3, Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-direct {v3, p1}, Landroid/net/wifi/p2p/WifiP2pGroup;-><init>(Ljava/lang/String;)V

    const v4, 0x2401f

    invoke-direct {p0, p2, v4, v3}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1246
    :cond_b
    const-string/jumbo v3, "P2P-INVITATION-RESULT"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1247
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiMonitor;->p2pError(Ljava/lang/String;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    move-result-object v3

    const v4, 0x24020

    invoke-direct {p0, p2, v4, v3}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1248
    :cond_c
    const-string/jumbo v3, "P2P-PROV-DISC-PBC-REQ"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1249
    new-instance v3, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;

    invoke-direct {v3, p1}, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;-><init>(Ljava/lang/String;)V

    const v4, 0x24021

    invoke-direct {p0, p2, v4, v3}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1250
    :cond_d
    const-string/jumbo v3, "P2P-PROV-DISC-PBC-RESP"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1251
    new-instance v3, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;

    invoke-direct {v3, p1}, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;-><init>(Ljava/lang/String;)V

    const v4, 0x24022

    invoke-direct {p0, p2, v4, v3}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1252
    :cond_e
    const-string/jumbo v3, "P2P-PROV-DISC-ENTER-PIN"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1253
    new-instance v3, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;

    invoke-direct {v3, p1}, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;-><init>(Ljava/lang/String;)V

    const v4, 0x24023

    invoke-direct {p0, p2, v4, v3}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1254
    :cond_f
    const-string/jumbo v3, "P2P-PROV-DISC-SHOW-PIN"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1255
    new-instance v3, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;

    invoke-direct {v3, p1}, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;-><init>(Ljava/lang/String;)V

    const v4, 0x24024

    invoke-direct {p0, p2, v4, v3}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1256
    :cond_10
    const-string/jumbo v3, "P2P-PROV-DISC-FAILURE"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 1257
    const v3, 0x24027

    invoke-direct {p0, p2, v3}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 1258
    :cond_11
    const-string/jumbo v3, "P2P-SERV-DISC-RESP"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 1259
    invoke-static {p1}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->newInstance(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 1260
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;>;"
    if-eqz v2, :cond_12

    .line 1261
    const v3, 0x24026

    invoke-direct {p0, p2, v3, v2}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1263
    :cond_12
    const-string/jumbo v3, "WifiMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Null service resp "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1265
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;>;"
    :cond_13
    const-string/jumbo v3, "P2P-REMOVE-AND-REFORM-GROUP"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1266
    const-string/jumbo v3, "WifiMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Received event= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1267
    const v3, 0x24028

    invoke-direct {p0, p2, v3}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;I)V

    goto/16 :goto_0
.end method

.method private handleRequests(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p1, "dataString"    # Ljava/lang/String;
    .param p2, "iface"    # Ljava/lang/String;

    .prologue
    const v12, 0x24010

    const/4 v2, 0x4

    const/4 v1, 0x2

    const/4 v3, 0x1

    .line 1349
    const/4 v5, 0x0

    .line 1350
    .local v5, "SSID":Ljava/lang/String;
    const/4 v4, -0x2

    .line 1351
    .local v4, "reason":I
    sget v0, Lcom/android/server/wifi/WifiMonitor;->REQUEST_PREFIX_LEN_STR:I

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 1352
    .local v11, "requestName":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1353
    return-void

    .line 1355
    :cond_0
    const-string/jumbo v0, "IDENTITY"

    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1356
    sget-object v0, Lcom/android/server/wifi/WifiMonitor;->mRequestIdentityPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 1357
    .local v8, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1358
    invoke-virtual {v8, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 1360
    .local v5, "SSID":Ljava/lang/String;
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {v8, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 1367
    .end local v5    # "SSID":Ljava/lang/String;
    :goto_0
    sget v3, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    const v2, 0x2400f

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;IIILjava/lang/Object;)V

    .line 1348
    .end local v8    # "match":Ljava/util/regex/Matcher;
    :cond_1
    :goto_1
    return-void

    .line 1361
    .restart local v5    # "SSID":Ljava/lang/String;
    .restart local v8    # "match":Ljava/util/regex/Matcher;
    :catch_0
    move-exception v7

    .line 1362
    .local v7, "e":Ljava/lang/NumberFormatException;
    const/4 v4, -0x1

    goto :goto_0

    .line 1365
    .end local v7    # "e":Ljava/lang/NumberFormatException;
    .local v5, "SSID":Ljava/lang/String;
    :cond_2
    const-string/jumbo v0, "WifiMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "didn\'t find SSID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1368
    .end local v8    # "match":Ljava/util/regex/Matcher;
    :cond_3
    const-string/jumbo v0, "SIM"

    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1369
    sget-object v0, Lcom/android/server/wifi/WifiMonitor;->mRequestGsmAuthPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    .line 1370
    .local v9, "matchGsm":Ljava/util/regex/Matcher;
    sget-object v0, Lcom/android/server/wifi/WifiMonitor;->mRequestUmtsAuthPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    .line 1372
    .local v10, "matchUmts":Ljava/util/regex/Matcher;
    new-instance v6, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;

    invoke-direct {v6}, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;-><init>()V

    .line 1373
    .local v6, "data":Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1374
    invoke-virtual {v9, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v6, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->networkId:I

    .line 1375
    iput v2, v6, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->protocol:I

    .line 1376
    invoke-virtual {v9, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->ssid:Ljava/lang/String;

    .line 1377
    invoke-virtual {v9, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->data:[Ljava/lang/String;

    .line 1378
    invoke-direct {p0, p2, v12, v6}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_1

    .line 1379
    :cond_4
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1380
    invoke-virtual {v10, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v6, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->networkId:I

    .line 1381
    const/4 v0, 0x5

    iput v0, v6, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->protocol:I

    .line 1382
    invoke-virtual {v10, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->ssid:Ljava/lang/String;

    .line 1383
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, v6, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->data:[Ljava/lang/String;

    .line 1384
    iget-object v0, v6, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->data:[Ljava/lang/String;

    invoke-virtual {v10, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 1385
    iget-object v0, v6, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->data:[Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {v10, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 1386
    invoke-direct {p0, p2, v12, v6}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 1388
    :cond_5
    const-string/jumbo v0, "WifiMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "couldn\'t parse SIM auth request - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1392
    .end local v6    # "data":Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;
    .end local v9    # "matchGsm":Ljava/util/regex/Matcher;
    .end local v10    # "matchUmts":Ljava/util/regex/Matcher;
    :cond_6
    sget-boolean v0, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "WifiMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "couldn\'t identify request type - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private handleSupplicantStateChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 19
    .param p1, "dataString"    # Ljava/lang/String;
    .param p2, "iface"    # Ljava/lang/String;

    .prologue
    .line 1402
    const/16 v18, 0x0

    .line 1403
    .local v18, "wifiSsid":Landroid/net/wifi/WifiSsid;
    const-string/jumbo v1, "SSID="

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    .line 1404
    .local v10, "index":I
    const/4 v1, -0x1

    if-eq v10, v1, :cond_0

    .line 1406
    add-int/lit8 v1, v10, 0x5

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1405
    invoke-static {v1}, Landroid/net/wifi/WifiSsid;->createFromAsciiEncoded(Ljava/lang/String;)Landroid/net/wifi/WifiSsid;

    move-result-object v18

    .line 1408
    .end local v18    # "wifiSsid":Landroid/net/wifi/WifiSsid;
    :cond_0
    const-string/jumbo v1, " "

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1410
    .local v8, "dataTokens":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 1411
    .local v7, "BSSID":Ljava/lang/String;
    const/4 v12, -0x1

    .line 1412
    .local v12, "networkId":I
    const/4 v13, -0x1

    .line 1413
    .local v13, "newState":I
    const/4 v1, 0x0

    array-length v2, v8

    .end local v7    # "BSSID":Ljava/lang/String;
    :goto_0
    if-ge v1, v2, :cond_5

    aget-object v16, v8, v1

    .line 1414
    .local v16, "token":Ljava/lang/String;
    const-string/jumbo v3, "="

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 1415
    .local v11, "nameValue":[Ljava/lang/String;
    array-length v3, v11

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    .line 1413
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1419
    :cond_2
    const/4 v3, 0x0

    aget-object v3, v11, v3

    const-string/jumbo v4, "BSSID"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1420
    const/4 v3, 0x1

    aget-object v7, v11, v3

    .local v7, "BSSID":Ljava/lang/String;
    goto :goto_1

    .line 1426
    .end local v7    # "BSSID":Ljava/lang/String;
    :cond_3
    const/4 v3, 0x1

    :try_start_0
    aget-object v3, v11, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v17

    .line 1431
    .local v17, "value":I
    const/4 v3, 0x0

    aget-object v3, v11, v3

    const-string/jumbo v4, "id"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1432
    move/from16 v12, v17

    goto :goto_1

    .line 1433
    :cond_4
    const/4 v3, 0x0

    aget-object v3, v11, v3

    const-string/jumbo v4, "state"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1434
    move/from16 v13, v17

    goto :goto_1

    .line 1438
    .end local v11    # "nameValue":[Ljava/lang/String;
    .end local v16    # "token":Ljava/lang/String;
    .end local v17    # "value":I
    :cond_5
    const/4 v1, -0x1

    if-ne v13, v1, :cond_6

    return-void

    .line 1440
    :cond_6
    sget-object v14, Landroid/net/wifi/SupplicantState;->INVALID:Landroid/net/wifi/SupplicantState;

    .line 1441
    .local v14, "newSupplicantState":Landroid/net/wifi/SupplicantState;
    invoke-static {}, Landroid/net/wifi/SupplicantState;->values()[Landroid/net/wifi/SupplicantState;

    move-result-object v2

    const/4 v1, 0x0

    array-length v3, v2

    :goto_2
    if-ge v1, v3, :cond_7

    aget-object v15, v2, v1

    .line 1442
    .local v15, "state":Landroid/net/wifi/SupplicantState;
    invoke-virtual {v15}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v4

    if-ne v4, v13, :cond_9

    .line 1443
    move-object v14, v15

    .line 1447
    .end local v15    # "state":Landroid/net/wifi/SupplicantState;
    :cond_7
    sget-object v1, Landroid/net/wifi/SupplicantState;->INVALID:Landroid/net/wifi/SupplicantState;

    if-ne v14, v1, :cond_8

    .line 1448
    const-string/jumbo v1, "WifiMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid supplicant state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1450
    :cond_8
    sget v4, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    .line 1451
    new-instance v6, Lcom/android/server/wifi/StateChangeResult;

    move-object/from16 v0, v18

    invoke-direct {v6, v12, v0, v7, v14}, Lcom/android/server/wifi/StateChangeResult;-><init>(ILandroid/net/wifi/WifiSsid;Ljava/lang/String;Landroid/net/wifi/SupplicantState;)V

    .line 1450
    const v3, 0x24006

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;IIILjava/lang/Object;)V

    .line 1401
    return-void

    .line 1441
    .restart local v15    # "state":Landroid/net/wifi/SupplicantState;
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1427
    .end local v14    # "newSupplicantState":Landroid/net/wifi/SupplicantState;
    .end local v15    # "state":Landroid/net/wifi/SupplicantState;
    .restart local v11    # "nameValue":[Ljava/lang/String;
    .restart local v16    # "token":Ljava/lang/String;
    :catch_0
    move-exception v9

    .local v9, "e":Ljava/lang/NumberFormatException;
    goto/16 :goto_1
.end method

.method private handleSupplicantVendorDebugEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "eventStr"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 1518
    const/4 v2, 0x0

    .line 1520
    .local v2, "subnetStatus":I
    sget-boolean v4, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, "WifiMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "IP subnet status change event - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1522
    :cond_0
    const-string/jumbo v4, " "

    invoke-virtual {p2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1523
    .local v3, "tokens":[Ljava/lang/String;
    array-length v4, v3

    if-ge v4, v8, :cond_1

    .line 1524
    const-string/jumbo v4, "WifiMonitor"

    const-string/jumbo v5, "IP subnet status event: Invalid tokens"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1525
    return-void

    .line 1527
    :cond_1
    aget-object v4, v3, v7

    const-string/jumbo v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1528
    .local v1, "nameValue":[Ljava/lang/String;
    array-length v4, v1

    if-eq v4, v8, :cond_2

    .line 1529
    const-string/jumbo v4, "WifiMonitor"

    const-string/jumbo v5, "IP subnet status event: Invalid nameValue"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1530
    return-void

    .line 1534
    :cond_2
    const/4 v4, 0x1

    :try_start_0
    aget-object v4, v1, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1539
    :goto_0
    invoke-direct {p0, p1, v2}, Lcom/android/server/wifi/WifiMonitor;->notifyIpSubnetStatusChange(Ljava/lang/String;I)V

    .line 1517
    return-void

    .line 1535
    :catch_0
    move-exception v0

    .line 1536
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0
.end method

.method private handleTargetBSSIDEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "eventStr"    # Ljava/lang/String;
    .param p2, "iface"    # Ljava/lang/String;

    .prologue
    .line 1121
    const/4 v5, 0x0

    .line 1122
    .local v5, "BSSID":Ljava/lang/String;
    sget-object v0, Lcom/android/server/wifi/WifiMonitor;->mTargetBSSIDPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 1123
    .local v6, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1124
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 1126
    .end local v5    # "BSSID":Ljava/lang/String;
    :cond_0
    sget v3, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    const v2, 0x2008d

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;IIILjava/lang/Object;)V

    .line 1120
    return-void
.end method

.method private handleWnmFrame(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "eventStr"    # Ljava/lang/String;
    .param p2, "iface"    # Ljava/lang/String;

    .prologue
    .line 1338
    :try_start_0
    invoke-static {p1}, Lcom/android/server/wifi/WnmData;->buildWnmData(Ljava/lang/String;)Lcom/android/server/wifi/WnmData;

    move-result-object v1

    .line 1339
    .local v1, "wnmData":Lcom/android/server/wifi/WnmData;
    const v2, 0x2403d

    invoke-direct {p0, p2, v2, v1}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1336
    .end local v1    # "wnmData":Lcom/android/server/wifi/WnmData;
    :goto_0
    return-void

    .line 1340
    :catch_0
    move-exception v0

    .line 1341
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "WifiMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Bad WNM event: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleWpsFailEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "dataString"    # Ljava/lang/String;
    .param p2, "iface"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    const v8, 0x24009

    .line 1140
    const-string/jumbo v7, "WPS-FAIL msg=\\d+(?: config_error=(\\d+))?(?: reason=(\\d+))?"

    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 1141
    .local v3, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 1142
    .local v2, "match":Ljava/util/regex/Matcher;
    const/4 v4, 0x0

    .line 1143
    .local v4, "reason":I
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1144
    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 1145
    .local v1, "cfgErrStr":Ljava/lang/String;
    const/4 v7, 0x2

    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 1147
    .local v6, "reasonStr":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 1148
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 1149
    .local v5, "reasonInt":I
    packed-switch v5, :pswitch_data_0

    .line 1157
    move v4, v5

    .line 1161
    .end local v5    # "reasonInt":I
    :cond_0
    if-eqz v1, :cond_1

    .line 1162
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1163
    .local v0, "cfgErrInt":I
    sparse-switch v0, :sswitch_data_0

    .line 1171
    if-nez v4, :cond_1

    move v4, v0

    .line 1177
    .end local v0    # "cfgErrInt":I
    .end local v1    # "cfgErrStr":Ljava/lang/String;
    .end local v6    # "reasonStr":Ljava/lang/String;
    :cond_1
    invoke-direct {p0, p2, v8, v9, v4}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;III)V

    .line 1139
    return-void

    .line 1151
    .restart local v1    # "cfgErrStr":Ljava/lang/String;
    .restart local v5    # "reasonInt":I
    .restart local v6    # "reasonStr":Ljava/lang/String;
    :pswitch_0
    const/4 v7, 0x5

    invoke-direct {p0, p2, v8, v7}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;II)V

    .line 1152
    return-void

    .line 1154
    :pswitch_1
    const/4 v7, 0x4

    invoke-direct {p0, p2, v8, v7}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;II)V

    .line 1155
    return-void

    .line 1165
    .end local v5    # "reasonInt":I
    .restart local v0    # "cfgErrInt":I
    :sswitch_0
    const/4 v7, 0x6

    invoke-direct {p0, p2, v8, v7}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;II)V

    .line 1166
    return-void

    .line 1168
    :sswitch_1
    const/4 v7, 0x3

    invoke-direct {p0, p2, v8, v7}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;II)V

    .line 1169
    return-void

    .line 1149
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1163
    :sswitch_data_0
    .sparse-switch
        0xc -> :sswitch_1
        0x12 -> :sswitch_0
    .end sparse-switch
.end method

.method private isMonitoring(Ljava/lang/String;)Z
    .locals 2
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 591
    iget-object v1, p0, Lcom/android/server/wifi/WifiMonitor;->mMonitoringMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 592
    .local v0, "val":Ljava/lang/Boolean;
    if-nez v0, :cond_0

    .line 593
    const/4 v1, 0x0

    return v1

    .line 596
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method private notifyIpSubnetStatusChange(Ljava/lang/String;I)V
    .locals 3
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "subnetStatus"    # I

    .prologue
    .line 1506
    if-ltz p2, :cond_0

    const/4 v0, 0x2

    if-le p2, v0, :cond_1

    .line 1507
    :cond_0
    const-string/jumbo v0, "WifiMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid IP subnet status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1508
    return-void

    .line 1511
    :cond_1
    const/16 v0, 0x13d

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;II)V

    .line 1502
    return-void
.end method

.method private p2pError(Ljava/lang/String;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;
    .locals 8
    .param p1, "dataString"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 1182
    sget-object v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->UNKNOWN:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    .line 1183
    .local v1, "err":Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;
    const-string/jumbo v4, " "

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1184
    .local v3, "tokens":[Ljava/lang/String;
    array-length v4, v3

    if-ge v4, v7, :cond_0

    return-object v1

    .line 1185
    :cond_0
    aget-object v4, v3, v6

    const-string/jumbo v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1186
    .local v2, "nameValue":[Ljava/lang/String;
    array-length v4, v2

    if-eq v4, v7, :cond_1

    return-object v1

    .line 1189
    :cond_1
    aget-object v4, v2, v6

    const-string/jumbo v5, "FREQ_CONFLICT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1190
    sget-object v4, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->NO_COMMON_CHANNEL:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    return-object v4

    .line 1193
    :cond_2
    const/4 v4, 0x1

    :try_start_0
    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->valueOf(I)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1197
    :goto_0
    return-object v1

    .line 1194
    :catch_0
    move-exception v0

    .line 1195
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0
.end method

.method private sendMessage(Landroid/os/Handler;Landroid/os/Message;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "message"    # Landroid/os/Message;

    .prologue
    .line 742
    if-eqz p1, :cond_0

    .line 743
    invoke-virtual {p2, p1}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 744
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 741
    :cond_0
    return-void
.end method

.method private sendMessage(Ljava/lang/String;I)V
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "what"    # I

    .prologue
    .line 682
    const/4 v0, 0x0

    invoke-static {v0, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;Landroid/os/Message;)V

    .line 681
    return-void
.end method

.method private sendMessage(Ljava/lang/String;II)V
    .locals 2
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "what"    # I
    .param p3, "arg1"    # I

    .prologue
    .line 690
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, p2, p3, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;Landroid/os/Message;)V

    .line 689
    return-void
.end method

.method private sendMessage(Ljava/lang/String;III)V
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "what"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I

    .prologue
    .line 694
    const/4 v0, 0x0

    invoke-static {v0, p2, p3, p4}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;Landroid/os/Message;)V

    .line 693
    return-void
.end method

.method private sendMessage(Ljava/lang/String;IIILjava/lang/Object;)V
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "what"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "obj"    # Ljava/lang/Object;

    .prologue
    .line 698
    const/4 v0, 0x0

    invoke-static {v0, p2, p3, p4, p5}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;Landroid/os/Message;)V

    .line 697
    return-void
.end method

.method private sendMessage(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 686
    const/4 v0, 0x0

    invoke-static {v0, p2, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;Landroid/os/Message;)V

    .line 685
    return-void
.end method

.method private sendMessage(Ljava/lang/String;Landroid/os/Message;)V
    .locals 10
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "message"    # Landroid/os/Message;

    .prologue
    .line 702
    iget-object v7, p0, Lcom/android/server/wifi/WifiMonitor;->mHandlerMap:Ljava/util/Map;

    invoke-interface {v7, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/SparseArray;

    .line 703
    .local v5, "ifaceHandlers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Set<Landroid/os/Handler;>;>;"
    if-eqz p1, :cond_3

    if-eqz v5, :cond_3

    .line 704
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiMonitor;->isMonitoring(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 705
    const/4 v2, 0x1

    .line 706
    .local v2, "firstHandler":Z
    iget v7, p2, Landroid/os/Message;->what:I

    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    .line 707
    .local v6, "ifaceWhatHandlers":Ljava/util/Set;, "Ljava/util/Set<Landroid/os/Handler;>;"
    if-eqz v6, :cond_2

    .line 708
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "handler$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Handler;

    .line 709
    .local v3, "handler":Landroid/os/Handler;
    if-eqz v2, :cond_0

    .line 710
    const/4 v2, 0x0

    .line 711
    invoke-direct {p0, v3, p2}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Landroid/os/Handler;Landroid/os/Message;)V

    goto :goto_0

    .line 714
    :cond_0
    invoke-static {p2}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v7

    invoke-direct {p0, v3, v7}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Landroid/os/Handler;Landroid/os/Message;)V

    goto :goto_0

    .line 719
    .end local v2    # "firstHandler":Z
    .end local v3    # "handler":Landroid/os/Handler;
    .end local v4    # "handler$iterator":Ljava/util/Iterator;
    .end local v6    # "ifaceWhatHandlers":Ljava/util/Set;, "Ljava/util/Set<Landroid/os/Handler;>;"
    :cond_1
    sget-boolean v7, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    if-eqz v7, :cond_2

    const-string/jumbo v7, "WifiMonitor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Dropping event because ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ") is stopped"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    :cond_2
    return-void

    .line 722
    :cond_3
    sget-boolean v7, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    if-eqz v7, :cond_4

    const-string/jumbo v7, "WifiMonitor"

    const-string/jumbo v8, "Sending to all monitors because there\'s no matching iface"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    :cond_4
    const/4 v2, 0x1

    .line 724
    .restart local v2    # "firstHandler":Z
    iget-object v7, p0, Lcom/android/server/wifi/WifiMonitor;->mHandlerMap:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 725
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/SparseArray<Ljava/util/Set<Landroid/os/Handler;>;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/android/server/wifi/WifiMonitor;->isMonitoring(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 726
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/SparseArray;

    iget v8, p2, Landroid/os/Message;->what:I

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    .line 727
    .restart local v6    # "ifaceWhatHandlers":Ljava/util/Set;, "Ljava/util/Set<Landroid/os/Handler;>;"
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "handler$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Handler;

    .line 728
    .restart local v3    # "handler":Landroid/os/Handler;
    if-eqz v2, :cond_6

    .line 729
    const/4 v2, 0x0

    .line 730
    invoke-direct {p0, v3, p2}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Landroid/os/Handler;Landroid/os/Message;)V

    goto :goto_1

    .line 733
    :cond_6
    invoke-static {p2}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v7

    invoke-direct {p0, v3, v7}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Landroid/os/Handler;Landroid/os/Message;)V

    goto :goto_1
.end method

.method private setMonitoring(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    .line 601
    iget-object v0, p0, Lcom/android/server/wifi/WifiMonitor;->mMonitoringMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    return-void
.end method

.method private setMonitoringNone()V
    .locals 3

    .prologue
    .line 604
    iget-object v2, p0, Lcom/android/server/wifi/WifiMonitor;->mMonitoringMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "iface$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 605
    .local v0, "iface":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/android/server/wifi/WifiMonitor;->setMonitoring(Ljava/lang/String;Z)V

    goto :goto_0

    .line 603
    .end local v0    # "iface":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method enableVerboseLogging(I)V
    .locals 1
    .param p1, "verbose"    # I

    .prologue
    const/4 v0, 0x0

    .line 564
    if-lez p1, :cond_0

    .line 565
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    .line 563
    :goto_0
    return-void

    .line 567
    :cond_0
    sput-boolean v0, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    goto :goto_0
.end method

.method public declared-synchronized killSupplicant(Z)V
    .locals 5
    .param p1, "p2pSupported"    # Z

    .prologue
    monitor-enter p0

    .line 662
    :try_start_0
    const-string/jumbo v2, "init.svc.wpa_supplicant"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 663
    .local v1, "suppState":Ljava/lang/String;
    if-nez v1, :cond_0

    const-string/jumbo v1, "unknown"

    .line 664
    :cond_0
    const-string/jumbo v2, "init.svc.p2p_supplicant"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 665
    .local v0, "p2pSuppState":Ljava/lang/String;
    if-nez v0, :cond_1

    const-string/jumbo v0, "unknown"

    .line 667
    :cond_1
    const-string/jumbo v2, "WifiMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "killSupplicant p2p"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 668
    const-string/jumbo v4, " init.svc.wpa_supplicant="

    .line 667
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 669
    const-string/jumbo v4, " init.svc.p2p_supplicant="

    .line 667
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    iget-object v2, p0, Lcom/android/server/wifi/WifiMonitor;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v2, p1}, Lcom/android/server/wifi/WifiNative;->killSupplicant(Z)Z

    .line 671
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/wifi/WifiMonitor;->mConnected:Z

    .line 672
    invoke-direct {p0}, Lcom/android/server/wifi/WifiMonitor;->setMonitoringNone()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 661
    return-void

    .end local v0    # "p2pSuppState":Ljava/lang/String;
    .end local v1    # "suppState":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V
    .locals 3
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "what"    # I
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    monitor-enter p0

    .line 576
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiMonitor;->mHandlerMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 577
    .local v0, "ifaceHandlers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Set<Landroid/os/Handler;>;>;"
    if-nez v0, :cond_0

    .line 578
    new-instance v0, Landroid/util/SparseArray;

    .end local v0    # "ifaceHandlers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Set<Landroid/os/Handler;>;>;"
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 579
    .restart local v0    # "ifaceHandlers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Set<Landroid/os/Handler;>;>;"
    iget-object v2, p0, Lcom/android/server/wifi/WifiMonitor;->mHandlerMap:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    :cond_0
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 582
    .local v1, "ifaceWhatHandlers":Ljava/util/Set;, "Ljava/util/Set<Landroid/os/Handler;>;"
    if-nez v1, :cond_1

    .line 583
    new-instance v1, Landroid/util/ArraySet;

    .end local v1    # "ifaceWhatHandlers":Ljava/util/Set;, "Ljava/util/Set<Landroid/os/Handler;>;"
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 584
    .restart local v1    # "ifaceWhatHandlers":Ljava/util/Set;, "Ljava/util/Set<Landroid/os/Handler;>;"
    invoke-virtual {v0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 586
    :cond_1
    invoke-interface {v1, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 575
    return-void

    .end local v0    # "ifaceHandlers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Set<Landroid/os/Handler;>;>;"
    .end local v1    # "ifaceWhatHandlers":Ljava/util/Set;, "Ljava/util/Set<Landroid/os/Handler;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized startMonitoring(Ljava/lang/String;)V
    .locals 4
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 635
    :try_start_0
    const-string/jumbo v1, "WifiMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startMonitoring("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") with mConnected = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/wifi/WifiMonitor;->mConnected:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    invoke-direct {p0}, Lcom/android/server/wifi/WifiMonitor;->ensureConnectedLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 638
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/server/wifi/WifiMonitor;->setMonitoring(Ljava/lang/String;Z)V

    .line 639
    const v1, 0x24001

    invoke-direct {p0, p1, v1}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    .line 634
    return-void

    .line 642
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiMonitor;->isMonitoring(Ljava/lang/String;)Z

    move-result v0

    .line 643
    .local v0, "originalMonitoring":Z
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/server/wifi/WifiMonitor;->setMonitoring(Ljava/lang/String;Z)V

    .line 644
    const v1, 0x24002

    invoke-direct {p0, p1, v1}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;I)V

    .line 645
    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/WifiMonitor;->setMonitoring(Ljava/lang/String;Z)V

    .line 646
    const-string/jumbo v1, "WifiMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startMonitoring("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") failed!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "originalMonitoring":Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized stopMonitoring(Ljava/lang/String;)V
    .locals 3
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 651
    :try_start_0
    sget-boolean v0, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WifiMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopMonitoring("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/WifiMonitor;->setMonitoring(Ljava/lang/String;Z)V

    .line 653
    const v0, 0x24002

    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;I)V

    .line 654
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/WifiMonitor;->setMonitoring(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 650
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopSupplicant()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 658
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMonitor;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative;->stopSupplicant()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 657
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
