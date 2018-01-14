.class public final Lcom/qti/dpm/DpmService;
.super Lcom/qti/dpm/IDpmService$Stub;
.source "DpmService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qti/dpm/DpmService$1;,
        Lcom/qti/dpm/DpmService$ApnTypeToInt;,
        Lcom/qti/dpm/DpmService$DpmNsrmVendorTriggerInfo;,
        Lcom/qti/dpm/DpmService$DpmRatInfo;,
        Lcom/qti/dpm/DpmService$DpmReceiver;,
        Lcom/qti/dpm/DpmService$DpmSender;,
        Lcom/qti/dpm/DpmService$DpmWifiInfo;,
        Lcom/qti/dpm/DpmService$DpmWwanInfo;,
        Lcom/qti/dpm/DpmService$FeatureType;,
        Lcom/qti/dpm/DpmService$PackageListener;,
        Lcom/qti/dpm/DpmService$TCMFeatureType;,
        Lcom/qti/dpm/DpmService$TriggerCreatorDied;
    }
.end annotation


# static fields
.field private static final synthetic -android-net-NetworkInfo$StateSwitchesValues:[I = null

.field private static final synthetic -com-qti-dpm-DpmService$FeatureTypeSwitchesValues:[I = null

.field private static final CLAT_INTERFACE_NAME:Ljava/lang/String; = "clat4"

.field public static final CT_FEATURE:I = 0x2

.field private static final DBG:Z = true

.field private static final DPM_APN_TYPE_DEFAULT:Ljava/lang/String; = "default"

.field private static final DPM_APN_TYPE_DEFAULT_INT:I = 0x0

.field private static final DPM_CONFIG_FEATURE_MASK_NSRM:I = 0x4

.field private static final DPM_CONFIG_FEATURE_MASK_TCM:I = 0x8

.field static final DPM_DEBUG_LOGLEVEL:I = 0xf86

.field static final DPM_D_NOTIFY_NSRM_BLOCKED_UID:I = 0x8

.field static final DPM_D_REQ_GET_RUNNING_APP_LIST:I = 0x12

.field static final DPM_D_REQ_REQUEST_GET_APP_INFO_LIST:I = 0x1

.field static final DPM_D_REQ_UPDATE_APP_LEARNED_INFO:I = 0x13

.field private static final DPM_ENABLE_PROPERTY_MASK:I = 0xf

.field public static final DPM_INTERNET_CONNECTED_ACTION:Ljava/lang/String; = "com.qti.dpmframework.DPM_INTERNET_CONNECTED"

.field static final DPM_MAX_COMMAND_BYTES:I = 0x2000

.field static final DPM_NET_SUBTYPE_WLAN_B:I = 0x14

.field static final DPM_NET_SUBTYPE_WLAN_G:I = 0x15

.field public static final DPM_NSRM_NO_VENDOR_TRIGGERS:I = 0x64

.field public static final DPM_PREFERENCE_CHANGED_ACTION:Ljava/lang/String; = "com.qti.dpmframework.DPM_PREFERENCE_CHANGED"

.field public static final DPM_RET_BUSY:I = -0x2

.field public static final DPM_RET_ERROR:I = -0x1

.field public static final DPM_RET_FEATURE_UNSUPPORTED:I = -0x4

.field public static final DPM_RET_FILE_SIZE_TOO_LARGE:I = -0x5

.field public static final DPM_RET_INVALID_ARGS:I = -0x3

.field public static final DPM_RET_INVALID_TRIGGER_TYPE:I = -0x9

.field public static final DPM_RET_INVALID_VERSION:I = -0x8

.field public static final DPM_RET_MAX_NO_TRIGGERS:I = -0xc

.field public static final DPM_RET_NO_MEMORY:I = -0xb

.field public static final DPM_RET_PATH_ACCESS_DENIED:I = -0x6

.field public static final DPM_RET_PATH_NAME_TOO_LONG:I = -0x7

.field public static final DPM_RET_SUCCESS:I = 0x3e8

.field public static final DPM_RET_TRIGGER_OPERATION_UNSUPPORTED:I = -0xa

.field static final DPM_S_NOTIFY_APP_INFO_LIST_CHG:I = 0xd

.field static final DPM_S_NOTIFY_INIT_DONE:I = 0x9

.field public static final DPM_S_NOTIFY_NSRM_BKG_EVT_STATE_CHG:I = 0xc

.field static final DPM_S_NOTIFY_RUNNING_APP_LIST:I = 0x11

.field static final DPM_S_NOTIFY_SCREEN_STATE_CHG:I = 0xe

.field static final DPM_S_NOTIFY_SUPL_CHANGE:I = 0x16

.field static final DPM_S_NOTIFY_TETHERING_STATE_CHG:I = 0xf

.field static final DPM_S_NOTIFY_VENDOR_TRIGGER_STATE_CHG:I = 0x10

.field static final DPM_S_NOTIFY_WLAN_STATE_CHG:I = 0xa

.field static final DPM_S_NOTIFY_WWAN_STATE_CHG:I = 0xb

.field static final DPM_S_REQ_GET_FEATURE_STATUS:I = 0x2

.field static final DPM_S_REQ_REFRESH_NSRM_CONFIG:I = 0x6

.field static final DPM_S_REQ_SET_FEATURE_STATUS:I = 0x4

.field static final DPM_S_RSP_GET_FEATURE_STATUS:I = 0x3

.field static final DPM_S_RSP_REFRESH_NSRM_CONFIG:I = 0x7

.field static final DPM_S_RSP_SET_FEATURE_STATUS:I = 0x5

.field private static final DPM_VENDOR_TRIGGER:I = 0x1

.field static final DPM_VERBOSE_LOGLEVEL:I = 0x1e91

.field private static ELAPSED_TIME_INDEX:I = 0x0

.field public static final EVENT_POSTDPMDINIT:I = 0x3

.field public static final EVENT_SEND:I = 0x1

.field public static final EVENT_TOGGLE_WIFI:I = 0x2

.field public static final EXTRA_FEATURE_ID:Ljava/lang/String; = "dpmFeatureId"

.field public static final EXTRA_FEATURE_PARAMETER:Ljava/lang/String; = "dpmFeatureParameter"

.field public static final EXTRA_NSRM_FEATURE:I = 0x1

.field public static final EXTRA_NSRM_FEATURE_ENABLED:I = 0x1

.field public static final EXTRA_PARAMETER_VALUE:Ljava/lang/String; = "dpmParameterValue"

.field public static final EXTRA_TCM_FEATURE:I = 0x2

.field public static final EXTRA_TCM_FEATURE_ENABLED:I = 0x1

.field public static final FD_FEATURE:I = 0x1

.field private static final MAX_DNS_ADDRS:I = 0x2

.field public static final NSRM_FEATURE:I = 0x3

.field private static final NSRM_TURN_OFF:I = 0x1

.field private static PID_INDEX:I = 0x0

.field static final RESPONSE_SOLICITED:I = 0x0

.field static final RESPONSE_UNSOLICITED:I = 0x1

.field static final SOCKET_NAME_DPM:Ljava/lang/String; = "dpmd"

.field static final SOCKET_OPEN_RETRY_MILLIS:I = 0xfa0

.field private static final SUB_TYPE:Ljava/lang/String; = "SERVICE"

.field public static final TCM_FEATURE:I = 0x4

.field private static UID_INDEX:I = 0x0

.field public static final dataPath:Ljava/lang/String; = "/data/dpm/"

.field static isDispatched:Z = false

.field static isDpmdDisconnected:Z = false

.field static isDpmdUp:Z = false

.field private static mVendorTriggerId:I = 0x0

.field private static mVendorTriggerNum:I = 0x0

.field public static final systemPath:Ljava/lang/String; = "/system/etc/dpm/"


# instance fields
.field DPM_EVENT_STATE_OFF:Z

.field DPM_EVENT_STATE_ON:Z

.field private _dpmWifiInfo:Lcom/qti/dpm/DpmService$DpmWifiInfo;

.field private _dpmWwanInfo:Lcom/qti/dpm/DpmService$DpmWwanInfo;

.field alarmMgr:Landroid/app/IAlarmManager;

.field apnToInt:Lcom/qti/dpm/DpmService$ApnTypeToInt;

.field private bDpmdCmd:Z

.field private bluetoothTethered:Z

.field private hashSize:I

.field private id:I

.field private mContext:Landroid/content/Context;

.field private mDefaultNetwork:I

.field mIntentReceiver:Landroid/content/BroadcastReceiver;

.field mNsrm:Lcom/qti/dpm/DpmNsrm;

.field private mNsrmClass:Ljava/lang/Class;

.field private mNsrmObj:Ljava/lang/Object;

.field mPackageListener:Lcom/qti/dpm/DpmService$PackageListener;

.field mReceiver:Lcom/qti/dpm/DpmService$DpmReceiver;

.field mReceiverThread:Ljava/lang/Thread;

.field mRequestMessagesPending:I

.field mRequestsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/qti/dpm/DpmRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenOn:Z

.field mSender:Lcom/qti/dpm/DpmService$DpmSender;

.field mSenderThread:Landroid/os/HandlerThread;

.field mSocket:Landroid/net/LocalSocket;

.field private mTcmRuntimeFeatureRequestedStatus:I

.field private mTcmRuntimeFeatureStatus:I

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mVendorTriggerState:Z

.field mVendorTriggerTable:Ljava/util/Hashtable;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private nsrmFeature:Z

.field powerMgr:Landroid/os/IPowerManager;

.field processesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[I>;"
        }
    .end annotation
.end field

.field private usbTethered:Z

.field private wifiTethered:Z


# direct methods
.method static synthetic -get0(Lcom/qti/dpm/DpmService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/qti/dpm/DpmService;->bluetoothTethered:Z

    return v0
.end method

.method static synthetic -get1(Lcom/qti/dpm/DpmService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/qti/dpm/DpmService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/qti/dpm/DpmService;)Landroid/net/wifi/WifiManager;
    .locals 1

    iget-object v0, p0, Lcom/qti/dpm/DpmService;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic -get3(Lcom/qti/dpm/DpmService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/qti/dpm/DpmService;->usbTethered:Z

    return v0
.end method

.method static synthetic -get4(Lcom/qti/dpm/DpmService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/qti/dpm/DpmService;->wifiTethered:Z

    return v0
.end method

.method private static synthetic -getandroid-net-NetworkInfo$StateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/qti/dpm/DpmService;->-android-net-NetworkInfo$StateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/qti/dpm/DpmService;->-android-net-NetworkInfo$StateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Landroid/net/NetworkInfo$State;->values()[Landroid/net/NetworkInfo$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_0
    :try_start_1
    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_1
    :try_start_2
    sget-object v1, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_2
    :try_start_3
    sget-object v1, Landroid/net/NetworkInfo$State;->DISCONNECTING:Landroid/net/NetworkInfo$State;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$State;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    :try_start_4
    sget-object v1, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$State;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    :try_start_5
    sget-object v1, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$State;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_5
    sput-object v0, Lcom/qti/dpm/DpmService;->-android-net-NetworkInfo$StateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1

    :catch_5
    move-exception v1

    goto :goto_0
.end method

.method private static synthetic -getcom-qti-dpm-DpmService$FeatureTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/qti/dpm/DpmService;->-com-qti-dpm-DpmService$FeatureTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/qti/dpm/DpmService;->-com-qti-dpm-DpmService$FeatureTypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/qti/dpm/DpmService$FeatureType;->values()[Lcom/qti/dpm/DpmService$FeatureType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/qti/dpm/DpmService$FeatureType;->CONNTRACK:Lcom/qti/dpm/DpmService$FeatureType;

    invoke-virtual {v1}, Lcom/qti/dpm/DpmService$FeatureType;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/qti/dpm/DpmService$FeatureType;->FD:Lcom/qti/dpm/DpmService$FeatureType;

    invoke-virtual {v1}, Lcom/qti/dpm/DpmService$FeatureType;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/qti/dpm/DpmService$FeatureType;->NSRM:Lcom/qti/dpm/DpmService$FeatureType;

    invoke-virtual {v1}, Lcom/qti/dpm/DpmService$FeatureType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/qti/dpm/DpmService$FeatureType;->TCM:Lcom/qti/dpm/DpmService$FeatureType;

    invoke-virtual {v1}, Lcom/qti/dpm/DpmService$FeatureType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/qti/dpm/DpmService;->-com-qti-dpm-DpmService$FeatureTypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -set0(Lcom/qti/dpm/DpmService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/qti/dpm/DpmService;->bluetoothTethered:Z

    return p1
.end method

.method static synthetic -set1(Lcom/qti/dpm/DpmService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/qti/dpm/DpmService;->mScreenOn:Z

    return p1
.end method

.method static synthetic -set2(Lcom/qti/dpm/DpmService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/qti/dpm/DpmService;->usbTethered:Z

    return p1
.end method

.method static synthetic -set3(Lcom/qti/dpm/DpmService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/qti/dpm/DpmService;->wifiTethered:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/qti/dpm/DpmService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/qti/dpm/DpmService;->sendInitReq()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/qti/dpm/DpmService;I)Lcom/qti/dpm/DpmRequest;
    .locals 1
    .param p1, "serial"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/qti/dpm/DpmService;->findAndRemoveRequestFromList(I)Lcom/qti/dpm/DpmRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap10(Lcom/qti/dpm/DpmService;)V
    .locals 0

    invoke-direct {p0}, Lcom/qti/dpm/DpmService;->postDpmdUpInit()V

    return-void
.end method

.method static synthetic -wrap11(Lcom/qti/dpm/DpmService;Landroid/os/Parcel;)V
    .locals 0
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Lcom/qti/dpm/DpmService;->processResponse(Landroid/os/Parcel;)V

    return-void
.end method

.method static synthetic -wrap12(Lcom/qti/dpm/DpmService;)V
    .locals 0

    invoke-direct {p0}, Lcom/qti/dpm/DpmService;->requestFeaturesSettings()V

    return-void
.end method

.method static synthetic -wrap13(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    invoke-static {p0, p1}, Lcom/qti/dpm/DpmService;->rlog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap14(Lcom/qti/dpm/DpmService;Lcom/qti/dpm/DpmRequest;)V
    .locals 0
    .param p1, "rr"    # Lcom/qti/dpm/DpmRequest;

    .prologue
    invoke-direct {p0, p1}, Lcom/qti/dpm/DpmService;->sendAppInfoList(Lcom/qti/dpm/DpmRequest;)V

    return-void
.end method

.method static synthetic -wrap15(Lcom/qti/dpm/DpmService;Z)V
    .locals 0
    .param p1, "state"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/qti/dpm/DpmService;->sendScreenState(Z)V

    return-void
.end method

.method static synthetic -wrap16(Lcom/qti/dpm/DpmService;Z)V
    .locals 0
    .param p1, "state"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/qti/dpm/DpmService;->sendSuplState(Z)V

    return-void
.end method

.method static synthetic -wrap17(Lcom/qti/dpm/DpmService;Z)V
    .locals 0
    .param p1, "state"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/qti/dpm/DpmService;->sendTetheringState(Z)V

    return-void
.end method

.method static synthetic -wrap18(Lcom/qti/dpm/DpmService;Lcom/qti/dpm/DpmService$DpmWifiInfo;)V
    .locals 0
    .param p1, "dpmWifiInfo"    # Lcom/qti/dpm/DpmService$DpmWifiInfo;

    .prologue
    invoke-direct {p0, p1}, Lcom/qti/dpm/DpmService;->sendWifiStatus(Lcom/qti/dpm/DpmService$DpmWifiInfo;)V

    return-void
.end method

.method static synthetic -wrap19(Lcom/qti/dpm/DpmService;Lcom/qti/dpm/DpmService$DpmWwanInfo;)V
    .locals 0
    .param p1, "dpmWwanInfo"    # Lcom/qti/dpm/DpmService$DpmWwanInfo;

    .prologue
    invoke-direct {p0, p1}, Lcom/qti/dpm/DpmService;->sendWwanStatus(Lcom/qti/dpm/DpmService$DpmWwanInfo;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/qti/dpm/DpmService;Landroid/net/NetworkInfo$State;)I
    .locals 1
    .param p1, "state"    # Landroid/net/NetworkInfo$State;

    .prologue
    invoke-direct {p0, p1}, Lcom/qti/dpm/DpmService;->NetworkStateToInt(Landroid/net/NetworkInfo$State;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap20(Lcom/qti/dpm/DpmService;Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1}, Lcom/qti/dpm/DpmService;->setWlanInfo(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic -wrap21(Lcom/qti/dpm/DpmService;Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1}, Lcom/qti/dpm/DpmService;->setWwanInfo(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/qti/dpm/DpmService;I)I
    .locals 1
    .param p1, "id"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/qti/dpm/DpmService;->deleteVendorTrigger(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Ljava/io/InputStream;[B)I
    .locals 1
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "buffer"    # [B

    .prologue
    invoke-static {p0, p1}, Lcom/qti/dpm/DpmService;->readDPMMessage(Ljava/io/InputStream;[B)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    invoke-static {p0, p1}, Lcom/qti/dpm/DpmService;->dlogd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap6(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    invoke-static {p0, p1}, Lcom/qti/dpm/DpmService;->dlogi(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap7(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    invoke-static {p0, p1}, Lcom/qti/dpm/DpmService;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap8(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    invoke-static {p0, p1}, Lcom/qti/dpm/DpmService;->loge(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap9(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    invoke-static {p0, p1}, Lcom/qti/dpm/DpmService;->logw(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 138
    sput v1, Lcom/qti/dpm/DpmService;->PID_INDEX:I

    .line 139
    const/4 v0, 0x1

    sput v0, Lcom/qti/dpm/DpmService;->UID_INDEX:I

    .line 140
    const/4 v0, 0x2

    sput v0, Lcom/qti/dpm/DpmService;->ELAPSED_TIME_INDEX:I

    .line 153
    sput-boolean v1, Lcom/qti/dpm/DpmService;->isDpmdUp:Z

    .line 156
    sput-boolean v1, Lcom/qti/dpm/DpmService;->isDpmdDisconnected:Z

    .line 159
    sput-boolean v1, Lcom/qti/dpm/DpmService;->isDispatched:Z

    .line 235
    sput v1, Lcom/qti/dpm/DpmService;->mVendorTriggerId:I

    .line 236
    sput v1, Lcom/qti/dpm/DpmService;->mVendorTriggerNum:I

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, -0x1

    const/4 v11, 0x1

    const/4 v8, 0x0

    const/4 v10, 0x0

    .line 964
    invoke-direct {p0}, Lcom/qti/dpm/IDpmService$Stub;-><init>()V

    .line 118
    iput-object v8, p0, Lcom/qti/dpm/DpmService;->mPackageListener:Lcom/qti/dpm/DpmService$PackageListener;

    .line 119
    iput-object v8, p0, Lcom/qti/dpm/DpmService;->mNsrm:Lcom/qti/dpm/DpmNsrm;

    .line 120
    iput-object v8, p0, Lcom/qti/dpm/DpmService;->mNsrmClass:Ljava/lang/Class;

    .line 121
    iput-object v8, p0, Lcom/qti/dpm/DpmService;->mNsrmObj:Ljava/lang/Object;

    .line 122
    iput-object v8, p0, Lcom/qti/dpm/DpmService;->powerMgr:Landroid/os/IPowerManager;

    .line 123
    iput-object v8, p0, Lcom/qti/dpm/DpmService;->alarmMgr:Landroid/app/IAlarmManager;

    .line 128
    iput-boolean v10, p0, Lcom/qti/dpm/DpmService;->wifiTethered:Z

    .line 129
    iput-boolean v10, p0, Lcom/qti/dpm/DpmService;->usbTethered:Z

    .line 130
    iput-boolean v10, p0, Lcom/qti/dpm/DpmService;->bluetoothTethered:Z

    .line 131
    iput-boolean v10, p0, Lcom/qti/dpm/DpmService;->nsrmFeature:Z

    .line 133
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/qti/dpm/DpmService;->mRequestsList:Ljava/util/ArrayList;

    .line 136
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lcom/qti/dpm/DpmService;->processesMap:Ljava/util/Map;

    .line 200
    iput v9, p0, Lcom/qti/dpm/DpmService;->mTcmRuntimeFeatureStatus:I

    .line 201
    iput v9, p0, Lcom/qti/dpm/DpmService;->mTcmRuntimeFeatureRequestedStatus:I

    .line 228
    iput-boolean v11, p0, Lcom/qti/dpm/DpmService;->DPM_EVENT_STATE_ON:Z

    .line 229
    iput-boolean v10, p0, Lcom/qti/dpm/DpmService;->DPM_EVENT_STATE_OFF:Z

    .line 237
    iput-boolean v10, p0, Lcom/qti/dpm/DpmService;->mVendorTriggerState:Z

    .line 239
    iput v10, p0, Lcom/qti/dpm/DpmService;->hashSize:I

    .line 240
    iput-boolean v11, p0, Lcom/qti/dpm/DpmService;->bDpmdCmd:Z

    .line 242
    iput v10, p0, Lcom/qti/dpm/DpmService;->id:I

    .line 246
    const/16 v7, 0x11

    iput v7, p0, Lcom/qti/dpm/DpmService;->mDefaultNetwork:I

    .line 266
    iput-object v8, p0, Lcom/qti/dpm/DpmService;->mVendorTriggerTable:Ljava/util/Hashtable;

    .line 465
    new-instance v7, Lcom/qti/dpm/DpmService$ApnTypeToInt;

    invoke-direct {v7, p0, v8}, Lcom/qti/dpm/DpmService$ApnTypeToInt;-><init>(Lcom/qti/dpm/DpmService;Lcom/qti/dpm/DpmService$ApnTypeToInt;)V

    iput-object v7, p0, Lcom/qti/dpm/DpmService;->apnToInt:Lcom/qti/dpm/DpmService$ApnTypeToInt;

    .line 467
    new-instance v7, Lcom/qti/dpm/DpmService$1;

    invoke-direct {v7, p0}, Lcom/qti/dpm/DpmService$1;-><init>(Lcom/qti/dpm/DpmService;)V

    iput-object v7, p0, Lcom/qti/dpm/DpmService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 967
    iput v10, p0, Lcom/qti/dpm/DpmService;->mRequestMessagesPending:I

    .line 968
    iput-object p1, p0, Lcom/qti/dpm/DpmService;->mContext:Landroid/content/Context;

    .line 969
    const-string/jumbo v7, "power"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v7

    iput-object v7, p0, Lcom/qti/dpm/DpmService;->powerMgr:Landroid/os/IPowerManager;

    .line 970
    const-string/jumbo v7, "alarm"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/app/IAlarmManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAlarmManager;

    move-result-object v7

    iput-object v7, p0, Lcom/qti/dpm/DpmService;->alarmMgr:Landroid/app/IAlarmManager;

    .line 972
    const-string/jumbo v7, "persist.dpm.feature"

    const/16 v8, 0xf

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 973
    .local v0, "dpmFeature":I
    and-int/lit8 v7, v0, 0x4

    const/4 v8, 0x4

    if-ne v7, v8, :cond_0

    .line 974
    iput-boolean v11, p0, Lcom/qti/dpm/DpmService;->nsrmFeature:Z

    .line 975
    :cond_0
    const-string/jumbo v7, "SERVICE"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "initNsrm nsrmFeature: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/qti/dpm/DpmService;->nsrmFeature:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/qti/dpm/DpmService;->dlogw(Ljava/lang/String;Ljava/lang/String;)V

    .line 977
    new-instance v7, Landroid/os/HandlerThread;

    const-string/jumbo v8, "DPMSender"

    invoke-direct {v7, v8}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lcom/qti/dpm/DpmService;->mSenderThread:Landroid/os/HandlerThread;

    .line 978
    iget-object v7, p0, Lcom/qti/dpm/DpmService;->mSenderThread:Landroid/os/HandlerThread;

    invoke-virtual {v7}, Landroid/os/HandlerThread;->start()V

    .line 980
    const-string/jumbo v7, "persist.dpm.loglevel"

    invoke-static {v7, v10}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 981
    .local v6, "val":I
    const/16 v7, 0xf86

    if-eq v6, v7, :cond_1

    const/16 v7, 0x1e91

    if-ne v6, v7, :cond_2

    .line 982
    :cond_1
    sput-boolean v11, Lcom/qti/dpm/DpmMsg;->ADDTL_MSG:Z

    .line 985
    :cond_2
    iget-object v7, p0, Lcom/qti/dpm/DpmService;->mSenderThread:Landroid/os/HandlerThread;

    invoke-virtual {v7}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    .line 986
    .local v4, "looper":Landroid/os/Looper;
    if-nez v4, :cond_3

    .line 987
    const-string/jumbo v7, "SERVICE"

    const-string/jumbo v8, "Looper obj is NULL."

    invoke-static {v7, v8}, Lcom/qti/dpm/DpmService;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 988
    return-void

    .line 990
    :cond_3
    new-instance v7, Lcom/qti/dpm/DpmService$DpmSender;

    invoke-direct {v7, p0, v4}, Lcom/qti/dpm/DpmService$DpmSender;-><init>(Lcom/qti/dpm/DpmService;Landroid/os/Looper;)V

    iput-object v7, p0, Lcom/qti/dpm/DpmService;->mSender:Lcom/qti/dpm/DpmService$DpmSender;

    .line 992
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 993
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v7, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 994
    const-string/jumbo v7, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 995
    const-string/jumbo v7, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 996
    const-string/jumbo v7, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 997
    const-string/jumbo v7, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 998
    const-string/jumbo v7, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 999
    const-string/jumbo v7, "android.net.conn.CONNECTIVITY_CHANGE_SUPL"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1000
    const-string/jumbo v7, "com.qti.dpmframework.DPM_INTERNET_CONNECTED"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1001
    const-string/jumbo v7, "SERVICE"

    const-string/jumbo v8, "DPM SERVICE REGISTER SERVICE FOR NETWORK CHANGE."

    invoke-static {v7, v8}, Lcom/qti/dpm/DpmService;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 1003
    iget-object v7, p0, Lcom/qti/dpm/DpmService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v7, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1005
    iget-object v7, p0, Lcom/qti/dpm/DpmService;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "wifi"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiManager;

    iput-object v7, p0, Lcom/qti/dpm/DpmService;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 1006
    iget-object v7, p0, Lcom/qti/dpm/DpmService;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "phone"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    iput-object v7, p0, Lcom/qti/dpm/DpmService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 1008
    iget-object v7, p0, Lcom/qti/dpm/DpmService;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "connectivity"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/ConnectivityManager;

    .line 1011
    .local v5, "mCmDpm":Landroid/net/ConnectivityManager;
    iget-object v7, p0, Lcom/qti/dpm/DpmService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_5

    .line 1012
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v7, "com.qti.dpmframework.DPM_INTERNET_CONNECTED"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1013
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v7, "state"

    const-string/jumbo v8, "CONNECTED"

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1014
    invoke-virtual {v5, v10}, Landroid/net/ConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v3

    .line 1015
    .local v3, "linkProperties":Landroid/net/LinkProperties;
    const-string/jumbo v7, "SERVICE"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "dpmd link properties "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/qti/dpm/DpmService;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 1016
    const-string/jumbo v7, "apnType"

    const-string/jumbo v8, "default"

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1017
    if-eqz v3, :cond_4

    .line 1018
    const-string/jumbo v7, "linkProperties"

    invoke-virtual {v2, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1024
    :goto_0
    iget-object v7, p0, Lcom/qti/dpm/DpmService;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v2}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1030
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "linkProperties":Landroid/net/LinkProperties;
    :goto_1
    new-instance v7, Lcom/qti/dpm/DpmService$DpmWifiInfo;

    invoke-direct {v7, p0}, Lcom/qti/dpm/DpmService$DpmWifiInfo;-><init>(Lcom/qti/dpm/DpmService;)V

    iput-object v7, p0, Lcom/qti/dpm/DpmService;->_dpmWifiInfo:Lcom/qti/dpm/DpmService$DpmWifiInfo;

    .line 1031
    new-instance v7, Lcom/qti/dpm/DpmService$DpmWwanInfo;

    invoke-direct {v7, p0}, Lcom/qti/dpm/DpmService$DpmWwanInfo;-><init>(Lcom/qti/dpm/DpmService;)V

    iput-object v7, p0, Lcom/qti/dpm/DpmService;->_dpmWwanInfo:Lcom/qti/dpm/DpmService$DpmWwanInfo;

    .line 1032
    new-instance v7, Lcom/qti/dpm/DpmService$DpmReceiver;

    invoke-direct {v7, p0}, Lcom/qti/dpm/DpmService$DpmReceiver;-><init>(Lcom/qti/dpm/DpmService;)V

    iput-object v7, p0, Lcom/qti/dpm/DpmService;->mReceiver:Lcom/qti/dpm/DpmService$DpmReceiver;

    .line 1033
    new-instance v7, Ljava/lang/Thread;

    iget-object v8, p0, Lcom/qti/dpm/DpmService;->mReceiver:Lcom/qti/dpm/DpmService$DpmReceiver;

    const-string/jumbo v9, "DPMReceiver"

    invoke-direct {v7, v8, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v7, p0, Lcom/qti/dpm/DpmService;->mReceiverThread:Ljava/lang/Thread;

    .line 1034
    iget-object v7, p0, Lcom/qti/dpm/DpmService;->mReceiverThread:Ljava/lang/Thread;

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 964
    return-void

    .line 1022
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v3    # "linkProperties":Landroid/net/LinkProperties;
    :cond_4
    const-string/jumbo v7, "SERVICE"

    const-string/jumbo v8, "dpmd : linkpropeties is null"

    invoke-static {v7, v8}, Lcom/qti/dpm/DpmService;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1027
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "linkProperties":Landroid/net/LinkProperties;
    :cond_5
    const-string/jumbo v7, "SERVICE"

    const-string/jumbo v8, "dpmd : No internet connection"

    invoke-static {v7, v8}, Lcom/qti/dpm/DpmService;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private NetworkStateStringToInt(Ljava/lang/String;)I
    .locals 1
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 1158
    const-string/jumbo v0, "CONNECTING"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1160
    const/4 v0, 0x0

    return v0

    .line 1158
    :cond_0
    const-string/jumbo v0, "CONNECTED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1162
    const/4 v0, 0x1

    return v0

    .line 1158
    :cond_1
    const-string/jumbo v0, "SUSPENDED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1164
    const/4 v0, 0x2

    return v0

    .line 1158
    :cond_2
    const-string/jumbo v0, "DISCONNECTING"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1166
    const/4 v0, 0x3

    return v0

    .line 1158
    :cond_3
    const-string/jumbo v0, "DISCONNECTED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1168
    const/4 v0, 0x4

    return v0

    .line 1170
    :cond_4
    const/4 v0, 0x5

    return v0
.end method

.method private NetworkStateToInt(Landroid/net/NetworkInfo$State;)I
    .locals 2
    .param p1, "state"    # Landroid/net/NetworkInfo$State;

    .prologue
    .line 1175
    invoke-static {}, Lcom/qti/dpm/DpmService;->-getandroid-net-NetworkInfo$StateSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/NetworkInfo$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1189
    const/4 v0, -0x1

    return v0

    .line 1177
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 1179
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 1181
    :pswitch_2
    const/4 v0, 0x2

    return v0

    .line 1183
    :pswitch_3
    const/4 v0, 0x3

    return v0

    .line 1185
    :pswitch_4
    const/4 v0, 0x4

    return v0

    .line 1187
    :pswitch_5
    const/4 v0, 0x5

    return v0

    .line 1175
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_5
    .end packed-switch
.end method

.method private createVendorTrigger(Ljava/lang/String;Landroid/os/IBinder;)I
    .locals 8
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    const/16 v7, 0x64

    const/4 v6, 0x0

    const/16 v5, -0xb

    const/4 v4, 0x0

    .line 1751
    sget v3, Lcom/qti/dpm/DpmService;->mVendorTriggerNum:I

    if-lt v3, v7, :cond_0

    .line 1752
    const-string/jumbo v3, "SERVICE"

    const-string/jumbo v4, "createVendorTrigger Max no. of triggers reached"

    invoke-static {v3, v4}, Lcom/qti/dpm/DpmMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 1753
    const/16 v3, -0xc

    return v3

    .line 1756
    :cond_0
    iget-object v3, p0, Lcom/qti/dpm/DpmService;->mVendorTriggerTable:Ljava/util/Hashtable;

    if-nez v3, :cond_1

    .line 1757
    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3, v7}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v3, p0, Lcom/qti/dpm/DpmService;->mVendorTriggerTable:Ljava/util/Hashtable;

    .line 1758
    iget-object v3, p0, Lcom/qti/dpm/DpmService;->mVendorTriggerTable:Ljava/util/Hashtable;

    if-nez v3, :cond_1

    .line 1759
    const-string/jumbo v3, "SERVICE"

    const-string/jumbo v4, "createVendorTrigger failed"

    invoke-static {v3, v4}, Lcom/qti/dpm/DpmMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 1760
    return v5

    .line 1765
    :cond_1
    new-instance v1, Lcom/qti/dpm/DpmService$DpmNsrmVendorTriggerInfo;

    invoke-direct {v1, p0, v4}, Lcom/qti/dpm/DpmService$DpmNsrmVendorTriggerInfo;-><init>(Lcom/qti/dpm/DpmService;Lcom/qti/dpm/DpmService$DpmNsrmVendorTriggerInfo;)V

    .line 1766
    .local v1, "mVendorTriggerInfo":Lcom/qti/dpm/DpmService$DpmNsrmVendorTriggerInfo;
    if-nez v1, :cond_2

    .line 1767
    const-string/jumbo v3, "SERVICE"

    const-string/jumbo v4, "createVendorTrigger mVendorTriggerInfo == null"

    invoke-static {v3, v4}, Lcom/qti/dpm/DpmMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 1768
    return v5

    .line 1771
    :cond_2
    sget v3, Lcom/qti/dpm/DpmService;->mVendorTriggerId:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/qti/dpm/DpmService;->mVendorTriggerId:I

    .line 1772
    sget v3, Lcom/qti/dpm/DpmService;->mVendorTriggerNum:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/qti/dpm/DpmService;->mVendorTriggerNum:I

    .line 1773
    sget v3, Lcom/qti/dpm/DpmService;->mVendorTriggerId:I

    iput v3, v1, Lcom/qti/dpm/DpmService$DpmNsrmVendorTriggerInfo;->id:I

    .line 1774
    iput-object p2, v1, Lcom/qti/dpm/DpmService$DpmNsrmVendorTriggerInfo;->binder:Landroid/os/IBinder;

    .line 1775
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v3, v1, Lcom/qti/dpm/DpmService$DpmNsrmVendorTriggerInfo;->tag:Ljava/lang/String;

    .line 1776
    iput-boolean v6, v1, Lcom/qti/dpm/DpmService$DpmNsrmVendorTriggerInfo;->state:Z

    .line 1777
    iget-object v3, p0, Lcom/qti/dpm/DpmService;->mVendorTriggerTable:Ljava/util/Hashtable;

    sget v4, Lcom/qti/dpm/DpmService;->mVendorTriggerId:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1781
    new-instance v2, Lcom/qti/dpm/DpmService$TriggerCreatorDied;

    sget v3, Lcom/qti/dpm/DpmService;->mVendorTriggerId:I

    invoke-direct {v2, p0, p2, v3}, Lcom/qti/dpm/DpmService$TriggerCreatorDied;-><init>(Lcom/qti/dpm/DpmService;Landroid/os/IBinder;I)V

    .line 1782
    .local v2, "processDied":Lcom/qti/dpm/DpmService$TriggerCreatorDied;
    if-nez v2, :cond_3

    .line 1783
    const-string/jumbo v3, "SERVICE"

    const-string/jumbo v4, "createVendorTrigger processDied == null"

    invoke-static {v3, v4}, Lcom/qti/dpm/DpmMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 1784
    return v5

    .line 1788
    :cond_3
    const/4 v3, 0x0

    :try_start_0
    invoke-interface {p2, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1792
    :goto_0
    const-string/jumbo v3, "SERVICE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "createTrigger Id:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/qti/dpm/DpmService;->mVendorTriggerId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qti/dpm/DpmMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 1793
    sget v3, Lcom/qti/dpm/DpmService;->mVendorTriggerId:I

    return v3

    .line 1789
    :catch_0
    move-exception v0

    .line 1790
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "SERVICE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "linkToDeath failed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qti/dpm/DpmMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private declared-synchronized deleteVendorTrigger(I)I
    .locals 9
    .param p1, "id"    # I

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x1

    monitor-enter p0

    .line 1678
    const/4 v4, 0x0

    :try_start_0
    iput v4, p0, Lcom/qti/dpm/DpmService;->hashSize:I

    .line 1679
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/qti/dpm/DpmService;->bDpmdCmd:Z

    .line 1682
    iget-object v4, p0, Lcom/qti/dpm/DpmService;->mVendorTriggerTable:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qti/dpm/DpmService$DpmNsrmVendorTriggerInfo;

    .line 1684
    .local v2, "mVendorTriggerInfo":Lcom/qti/dpm/DpmService$DpmNsrmVendorTriggerInfo;
    if-nez v2, :cond_0

    .line 1685
    const-string/jumbo v4, "SERVICE"

    const-string/jumbo v5, "deleteVendorTrigger mVendorTriggerInfo == null"

    invoke-static {v4, v5}, Lcom/qti/dpm/DpmMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1686
    return v8

    .line 1690
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/qti/dpm/DpmService;->mVendorTriggerTable:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->size()I

    move-result v4

    iput v4, p0, Lcom/qti/dpm/DpmService;->hashSize:I

    .line 1691
    const-string/jumbo v4, "SERVICE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "deleteVendorTrigger hashSize="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/qti/dpm/DpmService;->hashSize:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qti/dpm/DpmMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 1692
    iget v4, p0, Lcom/qti/dpm/DpmService;->hashSize:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v4, :cond_1

    monitor-exit p0

    .line 1693
    return v8

    .line 1697
    :cond_1
    :try_start_2
    iget-object v4, p0, Lcom/qti/dpm/DpmService;->mVendorTriggerTable:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1698
    sget v4, Lcom/qti/dpm/DpmService;->mVendorTriggerNum:I

    add-int/lit8 v4, v4, -0x1

    sput v4, Lcom/qti/dpm/DpmService;->mVendorTriggerNum:I

    .line 1700
    iget v4, p0, Lcom/qti/dpm/DpmService;->hashSize:I

    if-ne v4, v7, :cond_5

    .line 1701
    iget-boolean v4, p0, Lcom/qti/dpm/DpmService;->mVendorTriggerState:Z

    if-nez v4, :cond_4

    .line 1702
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/qti/dpm/DpmService;->bDpmdCmd:Z

    .line 1706
    :goto_0
    const-string/jumbo v4, "SERVICE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "deleteVendorTrigger bDpmdCmd = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/qti/dpm/DpmService;->bDpmdCmd:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qti/dpm/DpmMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 1723
    :cond_2
    :goto_1
    iget-boolean v4, p0, Lcom/qti/dpm/DpmService;->bDpmdCmd:Z

    if-eqz v4, :cond_3

    .line 1724
    const-string/jumbo v4, "SERVICE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "deleteVendorTrigger mVendorTriggerState = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/qti/dpm/DpmService;->mVendorTriggerState:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qti/dpm/DpmMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 1725
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/qti/dpm/DpmService;->mVendorTriggerState:Z

    .line 1726
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/qti/dpm/DpmService;->sendVendorTriggerState(Z)V

    .line 1729
    :cond_3
    const-string/jumbo v4, "SERVICE"

    const-string/jumbo v5, "deleteVendorTrigger"

    invoke-static {v4, v5}, Lcom/qti/dpm/DpmMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1730
    const/16 v4, 0x3e8

    monitor-exit p0

    return v4

    .line 1704
    :cond_4
    const/4 v4, 0x1

    :try_start_3
    iput-boolean v4, p0, Lcom/qti/dpm/DpmService;->bDpmdCmd:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .end local v2    # "mVendorTriggerInfo":Lcom/qti/dpm/DpmService$DpmNsrmVendorTriggerInfo;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 1711
    .restart local v2    # "mVendorTriggerInfo":Lcom/qti/dpm/DpmService$DpmNsrmVendorTriggerInfo;
    :cond_5
    :try_start_4
    iget-object v4, p0, Lcom/qti/dpm/DpmService;->mVendorTriggerTable:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 1712
    .local v1, "keys":Ljava/util/Enumeration;
    :cond_6
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1713
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    .line 1714
    .local v0, "key":Ljava/lang/Object;
    iget-object v4, p0, Lcom/qti/dpm/DpmService;->mVendorTriggerTable:Ljava/util/Hashtable;

    invoke-virtual {v4, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qti/dpm/DpmService$DpmNsrmVendorTriggerInfo;

    .line 1715
    .local v3, "value":Lcom/qti/dpm/DpmService$DpmNsrmVendorTriggerInfo;
    iget-boolean v4, v3, Lcom/qti/dpm/DpmService$DpmNsrmVendorTriggerInfo;->state:Z

    if-eqz v4, :cond_6

    .line 1716
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/qti/dpm/DpmService;->bDpmdCmd:Z

    .line 1717
    const-string/jumbo v4, "SERVICE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "deleteVendorTrigger value.state="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, v3, Lcom/qti/dpm/DpmService$DpmNsrmVendorTriggerInfo;->state:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qti/dpm/DpmMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method private disableVendorTrigger(I)I
    .locals 8
    .param p1, "id"    # I

    .prologue
    const/16 v7, 0x3e8

    const/4 v6, 0x0

    .line 1834
    iput v6, p0, Lcom/qti/dpm/DpmService;->hashSize:I

    .line 1835
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/qti/dpm/DpmService;->bDpmdCmd:Z

    .line 1838
    iget-object v4, p0, Lcom/qti/dpm/DpmService;->mVendorTriggerTable:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qti/dpm/DpmService$DpmNsrmVendorTriggerInfo;

    .line 1839
    .local v2, "mVendorTriggerInfo":Lcom/qti/dpm/DpmService$DpmNsrmVendorTriggerInfo;
    if-nez v2, :cond_0

    .line 1840
    const-string/jumbo v4, "SERVICE"

    const-string/jumbo v5, "disableVendorTrigger null"

    invoke-static {v4, v5}, Lcom/qti/dpm/DpmMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 1841
    const/4 v4, -0x1

    return v4

    .line 1844
    :cond_0
    iget-boolean v4, v2, Lcom/qti/dpm/DpmService$DpmNsrmVendorTriggerInfo;->state:Z

    if-nez v4, :cond_1

    .line 1845
    const-string/jumbo v4, "SERVICE"

    const-string/jumbo v5, "disableVendorTrigger state == false"

    invoke-static {v4, v5}, Lcom/qti/dpm/DpmMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 1846
    return v7

    .line 1849
    :cond_1
    iget-object v4, p0, Lcom/qti/dpm/DpmService;->mVendorTriggerTable:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 1850
    .local v1, "keys":Ljava/util/Enumeration;
    :cond_2
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1851
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    .line 1852
    .local v0, "key":Ljava/lang/Object;
    iget-object v4, p0, Lcom/qti/dpm/DpmService;->mVendorTriggerTable:Ljava/util/Hashtable;

    invoke-virtual {v4, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qti/dpm/DpmService$DpmNsrmVendorTriggerInfo;

    .line 1853
    .local v3, "value":Lcom/qti/dpm/DpmService$DpmNsrmVendorTriggerInfo;
    iget-boolean v4, v3, Lcom/qti/dpm/DpmService$DpmNsrmVendorTriggerInfo;->state:Z

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    if-eq v4, v5, :cond_2

    .line 1854
    const-string/jumbo v4, "SERVICE"

    const-string/jumbo v5, "disableVendorTrigger bDpmdCmd == false"

    invoke-static {v4, v5}, Lcom/qti/dpm/DpmMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 1855
    iput-boolean v6, p0, Lcom/qti/dpm/DpmService;->bDpmdCmd:Z

    .line 1860
    .end local v0    # "key":Ljava/lang/Object;
    .end local v3    # "value":Lcom/qti/dpm/DpmService$DpmNsrmVendorTriggerInfo;
    :cond_3
    iget-boolean v4, p0, Lcom/qti/dpm/DpmService;->bDpmdCmd:Z

    if-eqz v4, :cond_4

    iget-boolean v4, p0, Lcom/qti/dpm/DpmService;->mVendorTriggerState:Z

    if-eqz v4, :cond_4

    .line 1861
    const-string/jumbo v4, "SERVICE"

    const-string/jumbo v5, "disableVendorTrigger bDpmdCmd == true && mVendorTriggerState == true"

    invoke-static {v4, v5}, Lcom/qti/dpm/DpmMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 1862
    iput-boolean v6, p0, Lcom/qti/dpm/DpmService;->mVendorTriggerState:Z

    .line 1863
    invoke-direct {p0, v6}, Lcom/qti/dpm/DpmService;->sendVendorTriggerState(Z)V

    .line 1866
    :cond_4
    iput-boolean v6, v2, Lcom/qti/dpm/DpmService$DpmNsrmVendorTriggerInfo;->state:Z

    .line 1867
    iget-object v4, p0, Lcom/qti/dpm/DpmService;->mVendorTriggerTable:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1869
    const-string/jumbo v4, "SERVICE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "disableVendorTrigger id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " mVendorTriggerInfo.state "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1870
    iget-boolean v6, v2, Lcom/qti/dpm/DpmService$DpmNsrmVendorTriggerInfo;->state:Z

    .line 1869
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1870
    const-string/jumbo v6, " state "

    .line 1869
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1870
    iget-boolean v6, p0, Lcom/qti/dpm/DpmService;->mVendorTriggerState:Z

    .line 1869
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qti/dpm/DpmMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 1871
    return v7
.end method

.method private static dlogd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 2153
    invoke-static {p0, p1}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 2152
    return-void
.end method

.method private static dloge(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 2165
    invoke-static {p0, p1}, Lcom/qti/dpm/DpmMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 2164
    return-void
.end method

.method private static dlogi(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 2159
    invoke-static {p0, p1}, Lcom/qti/dpm/DpmMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 2158
    return-void
.end method

.method private static dlogv(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 2156
    invoke-static {p0, p1}, Lcom/qti/dpm/DpmMsg;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 2155
    return-void
.end method

.method private static dlogw(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 2162
    invoke-static {p0, p1}, Lcom/qti/dpm/DpmMsg;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 2161
    return-void
.end method

.method private enableVendorTrigger(I)I
    .locals 4
    .param p1, "id"    # I

    .prologue
    const/4 v3, 0x1

    .line 1807
    iget-object v1, p0, Lcom/qti/dpm/DpmService;->mVendorTriggerTable:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qti/dpm/DpmService$DpmNsrmVendorTriggerInfo;

    .line 1808
    .local v0, "mVendorTriggerInfo":Lcom/qti/dpm/DpmService$DpmNsrmVendorTriggerInfo;
    if-nez v0, :cond_0

    .line 1809
    const-string/jumbo v1, "SERVICE"

    const-string/jumbo v2, "enableVendorTrigger mVendorTriggerInfo == null"

    invoke-static {v1, v2}, Lcom/qti/dpm/DpmMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 1810
    const/4 v1, -0x1

    return v1

    .line 1812
    :cond_0
    iput-boolean v3, v0, Lcom/qti/dpm/DpmService$DpmNsrmVendorTriggerInfo;->state:Z

    .line 1813
    iget-object v1, p0, Lcom/qti/dpm/DpmService;->mVendorTriggerTable:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1814
    iget-boolean v1, p0, Lcom/qti/dpm/DpmService;->mVendorTriggerState:Z

    if-nez v1, :cond_1

    .line 1815
    const-string/jumbo v1, "SERVICE"

    const-string/jumbo v2, "enableVendorTrigger mVendorTriggerState == false"

    invoke-static {v1, v2}, Lcom/qti/dpm/DpmMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 1816
    iput-boolean v3, p0, Lcom/qti/dpm/DpmService;->mVendorTriggerState:Z

    .line 1817
    invoke-direct {p0, v3}, Lcom/qti/dpm/DpmService;->sendVendorTriggerState(Z)V

    .line 1819
    :cond_1
    const-string/jumbo v1, "SERVICE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "enableVendorTrigger id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " vendorInfo.state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1820
    iget-boolean v3, v0, Lcom/qti/dpm/DpmService$DpmNsrmVendorTriggerInfo;->state:Z

    .line 1819
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1820
    const-string/jumbo v3, " state "

    .line 1819
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1820
    iget-boolean v3, p0, Lcom/qti/dpm/DpmService;->mVendorTriggerState:Z

    .line 1819
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qti/dpm/DpmMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 1821
    const/16 v1, 0x3e8

    return v1
.end method

.method private findAndRemoveRequestFromList(I)Lcom/qti/dpm/DpmRequest;
    .locals 5
    .param p1, "serial"    # I

    .prologue
    .line 1086
    iget-object v4, p0, Lcom/qti/dpm/DpmService;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1087
    const/4 v0, 0x0

    .local v0, "i":I
    :try_start_0
    iget-object v3, p0, Lcom/qti/dpm/DpmService;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "s":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 1088
    iget-object v3, p0, Lcom/qti/dpm/DpmService;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qti/dpm/DpmRequest;

    .line 1089
    .local v1, "rr":Lcom/qti/dpm/DpmRequest;
    iget v3, v1, Lcom/qti/dpm/DpmRequest;->mSerial:I

    if-ne v3, p1, :cond_0

    .line 1090
    iget-object v3, p0, Lcom/qti/dpm/DpmService;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    .line 1091
    return-object v1

    .line 1087
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "rr":Lcom/qti/dpm/DpmRequest;
    :cond_1
    monitor-exit v4

    .line 1095
    const/4 v3, 0x0

    return-object v3

    .line 1086
    .end local v2    # "s":I
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private getStartTime(ILjava/lang/String;)I
    .locals 27
    .param p1, "pid"    # I
    .param p2, "processName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2035
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "/proc/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "/stat"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 2036
    .local v12, "path":Ljava/lang/String;
    new-instance v14, Ljava/io/BufferedReader;

    new-instance v22, Ljava/io/FileReader;

    move-object/from16 v0, v22

    invoke-direct {v0, v12}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-direct {v14, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 2037
    .local v14, "reader":Ljava/io/BufferedReader;
    const-string/jumbo v15, ""

    .line 2038
    .local v15, "stat":Ljava/lang/String;
    const/4 v13, 0x1

    .line 2040
    .local v13, "processExists":Z
    :try_start_0
    invoke-virtual {v14}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v15

    .line 2044
    invoke-virtual {v14}, Ljava/io/BufferedReader;->close()V

    .line 2053
    :goto_0
    const-string/jumbo v6, ") "

    .line 2054
    .local v6, "field2End":Ljava/lang/String;
    const-string/jumbo v7, " "

    .line 2055
    .local v7, "fieldSep":Ljava/lang/String;
    const/16 v8, 0x14

    .line 2056
    .local v8, "fieldStartTime":I
    const/16 v21, 0x64

    .line 2057
    .local v21, "ticksPerSecond":I
    const/16 v10, 0x3e8

    .line 2059
    .local v10, "msInSec":I
    if-eqz v13, :cond_1

    .line 2061
    :try_start_1
    invoke-virtual {v15, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 2062
    .local v9, "fields":[Ljava/lang/String;
    aget-object v22, v9, v8

    invoke-static/range {v22 .. v22}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    .line 2063
    .local v16, "t":J
    const-string/jumbo v22, "android.system.OsConstants"

    invoke-static/range {v22 .. v22}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v22

    const-string/jumbo v23, "_SC_CLK_TCK"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v20

    .line 2064
    .local v20, "tckName":I
    const-string/jumbo v22, "libcore.io.Libcore"

    invoke-static/range {v22 .. v22}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v22

    const-string/jumbo v23, "os"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 2065
    .local v11, "os":Ljava/lang/Object;
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v22

    const-string/jumbo v23, "sysconf"

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v24, v0

    sget-object v25, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v26, 0x0

    aput-object v25, v24, v26

    invoke-virtual/range {v22 .. v24}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v22

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    const/16 v25, 0x0

    aput-object v24, v23, v25

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v11, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Long;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v18

    .line 2066
    .local v18, "tck":J
    const-wide/16 v22, 0x0

    cmp-long v22, v18, v22

    if-nez v22, :cond_0

    const/16 v22, 0x0

    :goto_1
    return v22

    .line 2041
    .end local v6    # "field2End":Ljava/lang/String;
    .end local v7    # "fieldSep":Ljava/lang/String;
    .end local v8    # "fieldStartTime":I
    .end local v9    # "fields":[Ljava/lang/String;
    .end local v10    # "msInSec":I
    .end local v11    # "os":Ljava/lang/Object;
    .end local v16    # "t":J
    .end local v18    # "tck":J
    .end local v20    # "tckName":I
    .end local v21    # "ticksPerSecond":I
    :catch_0
    move-exception v2

    .line 2042
    .local v2, "e":Ljava/io/FileNotFoundException;
    const/4 v13, 0x0

    .line 2044
    invoke-virtual {v14}, Ljava/io/BufferedReader;->close()V

    goto/16 :goto_0

    .line 2043
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v22

    .line 2044
    invoke-virtual {v14}, Ljava/io/BufferedReader;->close()V

    .line 2043
    throw v22

    .line 2066
    .restart local v6    # "field2End":Ljava/lang/String;
    .restart local v7    # "fieldSep":Ljava/lang/String;
    .restart local v8    # "fieldStartTime":I
    .restart local v9    # "fields":[Ljava/lang/String;
    .restart local v10    # "msInSec":I
    .restart local v11    # "os":Ljava/lang/Object;
    .restart local v16    # "t":J
    .restart local v18    # "tck":J
    .restart local v20    # "tckName":I
    .restart local v21    # "ticksPerSecond":I
    :cond_0
    :try_start_2
    div-long v22, v16, v18

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v22, v0

    goto :goto_1

    .line 2068
    .end local v9    # "fields":[Ljava/lang/String;
    .end local v11    # "os":Ljava/lang/Object;
    .end local v16    # "t":J
    .end local v18    # "tck":J
    .end local v20    # "tckName":I
    :cond_1
    const-string/jumbo v22, "SERVICE"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Missing process: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, " pid: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/qti/dpm/DpmService;->logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2069
    const/16 v22, -0x1

    return v22

    .line 2075
    :catch_1
    move-exception v5

    .line 2076
    .local v5, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v22, Ljava/io/IOException;

    move-object/from16 v0, v22

    invoke-direct {v0, v5}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v22

    .line 2073
    .end local v5    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_2
    move-exception v3

    .line 2074
    .local v3, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v22, Ljava/io/IOException;

    move-object/from16 v0, v22

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v22

    .line 2071
    .end local v3    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_3
    move-exception v4

    .line 2072
    .local v4, "e":Ljava/lang/NumberFormatException;
    new-instance v22, Ljava/io/IOException;

    move-object/from16 v0, v22

    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v22
.end method

.method private handleGetAppInfoMsg(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 926
    invoke-direct {p0}, Lcom/qti/dpm/DpmService;->initializePackageListener()V

    .line 925
    return-void
.end method

.method private handleNsrmBlockedUid(Landroid/os/Parcel;)V
    .locals 8
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 930
    const-string/jumbo v5, "SERVICE"

    const-string/jumbo v6, "handleNsrmBlockedUid called"

    invoke-static {v5, v6}, Lcom/qti/dpm/DpmService;->dlogv(Ljava/lang/String;Ljava/lang/String;)V

    .line 931
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 932
    .local v4, "uid":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 933
    .local v3, "isBlockedInt":I
    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    const/4 v2, 0x1

    .line 935
    .local v2, "isBlocked":Z
    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/qti/dpm/DpmService;->powerMgr:Landroid/os/IPowerManager;

    invoke-interface {v5, v4, v2}, Landroid/os/IPowerManager;->updateBlockedUids(IZ)V

    .line 936
    iget-object v5, p0, Lcom/qti/dpm/DpmService;->alarmMgr:Landroid/app/IAlarmManager;

    invoke-interface {v5, v4, v2}, Landroid/app/IAlarmManager;->updateBlockedUids(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 942
    :goto_1
    return-void

    .line 933
    .end local v2    # "isBlocked":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "isBlocked":Z
    goto :goto_0

    .line 939
    :catch_0
    move-exception v1

    .line 940
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v5, "SERVICE"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "alarm/power obj NULL"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qti/dpm/DpmService;->dlogw(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 937
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 938
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "SERVICE"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "RemoteException"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qti/dpm/DpmService;->dlogw(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private initNsrm()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1047
    iget-boolean v4, p0, Lcom/qti/dpm/DpmService;->nsrmFeature:Z

    if-eqz v4, :cond_0

    .line 1048
    new-instance v4, Lcom/qti/dpm/DpmNsrm;

    iget-object v5, p0, Lcom/qti/dpm/DpmService;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, p0}, Lcom/qti/dpm/DpmNsrm;-><init>(Landroid/content/Context;Lcom/qti/dpm/DpmService;)V

    iput-object v4, p0, Lcom/qti/dpm/DpmService;->mNsrm:Lcom/qti/dpm/DpmNsrm;

    .line 1050
    const-string/jumbo v4, "persist.dpm.test.enable.nsrm"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 1052
    .local v3, "testEnableNsrmVal":I
    if-nez v3, :cond_0

    .line 1054
    iget-object v4, p0, Lcom/qti/dpm/DpmService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 1055
    const v5, 0x1120014

    .line 1054
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 1056
    .local v2, "mGmsAutoPowerMode":Z
    if-eqz v2, :cond_0

    .line 1057
    const-string/jumbo v4, "SERVICE"

    const-string/jumbo v5, "GMS service is Enabled . NSRM will be turned off"

    invoke-static {v4, v5}, Lcom/qti/dpm/DpmMsg;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1059
    iget-object v4, p0, Lcom/qti/dpm/DpmService;->mNsrm:Lcom/qti/dpm/DpmNsrm;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/qti/dpm/DpmNsrm;->setNSRMEnabled(I)I

    .line 1061
    const-string/jumbo v4, "persist.dpm.feature"

    const/16 v5, 0xf

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1062
    .local v0, "dpmFeature":I
    and-int/lit8 v0, v0, -0x5

    .line 1063
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 1064
    .local v1, "dpmFeatureString":Ljava/lang/String;
    const-string/jumbo v4, "SERVICE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "New value of persist.dpm.feature is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qti/dpm/DpmMsg;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1066
    const-string/jumbo v4, "persist.dpm.feature"

    invoke-static {v4, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1046
    .end local v0    # "dpmFeature":I
    .end local v1    # "dpmFeatureString":Ljava/lang/String;
    .end local v2    # "mGmsAutoPowerMode":Z
    .end local v3    # "testEnableNsrmVal":I
    :cond_0
    return-void
.end method

.method private initializePackageListener()V
    .locals 1

    .prologue
    .line 916
    iget-object v0, p0, Lcom/qti/dpm/DpmService;->mPackageListener:Lcom/qti/dpm/DpmService$PackageListener;

    if-eqz v0, :cond_1

    .line 917
    iget-object v0, p0, Lcom/qti/dpm/DpmService;->mPackageListener:Lcom/qti/dpm/DpmService$PackageListener;

    invoke-virtual {v0}, Lcom/qti/dpm/DpmService$PackageListener;->sendInstalledPackageInfo()Z

    .line 915
    :cond_0
    :goto_0
    return-void

    .line 919
    :cond_1
    iget-boolean v0, p0, Lcom/qti/dpm/DpmService;->nsrmFeature:Z

    if-eqz v0, :cond_0

    .line 920
    new-instance v0, Lcom/qti/dpm/DpmService$PackageListener;

    invoke-direct {v0, p0}, Lcom/qti/dpm/DpmService$PackageListener;-><init>(Lcom/qti/dpm/DpmService;)V

    iput-object v0, p0, Lcom/qti/dpm/DpmService;->mPackageListener:Lcom/qti/dpm/DpmService$PackageListener;

    .line 921
    iget-object v0, p0, Lcom/qti/dpm/DpmService;->mPackageListener:Lcom/qti/dpm/DpmService$PackageListener;

    invoke-static {v0}, Lcom/qti/dpm/DpmService$PackageListener;->-wrap0(Lcom/qti/dpm/DpmService$PackageListener;)V

    goto :goto_0
.end method

.method private static logd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 2138
    invoke-static {p0, p1}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 2137
    return-void
.end method

.method private static loge(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 2150
    invoke-static {p0, p1}, Lcom/qti/dpm/DpmMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 2149
    return-void
.end method

.method private static logi(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 2144
    invoke-static {p0, p1}, Lcom/qti/dpm/DpmMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 2143
    return-void
.end method

.method private static logv(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 2141
    invoke-static {p0, p1}, Lcom/qti/dpm/DpmMsg;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 2140
    return-void
.end method

.method private static logw(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 2147
    invoke-static {p0, p1}, Lcom/qti/dpm/DpmMsg;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 2146
    return-void
.end method

.method private postDpmdUpInit()V
    .locals 5

    .prologue
    .line 888
    const-string/jumbo v3, "SERVICE"

    const-string/jumbo v4, "starting initialization of components that require dpmd to have started"

    invoke-static {v3, v4}, Lcom/qti/dpm/DpmService;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 894
    invoke-virtual {p0}, Lcom/qti/dpm/DpmService;->getWlanInfo()Lcom/qti/dpm/DpmService$DpmWifiInfo;

    move-result-object v0

    .line 895
    .local v0, "dpmWifiInfo":Lcom/qti/dpm/DpmService$DpmWifiInfo;
    if-eqz v0, :cond_0

    .line 896
    invoke-direct {p0, v0}, Lcom/qti/dpm/DpmService;->sendWifiStatus(Lcom/qti/dpm/DpmService$DpmWifiInfo;)V

    .line 898
    :cond_0
    invoke-virtual {p0}, Lcom/qti/dpm/DpmService;->getWwanInfo()Lcom/qti/dpm/DpmService$DpmWwanInfo;

    move-result-object v1

    .line 899
    .local v1, "dpmWwanInfo":Lcom/qti/dpm/DpmService$DpmWwanInfo;
    if-eqz v1, :cond_1

    .line 900
    invoke-direct {p0, v1}, Lcom/qti/dpm/DpmService;->sendWwanStatus(Lcom/qti/dpm/DpmService$DpmWwanInfo;)V

    .line 904
    :cond_1
    iget-object v3, p0, Lcom/qti/dpm/DpmService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 905
    .local v2, "pm":Landroid/os/PowerManager;
    if-eqz v2, :cond_2

    .line 906
    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v3

    iput-boolean v3, p0, Lcom/qti/dpm/DpmService;->mScreenOn:Z

    .line 907
    iget-boolean v3, p0, Lcom/qti/dpm/DpmService;->mScreenOn:Z

    invoke-direct {p0, v3}, Lcom/qti/dpm/DpmService;->sendScreenState(Z)V

    .line 910
    :cond_2
    invoke-direct {p0}, Lcom/qti/dpm/DpmService;->initializePackageListener()V

    .line 911
    invoke-virtual {p0}, Lcom/qti/dpm/DpmService;->nsrmPostInit()V

    .line 912
    iget-boolean v3, p0, Lcom/qti/dpm/DpmService;->mVendorTriggerState:Z

    invoke-direct {p0, v3}, Lcom/qti/dpm/DpmService;->sendVendorTriggerState(Z)V

    .line 887
    return-void
.end method

.method private processResponse(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 1074
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1075
    .local v0, "type":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1076
    invoke-direct {p0, p1}, Lcom/qti/dpm/DpmService;->processUnsolicited(Landroid/os/Parcel;)V

    .line 1072
    :goto_0
    return-void

    .line 1077
    :cond_0
    if-nez v0, :cond_1

    .line 1078
    invoke-direct {p0, p1}, Lcom/qti/dpm/DpmService;->processSolicited(Landroid/os/Parcel;)V

    goto :goto_0

    .line 1080
    :cond_1
    const-string/jumbo v1, "SERVICE"

    const-string/jumbo v2, "malformed message, expected RESPONSE_UNSOLICITED or RESPONSE_SOLICITED, rejecting"

    invoke-static {v1, v2}, Lcom/qti/dpm/DpmService;->dlogw(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private processSolicited(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 1100
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1101
    .local v2, "serial":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1103
    .local v0, "error":I
    invoke-direct {p0, v2}, Lcom/qti/dpm/DpmService;->findAndRemoveRequestFromList(I)Lcom/qti/dpm/DpmRequest;

    move-result-object v1

    .line 1104
    .local v1, "rr":Lcom/qti/dpm/DpmRequest;
    if-nez v1, :cond_0

    .line 1105
    const-string/jumbo v3, "SERVICE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unexpected solicited response! sn: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1106
    const-string/jumbo v5, " error: "

    .line 1105
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qti/dpm/DpmService;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 1107
    return-void

    .line 1109
    :cond_0
    if-eqz v0, :cond_1

    .line 1110
    invoke-virtual {v1, v0}, Lcom/qti/dpm/DpmRequest;->onError(I)V

    .line 1111
    invoke-virtual {v1}, Lcom/qti/dpm/DpmRequest;->release()V

    .line 1112
    return-void

    .line 1114
    :cond_1
    invoke-virtual {v1}, Lcom/qti/dpm/DpmRequest;->release()V

    .line 1098
    return-void
.end method

.method private processUnsolicited(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 1118
    const-string/jumbo v1, "SERVICE"

    const-string/jumbo v2, "processUnsolicited called"

    invoke-static {v1, v2}, Lcom/qti/dpm/DpmService;->dlogi(Ljava/lang/String;Ljava/lang/String;)V

    .line 1121
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1122
    .local v0, "response":I
    sparse-switch v0, :sswitch_data_0

    .line 1152
    const-string/jumbo v1, "SERVICE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "UNKOWN Unsolicited Event "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qti/dpm/DpmService;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 1154
    :goto_0
    return-void

    .line 1124
    :sswitch_0
    const-string/jumbo v1, "SERVICE"

    const-string/jumbo v2, "DPM_S_RESP_SET_FEATURE_STATUS received"

    invoke-static {v1, v2}, Lcom/qti/dpm/DpmService;->rlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1125
    invoke-virtual {p0, p1}, Lcom/qti/dpm/DpmService;->handleFeatureStatusSetResponse(Landroid/os/Parcel;)V

    goto :goto_0

    .line 1128
    :sswitch_1
    const-string/jumbo v1, "SERVICE"

    const-string/jumbo v2, "DPM_D_REQ_REQUEST_GET_APP_INFO_LIST"

    invoke-static {v1, v2}, Lcom/qti/dpm/DpmService;->rlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1129
    invoke-direct {p0, p1}, Lcom/qti/dpm/DpmService;->handleGetAppInfoMsg(Landroid/os/Parcel;)V

    goto :goto_0

    .line 1132
    :sswitch_2
    const-string/jumbo v1, "SERVICE"

    const-string/jumbo v2, "DPM_D_NOTIFY_NSRM_BLOCKED_UID received"

    invoke-static {v1, v2}, Lcom/qti/dpm/DpmService;->rlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1133
    invoke-direct {p0, p1}, Lcom/qti/dpm/DpmService;->handleNsrmBlockedUid(Landroid/os/Parcel;)V

    goto :goto_0

    .line 1136
    :sswitch_3
    const-string/jumbo v1, "SERVICE"

    const-string/jumbo v2, "DPM_S_RSP_REFRESH_NSRM_CONFIG"

    invoke-static {v1, v2}, Lcom/qti/dpm/DpmService;->rlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1137
    invoke-virtual {p0, p1}, Lcom/qti/dpm/DpmService;->handleNsrmRefreshResponse(Landroid/os/Parcel;)V

    goto :goto_0

    .line 1140
    :sswitch_4
    const-string/jumbo v1, "SERVICE"

    const-string/jumbo v2, "DPM_S_RSP_GET_FEATURE_STATUS"

    invoke-static {v1, v2}, Lcom/qti/dpm/DpmService;->rlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1141
    invoke-virtual {p0, p1}, Lcom/qti/dpm/DpmService;->handleFeatureStatusNotification(Landroid/os/Parcel;)V

    goto :goto_0

    .line 1144
    :sswitch_5
    const-string/jumbo v1, "SERVICE"

    const-string/jumbo v2, "DPM_D_REQ_GET_RUNNING_APP_LIST"

    invoke-static {v1, v2}, Lcom/qti/dpm/DpmService;->rlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1145
    invoke-virtual {p0}, Lcom/qti/dpm/DpmService;->handleGetRunningAppListRequest()V

    goto :goto_0

    .line 1148
    :sswitch_6
    const-string/jumbo v1, "SERVICE"

    const-string/jumbo v2, "DPM_D_REQ_UPDATE_APP_LEARNED_INFO"

    invoke-static {v1, v2}, Lcom/qti/dpm/DpmService;->rlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1149
    invoke-virtual {p0, p1}, Lcom/qti/dpm/DpmService;->handleUpdateNsrmAppLearnedInfo(Landroid/os/Parcel;)V

    goto :goto_0

    .line 1122
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x3 -> :sswitch_4
        0x5 -> :sswitch_0
        0x7 -> :sswitch_3
        0x8 -> :sswitch_2
        0x12 -> :sswitch_5
        0x13 -> :sswitch_6
    .end sparse-switch
.end method

.method private static readDPMMessage(Ljava/io/InputStream;[B)I
    .locals 8
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, -0x1

    const/4 v4, 0x0

    .line 728
    const/4 v2, 0x0

    .line 729
    .local v2, "offset":I
    const/4 v3, 0x4

    .line 731
    .local v3, "remaining":I
    :cond_0
    invoke-virtual {p0, p1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 733
    .local v0, "countRead":I
    if-gez v0, :cond_1

    .line 734
    const-string/jumbo v4, "SERVICE"

    const-string/jumbo v5, "Hit EOS reading message length"

    invoke-static {v4, v5}, Lcom/qti/dpm/DpmService;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    return v7

    .line 738
    :cond_1
    add-int/2addr v2, v0

    .line 739
    sub-int/2addr v3, v0

    .line 740
    if-gtz v3, :cond_0

    .line 742
    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    .line 743
    const/4 v5, 0x1

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    .line 742
    or-int/2addr v4, v5

    .line 744
    const/4 v5, 0x2

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    .line 742
    or-int/2addr v4, v5

    .line 745
    const/4 v5, 0x3

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    .line 742
    or-int v1, v4, v5

    .line 747
    .local v1, "messageLength":I
    const/4 v2, 0x0

    .line 748
    move v3, v1

    .line 750
    :cond_2
    invoke-virtual {p0, p1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 752
    if-gez v0, :cond_3

    .line 753
    const-string/jumbo v4, "SERVICE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Hit EOS reading message.  messageLength="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 754
    const-string/jumbo v6, " remaining="

    .line 753
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qti/dpm/DpmService;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    return v7

    .line 758
    :cond_3
    add-int/2addr v2, v0

    .line 759
    sub-int/2addr v3, v0

    .line 760
    if-gtz v3, :cond_2

    .line 762
    return v1
.end method

.method private requestFeatureSettings(I)Z
    .locals 5
    .param p1, "featureId"    # I

    .prologue
    const/4 v4, 0x1

    .line 951
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/qti/dpm/DpmRequest;->obtain(I)Lcom/qti/dpm/DpmRequest;

    move-result-object v0

    .line 952
    .local v0, "rr":Lcom/qti/dpm/DpmRequest;
    if-nez v0, :cond_0

    .line 953
    const-string/jumbo v1, "SERVICE"

    const-string/jumbo v2, "requestFeatureSettings: rr=NULL"

    invoke-static {v1, v2}, Lcom/qti/dpm/DpmService;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 954
    const/4 v1, 0x0

    return v1

    .line 956
    :cond_0
    iget-object v1, v0, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 957
    iget-object v1, v0, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 958
    const-string/jumbo v1, "SERVICE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestFeatureSettings: featureId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qti/dpm/DpmService;->dlogi(Ljava/lang/String;Ljava/lang/String;)V

    .line 959
    invoke-virtual {p0, v0}, Lcom/qti/dpm/DpmService;->send(Lcom/qti/dpm/DpmRequest;)V

    .line 960
    return v4
.end method

.method private requestFeaturesSettings()V
    .locals 1

    .prologue
    .line 946
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/qti/dpm/DpmService;->requestFeatureSettings(I)Z

    .line 947
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/qti/dpm/DpmService;->requestFeatureSettings(I)Z

    .line 945
    return-void
.end method

.method private static rlog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 2172
    invoke-static {p0, p1}, Lcom/qti/dpm/DpmMsg;->rlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2171
    return-void
.end method

.method private sendAppInfoList(Lcom/qti/dpm/DpmRequest;)V
    .locals 2
    .param p1, "rr"    # Lcom/qti/dpm/DpmRequest;

    .prologue
    .line 1321
    const-string/jumbo v0, "SERVICE"

    const-string/jumbo v1, "sendAppInfoList"

    invoke-static {v0, v1}, Lcom/qti/dpm/DpmService;->dlogi(Ljava/lang/String;Ljava/lang/String;)V

    .line 1322
    invoke-virtual {p0, p1}, Lcom/qti/dpm/DpmService;->send(Lcom/qti/dpm/DpmRequest;)V

    .line 1320
    return-void
.end method

.method private sendInitReq()Z
    .locals 3

    .prologue
    .line 1311
    const/16 v1, 0x9

    invoke-static {v1}, Lcom/qti/dpm/DpmRequest;->obtain(I)Lcom/qti/dpm/DpmRequest;

    move-result-object v0

    .line 1312
    .local v0, "rr":Lcom/qti/dpm/DpmRequest;
    if-nez v0, :cond_0

    .line 1313
    const-string/jumbo v1, "SERVICE"

    const-string/jumbo v2, "sendinitReq: rr=NULL"

    invoke-static {v1, v2}, Lcom/qti/dpm/DpmService;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 1314
    const/4 v1, 0x0

    return v1

    .line 1316
    :cond_0
    invoke-virtual {p0, v0}, Lcom/qti/dpm/DpmService;->send(Lcom/qti/dpm/DpmRequest;)V

    .line 1317
    const/4 v1, 0x1

    return v1
.end method

.method private sendScreenState(Z)V
    .locals 4
    .param p1, "state"    # Z

    .prologue
    const/4 v1, 0x1

    .line 1272
    const/16 v2, 0xe

    invoke-static {v2}, Lcom/qti/dpm/DpmRequest;->obtain(I)Lcom/qti/dpm/DpmRequest;

    move-result-object v0

    .line 1273
    .local v0, "rr":Lcom/qti/dpm/DpmRequest;
    if-nez v0, :cond_0

    .line 1274
    const-string/jumbo v1, "SERVICE"

    const-string/jumbo v2, "sendScreenState: rr = NULL"

    invoke-static {v1, v2}, Lcom/qti/dpm/DpmService;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 1275
    return-void

    .line 1277
    :cond_0
    iget-object v2, v0, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1278
    iget-object v2, v0, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    if-eqz p1, :cond_1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1280
    const-string/jumbo v1, "SERVICE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendScreenState: state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qti/dpm/DpmService;->dlogi(Ljava/lang/String;Ljava/lang/String;)V

    .line 1281
    invoke-virtual {p0, v0}, Lcom/qti/dpm/DpmService;->send(Lcom/qti/dpm/DpmRequest;)V

    .line 1271
    return-void

    .line 1278
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private sendSuplState(Z)V
    .locals 4
    .param p1, "state"    # Z

    .prologue
    const/4 v1, 0x1

    .line 1326
    const/16 v2, 0x16

    invoke-static {v2}, Lcom/qti/dpm/DpmRequest;->obtain(I)Lcom/qti/dpm/DpmRequest;

    move-result-object v0

    .line 1327
    .local v0, "rr":Lcom/qti/dpm/DpmRequest;
    if-nez v0, :cond_0

    .line 1328
    const-string/jumbo v1, "SERVICE"

    const-string/jumbo v2, "sendTetheringState: rr = NULL"

    invoke-static {v1, v2}, Lcom/qti/dpm/DpmService;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 1329
    return-void

    .line 1331
    :cond_0
    iget-object v2, v0, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1332
    iget-object v2, v0, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    if-eqz p1, :cond_1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1334
    const-string/jumbo v1, "SERVICE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendSuplState: state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qti/dpm/DpmService;->dlogi(Ljava/lang/String;Ljava/lang/String;)V

    .line 1335
    invoke-virtual {p0, v0}, Lcom/qti/dpm/DpmService;->send(Lcom/qti/dpm/DpmRequest;)V

    .line 1325
    return-void

    .line 1332
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private sendTetheringState(Z)V
    .locals 4
    .param p1, "state"    # Z

    .prologue
    const/4 v1, 0x1

    .line 1285
    const/16 v2, 0xf

    invoke-static {v2}, Lcom/qti/dpm/DpmRequest;->obtain(I)Lcom/qti/dpm/DpmRequest;

    move-result-object v0

    .line 1286
    .local v0, "rr":Lcom/qti/dpm/DpmRequest;
    if-nez v0, :cond_0

    .line 1287
    const-string/jumbo v1, "SERVICE"

    const-string/jumbo v2, "sendTetheringState: rr = NULL"

    invoke-static {v1, v2}, Lcom/qti/dpm/DpmService;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 1288
    return-void

    .line 1290
    :cond_0
    iget-object v2, v0, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1291
    iget-object v2, v0, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    if-eqz p1, :cond_1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1293
    const-string/jumbo v1, "SERVICE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendTetheringState: state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qti/dpm/DpmService;->dlogi(Ljava/lang/String;Ljava/lang/String;)V

    .line 1294
    invoke-virtual {p0, v0}, Lcom/qti/dpm/DpmService;->send(Lcom/qti/dpm/DpmRequest;)V

    .line 1284
    return-void

    .line 1291
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private sendVendorTriggerState(Z)V
    .locals 4
    .param p1, "state"    # Z

    .prologue
    const/4 v1, 0x1

    .line 1298
    const/16 v2, 0x10

    invoke-static {v2}, Lcom/qti/dpm/DpmRequest;->obtain(I)Lcom/qti/dpm/DpmRequest;

    move-result-object v0

    .line 1299
    .local v0, "rr":Lcom/qti/dpm/DpmRequest;
    if-nez v0, :cond_0

    .line 1300
    const-string/jumbo v1, "SERVICE"

    const-string/jumbo v2, "sendVendorTriggerState: rr = NULL"

    invoke-static {v1, v2}, Lcom/qti/dpm/DpmService;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 1301
    return-void

    .line 1303
    :cond_0
    iget-object v2, v0, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1304
    iget-object v2, v0, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    if-eqz p1, :cond_1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1306
    const-string/jumbo v1, "SERVICE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendVendorTriggerState: state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qti/dpm/DpmMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 1307
    invoke-virtual {p0, v0}, Lcom/qti/dpm/DpmService;->send(Lcom/qti/dpm/DpmRequest;)V

    .line 1297
    return-void

    .line 1304
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private sendWifiStatus(Lcom/qti/dpm/DpmService$DpmWifiInfo;)V
    .locals 5
    .param p1, "dpmWifiInfo"    # Lcom/qti/dpm/DpmService$DpmWifiInfo;

    .prologue
    .line 1193
    iget-object v2, p0, Lcom/qti/dpm/DpmService;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    .line 1196
    :try_start_0
    const-string/jumbo v2, "SERVICE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendWifiStatus - subType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1197
    iget v4, p1, Lcom/qti/dpm/DpmService$DpmWifiInfo;->subType:I

    .line 1196
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1198
    const-string/jumbo v4, " networkState: "

    .line 1196
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1198
    iget v4, p1, Lcom/qti/dpm/DpmService$DpmWifiInfo;->networkState:I

    .line 1196
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1199
    const-string/jumbo v4, " softApState: "

    .line 1196
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1199
    iget v4, p1, Lcom/qti/dpm/DpmService$DpmWifiInfo;->softApState:I

    .line 1196
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1200
    const-string/jumbo v4, " rssi="

    .line 1196
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1200
    iget v4, p1, Lcom/qti/dpm/DpmService$DpmWifiInfo;->rssi:I

    .line 1196
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1201
    const-string/jumbo v4, " ssid="

    .line 1196
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1201
    iget-object v4, p1, Lcom/qti/dpm/DpmService$DpmWifiInfo;->ssid:Ljava/lang/String;

    .line 1196
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1202
    const-string/jumbo v4, " bssid="

    .line 1196
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1202
    iget-object v4, p1, Lcom/qti/dpm/DpmService$DpmWifiInfo;->bssid:Ljava/lang/String;

    .line 1196
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1203
    const-string/jumbo v4, " ipV4Addr="

    .line 1196
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1203
    iget-object v4, p1, Lcom/qti/dpm/DpmService$DpmWifiInfo;->ipAddrV4:Ljava/lang/String;

    .line 1196
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1204
    const-string/jumbo v4, " ifNameV4="

    .line 1196
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1204
    iget-object v4, p1, Lcom/qti/dpm/DpmService$DpmWifiInfo;->ifNameV4:Ljava/lang/String;

    .line 1196
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1205
    const-string/jumbo v4, " ipAddrV6="

    .line 1196
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1205
    iget-object v4, p1, Lcom/qti/dpm/DpmService$DpmWifiInfo;->ipAddrV6:Ljava/lang/String;

    .line 1196
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1206
    const-string/jumbo v4, " ifNameV6="

    .line 1196
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1206
    iget-object v4, p1, Lcom/qti/dpm/DpmService$DpmWifiInfo;->ifNameV6:Ljava/lang/String;

    .line 1196
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qti/dpm/DpmService;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 1208
    const/16 v2, 0xa

    invoke-static {v2}, Lcom/qti/dpm/DpmRequest;->obtain(I)Lcom/qti/dpm/DpmRequest;

    move-result-object v1

    .line 1209
    .local v1, "rr":Lcom/qti/dpm/DpmRequest;
    if-nez v1, :cond_0

    .line 1210
    const-string/jumbo v2, "SERVICE"

    const-string/jumbo v3, "updateWlanStatus: rr=NULL - no updated"

    invoke-static {v2, v3}, Lcom/qti/dpm/DpmService;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 1211
    return-void

    .line 1214
    :cond_0
    iget-object v2, v1, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    iget v3, p1, Lcom/qti/dpm/DpmService$DpmWifiInfo;->subType:I

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1215
    iget-object v2, v1, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    iget v3, p1, Lcom/qti/dpm/DpmService$DpmWifiInfo;->networkState:I

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1216
    iget-object v2, v1, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    iget v3, p1, Lcom/qti/dpm/DpmService$DpmWifiInfo;->softApState:I

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1217
    iget-object v2, v1, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    iget v3, p1, Lcom/qti/dpm/DpmService$DpmWifiInfo;->rssi:I

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1218
    iget-object v2, v1, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    iget-object v3, p1, Lcom/qti/dpm/DpmService$DpmWifiInfo;->ssid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1219
    iget-object v2, v1, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    iget-object v3, p1, Lcom/qti/dpm/DpmService$DpmWifiInfo;->bssid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1220
    iget-object v2, v1, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    iget-object v3, p1, Lcom/qti/dpm/DpmService$DpmWifiInfo;->ipAddrV4:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1221
    iget-object v2, v1, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    iget-object v3, p1, Lcom/qti/dpm/DpmService$DpmWifiInfo;->ifNameV4:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1222
    iget-object v2, v1, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    iget-object v3, p1, Lcom/qti/dpm/DpmService$DpmWifiInfo;->ipAddrV6:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1223
    iget-object v2, v1, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    iget-object v3, p1, Lcom/qti/dpm/DpmService$DpmWifiInfo;->ifNameV6:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1225
    invoke-virtual {p0, v1}, Lcom/qti/dpm/DpmService;->send(Lcom/qti/dpm/DpmRequest;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1192
    .end local v1    # "rr":Lcom/qti/dpm/DpmRequest;
    :goto_0
    return-void

    .line 1226
    :catch_0
    move-exception v0

    .line 1227
    .local v0, "npe":Ljava/lang/NullPointerException;
    const-string/jumbo v2, "SERVICE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendWifiStatus: null pointer"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qti/dpm/DpmService;->logw(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1230
    .end local v0    # "npe":Ljava/lang/NullPointerException;
    :cond_1
    const-string/jumbo v2, "SERVICE"

    const-string/jumbo v3, "sendWlanStatus: null mWifiManager or dpmWifiInfo"

    invoke-static {v2, v3}, Lcom/qti/dpm/DpmService;->dlogw(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendWwanStatus(Lcom/qti/dpm/DpmService$DpmWwanInfo;)V
    .locals 5
    .param p1, "dpmWwanInfo"    # Lcom/qti/dpm/DpmService$DpmWwanInfo;

    .prologue
    .line 1235
    iget-object v2, p0, Lcom/qti/dpm/DpmService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    .line 1237
    const/16 v2, 0xb

    :try_start_0
    invoke-static {v2}, Lcom/qti/dpm/DpmRequest;->obtain(I)Lcom/qti/dpm/DpmRequest;

    move-result-object v1

    .line 1238
    .local v1, "rr":Lcom/qti/dpm/DpmRequest;
    if-nez v1, :cond_0

    .line 1239
    const-string/jumbo v2, "SERVICE"

    const-string/jumbo v3, "sendWwanStatus: rr=NULL - no updated"

    invoke-static {v2, v3}, Lcom/qti/dpm/DpmService;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 1241
    :cond_0
    const-string/jumbo v2, "SERVICE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendWwanStatus type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/qti/dpm/DpmService$DpmWwanInfo;->networkType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1242
    const-string/jumbo v4, " state="

    .line 1241
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1242
    iget v4, p1, Lcom/qti/dpm/DpmService$DpmWwanInfo;->networkState:I

    .line 1241
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1243
    const-string/jumbo v4, " subType="

    .line 1241
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1243
    iget v4, p1, Lcom/qti/dpm/DpmService$DpmWwanInfo;->subType:I

    .line 1241
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1244
    const-string/jumbo v4, " roaming="

    .line 1241
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1244
    iget v4, p1, Lcom/qti/dpm/DpmService$DpmWwanInfo;->roaming:I

    .line 1241
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1245
    const-string/jumbo v4, " apn="

    .line 1241
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1245
    iget v4, p1, Lcom/qti/dpm/DpmService$DpmWwanInfo;->apn:I

    .line 1241
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1246
    const-string/jumbo v4, " ipV4Addr="

    .line 1241
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1246
    iget-object v4, p1, Lcom/qti/dpm/DpmService$DpmWwanInfo;->ipAddrV4:Ljava/lang/String;

    .line 1241
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1247
    const-string/jumbo v4, " ifNameV4="

    .line 1241
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1247
    iget-object v4, p1, Lcom/qti/dpm/DpmService$DpmWwanInfo;->ifNameV4:Ljava/lang/String;

    .line 1241
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1248
    const-string/jumbo v4, " ipV6Addr="

    .line 1241
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1248
    iget-object v4, p1, Lcom/qti/dpm/DpmService$DpmWwanInfo;->ipAddrV6:Ljava/lang/String;

    .line 1241
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1249
    const-string/jumbo v4, " ifNameV6="

    .line 1241
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1249
    iget-object v4, p1, Lcom/qti/dpm/DpmService$DpmWwanInfo;->ifNameV6:Ljava/lang/String;

    .line 1241
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1250
    const-string/jumbo v4, " mccMnc="

    .line 1241
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1250
    iget-object v4, p1, Lcom/qti/dpm/DpmService$DpmWwanInfo;->mccMnc:Ljava/lang/String;

    .line 1241
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qti/dpm/DpmService;->dlogi(Ljava/lang/String;Ljava/lang/String;)V

    .line 1251
    iget-object v2, v1, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    iget v3, p1, Lcom/qti/dpm/DpmService$DpmWwanInfo;->networkType:I

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1252
    iget-object v2, v1, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    iget v3, p1, Lcom/qti/dpm/DpmService$DpmWwanInfo;->networkState:I

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1253
    iget-object v2, v1, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    iget v3, p1, Lcom/qti/dpm/DpmService$DpmWwanInfo;->subType:I

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1254
    iget-object v2, v1, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    iget v3, p1, Lcom/qti/dpm/DpmService$DpmWwanInfo;->roaming:I

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1255
    iget-object v2, v1, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    iget v3, p1, Lcom/qti/dpm/DpmService$DpmWwanInfo;->apn:I

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1256
    iget-object v2, v1, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    iget-object v3, p1, Lcom/qti/dpm/DpmService$DpmWwanInfo;->ipAddrV4:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1257
    iget-object v2, v1, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    iget-object v3, p1, Lcom/qti/dpm/DpmService$DpmWwanInfo;->ifNameV4:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1258
    iget-object v2, v1, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    iget-object v3, p1, Lcom/qti/dpm/DpmService$DpmWwanInfo;->ipAddrV6:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1259
    iget-object v2, v1, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    iget-object v3, p1, Lcom/qti/dpm/DpmService$DpmWwanInfo;->ifNameV6:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1260
    iget-object v2, v1, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    iget-object v3, p1, Lcom/qti/dpm/DpmService$DpmWwanInfo;->mccMnc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1261
    invoke-virtual {p0, v1}, Lcom/qti/dpm/DpmService;->send(Lcom/qti/dpm/DpmRequest;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1234
    .end local v1    # "rr":Lcom/qti/dpm/DpmRequest;
    :goto_0
    return-void

    .line 1263
    :catch_0
    move-exception v0

    .line 1264
    .local v0, "npe":Ljava/lang/NullPointerException;
    const-string/jumbo v2, "SERVICE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendWwanStatus: null pointer "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qti/dpm/DpmService;->logw(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1267
    .end local v0    # "npe":Ljava/lang/NullPointerException;
    :cond_1
    const-string/jumbo v2, "SERVICE"

    const-string/jumbo v3, "sendWwanStatus: null TelephonyManager or dpmWwanInfo"

    invoke-static {v2, v3}, Lcom/qti/dpm/DpmService;->dlogw(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setWlanInfo(Landroid/content/Intent;)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 320
    if-nez p1, :cond_0

    .line 321
    return-void

    .line 324
    :cond_0
    const-string/jumbo v8, "networkInfo"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkInfo;

    .line 325
    .local v3, "dpmNi":Landroid/net/NetworkInfo;
    const-string/jumbo v8, "linkProperties"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/LinkProperties;

    .line 326
    .local v2, "dpmLp":Landroid/net/LinkProperties;
    const-string/jumbo v8, "bssid"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 327
    .local v1, "bssid":Ljava/lang/String;
    const-string/jumbo v8, "wifiInfo"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiInfo;

    .line 328
    .local v4, "dpmWi":Landroid/net/wifi/WifiInfo;
    iget-object v8, p0, Lcom/qti/dpm/DpmService;->_dpmWifiInfo:Lcom/qti/dpm/DpmService$DpmWifiInfo;

    const/16 v9, 0x15

    iput v9, v8, Lcom/qti/dpm/DpmService$DpmWifiInfo;->subType:I

    .line 330
    if-eqz v3, :cond_1

    .line 331
    iget-object v8, p0, Lcom/qti/dpm/DpmService;->_dpmWifiInfo:Lcom/qti/dpm/DpmService$DpmWifiInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/qti/dpm/DpmService;->NetworkStateToInt(Landroid/net/NetworkInfo$State;)I

    move-result v9

    iput v9, v8, Lcom/qti/dpm/DpmService$DpmWifiInfo;->networkState:I

    .line 334
    :cond_1
    if-eqz v2, :cond_4

    .line 335
    invoke-virtual {v2}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v7

    .line 336
    .local v7, "linkAddresses":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/LinkAddress;>;"
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "linkAddress$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/LinkAddress;

    .line 337
    .local v5, "linkAddress":Landroid/net/LinkAddress;
    invoke-virtual {v5}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 338
    .local v0, "addr":Ljava/net/InetAddress;
    instance-of v8, v0, Ljava/net/Inet4Address;

    if-eqz v8, :cond_3

    .line 339
    invoke-virtual {v0}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v8

    if-nez v8, :cond_2

    .line 340
    iget-object v8, p0, Lcom/qti/dpm/DpmService;->_dpmWifiInfo:Lcom/qti/dpm/DpmService$DpmWifiInfo;

    invoke-virtual {v2}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/qti/dpm/DpmService$DpmWifiInfo;->ifNameV4:Ljava/lang/String;

    .line 341
    iget-object v8, p0, Lcom/qti/dpm/DpmService;->_dpmWifiInfo:Lcom/qti/dpm/DpmService$DpmWifiInfo;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/qti/dpm/DpmService$DpmWifiInfo;->ipAddrV4:Ljava/lang/String;

    goto :goto_0

    .line 344
    :cond_3
    instance-of v8, v0, Ljava/net/Inet6Address;

    if-eqz v8, :cond_2

    .line 345
    invoke-virtual {v0}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v8

    if-nez v8, :cond_2

    .line 346
    iget-object v8, p0, Lcom/qti/dpm/DpmService;->_dpmWifiInfo:Lcom/qti/dpm/DpmService$DpmWifiInfo;

    invoke-virtual {v2}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/qti/dpm/DpmService$DpmWifiInfo;->ifNameV6:Ljava/lang/String;

    .line 347
    iget-object v8, p0, Lcom/qti/dpm/DpmService;->_dpmWifiInfo:Lcom/qti/dpm/DpmService$DpmWifiInfo;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/qti/dpm/DpmService$DpmWifiInfo;->ipAddrV6:Ljava/lang/String;

    goto :goto_0

    .line 353
    .end local v0    # "addr":Ljava/net/InetAddress;
    .end local v5    # "linkAddress":Landroid/net/LinkAddress;
    .end local v6    # "linkAddress$iterator":Ljava/util/Iterator;
    .end local v7    # "linkAddresses":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/LinkAddress;>;"
    :cond_4
    if-eqz v4, :cond_5

    .line 354
    iget-object v8, p0, Lcom/qti/dpm/DpmService;->_dpmWifiInfo:Lcom/qti/dpm/DpmService$DpmWifiInfo;

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v9

    iput v9, v8, Lcom/qti/dpm/DpmService$DpmWifiInfo;->rssi:I

    .line 355
    iget-object v8, p0, Lcom/qti/dpm/DpmService;->_dpmWifiInfo:Lcom/qti/dpm/DpmService$DpmWifiInfo;

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/wifi/WifiInfo;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/qti/dpm/DpmService$DpmWifiInfo;->ssid:Ljava/lang/String;

    .line 356
    iget-object v8, p0, Lcom/qti/dpm/DpmService;->_dpmWifiInfo:Lcom/qti/dpm/DpmService$DpmWifiInfo;

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/qti/dpm/DpmService$DpmWifiInfo;->bssid:Ljava/lang/String;

    .line 359
    :cond_5
    iget-object v8, p0, Lcom/qti/dpm/DpmService;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v8, :cond_6

    .line 360
    iget-object v8, p0, Lcom/qti/dpm/DpmService;->_dpmWifiInfo:Lcom/qti/dpm/DpmService$DpmWifiInfo;

    iget-object v9, p0, Lcom/qti/dpm/DpmService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v9

    iput v9, v8, Lcom/qti/dpm/DpmService$DpmWifiInfo;->softApState:I

    .line 319
    :cond_6
    return-void
.end method

.method private setWwanInfo(Landroid/content/Intent;)V
    .locals 16
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 369
    if-nez p1, :cond_0

    .line 370
    return-void

    .line 373
    :cond_0
    const-string/jumbo v14, "state"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 374
    .local v13, "state":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/qti/dpm/DpmService;->_dpmWwanInfo:Lcom/qti/dpm/DpmService$DpmWwanInfo;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/qti/dpm/DpmService;->NetworkStateStringToInt(Ljava/lang/String;)I

    move-result v15

    iput v15, v14, Lcom/qti/dpm/DpmService$DpmWwanInfo;->networkState:I

    .line 375
    const-string/jumbo v14, "apnType"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 376
    .local v3, "apnType":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/qti/dpm/DpmService;->_dpmWwanInfo:Lcom/qti/dpm/DpmService$DpmWwanInfo;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qti/dpm/DpmService;->apnToInt:Lcom/qti/dpm/DpmService$ApnTypeToInt;

    invoke-static {v15, v3}, Lcom/qti/dpm/DpmService$ApnTypeToInt;->-wrap0(Lcom/qti/dpm/DpmService$ApnTypeToInt;Ljava/lang/String;)I

    move-result v15

    iput v15, v14, Lcom/qti/dpm/DpmService$DpmWwanInfo;->apn:I

    .line 377
    const-string/jumbo v14, "linkProperties"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Landroid/net/LinkProperties;

    .line 378
    .local v9, "lp":Landroid/net/LinkProperties;
    if-eqz v9, :cond_8

    .line 379
    invoke-virtual {v9}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v8

    .line 380
    .local v8, "linkAddresses":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/LinkAddress;>;"
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "linkAddress$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/LinkAddress;

    .line 381
    .local v6, "linkAddress":Landroid/net/LinkAddress;
    invoke-virtual {v6}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    .line 382
    .local v1, "addr":Ljava/net/InetAddress;
    instance-of v14, v1, Ljava/net/Inet4Address;

    if-eqz v14, :cond_2

    .line 383
    invoke-virtual {v1}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v14

    if-nez v14, :cond_1

    invoke-virtual {v1}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v14

    if-nez v14, :cond_1

    .line 384
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/qti/dpm/DpmService;->_dpmWwanInfo:Lcom/qti/dpm/DpmService$DpmWwanInfo;

    invoke-virtual {v9}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v14, Lcom/qti/dpm/DpmService$DpmWwanInfo;->ifNameV4:Ljava/lang/String;

    .line 385
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/qti/dpm/DpmService;->_dpmWwanInfo:Lcom/qti/dpm/DpmService$DpmWwanInfo;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v14, Lcom/qti/dpm/DpmService$DpmWwanInfo;->ipAddrV4:Ljava/lang/String;

    goto :goto_0

    .line 387
    :cond_2
    instance-of v14, v1, Ljava/net/Inet6Address;

    if-eqz v14, :cond_1

    .line 388
    invoke-virtual {v1}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v14

    if-nez v14, :cond_3

    invoke-virtual {v1}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v14

    if-eqz v14, :cond_6

    .line 392
    :cond_3
    :goto_1
    invoke-virtual {v9}, Landroid/net/LinkProperties;->getStackedLinks()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "link$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/LinkProperties;

    .line 393
    .local v4, "link":Landroid/net/LinkProperties;
    invoke-virtual {v4}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "clat4"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 394
    invoke-virtual {v4}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v12

    .line 395
    .local v12, "stackedLinkAddresses":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/LinkAddress;>;"
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "stackedLinkAddress$iterator":Ljava/util/Iterator;
    :cond_5
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/LinkAddress;

    .line 396
    .local v10, "stackedLinkAddress":Landroid/net/LinkAddress;
    invoke-virtual {v10}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    .line 397
    .local v2, "address":Ljava/net/InetAddress;
    instance-of v14, v2, Ljava/net/Inet4Address;

    if-eqz v14, :cond_5

    .line 398
    invoke-virtual {v2}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v14

    if-nez v14, :cond_5

    invoke-virtual {v2}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v14

    if-nez v14, :cond_5

    .line 399
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/qti/dpm/DpmService;->_dpmWwanInfo:Lcom/qti/dpm/DpmService$DpmWwanInfo;

    invoke-virtual {v4}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v14, Lcom/qti/dpm/DpmService$DpmWwanInfo;->ifNameV4:Ljava/lang/String;

    .line 400
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/qti/dpm/DpmService;->_dpmWwanInfo:Lcom/qti/dpm/DpmService$DpmWwanInfo;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v14, Lcom/qti/dpm/DpmService$DpmWwanInfo;->ipAddrV4:Ljava/lang/String;

    goto :goto_3

    .line 389
    .end local v2    # "address":Ljava/net/InetAddress;
    .end local v4    # "link":Landroid/net/LinkProperties;
    .end local v5    # "link$iterator":Ljava/util/Iterator;
    .end local v10    # "stackedLinkAddress":Landroid/net/LinkAddress;
    .end local v11    # "stackedLinkAddress$iterator":Ljava/util/Iterator;
    .end local v12    # "stackedLinkAddresses":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/LinkAddress;>;"
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/qti/dpm/DpmService;->_dpmWwanInfo:Lcom/qti/dpm/DpmService$DpmWwanInfo;

    invoke-virtual {v9}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v14, Lcom/qti/dpm/DpmService$DpmWwanInfo;->ifNameV6:Ljava/lang/String;

    .line 390
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/qti/dpm/DpmService;->_dpmWwanInfo:Lcom/qti/dpm/DpmService$DpmWwanInfo;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v14, Lcom/qti/dpm/DpmService$DpmWwanInfo;->ipAddrV6:Ljava/lang/String;

    goto :goto_1

    .line 407
    .restart local v4    # "link":Landroid/net/LinkProperties;
    .restart local v5    # "link$iterator":Ljava/util/Iterator;
    :cond_7
    const-string/jumbo v14, "SERVICE"

    const-string/jumbo v15, "no clat4 interface present for ipv6 address"

    invoke-static {v14, v15}, Lcom/qti/dpm/DpmService;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 414
    .end local v1    # "addr":Ljava/net/InetAddress;
    .end local v4    # "link":Landroid/net/LinkProperties;
    .end local v5    # "link$iterator":Ljava/util/Iterator;
    .end local v6    # "linkAddress":Landroid/net/LinkAddress;
    .end local v7    # "linkAddress$iterator":Ljava/util/Iterator;
    .end local v8    # "linkAddresses":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/LinkAddress;>;"
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/qti/dpm/DpmService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v14, :cond_9

    .line 415
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qti/dpm/DpmService;->_dpmWwanInfo:Lcom/qti/dpm/DpmService$DpmWwanInfo;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/qti/dpm/DpmService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v14}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v14

    if-eqz v14, :cond_a

    const/4 v14, 0x1

    :goto_4
    iput v14, v15, Lcom/qti/dpm/DpmService$DpmWwanInfo;->roaming:I

    .line 416
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/qti/dpm/DpmService;->_dpmWwanInfo:Lcom/qti/dpm/DpmService$DpmWwanInfo;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qti/dpm/DpmService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v15}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v14, Lcom/qti/dpm/DpmService$DpmWwanInfo;->mccMnc:Ljava/lang/String;

    .line 417
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/qti/dpm/DpmService;->_dpmWwanInfo:Lcom/qti/dpm/DpmService$DpmWwanInfo;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qti/dpm/DpmService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v15}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v15

    iput v15, v14, Lcom/qti/dpm/DpmService$DpmWwanInfo;->subType:I

    .line 368
    :cond_9
    return-void

    .line 415
    :cond_a
    const/4 v14, 0x0

    goto :goto_4
.end method


# virtual methods
.method public Initialize()V
    .locals 0

    .prologue
    .line 1043
    invoke-direct {p0}, Lcom/qti/dpm/DpmService;->initNsrm()V

    .line 1042
    return-void
.end method

.method public checkFeatureEnabled(Lcom/qti/dpm/DpmService$FeatureType;)Z
    .locals 5
    .param p1, "feature"    # Lcom/qti/dpm/DpmService$FeatureType;

    .prologue
    .line 1581
    const-string/jumbo v2, "persist.dpm.feature"

    const/16 v3, 0xf

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1582
    .local v1, "value":I
    const/4 v0, 0x0

    .line 1583
    .local v0, "enabled":Z
    invoke-static {}, Lcom/qti/dpm/DpmService;->-getcom-qti-dpm-DpmService$FeatureTypeSwitchesValues()[I

    move-result-object v2

    invoke-virtual {p1}, Lcom/qti/dpm/DpmService$FeatureType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 1592
    const/4 v0, 0x0

    .line 1595
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 1596
    const-string/jumbo v2, "SERVICE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Feature "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is not enabled"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qti/dpm/DpmMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 1597
    const/4 v2, 0x0

    return v2

    .line 1585
    :pswitch_0
    and-int/lit8 v2, v1, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 1586
    const/4 v0, 0x1

    goto :goto_0

    .line 1589
    :pswitch_1
    and-int/lit8 v2, v1, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    .line 1590
    const/4 v0, 0x1

    goto :goto_0

    .line 1599
    :cond_1
    const/4 v2, 0x1

    return v2

    .line 1583
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public declared-synchronized createTrigger(Ljava/lang/String;ILandroid/os/IBinder;)I
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "triggerType"    # I
    .param p3, "binder"    # Landroid/os/IBinder;

    .prologue
    monitor-enter p0

    .line 1798
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 1799
    :try_start_0
    invoke-direct {p0, p1, p3}, Lcom/qti/dpm/DpmService;->createVendorTrigger(Ljava/lang/String;Landroid/os/IBinder;)I

    move-result v0

    iput v0, p0, Lcom/qti/dpm/DpmService;->id:I

    .line 1800
    iget v0, p0, Lcom/qti/dpm/DpmService;->id:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 1802
    :cond_0
    const/4 v0, -0x4

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized deleteTrigger(II)I
    .locals 3
    .param p1, "triggerType"    # I
    .param p2, "id"    # I

    .prologue
    monitor-enter p0

    .line 1895
    :try_start_0
    const-string/jumbo v0, "SERVICE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "deleteTrigger"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qti/dpm/DpmMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 1896
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1897
    invoke-direct {p0, p2}, Lcom/qti/dpm/DpmService;->deleteVendorTrigger(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 1899
    :cond_0
    const/4 v0, -0x4

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized disable(II)I
    .locals 3
    .param p1, "triggerType"    # I
    .param p2, "id"    # I

    .prologue
    monitor-enter p0

    .line 1876
    :try_start_0
    const-string/jumbo v0, "SERVICE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "disable Trigger "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qti/dpm/DpmMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 1877
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1878
    invoke-direct {p0, p2}, Lcom/qti/dpm/DpmService;->disableVendorTrigger(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 1880
    :cond_0
    const/4 v0, -0x4

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized enable(II)I
    .locals 3
    .param p1, "triggerType"    # I
    .param p2, "id"    # I

    .prologue
    monitor-enter p0

    .line 1826
    :try_start_0
    const-string/jumbo v0, "SERVICE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "enable Trigger "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qti/dpm/DpmMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 1827
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1828
    invoke-direct {p0, p2}, Lcom/qti/dpm/DpmService;->enableVendorTrigger(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 1830
    :cond_0
    const/4 v0, -0x4

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getNSRMEnabled()I
    .locals 1

    .prologue
    .line 1631
    iget-object v0, p0, Lcom/qti/dpm/DpmService;->mNsrm:Lcom/qti/dpm/DpmNsrm;

    if-eqz v0, :cond_0

    .line 1632
    iget-object v0, p0, Lcom/qti/dpm/DpmService;->mNsrm:Lcom/qti/dpm/DpmNsrm;

    invoke-virtual {v0}, Lcom/qti/dpm/DpmNsrm;->getNSRMEnabled()I

    move-result v0

    return v0

    .line 1634
    :cond_0
    const/4 v0, -0x4

    return v0
.end method

.method public getPolicyVersion(I)I
    .locals 1
    .param p1, "policyType"    # I

    .prologue
    .line 1615
    iget-object v0, p0, Lcom/qti/dpm/DpmService;->mNsrm:Lcom/qti/dpm/DpmNsrm;

    if-eqz v0, :cond_0

    .line 1616
    iget-object v0, p0, Lcom/qti/dpm/DpmService;->mNsrm:Lcom/qti/dpm/DpmNsrm;

    invoke-virtual {v0, p1}, Lcom/qti/dpm/DpmNsrm;->getPolicyVersion(I)I

    move-result v0

    return v0

    .line 1618
    :cond_0
    const/4 v0, -0x4

    return v0
.end method

.method public declared-synchronized getStatus(I)I
    .locals 4
    .param p1, "triggerType"    # I

    .prologue
    const/4 v0, 0x1

    monitor-enter p0

    .line 1885
    :try_start_0
    const-string/jumbo v1, "SERVICE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getStatus trigger type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qti/dpm/DpmMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 1886
    if-ne p1, v0, :cond_1

    .line 1887
    iget-boolean v1, p0, Lcom/qti/dpm/DpmService;->mVendorTriggerState:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1889
    :cond_1
    const/4 v0, -0x4

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getTCMFeatureEnabled()I
    .locals 2

    .prologue
    .line 1664
    const-string/jumbo v0, "SERVICE"

    const-string/jumbo v1, "getTCMFeatureEnabled()"

    invoke-static {v0, v1}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1665
    monitor-enter p0

    .line 1666
    :try_start_0
    sget-object v0, Lcom/qti/dpm/DpmService$FeatureType;->TCM:Lcom/qti/dpm/DpmService$FeatureType;

    invoke-virtual {p0, v0}, Lcom/qti/dpm/DpmService;->checkFeatureEnabled(Lcom/qti/dpm/DpmService$FeatureType;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 1667
    const/4 v0, -0x4

    monitor-exit p0

    return v0

    .line 1669
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/qti/dpm/DpmService;->mTcmRuntimeFeatureStatus:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 1670
    iget v0, p0, Lcom/qti/dpm/DpmService;->mTcmRuntimeFeatureStatus:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    .line 1672
    :cond_1
    :try_start_2
    sget-object v0, Lcom/qti/dpm/DpmService$TCMFeatureType;->OFF:Lcom/qti/dpm/DpmService$TCMFeatureType;

    invoke-virtual {v0}, Lcom/qti/dpm/DpmService$TCMFeatureType;->value()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 1665
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getWlanInfo()Lcom/qti/dpm/DpmService$DpmWifiInfo;
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/qti/dpm/DpmService;->_dpmWifiInfo:Lcom/qti/dpm/DpmService$DpmWifiInfo;

    return-object v0
.end method

.method getWwanInfo()Lcom/qti/dpm/DpmService$DpmWwanInfo;
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/qti/dpm/DpmService;->_dpmWwanInfo:Lcom/qti/dpm/DpmService$DpmWwanInfo;

    return-object v0
.end method

.method public handleFeatureStatusNotification(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 1903
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1904
    .local v0, "featureId":I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 1905
    iget-object v1, p0, Lcom/qti/dpm/DpmService;->mNsrm:Lcom/qti/dpm/DpmNsrm;

    if-eqz v1, :cond_0

    .line 1906
    iget-object v1, p0, Lcom/qti/dpm/DpmService;->mNsrm:Lcom/qti/dpm/DpmNsrm;

    invoke-virtual {v1, p1}, Lcom/qti/dpm/DpmNsrm;->handleFeatureStatusNotification(Landroid/os/Parcel;)V

    .line 1902
    :cond_0
    :goto_0
    return-void

    .line 1908
    :cond_1
    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 1909
    invoke-virtual {p0, p1}, Lcom/qti/dpm/DpmService;->handleTcmFeatureStatuNotification(Landroid/os/Parcel;)V

    goto :goto_0

    .line 1911
    :cond_2
    const-string/jumbo v1, "SERVICE"

    const-string/jumbo v2, "handleFeatureStatusNotification(): unknown feature id."

    invoke-static {v1, v2}, Lcom/qti/dpm/DpmMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public handleFeatureStatusSetResponse(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 1925
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1926
    .local v0, "featureId":I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 1927
    iget-object v1, p0, Lcom/qti/dpm/DpmService;->mNsrm:Lcom/qti/dpm/DpmNsrm;

    if-eqz v1, :cond_0

    .line 1928
    iget-object v1, p0, Lcom/qti/dpm/DpmService;->mNsrm:Lcom/qti/dpm/DpmNsrm;

    invoke-virtual {v1, p1}, Lcom/qti/dpm/DpmNsrm;->handleFeatureStatusSetResponse(Landroid/os/Parcel;)V

    .line 1924
    :cond_0
    :goto_0
    return-void

    .line 1930
    :cond_1
    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 1931
    invoke-virtual {p0, p1}, Lcom/qti/dpm/DpmService;->handleTcmFeatureStatusSetResponse(Landroid/os/Parcel;)V

    goto :goto_0

    .line 1933
    :cond_2
    const-string/jumbo v1, "SERVICE"

    const-string/jumbo v2, "handleFeatureStatusNotification(): unknown feature id."

    invoke-static {v1, v2}, Lcom/qti/dpm/DpmMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public handleGetRunningAppListRequest()V
    .locals 15

    .prologue
    const/4 v14, -0x1

    .line 1989
    iget-object v9, p0, Lcom/qti/dpm/DpmService;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "activity"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1991
    .local v0, "activityManager":Landroid/app/ActivityManager;
    if-nez v0, :cond_0

    .line 1992
    const-string/jumbo v9, "SERVICE"

    const-string/jumbo v10, "activityManager null"

    invoke-static {v9, v10}, Lcom/qti/dpm/DpmService;->rlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1993
    return-void

    .line 1996
    :cond_0
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v7

    .line 1997
    .local v7, "runningAppList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    long-to-int v9, v10

    div-int/lit16 v4, v9, 0x3e8

    .line 2000
    .local v4, "elapsedRealtime":I
    iget-object v9, p0, Lcom/qti/dpm/DpmService;->processesMap:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->clear()V

    .line 2002
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "process$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 2004
    .local v5, "process":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :try_start_0
    iget v9, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    const/16 v10, 0x3e8

    if-eq v9, v10, :cond_1

    iget v9, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    if-eqz v9, :cond_1

    .line 2006
    iget v9, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    iget-object v10, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-direct {p0, v9, v10}, Lcom/qti/dpm/DpmService;->getStartTime(ILjava/lang/String;)I

    move-result v8

    .line 2009
    .local v8, "startTime":I
    if-ne v8, v14, :cond_2

    .line 2010
    iget-object v9, p0, Lcom/qti/dpm/DpmService;->processesMap:Ljava/util/Map;

    iget-object v10, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const/4 v11, 0x3

    new-array v11, v11, [I

    iget v12, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    const/4 v13, 0x0

    aput v12, v11, v13

    iget v12, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    const/4 v13, 0x1

    aput v12, v11, v13

    const/4 v12, -0x1

    const/4 v13, 0x2

    aput v12, v11, v13

    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2015
    .end local v8    # "startTime":I
    :catch_0
    move-exception v3

    .line 2016
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 2012
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v8    # "startTime":I
    :cond_2
    :try_start_1
    iget-object v9, p0, Lcom/qti/dpm/DpmService;->processesMap:Ljava/util/Map;

    iget-object v10, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const/4 v11, 0x3

    new-array v11, v11, [I

    iget v12, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    const/4 v13, 0x0

    aput v12, v11, v13

    iget v12, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    const/4 v13, 0x1

    aput v12, v11, v13

    .line 2013
    sub-int v12, v4, v8

    const/4 v13, 0x2

    aput v12, v11, v13

    .line 2012
    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2021
    .end local v5    # "process":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v8    # "startTime":I
    :cond_3
    iget-object v9, p0, Lcom/qti/dpm/DpmService;->processesMap:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "currProcess$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2022
    .local v1, "currProcess":Ljava/lang/String;
    iget-object v9, p0, Lcom/qti/dpm/DpmService;->processesMap:Ljava/util/Map;

    invoke-interface {v9, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [I

    sget v10, Lcom/qti/dpm/DpmService;->ELAPSED_TIME_INDEX:I

    aget v9, v9, v10

    if-ne v9, v14, :cond_4

    .line 2023
    iget-object v9, p0, Lcom/qti/dpm/DpmService;->processesMap:Ljava/util/Map;

    invoke-interface {v9, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 2027
    .end local v1    # "currProcess":Ljava/lang/String;
    :cond_5
    invoke-virtual {p0}, Lcom/qti/dpm/DpmService;->sendRunningAppList()V

    .line 1987
    return-void
.end method

.method public handleNsrmRefreshResponse(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 1952
    iget-object v0, p0, Lcom/qti/dpm/DpmService;->mNsrm:Lcom/qti/dpm/DpmNsrm;

    if-eqz v0, :cond_0

    .line 1953
    iget-object v0, p0, Lcom/qti/dpm/DpmService;->mNsrm:Lcom/qti/dpm/DpmNsrm;

    invoke-virtual {v0, p1}, Lcom/qti/dpm/DpmNsrm;->handleNsrmRefreshResponse(Landroid/os/Parcel;)V

    .line 1951
    :cond_0
    return-void
.end method

.method public handleTcmFeatureStatuNotification(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 1916
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1917
    .local v0, "featureStatus":I
    monitor-enter p0

    .line 1918
    :try_start_0
    iput v0, p0, Lcom/qti/dpm/DpmService;->mTcmRuntimeFeatureStatus:I

    .line 1919
    iput v0, p0, Lcom/qti/dpm/DpmService;->mTcmRuntimeFeatureRequestedStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1921
    return-void

    .line 1917
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public handleTcmFeatureStatusSetResponse(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 1939
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1940
    .local v1, "featureStatus":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1942
    .local v0, "error":I
    const-string/jumbo v2, "SERVICE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleTcmFeatureStatusSetResponse(): feature status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qti/dpm/DpmMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 1943
    monitor-enter p0

    .line 1944
    :try_start_0
    iput v1, p0, Lcom/qti/dpm/DpmService;->mTcmRuntimeFeatureStatus:I

    .line 1945
    iput v1, p0, Lcom/qti/dpm/DpmService;->mTcmRuntimeFeatureRequestedStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1947
    iget v2, p0, Lcom/qti/dpm/DpmService;->mTcmRuntimeFeatureStatus:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4, v2}, Lcom/qti/dpm/DpmService;->sendPrefChangedBroadcast(III)V

    .line 1948
    return-void

    .line 1943
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public handleUpdateNsrmAppLearnedInfo(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 1958
    iget-object v0, p0, Lcom/qti/dpm/DpmService;->mNsrm:Lcom/qti/dpm/DpmNsrm;

    if-eqz v0, :cond_0

    .line 1959
    iget-object v0, p0, Lcom/qti/dpm/DpmService;->mNsrm:Lcom/qti/dpm/DpmNsrm;

    invoke-virtual {v0, p1}, Lcom/qti/dpm/DpmNsrm;->handleUpdateNsrmAppLearnedInfo(Landroid/os/Parcel;)V

    .line 1957
    :cond_0
    return-void
.end method

.method public nsrmConfigRefresh()Z
    .locals 3

    .prologue
    .line 1603
    const/4 v1, 0x6

    invoke-static {v1}, Lcom/qti/dpm/DpmRequest;->obtain(I)Lcom/qti/dpm/DpmRequest;

    move-result-object v0

    .line 1604
    .local v0, "rr":Lcom/qti/dpm/DpmRequest;
    const-string/jumbo v1, "SERVICE"

    const-string/jumbo v2, "nsrmConfigRefresh"

    invoke-static {v1, v2}, Lcom/qti/dpm/DpmMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 1605
    if-nez v0, :cond_0

    .line 1606
    const-string/jumbo v1, "SERVICE"

    const-string/jumbo v2, "nsrmConfigRefresh: rr=NULL"

    invoke-static {v1, v2}, Lcom/qti/dpm/DpmMsg;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 1607
    const/4 v1, 0x0

    return v1

    .line 1609
    :cond_0
    invoke-virtual {p0, v0}, Lcom/qti/dpm/DpmService;->send(Lcom/qti/dpm/DpmRequest;)V

    .line 1610
    const/4 v1, 0x1

    return v1
.end method

.method public nsrmPostInit()V
    .locals 1

    .prologue
    .line 1964
    iget-object v0, p0, Lcom/qti/dpm/DpmService;->mNsrm:Lcom/qti/dpm/DpmNsrm;

    if-eqz v0, :cond_0

    .line 1965
    iget-object v0, p0, Lcom/qti/dpm/DpmService;->mNsrm:Lcom/qti/dpm/DpmNsrm;

    invoke-virtual {v0}, Lcom/qti/dpm/DpmNsrm;->nsrmPostInit()V

    .line 1963
    :cond_0
    return-void
.end method

.method public requestFeatureSettingsChange(II)Z
    .locals 4
    .param p1, "featureId"    # I
    .param p2, "newValue"    # I

    .prologue
    .line 1566
    const/4 v1, 0x4

    invoke-static {v1}, Lcom/qti/dpm/DpmRequest;->obtain(I)Lcom/qti/dpm/DpmRequest;

    move-result-object v0

    .line 1567
    .local v0, "rr":Lcom/qti/dpm/DpmRequest;
    if-nez v0, :cond_0

    .line 1568
    const-string/jumbo v1, "SERVICE"

    const-string/jumbo v2, "requestFeatureSettingsChange: rr=NULL"

    invoke-static {v1, v2}, Lcom/qti/dpm/DpmService;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 1569
    const/4 v1, 0x0

    return v1

    .line 1571
    :cond_0
    iget-object v1, v0, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1572
    iget-object v1, v0, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1573
    iget-object v1, v0, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1574
    const-string/jumbo v1, "SERVICE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestFeatureSettingsChange: feature id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1575
    const-string/jumbo v3, " new value: "

    .line 1574
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qti/dpm/DpmService;->dlogi(Ljava/lang/String;Ljava/lang/String;)V

    .line 1576
    invoke-virtual {p0, v0}, Lcom/qti/dpm/DpmService;->send(Lcom/qti/dpm/DpmRequest;)V

    .line 1577
    const/4 v1, 0x1

    return v1
.end method

.method public declared-synchronized send(Lcom/qti/dpm/DpmRequest;)V
    .locals 3
    .param p1, "rr"    # Lcom/qti/dpm/DpmRequest;

    .prologue
    monitor-enter p0

    .line 1038
    :try_start_0
    iget-object v1, p0, Lcom/qti/dpm/DpmService;->mSender:Lcom/qti/dpm/DpmService$DpmSender;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Lcom/qti/dpm/DpmService$DpmSender;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1039
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1037
    return-void

    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized sendPrefChangedBroadcast(III)V
    .locals 5
    .param p1, "featureId"    # I
    .param p2, "featureParameter"    # I
    .param p3, "value"    # I

    .prologue
    monitor-enter p0

    .line 1970
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.qti.dpmframework.DPM_PREFERENCE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1971
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "dpmFeatureId"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1972
    const-string/jumbo v2, "dpmFeatureParameter"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1973
    const-string/jumbo v2, "dpmParameterValue"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1975
    :try_start_1
    iget-object v2, p0, Lcom/qti/dpm/DpmService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.BROADCAST_STICKY"

    .line 1976
    const-string/jumbo v4, "DPM sendPrefChangedBroadcast()"

    .line 1975
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1977
    iget-object v2, p0, Lcom/qti/dpm/DpmService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    .line 1969
    return-void

    .line 1978
    :catch_0
    move-exception v1

    .line 1979
    .local v1, "se":Ljava/lang/SecurityException;
    :try_start_2
    const-string/jumbo v2, "SERVICE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendPrefChangedBroadcast() SecurityException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qti/dpm/DpmService;->loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "se":Ljava/lang/SecurityException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public sendRunningAppList()V
    .locals 13

    .prologue
    const/16 v12, 0x11

    .line 2085
    invoke-static {v12}, Lcom/qti/dpm/DpmRequest;->obtain(I)Lcom/qti/dpm/DpmRequest;

    move-result-object v7

    .line 2086
    .local v7, "rr":Lcom/qti/dpm/DpmRequest;
    const/4 v6, 0x0

    .line 2088
    .local v6, "numAppsCopied":I
    if-nez v7, :cond_0

    .line 2089
    const-string/jumbo v8, "SERVICE"

    const-string/jumbo v9, "sendRunningAppList - rr is null"

    invoke-static {v8, v9}, Lcom/qti/dpm/DpmService;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 2090
    return-void

    .line 2094
    :cond_0
    iget-object v8, p0, Lcom/qti/dpm/DpmService;->processesMap:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "currProcess$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2095
    .local v0, "currProcess":Ljava/lang/String;
    const-string/jumbo v9, "Process"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "process: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, " uid: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v8, p0, Lcom/qti/dpm/DpmService;->processesMap:Ljava/util/Map;

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [I

    sget v11, Lcom/qti/dpm/DpmService;->UID_INDEX:I

    aget v8, v8, v11

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 2096
    const-string/jumbo v10, " pid: "

    .line 2095
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 2096
    iget-object v8, p0, Lcom/qti/dpm/DpmService;->processesMap:Ljava/util/Map;

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [I

    sget v11, Lcom/qti/dpm/DpmService;->PID_INDEX:I

    aget v8, v8, v11

    .line 2095
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 2097
    const-string/jumbo v10, " elapsedTime: "

    .line 2095
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 2097
    iget-object v8, p0, Lcom/qti/dpm/DpmService;->processesMap:Ljava/util/Map;

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [I

    sget v11, Lcom/qti/dpm/DpmService;->ELAPSED_TIME_INDEX:I

    aget v8, v8, v11

    .line 2095
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Lcom/qti/dpm/DpmService;->dlogd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2100
    .end local v0    # "currProcess":Ljava/lang/String;
    :cond_1
    iget-object v8, p0, Lcom/qti/dpm/DpmService;->processesMap:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v5

    .line 2101
    .local v5, "maxApps":I
    const-string/jumbo v8, "SERVICE"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "total number of apps: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/qti/dpm/DpmService;->dlogd(Ljava/lang/String;Ljava/lang/String;)V

    .line 2102
    iget-object v8, p0, Lcom/qti/dpm/DpmService;->processesMap:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    .line 2104
    .local v4, "keySet":[Ljava/lang/String;
    iget-object v8, v7, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v8}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    .line 2105
    .local v2, "dataPos":I
    iget-object v8, v7, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v8, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 2109
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v5, :cond_3

    .line 2110
    iget-object v8, v7, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    aget-object v9, v4, v3

    invoke-virtual {v8, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2111
    iget-object v9, v7, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    iget-object v8, p0, Lcom/qti/dpm/DpmService;->processesMap:Ljava/util/Map;

    aget-object v10, v4, v3

    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [I

    sget v10, Lcom/qti/dpm/DpmService;->UID_INDEX:I

    aget v8, v8, v10

    invoke-virtual {v9, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 2112
    iget-object v9, v7, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    iget-object v8, p0, Lcom/qti/dpm/DpmService;->processesMap:Ljava/util/Map;

    aget-object v10, v4, v3

    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [I

    sget v10, Lcom/qti/dpm/DpmService;->PID_INDEX:I

    aget v8, v8, v10

    invoke-virtual {v9, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 2113
    iget-object v9, v7, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    iget-object v8, p0, Lcom/qti/dpm/DpmService;->processesMap:Ljava/util/Map;

    aget-object v10, v4, v3

    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [I

    sget v10, Lcom/qti/dpm/DpmService;->ELAPSED_TIME_INDEX:I

    aget v8, v8, v10

    invoke-virtual {v9, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 2115
    add-int/lit8 v6, v6, 0x1

    .line 2120
    iget-object v8, v7, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v8}, Landroid/os/Parcel;->dataSize()I

    move-result v8

    int-to-double v8, v8

    const-wide v10, 0x40b999999999999aL    # 6553.6

    cmpl-double v8, v8, v10

    if-ltz v8, :cond_2

    .line 2121
    iget-object v8, v7, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v8, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2122
    iget-object v8, v7, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v8, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2123
    const-string/jumbo v8, "SERVICE"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "numAppsCopied = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " data size = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v7, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v10}, Landroid/os/Parcel;->dataSize()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/qti/dpm/DpmService;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 2124
    invoke-virtual {p0, v7}, Lcom/qti/dpm/DpmService;->send(Lcom/qti/dpm/DpmRequest;)V

    .line 2125
    const/4 v6, 0x0

    .line 2127
    invoke-static {v12}, Lcom/qti/dpm/DpmRequest;->obtain(I)Lcom/qti/dpm/DpmRequest;

    move-result-object v7

    .line 2109
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 2133
    :cond_3
    iget-object v8, v7, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v8, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2134
    invoke-virtual {p0, v7}, Lcom/qti/dpm/DpmService;->send(Lcom/qti/dpm/DpmRequest;)V

    .line 2084
    return-void
.end method

.method public setNSRMEnabled(I)I
    .locals 1
    .param p1, "nsrmSetType"    # I

    .prologue
    .line 1639
    iget-object v0, p0, Lcom/qti/dpm/DpmService;->mNsrm:Lcom/qti/dpm/DpmNsrm;

    if-eqz v0, :cond_0

    .line 1640
    iget-object v0, p0, Lcom/qti/dpm/DpmService;->mNsrm:Lcom/qti/dpm/DpmNsrm;

    invoke-virtual {v0, p1}, Lcom/qti/dpm/DpmNsrm;->setNSRMEnabled(I)I

    move-result v0

    return v0

    .line 1642
    :cond_0
    const/4 v0, -0x4

    return v0
.end method

.method public setTCMFeature(I)I
    .locals 4
    .param p1, "value"    # I

    .prologue
    const/16 v3, 0x3e8

    .line 1646
    const-string/jumbo v0, "SERVICE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setTCMFeature() tcmSetType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1647
    monitor-enter p0

    .line 1648
    :try_start_0
    sget-object v0, Lcom/qti/dpm/DpmService$FeatureType;->TCM:Lcom/qti/dpm/DpmService$FeatureType;

    invoke-virtual {p0, v0}, Lcom/qti/dpm/DpmService;->checkFeatureEnabled(Lcom/qti/dpm/DpmService$FeatureType;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 1649
    const/4 v0, -0x4

    monitor-exit p0

    return v0

    .line 1652
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/qti/dpm/DpmService;->mTcmRuntimeFeatureRequestedStatus:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v0, p1, :cond_1

    monitor-exit p0

    .line 1653
    return v3

    .line 1655
    :cond_1
    :try_start_2
    iput p1, p0, Lcom/qti/dpm/DpmService;->mTcmRuntimeFeatureRequestedStatus:I

    .line 1657
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/qti/dpm/DpmService;->requestFeatureSettingsChange(II)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 1658
    return v3

    .line 1647
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updatePolicy(ILjava/lang/String;)I
    .locals 1
    .param p1, "policyType"    # I
    .param p2, "filePath"    # Ljava/lang/String;

    .prologue
    .line 1623
    iget-object v0, p0, Lcom/qti/dpm/DpmService;->mNsrm:Lcom/qti/dpm/DpmNsrm;

    if-eqz v0, :cond_0

    .line 1624
    iget-object v0, p0, Lcom/qti/dpm/DpmService;->mNsrm:Lcom/qti/dpm/DpmNsrm;

    invoke-virtual {v0, p1, p2}, Lcom/qti/dpm/DpmNsrm;->updatePolicy(ILjava/lang/String;)I

    move-result v0

    return v0

    .line 1626
    :cond_0
    const/4 v0, -0x4

    return v0
.end method
