.class public Lcom/android/server/wifi/WifiController;
.super Lcom/android/internal/util/StateMachine;
.source "WifiController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiController$ApDisablingState;,
        Lcom/android/server/wifi/WifiController$ApEnabledState;,
        Lcom/android/server/wifi/WifiController$ApEnablingState;,
        Lcom/android/server/wifi/WifiController$ApStaDisabledState;,
        Lcom/android/server/wifi/WifiController$ApStaDisablingState;,
        Lcom/android/server/wifi/WifiController$ApStaEnabledState;,
        Lcom/android/server/wifi/WifiController$ApStaEnablingState;,
        Lcom/android/server/wifi/WifiController$DefaultState;,
        Lcom/android/server/wifi/WifiController$DeviceActiveState;,
        Lcom/android/server/wifi/WifiController$DeviceInactiveState;,
        Lcom/android/server/wifi/WifiController$EcmState;,
        Lcom/android/server/wifi/WifiController$FullHighPerfLockHeldState;,
        Lcom/android/server/wifi/WifiController$FullLockHeldState;,
        Lcom/android/server/wifi/WifiController$NoLockHeldState;,
        Lcom/android/server/wifi/WifiController$ScanOnlyLockHeldState;,
        Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;,
        Lcom/android/server/wifi/WifiController$StaDisablingState;,
        Lcom/android/server/wifi/WifiController$StaEnabledState;,
        Lcom/android/server/wifi/WifiController$StaEnablingState;
    }
.end annotation


# static fields
.field private static final ACTION_DEVICE_IDLE:Ljava/lang/String; = "com.android.server.WifiManager.action.DEVICE_IDLE"

.field private static final BASE:I = 0x26000

.field static final CMD_AIRPLANE_TOGGLED:I = 0x26009

.field private static final CMD_AP_STARTED:I = 0x26015

.field static final CMD_AP_START_FAILURE:I = 0x2600d

.field static final CMD_AP_STOPPED:I = 0x2600f

.field private static final CMD_AP_STOP_FAILURE:I = 0x26016

.field static final CMD_BATTERY_CHANGED:I = 0x26004

.field static final CMD_DEFERRED_TOGGLE:I = 0x2600b

.field static final CMD_DEVICE_IDLE:I = 0x26005

.field static final CMD_EMERGENCY_CALL_STATE_CHANGED:I = 0x2600e

.field static final CMD_EMERGENCY_MODE_CHANGED:I = 0x26001

.field static final CMD_LOCKS_CHANGED:I = 0x26006

.field static final CMD_RESTART_WIFI:I = 0x26011

.field private static final CMD_RESTART_WIFI_CONTINUE:I = 0x26012

.field static final CMD_SCAN_ALWAYS_MODE_CHANGED:I = 0x26007

.field static final CMD_SCREEN_OFF:I = 0x26003

.field static final CMD_SCREEN_ON:I = 0x26002

.field static final CMD_SET_AP:I = 0x2600a

.field static final CMD_STA_START_FAILURE:I = 0x26010

.field static final CMD_USER_PRESENT:I = 0x2600c

.field private static final CMD_WIFI_DISABLED:I = 0x26014

.field private static final CMD_WIFI_ENABLED:I = 0x26013

.field private static final CMD_WIFI_STOP_FAILURE:I = 0x26017

.field static final CMD_WIFI_TOGGLED:I = 0x26008

.field private static DBG:Z = false

.field private static final DEFAULT_IDLE_MS:J = 0x493e0L

.field private static final DEFAULT_REENABLE_DELAY_MS:J = 0x1f4L

.field private static final DEFER_MARGIN_MS:J = 0x5L

.field private static final IDLE_REQUEST:I = 0x0

.field private static final TAG:Ljava/lang/String; = "WifiController"


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mApDisablingState:Lcom/android/server/wifi/WifiController$ApDisablingState;

.field private mApEnabledState:Lcom/android/server/wifi/WifiController$ApEnabledState;

.field private mApEnablingState:Lcom/android/server/wifi/WifiController$ApEnablingState;

.field private mApStaDisabledState:Lcom/android/server/wifi/WifiController$ApStaDisabledState;

.field private mApStaDisablingState:Lcom/android/server/wifi/WifiController$ApStaDisablingState;

.field private mApStaEnabledState:Lcom/android/server/wifi/WifiController$ApStaEnabledState;

.field private mApStaEnablingState:Lcom/android/server/wifi/WifiController$ApStaEnablingState;

.field private mContext:Landroid/content/Context;

.field private mDefaultState:Lcom/android/server/wifi/WifiController$DefaultState;

.field private mDeviceActiveState:Lcom/android/server/wifi/WifiController$DeviceActiveState;

.field private mDeviceIdle:Z

.field private mDeviceInactiveState:Lcom/android/server/wifi/WifiController$DeviceInactiveState;

.field private mEcmState:Lcom/android/server/wifi/WifiController$EcmState;

.field private mFacade:Lcom/android/server/wifi/FrameworkFacade;

.field private mFirstUserSignOnSeen:Z

.field private mFullHighPerfLockHeldState:Lcom/android/server/wifi/WifiController$FullHighPerfLockHeldState;

.field private mFullLockHeldState:Lcom/android/server/wifi/WifiController$FullLockHeldState;

.field private mIdleIntent:Landroid/app/PendingIntent;

.field private mIdleMillis:J

.field mNetworkInfo:Landroid/net/NetworkInfo;

.field private mNoLockHeldState:Lcom/android/server/wifi/WifiController$NoLockHeldState;

.field private mPluggedType:I

.field private mReEnableDelayMillis:J

.field private mRestartStaSapStack:Z

.field private mScanOnlyLockHeldState:Lcom/android/server/wifi/WifiController$ScanOnlyLockHeldState;

.field private mScreenOff:Z

.field final mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

.field private mSleepPolicy:I

.field private mSoftApStateMachine:Lcom/android/server/wifi/SoftApStateMachine;

.field private mStaAndApConcurrency:Z

.field private mStaDisabledWithScanState:Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;

.field private mStaDisablingState:Lcom/android/server/wifi/WifiController$StaDisablingState;

.field private mStaEnabledState:Lcom/android/server/wifi/WifiController$StaEnabledState;

.field private mStaEnablingState:Lcom/android/server/wifi/WifiController$StaEnablingState;

.field private mStayAwakeConditions:I

.field private final mTmpWorkSource:Landroid/os/WorkSource;

.field private final mWifiLockManager:Lcom/android/server/wifi/WifiLockManager;

.field final mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/wifi/WifiController;->DBG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/wifi/WifiController;)Landroid/app/AlarmManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$DeviceActiveState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mDeviceActiveState:Lcom/android/server/wifi/WifiController$DeviceActiveState;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/server/wifi/WifiController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiController;->mDeviceIdle:Z

    return v0
.end method

.method static synthetic -get12(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$EcmState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mEcmState:Lcom/android/server/wifi/WifiController$EcmState;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/FrameworkFacade;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mFacade:Lcom/android/server/wifi/FrameworkFacade;

    return-object v0
.end method

.method static synthetic -get14(Lcom/android/server/wifi/WifiController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiController;->mFirstUserSignOnSeen:Z

    return v0
.end method

.method static synthetic -get15(Lcom/android/server/wifi/WifiController;)Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mIdleIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic -get16(Lcom/android/server/wifi/WifiController;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/wifi/WifiController;->mIdleMillis:J

    return-wide v0
.end method

.method static synthetic -get17(Lcom/android/server/wifi/WifiController;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/WifiController;->mPluggedType:I

    return v0
.end method

.method static synthetic -get18(Lcom/android/server/wifi/WifiController;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/wifi/WifiController;->mReEnableDelayMillis:J

    return-wide v0
.end method

.method static synthetic -get19(Lcom/android/server/wifi/WifiController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiController;->mRestartStaSapStack:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$ApDisablingState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mApDisablingState:Lcom/android/server/wifi/WifiController$ApDisablingState;

    return-object v0
.end method

.method static synthetic -get20(Lcom/android/server/wifi/WifiController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiController;->mScreenOff:Z

    return v0
.end method

.method static synthetic -get21(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/SoftApStateMachine;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mSoftApStateMachine:Lcom/android/server/wifi/SoftApStateMachine;

    return-object v0
.end method

.method static synthetic -get22(Lcom/android/server/wifi/WifiController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiController;->mStaAndApConcurrency:Z

    return v0
.end method

.method static synthetic -get23(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mStaDisabledWithScanState:Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;

    return-object v0
.end method

.method static synthetic -get24(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$StaDisablingState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mStaDisablingState:Lcom/android/server/wifi/WifiController$StaDisablingState;

    return-object v0
.end method

.method static synthetic -get25(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$StaEnabledState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mStaEnabledState:Lcom/android/server/wifi/WifiController$StaEnabledState;

    return-object v0
.end method

.method static synthetic -get26(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$StaEnablingState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mStaEnablingState:Lcom/android/server/wifi/WifiController$StaEnablingState;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$ApEnabledState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mApEnabledState:Lcom/android/server/wifi/WifiController$ApEnabledState;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$ApEnablingState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mApEnablingState:Lcom/android/server/wifi/WifiController$ApEnablingState;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$ApStaDisabledState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mApStaDisabledState:Lcom/android/server/wifi/WifiController$ApStaDisabledState;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$ApStaDisablingState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mApStaDisablingState:Lcom/android/server/wifi/WifiController$ApStaDisablingState;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$ApStaEnabledState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mApStaEnabledState:Lcom/android/server/wifi/WifiController$ApStaEnabledState;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$ApStaEnablingState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mApStaEnablingState:Lcom/android/server/wifi/WifiController$ApStaEnablingState;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/wifi/WifiController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/wifi/WifiController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/WifiController;->mDeviceIdle:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/wifi/WifiController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/WifiController;->mFirstUserSignOnSeen:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/server/wifi/WifiController;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wifi/WifiController;->mPluggedType:I

    return p1
.end method

.method static synthetic -set3(Lcom/android/server/wifi/WifiController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/WifiController;->mRestartStaSapStack:Z

    return p1
.end method

.method static synthetic -set4(Lcom/android/server/wifi/WifiController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/WifiController;->mScreenOff:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/wifi/WifiController;)Landroid/os/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiController;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/wifi/WifiController;I)Z
    .locals 1
    .param p1, "pluggedType"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiController;->shouldWifiStayAwake(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/server/wifi/WifiController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/WifiController;->readWifiSleepPolicy()V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p1, "destState"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/server/wifi/WifiController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/WifiController;->updateBatteryWorkSource()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/wifi/WifiController;Landroid/os/Message;)Ljava/lang/String;
    .locals 1
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiController;->smToString(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Lcom/android/server/wifi/WifiController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/WifiController;->checkLocksAndTransitionWhenDeviceIdle()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/wifi/WifiController;Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/wifi/WifiController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/WifiController;->readStayAwakeConditions()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/wifi/WifiController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/WifiController;->readWifiIdleTime()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/wifi/WifiController;->DBG:Z

    .line 54
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/WifiStateMachine;Lcom/android/server/wifi/WifiSettingsStore;Lcom/android/server/wifi/WifiLockManager;Landroid/os/Looper;Lcom/android/server/wifi/FrameworkFacade;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wsm"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p3, "wss"    # Lcom/android/server/wifi/WifiSettingsStore;
    .param p4, "wifiLockManager"    # Lcom/android/server/wifi/WifiLockManager;
    .param p5, "looper"    # Landroid/os/Looper;
    .param p6, "f"    # Lcom/android/server/wifi/FrameworkFacade;

    .prologue
    .line 169
    const-string/jumbo v6, "WifiController"

    move-object/from16 v0, p5

    invoke-direct {p0, v6, v0}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    .line 64
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/wifi/WifiController;->mFirstUserSignOnSeen:Z

    .line 65
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/wifi/WifiController;->mStaAndApConcurrency:Z

    .line 66
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/wifi/WifiController;->mRestartStaSapStack:Z

    .line 98
    new-instance v6, Landroid/net/NetworkInfo;

    const-string/jumbo v7, "WIFI"

    const-string/jumbo v8, ""

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-direct {v6, v9, v10, v7, v8}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v6, p0, Lcom/android/server/wifi/WifiController;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 105
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/server/wifi/WifiController;->mSoftApStateMachine:Lcom/android/server/wifi/SoftApStateMachine;

    .line 113
    new-instance v6, Landroid/os/WorkSource;

    invoke-direct {v6}, Landroid/os/WorkSource;-><init>()V

    iput-object v6, p0, Lcom/android/server/wifi/WifiController;->mTmpWorkSource:Landroid/os/WorkSource;

    .line 147
    new-instance v6, Lcom/android/server/wifi/WifiController$DefaultState;

    invoke-direct {v6, p0}, Lcom/android/server/wifi/WifiController$DefaultState;-><init>(Lcom/android/server/wifi/WifiController;)V

    iput-object v6, p0, Lcom/android/server/wifi/WifiController;->mDefaultState:Lcom/android/server/wifi/WifiController$DefaultState;

    .line 148
    new-instance v6, Lcom/android/server/wifi/WifiController$StaEnabledState;

    invoke-direct {v6, p0}, Lcom/android/server/wifi/WifiController$StaEnabledState;-><init>(Lcom/android/server/wifi/WifiController;)V

    iput-object v6, p0, Lcom/android/server/wifi/WifiController;->mStaEnabledState:Lcom/android/server/wifi/WifiController$StaEnabledState;

    .line 149
    new-instance v6, Lcom/android/server/wifi/WifiController$ApStaDisabledState;

    invoke-direct {v6, p0}, Lcom/android/server/wifi/WifiController$ApStaDisabledState;-><init>(Lcom/android/server/wifi/WifiController;)V

    iput-object v6, p0, Lcom/android/server/wifi/WifiController;->mApStaDisabledState:Lcom/android/server/wifi/WifiController$ApStaDisabledState;

    .line 150
    new-instance v6, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;

    invoke-direct {v6, p0}, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;-><init>(Lcom/android/server/wifi/WifiController;)V

    iput-object v6, p0, Lcom/android/server/wifi/WifiController;->mStaDisabledWithScanState:Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;

    .line 151
    new-instance v6, Lcom/android/server/wifi/WifiController$ApEnabledState;

    invoke-direct {v6, p0}, Lcom/android/server/wifi/WifiController$ApEnabledState;-><init>(Lcom/android/server/wifi/WifiController;)V

    iput-object v6, p0, Lcom/android/server/wifi/WifiController;->mApEnabledState:Lcom/android/server/wifi/WifiController$ApEnabledState;

    .line 152
    new-instance v6, Lcom/android/server/wifi/WifiController$ApStaEnabledState;

    invoke-direct {v6, p0}, Lcom/android/server/wifi/WifiController$ApStaEnabledState;-><init>(Lcom/android/server/wifi/WifiController;)V

    iput-object v6, p0, Lcom/android/server/wifi/WifiController;->mApStaEnabledState:Lcom/android/server/wifi/WifiController$ApStaEnabledState;

    .line 153
    new-instance v6, Lcom/android/server/wifi/WifiController$DeviceActiveState;

    invoke-direct {v6, p0}, Lcom/android/server/wifi/WifiController$DeviceActiveState;-><init>(Lcom/android/server/wifi/WifiController;)V

    iput-object v6, p0, Lcom/android/server/wifi/WifiController;->mDeviceActiveState:Lcom/android/server/wifi/WifiController$DeviceActiveState;

    .line 154
    new-instance v6, Lcom/android/server/wifi/WifiController$DeviceInactiveState;

    invoke-direct {v6, p0}, Lcom/android/server/wifi/WifiController$DeviceInactiveState;-><init>(Lcom/android/server/wifi/WifiController;)V

    iput-object v6, p0, Lcom/android/server/wifi/WifiController;->mDeviceInactiveState:Lcom/android/server/wifi/WifiController$DeviceInactiveState;

    .line 155
    new-instance v6, Lcom/android/server/wifi/WifiController$ScanOnlyLockHeldState;

    invoke-direct {v6, p0}, Lcom/android/server/wifi/WifiController$ScanOnlyLockHeldState;-><init>(Lcom/android/server/wifi/WifiController;)V

    iput-object v6, p0, Lcom/android/server/wifi/WifiController;->mScanOnlyLockHeldState:Lcom/android/server/wifi/WifiController$ScanOnlyLockHeldState;

    .line 156
    new-instance v6, Lcom/android/server/wifi/WifiController$FullLockHeldState;

    invoke-direct {v6, p0}, Lcom/android/server/wifi/WifiController$FullLockHeldState;-><init>(Lcom/android/server/wifi/WifiController;)V

    iput-object v6, p0, Lcom/android/server/wifi/WifiController;->mFullLockHeldState:Lcom/android/server/wifi/WifiController$FullLockHeldState;

    .line 157
    new-instance v6, Lcom/android/server/wifi/WifiController$FullHighPerfLockHeldState;

    invoke-direct {v6, p0}, Lcom/android/server/wifi/WifiController$FullHighPerfLockHeldState;-><init>(Lcom/android/server/wifi/WifiController;)V

    iput-object v6, p0, Lcom/android/server/wifi/WifiController;->mFullHighPerfLockHeldState:Lcom/android/server/wifi/WifiController$FullHighPerfLockHeldState;

    .line 158
    new-instance v6, Lcom/android/server/wifi/WifiController$NoLockHeldState;

    invoke-direct {v6, p0}, Lcom/android/server/wifi/WifiController$NoLockHeldState;-><init>(Lcom/android/server/wifi/WifiController;)V

    iput-object v6, p0, Lcom/android/server/wifi/WifiController;->mNoLockHeldState:Lcom/android/server/wifi/WifiController$NoLockHeldState;

    .line 159
    new-instance v6, Lcom/android/server/wifi/WifiController$EcmState;

    invoke-direct {v6, p0}, Lcom/android/server/wifi/WifiController$EcmState;-><init>(Lcom/android/server/wifi/WifiController;)V

    iput-object v6, p0, Lcom/android/server/wifi/WifiController;->mEcmState:Lcom/android/server/wifi/WifiController$EcmState;

    .line 160
    new-instance v6, Lcom/android/server/wifi/WifiController$StaEnablingState;

    invoke-direct {v6, p0}, Lcom/android/server/wifi/WifiController$StaEnablingState;-><init>(Lcom/android/server/wifi/WifiController;)V

    iput-object v6, p0, Lcom/android/server/wifi/WifiController;->mStaEnablingState:Lcom/android/server/wifi/WifiController$StaEnablingState;

    .line 161
    new-instance v6, Lcom/android/server/wifi/WifiController$StaDisablingState;

    invoke-direct {v6, p0}, Lcom/android/server/wifi/WifiController$StaDisablingState;-><init>(Lcom/android/server/wifi/WifiController;)V

    iput-object v6, p0, Lcom/android/server/wifi/WifiController;->mStaDisablingState:Lcom/android/server/wifi/WifiController$StaDisablingState;

    .line 162
    new-instance v6, Lcom/android/server/wifi/WifiController$ApEnablingState;

    invoke-direct {v6, p0}, Lcom/android/server/wifi/WifiController$ApEnablingState;-><init>(Lcom/android/server/wifi/WifiController;)V

    iput-object v6, p0, Lcom/android/server/wifi/WifiController;->mApEnablingState:Lcom/android/server/wifi/WifiController$ApEnablingState;

    .line 163
    new-instance v6, Lcom/android/server/wifi/WifiController$ApDisablingState;

    invoke-direct {v6, p0}, Lcom/android/server/wifi/WifiController$ApDisablingState;-><init>(Lcom/android/server/wifi/WifiController;)V

    iput-object v6, p0, Lcom/android/server/wifi/WifiController;->mApDisablingState:Lcom/android/server/wifi/WifiController$ApDisablingState;

    .line 164
    new-instance v6, Lcom/android/server/wifi/WifiController$ApStaEnablingState;

    invoke-direct {v6, p0}, Lcom/android/server/wifi/WifiController$ApStaEnablingState;-><init>(Lcom/android/server/wifi/WifiController;)V

    iput-object v6, p0, Lcom/android/server/wifi/WifiController;->mApStaEnablingState:Lcom/android/server/wifi/WifiController$ApStaEnablingState;

    .line 165
    new-instance v6, Lcom/android/server/wifi/WifiController$ApStaDisablingState;

    invoke-direct {v6, p0}, Lcom/android/server/wifi/WifiController$ApStaDisablingState;-><init>(Lcom/android/server/wifi/WifiController;)V

    iput-object v6, p0, Lcom/android/server/wifi/WifiController;->mApStaDisablingState:Lcom/android/server/wifi/WifiController$ApStaDisablingState;

    .line 170
    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/android/server/wifi/WifiController;->mFacade:Lcom/android/server/wifi/FrameworkFacade;

    .line 171
    iput-object p1, p0, Lcom/android/server/wifi/WifiController;->mContext:Landroid/content/Context;

    .line 172
    iput-object p2, p0, Lcom/android/server/wifi/WifiController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    .line 173
    iput-object p3, p0, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    .line 174
    iput-object p4, p0, Lcom/android/server/wifi/WifiController;->mWifiLockManager:Lcom/android/server/wifi/WifiLockManager;

    .line 176
    iget-object v6, p0, Lcom/android/server/wifi/WifiController;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "alarm"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AlarmManager;

    iput-object v6, p0, Lcom/android/server/wifi/WifiController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 177
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v6, "com.android.server.WifiManager.action.DEVICE_IDLE"

    const/4 v7, 0x0

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 178
    .local v2, "idleIntent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/server/wifi/WifiController;->mFacade:Lcom/android/server/wifi/FrameworkFacade;

    iget-object v7, p0, Lcom/android/server/wifi/WifiController;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v2, v9}, Lcom/android/server/wifi/FrameworkFacade;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/wifi/WifiController;->mIdleIntent:Landroid/app/PendingIntent;

    .line 180
    iget-object v6, p0, Lcom/android/server/wifi/WifiController;->mDefaultState:Lcom/android/server/wifi/WifiController$DefaultState;

    invoke-virtual {p0, v6}, Lcom/android/server/wifi/WifiController;->addState(Lcom/android/internal/util/State;)V

    .line 181
    iget-object v6, p0, Lcom/android/server/wifi/WifiController;->mApStaDisabledState:Lcom/android/server/wifi/WifiController$ApStaDisabledState;

    iget-object v7, p0, Lcom/android/server/wifi/WifiController;->mDefaultState:Lcom/android/server/wifi/WifiController$DefaultState;

    invoke-virtual {p0, v6, v7}, Lcom/android/server/wifi/WifiController;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 182
    iget-object v6, p0, Lcom/android/server/wifi/WifiController;->mStaEnabledState:Lcom/android/server/wifi/WifiController$StaEnabledState;

    iget-object v7, p0, Lcom/android/server/wifi/WifiController;->mDefaultState:Lcom/android/server/wifi/WifiController$DefaultState;

    invoke-virtual {p0, v6, v7}, Lcom/android/server/wifi/WifiController;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 183
    iget-object v6, p0, Lcom/android/server/wifi/WifiController;->mStaEnablingState:Lcom/android/server/wifi/WifiController$StaEnablingState;

    iget-object v7, p0, Lcom/android/server/wifi/WifiController;->mDefaultState:Lcom/android/server/wifi/WifiController$DefaultState;

    invoke-virtual {p0, v6, v7}, Lcom/android/server/wifi/WifiController;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 184
    iget-object v6, p0, Lcom/android/server/wifi/WifiController;->mStaDisablingState:Lcom/android/server/wifi/WifiController$StaDisablingState;

    iget-object v7, p0, Lcom/android/server/wifi/WifiController;->mDefaultState:Lcom/android/server/wifi/WifiController$DefaultState;

    invoke-virtual {p0, v6, v7}, Lcom/android/server/wifi/WifiController;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 185
    iget-object v6, p0, Lcom/android/server/wifi/WifiController;->mApEnablingState:Lcom/android/server/wifi/WifiController$ApEnablingState;

    iget-object v7, p0, Lcom/android/server/wifi/WifiController;->mDefaultState:Lcom/android/server/wifi/WifiController$DefaultState;

    invoke-virtual {p0, v6, v7}, Lcom/android/server/wifi/WifiController;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 186
    iget-object v6, p0, Lcom/android/server/wifi/WifiController;->mApDisablingState:Lcom/android/server/wifi/WifiController$ApDisablingState;

    iget-object v7, p0, Lcom/android/server/wifi/WifiController;->mDefaultState:Lcom/android/server/wifi/WifiController$DefaultState;

    invoke-virtual {p0, v6, v7}, Lcom/android/server/wifi/WifiController;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 187
    iget-object v6, p0, Lcom/android/server/wifi/WifiController;->mApStaEnablingState:Lcom/android/server/wifi/WifiController$ApStaEnablingState;

    iget-object v7, p0, Lcom/android/server/wifi/WifiController;->mDefaultState:Lcom/android/server/wifi/WifiController$DefaultState;

    invoke-virtual {p0, v6, v7}, Lcom/android/server/wifi/WifiController;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 188
    iget-object v6, p0, Lcom/android/server/wifi/WifiController;->mApStaDisablingState:Lcom/android/server/wifi/WifiController$ApStaDisablingState;

    iget-object v7, p0, Lcom/android/server/wifi/WifiController;->mDefaultState:Lcom/android/server/wifi/WifiController$DefaultState;

    invoke-virtual {p0, v6, v7}, Lcom/android/server/wifi/WifiController;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 189
    iget-object v6, p0, Lcom/android/server/wifi/WifiController;->mApStaEnabledState:Lcom/android/server/wifi/WifiController$ApStaEnabledState;

    iget-object v7, p0, Lcom/android/server/wifi/WifiController;->mDefaultState:Lcom/android/server/wifi/WifiController$DefaultState;

    invoke-virtual {p0, v6, v7}, Lcom/android/server/wifi/WifiController;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 190
    iget-object v6, p0, Lcom/android/server/wifi/WifiController;->mDeviceActiveState:Lcom/android/server/wifi/WifiController$DeviceActiveState;

    iget-object v7, p0, Lcom/android/server/wifi/WifiController;->mStaEnabledState:Lcom/android/server/wifi/WifiController$StaEnabledState;

    invoke-virtual {p0, v6, v7}, Lcom/android/server/wifi/WifiController;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 191
    iget-object v6, p0, Lcom/android/server/wifi/WifiController;->mDeviceInactiveState:Lcom/android/server/wifi/WifiController$DeviceInactiveState;

    iget-object v7, p0, Lcom/android/server/wifi/WifiController;->mStaEnabledState:Lcom/android/server/wifi/WifiController$StaEnabledState;

    invoke-virtual {p0, v6, v7}, Lcom/android/server/wifi/WifiController;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 192
    iget-object v6, p0, Lcom/android/server/wifi/WifiController;->mScanOnlyLockHeldState:Lcom/android/server/wifi/WifiController$ScanOnlyLockHeldState;

    iget-object v7, p0, Lcom/android/server/wifi/WifiController;->mDeviceInactiveState:Lcom/android/server/wifi/WifiController$DeviceInactiveState;

    invoke-virtual {p0, v6, v7}, Lcom/android/server/wifi/WifiController;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 193
    iget-object v6, p0, Lcom/android/server/wifi/WifiController;->mFullLockHeldState:Lcom/android/server/wifi/WifiController$FullLockHeldState;

    iget-object v7, p0, Lcom/android/server/wifi/WifiController;->mDeviceInactiveState:Lcom/android/server/wifi/WifiController$DeviceInactiveState;

    invoke-virtual {p0, v6, v7}, Lcom/android/server/wifi/WifiController;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 194
    iget-object v6, p0, Lcom/android/server/wifi/WifiController;->mFullHighPerfLockHeldState:Lcom/android/server/wifi/WifiController$FullHighPerfLockHeldState;

    iget-object v7, p0, Lcom/android/server/wifi/WifiController;->mDeviceInactiveState:Lcom/android/server/wifi/WifiController$DeviceInactiveState;

    invoke-virtual {p0, v6, v7}, Lcom/android/server/wifi/WifiController;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 195
    iget-object v6, p0, Lcom/android/server/wifi/WifiController;->mNoLockHeldState:Lcom/android/server/wifi/WifiController$NoLockHeldState;

    iget-object v7, p0, Lcom/android/server/wifi/WifiController;->mDeviceInactiveState:Lcom/android/server/wifi/WifiController$DeviceInactiveState;

    invoke-virtual {p0, v6, v7}, Lcom/android/server/wifi/WifiController;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 196
    iget-object v6, p0, Lcom/android/server/wifi/WifiController;->mStaDisabledWithScanState:Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;

    iget-object v7, p0, Lcom/android/server/wifi/WifiController;->mDefaultState:Lcom/android/server/wifi/WifiController$DefaultState;

    invoke-virtual {p0, v6, v7}, Lcom/android/server/wifi/WifiController;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 197
    iget-object v6, p0, Lcom/android/server/wifi/WifiController;->mApEnabledState:Lcom/android/server/wifi/WifiController$ApEnabledState;

    iget-object v7, p0, Lcom/android/server/wifi/WifiController;->mDefaultState:Lcom/android/server/wifi/WifiController$DefaultState;

    invoke-virtual {p0, v6, v7}, Lcom/android/server/wifi/WifiController;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 198
    iget-object v6, p0, Lcom/android/server/wifi/WifiController;->mEcmState:Lcom/android/server/wifi/WifiController$EcmState;

    iget-object v7, p0, Lcom/android/server/wifi/WifiController;->mDefaultState:Lcom/android/server/wifi/WifiController$DefaultState;

    invoke-virtual {p0, v6, v7}, Lcom/android/server/wifi/WifiController;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 200
    iget-object v6, p0, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiSettingsStore;->isAirplaneModeOn()Z

    move-result v3

    .line 201
    .local v3, "isAirplaneModeOn":Z
    iget-object v6, p0, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiSettingsStore;->isWifiToggleEnabled()Z

    move-result v5

    .line 202
    .local v5, "isWifiEnabled":Z
    iget-object v6, p0, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiSettingsStore;->isScanAlwaysAvailable()Z

    move-result v4

    .line 204
    .local v4, "isScanningAlwaysAvailable":Z
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isAirplaneModeOn = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 205
    const-string/jumbo v7, ", isWifiEnabled = "

    .line 204
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 206
    const-string/jumbo v7, ", isScanningAvailable = "

    .line 204
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/wifi/WifiController;->log(Ljava/lang/String;)V

    .line 208
    if-eqz v4, :cond_0

    .line 209
    iget-object v6, p0, Lcom/android/server/wifi/WifiController;->mStaDisabledWithScanState:Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;

    invoke-virtual {p0, v6}, Lcom/android/server/wifi/WifiController;->setInitialState(Lcom/android/internal/util/State;)V

    .line 214
    :goto_0
    const/16 v6, 0x64

    invoke-virtual {p0, v6}, Lcom/android/server/wifi/WifiController;->setLogRecSize(I)V

    .line 215
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/android/server/wifi/WifiController;->setLogOnlyTransitions(Z)V

    .line 217
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 218
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v6, "com.android.server.WifiManager.action.DEVICE_IDLE"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 219
    const-string/jumbo v6, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 220
    const-string/jumbo v6, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 221
    const-string/jumbo v6, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 222
    iget-object v6, p0, Lcom/android/server/wifi/WifiController;->mContext:Landroid/content/Context;

    .line 223
    new-instance v7, Lcom/android/server/wifi/WifiController$1;

    invoke-direct {v7, p0}, Lcom/android/server/wifi/WifiController$1;-><init>(Lcom/android/server/wifi/WifiController;)V

    .line 259
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8, v1}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    .line 222
    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 261
    move-object/from16 v0, p5

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiController;->initializeAndRegisterForSettingsChange(Landroid/os/Looper;)V

    .line 168
    return-void

    .line 211
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :cond_0
    iget-object v6, p0, Lcom/android/server/wifi/WifiController;->mApStaDisabledState:Lcom/android/server/wifi/WifiController$ApStaDisabledState;

    invoke-virtual {p0, v6}, Lcom/android/server/wifi/WifiController;->setInitialState(Lcom/android/internal/util/State;)V

    goto :goto_0
.end method

.method private checkLocksAndTransitionWhenDeviceIdle()V
    .locals 1

    .prologue
    .line 1604
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mWifiLockManager:Lcom/android/server/wifi/WifiLockManager;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiLockManager;->getStrongestLockMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1603
    :goto_0
    return-void

    .line 1606
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiSettingsStore;->isScanAlwaysAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1607
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mScanOnlyLockHeldState:Lcom/android/server/wifi/WifiController$ScanOnlyLockHeldState;

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 1609
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mNoLockHeldState:Lcom/android/server/wifi/WifiController$NoLockHeldState;

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 1613
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mFullLockHeldState:Lcom/android/server/wifi/WifiController$FullLockHeldState;

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 1616
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mFullHighPerfLockHeldState:Lcom/android/server/wifi/WifiController$FullHighPerfLockHeldState;

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 1619
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mScanOnlyLockHeldState:Lcom/android/server/wifi/WifiController$ScanOnlyLockHeldState;

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 1604
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private initializeAndRegisterForSettingsChange(Landroid/os/Looper;)V
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 265
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 266
    .local v0, "handler":Landroid/os/Handler;
    invoke-direct {p0}, Lcom/android/server/wifi/WifiController;->readStayAwakeConditions()V

    .line 267
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiController;->registerForStayAwakeModeChange(Landroid/os/Handler;)V

    .line 268
    invoke-direct {p0}, Lcom/android/server/wifi/WifiController;->readWifiIdleTime()V

    .line 269
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiController;->registerForWifiIdleTimeChange(Landroid/os/Handler;)V

    .line 270
    invoke-direct {p0}, Lcom/android/server/wifi/WifiController;->readWifiSleepPolicy()V

    .line 271
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiController;->registerForWifiSleepPolicyChange(Landroid/os/Handler;)V

    .line 272
    invoke-direct {p0}, Lcom/android/server/wifi/WifiController;->readWifiReEnableDelay()V

    .line 264
    return-void
.end method

.method private readStayAwakeConditions()V
    .locals 4

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mFacade:Lcom/android/server/wifi/FrameworkFacade;

    iget-object v1, p0, Lcom/android/server/wifi/WifiController;->mContext:Landroid/content/Context;

    .line 277
    const-string/jumbo v2, "stay_on_while_plugged_in"

    const/4 v3, 0x0

    .line 276
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/FrameworkFacade;->getIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiController;->mStayAwakeConditions:I

    .line 275
    return-void
.end method

.method private readWifiIdleTime()V
    .locals 6

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mFacade:Lcom/android/server/wifi/FrameworkFacade;

    iget-object v1, p0, Lcom/android/server/wifi/WifiController;->mContext:Landroid/content/Context;

    .line 282
    const-string/jumbo v2, "wifi_idle_ms"

    const-wide/32 v4, 0x493e0

    .line 281
    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/android/server/wifi/FrameworkFacade;->getLongSetting(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wifi/WifiController;->mIdleMillis:J

    .line 280
    return-void
.end method

.method private readWifiReEnableDelay()V
    .locals 6

    .prologue
    .line 292
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mFacade:Lcom/android/server/wifi/FrameworkFacade;

    iget-object v1, p0, Lcom/android/server/wifi/WifiController;->mContext:Landroid/content/Context;

    .line 293
    const-string/jumbo v2, "wifi_reenable_delay"

    const-wide/16 v4, 0x1f4

    .line 292
    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/android/server/wifi/FrameworkFacade;->getLongSetting(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wifi/WifiController;->mReEnableDelayMillis:J

    .line 291
    return-void
.end method

.method private readWifiSleepPolicy()V
    .locals 4

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mFacade:Lcom/android/server/wifi/FrameworkFacade;

    iget-object v1, p0, Lcom/android/server/wifi/WifiController;->mContext:Landroid/content/Context;

    .line 287
    const-string/jumbo v2, "wifi_sleep_policy"

    .line 288
    const/4 v3, 0x2

    .line 286
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/FrameworkFacade;->getIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiController;->mSleepPolicy:I

    .line 285
    return-void
.end method

.method private registerForStayAwakeModeChange(Landroid/os/Handler;)V
    .locals 4
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 300
    new-instance v0, Lcom/android/server/wifi/WifiController$2;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wifi/WifiController$2;-><init>(Lcom/android/server/wifi/WifiController;Landroid/os/Handler;)V

    .line 307
    .local v0, "contentObserver":Landroid/database/ContentObserver;
    iget-object v1, p0, Lcom/android/server/wifi/WifiController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 308
    const-string/jumbo v2, "stay_on_while_plugged_in"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 309
    const/4 v3, 0x0

    .line 307
    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 299
    return-void
.end method

.method private registerForWifiIdleTimeChange(Landroid/os/Handler;)V
    .locals 4
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 316
    new-instance v0, Lcom/android/server/wifi/WifiController$3;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wifi/WifiController$3;-><init>(Lcom/android/server/wifi/WifiController;Landroid/os/Handler;)V

    .line 323
    .local v0, "contentObserver":Landroid/database/ContentObserver;
    iget-object v1, p0, Lcom/android/server/wifi/WifiController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 324
    const-string/jumbo v2, "wifi_idle_ms"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 325
    const/4 v3, 0x0

    .line 323
    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 315
    return-void
.end method

.method private registerForWifiSleepPolicyChange(Landroid/os/Handler;)V
    .locals 4
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 332
    new-instance v0, Lcom/android/server/wifi/WifiController$4;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wifi/WifiController$4;-><init>(Lcom/android/server/wifi/WifiController;Landroid/os/Handler;)V

    .line 338
    .local v0, "contentObserver":Landroid/database/ContentObserver;
    iget-object v1, p0, Lcom/android/server/wifi/WifiController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 339
    const-string/jumbo v2, "wifi_sleep_policy"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 340
    const/4 v3, 0x0

    .line 338
    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 331
    return-void
.end method

.method private shouldDeviceStayAwake(I)Z
    .locals 2
    .param p1, "pluggedType"    # I

    .prologue
    const/4 v0, 0x0

    .line 375
    iget v1, p0, Lcom/android/server/wifi/WifiController;->mStayAwakeConditions:I

    and-int/2addr v1, p1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private shouldWifiStayAwake(I)Z
    .locals 3
    .param p1, "pluggedType"    # I

    .prologue
    const/4 v2, 0x1

    .line 351
    iget v0, p0, Lcom/android/server/wifi/WifiController;->mSleepPolicy:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 353
    return v2

    .line 354
    :cond_0
    iget v0, p0, Lcom/android/server/wifi/WifiController;->mSleepPolicy:I

    if-ne v0, v2, :cond_1

    .line 355
    if-eqz p1, :cond_1

    .line 357
    return v2

    .line 360
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiController;->shouldDeviceStayAwake(I)Z

    move-result v0

    return v0
.end method

.method private smToString(Landroid/os/Message;)Ljava/lang/String;
    .locals 2
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 1638
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 1686
    const-string/jumbo v0, "UNKNOWN"

    .line 1688
    .local v0, "s":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 1640
    .end local v0    # "s":Ljava/lang/String;
    :pswitch_0
    const-string/jumbo v0, "CMD_EMERGENCY_MODE_CHANGED"

    .restart local v0    # "s":Ljava/lang/String;
    goto :goto_0

    .line 1642
    .end local v0    # "s":Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v0, "CMD_SCREEN_ON"

    .restart local v0    # "s":Ljava/lang/String;
    goto :goto_0

    .line 1644
    .end local v0    # "s":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v0, "CMD_SCREEN_OFF"

    .restart local v0    # "s":Ljava/lang/String;
    goto :goto_0

    .line 1646
    .end local v0    # "s":Ljava/lang/String;
    :pswitch_3
    const-string/jumbo v0, "CMD_BATTERY_CHANGED"

    .restart local v0    # "s":Ljava/lang/String;
    goto :goto_0

    .line 1648
    .end local v0    # "s":Ljava/lang/String;
    :pswitch_4
    const-string/jumbo v0, "CMD_DEVICE_IDLE"

    .restart local v0    # "s":Ljava/lang/String;
    goto :goto_0

    .line 1650
    .end local v0    # "s":Ljava/lang/String;
    :pswitch_5
    const-string/jumbo v0, "CMD_LOCKS_CHANGED"

    .restart local v0    # "s":Ljava/lang/String;
    goto :goto_0

    .line 1652
    .end local v0    # "s":Ljava/lang/String;
    :pswitch_6
    const-string/jumbo v0, "CMD_SCAN_ALWAYS_MODE_CHANGED"

    .restart local v0    # "s":Ljava/lang/String;
    goto :goto_0

    .line 1654
    .end local v0    # "s":Ljava/lang/String;
    :pswitch_7
    const-string/jumbo v0, "CMD_WIFI_TOGGLED"

    .restart local v0    # "s":Ljava/lang/String;
    goto :goto_0

    .line 1656
    .end local v0    # "s":Ljava/lang/String;
    :pswitch_8
    const-string/jumbo v0, "CMD_AIRPLANE_TOGGLED"

    .restart local v0    # "s":Ljava/lang/String;
    goto :goto_0

    .line 1658
    .end local v0    # "s":Ljava/lang/String;
    :pswitch_9
    const-string/jumbo v0, "CMD_SET_AP"

    .restart local v0    # "s":Ljava/lang/String;
    goto :goto_0

    .line 1660
    .end local v0    # "s":Ljava/lang/String;
    :pswitch_a
    const-string/jumbo v0, "CMD_DEFERRED_TOGGLE"

    .restart local v0    # "s":Ljava/lang/String;
    goto :goto_0

    .line 1662
    .end local v0    # "s":Ljava/lang/String;
    :pswitch_b
    const-string/jumbo v0, "CMD_USER_PRESENT"

    .restart local v0    # "s":Ljava/lang/String;
    goto :goto_0

    .line 1664
    .end local v0    # "s":Ljava/lang/String;
    :pswitch_c
    const-string/jumbo v0, "CMD_AP_START_FAILURE"

    .restart local v0    # "s":Ljava/lang/String;
    goto :goto_0

    .line 1666
    .end local v0    # "s":Ljava/lang/String;
    :pswitch_d
    const-string/jumbo v0, "CMD_EMERGENCY_CALL_STATE_CHANGED"

    .restart local v0    # "s":Ljava/lang/String;
    goto :goto_0

    .line 1668
    .end local v0    # "s":Ljava/lang/String;
    :pswitch_e
    const-string/jumbo v0, "CMD_AP_STOPPED"

    .restart local v0    # "s":Ljava/lang/String;
    goto :goto_0

    .line 1670
    .end local v0    # "s":Ljava/lang/String;
    :pswitch_f
    const-string/jumbo v0, "CMD_STA_START_FAILURE"

    .restart local v0    # "s":Ljava/lang/String;
    goto :goto_0

    .line 1672
    .end local v0    # "s":Ljava/lang/String;
    :pswitch_10
    const-string/jumbo v0, "CMD_RESTART_WIFI"

    .restart local v0    # "s":Ljava/lang/String;
    goto :goto_0

    .line 1674
    .end local v0    # "s":Ljava/lang/String;
    :pswitch_11
    const-string/jumbo v0, "CMD_RESTART_WIFI_CONTINUE"

    .restart local v0    # "s":Ljava/lang/String;
    goto :goto_0

    .line 1676
    .end local v0    # "s":Ljava/lang/String;
    :pswitch_12
    const-string/jumbo v0, "CMD_WIFI_ENABLED"

    .restart local v0    # "s":Ljava/lang/String;
    goto :goto_0

    .line 1678
    .end local v0    # "s":Ljava/lang/String;
    :pswitch_13
    const-string/jumbo v0, "CMD_WIFI_DISABLED"

    .restart local v0    # "s":Ljava/lang/String;
    goto :goto_0

    .line 1680
    .end local v0    # "s":Ljava/lang/String;
    :pswitch_14
    const-string/jumbo v0, "CMD_AP_STARTED"

    .restart local v0    # "s":Ljava/lang/String;
    goto :goto_0

    .line 1682
    .end local v0    # "s":Ljava/lang/String;
    :pswitch_15
    const-string/jumbo v0, "CMD_AP_STOP_FAILURE"

    .restart local v0    # "s":Ljava/lang/String;
    goto :goto_0

    .line 1684
    .end local v0    # "s":Ljava/lang/String;
    :pswitch_16
    const-string/jumbo v0, "CMD_WIFI_STOP_FAILURE"

    .restart local v0    # "s":Ljava/lang/String;
    goto :goto_0

    .line 1638
    nop

    :pswitch_data_0
    .packed-switch 0x26001
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
    .end packed-switch
.end method

.method private updateBatteryWorkSource()V
    .locals 2

    .prologue
    .line 379
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mTmpWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v0}, Landroid/os/WorkSource;->clear()V

    .line 380
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiController;->mDeviceIdle:Z

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mTmpWorkSource:Landroid/os/WorkSource;

    iget-object v1, p0, Lcom/android/server/wifi/WifiController;->mWifiLockManager:Lcom/android/server/wifi/WifiLockManager;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiLockManager;->createMergedWorkSource()Landroid/os/WorkSource;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/WorkSource;->add(Landroid/os/WorkSource;)Z

    .line 383
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiController;->mTmpWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->updateBatteryWorkSource(Landroid/os/WorkSource;)V

    .line 378
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1626
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/util/StateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1628
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mScreenOff "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiController;->mScreenOff:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1629
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mDeviceIdle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiController;->mDeviceIdle:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1630
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mPluggedType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wifi/WifiController;->mPluggedType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1631
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mIdleMillis "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/wifi/WifiController;->mIdleMillis:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1632
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mSleepPolicy "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wifi/WifiController;->mSleepPolicy:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1625
    return-void
.end method

.method enableVerboseLogging(I)V
    .locals 1
    .param p1, "verbose"    # I

    .prologue
    const/4 v0, 0x0

    .line 403
    if-lez p1, :cond_0

    .line 404
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/wifi/WifiController;->DBG:Z

    .line 402
    :goto_0
    return-void

    .line 406
    :cond_0
    sput-boolean v0, Lcom/android/server/wifi/WifiController;->DBG:Z

    goto :goto_0
.end method

.method public setSoftApStateMachine(Lcom/android/server/wifi/SoftApStateMachine;)V
    .locals 3
    .param p1, "machine"    # Lcom/android/server/wifi/SoftApStateMachine;

    .prologue
    .line 387
    iput-object p1, p0, Lcom/android/server/wifi/WifiController;->mSoftApStateMachine:Lcom/android/server/wifi/SoftApStateMachine;

    .line 388
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiController;->mStaAndApConcurrency:Z

    .line 389
    const-string/jumbo v0, "WifiController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mStaAndApConcurrency="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/wifi/WifiController;->mStaAndApConcurrency:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    return-void
.end method

.method public setStaSoftApConcurrencyEnabled(I)V
    .locals 1
    .param p1, "enabled"    # I

    .prologue
    const/4 v0, 0x0

    .line 394
    if-lez p1, :cond_0

    .line 395
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiController;->mStaAndApConcurrency:Z

    .line 393
    :goto_0
    return-void

    .line 397
    :cond_0
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiController;->mStaAndApConcurrency:Z

    goto :goto_0
.end method
