.class public final Lcom/android/server/power/PowerManagerService;
.super Lcom/android/server/SystemService;
.source "PowerManagerService.java"

# interfaces
.implements Lcom/android/server/Watchdog$Monitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/PowerManagerService$LocalService;,
        Lcom/android/server/power/PowerManagerService$BinderService;,
        Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;,
        Lcom/android/server/power/PowerManagerService$WakeLock;,
        Lcom/android/server/power/PowerManagerService$PowerManagerHandler;,
        Lcom/android/server/power/PowerManagerService$SettingsObserver;,
        Lcom/android/server/power/PowerManagerService$DockReceiver;,
        Lcom/android/server/power/PowerManagerService$UserSwitchedReceiver;,
        Lcom/android/server/power/PowerManagerService$DreamReceiver;,
        Lcom/android/server/power/PowerManagerService$BatteryReceiver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEBUG_SPEW:Z = false

.field private static final DEFAULT_DOUBLE_TAP_TO_WAKE:I = 0x0

.field private static final DEFAULT_SCREEN_OFF_TIMEOUT:I = 0x3a98

.field private static final DEFAULT_SLEEP_TIMEOUT:I = -0x1

.field private static final DIRTY_ACTUAL_DISPLAY_POWER_STATE_UPDATED:I = 0x8

.field private static final DIRTY_BATTERY_STATE:I = 0x100

.field private static final DIRTY_BOOT_COMPLETED:I = 0x10

.field private static final DIRTY_DOCK_STATE:I = 0x400

.field private static final DIRTY_IS_POWERED:I = 0x40

.field private static final DIRTY_PROXIMITY_POSITIVE:I = 0x200

.field private static final DIRTY_SCREEN_BRIGHTNESS_BOOST:I = 0x800

.field private static final DIRTY_SETTINGS:I = 0x20

.field private static final DIRTY_STAY_ON:I = 0x80

.field private static final DIRTY_USER_ACTIVITY:I = 0x4

.field private static final DIRTY_WAKEFULNESS:I = 0x2

.field private static final DIRTY_WAKE_LOCKS:I = 0x1

.field private static final IS_H2_OS:Z

.field private static final MSG_FORCESTOP:I = 0x5

.field private static final MSG_SANDMAN:I = 0x2

.field private static final MSG_SCREEN_BRIGHTNESS_BOOST_TIMEOUT:I = 0x3

.field private static final MSG_USER_ACTIVITY_TIMEOUT:I = 0x1

.field private static final POWER_FEATURE_DOUBLE_TAP_TO_WAKE:I = 0x1

.field private static final POWER_HINT_LOW_POWER:I = 0x5

.field private static final SCREEN_BRIGHTNESS_BOOST_TIMEOUT:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "PowerManagerService"

.field private static final USER_ACTIVITY_SCREEN_BRIGHT:I = 0x1

.field private static final USER_ACTIVITY_SCREEN_DIM:I = 0x2

.field private static final USER_ACTIVITY_SCREEN_DREAM:I = 0x4

.field private static final WAKE_LOCK_BUTTON_BRIGHT:I = 0x8

.field private static final WAKE_LOCK_CPU:I = 0x1

.field private static final WAKE_LOCK_DOZE:I = 0x40

.field private static final WAKE_LOCK_DRAW:I = 0x80

.field private static final WAKE_LOCK_PROXIMITY_SCREEN_OFF:I = 0x10

.field private static final WAKE_LOCK_SCREEN_BRIGHT:I = 0x2

.field private static final WAKE_LOCK_SCREEN_DIM:I = 0x4

.field private static final WAKE_LOCK_STAY_AWAKE:I = 0x20

.field private static mButtonChangeState:Z

.field private static mKeyMode:I

.field private static mPackageManager:Landroid/content/pm/PackageManager;


# instance fields
.field private mActivityManager:Landroid/app/ActivityManager;

.field private mAppOps:Lcom/android/internal/app/IAppOpsService;

.field private mAttentionLight:Lcom/android/server/lights/Light;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAutoLowPowerModeConfigured:Z

.field private mAutoLowPowerModeSnoozing:Z

.field private mBatteryLevel:I

.field private mBatteryLevelLow:Z

.field private mBatteryLevelWhenDreamStarted:I

.field private mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

.field private mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private final mBlockedUids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mBootCompleted:Z

.field private mButtonBrightness:I

.field private mButtonBrightnessSettingDefault:I

.field private mButtonsLight:Lcom/android/server/lights/Light;

.field private final mContext:Landroid/content/Context;

.field private mDecoupleHalAutoSuspendModeFromDisplayConfig:Z

.field private mDecoupleHalInteractiveModeFromDisplayConfig:Z

.field private mDeviceIdleAggressive:Z

.field private mDeviceIdleMode:Z

.field mDeviceIdleTempWhitelist:[I

.field mDeviceIdleWhitelist:[I

.field private mDirty:I

.field private mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field private final mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

.field private final mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

.field private mDisplayReady:Z

.field private final mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

.field private mDockState:I

.field private mDoubleTapWakeEnabled:Z

.field private mDozeAfterScreenOffConfig:Z

.field private mDozeScreenBrightnessOverrideFromDreamManager:I

.field private mDozeScreenStateOverrideFromDreamManager:I

.field private mDreamManager:Landroid/service/dreams/DreamManagerInternal;

.field private mDreamsActivateOnDockSetting:Z

.field private mDreamsActivateOnSleepSetting:Z

.field private mDreamsActivatedOnDockByDefaultConfig:Z

.field private mDreamsActivatedOnSleepByDefaultConfig:Z

.field private mDreamsBatteryLevelDrainCutoffConfig:I

.field private mDreamsBatteryLevelMinimumWhenNotPoweredConfig:I

.field private mDreamsBatteryLevelMinimumWhenPoweredConfig:I

.field private mDreamsEnabledByDefaultConfig:Z

.field private mDreamsEnabledOnBatteryConfig:Z

.field private mDreamsEnabledSetting:Z

.field private mDreamsSupportedConfig:Z

.field private mHalAutoSuspendModeEnabled:Z

.field private mHalInteractiveModeEnabled:Z

.field private final mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

.field private final mHandlerThread:Lcom/android/server/ServiceThread;

.field private mHoldingDisplaySuspendBlocker:Z

.field private mHoldingWakeLockSuspendBlocker:Z

.field private mIsPowered:Z

.field private mLastInteractivePowerHintTime:J

.field private mLastScreenBrightnessBoostTime:J

.field private mLastSleepTime:J

.field private mLastUserActivityTime:J

.field private mLastUserActivityTimeNoChangeLights:J

.field private mLastWakeTime:J

.field private mLastWarningAboutUserActivityPermission:J

.field private mLightsManager:Lcom/android/server/lights/LightsManager;

.field private final mLock:Ljava/lang/Object;

.field private mLowPowerModeEnabled:Z

.field private final mLowPowerModeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/PowerManagerInternal$LowPowerModeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLowPowerModeSetting:Z

.field private mMaximumScreenDimDurationConfig:I

.field private mMaximumScreenDimRatioConfig:F

.field private mMaximumScreenOffTimeoutFromDeviceAdmin:I

.field private mMinimumScreenOffTimeoutConfig:I

.field private mNotifier:Lcom/android/server/power/Notifier;

.field private mPlugType:I

.field private mPolicy:Landroid/view/WindowManagerPolicy;

.field private mProximityLockFromInCallUi:Z

.field private mProximityPositive:Z

.field private mRequestWaitForNegativeProximity:Z

.field private mSandmanScheduled:Z

.field private mSandmanSummoned:Z

.field private mScreenAutoBrightnessAdjustmentSetting:F

.field private mScreenBrightnessBoostInProgress:Z

.field private mScreenBrightnessModeSetting:I

.field private mScreenBrightnessOverrideFromWindowManager:I

.field private mScreenBrightnessSetting:I

.field private mScreenBrightnessSettingDefault:I

.field private mScreenBrightnessSettingMaximum:I

.field private mScreenBrightnessSettingMinimum:I

.field private mScreenOffTimeoutSetting:I

.field private mScreenSwitchObserver:Landroid/os/UEventObserver;

.field private mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

.field private mSleepTimeoutSetting:I

.field private mStayOn:Z

.field private mStayOnWhilePluggedInSetting:I

.field private mSupportsDoubleTapWakeConfig:Z

.field private final mSuspendBlockers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/power/SuspendBlocker;",
            ">;"
        }
    .end annotation
.end field

.field private mSuspendWhenScreenOffDueToProximityConfig:Z

.field private mSystemReady:Z

.field private mTemporaryScreenAutoBrightnessAdjustmentSettingOverride:F

.field private mTemporaryScreenBrightnessSettingOverride:I

.field private mTheaterModeEnabled:Z

.field private final mUidState:Landroid/util/SparseIntArray;

.field private mUserActivitySummary:I

.field private mUserActivityTimeoutOverrideFromWindowManager:J

.field private mWakeLockSummary:I

.field private final mWakeLockSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

.field private final mWakeLocks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/power/PowerManagerService$WakeLock;",
            ">;"
        }
    .end annotation
.end field

.field private mWakeUpWhenPluggedOrUnpluggedConfig:Z

.field private mWakeUpWhenPluggedOrUnpluggedInTheaterModeConfig:Z

.field private mWakefulness:I

.field private mWakefulnessChanging:Z

.field private mWirelessChargerDetector:Lcom/android/server/power/WirelessChargerDetector;

.field private useProximityForceSuspend:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 485
    invoke-static {}, Landroid/util/OpFeatures;->isH2()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/power/PowerManagerService;->IS_H2_OS:Z

    .line 491
    sput-boolean v1, Lcom/android/server/power/PowerManagerService;->mButtonChangeState:Z

    .line 492
    sput v1, Lcom/android/server/power/PowerManagerService;->mKeyMode:I

    .line 2819
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/power/PowerManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 509
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 204
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    .line 224
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mSuspendBlockers:Ljava/util/ArrayList;

    .line 227
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    .line 256
    new-instance v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-direct {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 306
    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mDockState:I

    .line 388
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenOffTimeoutFromDeviceAdmin:I

    .line 420
    iput v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessOverrideFromWindowManager:I

    .line 425
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutOverrideFromWindowManager:J

    .line 430
    iput v2, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenBrightnessSettingOverride:I

    .line 436
    const/high16 v0, 0x7fc00000    # NaNf

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenAutoBrightnessAdjustmentSettingOverride:F

    .line 439
    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenStateOverrideFromDreamManager:I

    .line 442
    iput v2, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenBrightnessOverrideFromDreamManager:I

    .line 445
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mLastWarningAboutUserActivityPermission:J

    .line 466
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleWhitelist:[I

    .line 469
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleTempWhitelist:[I

    .line 471
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseIntArray;

    .line 479
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeListeners:Ljava/util/ArrayList;

    .line 483
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mBlockedUids:Ljava/util/ArrayList;

    .line 496
    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->useProximityForceSuspend:Z

    .line 497
    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mProximityLockFromInCallUi:Z

    .line 2234
    new-instance v0, Lcom/android/server/power/PowerManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/power/PowerManagerService$2;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    .line 3223
    new-instance v0, Lcom/android/server/power/PowerManagerService$5;

    invoke-direct {v0, p0}, Lcom/android/server/power/PowerManagerService$5;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenSwitchObserver:Landroid/os/UEventObserver;

    .line 510
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 511
    new-instance v0, Lcom/android/server/ServiceThread;

    const-string v1, "PowerManagerService"

    const/4 v2, -0x4

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandlerThread:Lcom/android/server/ServiceThread;

    .line 513
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    .line 514
    new-instance v0, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;-><init>(Lcom/android/server/power/PowerManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    .line 516
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 517
    :try_start_0
    const-string v0, "PowerManagerService.WakeLocks"

    invoke-direct {p0, v0}, Lcom/android/server/power/PowerManagerService;->createSuspendBlockerLocked(Ljava/lang/String;)Lcom/android/server/power/SuspendBlocker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    .line 518
    const-string v0, "PowerManagerService.Display"

    invoke-direct {p0, v0}, Lcom/android/server/power/PowerManagerService;->createSuspendBlockerLocked(Ljava/lang/String;)Lcom/android/server/power/SuspendBlocker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    .line 519
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v0}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    .line 520
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mHoldingDisplaySuspendBlocker:Z

    .line 521
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mHalAutoSuspendModeEnabled:Z

    .line 522
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mHalInteractiveModeEnabled:Z

    .line 524
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    .line 526
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->nativeInit()V

    .line 527
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->nativeSetAutoSuspend(Z)V

    .line 528
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->nativeSetInteractive(Z)V

    .line 529
    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/server/power/PowerManagerService;->nativeSetFeature(II)V

    .line 530
    monitor-exit v1

    .line 531
    return-void

    .line 530
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic access$1076(Lcom/android/server/power/PowerManagerService;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 111
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/power/PowerManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    return-void
.end method

.method static synthetic access$1202(Lcom/android/server/power/PowerManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 111
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/server/power/PowerManagerService;JIII)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # J
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # I

    .prologue
    .line 111
    invoke-direct/range {p0 .. p5}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/power/PowerManagerService;JIII)V
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # J
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # I

    .prologue
    .line 111
    invoke-direct/range {p0 .. p5}, Lcom/android/server/power/PowerManagerService;->goToSleepInternal(JIII)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/power/PowerManagerService;JLjava/lang/String;ILjava/lang/String;I)V
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # J
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # I
    .param p5, "x4"    # Ljava/lang/String;
    .param p6, "x5"    # I

    .prologue
    .line 111
    invoke-direct/range {p0 .. p6}, Lcom/android/server/power/PowerManagerService;->wakeUpInternal(JLjava/lang/String;ILjava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/power/PowerManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalInteractiveModeFromDisplayConfig:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/power/PowerManagerService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->setHalInteractiveModeLocked(Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/power/PowerManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalAutoSuspendModeFromDisplayConfig:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/android/server/power/PowerManagerService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->setHalAutoSuspendModeLocked(Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/SuspendBlocker;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/power/PowerManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->handleBatteryStateChangedLocked()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/power/PowerManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->scheduleSandmanLocked()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/power/PowerManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->handleSettingsChangedLocked()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/power/PowerManagerService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 111
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDockState:I

    return v0
.end method

.method static synthetic access$2402(Lcom/android/server/power/PowerManagerService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 111
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mDockState:I

    return p1
.end method

.method static synthetic access$2500(Lcom/android/server/power/PowerManagerService;)Landroid/os/UEventObserver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenSwitchObserver:Landroid/os/UEventObserver;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/power/PowerManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->handleUserActivityTimeout()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/power/PowerManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->handleSandman()V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/power/PowerManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->handleScreenBrightnessBoostTimeout()V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/power/PowerManagerService;)Landroid/app/ActivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mActivityManager:Landroid/app/ActivityManager;

    return-object v0
.end method

.method static synthetic access$3000(Landroid/os/WorkSource;)Landroid/os/WorkSource;
    .locals 1
    .param p0, "x0"    # Landroid/os/WorkSource;

    .prologue
    .line 111
    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->copyWorkSource(Landroid/os/WorkSource;)Landroid/os/WorkSource;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Lcom/android/server/power/PowerManagerService$WakeLock;

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->handleWakeLockDeath(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    return-void
.end method

.method static synthetic access$3200(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 111
    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->nativeReleaseSuspendBlocker(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3300(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 111
    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->nativeAcquireSuspendBlocker(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/server/power/PowerManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    return v0
.end method

.method static synthetic access$3500(Lcom/android/server/power/PowerManagerService;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 111
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->powerHintInternal(II)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Landroid/os/WorkSource;
    .param p6, "x6"    # Ljava/lang/String;
    .param p7, "x7"    # I
    .param p8, "x8"    # I

    .prologue
    .line 111
    invoke-direct/range {p0 .. p8}, Lcom/android/server/power/PowerManagerService;->acquireWakeLockInternal(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # I

    .prologue
    .line 111
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->releaseWakeLockInternal(Landroid/os/IBinder;I)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;Landroid/os/WorkSource;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # Landroid/os/WorkSource;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # I

    .prologue
    .line 111
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/power/PowerManagerService;->updateWakeLockWorkSourceInternal(Landroid/os/IBinder;Landroid/os/WorkSource;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/server/power/PowerManagerService;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->isWakeLockLevelSupportedInternal(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4000(Lcom/android/server/power/PowerManagerService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 111
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mLastWarningAboutUserActivityPermission:J

    return-wide v0
.end method

.method static synthetic access$4002(Lcom/android/server/power/PowerManagerService;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # J

    .prologue
    .line 111
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mLastWarningAboutUserActivityPermission:J

    return-wide p1
.end method

.method static synthetic access$4100(Lcom/android/server/power/PowerManagerService;JIII)V
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # J
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # I

    .prologue
    .line 111
    invoke-direct/range {p0 .. p5}, Lcom/android/server/power/PowerManagerService;->userActivityInternal(JIII)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/server/power/PowerManagerService;JI)V
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # J
    .param p3, "x2"    # I

    .prologue
    .line 111
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/PowerManagerService;->napInternal(JI)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/server/power/PowerManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isInteractiveInternal()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4400(Lcom/android/server/power/PowerManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isLowPowerModeInternal()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4500(Lcom/android/server/power/PowerManagerService;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->setLowPowerModeInternal(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4600(Lcom/android/server/power/PowerManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isDeviceIdleModeInternal()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4700(Lcom/android/server/power/PowerManagerService;ZZLjava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Z

    .prologue
    .line 111
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/power/PowerManagerService;->shutdownOrRebootInternal(ZZLjava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->crashInternal(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/server/power/PowerManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->setTemporaryScreenBrightnessSettingOverrideInternal(I)V

    return-void
.end method

.method static synthetic access$5000(Lcom/android/server/power/PowerManagerService;F)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # F

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->setTemporaryScreenAutoBrightnessAdjustmentSettingOverrideInternal(F)V

    return-void
.end method

.method static synthetic access$5100(Lcom/android/server/power/PowerManagerService;ZI)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .prologue
    .line 111
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->setAttentionLightInternal(ZI)V

    return-void
.end method

.method static synthetic access$5200(Lcom/android/server/power/PowerManagerService;JI)V
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # J
    .param p3, "x2"    # I

    .prologue
    .line 111
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/PowerManagerService;->boostScreenBrightnessInternal(JI)V

    return-void
.end method

.method static synthetic access$5300(Lcom/android/server/power/PowerManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isScreenBrightnessBoostedInternal()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5400(Lcom/android/server/power/PowerManagerService;Ljava/io/PrintWriter;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Ljava/io/PrintWriter;

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->dumpInternal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic access$5500(Lcom/android/server/power/PowerManagerService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/android/server/power/PowerManagerService;ILcom/android/server/power/PowerManagerService$WakeLock;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/android/server/power/PowerManagerService$WakeLock;

    .prologue
    .line 111
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->checkWorkSourceObjectId(ILcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5700(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$WakeLock;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Lcom/android/server/power/PowerManagerService$WakeLock;
    .param p2, "x2"    # Z

    .prologue
    .line 111
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->updateBlockedWakelock(Lcom/android/server/power/PowerManagerService$WakeLock;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5800(Lcom/android/server/power/PowerManagerService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mBlockedUids:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$5900(Lcom/android/server/power/PowerManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->setScreenBrightnessOverrideFromWindowManagerInternal(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/power/PowerManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeEnabled:Z

    return v0
.end method

.method static synthetic access$6000(Lcom/android/server/power/PowerManagerService;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 111
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->setDozeOverrideFromDreamManagerInternal(II)V

    return-void
.end method

.method static synthetic access$6100(Lcom/android/server/power/PowerManagerService;J)V
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # J

    .prologue
    .line 111
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->setUserActivityTimeoutOverrideFromWindowManagerInternal(J)V

    return-void
.end method

.method static synthetic access$6202(Lcom/android/server/power/PowerManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 111
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleAggressive:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/power/PowerManagerService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method private acquireWakeLockInternal(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;II)V
    .locals 15
    .param p1, "lock"    # Landroid/os/IBinder;
    .param p2, "flags"    # I
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "ws"    # Landroid/os/WorkSource;
    .param p6, "historyTag"    # Ljava/lang/String;
    .param p7, "uid"    # I
    .param p8, "pid"    # I

    .prologue
    .line 864
    iget-object v14, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v14

    .line 872
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/power/PowerManagerService;->findWakeLockIndexLocked(Landroid/os/IBinder;)I

    move-result v12

    .line 874
    .local v12, "index":I
    if-ltz v12, :cond_2

    .line 875
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerManagerService$WakeLock;

    .local v1, "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    move/from16 v5, p7

    move/from16 v6, p8

    .line 876
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService$WakeLock;->hasSameProperties(ILjava/lang/String;Landroid/os/WorkSource;II)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, p0

    move-object v3, v1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    .line 878
    invoke-direct/range {v2 .. v10}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockChangingLocked(Lcom/android/server/power/PowerManagerService$WakeLock;ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    .line 880
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/power/PowerManagerService$WakeLock;->updateProperties(ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;II)V

    .line 882
    :cond_0
    const/4 v13, 0x0

    .line 904
    .local v13, "notifyAcquire":Z
    :goto_0
    move/from16 v0, p7

    invoke-direct {p0, v1, v0}, Lcom/android/server/power/PowerManagerService;->applyWakeLockFlagsOnAcquireLocked(Lcom/android/server/power/PowerManagerService$WakeLock;I)V

    .line 905
    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 906
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 907
    if-eqz v13, :cond_1

    .line 913
    invoke-direct {p0, v1}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockAcquiredLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    .line 915
    :cond_1
    monitor-exit v14

    .line 916
    return-void

    .line 884
    .end local v1    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    .end local v13    # "notifyAcquire":Z
    :cond_2
    new-instance v1, Lcom/android/server/power/PowerManagerService$WakeLock;

    move-object v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-direct/range {v1 .. v10}, Lcom/android/server/power/PowerManagerService$WakeLock;-><init>(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 886
    .restart local v1    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    const/4 v2, 0x0

    :try_start_1
    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 890
    :try_start_2
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 891
    invoke-direct {p0, v1}, Lcom/android/server/power/PowerManagerService;->setWakeLockDisabledStateLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    .line 892
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mBlockedUids:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/Integer;

    move/from16 v0, p7

    invoke-direct {v3, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    move/from16 v0, p7

    if-eq v0, v2, :cond_3

    .line 899
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/server/power/PowerManagerService;->updateBlockedWakelock(Lcom/android/server/power/PowerManagerService$WakeLock;Z)Z

    .line 901
    :cond_3
    const/4 v13, 0x1

    .restart local v13    # "notifyAcquire":Z
    goto :goto_0

    .line 887
    .end local v13    # "notifyAcquire":Z
    :catch_0
    move-exception v11

    .line 888
    .local v11, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Wake lock is already dead."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 915
    .end local v1    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    .end local v11    # "ex":Landroid/os/RemoteException;
    .end local v12    # "index":I
    :catchall_0
    move-exception v2

    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method private allowAcquireWakeLock(Lcom/android/server/power/PowerManagerService$WakeLock;)Z
    .locals 9
    .param p1, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2685
    const/4 v2, 0x0

    .line 2686
    .local v2, "mTrackUids":[Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->getActiveAudioUids()[Ljava/lang/String;

    move-result-object v2

    .line 2690
    if-eqz v2, :cond_2

    .line 2691
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v8, v2

    if-ge v0, v8, :cond_2

    .line 2692
    aget-object v8, v2, v0

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2691
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2695
    :cond_1
    aget-object v8, v2, v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 2698
    .local v5, "uid":I
    if-nez v5, :cond_3

    .line 2718
    .end local v0    # "i":I
    .end local v5    # "uid":I
    :cond_2
    :goto_1
    return v6

    .line 2704
    .restart local v0    # "i":I
    .restart local v5    # "uid":I
    :cond_3
    iget v8, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    if-ne v5, v8, :cond_4

    move v6, v7

    .line 2705
    goto :goto_1

    .line 2707
    :cond_4
    iget-object v8, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    if-eqz v8, :cond_0

    .line 2708
    iget-object v8, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v8}, Landroid/os/WorkSource;->size()I

    move-result v4

    .line 2709
    .local v4, "size":I
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_2
    if-ge v1, v4, :cond_0

    .line 2710
    iget-object v8, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v8, v1}, Landroid/os/WorkSource;->get(I)I

    move-result v3

    .line 2711
    .local v3, "mUid":I
    if-ne v3, v5, :cond_5

    move v6, v7

    .line 2712
    goto :goto_1

    .line 2709
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method private applyWakeLockFlagsOnAcquireLocked(Lcom/android/server/power/PowerManagerService$WakeLock;I)V
    .locals 8
    .param p1, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;
    .param p2, "uid"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 930
    iget v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->isScreenLock(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 933
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->useProximityForceSuspend:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    if-ne v0, v5, :cond_1

    .line 934
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wakeLock : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", lock = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mLock:Landroid/os/IBinder;

    invoke-static {v2}, Llibcore/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " try to wakeup device while proximity positive"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    move-object v1, p0

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z

    .line 958
    :cond_0
    :goto_0
    return-void

    .line 947
    :cond_1
    iget-object v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v0, v4}, Landroid/os/WorkSource;->getName(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 948
    iget-object v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v0, v4}, Landroid/os/WorkSource;->getName(I)Ljava/lang/String;

    move-result-object v6

    .line 949
    .local v6, "opPackageName":Ljava/lang/String;
    iget-object v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v0, v4}, Landroid/os/WorkSource;->get(I)I

    move-result v5

    .line 955
    .local v5, "opUid":I
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v4, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    move-object v1, p0

    move v7, v5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/power/PowerManagerService;->wakeUpNoUpdateLocked(JLjava/lang/String;ILjava/lang/String;I)Z

    goto :goto_0

    .line 951
    .end local v5    # "opUid":I
    .end local v6    # "opPackageName":Ljava/lang/String;
    :cond_2
    iget-object v6, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    .line 952
    .restart local v6    # "opPackageName":Ljava/lang/String;
    iget-object v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v0, v4}, Landroid/os/WorkSource;->get(I)I

    move-result v5

    .restart local v5    # "opUid":I
    :goto_2
    goto :goto_1

    .end local v5    # "opUid":I
    :cond_3
    iget v5, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    goto :goto_2
.end method

.method private applyWakeLockFlagsOnReleaseLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .locals 7
    .param p1, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;

    .prologue
    .line 1012
    iget v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const/high16 v1, 0x20000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->isScreenLock(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1014
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    iget v6, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z

    .line 1019
    :cond_0
    return-void
.end method

.method private blackPackageForAudio(I)Z
    .locals 4
    .param p1, "uid"    # I

    .prologue
    .line 2792
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 2793
    .local v0, "packageName":Ljava/lang/String;
    const-string v1, "com.netease.my.nearme.gamecenter"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.tencent.feiji"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.netease.dhxy.nearme.gamecenter"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.tencent.tmgp.RunGame"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2797
    :cond_0
    const-string v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " blackPackageForAudio  packageName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2798
    const/4 v1, 0x1

    .line 2800
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private boostScreenBrightnessInternal(JI)V
    .locals 9
    .param p1, "eventTime"    # J
    .param p3, "uid"    # I

    .prologue
    .line 2863
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 2864
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mLastScreenBrightnessBoostTime:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    .line 2866
    :cond_0
    monitor-exit v7

    .line 2881
    :goto_0
    return-void

    .line 2869
    :cond_1
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Brightness boost activated (uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2870
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mLastScreenBrightnessBoostTime:J

    .line 2871
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    if-nez v0, :cond_2

    .line 2872
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    .line 2873
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    invoke-virtual {v0}, Lcom/android/server/power/Notifier;->onScreenBrightnessBoostChanged()V

    .line 2875
    :cond_2
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 2877
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-wide v2, p1

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z

    .line 2879
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 2880
    monitor-exit v7

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private canDozeLocked()Z
    .locals 2

    .prologue
    .line 2071
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private canDreamLocked()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2040
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsSupportedConfig:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledSetting:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isBrightOrDim()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    and-int/lit8 v1, v1, 0x7

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-nez v1, :cond_1

    .line 2064
    :cond_0
    :goto_0
    return v0

    .line 2049
    :cond_1
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isBeingKeptAwakeLocked()Z

    move-result v1

    if-nez v1, :cond_4

    .line 2050
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledOnBatteryConfig:Z

    if-eqz v1, :cond_0

    .line 2053
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-nez v1, :cond_3

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenNotPoweredConfig:I

    if-ltz v1, :cond_3

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenNotPoweredConfig:I

    if-lt v1, v2, :cond_0

    .line 2058
    :cond_3
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenPoweredConfig:I

    if-ltz v1, :cond_4

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenPoweredConfig:I

    if-lt v1, v2, :cond_0

    .line 2064
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private checkWorkSourceObjectId(ILcom/android/server/power/PowerManagerService$WakeLock;)Z
    .locals 4
    .param p1, "uid"    # I
    .param p2, "wl"    # Lcom/android/server/power/PowerManagerService$WakeLock;

    .prologue
    const/4 v2, 0x0

    .line 4079
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    :try_start_0
    iget-object v3, p2, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v3}, Landroid/os/WorkSource;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 4080
    iget-object v3, p2, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v3, v1}, Landroid/os/WorkSource;->get(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne p1, v3, :cond_1

    .line 4082
    const/4 v2, 0x1

    .line 4089
    :cond_0
    :goto_1
    return v2

    .line 4079
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4086
    :catch_0
    move-exception v0

    .line 4087
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_1
.end method

.method private static copyWorkSource(Landroid/os/WorkSource;)Landroid/os/WorkSource;
    .locals 1
    .param p0, "workSource"    # Landroid/os/WorkSource;

    .prologue
    .line 3163
    if-eqz p0, :cond_0

    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p0}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private crashInternal(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 2542
    new-instance v1, Lcom/android/server/power/PowerManagerService$4;

    const-string v2, "PowerManagerService.crash()"

    invoke-direct {v1, p0, v2, p1}, Lcom/android/server/power/PowerManagerService$4;-><init>(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;Ljava/lang/String;)V

    .line 2549
    .local v1, "t":Ljava/lang/Thread;
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 2550
    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2554
    :goto_0
    return-void

    .line 2551
    :catch_0
    move-exception v0

    .line 2552
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v2, "PowerManagerService"

    invoke-static {v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private createSuspendBlockerLocked(Ljava/lang/String;)Lcom/android/server/power/SuspendBlocker;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 3157
    new-instance v0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;

    invoke-direct {v0, p0, p1}, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;-><init>(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)V

    .line 3158
    .local v0, "suspendBlocker":Lcom/android/server/power/SuspendBlocker;
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mSuspendBlockers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3159
    return-object v0
.end method

.method private dumpInternal(Ljava/io/PrintWriter;)V
    .locals 12
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 3009
    const-string v8, "POWER MANAGER (dumpsys power)\n"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3012
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 3013
    :try_start_0
    const-string v8, "Power Manager State:"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3014
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mDirty=0x"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3015
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mWakefulness="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    invoke-static {v10}, Landroid/os/PowerManagerInternal;->wakefulnessToString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3016
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mWakefulnessChanging="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mWakefulnessChanging:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3017
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mIsPowered="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3018
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mPlugType="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3019
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mBatteryLevel="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3020
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mBatteryLevelWhenDreamStarted="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelWhenDreamStarted:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3021
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mDockState="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mDockState:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3022
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mStayOn="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3023
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mProximityPositive="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3024
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mBootCompleted="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3025
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mSystemReady="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3026
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mHalAutoSuspendModeEnabled="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mHalAutoSuspendModeEnabled:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3027
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mHalInteractiveModeEnabled="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mHalInteractiveModeEnabled:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3028
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mWakeLockSummary=0x"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3029
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mUserActivitySummary=0x"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3030
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mRequestWaitForNegativeProximity="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mRequestWaitForNegativeProximity:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3031
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mSandmanScheduled="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mSandmanScheduled:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3032
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mSandmanSummoned="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mSandmanSummoned:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3033
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mLowPowerModeEnabled="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeEnabled:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3034
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mBatteryLevelLow="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelLow:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3035
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mDeviceIdleMode="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3036
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mDeviceIdleWhitelist="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v10, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleWhitelist:[I

    invoke-static {v10}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3037
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mDeviceIdleTempWhitelist="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v10, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleTempWhitelist:[I

    invoke-static {v10}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3038
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mLastWakeTime="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    invoke-static {v10, v11}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3039
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mLastSleepTime="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, p0, Lcom/android/server/power/PowerManagerService;->mLastSleepTime:J

    invoke-static {v10, v11}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3040
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mLastUserActivityTime="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    invoke-static {v10, v11}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3041
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mLastUserActivityTimeNoChangeLights="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTimeNoChangeLights:J

    invoke-static {v10, v11}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3043
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mLastInteractivePowerHintTime="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, p0, Lcom/android/server/power/PowerManagerService;->mLastInteractivePowerHintTime:J

    invoke-static {v10, v11}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3045
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mLastScreenBrightnessBoostTime="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, p0, Lcom/android/server/power/PowerManagerService;->mLastScreenBrightnessBoostTime:J

    invoke-static {v10, v11}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3047
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mScreenBrightnessBoostInProgress="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3049
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mDisplayReady="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3050
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mHoldingWakeLockSuspendBlocker="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mHoldingWakeLockSuspendBlocker:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3051
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mHoldingDisplaySuspendBlocker="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mHoldingDisplaySuspendBlocker:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3053
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3054
    const-string v8, "Settings and Configuration:"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3055
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mDecoupleHalAutoSuspendModeFromDisplayConfig="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalAutoSuspendModeFromDisplayConfig:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3057
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mDecoupleHalInteractiveModeFromDisplayConfig="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalInteractiveModeFromDisplayConfig:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3059
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mWakeUpWhenPluggedOrUnpluggedConfig="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedConfig:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3061
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mWakeUpWhenPluggedOrUnpluggedInTheaterModeConfig="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedInTheaterModeConfig:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3063
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mTheaterModeEnabled="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mTheaterModeEnabled:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3065
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mSuspendWhenScreenOffDueToProximityConfig="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mSuspendWhenScreenOffDueToProximityConfig:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3067
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mDreamsSupportedConfig="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mDreamsSupportedConfig:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3068
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mDreamsEnabledByDefaultConfig="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledByDefaultConfig:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3069
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mDreamsActivatedOnSleepByDefaultConfig="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnSleepByDefaultConfig:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3071
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mDreamsActivatedOnDockByDefaultConfig="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnDockByDefaultConfig:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3073
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mDreamsEnabledOnBatteryConfig="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledOnBatteryConfig:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3075
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mDreamsBatteryLevelMinimumWhenPoweredConfig="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenPoweredConfig:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3077
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mDreamsBatteryLevelMinimumWhenNotPoweredConfig="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenNotPoweredConfig:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3079
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mDreamsBatteryLevelDrainCutoffConfig="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelDrainCutoffConfig:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3081
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mDreamsEnabledSetting="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledSetting:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3082
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mDreamsActivateOnSleepSetting="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnSleepSetting:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3083
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mDreamsActivateOnDockSetting="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnDockSetting:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3084
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mDozeAfterScreenOffConfig="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mDozeAfterScreenOffConfig:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3085
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mLowPowerModeSetting="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeSetting:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3086
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mAutoLowPowerModeConfigured="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mAutoLowPowerModeConfigured:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3087
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mAutoLowPowerModeSnoozing="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mAutoLowPowerModeSnoozing:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3088
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mMinimumScreenOffTimeoutConfig="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mMinimumScreenOffTimeoutConfig:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3089
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mMaximumScreenDimDurationConfig="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenDimDurationConfig:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3090
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mMaximumScreenDimRatioConfig="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenDimRatioConfig:F

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3091
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mScreenOffTimeoutSetting="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffTimeoutSetting:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3092
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mSleepTimeoutSetting="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mSleepTimeoutSetting:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3093
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mMaximumScreenOffTimeoutFromDeviceAdmin="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenOffTimeoutFromDeviceAdmin:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " (enforced="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isMaximumScreenOffTimeoutFromDeviceAdminEnforcedLocked()Z

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ")"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3096
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mStayOnWhilePluggedInSetting="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mStayOnWhilePluggedInSetting:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3097
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mScreenBrightnessSetting="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSetting:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3098
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mScreenAutoBrightnessAdjustmentSetting="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mScreenAutoBrightnessAdjustmentSetting:F

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3100
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mScreenBrightnessModeSetting="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessModeSetting:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3101
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mScreenBrightnessOverrideFromWindowManager="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessOverrideFromWindowManager:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3103
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mUserActivityTimeoutOverrideFromWindowManager="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutOverrideFromWindowManager:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3105
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mTemporaryScreenBrightnessSettingOverride="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenBrightnessSettingOverride:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3107
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mTemporaryScreenAutoBrightnessAdjustmentSettingOverride="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenAutoBrightnessAdjustmentSettingOverride:F

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3109
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mDozeScreenStateOverrideFromDreamManager="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenStateOverrideFromDreamManager:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3111
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mDozeScreenBrightnessOverrideFromDreamManager="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenBrightnessOverrideFromDreamManager:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3113
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mScreenBrightnessSettingMinimum="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingMinimum:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3114
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mScreenBrightnessSettingMaximum="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingMaximum:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3115
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mScreenBrightnessSettingDefault="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingDefault:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3116
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mDoubleTapWakeEnabled="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mDoubleTapWakeEnabled:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3118
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->getSleepTimeoutLocked()I

    move-result v5

    .line 3119
    .local v5, "sleepTimeout":I
    invoke-direct {p0, v5}, Lcom/android/server/power/PowerManagerService;->getScreenOffTimeoutLocked(I)I

    move-result v4

    .line 3120
    .local v4, "screenOffTimeout":I
    invoke-direct {p0, v4}, Lcom/android/server/power/PowerManagerService;->getScreenDimDurationLocked(I)I

    move-result v3

    .line 3121
    .local v3, "screenDimDuration":I
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3122
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Sleep timeout: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " ms"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3123
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Screen off timeout: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " ms"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3124
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Screen dim duration: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " ms"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3126
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3127
    const-string v8, "UID states:"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3128
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v8, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v8}, Landroid/util/SparseIntArray;->size()I

    move-result v8

    if-ge v0, v8, :cond_0

    .line 3129
    const-string v8, "  UID "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    invoke-static {p1, v8}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 3130
    const-string v8, ": "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(I)V

    .line 3128
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3133
    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3134
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Wake Locks: size="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v10, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3135
    iget-object v8, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 3136
    .local v7, "wl":Lcom/android/server/power/PowerManagerService$WakeLock;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 3149
    .end local v0    # "i":I
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "screenDimDuration":I
    .end local v4    # "screenOffTimeout":I
    .end local v5    # "sleepTimeout":I
    .end local v7    # "wl":Lcom/android/server/power/PowerManagerService$WakeLock;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 3139
    .restart local v0    # "i":I
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "screenDimDuration":I
    .restart local v4    # "screenOffTimeout":I
    .restart local v5    # "sleepTimeout":I
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3140
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Suspend Blockers: size="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v10, p0, Lcom/android/server/power/PowerManagerService;->mSuspendBlockers:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3141
    iget-object v8, p0, Lcom/android/server/power/PowerManagerService;->mSuspendBlockers:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/SuspendBlocker;

    .line 3142
    .local v2, "sb":Lcom/android/server/power/SuspendBlocker;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 3145
    .end local v2    # "sb":Lcom/android/server/power/SuspendBlocker;
    :cond_2
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3146
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Display Power: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v10, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3148
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mWirelessChargerDetector:Lcom/android/server/power/WirelessChargerDetector;

    .line 3149
    .local v6, "wcd":Lcom/android/server/power/WirelessChargerDetector;
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3151
    if-eqz v6, :cond_3

    .line 3152
    invoke-virtual {v6, p1}, Lcom/android/server/power/WirelessChargerDetector;->dump(Ljava/io/PrintWriter;)V

    .line 3154
    :cond_3
    return-void
.end method

.method private findWakeLockIndexLocked(Landroid/os/IBinder;)I
    .locals 3
    .param p1, "lock"    # Landroid/os/IBinder;

    .prologue
    .line 1051
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1052
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1053
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/PowerManagerService$WakeLock;

    iget-object v2, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mLock:Landroid/os/IBinder;

    if-ne v2, p1, :cond_0

    .line 1057
    .end local v1    # "i":I
    :goto_1
    return v1

    .line 1052
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1057
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private finishWakefulnessChangeIfNeededLocked()V
    .locals 12

    .prologue
    const/4 v11, 0x5

    const/4 v4, 0x1

    const/4 v10, 0x4

    const/4 v5, 0x0

    .line 1384
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    invoke-static {v1}, Landroid/os/PowerManagerInternal;->isInteractive(I)Z

    move-result v0

    .line 1385
    .local v0, "interactive":Z
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mButtonsLight:Lcom/android/server/lights/Light;

    if-eqz v1, :cond_1

    .line 1386
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 1387
    .local v2, "now":J
    iget-wide v6, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    sub-long v6, v2, v6

    sget-boolean v1, Lcom/android/server/power/PowerManagerService;->IS_H2_OS:Z

    if-eqz v1, :cond_4

    const/16 v1, 0x1770

    :goto_0
    int-to-long v8, v1

    cmp-long v1, v6, v8

    if-lez v1, :cond_5

    .line 1388
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mButtonsLight:Lcom/android/server/lights/Light;

    invoke-virtual {v1, v5}, Lcom/android/server/lights/Light;->setBrightness(I)V

    .line 1389
    sput-boolean v5, Lcom/android/server/power/PowerManagerService;->mButtonChangeState:Z

    .line 1396
    :cond_0
    :goto_1
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    if-eqz v1, :cond_1

    .line 1397
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mButtonsLight:Lcom/android/server/lights/Light;

    invoke-virtual {v1, v5}, Lcom/android/server/lights/Light;->setBrightness(I)V

    .line 1398
    sput-boolean v5, Lcom/android/server/power/PowerManagerService;->mButtonChangeState:Z

    .line 1404
    .end local v2    # "now":J
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mWakefulnessChanging:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    if-eqz v1, :cond_3

    .line 1407
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mButtonsLight:Lcom/android/server/lights/Light;

    if-eqz v1, :cond_2

    .line 1408
    sget-boolean v1, Lcom/android/server/power/PowerManagerService;->mButtonChangeState:Z

    if-nez v1, :cond_2

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    .line 1410
    sget-boolean v1, Lcom/android/server/power/PowerManagerService;->IS_H2_OS:Z

    if-eqz v1, :cond_8

    sget v1, Lcom/android/server/power/PowerManagerService;->mKeyMode:I

    if-eq v1, v10, :cond_2

    .line 1411
    :goto_2
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mButtonsLight:Lcom/android/server/lights/Light;

    iget v6, p0, Lcom/android/server/power/PowerManagerService;->mButtonBrightness:I

    invoke-virtual {v1, v6}, Lcom/android/server/lights/Light;->setBrightness(I)V

    .line 1412
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mButtonBrightness:I

    if-eqz v1, :cond_9

    :goto_3
    sput-boolean v4, Lcom/android/server/power/PowerManagerService;->mButtonChangeState:Z

    .line 1419
    :cond_2
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v4, 0x3

    if-ne v1, v4, :cond_a

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v1, v1, 0x40

    if-nez v1, :cond_a

    .line 1426
    :cond_3
    :goto_4
    return-void

    .line 1387
    .restart local v2    # "now":J
    :cond_4
    const/16 v1, 0x1388

    goto :goto_0

    .line 1390
    :cond_5
    sget-boolean v1, Lcom/android/server/power/PowerManagerService;->mButtonChangeState:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    if-nez v1, :cond_0

    .line 1391
    sget-boolean v1, Lcom/android/server/power/PowerManagerService;->IS_H2_OS:Z

    if-eqz v1, :cond_6

    sget v1, Lcom/android/server/power/PowerManagerService;->mKeyMode:I

    if-eq v1, v10, :cond_0

    .line 1392
    :goto_5
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mButtonsLight:Lcom/android/server/lights/Light;

    iget v6, p0, Lcom/android/server/power/PowerManagerService;->mButtonBrightness:I

    invoke-virtual {v1, v6}, Lcom/android/server/lights/Light;->setBrightness(I)V

    .line 1393
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mButtonBrightness:I

    if-eqz v1, :cond_7

    move v1, v4

    :goto_6
    sput-boolean v1, Lcom/android/server/power/PowerManagerService;->mButtonChangeState:Z

    goto :goto_1

    .line 1391
    :cond_6
    sget v1, Lcom/android/server/power/PowerManagerService;->mKeyMode:I

    if-eq v1, v10, :cond_0

    sget v1, Lcom/android/server/power/PowerManagerService;->mKeyMode:I

    if-eq v1, v11, :cond_0

    goto :goto_5

    :cond_7
    move v1, v5

    .line 1393
    goto :goto_6

    .line 1410
    .end local v2    # "now":J
    :cond_8
    sget v1, Lcom/android/server/power/PowerManagerService;->mKeyMode:I

    if-eq v1, v10, :cond_2

    sget v1, Lcom/android/server/power/PowerManagerService;->mKeyMode:I

    if-eq v1, v11, :cond_2

    goto :goto_2

    :cond_9
    move v4, v5

    .line 1412
    goto :goto_3

    .line 1423
    :cond_a
    iput-boolean v5, p0, Lcom/android/server/power/PowerManagerService;->mWakefulnessChanging:Z

    .line 1424
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    invoke-virtual {v1}, Lcom/android/server/power/Notifier;->onWakefulnessChangeFinished()V

    goto :goto_4
.end method

.method private forceStopPackageName(I)Z
    .locals 6
    .param p1, "uid"    # I

    .prologue
    .line 2804
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mActivityManager:Landroid/app/ActivityManager;

    if-nez v2, :cond_0

    .line 2805
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    iput-object v2, p0, Lcom/android/server/power/PowerManagerService;->mActivityManager:Landroid/app/ActivityManager;

    .line 2808
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v1

    .line 2809
    .local v1, "packageName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mActivityManager:Landroid/app/ActivityManager;

    if-eqz v2, :cond_1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "com.gaana"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2810
    const-string v2, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " forceStopPackageName  packageName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for audio"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2811
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2812
    .local v0, "msg":Landroid/os/Message;
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2813
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 2814
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v0, v4, v5}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2816
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private getActiveAudioUids()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 2648
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mAudioManager:Landroid/media/AudioManager;

    if-nez v1, :cond_0

    .line 2649
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/server/power/PowerManagerService;->mAudioManager:Landroid/media/AudioManager;

    .line 2655
    :cond_0
    const-string v0, ""

    .line 2656
    .local v0, "uids":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v1, :cond_1

    .line 2658
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mAudioManager:Landroid/media/AudioManager;

    const-string v2, "get_uid"

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2664
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/server/power/PowerManagerService;->parseActiveAudioUidsStr(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2661
    :cond_1
    const-string v0, ":0"

    goto :goto_0
.end method

.method private getDesiredScreenPolicyLocked()I
    .locals 3

    .prologue
    const/4 v1, 0x3

    const/4 v0, 0x0

    .line 2209
    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-nez v2, :cond_1

    .line 2231
    :cond_0
    :goto_0
    return v0

    .line 2213
    :cond_1
    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-ne v2, v1, :cond_3

    .line 2214
    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_2

    .line 2215
    const/4 v0, 0x1

    goto :goto_0

    .line 2217
    :cond_2
    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDozeAfterScreenOffConfig:Z

    if-nez v2, :cond_0

    .line 2224
    :cond_3
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_4

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    if-eqz v0, :cond_5

    :cond_4
    move v0, v1

    .line 2228
    goto :goto_0

    .line 2231
    :cond_5
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private getPackageNameForUid(I)Ljava/lang/String;
    .locals 7
    .param p1, "uid"    # I

    .prologue
    .line 2822
    sget-object v4, Lcom/android/server/power/PowerManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    if-nez v4, :cond_0

    .line 2823
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    sput-object v4, Lcom/android/server/power/PowerManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 2825
    :cond_0
    sget-object v4, Lcom/android/server/power/PowerManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    if-eqz v4, :cond_2

    .line 2826
    sget-object v4, Lcom/android/server/power/PowerManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    .line 2827
    .local v3, "packages":[Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 2828
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v3

    if-ge v2, v4, :cond_2

    .line 2830
    :try_start_0
    sget-object v4, Lcom/android/server/power/PowerManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    aget-object v5, v3, v2

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 2831
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_1

    iget v4, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_1

    .line 2832
    aget-object v4, v3, v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2840
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "i":I
    .end local v3    # "packages":[Ljava/lang/String;
    :goto_1
    return-object v4

    .line 2834
    .restart local v2    # "i":I
    .restart local v3    # "packages":[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 2835
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, ""

    goto :goto_1

    .line 2828
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2840
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "i":I
    .end local v3    # "packages":[Ljava/lang/String;
    :cond_2
    const-string v4, ""

    goto :goto_1
.end method

.method private getScreenDimDurationLocked(I)I
    .locals 3
    .param p1, "screenOffTimeout"    # I

    .prologue
    .line 1831
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenDimDurationConfig:I

    int-to-float v1, p1

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenDimRatioConfig:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private getScreenOffTimeoutLocked(I)I
    .locals 6
    .param p1, "sleepTimeout"    # I

    .prologue
    .line 1817
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffTimeoutSetting:I

    .line 1818
    .local v0, "timeout":I
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isMaximumScreenOffTimeoutFromDeviceAdminEnforcedLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1819
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenOffTimeoutFromDeviceAdmin:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1821
    :cond_0
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutOverrideFromWindowManager:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-ltz v1, :cond_1

    .line 1822
    int-to-long v2, v0

    iget-wide v4, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutOverrideFromWindowManager:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v0, v2

    .line 1824
    :cond_1
    if-ltz p1, :cond_2

    .line 1825
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1827
    :cond_2
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mMinimumScreenOffTimeoutConfig:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1
.end method

.method private getSleepTimeoutLocked()I
    .locals 2

    .prologue
    .line 1809
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mSleepTimeoutSetting:I

    .line 1810
    .local v0, "timeout":I
    if-gtz v0, :cond_0

    .line 1811
    const/4 v1, -0x1

    .line 1813
    :goto_0
    return v1

    :cond_0
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mMinimumScreenOffTimeoutConfig:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_0
.end method

.method private goToSleepInternal(JIII)V
    .locals 3
    .param p1, "eventTime"    # J
    .param p3, "reason"    # I
    .param p4, "flags"    # I
    .param p5, "uid"    # I

    .prologue
    .line 1215
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1216
    :try_start_0
    invoke-direct/range {p0 .. p5}, Lcom/android/server/power/PowerManagerService;->goToSleepNoUpdateLocked(JIII)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1219
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mButtonsLight:Lcom/android/server/lights/Light;

    if-eqz v0, :cond_0

    .line 1220
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mButtonsLight:Lcom/android/server/lights/Light;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/lights/Light;->setBrightness(I)V

    .line 1221
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/power/PowerManagerService;->mButtonChangeState:Z

    .line 1225
    :cond_0
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 1227
    :cond_1
    monitor-exit v1

    .line 1228
    return-void

    .line 1227
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private goToSleepNoUpdateLocked(JIII)Z
    .locals 9
    .param p1, "eventTime"    # J
    .param p3, "reason"    # I
    .param p4, "flags"    # I
    .param p5, "uid"    # I

    .prologue
    .line 1239
    iget-wide v4, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    cmp-long v4, p1, v4

    if-ltz v4, :cond_0

    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-nez v4, :cond_1

    .line 1243
    :cond_0
    const/4 v4, 0x0

    .line 1316
    :goto_0
    return v4

    .line 1246
    :cond_1
    const-wide/32 v4, 0x20000

    const-string v6, "goToSleep"

    invoke-static {v4, v5, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1248
    packed-switch p3, :pswitch_data_0

    .line 1274
    :try_start_0
    const-string v4, "PowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Going to sleep by application request (uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1275
    const/4 p3, 0x0

    .line 1279
    :goto_1
    const/4 v4, 0x4

    if-ne p3, v4, :cond_2

    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    if-eqz v4, :cond_2

    .line 1281
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mButtonsLight:Lcom/android/server/lights/Light;

    if-eqz v4, :cond_2

    .line 1282
    sget v4, Lcom/android/server/power/PowerManagerService;->mKeyMode:I

    const/4 v5, 0x4

    if-eq v4, v5, :cond_2

    .line 1283
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mButtonsLight:Lcom/android/server/lights/Light;

    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mButtonBrightness:I

    invoke-virtual {v4, v5}, Lcom/android/server/lights/Light;->setBrightness(I)V

    .line 1284
    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mButtonBrightness:I

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    :goto_2
    sput-boolean v4, Lcom/android/server/power/PowerManagerService;->mButtonChangeState:Z

    .line 1290
    :cond_2
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mLastSleepTime:J

    .line 1291
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mSandmanSummoned:Z

    .line 1292
    const/4 v4, 0x3

    invoke-direct {p0, v4, p3}, Lcom/android/server/power/PowerManagerService;->setWakefulnessLocked(II)V

    .line 1295
    const/4 v2, 0x0

    .line 1296
    .local v2, "numWakeLocksCleared":I
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1297
    .local v1, "numWakeLocks":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    if-ge v0, v1, :cond_4

    .line 1298
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 1299
    .local v3, "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    iget v4, v3, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v5, 0xffff

    and-int/2addr v4, v5

    sparse-switch v4, :sswitch_data_0

    .line 1297
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1250
    .end local v0    # "i":I
    .end local v1    # "numWakeLocks":I
    .end local v2    # "numWakeLocksCleared":I
    .end local v3    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    :pswitch_0
    const-string v4, "PowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Going to sleep due to device administration policy (uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1314
    :catchall_0
    move-exception v4

    const-wide/32 v6, 0x20000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    throw v4

    .line 1254
    :pswitch_1
    :try_start_1
    const-string v4, "PowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Going to sleep due to screen timeout (uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1257
    :pswitch_2
    const-string v4, "PowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Going to sleep due to lid switch (uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1260
    :pswitch_3
    const-string v4, "PowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Going to sleep due to power button (uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1263
    :pswitch_4
    const-string v4, "PowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Going to sleep due to sleep button (uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1266
    :pswitch_5
    const-string v4, "PowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Going to sleep due to HDMI standby (uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1270
    :pswitch_6
    const-string v4, "PowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Going to sleep due to proximity (uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1284
    :cond_3
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 1303
    .restart local v0    # "i":I
    .restart local v1    # "numWakeLocks":I
    .restart local v2    # "numWakeLocksCleared":I
    .restart local v3    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    :sswitch_0
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_4

    .line 1307
    .end local v3    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    :cond_4
    const/16 v4, 0xaa4

    invoke-static {v4, v2}, Landroid/util/EventLog;->writeEvent(II)I

    .line 1310
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_5

    .line 1311
    invoke-direct {p0, p1, p2, p5}, Lcom/android/server/power/PowerManagerService;->reallyGoToSleepNoUpdateLocked(JI)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1314
    :cond_5
    const-wide/32 v4, 0x20000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1316
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1248
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_6
    .end packed-switch

    .line 1299
    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
        0xa -> :sswitch_0
        0x1a -> :sswitch_0
    .end sparse-switch
.end method

.method private handleBatteryStateChangedLocked()V
    .locals 1

    .prologue
    .line 2500
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 2501
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 2502
    return-void
.end method

.method private handleSandman()V
    .locals 12

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v4, 0x3

    const/4 v10, 0x0

    .line 1945
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1946
    const/4 v3, 0x0

    :try_start_0
    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mSandmanScheduled:Z

    .line 1947
    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    .line 1948
    .local v9, "wakefulness":I
    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mSandmanSummoned:Z

    if-eqz v3, :cond_6

    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    if-eqz v3, :cond_6

    .line 1949
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->canDreamLocked()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->canDozeLocked()Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_0
    move v8, v1

    .line 1950
    .local v8, "startDreaming":Z
    :goto_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mSandmanSummoned:Z

    .line 1954
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1960
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mDreamManager:Landroid/service/dreams/DreamManagerInternal;

    if-eqz v2, :cond_8

    .line 1962
    if-eqz v8, :cond_1

    .line 1963
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mDreamManager:Landroid/service/dreams/DreamManagerInternal;

    invoke-virtual {v2, v10}, Landroid/service/dreams/DreamManagerInternal;->stopDream(Z)V

    .line 1964
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mDreamManager:Landroid/service/dreams/DreamManagerInternal;

    if-ne v9, v4, :cond_7

    :goto_2
    invoke-virtual {v2, v1}, Landroid/service/dreams/DreamManagerInternal;->startDream(Z)V

    .line 1966
    :cond_1
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamManager:Landroid/service/dreams/DreamManagerInternal;

    invoke-virtual {v1}, Landroid/service/dreams/DreamManagerInternal;->isDreaming()Z

    move-result v0

    .line 1972
    .local v0, "isDreaming":Z
    :goto_3
    iget-object v11, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 1974
    if-eqz v8, :cond_2

    if-eqz v0, :cond_2

    .line 1975
    :try_start_1
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelWhenDreamStarted:I

    .line 1976
    if-ne v9, v4, :cond_9

    .line 1977
    const-string v1, "PowerManagerService"

    const-string v2, "Dozing..."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1985
    :cond_2
    :goto_4
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSandmanSummoned:Z

    if-nez v1, :cond_3

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-eq v1, v9, :cond_a

    .line 1986
    :cond_3
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2034
    :cond_4
    :goto_5
    return-void

    .end local v0    # "isDreaming":Z
    .end local v8    # "startDreaming":Z
    :cond_5
    move v8, v10

    .line 1949
    goto :goto_0

    .line 1952
    :cond_6
    const/4 v8, 0x0

    .restart local v8    # "startDreaming":Z
    goto :goto_1

    .line 1954
    .end local v8    # "startDreaming":Z
    .end local v9    # "wakefulness":I
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .restart local v8    # "startDreaming":Z
    .restart local v9    # "wakefulness":I
    :cond_7
    move v1, v10

    .line 1964
    goto :goto_2

    .line 1968
    :cond_8
    const/4 v0, 0x0

    .restart local v0    # "isDreaming":Z
    goto :goto_3

    .line 1979
    :cond_9
    :try_start_3
    const-string v1, "PowerManagerService"

    const-string v2, "Dreaming..."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 2028
    :catchall_1
    move-exception v1

    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    .line 1990
    :cond_a
    if-ne v9, v5, :cond_f

    .line 1991
    if-eqz v0, :cond_b

    :try_start_4
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->canDreamLocked()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1992
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelDrainCutoffConfig:I

    if-ltz v1, :cond_d

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelWhenDreamStarted:I

    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelDrainCutoffConfig:I

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_d

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isBeingKeptAwakeLocked()Z

    move-result v1

    if-nez v1, :cond_d

    .line 1999
    const-string v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stopping dream because the battery appears to be draining faster than it is charging.  Battery level when dream started: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelWhenDreamStarted:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%.  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Battery level now: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2010
    :cond_b
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isItBedTimeYetLocked()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 2011
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/16 v6, 0x3e8

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->goToSleepNoUpdateLocked(JIII)Z

    .line 2013
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 2028
    :cond_c
    :goto_6
    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2031
    if-eqz v0, :cond_4

    .line 2032
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamManager:Landroid/service/dreams/DreamManagerInternal;

    invoke-virtual {v1, v10}, Landroid/service/dreams/DreamManagerInternal;->stopDream(Z)V

    goto/16 :goto_5

    .line 2005
    :cond_d
    :try_start_5
    monitor-exit v11

    goto/16 :goto_5

    .line 2015
    :cond_e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-string v4, "android.server.power:DREAM"

    const/16 v5, 0x3e8

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x3e8

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/power/PowerManagerService;->wakeUpNoUpdateLocked(JLjava/lang/String;ILjava/lang/String;I)Z

    .line 2017
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    goto :goto_6

    .line 2019
    :cond_f
    if-ne v9, v4, :cond_c

    .line 2020
    if-eqz v0, :cond_10

    .line 2021
    monitor-exit v11

    goto/16 :goto_5

    .line 2025
    :cond_10
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/16 v1, 0x3e8

    invoke-direct {p0, v2, v3, v1}, Lcom/android/server/power/PowerManagerService;->reallyGoToSleepNoUpdateLocked(JI)Z

    .line 2026
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_6
.end method

.method private handleScreenBrightnessBoostTimeout()V
    .locals 2

    .prologue
    .line 2896
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2901
    :try_start_0
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 2902
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 2903
    monitor-exit v1

    .line 2904
    return-void

    .line 2903
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleSettingsChangedLocked()V
    .locals 0

    .prologue
    .line 858
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateSettingsLocked()V

    .line 859
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 860
    return-void
.end method

.method private handleUserActivityTimeout()V
    .locals 2

    .prologue
    .line 1798
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1803
    :try_start_0
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 1804
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 1805
    monitor-exit v1

    .line 1806
    return-void

    .line 1805
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleWakeLockDeath(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .locals 3
    .param p1, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;

    .prologue
    .line 987
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 993
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 994
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 995
    monitor-exit v2

    .line 1000
    :goto_0
    return-void

    .line 998
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/android/server/power/PowerManagerService;->removeWakeLockLocked(Lcom/android/server/power/PowerManagerService$WakeLock;I)V

    .line 999
    monitor-exit v2

    goto :goto_0

    .end local v0    # "index":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isBeingKeptAwakeLocked()Z
    .locals 1

    .prologue
    .line 1893
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->useProximityForceSuspend:Z

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    and-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDeviceIdleModeInternal()Z
    .locals 2

    .prologue
    .line 2494
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2495
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    monitor-exit v1

    return v0

    .line 2496
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isInteractiveInternal()Z
    .locals 2

    .prologue
    .line 2453
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2454
    :try_start_0
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    invoke-static {v0}, Landroid/os/PowerManagerInternal;->isInteractive(I)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 2455
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isItBedTimeYetLocked()Z
    .locals 1

    .prologue
    .line 1881
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isBeingKeptAwakeLocked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLowPowerModeInternal()Z
    .locals 2

    .prologue
    .line 2459
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2460
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeEnabled:Z

    monitor-exit v1

    return v0

    .line 2461
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isMaximumScreenOffTimeoutFromDeviceAdminEnforcedLocked()Z
    .locals 2

    .prologue
    .line 2845
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenOffTimeoutFromDeviceAdmin:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenOffTimeoutFromDeviceAdmin:I

    const v1, 0x7fffffff

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isScreenBrightnessBoostedInternal()Z
    .locals 2

    .prologue
    .line 2884
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2885
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    monitor-exit v1

    return v0

    .line 2886
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static isScreenLock(Lcom/android/server/power/PowerManagerService$WakeLock;)Z
    .locals 2
    .param p0, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;

    .prologue
    .line 920
    iget v0, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v1, 0xffff

    and-int/2addr v0, v1

    sparse-switch v0, :sswitch_data_0

    .line 926
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 924
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 920
    nop

    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
        0xa -> :sswitch_0
        0x1a -> :sswitch_0
    .end sparse-switch
.end method

.method private static isValidAutoBrightnessAdjustment(F)Z
    .locals 1
    .param p0, "value"    # F

    .prologue
    .line 2205
    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isValidBrightness(I)Z
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 2200
    if-ltz p0, :cond_0

    const/16 v0, 0xff

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isWakeLockLevelSupportedInternal(I)Z
    .locals 4
    .param p1, "level"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1089
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1090
    sparse-switch p1, :sswitch_data_0

    .line 1103
    :try_start_0
    monitor-exit v2

    move v0, v1

    :goto_0
    return v0

    .line 1097
    :sswitch_0
    monitor-exit v2

    goto :goto_0

    .line 1105
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1100
    :sswitch_1
    :try_start_1
    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v3}, Landroid/hardware/display/DisplayManagerInternal;->isProximitySensorAvailable()Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    .line 1090
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x6 -> :sswitch_0
        0xa -> :sswitch_0
        0x1a -> :sswitch_0
        0x20 -> :sswitch_1
        0x40 -> :sswitch_0
        0x80 -> :sswitch_0
    .end sparse-switch
.end method

.method public static lowLevelReboot(Ljava/lang/String;)V
    .locals 4
    .param p0, "reason"    # Ljava/lang/String;

    .prologue
    .line 2981
    if-nez p0, :cond_0

    .line 2982
    const-string p0, ""

    .line 2984
    :cond_0
    const-string v1, "recovery"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2989
    const-string v1, "ctl.start"

    const-string v2, "pre-recovery"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2994
    :goto_0
    const-wide/16 v2, 0x4e20

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2998
    :goto_1
    const-string v1, "PowerManagerService"

    const-string v2, "Unexpected return from lowLevelReboot!"

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2999
    return-void

    .line 2991
    :cond_1
    const-string v1, "sys.powerctl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reboot,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2995
    :catch_0
    move-exception v0

    .line 2996
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1
.end method

.method public static lowLevelShutdown()V
    .locals 2

    .prologue
    .line 2970
    const-string v0, "sys.powerctl"

    const-string v1, "shutdown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2971
    return-void
.end method

.method private napInternal(JI)V
    .locals 3
    .param p1, "eventTime"    # J
    .param p3, "uid"    # I

    .prologue
    .line 1320
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1321
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/PowerManagerService;->napNoUpdateLocked(JI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1322
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 1324
    :cond_0
    monitor-exit v1

    .line 1325
    return-void

    .line 1324
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private napNoUpdateLocked(JI)Z
    .locals 7
    .param p1, "eventTime"    # J
    .param p3, "uid"    # I

    .prologue
    const/4 v1, 0x0

    const-wide/32 v4, 0x20000

    const/4 v0, 0x1

    .line 1332
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    cmp-long v2, p1, v2

    if-ltz v2, :cond_0

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-ne v2, v0, :cond_0

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    .line 1346
    :goto_0
    return v0

    .line 1337
    :cond_1
    const-string v1, "nap"

    invoke-static {v4, v5, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1339
    :try_start_0
    const-string v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Nap time (uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1341
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSandmanSummoned:Z

    .line 1342
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/server/power/PowerManagerService;->setWakefulnessLocked(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1344
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private static native nativeAcquireSuspendBlocker(Ljava/lang/String;)V
.end method

.method private native nativeInit()V
.end method

.method private static native nativeReleaseSuspendBlocker(Ljava/lang/String;)V
.end method

.method private static native nativeSendPowerHint(II)V
.end method

.method private static native nativeSetAutoSuspend(Z)V
.end method

.method private static native nativeSetFeature(II)V
.end method

.method private static native nativeSetInteractive(Z)V
.end method

.method private needDisplaySuspendBlockerLocked()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2402
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    if-nez v1, :cond_1

    .line 2419
    :cond_0
    :goto_0
    return v0

    .line 2405
    :cond_1
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isBrightOrDim()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2410
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v1, v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useProximitySensor:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSuspendWhenScreenOffDueToProximityConfig:Z

    if-eqz v1, :cond_0

    .line 2415
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    if-nez v1, :cond_0

    .line 2419
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyWakeLockAcquiredLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .locals 8
    .param p1, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;

    .prologue
    .line 1061
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    if-nez v0, :cond_0

    .line 1062
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedAcquired:Z

    .line 1063
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    iget v1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    iget-object v2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    iget v4, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    iget v5, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    iget-object v6, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    iget-object v7, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mHistoryTag:Ljava/lang/String;

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/power/Notifier;->onWakeLockAcquired(ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V

    .line 1067
    :cond_0
    return-void
.end method

.method private notifyWakeLockChangingLocked(Lcom/android/server/power/PowerManagerService$WakeLock;ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V
    .locals 16
    .param p1, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;
    .param p2, "flags"    # I
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "uid"    # I
    .param p6, "pid"    # I
    .param p7, "ws"    # Landroid/os/WorkSource;
    .param p8, "historyTag"    # Ljava/lang/String;

    .prologue
    .line 1071
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v1, :cond_0

    move-object/from16 v0, p1

    iget-boolean v1, v0, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedAcquired:Z

    if-eqz v1, :cond_0

    .line 1072
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/power/PowerManagerService$WakeLock;->mHistoryTag:Ljava/lang/String;

    move/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move/from16 v12, p5

    move/from16 v13, p6

    move-object/from16 v14, p7

    move-object/from16 v15, p8

    invoke-virtual/range {v1 .. v15}, Lcom/android/server/power/Notifier;->onWakeLockChanging(ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V

    .line 1076
    :cond_0
    return-void
.end method

.method private notifyWakeLockReleasedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .locals 8
    .param p1, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;

    .prologue
    .line 1079
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedAcquired:Z

    if-eqz v0, :cond_0

    .line 1080
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedAcquired:Z

    .line 1081
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    iget v1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    iget-object v2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    iget v4, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    iget v5, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    iget-object v6, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    iget-object v7, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mHistoryTag:Ljava/lang/String;

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/power/Notifier;->onWakeLockReleased(ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V

    .line 1085
    :cond_0
    return-void
.end method

.method private parseActiveAudioUidsStr(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p1, "uids"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 2671
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 2678
    :cond_0
    :goto_0
    return-object v0

    .line 2674
    :cond_1
    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2677
    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2678
    .local v0, "arrayUid":[Ljava/lang/String;
    goto :goto_0
.end method

.method private powerHintInternal(II)V
    .locals 0
    .param p1, "hintId"    # I
    .param p2, "data"    # I

    .prologue
    .line 2962
    invoke-static {p1, p2}, Lcom/android/server/power/PowerManagerService;->nativeSendPowerHint(II)V

    .line 2963
    return-void
.end method

.method private readConfigurationLocked()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 684
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 686
    .local v0, "resources":Landroid/content/res/Resources;
    const v1, 0x1120070

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalAutoSuspendModeFromDisplayConfig:Z

    .line 688
    const v1, 0x1120071

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalInteractiveModeFromDisplayConfig:Z

    .line 690
    const v1, 0x1120028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedConfig:Z

    .line 692
    const v1, 0x112002c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedInTheaterModeConfig:Z

    .line 694
    const v1, 0x112003f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSuspendWhenScreenOffDueToProximityConfig:Z

    .line 696
    const v1, 0x112006a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsSupportedConfig:Z

    .line 698
    const v1, 0x112006b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledByDefaultConfig:Z

    .line 700
    const v1, 0x112006d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnSleepByDefaultConfig:Z

    .line 702
    const v1, 0x112006c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnDockByDefaultConfig:Z

    .line 704
    const v1, 0x112006e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledOnBatteryConfig:Z

    .line 706
    const v1, 0x10e0089

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenPoweredConfig:I

    .line 708
    const v1, 0x10e008a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenNotPoweredConfig:I

    .line 710
    const v1, 0x10e008b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelDrainCutoffConfig:I

    .line 712
    const v1, 0x112006f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDozeAfterScreenOffConfig:Z

    .line 714
    const v1, 0x10e008c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mMinimumScreenOffTimeoutConfig:I

    .line 716
    const v1, 0x10e008d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenDimDurationConfig:I

    .line 718
    const v1, 0x1130002

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v1

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenDimRatioConfig:F

    .line 720
    const v1, 0x11200a1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSupportsDoubleTapWakeConfig:Z

    .line 722
    return-void
.end method

.method private reallyGoToSleepNoUpdateLocked(JI)Z
    .locals 7
    .param p1, "eventTime"    # J
    .param p3, "uid"    # I

    .prologue
    const/4 v0, 0x0

    const-wide/32 v4, 0x20000

    .line 1356
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    cmp-long v1, p1, v2

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-nez v1, :cond_1

    .line 1369
    :cond_0
    :goto_0
    return v0

    .line 1361
    :cond_1
    const-string v0, "reallyGoToSleep"

    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1363
    :try_start_0
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sleeping (uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1365
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/server/power/PowerManagerService;->setWakefulnessLocked(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1367
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1369
    const/4 v0, 0x1

    goto :goto_0

    .line 1367
    :catchall_0
    move-exception v0

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private releaseWakeLockInternal(Landroid/os/IBinder;I)V
    .locals 5
    .param p1, "lock"    # Landroid/os/IBinder;
    .param p2, "flags"    # I

    .prologue
    .line 961
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 962
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->findWakeLockIndexLocked(Landroid/os/IBinder;)I

    move-result v0

    .line 963
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 968
    monitor-exit v3

    .line 984
    :goto_0
    return-void

    .line 971
    :cond_0
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 977
    .local v1, "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    and-int/lit8 v2, p2, 0x1

    if-eqz v2, :cond_1

    .line 978
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mRequestWaitForNegativeProximity:Z

    .line 981
    :cond_1
    iget-object v2, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mLock:Landroid/os/IBinder;

    const/4 v4, 0x0

    invoke-interface {v2, v1, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 982
    invoke-direct {p0, v1, v0}, Lcom/android/server/power/PowerManagerService;->removeWakeLockLocked(Lcom/android/server/power/PowerManagerService$WakeLock;I)V

    .line 983
    monitor-exit v3

    goto :goto_0

    .end local v0    # "index":I
    .end local v1    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private removeWakeLockLocked(Lcom/android/server/power/PowerManagerService$WakeLock;I)V
    .locals 1
    .param p1, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;
    .param p2, "index"    # I

    .prologue
    .line 1003
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1004
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockReleasedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    .line 1006
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->applyWakeLockFlagsOnReleaseLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    .line 1007
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 1008
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 1009
    return-void
.end method

.method private scheduleSandmanLocked()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1926
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSandmanScheduled:Z

    if-nez v1, :cond_0

    .line 1927
    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mSandmanScheduled:Z

    .line 1928
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1929
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, v3}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1930
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1932
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private setAttentionLightInternal(ZI)V
    .locals 4
    .param p1, "on"    # Z
    .param p2, "color"    # I

    .prologue
    const/4 v2, 0x0

    .line 2851
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2852
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-nez v1, :cond_0

    .line 2853
    monitor-exit v3

    .line 2860
    :goto_0
    return-void

    .line 2855
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mAttentionLight:Lcom/android/server/lights/Light;

    .line 2856
    .local v0, "light":Lcom/android/server/lights/Light;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2859
    const/4 v3, 0x2

    if-eqz p1, :cond_1

    const/4 v1, 0x3

    :goto_1
    invoke-virtual {v0, p2, v3, v1, v2}, Lcom/android/server/lights/Light;->setFlashing(IIII)V

    goto :goto_0

    .line 2856
    .end local v0    # "light":Lcom/android/server/lights/Light;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .restart local v0    # "light":Lcom/android/server/lights/Light;
    :cond_1
    move v1, v2

    .line 2859
    goto :goto_1
.end method

.method private setDozeOverrideFromDreamManagerInternal(II)V
    .locals 2
    .param p1, "screenState"    # I
    .param p2, "screenBrightness"    # I

    .prologue
    .line 2950
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2951
    :try_start_0
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenStateOverrideFromDreamManager:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenBrightnessOverrideFromDreamManager:I

    if-eq v0, p2, :cond_1

    .line 2953
    :cond_0
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenStateOverrideFromDreamManager:I

    .line 2954
    iput p2, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenBrightnessOverrideFromDreamManager:I

    .line 2955
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 2956
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 2958
    :cond_1
    monitor-exit v1

    .line 2959
    return-void

    .line 2958
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setHalAutoSuspendModeLocked(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    const-wide/32 v2, 0x20000

    .line 2423
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mHalAutoSuspendModeEnabled:Z

    if-eq p1, v0, :cond_0

    .line 2427
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mHalAutoSuspendModeEnabled:Z

    .line 2428
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setHalAutoSuspend("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2430
    :try_start_0
    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->nativeSetAutoSuspend(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2432
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 2435
    :cond_0
    return-void

    .line 2432
    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private setHalInteractiveModeLocked(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    const-wide/32 v2, 0x20000

    .line 2438
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mHalInteractiveModeEnabled:Z

    if-eq p1, v0, :cond_0

    .line 2442
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mHalInteractiveModeEnabled:Z

    .line 2443
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setHalInteractive("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2445
    :try_start_0
    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->nativeSetInteractive(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2447
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 2450
    :cond_0
    return-void

    .line 2447
    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private setLowPowerModeInternal(Z)Z
    .locals 5
    .param p1, "mode"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2465
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2467
    :try_start_0
    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-eqz v3, :cond_0

    .line 2468
    monitor-exit v2

    .line 2489
    :goto_0
    return v0

    .line 2470
    :cond_0
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "low_power"

    if-eqz p1, :cond_1

    move v0, v1

    :cond_1
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2472
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeSetting:Z

    .line 2474
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mAutoLowPowerModeConfigured:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelLow:Z

    if-eqz v0, :cond_2

    .line 2475
    if-eqz p1, :cond_3

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mAutoLowPowerModeSnoozing:Z

    if-eqz v0, :cond_3

    .line 2479
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mAutoLowPowerModeSnoozing:Z

    .line 2488
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updateLowPowerModeLocked()V

    .line 2489
    monitor-exit v2

    move v0, v1

    goto :goto_0

    .line 2480
    :cond_3
    if-nez p1, :cond_2

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mAutoLowPowerModeSnoozing:Z

    if-nez v0, :cond_2

    .line 2484
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mAutoLowPowerModeSnoozing:Z

    goto :goto_1

    .line 2490
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setScreenBrightnessOverrideFromWindowManagerInternal(I)V
    .locals 2
    .param p1, "brightness"    # I

    .prologue
    .line 2907
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2908
    :try_start_0
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessOverrideFromWindowManager:I

    if-eq v0, p1, :cond_0

    .line 2909
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessOverrideFromWindowManager:I

    .line 2910
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 2911
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 2913
    :cond_0
    monitor-exit v1

    .line 2914
    return-void

    .line 2913
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setTemporaryScreenAutoBrightnessAdjustmentSettingOverrideInternal(F)V
    .locals 2
    .param p1, "adj"    # F

    .prologue
    .line 2937
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2940
    :try_start_0
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenAutoBrightnessAdjustmentSettingOverride:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 2941
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenAutoBrightnessAdjustmentSettingOverride:F

    .line 2942
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 2943
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 2945
    :cond_0
    monitor-exit v1

    .line 2946
    return-void

    .line 2945
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setTemporaryScreenBrightnessSettingOverrideInternal(I)V
    .locals 2
    .param p1, "brightness"    # I

    .prologue
    .line 2927
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2928
    :try_start_0
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenBrightnessSettingOverride:I

    if-eq v0, p1, :cond_0

    .line 2929
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenBrightnessSettingOverride:I

    .line 2930
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 2931
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 2933
    :cond_0
    monitor-exit v1

    .line 2934
    return-void

    .line 2933
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setUserActivityTimeoutOverrideFromWindowManagerInternal(J)V
    .locals 5
    .param p1, "timeoutMillis"    # J

    .prologue
    .line 2917
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2918
    :try_start_0
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutOverrideFromWindowManager:J

    cmp-long v0, v2, p1

    if-eqz v0, :cond_0

    .line 2919
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutOverrideFromWindowManager:J

    .line 2920
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 2921
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 2923
    :cond_0
    monitor-exit v1

    .line 2924
    return-void

    .line 2923
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setWakeLockDisabledStateLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)Z
    .locals 12
    .param p1, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;

    .prologue
    const/16 v11, 0x2710

    const/16 v10, 0x10

    const/4 v6, 0x1

    const/4 v9, 0x4

    .line 2722
    iget v7, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v8, 0xffff

    and-int/2addr v7, v8

    if-ne v7, v6, :cond_5

    .line 2724
    const/4 v1, 0x0

    .line 2725
    .local v1, "disabled":Z
    iget-boolean v7, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    if-eqz v7, :cond_2

    .line 2726
    iget v7, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    invoke-static {v7}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 2727
    .local v0, "appid":I
    iget-boolean v7, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleAggressive:Z

    if-eqz v7, :cond_3

    .line 2730
    if-lt v0, v11, :cond_1

    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleWhitelist:[I

    invoke-static {v7, v0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v7

    if-gez v7, :cond_1

    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleTempWhitelist:[I

    invoke-static {v7, v0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v7

    if-gez v7, :cond_1

    .line 2734
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseIntArray;

    iget v8, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    invoke-virtual {v7, v8, v10}, Landroid/util/SparseIntArray;->get(II)I

    move-result v5

    .line 2737
    .local v5, "uidState":I
    if-le v5, v9, :cond_0

    .line 2738
    const/4 v1, 0x1

    .line 2741
    :cond_0
    if-ne v5, v9, :cond_1

    .line 2742
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->allowAcquireWakeLock(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 2743
    const/4 v1, 0x1

    .line 2759
    .end local v5    # "uidState":I
    :cond_1
    :goto_0
    sget-boolean v7, Lcom/android/server/power/PowerManagerService;->IS_H2_OS:Z

    if-eqz v7, :cond_2

    iget-boolean v7, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleAggressive:Z

    if-eqz v7, :cond_2

    if-nez v1, :cond_2

    .line 2760
    iget-object v7, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    if-eqz v7, :cond_2

    .line 2761
    iget-object v7, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v7}, Landroid/os/WorkSource;->size()I

    move-result v3

    .line 2762
    .local v3, "size":I
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_1
    if-ge v2, v3, :cond_2

    .line 2763
    iget-object v7, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v7, v2}, Landroid/os/WorkSource;->get(I)I

    move-result v4

    .line 2764
    .local v4, "uid":I
    invoke-direct {p0, v4}, Lcom/android/server/power/PowerManagerService;->blackPackageForAudio(I)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 2766
    invoke-direct {p0, v4}, Lcom/android/server/power/PowerManagerService;->forceStopPackageName(I)Z

    .line 2781
    .end local v0    # "appid":I
    .end local v2    # "k":I
    .end local v3    # "size":I
    .end local v4    # "uid":I
    :cond_2
    iget-boolean v7, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    if-eq v7, v1, :cond_5

    .line 2782
    iput-boolean v1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    .line 2786
    .end local v1    # "disabled":Z
    :goto_2
    return v6

    .line 2750
    .restart local v0    # "appid":I
    .restart local v1    # "disabled":Z
    :cond_3
    if-lt v0, v11, :cond_1

    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleWhitelist:[I

    invoke-static {v7, v0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v7

    if-gez v7, :cond_1

    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleTempWhitelist:[I

    invoke-static {v7, v0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v7

    if-gez v7, :cond_1

    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseIntArray;

    iget v8, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    invoke-virtual {v7, v8, v10}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    if-le v7, v9, :cond_1

    .line 2756
    const/4 v1, 0x1

    goto :goto_0

    .line 2762
    .restart local v2    # "k":I
    .restart local v3    # "size":I
    .restart local v4    # "uid":I
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2786
    .end local v0    # "appid":I
    .end local v1    # "disabled":Z
    .end local v2    # "k":I
    .end local v3    # "size":I
    .end local v4    # "uid":I
    :cond_5
    const/4 v6, 0x0

    goto :goto_2
.end method

.method private setWakefulnessLocked(II)V
    .locals 1
    .param p1, "wakefulness"    # I
    .param p2, "reason"    # I

    .prologue
    .line 1373
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-eq v0, p1, :cond_0

    .line 1374
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    .line 1375
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulnessChanging:Z

    .line 1376
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 1377
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/power/Notifier;->onWakefulnessChangeStarted(II)V

    .line 1379
    :cond_0
    return-void
.end method

.method private shouldNapAtBedTimeLocked()Z
    .locals 1

    .prologue
    .line 1870
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnSleepSetting:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnDockSetting:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDockState:I

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private shouldUseProximitySensorLocked()Z
    .locals 1

    .prologue
    .line 2334
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private shouldWakeUpWhenPluggedOrUnpluggedLocked(ZIZ)Z
    .locals 3
    .param p1, "wasPowered"    # Z
    .param p2, "oldPlugType"    # I
    .param p3, "dockedOnWirelessCharger"    # Z

    .prologue
    const/4 v2, 0x4

    const/4 v0, 0x0

    .line 1551
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedConfig:Z

    if-nez v1, :cond_1

    .line 1581
    :cond_0
    :goto_0
    return v0

    .line 1557
    :cond_1
    if-eqz p1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-nez v1, :cond_2

    if-eq p2, v2, :cond_0

    .line 1564
    :cond_2
    if-nez p1, :cond_3

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    if-ne v1, v2, :cond_3

    if-eqz p3, :cond_0

    .line 1571
    :cond_3
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 1576
    :cond_4
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mTheaterModeEnabled:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedInTheaterModeConfig:Z

    if-eqz v1, :cond_0

    .line 1581
    :cond_5
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private shutdownOrRebootInternal(ZZLjava/lang/String;Z)V
    .locals 4
    .param p1, "shutdown"    # Z
    .param p2, "confirm"    # Z
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "wait"    # Z

    .prologue
    .line 2506
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-nez v2, :cond_1

    .line 2507
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Too early to call shutdown() or reboot()"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2510
    :cond_1
    new-instance v1, Lcom/android/server/power/PowerManagerService$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/power/PowerManagerService$3;-><init>(Lcom/android/server/power/PowerManagerService;ZZLjava/lang/String;)V

    .line 2524
    .local v1, "runnable":Ljava/lang/Runnable;
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-static {v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    .line 2525
    .local v0, "msg":Landroid/os/Message;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 2526
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v2, v0}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2529
    if-eqz p4, :cond_2

    .line 2530
    monitor-enter v1

    .line 2533
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2534
    :catch_0
    move-exception v2

    goto :goto_0

    .line 2537
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 2539
    :cond_2
    return-void
.end method

.method private updateBlockedWakelock(Lcom/android/server/power/PowerManagerService$WakeLock;Z)Z
    .locals 3
    .param p1, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;
    .param p2, "update"    # Z

    .prologue
    const/4 v0, 0x1

    .line 4061
    if-eqz p1, :cond_1

    iget v1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v2, 0xffff

    and-int/2addr v1, v2

    if-ne v1, v0, :cond_1

    .line 4063
    iget-boolean v1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    if-eq v1, p2, :cond_1

    .line 4064
    iput-boolean p2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    .line 4065
    iget-boolean v1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    if-eqz v1, :cond_0

    .line 4067
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockReleasedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    .line 4074
    :goto_0
    return v0

    .line 4069
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockAcquiredLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    goto :goto_0

    .line 4074
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateDisplayPowerStateLocked(I)Z
    .locals 10
    .param p1, "dirty"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 2085
    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    .line 2086
    .local v2, "oldDisplayReady":Z
    and-int/lit16 v7, p1, 0x83f

    if-eqz v7, :cond_4

    .line 2089
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->getDesiredScreenPolicyLocked()I

    move-result v8

    iput v8, v7, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    .line 2092
    iput-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->useProximityForceSuspend:Z

    .line 2096
    const/4 v1, 0x1

    .line 2097
    .local v1, "brightnessSetByUser":Z
    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingDefault:I

    .line 2098
    .local v4, "screenBrightness":I
    const/4 v3, 0x0

    .line 2099
    .local v3, "screenAutoBrightnessAdjustment":F
    iget v7, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessModeSetting:I

    if-ne v7, v5, :cond_5

    move v0, v5

    .line 2101
    .local v0, "autoBrightness":Z
    :goto_0
    iget v7, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessOverrideFromWindowManager:I

    invoke-static {v7}, Lcom/android/server/power/PowerManagerService;->isValidBrightness(I)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 2102
    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessOverrideFromWindowManager:I

    .line 2103
    const/4 v0, 0x0

    .line 2104
    const/4 v1, 0x0

    .line 2110
    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    .line 2111
    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingDefault:I

    .line 2112
    iget v7, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenAutoBrightnessAdjustmentSettingOverride:F

    invoke-static {v7}, Lcom/android/server/power/PowerManagerService;->isValidAutoBrightnessAdjustment(F)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 2114
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenAutoBrightnessAdjustmentSettingOverride:F

    .line 2121
    :cond_1
    :goto_2
    iget v7, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingMaximum:I

    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    iget v8, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingMinimum:I

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 2123
    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v3, v7}, Ljava/lang/Math;->min(FF)F

    move-result v7

    const/high16 v8, -0x40800000    # -1.0f

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 2127
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iput v4, v7, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightness:I

    .line 2128
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iput v3, v7, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenAutoBrightnessAdjustment:F

    .line 2130
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iput-boolean v1, v7, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->brightnessSetByUser:Z

    .line 2131
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iput-boolean v0, v7, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useAutoBrightness:Z

    .line 2132
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->shouldUseProximitySensorLocked()Z

    move-result v8

    iput-boolean v8, v7, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useProximitySensor:Z

    .line 2133
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v8, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeEnabled:Z

    iput-boolean v8, v7, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lowPowerMode:Z

    .line 2134
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v8, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    iput-boolean v8, v7, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->boostScreenBrightness:Z

    .line 2136
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v7, v7, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    if-ne v7, v5, :cond_9

    .line 2137
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v8, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenStateOverrideFromDreamManager:I

    iput v8, v7, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    .line 2138
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v7, v7, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    const/4 v8, 0x4

    if-ne v7, v8, :cond_2

    iget v7, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit16 v7, v7, 0x80

    if-eqz v7, :cond_2

    .line 2140
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    const/4 v8, 0x3

    iput v8, v7, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    .line 2142
    :cond_2
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v8, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenBrightnessOverrideFromDreamManager:I

    iput v8, v7, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenBrightness:I

    .line 2150
    :goto_3
    iget-boolean v7, p0, Lcom/android/server/power/PowerManagerService;->mProximityLockFromInCallUi:Z

    if-nez v7, :cond_a

    iget v7, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-ne v7, v5, :cond_a

    .line 2151
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v7, v6}, Landroid/hardware/display/DisplayManagerInternal;->setUseProximityForceSuspend(Z)V

    .line 2158
    :cond_3
    :goto_4
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget-object v8, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v9, p0, Lcom/android/server/power/PowerManagerService;->mRequestWaitForNegativeProximity:Z

    invoke-virtual {v7, v8, v9}, Landroid/hardware/display/DisplayManagerInternal;->requestPowerState(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    .line 2160
    iput-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mRequestWaitForNegativeProximity:Z

    .line 2173
    .end local v0    # "autoBrightness":Z
    .end local v1    # "brightnessSetByUser":Z
    .end local v3    # "screenAutoBrightnessAdjustment":F
    .end local v4    # "screenBrightness":I
    :cond_4
    iget-boolean v7, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    if-eqz v7, :cond_b

    if-nez v2, :cond_b

    :goto_5
    return v5

    .restart local v1    # "brightnessSetByUser":Z
    .restart local v3    # "screenAutoBrightnessAdjustment":F
    .restart local v4    # "screenBrightness":I
    :cond_5
    move v0, v6

    .line 2099
    goto/16 :goto_0

    .line 2105
    .restart local v0    # "autoBrightness":Z
    :cond_6
    iget v7, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenBrightnessSettingOverride:I

    invoke-static {v7}, Lcom/android/server/power/PowerManagerService;->isValidBrightness(I)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 2106
    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenBrightnessSettingOverride:I

    goto/16 :goto_1

    .line 2107
    :cond_7
    iget v7, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSetting:I

    invoke-static {v7}, Lcom/android/server/power/PowerManagerService;->isValidBrightness(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2108
    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSetting:I

    goto/16 :goto_1

    .line 2116
    :cond_8
    iget v7, p0, Lcom/android/server/power/PowerManagerService;->mScreenAutoBrightnessAdjustmentSetting:F

    invoke-static {v7}, Lcom/android/server/power/PowerManagerService;->isValidAutoBrightnessAdjustment(F)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2118
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mScreenAutoBrightnessAdjustmentSetting:F

    goto/16 :goto_2

    .line 2145
    :cond_9
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iput v6, v7, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    .line 2146
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    const/4 v8, -0x1

    iput v8, v7, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenBrightness:I

    goto :goto_3

    .line 2152
    :cond_a
    iget-boolean v7, p0, Lcom/android/server/power/PowerManagerService;->mProximityLockFromInCallUi:Z

    if-eqz v7, :cond_3

    .line 2153
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v7, v5}, Landroid/hardware/display/DisplayManagerInternal;->setUseProximityForceSuspend(Z)V

    .line 2154
    iput-boolean v5, p0, Lcom/android/server/power/PowerManagerService;->useProximityForceSuspend:Z

    goto :goto_4

    .end local v0    # "autoBrightness":Z
    .end local v1    # "brightnessSetByUser":Z
    .end local v3    # "screenAutoBrightnessAdjustment":F
    .end local v4    # "screenBrightness":I
    :cond_b
    move v5, v6

    .line 2173
    goto :goto_5
.end method

.method private updateDreamLocked(IZ)V
    .locals 1
    .param p1, "dirty"    # I
    .param p2, "displayBecameReady"    # Z

    .prologue
    .line 1910
    and-int/lit16 v0, p1, 0x3f7

    if-nez v0, :cond_0

    if-eqz p2, :cond_1

    .line 1919
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    if-eqz v0, :cond_1

    .line 1920
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->scheduleSandmanLocked()V

    .line 1923
    :cond_1
    return-void
.end method

.method private updateIsPoweredLocked(I)V
    .locals 11
    .param p1, "dirty"    # I

    .prologue
    .line 1491
    and-int/lit16 v1, p1, 0x100

    if-eqz v1, :cond_5

    .line 1492
    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    .line 1493
    .local v10, "wasPowered":Z
    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    .line 1494
    .local v9, "oldPlugType":I
    iget-boolean v8, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelLow:Z

    .line 1495
    .local v8, "oldLevelLow":Z
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    const/4 v4, 0x7

    invoke-virtual {v1, v4}, Landroid/os/BatteryManagerInternal;->isPowered(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    .line 1496
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    invoke-virtual {v1}, Landroid/os/BatteryManagerInternal;->getPlugType()I

    move-result v1

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    .line 1497
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    invoke-virtual {v1}, Landroid/os/BatteryManagerInternal;->getBatteryLevel()I

    move-result v1

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    .line 1498
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    invoke-virtual {v1}, Landroid/os/BatteryManagerInternal;->getBatteryLevelLow()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelLow:Z

    .line 1508
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-ne v10, v1, :cond_0

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    if-eq v9, v1, :cond_2

    .line 1509
    :cond_0
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 1512
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mWirelessChargerDetector:Lcom/android/server/power/WirelessChargerDetector;

    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    iget v6, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    invoke-virtual {v1, v4, v5, v6}, Lcom/android/server/power/WirelessChargerDetector;->update(ZII)Z

    move-result v0

    .line 1520
    .local v0, "dockedOnWirelessCharger":Z
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 1521
    .local v2, "now":J
    invoke-direct {p0, v10, v9, v0}, Lcom/android/server/power/PowerManagerService;->shouldWakeUpWhenPluggedOrUnpluggedLocked(ZIZ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1523
    const-string v4, "android.server.power:POWER"

    const/16 v5, 0x3e8

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x3e8

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/power/PowerManagerService;->wakeUpNoUpdateLocked(JLjava/lang/String;ILjava/lang/String;I)Z

    .line 1526
    :cond_1
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x3e8

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z

    .line 1531
    if-eqz v0, :cond_2

    .line 1532
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    invoke-virtual {v1}, Lcom/android/server/power/Notifier;->onWirelessChargingStarted()V

    .line 1536
    .end local v0    # "dockedOnWirelessCharger":Z
    .end local v2    # "now":J
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-ne v10, v1, :cond_3

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelLow:Z

    if-eq v8, v1, :cond_5

    .line 1537
    :cond_3
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelLow:Z

    if-eq v8, v1, :cond_4

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelLow:Z

    if-nez v1, :cond_4

    .line 1541
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mAutoLowPowerModeSnoozing:Z

    .line 1543
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updateLowPowerModeLocked()V

    .line 1546
    .end local v8    # "oldLevelLow":Z
    .end local v9    # "oldPlugType":I
    .end local v10    # "wasPowered":Z
    :cond_5
    return-void
.end method

.method private updatePowerStateLocked()V
    .locals 10

    .prologue
    const-wide/32 v8, 0x20000

    .line 1437
    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    if-nez v3, :cond_1

    .line 1484
    :cond_0
    :goto_0
    return-void

    .line 1440
    :cond_1
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1441
    const-string v3, "PowerManagerService"

    const-string v6, "Power manager lock was not held when calling updatePowerStateLocked"

    invoke-static {v3, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1444
    :cond_2
    const-string v3, "updatePowerState"

    invoke-static {v8, v9, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1447
    :try_start_0
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-direct {p0, v3}, Lcom/android/server/power/PowerManagerService;->updateIsPoweredLocked(I)V

    .line 1448
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-direct {p0, v3}, Lcom/android/server/power/PowerManagerService;->updateStayOnLocked(I)V

    .line 1449
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-direct {p0, v3}, Lcom/android/server/power/PowerManagerService;->updateScreenBrightnessBoostLocked(I)V

    .line 1454
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 1455
    .local v4, "now":J
    const/4 v1, 0x0

    .line 1457
    .local v1, "dirtyPhase2":I
    :cond_3
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 1458
    .local v0, "dirtyPhase1":I
    or-int/2addr v1, v0

    .line 1459
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 1461
    invoke-direct {p0, v0}, Lcom/android/server/power/PowerManagerService;->updateWakeLockSummaryLocked(I)V

    .line 1462
    invoke-direct {p0, v4, v5, v0}, Lcom/android/server/power/PowerManagerService;->updateUserActivitySummaryLocked(JI)V

    .line 1463
    invoke-direct {p0, v0}, Lcom/android/server/power/PowerManagerService;->updateWakefulnessLocked(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1469
    invoke-direct {p0, v1}, Lcom/android/server/power/PowerManagerService;->updateDisplayPowerStateLocked(I)Z

    move-result v2

    .line 1472
    .local v2, "displayBecameReady":Z
    invoke-direct {p0, v1, v2}, Lcom/android/server/power/PowerManagerService;->updateDreamLocked(IZ)V

    .line 1475
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->finishWakefulnessChangeIfNeededLocked()V

    .line 1480
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateSuspendBlockerLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1482
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    .end local v0    # "dirtyPhase1":I
    .end local v1    # "dirtyPhase2":I
    .end local v2    # "displayBecameReady":Z
    .end local v4    # "now":J
    :catchall_0
    move-exception v3

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    throw v3
.end method

.method private updateScreenBrightnessBoostLocked(I)V
    .locals 12
    .param p1, "dirty"    # I

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 2177
    and-int/lit16 v1, p1, 0x800

    if-eqz v1, :cond_0

    .line 2178
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    if-eqz v1, :cond_0

    .line 2179
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 2180
    .local v2, "now":J
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v1, v5}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->removeMessages(I)V

    .line 2181
    iget-wide v6, p0, Lcom/android/server/power/PowerManagerService;->mLastScreenBrightnessBoostTime:J

    iget-wide v10, p0, Lcom/android/server/power/PowerManagerService;->mLastSleepTime:J

    cmp-long v1, v6, v10

    if-lez v1, :cond_1

    .line 2182
    iget-wide v6, p0, Lcom/android/server/power/PowerManagerService;->mLastScreenBrightnessBoostTime:J

    const-wide/16 v10, 0x1388

    add-long v8, v6, v10

    .line 2184
    .local v8, "boostTimeout":J
    cmp-long v1, v8, v2

    if-lez v1, :cond_1

    .line 2185
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v1, v5}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2186
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 2187
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v1, v0, v8, v9}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 2197
    .end local v0    # "msg":Landroid/os/Message;
    .end local v2    # "now":J
    .end local v8    # "boostTimeout":J
    :cond_0
    :goto_0
    return-void

    .line 2191
    .restart local v2    # "now":J
    :cond_1
    iput-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessBoostInProgress:Z

    .line 2192
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    invoke-virtual {v1}, Lcom/android/server/power/Notifier;->onScreenBrightnessBoostChanged()V

    .line 2193
    const/16 v6, 0x3e8

    move-object v1, p0

    move v5, v4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z

    goto :goto_0
.end method

.method private updateSettingsLocked()V
    .locals 12

    .prologue
    const/4 v11, -0x1

    const/4 v10, -0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 725
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 727
    .local v5, "resolver":Landroid/content/ContentResolver;
    const-string v9, "screensaver_enabled"

    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledByDefaultConfig:Z

    if-eqz v6, :cond_6

    move v6, v7

    :goto_0
    invoke-static {v5, v9, v6, v10}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-eqz v6, :cond_7

    move v6, v7

    :goto_1
    iput-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledSetting:Z

    .line 731
    const-string v9, "screensaver_activate_on_sleep"

    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnSleepByDefaultConfig:Z

    if-eqz v6, :cond_8

    move v6, v7

    :goto_2
    invoke-static {v5, v9, v6, v10}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-eqz v6, :cond_9

    move v6, v7

    :goto_3
    iput-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnSleepSetting:Z

    .line 735
    const-string v9, "screensaver_activate_on_dock"

    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnDockByDefaultConfig:Z

    if-eqz v6, :cond_a

    move v6, v7

    :goto_4
    invoke-static {v5, v9, v6, v10}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-eqz v6, :cond_b

    move v6, v7

    :goto_5
    iput-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnDockSetting:Z

    .line 739
    const-string v6, "screen_off_timeout"

    const/16 v9, 0x3a98

    invoke-static {v5, v6, v9, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    iput v6, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffTimeoutSetting:I

    .line 742
    const-string v6, "sleep_timeout"

    invoke-static {v5, v6, v11, v10}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    iput v6, p0, Lcom/android/server/power/PowerManagerService;->mSleepTimeoutSetting:I

    .line 745
    const-string v6, "stay_on_while_plugged_in"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/server/power/PowerManagerService;->mStayOnWhilePluggedInSetting:I

    .line 747
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "theater_mode_on"

    invoke-static {v6, v9, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v7, :cond_c

    move v6, v7

    :goto_6
    iput-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mTheaterModeEnabled:Z

    .line 750
    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mSupportsDoubleTapWakeConfig:Z

    if-eqz v6, :cond_0

    .line 751
    const-string v6, "double_tap_to_wake"

    invoke-static {v5, v6, v8, v10}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-eqz v6, :cond_d

    move v1, v7

    .line 754
    .local v1, "doubleTapWakeEnabled":Z
    :goto_7
    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mDoubleTapWakeEnabled:Z

    if-eq v1, v6, :cond_0

    .line 755
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDoubleTapWakeEnabled:Z

    .line 756
    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mDoubleTapWakeEnabled:Z

    if-eqz v6, :cond_e

    move v6, v7

    :goto_8
    invoke-static {v7, v6}, Lcom/android/server/power/PowerManagerService;->nativeSetFeature(II)V

    .line 760
    .end local v1    # "doubleTapWakeEnabled":Z
    :cond_0
    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSetting:I

    .line 761
    .local v4, "oldScreenBrightnessSetting":I
    const-string v6, "screen_brightness"

    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingDefault:I

    invoke-static {v5, v6, v9, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    iput v6, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSetting:I

    .line 764
    iget v6, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSetting:I

    if-eq v4, v6, :cond_1

    .line 765
    iput v11, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenBrightnessSettingOverride:I

    .line 768
    :cond_1
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mScreenAutoBrightnessAdjustmentSetting:F

    .line 770
    .local v3, "oldScreenAutoBrightnessAdjustmentSetting":F
    const-string v6, "screen_auto_brightness_adj"

    const/4 v9, 0x0

    invoke-static {v5, v6, v9, v10}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v6

    iput v6, p0, Lcom/android/server/power/PowerManagerService;->mScreenAutoBrightnessAdjustmentSetting:F

    .line 773
    iget v6, p0, Lcom/android/server/power/PowerManagerService;->mScreenAutoBrightnessAdjustmentSetting:F

    cmpl-float v6, v3, v6

    if-eqz v6, :cond_2

    .line 774
    const/high16 v6, 0x7fc00000    # NaNf

    iput v6, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenAutoBrightnessAdjustmentSettingOverride:F

    .line 777
    :cond_2
    const-string v6, "screen_brightness_mode"

    invoke-static {v5, v6, v8, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    iput v6, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessModeSetting:I

    .line 783
    const-string v6, "buttons_brightness"

    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mButtonBrightnessSettingDefault:I

    invoke-static {v5, v6, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/server/power/PowerManagerService;->mButtonBrightness:I

    .line 786
    const-string v6, "oem.keylock.mode"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    sput v6, Lcom/android/server/power/PowerManagerService;->mKeyMode:I

    .line 788
    sget v6, Lcom/android/server/power/PowerManagerService;->mKeyMode:I

    const/4 v9, 0x4

    if-ne v6, v9, :cond_f

    .line 789
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mButtonsLight:Lcom/android/server/lights/Light;

    if-eqz v6, :cond_3

    .line 790
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mButtonsLight:Lcom/android/server/lights/Light;

    invoke-virtual {v6, v8}, Lcom/android/server/lights/Light;->setBrightness(I)V

    .line 791
    sput-boolean v8, Lcom/android/server/power/PowerManagerService;->mButtonChangeState:Z

    .line 803
    :cond_3
    :goto_9
    const-string v6, "low_power"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_11

    move v2, v7

    .line 805
    .local v2, "lowPowerModeEnabled":Z
    :goto_a
    const-string v6, "low_power_trigger_level"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_12

    move v0, v7

    .line 807
    .local v0, "autoLowPowerModeConfigured":Z
    :goto_b
    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeSetting:Z

    if-ne v2, v6, :cond_4

    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mAutoLowPowerModeConfigured:Z

    if-eq v0, v6, :cond_5

    .line 809
    :cond_4
    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeSetting:Z

    .line 810
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mAutoLowPowerModeConfigured:Z

    .line 811
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updateLowPowerModeLocked()V

    .line 814
    :cond_5
    iget v6, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v6, v6, 0x20

    iput v6, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 815
    return-void

    .end local v0    # "autoLowPowerModeConfigured":Z
    .end local v2    # "lowPowerModeEnabled":Z
    .end local v3    # "oldScreenAutoBrightnessAdjustmentSetting":F
    .end local v4    # "oldScreenBrightnessSetting":I
    :cond_6
    move v6, v8

    .line 727
    goto/16 :goto_0

    :cond_7
    move v6, v8

    goto/16 :goto_1

    :cond_8
    move v6, v8

    .line 731
    goto/16 :goto_2

    :cond_9
    move v6, v8

    goto/16 :goto_3

    :cond_a
    move v6, v8

    .line 735
    goto/16 :goto_4

    :cond_b
    move v6, v8

    goto/16 :goto_5

    :cond_c
    move v6, v8

    .line 747
    goto/16 :goto_6

    :cond_d
    move v1, v8

    .line 751
    goto/16 :goto_7

    .restart local v1    # "doubleTapWakeEnabled":Z
    :cond_e
    move v6, v8

    .line 756
    goto/16 :goto_8

    .line 793
    .end local v1    # "doubleTapWakeEnabled":Z
    .restart local v3    # "oldScreenAutoBrightnessAdjustmentSetting":F
    .restart local v4    # "oldScreenBrightnessSetting":I
    :cond_f
    sget v6, Lcom/android/server/power/PowerManagerService;->mKeyMode:I

    if-nez v6, :cond_3

    .line 794
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mButtonsLight:Lcom/android/server/lights/Light;

    if-eqz v6, :cond_3

    iget v6, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-ne v6, v7, :cond_3

    .line 795
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mButtonsLight:Lcom/android/server/lights/Light;

    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mButtonBrightness:I

    invoke-virtual {v6, v9}, Lcom/android/server/lights/Light;->setBrightness(I)V

    .line 796
    iget v6, p0, Lcom/android/server/power/PowerManagerService;->mButtonBrightness:I

    if-eqz v6, :cond_10

    move v6, v7

    :goto_c
    sput-boolean v6, Lcom/android/server/power/PowerManagerService;->mButtonChangeState:Z

    goto :goto_9

    :cond_10
    move v6, v8

    goto :goto_c

    :cond_11
    move v2, v8

    .line 803
    goto :goto_a

    .restart local v2    # "lowPowerModeEnabled":Z
    :cond_12
    move v0, v8

    .line 805
    goto :goto_b
.end method

.method private updateStayOnLocked(I)V
    .locals 3
    .param p1, "dirty"    # I

    .prologue
    .line 1589
    and-int/lit16 v1, p1, 0x120

    if-eqz v1, :cond_0

    .line 1590
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    .line 1591
    .local v0, "wasStayOn":Z
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mStayOnWhilePluggedInSetting:I

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isMaximumScreenOffTimeoutFromDeviceAdminEnforcedLocked()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1593
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mStayOnWhilePluggedInSetting:I

    invoke-virtual {v1, v2}, Landroid/os/BatteryManagerInternal;->isPowered(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    .line 1598
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    if-eq v1, v0, :cond_0

    .line 1599
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit16 v1, v1, 0x80

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 1602
    .end local v0    # "wasStayOn":Z
    :cond_0
    return-void

    .line 1595
    .restart local v0    # "wasStayOn":Z
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    goto :goto_0
.end method

.method private updateSuspendBlockerLocked()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2343
    iget v6, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_8

    move v3, v4

    .line 2344
    .local v3, "needWakeLockSuspendBlocker":Z
    :goto_0
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->needDisplaySuspendBlockerLocked()Z

    move-result v2

    .line 2345
    .local v2, "needDisplaySuspendBlocker":Z
    if-nez v2, :cond_9

    move v0, v4

    .line 2346
    .local v0, "autoSuspend":Z
    :goto_1
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v6}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isBrightOrDim()Z

    move-result v1

    .line 2351
    .local v1, "interactive":Z
    if-nez v0, :cond_0

    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalAutoSuspendModeFromDisplayConfig:Z

    if-eqz v6, :cond_0

    .line 2352
    invoke-direct {p0, v5}, Lcom/android/server/power/PowerManagerService;->setHalAutoSuspendModeLocked(Z)V

    .line 2356
    :cond_0
    if-eqz v3, :cond_1

    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mHoldingWakeLockSuspendBlocker:Z

    if-nez v6, :cond_1

    .line 2357
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v6}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    .line 2358
    iput-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mHoldingWakeLockSuspendBlocker:Z

    .line 2360
    :cond_1
    if-eqz v2, :cond_2

    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mHoldingDisplaySuspendBlocker:Z

    if-nez v6, :cond_2

    .line 2361
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v6}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    .line 2362
    iput-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mHoldingDisplaySuspendBlocker:Z

    .line 2371
    :cond_2
    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalInteractiveModeFromDisplayConfig:Z

    if-eqz v6, :cond_4

    .line 2376
    if-nez v1, :cond_3

    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    if-eqz v6, :cond_4

    .line 2377
    :cond_3
    invoke-direct {p0, v1}, Lcom/android/server/power/PowerManagerService;->setHalInteractiveModeLocked(Z)V

    .line 2382
    :cond_4
    if-nez v3, :cond_5

    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mHoldingWakeLockSuspendBlocker:Z

    if-eqz v6, :cond_5

    .line 2383
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v6}, Lcom/android/server/power/SuspendBlocker;->release()V

    .line 2384
    iput-boolean v5, p0, Lcom/android/server/power/PowerManagerService;->mHoldingWakeLockSuspendBlocker:Z

    .line 2386
    :cond_5
    if-nez v2, :cond_6

    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mHoldingDisplaySuspendBlocker:Z

    if-eqz v6, :cond_6

    .line 2387
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v6}, Lcom/android/server/power/SuspendBlocker;->release()V

    .line 2388
    iput-boolean v5, p0, Lcom/android/server/power/PowerManagerService;->mHoldingDisplaySuspendBlocker:Z

    .line 2392
    :cond_6
    if-eqz v0, :cond_7

    iget-boolean v5, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalAutoSuspendModeFromDisplayConfig:Z

    if-eqz v5, :cond_7

    .line 2393
    invoke-direct {p0, v4}, Lcom/android/server/power/PowerManagerService;->setHalAutoSuspendModeLocked(Z)V

    .line 2395
    :cond_7
    return-void

    .end local v0    # "autoSuspend":Z
    .end local v1    # "interactive":Z
    .end local v2    # "needDisplaySuspendBlocker":Z
    .end local v3    # "needWakeLockSuspendBlocker":Z
    :cond_8
    move v3, v5

    .line 2343
    goto :goto_0

    .restart local v2    # "needDisplaySuspendBlocker":Z
    .restart local v3    # "needWakeLockSuspendBlocker":Z
    :cond_9
    move v0, v5

    .line 2345
    goto :goto_1
.end method

.method private updateUserActivitySummaryLocked(JI)V
    .locals 13
    .param p1, "now"    # J
    .param p3, "dirty"    # I

    .prologue
    .line 1720
    and-int/lit8 v8, p3, 0x27

    if-eqz v8, :cond_4

    .line 1722
    iget-object v8, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->removeMessages(I)V

    .line 1724
    const-wide/16 v4, 0x0

    .line 1725
    .local v4, "nextTimeout":J
    iget v8, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v9, 0x1

    if-eq v8, v9, :cond_0

    iget v8, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v9, 0x2

    if-eq v8, v9, :cond_0

    iget v8, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_8

    .line 1728
    :cond_0
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->getSleepTimeoutLocked()I

    move-result v7

    .line 1729
    .local v7, "sleepTimeout":I
    invoke-direct {p0, v7}, Lcom/android/server/power/PowerManagerService;->getScreenOffTimeoutLocked(I)I

    move-result v6

    .line 1730
    .local v6, "screenOffTimeout":I
    invoke-direct {p0, v6}, Lcom/android/server/power/PowerManagerService;->getScreenDimDurationLocked(I)I

    move-result v3

    .line 1732
    .local v3, "screenDimDuration":I
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    .line 1733
    iget-wide v8, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    iget-wide v10, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    cmp-long v8, v8, v10

    if-ltz v8, :cond_1

    .line 1734
    iget-wide v8, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    int-to-long v10, v6

    add-long/2addr v8, v10

    int-to-long v10, v3

    sub-long v4, v8, v10

    .line 1736
    cmp-long v8, p1, v4

    if-gez v8, :cond_5

    .line 1737
    const/4 v8, 0x1

    iput v8, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    .line 1745
    :cond_1
    :goto_0
    iget v8, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    if-nez v8, :cond_2

    iget-wide v8, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTimeNoChangeLights:J

    iget-wide v10, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    cmp-long v8, v8, v10

    if-ltz v8, :cond_2

    .line 1747
    iget-wide v8, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTimeNoChangeLights:J

    int-to-long v10, v6

    add-long v4, v8, v10

    .line 1748
    cmp-long v8, p1, v4

    if-gez v8, :cond_2

    .line 1749
    iget-object v8, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v8, v8, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_6

    .line 1750
    const/4 v8, 0x1

    iput v8, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    .line 1756
    :cond_2
    :goto_1
    iget v8, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    if-nez v8, :cond_3

    .line 1757
    if-ltz v7, :cond_7

    .line 1758
    iget-wide v8, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    iget-wide v10, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTimeNoChangeLights:J

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 1760
    .local v0, "anyUserActivity":J
    iget-wide v8, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    cmp-long v8, v0, v8

    if-ltz v8, :cond_3

    .line 1761
    int-to-long v8, v7

    add-long v4, v0, v8

    .line 1762
    cmp-long v8, p1, v4

    if-gez v8, :cond_3

    .line 1763
    const/4 v8, 0x4

    iput v8, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    .line 1771
    .end local v0    # "anyUserActivity":J
    :cond_3
    :goto_2
    iget v8, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    if-eqz v8, :cond_4

    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-ltz v8, :cond_4

    .line 1772
    iget-object v8, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1773
    .local v2, "msg":Landroid/os/Message;
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1774
    iget-object v8, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v8, v2, v4, v5}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 1787
    .end local v2    # "msg":Landroid/os/Message;
    .end local v3    # "screenDimDuration":I
    .end local v4    # "nextTimeout":J
    .end local v6    # "screenOffTimeout":I
    .end local v7    # "sleepTimeout":I
    :cond_4
    :goto_3
    return-void

    .line 1739
    .restart local v3    # "screenDimDuration":I
    .restart local v4    # "nextTimeout":J
    .restart local v6    # "screenOffTimeout":I
    .restart local v7    # "sleepTimeout":I
    :cond_5
    iget-wide v8, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    int-to-long v10, v6

    add-long v4, v8, v10

    .line 1740
    cmp-long v8, p1, v4

    if-gez v8, :cond_1

    .line 1741
    const/4 v8, 0x2

    iput v8, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    goto :goto_0

    .line 1751
    :cond_6
    iget-object v8, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v8, v8, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_2

    .line 1752
    const/4 v8, 0x2

    iput v8, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    goto :goto_1

    .line 1767
    :cond_7
    const/4 v8, 0x4

    iput v8, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    .line 1768
    const-wide/16 v4, -0x1

    goto :goto_2

    .line 1777
    .end local v3    # "screenDimDuration":I
    .end local v6    # "screenOffTimeout":I
    .end local v7    # "sleepTimeout":I
    :cond_8
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    goto :goto_3
.end method

.method private updateWakeLockDisabledStatesLocked()V
    .locals 6

    .prologue
    .line 2620
    const/4 v0, 0x0

    .line 2621
    .local v0, "changed":Z
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2622
    .local v2, "numWakeLocks":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 2623
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 2624
    .local v3, "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    iget v4, v3, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v5, 0xffff

    and-int/2addr v4, v5

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 2626
    invoke-direct {p0, v3}, Lcom/android/server/power/PowerManagerService;->setWakeLockDisabledStateLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2627
    const/4 v0, 0x1

    .line 2628
    iget-boolean v4, v3, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    if-eqz v4, :cond_1

    .line 2630
    invoke-direct {p0, v3}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockReleasedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    .line 2622
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2632
    :cond_1
    invoke-direct {p0, v3}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockAcquiredLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    goto :goto_1

    .line 2637
    .end local v3    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    :cond_2
    if-eqz v0, :cond_3

    .line 2638
    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 2639
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 2641
    :cond_3
    return-void
.end method

.method private updateWakeLockSummaryLocked(I)V
    .locals 8
    .param p1, "dirty"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1612
    and-int/lit8 v3, p1, 0x3

    if-eqz v3, :cond_9

    .line 1613
    iput v6, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    .line 1616
    iput-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mProximityLockFromInCallUi:Z

    .line 1619
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1620
    .local v1, "numWakeLocks":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 1621
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 1622
    .local v2, "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    iget v3, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v4, 0xffff

    and-int/2addr v3, v4

    sparse-switch v3, :sswitch_data_0

    .line 1620
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1624
    :sswitch_0
    iget-boolean v3, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    if-nez v3, :cond_0

    .line 1626
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    goto :goto_1

    .line 1630
    :sswitch_1
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    or-int/lit8 v3, v3, 0xa

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    goto :goto_1

    .line 1633
    :sswitch_2
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    goto :goto_1

    .line 1636
    :sswitch_3
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    goto :goto_1

    .line 1639
    :sswitch_4
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    or-int/lit8 v3, v3, 0x10

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    .line 1642
    sget-boolean v3, Lcom/android/server/power/PowerManagerService;->IS_H2_OS:Z

    if-eqz v3, :cond_1

    .line 1643
    iget-object v3, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    const-string v4, "com.android.incallui"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1644
    const-string v3, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "acquire PROXIMITY_SCREEN_OFF_WAKE_LOCK from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1646
    iput-boolean v7, p0, Lcom/android/server/power/PowerManagerService;->mProximityLockFromInCallUi:Z

    goto :goto_1

    .line 1649
    :cond_1
    iget-object v3, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    const-string v4, "com.android.dialer"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1650
    const-string v3, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "acquire PROXIMITY_SCREEN_OFF_WAKE_LOCK from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1652
    iput-boolean v7, p0, Lcom/android/server/power/PowerManagerService;->mProximityLockFromInCallUi:Z

    goto :goto_1

    .line 1658
    :sswitch_5
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    or-int/lit8 v3, v3, 0x40

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    goto/16 :goto_1

    .line 1661
    :sswitch_6
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    or-int/lit16 v3, v3, 0x80

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    goto/16 :goto_1

    .line 1667
    .end local v2    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    :cond_2
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_3

    .line 1668
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit16 v3, v3, -0xc1

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    .line 1670
    :cond_3
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_5

    .line 1672
    :cond_4
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v3, v3, -0xf

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    .line 1674
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-nez v3, :cond_5

    .line 1675
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v3, v3, -0x11

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    .line 1680
    :cond_5
    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mProximityLockFromInCallUi:Z

    if-eqz v3, :cond_6

    .line 1681
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    or-int/lit8 v3, v3, 0x10

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    .line 1686
    :cond_6
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v3, v3, 0x6

    if-eqz v3, :cond_7

    .line 1687
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-ne v3, v7, :cond_a

    .line 1688
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    or-int/lit8 v3, v3, 0x21

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    .line 1693
    :cond_7
    :goto_2
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_8

    .line 1694
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    .line 1698
    :cond_8
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v3, v3, 0x10

    if-nez v3, :cond_9

    .line 1699
    iput-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    .line 1709
    .end local v0    # "i":I
    .end local v1    # "numWakeLocks":I
    :cond_9
    return-void

    .line 1689
    .restart local v0    # "i":I
    .restart local v1    # "numWakeLocks":I
    :cond_a
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_7

    .line 1690
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    goto :goto_2

    .line 1622
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x6 -> :sswitch_3
        0xa -> :sswitch_2
        0x1a -> :sswitch_1
        0x20 -> :sswitch_4
        0x40 -> :sswitch_5
        0x80 -> :sswitch_6
    .end sparse-switch
.end method

.method private updateWakeLockWorkSourceInternal(Landroid/os/IBinder;Landroid/os/WorkSource;Ljava/lang/String;I)V
    .locals 11
    .param p1, "lock"    # Landroid/os/IBinder;
    .param p2, "ws"    # Landroid/os/WorkSource;
    .param p3, "historyTag"    # Ljava/lang/String;
    .param p4, "callingUid"    # I

    .prologue
    .line 1023
    iget-object v10, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 1024
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->findWakeLockIndexLocked(Landroid/os/IBinder;)I

    move-result v9

    .line 1025
    .local v9, "index":I
    if-gez v9, :cond_0

    .line 1030
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wake lock not active: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1047
    .end local v9    # "index":I
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1034
    .restart local v9    # "index":I
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 1040
    .local v1, "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    invoke-virtual {v1, p2}, Lcom/android/server/power/PowerManagerService$WakeLock;->hasSameWorkSource(Landroid/os/WorkSource;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1041
    iget v2, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    iget-object v3, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    iget v5, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    iget v6, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    move-object v0, p0

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockChangingLocked(Lcom/android/server/power/PowerManagerService$WakeLock;ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V

    .line 1044
    iput-object p3, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mHistoryTag:Ljava/lang/String;

    .line 1045
    invoke-virtual {v1, p2}, Lcom/android/server/power/PowerManagerService$WakeLock;->updateWorkSource(Landroid/os/WorkSource;)V

    .line 1047
    :cond_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1048
    return-void
.end method

.method private updateWakefulnessLocked(I)Z
    .locals 7
    .param p1, "dirty"    # I

    .prologue
    const/16 v6, 0x3e8

    .line 1845
    const/4 v0, 0x0

    .line 1846
    .local v0, "changed":Z
    and-int/lit16 v1, p1, 0x697

    if-eqz v1, :cond_0

    .line 1849
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isItBedTimeYetLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1853
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 1854
    .local v2, "time":J
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->shouldNapAtBedTimeLocked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1855
    invoke-direct {p0, v2, v3, v6}, Lcom/android/server/power/PowerManagerService;->napNoUpdateLocked(JI)Z

    move-result v0

    .line 1862
    .end local v2    # "time":J
    :cond_0
    :goto_0
    return v0

    .line 1857
    .restart local v2    # "time":J
    :cond_1
    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->goToSleepNoUpdateLocked(JIII)Z

    move-result v0

    goto :goto_0
.end method

.method private userActivityFromNative(JII)V
    .locals 7
    .param p1, "eventTime"    # J
    .param p3, "event"    # I
    .param p4, "flags"    # I

    .prologue
    .line 1110
    const/16 v6, 0x3e8

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->userActivityInternal(JIII)V

    .line 1111
    return-void
.end method

.method private userActivityInternal(JIII)V
    .locals 3
    .param p1, "eventTime"    # J
    .param p3, "event"    # I
    .param p4, "flags"    # I
    .param p5, "uid"    # I

    .prologue
    .line 1114
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1115
    :try_start_0
    invoke-direct/range {p0 .. p5}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1116
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 1118
    :cond_0
    monitor-exit v1

    .line 1119
    return-void

    .line 1118
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private userActivityNoUpdateLocked(JIII)Z
    .locals 7
    .param p1, "eventTime"    # J
    .param p3, "event"    # I
    .param p4, "flags"    # I
    .param p5, "uid"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/32 v4, 0x20000

    .line 1128
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastSleepTime:J

    cmp-long v2, p1, v2

    if-ltz v2, :cond_0

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    cmp-long v2, p1, v2

    if-ltz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    .line 1165
    :goto_0
    return v0

    .line 1133
    :cond_1
    const-string v2, "userActivity"

    invoke-static {v4, v5, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1135
    :try_start_0
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastInteractivePowerHintTime:J

    cmp-long v2, p1, v2

    if-lez v2, :cond_2

    .line 1136
    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/server/power/PowerManagerService;->powerHintInternal(II)V

    .line 1137
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mLastInteractivePowerHintTime:J

    .line 1140
    :cond_2
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    invoke-virtual {v2, p3, p5}, Lcom/android/server/power/Notifier;->onUserActivity(II)V

    .line 1142
    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3

    and-int/lit8 v2, p4, 0x2

    if-eqz v2, :cond_4

    .line 1163
    :cond_3
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    move v0, v1

    goto :goto_0

    .line 1148
    :cond_4
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_5

    .line 1149
    :try_start_1
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTimeNoChangeLights:J

    cmp-long v2, p1, v2

    if-lez v2, :cond_6

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    cmp-long v2, p1, v2

    if-lez v2, :cond_6

    .line 1151
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTimeNoChangeLights:J

    .line 1152
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1163
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    .line 1156
    :cond_5
    :try_start_2
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    cmp-long v2, p1, v2

    if-lez v2, :cond_6

    .line 1157
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    .line 1158
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1163
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    :cond_6
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    move v0, v1

    .line 1165
    goto :goto_0

    .line 1163
    :catchall_0
    move-exception v0

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private wakeUpInternal(JLjava/lang/String;ILjava/lang/String;I)V
    .locals 3
    .param p1, "eventTime"    # J
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "uid"    # I
    .param p5, "opPackageName"    # Ljava/lang/String;
    .param p6, "opUid"    # I

    .prologue
    .line 1170
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1171
    :try_start_0
    invoke-direct/range {p0 .. p6}, Lcom/android/server/power/PowerManagerService;->wakeUpNoUpdateLocked(JLjava/lang/String;ILjava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1172
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 1174
    :cond_0
    monitor-exit v1

    .line 1175
    return-void

    .line 1174
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private wakeUpNoUpdateLocked(JLjava/lang/String;ILjava/lang/String;I)Z
    .locals 7
    .param p1, "eventTime"    # J
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "reasonUid"    # I
    .param p5, "opPackageName"    # Ljava/lang/String;
    .param p6, "opUid"    # I

    .prologue
    .line 1183
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mLastSleepTime:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-nez v0, :cond_1

    .line 1185
    :cond_0
    const/4 v0, 0x0

    .line 1211
    :goto_0
    return v0

    .line 1188
    :cond_1
    const-wide/32 v0, 0x20000

    const-string v2, "wakeUp"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1190
    :try_start_0
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    packed-switch v0, :pswitch_data_0

    .line 1202
    :goto_1
    :pswitch_0
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    .line 1203
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/power/PowerManagerService;->setWakefulnessLocked(II)V

    .line 1205
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    invoke-virtual {v0, p3, p4, p5, p6}, Lcom/android/server/power/Notifier;->onWakeUp(Ljava/lang/String;ILjava/lang/String;I)V

    .line 1206
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-wide v2, p1

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1209
    const-wide/32 v0, 0x20000

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1211
    const/4 v0, 0x1

    goto :goto_0

    .line 1192
    :pswitch_1
    :try_start_1
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Waking up from sleep (uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1209
    :catchall_0
    move-exception v0

    const-wide/32 v2, 0x20000

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    .line 1195
    :pswitch_2
    :try_start_2
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Waking up from dream (uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1198
    :pswitch_3
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Waking up from dozing (uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1190
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public monitor()V
    .locals 2

    .prologue
    .line 3004
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3005
    :try_start_0
    monitor-exit v1

    .line 3006
    return-void

    .line 3005
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onBootPhase(I)V
    .locals 8
    .param p1, "phase"    # I

    .prologue
    const/16 v0, 0x3e8

    .line 544
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 545
    if-ne p1, v0, :cond_0

    .line 546
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 547
    .local v2, "now":J
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    .line 548
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 549
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x3e8

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z

    .line 551
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 553
    .end local v2    # "now":J
    :cond_0
    monitor-exit v7

    .line 554
    return-void

    .line 553
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onStart()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 535
    const-string v0, "power"

    new-instance v1, Lcom/android/server/power/PowerManagerService$BinderService;

    invoke-direct {v1, p0, v2}, Lcom/android/server/power/PowerManagerService$BinderService;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/power/PowerManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 536
    const-class v0, Landroid/os/PowerManagerInternal;

    new-instance v1, Lcom/android/server/power/PowerManagerService$LocalService;

    invoke-direct {v1, p0, v2}, Lcom/android/server/power/PowerManagerService$LocalService;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/power/PowerManagerService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 538
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    .line 539
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/Watchdog;->addThread(Landroid/os/Handler;)V

    .line 540
    return-void
.end method

.method setDeviceIdleModeInternal(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 2570
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2571
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    if-eq v0, p1, :cond_0

    .line 2572
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    .line 2573
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateWakeLockDisabledStatesLocked()V

    .line 2574
    if-eqz p1, :cond_1

    .line 2575
    const-string v0, "power"

    invoke-static {v0}, Lcom/android/server/EventLogTags;->writeDeviceIdleOnPhase(Ljava/lang/String;)V

    .line 2580
    :cond_0
    :goto_0
    monitor-exit v1

    .line 2581
    return-void

    .line 2577
    :cond_1
    const-string v0, "power"

    invoke-static {v0}, Lcom/android/server/EventLogTags;->writeDeviceIdleOffPhase(Ljava/lang/String;)V

    goto :goto_0

    .line 2580
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setDeviceIdleTempWhitelistInternal([I)V
    .locals 2
    .param p1, "appids"    # [I

    .prologue
    .line 2593
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2594
    :try_start_0
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleTempWhitelist:[I

    .line 2595
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    if-eqz v0, :cond_0

    .line 2596
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateWakeLockDisabledStatesLocked()V

    .line 2598
    :cond_0
    monitor-exit v1

    .line 2599
    return-void

    .line 2598
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setDeviceIdleWhitelistInternal([I)V
    .locals 2
    .param p1, "appids"    # [I

    .prologue
    .line 2584
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2585
    :try_start_0
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleWhitelist:[I

    .line 2586
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    if-eqz v0, :cond_0

    .line 2587
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateWakeLockDisabledStatesLocked()V

    .line 2589
    :cond_0
    monitor-exit v1

    .line 2590
    return-void

    .line 2589
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setMaximumScreenOffTimeoutFromDeviceAdminInternal(I)V
    .locals 2
    .param p1, "timeMs"    # I

    .prologue
    .line 2562
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2563
    :try_start_0
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenOffTimeoutFromDeviceAdmin:I

    .line 2564
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 2565
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 2566
    monitor-exit v1

    .line 2567
    return-void

    .line 2566
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setStayOnSettingInternal(I)V
    .locals 2
    .param p1, "val"    # I

    .prologue
    .line 2557
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "stay_on_while_plugged_in"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2559
    return-void
.end method

.method public systemReady(Lcom/android/internal/app/IAppOpsService;)V
    .locals 13
    .param p1, "appOps"    # Lcom/android/internal/app/IAppOpsService;

    .prologue
    const/4 v12, 0x0

    .line 557
    iget-object v11, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 558
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    .line 559
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    .line 560
    const-class v0, Landroid/service/dreams/DreamManagerInternal;

    invoke-virtual {p0, v0}, Lcom/android/server/power/PowerManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/dreams/DreamManagerInternal;

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDreamManager:Landroid/service/dreams/DreamManagerInternal;

    .line 561
    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {p0, v0}, Lcom/android/server/power/PowerManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManagerInternal;

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 562
    const-class v0, Landroid/view/WindowManagerPolicy;

    invoke-virtual {p0, v0}, Lcom/android/server/power/PowerManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManagerPolicy;

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    .line 563
    const-class v0, Landroid/os/BatteryManagerInternal;

    invoke-virtual {p0, v0}, Lcom/android/server/power/PowerManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManagerInternal;

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    .line 565
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/PowerManager;

    .line 566
    .local v8, "pm":Landroid/os/PowerManager;
    invoke-virtual {v8}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result v0

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingMinimum:I

    .line 567
    invoke-virtual {v8}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v0

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingMaximum:I

    .line 568
    invoke-virtual {v8}, Landroid/os/PowerManager;->getDefaultScreenBrightnessSetting()I

    move-result v0

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingDefault:I

    .line 570
    invoke-virtual {v8}, Landroid/os/PowerManager;->getDefaultButtonBrightness()I

    move-result v0

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mButtonBrightnessSettingDefault:I

    .line 573
    new-instance v10, Landroid/hardware/SystemSensorManager;

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v1}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v10, v0, v1}, Landroid/hardware/SystemSensorManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    .line 577
    .local v10, "sensorManager":Landroid/hardware/SensorManager;
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 578
    new-instance v0, Lcom/android/server/power/Notifier;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    const-string v5, "PowerManagerService.Broadcasts"

    invoke-direct {p0, v5}, Lcom/android/server/power/PowerManagerService;->createSuspendBlockerLocked(Ljava/lang/String;)Lcom/android/server/power/SuspendBlocker;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-direct/range {v0 .. v6}, Lcom/android/server/power/Notifier;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/internal/app/IBatteryStats;Lcom/android/internal/app/IAppOpsService;Lcom/android/server/power/SuspendBlocker;Landroid/view/WindowManagerPolicy;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    .line 582
    new-instance v0, Lcom/android/server/power/WirelessChargerDetector;

    const-string v1, "PowerManagerService.WirelessChargerDetector"

    invoke-direct {p0, v1}, Lcom/android/server/power/PowerManagerService;->createSuspendBlockerLocked(Ljava/lang/String;)Lcom/android/server/power/SuspendBlocker;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-direct {v0, v10, v1, v2}, Lcom/android/server/power/WirelessChargerDetector;-><init>(Landroid/hardware/SensorManager;Lcom/android/server/power/SuspendBlocker;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mWirelessChargerDetector:Lcom/android/server/power/WirelessChargerDetector;

    .line 585
    new-instance v0, Lcom/android/server/power/PowerManagerService$SettingsObserver;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/power/PowerManagerService$SettingsObserver;-><init>(Lcom/android/server/power/PowerManagerService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    .line 587
    const-class v0, Lcom/android/server/lights/LightsManager;

    invoke-virtual {p0, v0}, Lcom/android/server/power/PowerManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/lights/LightsManager;

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLightsManager:Lcom/android/server/lights/LightsManager;

    .line 588
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLightsManager:Lcom/android/server/lights/LightsManager;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mAttentionLight:Lcom/android/server/lights/Light;

    .line 591
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLightsManager:Lcom/android/server/lights/LightsManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mButtonsLight:Lcom/android/server/lights/Light;

    .line 595
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v0, v1, v2, v10}, Landroid/hardware/display/DisplayManagerInternal;->initPowerManagement(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;Landroid/os/Handler;Landroid/hardware/SensorManager;)V

    .line 597
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 600
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 601
    .local v7, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 602
    const/16 v0, 0x3e8

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 603
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/power/PowerManagerService$BatteryReceiver;

    invoke-direct {v1, p0, v12}, Lcom/android/server/power/PowerManagerService$BatteryReceiver;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v0, v1, v7, v12, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 605
    new-instance v7, Landroid/content/IntentFilter;

    .end local v7    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 606
    .restart local v7    # "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.DREAMING_STARTED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 607
    const-string v0, "android.intent.action.DREAMING_STOPPED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 608
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/power/PowerManagerService$DreamReceiver;

    invoke-direct {v1, p0, v12}, Lcom/android/server/power/PowerManagerService$DreamReceiver;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v0, v1, v7, v12, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 610
    new-instance v7, Landroid/content/IntentFilter;

    .end local v7    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 611
    .restart local v7    # "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 612
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/power/PowerManagerService$UserSwitchedReceiver;

    invoke-direct {v1, p0, v12}, Lcom/android/server/power/PowerManagerService$UserSwitchedReceiver;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v0, v1, v7, v12, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 614
    new-instance v7, Landroid/content/IntentFilter;

    .end local v7    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 615
    .restart local v7    # "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 616
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/power/PowerManagerService$DockReceiver;

    invoke-direct {v1, p0, v12}, Lcom/android/server/power/PowerManagerService$DockReceiver;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v0, v1, v7, v12, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 618
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 620
    :try_start_1
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 621
    .local v9, "resolver":Landroid/content/ContentResolver;
    const-string v0, "screensaver_enabled"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v4, -0x1

    invoke-virtual {v9, v0, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 624
    const-string v0, "screensaver_activate_on_sleep"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v4, -0x1

    invoke-virtual {v9, v0, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 627
    const-string v0, "screensaver_activate_on_dock"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v4, -0x1

    invoke-virtual {v9, v0, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 630
    const-string v0, "screen_off_timeout"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v4, -0x1

    invoke-virtual {v9, v0, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 633
    const-string v0, "sleep_timeout"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v4, -0x1

    invoke-virtual {v9, v0, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 636
    const-string v0, "stay_on_while_plugged_in"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v4, -0x1

    invoke-virtual {v9, v0, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 639
    const-string v0, "screen_brightness"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v4, -0x1

    invoke-virtual {v9, v0, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 642
    const-string v0, "screen_brightness_mode"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v4, -0x1

    invoke-virtual {v9, v0, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 645
    const-string v0, "screen_auto_brightness_adj"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v4, -0x1

    invoke-virtual {v9, v0, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 648
    const-string v0, "low_power"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v4, -0x1

    invoke-virtual {v9, v0, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 651
    const-string v0, "low_power_trigger_level"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v4, -0x1

    invoke-virtual {v9, v0, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 654
    const-string v0, "theater_mode_on"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v4, -0x1

    invoke-virtual {v9, v0, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 657
    const-string v0, "double_tap_to_wake"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v4, -0x1

    invoke-virtual {v9, v0, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 662
    const-string v0, "oem.keylock.mode"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    invoke-virtual {v9, v0, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 665
    const-string v0, "buttons_brightness"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v4, -0x1

    invoke-virtual {v9, v0, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 671
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->readConfigurationLocked()V

    .line 672
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateSettingsLocked()V

    .line 673
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 674
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 678
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenSwitchObserver:Landroid/os/UEventObserver;

    const-string v2, "DEVPATH=/devices/virtual/switch/dispswitch"

    invoke-virtual {v0, v2}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 680
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 681
    return-void

    .line 597
    .end local v7    # "filter":Landroid/content/IntentFilter;
    .end local v8    # "pm":Landroid/os/PowerManager;
    .end local v9    # "resolver":Landroid/content/ContentResolver;
    .end local v10    # "sensorManager":Landroid/hardware/SensorManager;
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 680
    .restart local v7    # "filter":Landroid/content/IntentFilter;
    .restart local v8    # "pm":Landroid/os/PowerManager;
    .restart local v10    # "sensorManager":Landroid/hardware/SensorManager;
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method uidGoneInternal(I)V
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 2611
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2612
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 2613
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    if-eqz v0, :cond_0

    .line 2614
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateWakeLockDisabledStatesLocked()V

    .line 2616
    :cond_0
    monitor-exit v1

    .line 2617
    return-void

    .line 2616
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method updateLowPowerModeLocked()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 818
    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeSetting:Z

    if-eqz v4, :cond_0

    .line 823
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "low_power"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 825
    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeSetting:Z

    .line 827
    :cond_0
    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-nez v4, :cond_3

    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mAutoLowPowerModeConfigured:Z

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mAutoLowPowerModeSnoozing:Z

    if-nez v4, :cond_3

    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelLow:Z

    if-eqz v4, :cond_3

    move v0, v2

    .line 829
    .local v0, "autoLowPowerModeEnabled":Z
    :goto_0
    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeSetting:Z

    if-nez v4, :cond_1

    if-eqz v0, :cond_4

    :cond_1
    move v1, v2

    .line 831
    .local v1, "lowPowerModeEnabled":Z
    :goto_1
    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeEnabled:Z

    if-eq v4, v1, :cond_2

    .line 832
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeEnabled:Z

    .line 833
    const/4 v4, 0x5

    if-eqz v1, :cond_5

    :goto_2
    invoke-direct {p0, v4, v2}, Lcom/android/server/power/PowerManagerService;->powerHintInternal(II)V

    .line 834
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/server/power/PowerManagerService$1;

    invoke-direct {v3, p0, v1}, Lcom/android/server/power/PowerManagerService$1;-><init>(Lcom/android/server/power/PowerManagerService;Z)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 855
    :cond_2
    return-void

    .end local v0    # "autoLowPowerModeEnabled":Z
    .end local v1    # "lowPowerModeEnabled":Z
    :cond_3
    move v0, v3

    .line 827
    goto :goto_0

    .restart local v0    # "autoLowPowerModeEnabled":Z
    :cond_4
    move v1, v3

    .line 829
    goto :goto_1

    .restart local v1    # "lowPowerModeEnabled":Z
    :cond_5
    move v2, v3

    .line 833
    goto :goto_2
.end method

.method updateUidProcStateInternal(II)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "procState"    # I

    .prologue
    .line 2602
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2603
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 2604
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    if-eqz v0, :cond_0

    .line 2605
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateWakeLockDisabledStatesLocked()V

    .line 2607
    :cond_0
    monitor-exit v1

    .line 2608
    return-void

    .line 2607
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
