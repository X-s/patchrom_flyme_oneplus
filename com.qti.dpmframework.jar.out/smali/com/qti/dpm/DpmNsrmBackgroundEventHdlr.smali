.class public Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;
.super Ljava/lang/Object;
.source "DpmNsrmBackgroundEventHdlr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;,
        Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$2;,
        Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$MaxPowerAllocatedCallback;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final DOZE_LIGHT_SM_STATE_ACTIVE:I = 0x0

.field private static final DOZE_LIGHT_SM_STATE_IDLE:I = 0x4

.field private static final DOZE_LIGHT_SM_STATE_IDLE_MAINTENANCE:I = 0x6

.field private static final DOZE_LIGHT_SM_STATE_INACTIVE:I = 0x1

.field private static final DOZE_LIGHT_SM_STATE_OVERRIDE:I = 0x7

.field private static final DOZE_LIGHT_SM_STATE_PRE_IDLE:I = 0x3

.field private static final DOZE_LIGHT_STATE_WAITING_FOR_NETWORK:I = 0x5

.field private static final DOZE_SM_STATE_ACTIVE:I = 0x0

.field private static final DOZE_SM_STATE_IDLE:I = 0x5

.field private static final DOZE_SM_STATE_IDLE_MAINTENANCE:I = 0x6

.field private static final DOZE_SM_STATE_IDLE_PENDING:I = 0x2

.field private static final DOZE_SM_STATE_INACTIVE:I = 0x1

.field private static final DOZE_SM_STATE_LOCATING:I = 0x4

.field private static final DOZE_SM_STATE_SENSING:I = 0x3

.field public static final DPM_NSRM_BLUETOOTH_STATE_EVT:I = 0x5

.field public static final DPM_NSRM_EMERGENCY_ALERT_STATE_EVT:I = 0xb

.field public static final DPM_NSRM_GPS_STATE_EVT:I = 0x2

.field public static final DPM_NSRM_HDMI_STATE_EVT:I = 0x8

.field public static final DPM_NSRM_HEADSET_STATE_EVT:I = 0x4

.field public static final DPM_NSRM_MICROPHONE_MUTE_STATE_EVT:I = 0x7

.field public static final DPM_NSRM_MUSIC_ACTIVE_STATE_EVT:I = 0x6

.field public static final DPM_NSRM_SCREEN_STATE_EVT:I = 0x1

.field public static final DPM_NSRM_SPEAKER_STATE_EVT:I = 0xa

.field public static final DPM_NSRM_USB_STATE_EVT:I = 0x3

.field public static final DPM_NSRM_VENDOR_TRIGGER_STATE_EVT:I = 0xc

.field public static final DPM_NSRM_WLAN_P2P_STATE_EVT:I = 0xd

.field public static final DPM_NSRM_WLAN_STATE_EVT:I = 0x9

.field public static final DPM_NSRM_WWAN_DATA_CONN_STATE_EVT:I = 0x0

.field private static final INTENT_FILTER_PRIORITY_HIGH:I = 0x3e7

.field public static final Nsrm_EVENT_STATE_OFF:Z = false

.field public static final Nsrm_EVENT_STATE_ON:Z = true

.field private static final SUB_TYPE:Ljava/lang/String; = "DPM:NSRM"

.field public static final TIMERPERIOD:I = 0x1388

.field public static final TIMERTIME:I = 0x1f4

.field private static wwanDisconnected:Z


# instance fields
.field private NsrmPollTimer:Ljava/util/Timer;

.field private bluetoothConnected:Z

.field private bluetoothConnected_shadow:Z

.field private dic:Landroid/os/IDeviceIdleController;

.field private dicDeepState:I

.field private dicLightState:I

.field private dozeTrigger:Lcom/qti/dpmapi/DpmApi$DpmNsrmTrigger;

.field private dpmApi:Lcom/qti/dpmapi/DpmApi;

.field private gpsOn:Z

.field private gpsOn_shadow:Z

.field private gps_flp_On:Z

.field private gps_hal_On:Z

.field private hdmiConnected:Z

.field private iZatMgr:Lcom/qti/location/sdk/IZatManager;

.field private iZatTestSrvc:Lcom/qti/location/sdk/IZatTestService;

.field private mContext:Landroid/content/Context;

.field private mDpm:Lcom/qti/dpm/DpmService;

.field private mFilter1:Landroid/content/IntentFilter;

.field private mFilter2:Landroid/content/IntentFilter;

.field private mFilter3:Landroid/content/IntentFilter;

.field mGpsListener:Landroid/location/GpsStatus$Listener;

.field mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLocManager:Landroid/location/LocationManager;

.field private mPowerManager:Landroid/os/PowerManager;

.field private maxPowerCb:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$MaxPowerAllocatedCallback;

.field private microphoneMuted:Z

.field private microphoneMuted_shadow:Z

.field private musicActive:Z

.field private musicActive_shadow:Z

.field private speakerOn:Z

.field private speakerOn_shadow:Z

.field private usbConnected:Z

.field private usbConnected_shadow:Z

.field private wifip2pOn:Z

.field private wiredHeadsetOn:Z

.field private wiredHeadsetOn_shadow:Z


# direct methods
.method static synthetic -get0(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;)Ljava/util/Timer;
    .locals 1

    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->NsrmPollTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic -get1(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->bluetoothConnected:Z

    return v0
.end method

.method static synthetic -get2(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->bluetoothConnected_shadow:Z

    return v0
.end method

.method static synthetic -get3(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;)I
    .locals 1

    iget v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->dicLightState:I

    return v0
.end method

.method static synthetic -get4(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->hdmiConnected:Z

    return v0
.end method

.method static synthetic -get5(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;)Landroid/os/PowerManager;
    .locals 1

    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic -get6(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->usbConnected:Z

    return v0
.end method

.method static synthetic -get7(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->usbConnected_shadow:Z

    return v0
.end method

.method static synthetic -get8(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->wifip2pOn:Z

    return v0
.end method

.method static synthetic -set0(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    iput-object p1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->NsrmPollTimer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic -set1(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->bluetoothConnected:Z

    return p1
.end method

.method static synthetic -set2(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->bluetoothConnected_shadow:Z

    return p1
.end method

.method static synthetic -set3(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->gps_flp_On:Z

    return p1
.end method

.method static synthetic -set4(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->gps_hal_On:Z

    return p1
.end method

.method static synthetic -set5(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->hdmiConnected:Z

    return p1
.end method

.method static synthetic -set6(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->usbConnected:Z

    return p1
.end method

.method static synthetic -set7(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->usbConnected_shadow:Z

    return p1
.end method

.method static synthetic -set8(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->wifip2pOn:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;)V
    .locals 0

    invoke-direct {p0}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->pollBackgroundEvents()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;)V
    .locals 0

    invoke-direct {p0}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->sendGpsTrigger()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;IZ)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "state"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->sendNsrmState(IZ)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;)V
    .locals 0

    invoke-direct {p0}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->updateDozeTriggerStatus()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x1

    sput-boolean v0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->wwanDisconnected:Z

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/qti/dpm/DpmService;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dpm"    # Lcom/qti/dpm/DpmService;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->dic:Landroid/os/IDeviceIdleController;

    .line 127
    iput-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->dpmApi:Lcom/qti/dpmapi/DpmApi;

    .line 128
    iput-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->dozeTrigger:Lcom/qti/dpmapi/DpmApi$DpmNsrmTrigger;

    .line 130
    iput v1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->dicLightState:I

    .line 131
    iput v1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->dicDeepState:I

    .line 133
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->NsrmPollTimer:Ljava/util/Timer;

    .line 135
    new-instance v0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;

    invoke-direct {v0, p0}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;-><init>(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;)V

    iput-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 342
    new-instance v0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$2;

    invoke-direct {v0, p0}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$2;-><init>(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;)V

    iput-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->mGpsListener:Landroid/location/GpsStatus$Listener;

    .line 362
    iput-object p1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->mContext:Landroid/content/Context;

    .line 363
    iput-object p2, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->mDpm:Lcom/qti/dpm/DpmService;

    .line 364
    invoke-direct {p0}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->initialize()V

    .line 361
    return-void
.end method

.method private createDozeTrigger()V
    .locals 4

    .prologue
    .line 454
    :try_start_0
    new-instance v1, Lcom/qti/dpmapi/DpmApi;

    iget-object v2, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/qti/dpmapi/DpmApi;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->dpmApi:Lcom/qti/dpmapi/DpmApi;

    .line 455
    iget-object v1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->dpmApi:Lcom/qti/dpmapi/DpmApi;

    const-string/jumbo v2, "DOZE_NSRM_COEX"

    .line 456
    sget-object v3, Lcom/qti/dpmapi/DpmApi$DpmNsrmTriggerType;->DPM_VENDOR_TRIGGER:Lcom/qti/dpmapi/DpmApi$DpmNsrmTriggerType;

    .line 455
    invoke-virtual {v1, v2, v3}, Lcom/qti/dpmapi/DpmApi;->getNsrmTrigger(Ljava/lang/String;Lcom/qti/dpmapi/DpmApi$DpmNsrmTriggerType;)Lcom/qti/dpmapi/DpmApi$DpmNsrmTrigger;

    move-result-object v1

    iput-object v1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->dozeTrigger:Lcom/qti/dpmapi/DpmApi$DpmNsrmTrigger;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 450
    :goto_0
    return-void

    .line 458
    :catch_0
    move-exception v0

    .line 459
    .local v0, "ex":Ljava/lang/Exception;
    const-string/jumbo v1, "DPM:NSRM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "could not create doze Vendor trigger"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qti/dpm/DpmMsg;->logw(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initialize()V
    .locals 10

    .prologue
    const/4 v4, 0x1

    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 370
    const-string/jumbo v0, "deviceidle"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 369
    invoke-static {v0}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    move-result-object v0

    iput-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->dic:Landroid/os/IDeviceIdleController;

    .line 371
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->mPowerManager:Landroid/os/PowerManager;

    .line 372
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->mFilter1:Landroid/content/IntentFilter;

    .line 373
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->mFilter1:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 374
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->mFilter1:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 375
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->mFilter1:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 376
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->mFilter1:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 377
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->mFilter1:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 378
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->mFilter1:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 379
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->mFilter1:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 380
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->mFilter1:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 381
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->mFilter1:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.HDMI_PLUGGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 382
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->mFilter1:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 383
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->mFilter1:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 384
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->mFilter1:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.os.action.LIGHT_DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 385
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->mFilter1:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 386
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->mFilter1:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 388
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->mFilter3:Landroid/content/IntentFilter;

    .line 389
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->mFilter3:Landroid/content/IntentFilter;

    const/16 v1, 0x3e7

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 390
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->mFilter3:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.provider.Telephony.SMS_EMERGENCY_CB_RECEIVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 391
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->mFilter3:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 393
    iput-boolean v4, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->microphoneMuted:Z

    .line 394
    iput-boolean v4, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->microphoneMuted_shadow:Z

    .line 395
    iput-boolean v3, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->musicActive:Z

    .line 396
    iput-boolean v3, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->musicActive_shadow:Z

    .line 397
    iput-boolean v3, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->wiredHeadsetOn:Z

    .line 398
    iput-boolean v3, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->wiredHeadsetOn_shadow:Z

    .line 399
    iput-boolean v3, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->speakerOn:Z

    .line 400
    iput-boolean v3, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->speakerOn_shadow:Z

    .line 401
    iput-boolean v3, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->gpsOn:Z

    .line 402
    iput-boolean v3, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->gps_hal_On:Z

    .line 403
    iput-boolean v3, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->gps_flp_On:Z

    .line 404
    iput-boolean v3, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->gpsOn_shadow:Z

    .line 405
    iput-boolean v3, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->bluetoothConnected:Z

    .line 406
    iput-boolean v3, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->bluetoothConnected_shadow:Z

    .line 407
    iput-boolean v3, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->wifip2pOn:Z

    .line 409
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/qti/location/sdk/IZatManager;->getInstance(Landroid/content/Context;)Lcom/qti/location/sdk/IZatManager;

    move-result-object v0

    iput-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->iZatMgr:Lcom/qti/location/sdk/IZatManager;

    .line 412
    :try_start_0
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->iZatMgr:Lcom/qti/location/sdk/IZatManager;

    invoke-virtual {v0}, Lcom/qti/location/sdk/IZatManager;->connectTestService()Lcom/qti/location/sdk/IZatTestService;

    move-result-object v0

    iput-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->iZatTestSrvc:Lcom/qti/location/sdk/IZatTestService;

    .line 413
    new-instance v0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$MaxPowerAllocatedCallback;

    invoke-direct {v0, p0}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$MaxPowerAllocatedCallback;-><init>(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;)V

    iput-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->maxPowerCb:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$MaxPowerAllocatedCallback;

    .line 414
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->iZatTestSrvc:Lcom/qti/location/sdk/IZatTestService;

    iget-object v1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->maxPowerCb:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$MaxPowerAllocatedCallback;

    invoke-interface {v0, v1}, Lcom/qti/location/sdk/IZatTestService;->registerForMaxPowerAllocatedChange(Lcom/qti/location/sdk/IZatTestService$IFlpMaxPowerAllocatedCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 419
    :goto_0
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->mLocManager:Landroid/location/LocationManager;

    .line 420
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->mLocManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->mGpsListener:Landroid/location/GpsStatus$Listener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z

    .line 422
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->NsrmPollTimer:Ljava/util/Timer;

    new-instance v1, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$3;

    invoke-direct {v1, p0}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$3;-><init>(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;)V

    .line 428
    const-wide/16 v2, 0x1f4

    const-wide/16 v4, 0x1388

    .line 423
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 430
    :cond_0
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->mContext:Landroid/content/Context;

    .line 431
    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.hardware.usb.action.USB_STATE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 430
    invoke-virtual {v0, v9, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v8

    .line 432
    .local v8, "usbIntent":Landroid/content/Intent;
    if-eqz v8, :cond_2

    .line 433
    invoke-virtual {v8}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    .line 434
    .local v7, "extras":Landroid/os/Bundle;
    if-nez v7, :cond_1

    .line 437
    return-void

    .line 416
    .end local v7    # "extras":Landroid/os/Bundle;
    .end local v8    # "usbIntent":Landroid/content/Intent;
    :catch_0
    move-exception v6

    .line 417
    .local v6, "ex":Ljava/lang/Exception;
    const-string/jumbo v0, "DPM:NSRM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "could not start the Izat service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qti/dpm/DpmMsg;->logw(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 439
    .end local v6    # "ex":Ljava/lang/Exception;
    .restart local v7    # "extras":Landroid/os/Bundle;
    .restart local v8    # "usbIntent":Landroid/content/Intent;
    :cond_1
    const-string/jumbo v0, "connected"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->usbConnected:Z

    .line 440
    iget-boolean v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->usbConnected:Z

    iget-boolean v1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->usbConnected_shadow:Z

    if-eq v0, v1, :cond_2

    .line 441
    iget-boolean v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->usbConnected:Z

    const/4 v1, 0x3

    invoke-direct {p0, v1, v0}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->sendNsrmState(IZ)V

    .line 442
    iget-boolean v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->usbConnected:Z

    iput-boolean v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->usbConnected_shadow:Z

    .line 446
    .end local v7    # "extras":Landroid/os/Bundle;
    :cond_2
    invoke-direct {p0}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->createDozeTrigger()V

    .line 447
    invoke-direct {p0}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->updateDozeTriggerStatus()V

    .line 367
    return-void
.end method

.method private pollBackgroundEvents()V
    .locals 7

    .prologue
    const/4 v6, 0x6

    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 490
    iget-object v1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 492
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-static {v3, v3}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v1

    if-nez v1, :cond_0

    .line 493
    invoke-static {v4, v3}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v1

    .line 492
    if-nez v1, :cond_0

    .line 494
    const/4 v1, 0x2

    invoke-static {v1, v3}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v1

    .line 492
    if-nez v1, :cond_0

    .line 495
    const/4 v1, 0x3

    invoke-static {v1, v3}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v1

    .line 492
    if-nez v1, :cond_0

    .line 496
    invoke-static {v5, v3}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v1

    .line 492
    if-nez v1, :cond_0

    .line 497
    const/4 v1, 0x5

    invoke-static {v1, v3}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v1

    .line 492
    if-nez v1, :cond_0

    .line 498
    invoke-static {v6, v3}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v1

    .line 492
    if-nez v1, :cond_0

    .line 499
    const/4 v1, 0x7

    invoke-static {v1, v3}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v1

    .line 492
    if-nez v1, :cond_0

    .line 500
    const/16 v1, 0x8

    invoke-static {v1, v3}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v1

    .line 492
    if-nez v1, :cond_0

    .line 501
    const/16 v1, 0x9

    invoke-static {v1, v3}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v1

    .line 492
    if-eqz v1, :cond_4

    .line 507
    :cond_0
    iput-boolean v4, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->speakerOn:Z

    .line 534
    :goto_0
    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v1

    iput-boolean v1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->musicActive:Z

    .line 535
    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v1

    iput-boolean v1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->wiredHeadsetOn:Z

    .line 537
    iget-boolean v1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->musicActive_shadow:Z

    iget-boolean v2, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->musicActive:Z

    if-eq v1, v2, :cond_1

    .line 539
    iget-boolean v1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->musicActive:Z

    invoke-direct {p0, v6, v1}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->sendNsrmState(IZ)V

    .line 541
    :cond_1
    iget-boolean v1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->wiredHeadsetOn:Z

    iget-boolean v2, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->wiredHeadsetOn_shadow:Z

    if-eq v1, v2, :cond_2

    .line 543
    iget-boolean v1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->wiredHeadsetOn:Z

    invoke-direct {p0, v5, v1}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->sendNsrmState(IZ)V

    .line 546
    :cond_2
    iget-boolean v1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->speakerOn:Z

    iget-boolean v2, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->speakerOn_shadow:Z

    if-eq v1, v2, :cond_3

    .line 547
    iget-boolean v1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->speakerOn:Z

    const/16 v2, 0xa

    invoke-direct {p0, v2, v1}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->sendNsrmState(IZ)V

    .line 550
    :cond_3
    iget-boolean v1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->microphoneMuted:Z

    iput-boolean v1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->microphoneMuted_shadow:Z

    .line 551
    iget-boolean v1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->musicActive:Z

    iput-boolean v1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->musicActive_shadow:Z

    .line 552
    iget-boolean v1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->wiredHeadsetOn:Z

    iput-boolean v1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->wiredHeadsetOn_shadow:Z

    .line 553
    iget-boolean v1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->speakerOn:Z

    iput-boolean v1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->speakerOn_shadow:Z

    .line 487
    return-void

    .line 510
    :cond_4
    iput-boolean v3, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->speakerOn:Z

    goto :goto_0
.end method

.method private sendGpsTrigger()V
    .locals 2

    .prologue
    .line 464
    monitor-enter p0

    .line 465
    :try_start_0
    iget-boolean v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->gps_hal_On:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->gps_flp_On:Z

    :goto_0
    iput-boolean v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->gpsOn:Z

    .line 466
    iget-boolean v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->gpsOn:Z

    iget-boolean v1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->gpsOn_shadow:Z

    if-eq v0, v1, :cond_0

    .line 467
    iget-boolean v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->gpsOn:Z

    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->sendNsrmState(IZ)V

    .line 468
    iget-boolean v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->gpsOn:Z

    iput-boolean v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->gpsOn_shadow:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 463
    return-void

    .line 465
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 464
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private sendNsrmState(IZ)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "state"    # Z

    .prologue
    .line 474
    const/16 v1, 0xc

    invoke-static {v1}, Lcom/qti/dpm/DpmRequest;->obtain(I)Lcom/qti/dpm/DpmRequest;

    move-result-object v0

    .line 475
    .local v0, "rr":Lcom/qti/dpm/DpmRequest;
    if-nez v0, :cond_0

    .line 476
    const-string/jumbo v1, "DPM:NSRM"

    const-string/jumbo v2, "sendNsrmState: rr=NULL"

    invoke-static {v1, v2}, Lcom/qti/dpm/DpmMsg;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    return-void

    .line 479
    :cond_0
    iget-object v1, v0, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 480
    iget-object v1, v0, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 481
    iget-object v2, v0, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    if-eqz p2, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 483
    const-string/jumbo v1, "DPM:NSRM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendNsrmState: type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qti/dpm/DpmMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    iget-object v1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->mDpm:Lcom/qti/dpm/DpmService;

    invoke-virtual {v1, v0}, Lcom/qti/dpm/DpmService;->send(Lcom/qti/dpm/DpmRequest;)V

    .line 472
    return-void

    .line 481
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateDozeTriggerStatus()V
    .locals 5

    .prologue
    .line 311
    iget-object v2, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->dic:Landroid/os/IDeviceIdleController;

    if-eqz v2, :cond_1

    .line 315
    :try_start_0
    const-string/jumbo v2, "DPM:NSRM"

    const-string/jumbo v3, "updateDozeTriggerStatus"

    invoke-static {v2, v3}, Lcom/qti/dpm/DpmMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    iget-object v2, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->dic:Landroid/os/IDeviceIdleController;

    invoke-interface {v2}, Landroid/os/IDeviceIdleController;->getIdleStateDetailed()I

    move-result v2

    iput v2, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->dicDeepState:I

    .line 317
    iget-object v2, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->dic:Landroid/os/IDeviceIdleController;

    invoke-interface {v2}, Landroid/os/IDeviceIdleController;->getLightIdleStateDetailed()I

    move-result v2

    iput v2, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->dicLightState:I

    .line 318
    const-string/jumbo v2, "DPM:NSRM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "doze deep detailed state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->dicDeepState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 319
    const-string/jumbo v4, "light state "

    .line 318
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 319
    iget v4, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->dicLightState:I

    .line 318
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qti/dpm/DpmMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    iget v2, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->dicLightState:I

    const/4 v3, 0x7

    if-eq v2, v3, :cond_0

    .line 322
    iget v2, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->dicLightState:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 326
    :cond_0
    iget-object v2, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->dozeTrigger:Lcom/qti/dpmapi/DpmApi$DpmNsrmTrigger;

    invoke-virtual {v2}, Lcom/qti/dpmapi/DpmApi$DpmNsrmTrigger;->enable()Z

    .line 310
    :cond_1
    :goto_0
    return-void

    .line 323
    :cond_2
    iget v2, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->dicLightState:I

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    .line 324
    iget v2, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->dicLightState:I

    const/4 v3, 0x6

    if-eq v2, v3, :cond_0

    .line 330
    iget-object v2, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->dozeTrigger:Lcom/qti/dpmapi/DpmApi$DpmNsrmTrigger;

    invoke-virtual {v2}, Lcom/qti/dpmapi/DpmApi$DpmNsrmTrigger;->disable()Z
    :try_end_0
    .catch Lcom/qti/dpmapi/DpmApiException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 333
    :catch_0
    move-exception v0

    .line 334
    .local v0, "ex":Lcom/qti/dpmapi/DpmApiException;
    const-string/jumbo v2, "DPM:NSRM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "could not enable/disable dozeVendor trigger"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qti/dpm/DpmMsg;->logw(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 336
    .end local v0    # "ex":Lcom/qti/dpmapi/DpmApiException;
    :catch_1
    move-exception v1

    .line 337
    .local v1, "rex":Landroid/os/RemoteException;
    const-string/jumbo v2, "DPM:NSRM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "could not getIdleStateDetailed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qti/dpm/DpmMsg;->logw(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected recoverNSRMEventStates()V
    .locals 2

    .prologue
    .line 557
    const-string/jumbo v0, "DPM:NSRM"

    const-string/jumbo v1, "Recover NSRM Event States"

    invoke-static {v0, v1}, Lcom/qti/dpm/DpmMsg;->rlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    iget-boolean v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->gpsOn:Z

    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->sendNsrmState(IZ)V

    .line 560
    iget-boolean v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->usbConnected:Z

    const/4 v1, 0x3

    invoke-direct {p0, v1, v0}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->sendNsrmState(IZ)V

    .line 561
    iget-boolean v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->wiredHeadsetOn:Z

    const/4 v1, 0x4

    invoke-direct {p0, v1, v0}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->sendNsrmState(IZ)V

    .line 562
    iget-boolean v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->bluetoothConnected:Z

    const/4 v1, 0x5

    invoke-direct {p0, v1, v0}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->sendNsrmState(IZ)V

    .line 563
    iget-boolean v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->musicActive:Z

    const/4 v1, 0x6

    invoke-direct {p0, v1, v0}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->sendNsrmState(IZ)V

    .line 566
    iget-boolean v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->hdmiConnected:Z

    const/16 v1, 0x8

    invoke-direct {p0, v1, v0}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->sendNsrmState(IZ)V

    .line 567
    iget-boolean v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->speakerOn:Z

    const/16 v1, 0xa

    invoke-direct {p0, v1, v0}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->sendNsrmState(IZ)V

    .line 568
    iget-boolean v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->wifip2pOn:Z

    const/16 v1, 0xd

    invoke-direct {p0, v1, v0}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->sendNsrmState(IZ)V

    .line 569
    sget-boolean v0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->wwanDisconnected:Z

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->sendNsrmState(IZ)V

    .line 556
    return-void
.end method

.method protected sendWwanConnectivityState(I)V
    .locals 2
    .param p1, "networkState"    # I

    .prologue
    const/4 v1, 0x0

    .line 578
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 579
    const/4 v0, 0x1

    sput-boolean v0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->wwanDisconnected:Z

    .line 580
    sget-boolean v0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->wwanDisconnected:Z

    invoke-direct {p0, v1, v0}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->sendNsrmState(IZ)V

    .line 572
    :goto_0
    return-void

    .line 583
    :cond_0
    sput-boolean v1, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->wwanDisconnected:Z

    .line 584
    sget-boolean v0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->wwanDisconnected:Z

    invoke-direct {p0, v1, v0}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->sendNsrmState(IZ)V

    goto :goto_0
.end method
