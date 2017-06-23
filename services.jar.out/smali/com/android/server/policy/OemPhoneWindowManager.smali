.class public Lcom/android/server/policy/OemPhoneWindowManager;
.super Lcom/android/server/policy/PhoneWindowManager;
.source "OemPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/OemPhoneWindowManager$9;,
        Lcom/android/server/policy/OemPhoneWindowManager$StkUserActivityTestEnabledReceiver;,
        Lcom/android/server/policy/OemPhoneWindowManager$PhoneStatusBroadcastReceiver;,
        Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;,
        Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;,
        Lcom/android/server/policy/OemPhoneWindowManager$KeyLockModeReceiver;,
        Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;,
        Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;
    }
.end annotation


# static fields
.field private static final ACTION_KEY_LOCK:Ljava/lang/String; = "com.oem.intent.action.KEY_LOCK_MODE"

.field public static DEBUG:Z = false

.field public static DEBUG_INPUT:Z = false

.field public static DEBUG_KEYLOCK:Z = false

.field public static DEBUG_KEYSWAP:Z = false

.field private static final DOUBLE_TAP_TIMEOUT:I = 0xc8

.field private static final KEYS_DEFAULT:I = 0x0

.field private static final KEYS_SWAP:I = 0x1

.field private static final KEY_ACTION_APP_SWITCH:I = 0x2

.field private static final KEY_ACTION_ASSIST:I = 0x3

.field private static final KEY_ACTION_BACK:I = 0xa

.field private static final KEY_ACTION_HOME:I = 0x9

.field private static final KEY_ACTION_LAST_APP:I = 0x7

.field private static final KEY_ACTION_LAUNCH_CAMERA:I = 0x5

.field private static final KEY_ACTION_MENU:I = 0x1

.field private static final KEY_ACTION_NOTHING:I = 0x0

.field private static final KEY_ACTION_QUICK_ACCESS_PAGE:I = 0x8

.field private static final KEY_ACTION_TURN_OFF_SCREEN:I = 0x4

.field private static final KEY_ACTION_VOICE_SEARCH:I = 0x6

.field private static final OEM_SMART_SCREEN_CAPTURE:Ljava/lang/String; = "oem_acc_sensor_three_finger"

.field private static final SHOW_SCREENSHOT_GUIDER_DALAY:I = 0x3e8

.field private static final SHOW_SCREENSHOT_GUIDER_DISABLED_KEY:Ljava/lang/String; = "persist.sys.oem.ssguider"

.field static final SOURCE_OEM:I = 0x10000000

.field private static final STK_USER_ACTIVITY_ACTION:Ljava/lang/String; = "com.oneplus.intent.action.stk.user_activity"

.field private static final STK_USER_ACTIVITY_ENABLED_ACTION:Ljava/lang/String; = "com.oneplus.intent.action.stk.user_activity_enabled"

.field private static final TAG:Ljava/lang/String; = "OemPhoneWindowManager"

.field private static final TP_EDGE_LIMIT_PATH:Ljava/lang/String; = "/proc/touchpanel/tpedge_limit_enable"

.field protected static mFingerprintEnrolling:Z

.field protected static mForceHomeEnabled:Z

.field protected static mKeyLockMode:Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;

.field private static sEnableSoftwareKeys:Z

.field static sLongPressAppSwitchActive:Z


# instance fields
.field private INCALL_ACTIVITY:Ljava/lang/String;

.field private final mAppSwitchDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

.field private mAppSwitchKeyConsumed:Z

.field private mAppSwitchKeyDoubleTapPending:Z

.field private mAppSwitchKeyPressed:Z

.field private final mBackDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

.field private mBackKeyConsumed:Z

.field private mBackKeyDoubleTapPending:Z

.field private mBackKeyPressed:Z

.field private mBackLongPress:Ljava/lang/Runnable;

.field private mDeviceKeyHandler:Lcom/android/server/policy/DeviceKeyHandler;

.field private mDoubleTapOnAppSwitchBehavior:I

.field private mDoubleTapOnBackBehavior:I

.field private mDoubleTapOnHomeBehavior:I

.field private mDoubleTapOnMenuBehavior:I

.field private mEnableFourPointersScreenShot:Z

.field private mEnableThreePointersScreenShot:Z

.field private mFourPointersGestures:Lcom/android/server/policy/OemFourPointersGesturesListener;

.field private mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

.field private final mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

.field private mHomeKeyConsumed:Z

.field private mHomeKeyDoubleTapPending:Z

.field private mHomeKeyPressed:Z

.field private mHomeLongPressRunnable:Ljava/lang/Runnable;

.field protected mInputManager:Lcom/android/server/input/InputManagerService;

.field private mKeyLockModeReceiver:Lcom/android/server/policy/OemPhoneWindowManager$KeyLockModeReceiver;

.field protected mKeysBehavior:I

.field mLock:Ljava/lang/Object;

.field mLockTaskEndDelay:I

.field private mLongPressOnAppSwitchBehavior:I

.field private mLongPressOnBackBehavior:I

.field private mLongPressOnHomeBehavior:I

.field private mLongPressOnMenuBehavior:I

.field private final mMenuDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

.field private mMenuKeyConsumed:Z

.field private mMenuKeyDoubleTapPending:Z

.field private mMenuKeyPressed:Z

.field private mNeedToDismissScreenshotGuider:Z

.field private mNeedToNotifyStkUserActivity:Z

.field private mOemGestureHandler:Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;

.field private mOemGestureOPBugreportHandler:Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;

.field private mPhoneStatusReceiver:Lcom/android/server/policy/OemPhoneWindowManager$PhoneStatusBroadcastReceiver;

.field private mScreenshotGuider:Lcom/android/server/policy/ScreenshotGuider;

.field private mSettingsObserver:Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;

.field mShotScreenHelper:Lcom/android/server/policy/OemShotScreenHelper;

.field private final mStartBugReportTask:Ljava/lang/Runnable;

.field private mStkUserActivityTestEnabledReceiver:Lcom/android/server/policy/OemPhoneWindowManager$StkUserActivityTestEnabledReceiver;

.field private mThreePointersGestures:Lcom/android/server/policy/OemThreePointersGesturesListener;

.field private mVolumeUpKeyConsumedByScreenshotChord:Z

.field private mVolumeUpKeyTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 94
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG:Z

    .line 95
    sget-boolean v0, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG:Z

    or-int/lit8 v0, v0, 0x0

    sput-boolean v0, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    .line 96
    sget-boolean v0, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG:Z

    or-int/lit8 v0, v0, 0x0

    sput-boolean v0, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_KEYLOCK:Z

    .line 97
    sget-boolean v0, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG:Z

    or-int/lit8 v0, v0, 0x0

    sput-boolean v0, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_KEYSWAP:Z

    .line 119
    sget-object v0, Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;->NORMAL:Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;

    sput-object v0, Lcom/android/server/policy/OemPhoneWindowManager;->mKeyLockMode:Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;

    .line 120
    sput-boolean v1, Lcom/android/server/policy/OemPhoneWindowManager;->mForceHomeEnabled:Z

    .line 121
    sput-boolean v1, Lcom/android/server/policy/OemPhoneWindowManager;->mFingerprintEnrolling:Z

    .line 124
    sput-boolean v1, Lcom/android/server/policy/OemPhoneWindowManager;->sLongPressAppSwitchActive:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 85
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;-><init>()V

    .line 100
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLock:Ljava/lang/Object;

    .line 118
    iput v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mKeysBehavior:I

    .line 145
    iput-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mShotScreenHelper:Lcom/android/server/policy/OemShotScreenHelper;

    .line 146
    iput-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mThreePointersGestures:Lcom/android/server/policy/OemThreePointersGesturesListener;

    .line 147
    iput-boolean v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mEnableThreePointersScreenShot:Z

    .line 149
    iput-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureHandler:Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;

    .line 154
    iput-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mFourPointersGestures:Lcom/android/server/policy/OemFourPointersGesturesListener;

    .line 155
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mEnableFourPointersScreenShot:Z

    .line 156
    iput-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureOPBugreportHandler:Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;

    .line 166
    new-instance v0, Lcom/android/server/policy/OemPhoneWindowManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/OemPhoneWindowManager$1;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackLongPress:Ljava/lang/Runnable;

    .line 233
    iput-boolean v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mNeedToDismissScreenshotGuider:Z

    .line 250
    iput-boolean v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mNeedToNotifyStkUserActivity:Z

    .line 253
    const-string v0, "com.android.incallui.InCallActivity"

    iput-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->INCALL_ACTIVITY:Ljava/lang/String;

    .line 255
    new-instance v0, Lcom/android/server/policy/OemPhoneWindowManager$2;

    invoke-direct {v0, p0}, Lcom/android/server/policy/OemPhoneWindowManager$2;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 265
    new-instance v0, Lcom/android/server/policy/OemPhoneWindowManager$3;

    invoke-direct {v0, p0}, Lcom/android/server/policy/OemPhoneWindowManager$3;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mMenuDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 275
    new-instance v0, Lcom/android/server/policy/OemPhoneWindowManager$4;

    invoke-direct {v0, p0}, Lcom/android/server/policy/OemPhoneWindowManager$4;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 285
    new-instance v0, Lcom/android/server/policy/OemPhoneWindowManager$5;

    invoke-direct {v0, p0}, Lcom/android/server/policy/OemPhoneWindowManager$5;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 296
    new-instance v0, Lcom/android/server/policy/OemPhoneWindowManager$6;

    invoke-direct {v0, p0}, Lcom/android/server/policy/OemPhoneWindowManager$6;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeLongPressRunnable:Ljava/lang/Runnable;

    .line 443
    new-instance v0, Lcom/android/server/policy/OemPhoneWindowManager$7;

    invoke-direct {v0, p0}, Lcom/android/server/policy/OemPhoneWindowManager$7;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mStartBugReportTask:Ljava/lang/Runnable;

    .line 1835
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/policy/OemPhoneWindowManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyDoubleTapPending:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;
    .param p1, "x1"    # Z

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyDoubleTapPending:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/policy/OemPhoneWindowManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyConsumed:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;
    .param p1, "x1"    # Z

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyConsumed:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/server/policy/OemPhoneWindowManager;)Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mSettingsObserver:Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/policy/OemPhoneWindowManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->hasFixedInvertedHWButtonsOrder()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/policy/OemPhoneWindowManager;)Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/policy/OemPhoneWindowManager;)Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureHandler:Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;

    return-object v0
.end method

.method static synthetic access$1700()Z
    .locals 1

    .prologue
    .line 85
    sget-boolean v0, Lcom/android/server/policy/OemPhoneWindowManager;->sEnableSoftwareKeys:Z

    return v0
.end method

.method static synthetic access$1702(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 85
    sput-boolean p0, Lcom/android/server/policy/OemPhoneWindowManager;->sEnableSoftwareKeys:Z

    return p0
.end method

.method static synthetic access$1802(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;
    .param p1, "x1"    # Z

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyPressed:Z

    return p1
.end method

.method static synthetic access$1902(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;
    .param p1, "x1"    # Z

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyPressed:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/policy/OemPhoneWindowManager;ILandroid/view/KeyEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/KeyEvent;

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/OemPhoneWindowManager;->performKeyAction(ILandroid/view/KeyEvent;)V

    return-void
.end method

.method static synthetic access$2002(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;
    .param p1, "x1"    # Z

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mMenuKeyPressed:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/server/policy/OemPhoneWindowManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->readConfigurationDependentBehaviors()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/policy/OemPhoneWindowManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .prologue
    .line 85
    iget v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnHomeBehavior:I

    return v0
.end method

.method static synthetic access$2202(Lcom/android/server/policy/OemPhoneWindowManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;
    .param p1, "x1"    # I

    .prologue
    .line 85
    iput p1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnHomeBehavior:I

    return p1
.end method

.method static synthetic access$2500(Lcom/android/server/policy/OemPhoneWindowManager;)Lcom/android/server/policy/OemThreePointersGesturesListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mThreePointersGestures:Lcom/android/server/policy/OemThreePointersGesturesListener;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;
    .param p1, "x1"    # Z

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mEnableThreePointersScreenShot:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/android/server/policy/OemPhoneWindowManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->isScreenshotGuiderDisabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/android/server/policy/OemPhoneWindowManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->setScreenshotGuiderDisabled()V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/policy/OemPhoneWindowManager;)Lcom/android/server/policy/OemPhoneWindowManager$PhoneStatusBroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPhoneStatusReceiver:Lcom/android/server/policy/OemPhoneWindowManager$PhoneStatusBroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/android/server/policy/OemPhoneWindowManager;Lcom/android/server/policy/OemPhoneWindowManager$PhoneStatusBroadcastReceiver;)Lcom/android/server/policy/OemPhoneWindowManager$PhoneStatusBroadcastReceiver;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;
    .param p1, "x1"    # Lcom/android/server/policy/OemPhoneWindowManager$PhoneStatusBroadcastReceiver;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPhoneStatusReceiver:Lcom/android/server/policy/OemPhoneWindowManager$PhoneStatusBroadcastReceiver;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/server/policy/OemPhoneWindowManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mMenuKeyDoubleTapPending:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/android/server/policy/OemPhoneWindowManager;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mStartBugReportTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;
    .param p1, "x1"    # Z

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mMenuKeyDoubleTapPending:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/server/policy/OemPhoneWindowManager;)Lcom/android/server/policy/ScreenshotGuider;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mScreenshotGuider:Lcom/android/server/policy/ScreenshotGuider;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/android/server/policy/OemPhoneWindowManager;Lcom/android/server/policy/ScreenshotGuider;)Lcom/android/server/policy/ScreenshotGuider;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;
    .param p1, "x1"    # Lcom/android/server/policy/ScreenshotGuider;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mScreenshotGuider:Lcom/android/server/policy/ScreenshotGuider;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/android/server/policy/OemPhoneWindowManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mNeedToDismissScreenshotGuider:Z

    return v0
.end method

.method static synthetic access$3202(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;
    .param p1, "x1"    # Z

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mNeedToDismissScreenshotGuider:Z

    return p1
.end method

.method static synthetic access$3300(Lcom/android/server/policy/OemPhoneWindowManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->hideScreenshotGuider()V

    return-void
.end method

.method static synthetic access$3402(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;
    .param p1, "x1"    # Z

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mNeedToNotifyStkUserActivity:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/policy/OemPhoneWindowManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mMenuKeyConsumed:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;
    .param p1, "x1"    # Z

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mMenuKeyConsumed:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/policy/OemPhoneWindowManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyDoubleTapPending:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;
    .param p1, "x1"    # Z

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyDoubleTapPending:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/policy/OemPhoneWindowManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyConsumed:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;
    .param p1, "x1"    # Z

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyConsumed:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/policy/OemPhoneWindowManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyDoubleTapPending:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;
    .param p1, "x1"    # Z

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyDoubleTapPending:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/policy/OemPhoneWindowManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyConsumed:Z

    return v0
.end method

.method private cancelErrorLog()V
    .locals 2

    .prologue
    .line 418
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mStartBugReportTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 419
    return-void
.end method

.method private getLastTask(Landroid/content/Context;I)Landroid/app/ActivityManager$RecentTaskInfo;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1528
    const-string v0, "com.android.systemui"

    .line 1529
    .local v0, "SYSTEMUI_PACKAGE":Ljava/lang/String;
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/OemPhoneWindowManager;->resolveCurrentLauncherPackage(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 1530
    .local v2, "defaultHomePackage":Ljava/lang/String;
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 1531
    .local v1, "am":Landroid/app/IActivityManager;
    const/4 v7, 0x5

    const/4 v8, 0x2

    invoke-interface {v1, v7, v8, p2}, Landroid/app/IActivityManager;->getRecentTasks(III)Ljava/util/List;

    move-result-object v6

    .line 1534
    .local v6, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_2

    .line 1535
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 1536
    .local v5, "task":Landroid/app/ActivityManager$RecentTaskInfo;
    iget-object v7, v5, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    if-eqz v7, :cond_0

    .line 1537
    iget-object v7, v5, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    iget-object v8, v5, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1539
    :cond_0
    iget-object v7, v5, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 1540
    .local v4, "packageName":Ljava/lang/String;
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "com.android.systemui"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1542
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 1546
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "task":Landroid/app/ActivityManager$RecentTaskInfo;
    :goto_1
    return-object v7

    .line 1534
    .restart local v4    # "packageName":Ljava/lang/String;
    .restart local v5    # "task":Landroid/app/ActivityManager$RecentTaskInfo;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1546
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "task":Landroid/app/ActivityManager$RecentTaskInfo;
    :cond_2
    const/4 v7, 0x0

    goto :goto_1
.end method

.method private getScreenshotChordLongPressDelay()J
    .locals 4

    .prologue
    .line 422
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    const/high16 v0, 0x3fc80000    # 1.5625f

    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getDeviceGlobalActionKeyTimeout()J

    move-result-wide v2

    long-to-float v1, v2

    mul-float/2addr v0, v1

    float-to-long v0, v0

    .line 427
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getDeviceGlobalActionKeyTimeout()J

    move-result-wide v0

    goto :goto_0
.end method

.method private hasFixedInvertedHWButtonsOrder()Z
    .locals 2

    .prologue
    .line 1855
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 1856
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oem.button.inverted.hw.key.order"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 1858
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasInComingCall()Z
    .locals 4

    .prologue
    .line 431
    const/4 v1, 0x0

    .line 433
    .local v1, "inCallFocused":Z
    iget-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_0

    .line 434
    iget-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 435
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->INCALL_ACTIVITY:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 436
    const/4 v1, 0x1

    .line 440
    .end local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    return v1
.end method

.method private hideScreenshotGuider()V
    .locals 2

    .prologue
    .line 1792
    const-string v0, "OemPhoneWindowManager"

    const-string v1, "hideScreenshotGuider"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1793
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mScreenshotGuider:Lcom/android/server/policy/ScreenshotGuider;

    if-eqz v0, :cond_0

    .line 1794
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mScreenshotGuider:Lcom/android/server/policy/ScreenshotGuider;

    invoke-virtual {v0}, Lcom/android/server/policy/ScreenshotGuider;->hide()V

    .line 1797
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPhoneStatusReceiver:Lcom/android/server/policy/OemPhoneWindowManager$PhoneStatusBroadcastReceiver;

    if-eqz v0, :cond_1

    .line 1798
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPhoneStatusReceiver:Lcom/android/server/policy/OemPhoneWindowManager$PhoneStatusBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1799
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPhoneStatusReceiver:Lcom/android/server/policy/OemPhoneWindowManager$PhoneStatusBroadcastReceiver;

    .line 1802
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mNeedToDismissScreenshotGuider:Z

    .line 1803
    return-void
.end method

.method private isScreenshotGuiderDisabled()Z
    .locals 3

    .prologue
    .line 1758
    const-string v0, "disabled"

    const-string v1, "persist.sys.oem.ssguider"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private launchCameraAction()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 1491
    invoke-virtual {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->sendCloseSystemWindows()V

    .line 1492
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.KEYGUARD_CAMERA_TRANSITION"

    invoke-direct {v1, v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1493
    .local v1, "intent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    const/4 v6, 0x0

    move-object v4, v3

    move-object v5, v3

    move-object v7, v3

    move-object v8, v3

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1495
    return-void
.end method

.method private launchQuickAccessPage()V
    .locals 2

    .prologue
    .line 1565
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.launcher.action.OPEN_QUICK_PAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1566
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1567
    return-void
.end method

.method private performKeyAction(ILandroid/view/KeyEvent;)V
    .locals 4
    .param p1, "behavior"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x4

    .line 1570
    invoke-virtual {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->keyguardOn()Z

    move-result v0

    .line 1571
    .local v0, "keyguardOn":Z
    invoke-virtual {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->isUserSetupComplete()Z

    move-result v1

    .line 1574
    .local v1, "userSetupComplete":Z
    if-nez v1, :cond_0

    .line 1575
    packed-switch p1, :pswitch_data_0

    .line 1621
    :goto_0
    :pswitch_0
    return-void

    .line 1577
    :pswitch_1
    invoke-direct {p0, v2}, Lcom/android/server/policy/OemPhoneWindowManager;->triggerVirtualKeypress(I)V

    goto :goto_0

    .line 1585
    :cond_0
    packed-switch p1, :pswitch_data_1

    goto :goto_0

    .line 1593
    :pswitch_2
    const/16 v2, 0x52

    invoke-direct {p0, v2}, Lcom/android/server/policy/OemPhoneWindowManager;->triggerVirtualKeypress(I)V

    goto :goto_0

    .line 1587
    :pswitch_3
    invoke-direct {p0, v2}, Lcom/android/server/policy/OemPhoneWindowManager;->triggerVirtualKeypress(I)V

    goto :goto_0

    .line 1590
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->handleShortPressOnHome()V

    goto :goto_0

    .line 1596
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->toggleRecentApps()V

    goto :goto_0

    .line 1599
    :pswitch_6
    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/android/server/policy/OemPhoneWindowManager;->launchAssistAction(Ljava/lang/String;I)V

    goto :goto_0

    .line 1602
    :pswitch_7
    invoke-direct {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->putDeviceToSleep()V

    goto :goto_0

    .line 1605
    :pswitch_8
    invoke-direct {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->launchCameraAction()V

    goto :goto_0

    .line 1608
    :pswitch_9
    invoke-virtual {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->launchAssistLongPressAction()V

    goto :goto_0

    .line 1611
    :pswitch_a
    iget-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mCurrentUserId:I

    invoke-direct {p0, v2, v3}, Lcom/android/server/policy/OemPhoneWindowManager;->switchToLastApp(Landroid/content/Context;I)Z

    goto :goto_0

    .line 1614
    :pswitch_b
    invoke-direct {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->launchQuickAccessPage()V

    goto :goto_0

    .line 1575
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
    .end packed-switch

    .line 1585
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private putDeviceToSleep()V
    .locals 4

    .prologue
    .line 1558
    sget-boolean v0, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1559
    const-string v0, "OemPhoneWindowManager"

    const-string v1, " ++++++++++ putDeviceToSleep() "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1561
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 1562
    return-void
.end method

.method private readConfigurationDependentBehaviors()V
    .locals 13

    .prologue
    const/16 v12, 0x8

    const/4 v11, 0x0

    .line 1386
    iget-object v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 1389
    .local v8, "resolver":Landroid/content/ContentResolver;
    iget-object v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x10e005e

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 1391
    .local v6, "defaultLongPressOnHomeBehavior":I
    const-string v9, "key_home_long_press_action"

    invoke-static {v8, v9, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnHomeBehavior:I

    .line 1394
    iget v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnHomeBehavior:I

    if-ltz v9, :cond_0

    iget v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnHomeBehavior:I

    if-le v9, v12, :cond_1

    .line 1396
    :cond_0
    iput v11, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnHomeBehavior:I

    .line 1400
    :cond_1
    iget-object v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x10e005f

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 1402
    .local v2, "defaultDoubleTapOnHomeBehavior":I
    const-string v9, "key_home_double_tap_action"

    invoke-static {v8, v9, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    .line 1405
    iget v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    if-ltz v9, :cond_2

    iget v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    if-le v9, v12, :cond_3

    .line 1407
    :cond_2
    iput v11, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    .line 1411
    :cond_3
    iget-object v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x10e0060

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    .line 1413
    .local v7, "defaultLongPressOnMenuBehavior":I
    const-string v9, "key_menu_long_press_action"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnMenuBehavior:I

    .line 1416
    iget v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnMenuBehavior:I

    if-ltz v9, :cond_4

    iget v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnMenuBehavior:I

    if-le v9, v12, :cond_5

    .line 1418
    :cond_4
    iput v11, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnMenuBehavior:I

    .line 1422
    :cond_5
    iget-object v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x10e0061

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 1424
    .local v3, "defaultDoubleTapOnMenuBehavior":I
    const-string v9, "key_menu_double_tap_action"

    invoke-static {v8, v9, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnMenuBehavior:I

    .line 1427
    iget v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnMenuBehavior:I

    if-ltz v9, :cond_6

    iget v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnMenuBehavior:I

    if-le v9, v12, :cond_7

    .line 1429
    :cond_6
    iput v11, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnMenuBehavior:I

    .line 1433
    :cond_7
    iget-object v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x10e0062

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 1435
    .local v5, "defaultLongPressOnBackBehavior":I
    const-string v9, "key_back_long_press_action"

    invoke-static {v8, v9, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnBackBehavior:I

    .line 1438
    iget v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnBackBehavior:I

    if-ltz v9, :cond_8

    iget v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnBackBehavior:I

    if-le v9, v12, :cond_9

    .line 1440
    :cond_8
    iput v11, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnBackBehavior:I

    .line 1444
    :cond_9
    iget-object v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x10e0063

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 1446
    .local v1, "defaultDoubleTapOnBackBehavior":I
    const-string v9, "key_back_double_tap_action"

    invoke-static {v8, v9, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnBackBehavior:I

    .line 1449
    iget v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnBackBehavior:I

    if-ltz v9, :cond_a

    iget v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnBackBehavior:I

    if-le v9, v12, :cond_b

    .line 1451
    :cond_a
    iput v11, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnBackBehavior:I

    .line 1455
    :cond_b
    iget-object v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x10e0064

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 1457
    .local v4, "defaultLongPressOnAppSwitchBehavior":I
    const-string v9, "key_app_switch_long_press_action"

    invoke-static {v8, v9, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnAppSwitchBehavior:I

    .line 1460
    iget v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnAppSwitchBehavior:I

    if-ltz v9, :cond_c

    iget v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnAppSwitchBehavior:I

    if-le v9, v12, :cond_d

    .line 1462
    :cond_c
    iput v11, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnAppSwitchBehavior:I

    .line 1466
    :cond_d
    iget-object v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x10e0065

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 1468
    .local v0, "defaultDoubleTapOnAppSwitchBehavior":I
    const-string v9, "key_app_switch_double_tap_action"

    invoke-static {v8, v9, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnAppSwitchBehavior:I

    .line 1471
    iget v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnAppSwitchBehavior:I

    if-ltz v9, :cond_e

    iget v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnAppSwitchBehavior:I

    if-le v9, v12, :cond_f

    .line 1473
    :cond_e
    iput v11, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnAppSwitchBehavior:I

    .line 1475
    :cond_f
    return-void
.end method

.method private recordErrorLog()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x96

    .line 404
    iget-boolean v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mScreenshotChordEnabled:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mScreenshotChordVolumeUpKeyTriggered:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mScreenshotChordPowerKeyTriggered:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mScreenshotChordVolumeDownKeyTriggered:Z

    if-nez v2, :cond_0

    .line 407
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 408
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mVolumeUpKeyTime:J

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    iget-wide v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mScreenshotChordPowerKeyTime:J

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 410
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mVolumeUpKeyConsumedByScreenshotChord:Z

    .line 411
    invoke-direct {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->cancelErrorLog()V

    .line 412
    iget-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mStartBugReportTask:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->getScreenshotChordLongPressDelay()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 415
    .end local v0    # "now":J
    :cond_0
    return-void
.end method

.method private resolveCurrentLauncherPackage(Landroid/content/Context;I)Ljava/lang/String;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I

    .prologue
    .line 1550
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "android.intent.category.HOME"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 1552
    .local v1, "launcherIntent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1553
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, p2}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 1554
    .local v0, "launcherInfo":Landroid/content/pm/ResolveInfo;
    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    return-object v3
.end method

.method private setScreenshotGuiderDisabled()V
    .locals 4

    .prologue
    .line 1762
    const-string v0, "OemPhoneWindowManager"

    const-string v1, "setScreenshotGuiderDisabled was called:"

    new-instance v2, Ljava/lang/Exception;

    const-string v3, "setScreenshotGuiderDisabled"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1764
    const-string v0, "persist.sys.oem.ssguider"

    const-string v1, "disabled"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1765
    return-void
.end method

.method private showScreenshotGuider()V
    .locals 4

    .prologue
    .line 1774
    invoke-static {}, Landroid/util/OpFeatures;->isSupportedScreenshotGuider()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->isScreenshotGuiderDisabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mEnableThreePointersScreenShot:Z

    if-eqz v0, :cond_0

    .line 1776
    const-string v0, "OemPhoneWindowManager"

    const-string v1, "showScreenshotGuider"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1777
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    new-instance v1, Lcom/android/server/policy/OemPhoneWindowManager$8;

    invoke-direct {v1, p0}, Lcom/android/server/policy/OemPhoneWindowManager$8;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1789
    :cond_0
    return-void
.end method

.method private switchToLastApp(Landroid/content/Context;I)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I

    .prologue
    .line 1499
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/OemPhoneWindowManager;->switchToLastAppInternal(Landroid/content/Context;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1503
    :goto_0
    return v1

    .line 1500
    :catch_0
    move-exception v0

    .line 1501
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OemPhoneWindowManager"

    const-string v2, "Could not switch to last app"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1503
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private switchToLastAppInternal(Landroid/content/Context;I)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1508
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/OemPhoneWindowManager;->getLastTask(Landroid/content/Context;I)Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v1

    .line 1510
    .local v1, "lastTask":Landroid/app/ActivityManager$RecentTaskInfo;
    if-eqz v1, :cond_0

    iget v3, v1, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    if-gez v3, :cond_1

    .line 1511
    :cond_0
    const/4 v3, 0x0

    .line 1523
    :goto_0
    return v3

    .line 1514
    :cond_1
    iget-object v3, v1, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1515
    .local v2, "packageName":Ljava/lang/String;
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 1517
    .local v0, "am":Landroid/app/IActivityManager;
    sget-boolean v3, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 1518
    const-string v3, "OemPhoneWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "switching to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1521
    :cond_2
    iget v3, v1, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-interface {v0, v3, v4, v5}, Landroid/app/IActivityManager;->moveTaskToFront(IILandroid/os/Bundle;)V

    .line 1523
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private triggerVirtualKeypress(I)V
    .locals 15
    .param p1, "keyCode"    # I

    .prologue
    .line 1478
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    .line 1479
    .local v0, "im":Landroid/hardware/input/InputManager;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 1481
    .local v2, "now":J
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/16 v12, 0x8

    const v13, 0x10000101

    move-wide v4, v2

    move/from16 v7, p1

    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 1484
    .local v1, "downEvent":Landroid/view/KeyEvent;
    const/4 v4, 0x1

    invoke-static {v1, v4}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v14

    .line 1486
    .local v14, "upEvent":Landroid/view/KeyEvent;
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 1487
    const/4 v4, 0x0

    invoke-virtual {v0, v14, v4}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 1488
    return-void
.end method

.method private updateLidSwitchState(I)V
    .locals 4
    .param p1, "lidState"    # I

    .prologue
    .line 1748
    iget-boolean v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mSystemReady:Z

    if-eqz v1, :cond_0

    .line 1749
    const-string v1, "OemPhoneWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateLidSwitchState :lidState= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1750
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.LID_SWITCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1751
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "lidOpen"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1752
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1754
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method


# virtual methods
.method public enableScreenAfterBoot()V
    .locals 1

    .prologue
    .line 1736
    invoke-virtual {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->readLidState()V

    .line 1737
    iget v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLidState:I

    invoke-direct {p0, v0}, Lcom/android/server/policy/OemPhoneWindowManager;->updateLidSwitchState(I)V

    .line 1738
    invoke-super {p0}, Lcom/android/server/policy/PhoneWindowManager;->enableScreenAfterBoot()V

    .line 1739
    return-void
.end method

.method public init(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManager"    # Landroid/view/IWindowManager;
    .param p3, "windowManagerFuncs"    # Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .prologue
    const/4 v10, 0x0

    .line 306
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/policy/PhoneWindowManager;->init(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V

    .line 309
    invoke-static {}, Landroid/util/OpFeatures;->isSupportedKeyLock()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 310
    new-instance v7, Lcom/android/server/policy/OemPhoneWindowManager$KeyLockModeReceiver;

    invoke-direct {v7, p0, v10}, Lcom/android/server/policy/OemPhoneWindowManager$KeyLockModeReceiver;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;Lcom/android/server/policy/OemPhoneWindowManager$1;)V

    iput-object v7, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mKeyLockModeReceiver:Lcom/android/server/policy/OemPhoneWindowManager$KeyLockModeReceiver;

    .line 311
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 312
    .local v3, "keyModeFilter":Landroid/content/IntentFilter;
    const-string v7, "com.oem.intent.action.KEY_LOCK_MODE"

    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 313
    iget-object v7, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mKeyLockModeReceiver:Lcom/android/server/policy/OemPhoneWindowManager$KeyLockModeReceiver;

    invoke-virtual {p1, v7, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 318
    .end local v3    # "keyModeFilter":Landroid/content/IntentFilter;
    :cond_0
    invoke-static {}, Landroid/util/OpFeatures;->isH2()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 319
    new-instance v5, Landroid/os/HandlerThread;

    const-string v7, "ThreePointersThread"

    invoke-direct {v5, v7}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 320
    .local v5, "mRecognizeThread":Landroid/os/HandlerThread;
    invoke-virtual {v5}, Landroid/os/HandlerThread;->start()V

    .line 321
    new-instance v7, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-direct {v7, p0, v8}, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;Landroid/os/Looper;)V

    iput-object v7, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureHandler:Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;

    .line 322
    new-instance v7, Lcom/android/server/policy/OemThreePointersGesturesListener;

    iget-object v8, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureHandler:Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;

    invoke-direct {v7, v8, v9}, Lcom/android/server/policy/OemThreePointersGesturesListener;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v7, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mThreePointersGestures:Lcom/android/server/policy/OemThreePointersGesturesListener;

    .line 324
    new-instance v7, Lcom/android/server/policy/OemShotScreenHelper;

    invoke-direct {v7}, Lcom/android/server/policy/OemShotScreenHelper;-><init>()V

    iput-object v7, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mShotScreenHelper:Lcom/android/server/policy/OemShotScreenHelper;

    .line 325
    iget-object v7, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mShotScreenHelper:Lcom/android/server/policy/OemShotScreenHelper;

    iget-object v8, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureHandler:Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;

    iget-object v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v8, v9}, Lcom/android/server/policy/OemShotScreenHelper;->init(Landroid/os/Handler;Landroid/content/Context;)V

    .line 326
    iget-object v7, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    iget-object v8, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mThreePointersGestures:Lcom/android/server/policy/OemThreePointersGesturesListener;

    invoke-interface {v7, v8}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->registerPointerEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V

    .line 331
    .end local v5    # "mRecognizeThread":Landroid/os/HandlerThread;
    :cond_1
    const/4 v2, 0x1

    .line 332
    .local v2, "installedOPBugreport":Z
    iget-object v7, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 334
    .local v6, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v7, "com.oneplus.opbugreport"

    const/4 v8, 0x4

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    :goto_0
    if-eqz v2, :cond_2

    .line 339
    new-instance v4, Landroid/os/HandlerThread;

    const-string v7, "FourPointersThread"

    invoke-direct {v4, v7}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 340
    .local v4, "mRecognize4PointThread":Landroid/os/HandlerThread;
    invoke-virtual {v4}, Landroid/os/HandlerThread;->start()V

    .line 341
    new-instance v7, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-direct {v7, p0, v8}, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;Landroid/os/Looper;)V

    iput-object v7, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureOPBugreportHandler:Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;

    .line 342
    new-instance v7, Lcom/android/server/policy/OemFourPointersGesturesListener;

    iget-object v8, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureOPBugreportHandler:Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;

    invoke-direct {v7, v8, v9}, Lcom/android/server/policy/OemFourPointersGesturesListener;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v7, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mFourPointersGestures:Lcom/android/server/policy/OemFourPointersGesturesListener;

    .line 344
    iget-object v7, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mFourPointersGestures:Lcom/android/server/policy/OemFourPointersGesturesListener;

    iget-boolean v8, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mEnableFourPointersScreenShot:Z

    invoke-virtual {v7, v8}, Lcom/android/server/policy/OemFourPointersGesturesListener;->setOPBugreporttEnable(Z)V

    .line 345
    iget-object v7, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    iget-object v8, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mFourPointersGestures:Lcom/android/server/policy/OemFourPointersGesturesListener;

    invoke-interface {v7, v8}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->registerPointerEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V

    .line 349
    .end local v4    # "mRecognize4PointThread":Landroid/os/HandlerThread;
    :cond_2
    new-instance v7, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    invoke-direct {v7, p0, v10}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;Lcom/android/server/policy/OemPhoneWindowManager$1;)V

    iput-object v7, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    .line 350
    new-instance v7, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;

    iget-object v8, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    invoke-direct {v7, p0, v8}, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;Landroid/os/Handler;)V

    iput-object v7, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mSettingsObserver:Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;

    .line 352
    iget-object v7, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mSettingsObserver:Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;

    invoke-virtual {v7}, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->observe()V

    .line 355
    iget-object v7, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDeviceKeyHandler:Lcom/android/server/policy/DeviceKeyHandler;

    if-nez v7, :cond_3

    .line 356
    new-instance v7, Lcom/android/server/policy/DeviceKeyHandler;

    iget-object v8, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Lcom/android/server/policy/DeviceKeyHandler;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDeviceKeyHandler:Lcom/android/server/policy/DeviceKeyHandler;

    .line 361
    :cond_3
    iget-object v7, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10e00ae

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    iput v7, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLockTaskEndDelay:I

    .line 367
    invoke-static {}, Landroid/util/OpFeatures;->isSupportedScreenshotGuider()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-direct {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->isScreenshotGuiderDisabled()Z

    move-result v7

    if-nez v7, :cond_4

    .line 368
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 369
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v7, "android.intent.action.PHONE_STATE"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 370
    new-instance v7, Lcom/android/server/policy/OemPhoneWindowManager$PhoneStatusBroadcastReceiver;

    invoke-direct {v7, p0, v10}, Lcom/android/server/policy/OemPhoneWindowManager$PhoneStatusBroadcastReceiver;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;Lcom/android/server/policy/OemPhoneWindowManager$1;)V

    iput-object v7, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPhoneStatusReceiver:Lcom/android/server/policy/OemPhoneWindowManager$PhoneStatusBroadcastReceiver;

    .line 371
    iget-object v7, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPhoneStatusReceiver:Lcom/android/server/policy/OemPhoneWindowManager$PhoneStatusBroadcastReceiver;

    invoke-virtual {v7, v8, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 376
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :cond_4
    invoke-static {}, Landroid/util/OpFeatures;->isO2()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 377
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 378
    .restart local v1    # "filter":Landroid/content/IntentFilter;
    const-string v7, "com.oneplus.intent.action.stk.user_activity_enabled"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 379
    new-instance v7, Lcom/android/server/policy/OemPhoneWindowManager$StkUserActivityTestEnabledReceiver;

    invoke-direct {v7, p0, v10}, Lcom/android/server/policy/OemPhoneWindowManager$StkUserActivityTestEnabledReceiver;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;Lcom/android/server/policy/OemPhoneWindowManager$1;)V

    iput-object v7, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mStkUserActivityTestEnabledReceiver:Lcom/android/server/policy/OemPhoneWindowManager$StkUserActivityTestEnabledReceiver;

    .line 380
    iget-object v7, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mStkUserActivityTestEnabledReceiver:Lcom/android/server/policy/OemPhoneWindowManager$StkUserActivityTestEnabledReceiver;

    invoke-virtual {v7, v8, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 383
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :cond_5
    return-void

    .line 335
    :catch_0
    move-exception v0

    .line 336
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method public interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J
    .locals 32
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .prologue
    .line 686
    invoke-static {}, Landroid/util/OpFeatures;->isO2()Z

    move-result v28

    if-eqz v28, :cond_0

    .line 687
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    if-eqz v28, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v28

    const-string v29, "oem.virtual.hw.key"

    invoke-virtual/range {v28 .. v29}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_0

    .line 689
    const/high16 v28, 0x1000000

    and-int v28, v28, p3

    if-nez v28, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v28

    and-int/lit8 v28, v28, 0x40

    if-eqz v28, :cond_0

    .line 692
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v28

    and-int/lit8 v28, v28, -0x41

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-static {v0, v1}, Landroid/view/KeyEvent;->changeFlags(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object p2

    .line 698
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v9

    .line 699
    .local v9, "flags":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v14

    .line 700
    .local v14, "keyCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v18

    .line 701
    .local v18, "metaState":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v20

    .line 702
    .local v20, "repeatCount":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getSource()I

    move-result v21

    .line 703
    .local v21, "source":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/OemPhoneWindowManager;->keyguardOn()Z

    move-result v15

    .line 704
    .local v15, "keyguardOn":Z
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v28

    if-nez v28, :cond_3

    const/4 v7, 0x1

    .line 705
    .local v7, "down":Z
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_4

    const/16 v26, 0x1

    .line 706
    .local v26, "up":Z
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v6

    .line 707
    .local v6, "canceled":Z
    and-int/lit16 v0, v9, 0x80

    move/from16 v28, v0

    if-eqz v28, :cond_5

    const/16 v16, 0x1

    .line 709
    .local v16, "longPress":Z
    :goto_2
    invoke-static {}, Landroid/util/OpFeatures;->isH2()Z

    move-result v28

    if-eqz v28, :cond_6

    const/4 v13, 0x0

    .line 711
    .local v13, "isFromNavbar":Z
    :goto_3
    const/high16 v28, 0x20000000

    and-int v28, v28, p3

    if-eqz v28, :cond_8

    const/4 v12, 0x1

    .line 712
    .local v12, "interactive":Z
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v28

    const/16 v29, -0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_9

    const/16 v27, 0x1

    .line 713
    .local v27, "virtualKey":Z
    :goto_5
    const/16 v28, 0x4

    move/from16 v0, v28

    if-ne v14, v0, :cond_a

    const/4 v5, 0x1

    .line 714
    .local v5, "backKeyCode":Z
    :goto_6
    const/16 v28, 0x3

    move/from16 v0, v28

    if-ne v14, v0, :cond_b

    const/4 v10, 0x1

    .line 715
    .local v10, "homeKeyCode":Z
    :goto_7
    const/16 v28, 0x52

    move/from16 v0, v28

    if-ne v14, v0, :cond_c

    const/16 v17, 0x1

    .line 716
    .local v17, "menuKeyCode":Z
    :goto_8
    const/16 v28, 0xbb

    move/from16 v0, v28

    if-ne v14, v0, :cond_d

    const/16 v22, 0x1

    .line 717
    .local v22, "switchKeyCode":Z
    :goto_9
    const/16 v28, 0x1a

    move/from16 v0, v28

    if-ne v14, v0, :cond_e

    const/16 v19, 0x1

    .line 719
    .local v19, "powerKeyCode":Z
    :goto_a
    if-eqz p1, :cond_f

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 720
    .local v4, "attrs":Landroid/view/WindowManager$LayoutParams;
    :goto_b
    if-eqz v4, :cond_10

    iget v0, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v24, v0

    .line 722
    .local v24, "type":I
    :goto_c
    sget-boolean v28, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v28, :cond_1

    .line 723
    const-string v28, "OemPhoneWindowManager"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, " ++++++++++ interceptKeyBeforeDispatching "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", interactive = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    :cond_1
    invoke-static {}, Landroid/util/OpFeatures;->isSupportedKeyLock()Z

    move-result v28

    if-eqz v28, :cond_2

    .line 728
    sget-object v28, Lcom/android/server/policy/OemPhoneWindowManager$9;->$SwitchMap$com$android$server$policy$OemPhoneWindowManager$KeyLockMode:[I

    sget-object v29, Lcom/android/server/policy/OemPhoneWindowManager;->mKeyLockMode:Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;

    invoke-virtual/range {v29 .. v29}, Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;->ordinal()I

    move-result v29

    aget v28, v28, v29

    packed-switch v28, :pswitch_data_0

    .line 749
    :cond_2
    if-eqz v22, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/OemPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v28

    if-nez v28, :cond_13

    .line 750
    const-wide/16 v28, -0x1

    .line 1133
    :goto_d
    return-wide v28

    .line 704
    .end local v4    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v5    # "backKeyCode":Z
    .end local v6    # "canceled":Z
    .end local v7    # "down":Z
    .end local v10    # "homeKeyCode":Z
    .end local v12    # "interactive":Z
    .end local v13    # "isFromNavbar":Z
    .end local v16    # "longPress":Z
    .end local v17    # "menuKeyCode":Z
    .end local v19    # "powerKeyCode":Z
    .end local v22    # "switchKeyCode":Z
    .end local v24    # "type":I
    .end local v26    # "up":Z
    .end local v27    # "virtualKey":Z
    :cond_3
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 705
    .restart local v7    # "down":Z
    :cond_4
    const/16 v26, 0x0

    goto/16 :goto_1

    .line 707
    .restart local v6    # "canceled":Z
    .restart local v26    # "up":Z
    :cond_5
    const/16 v16, 0x0

    goto/16 :goto_2

    .line 709
    .restart local v16    # "longPress":Z
    :cond_6
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v28

    and-int/lit8 v28, v28, 0x40

    if-eqz v28, :cond_7

    const/4 v13, 0x1

    goto/16 :goto_3

    :cond_7
    const/4 v13, 0x0

    goto/16 :goto_3

    .line 711
    .restart local v13    # "isFromNavbar":Z
    :cond_8
    const/4 v12, 0x0

    goto/16 :goto_4

    .line 712
    .restart local v12    # "interactive":Z
    :cond_9
    const/16 v27, 0x0

    goto/16 :goto_5

    .line 713
    .restart local v27    # "virtualKey":Z
    :cond_a
    const/4 v5, 0x0

    goto/16 :goto_6

    .line 714
    .restart local v5    # "backKeyCode":Z
    :cond_b
    const/4 v10, 0x0

    goto/16 :goto_7

    .line 715
    .restart local v10    # "homeKeyCode":Z
    :cond_c
    const/16 v17, 0x0

    goto/16 :goto_8

    .line 716
    .restart local v17    # "menuKeyCode":Z
    :cond_d
    const/16 v22, 0x0

    goto/16 :goto_9

    .line 717
    .restart local v22    # "switchKeyCode":Z
    :cond_e
    const/16 v19, 0x0

    goto/16 :goto_a

    .line 719
    .restart local v19    # "powerKeyCode":Z
    :cond_f
    const/4 v4, 0x0

    goto/16 :goto_b

    .line 720
    .restart local v4    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_10
    const/16 v24, 0x0

    goto/16 :goto_c

    .line 735
    .restart local v24    # "type":I
    :pswitch_0
    if-nez v10, :cond_11

    if-nez v5, :cond_11

    if-nez v22, :cond_11

    if-eqz v19, :cond_2

    .line 736
    :cond_11
    sget-boolean v28, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v28, :cond_12

    .line 737
    const-string v28, "OemPhoneWindowManager"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, " ++++++++++ interceptKeyBeforeDispatching(): cancelling event due to POWER_HOME key lock mode, event = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    :cond_12
    const-wide/16 v28, 0x0

    goto :goto_d

    .line 753
    :cond_13
    invoke-static {}, Landroid/util/OpFeatures;->isH2()Z

    move-result v28

    if-eqz v28, :cond_18

    .line 754
    if-eqz v22, :cond_17

    .line 758
    if-eqz v6, :cond_14

    .line 759
    const-wide/16 v28, -0x1

    goto :goto_d

    .line 762
    :cond_14
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/OemPhoneWindowManager;->hasInComingCall()Z

    move-result v28

    if-eqz v28, :cond_15

    .line 763
    const-wide/16 v28, -0x1

    goto :goto_d

    .line 769
    :cond_15
    if-eqz v16, :cond_16

    .line 770
    const/16 v28, 0x52

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/server/policy/OemPhoneWindowManager;->triggerVirtualKeypress(I)V

    .line 771
    const/16 v28, 0x1

    sput-boolean v28, Lcom/android/server/policy/OemPhoneWindowManager;->sLongPressAppSwitchActive:Z

    .line 772
    const-wide/16 v28, -0x1

    goto/16 :goto_d

    .line 774
    :cond_16
    sget-boolean v28, Lcom/android/server/policy/OemPhoneWindowManager;->sLongPressAppSwitchActive:Z

    if-eqz v28, :cond_17

    .line 775
    const/16 v28, 0x0

    sput-boolean v28, Lcom/android/server/policy/OemPhoneWindowManager;->sLongPressAppSwitchActive:Z

    .line 776
    const-wide/16 v28, -0x1

    goto/16 :goto_d

    .line 780
    :cond_17
    if-eqz v10, :cond_18

    if-nez v15, :cond_18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnHomeBehavior:I

    move/from16 v28, v0

    if-eqz v28, :cond_18

    .line 781
    if-nez v7, :cond_1b

    .line 782
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeLongPressRunnable:Ljava/lang/Runnable;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 792
    :cond_18
    const/16 v28, 0x4

    move/from16 v0, v28

    if-ne v14, v0, :cond_19

    .line 793
    if-nez v7, :cond_1c

    .line 794
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackLongPress:Ljava/lang/Runnable;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 809
    :cond_19
    :goto_e
    invoke-static {}, Landroid/util/OpFeatures;->isO2()Z

    move-result v28

    if-eqz v28, :cond_5f

    .line 810
    if-eqz v13, :cond_1d

    .line 811
    sget-boolean v28, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v28, :cond_1a

    .line 812
    const-string v28, "OemPhoneWindowManager"

    const-string v29, " ++++++++++ interceptKeyBeforeDispatching(): event is from navigation bar, KeyEvent.FLAG_VIRTUAL_HARD_KEY flag present. Calling super method."

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    :cond_1a
    invoke-super/range {p0 .. p3}, Lcom/android/server/policy/PhoneWindowManager;->interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J

    move-result-wide v28

    goto/16 :goto_d

    .line 783
    :cond_1b
    if-eqz v7, :cond_18

    if-eqz v16, :cond_18

    .line 784
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeLongPressRunnable:Ljava/lang/Runnable;

    move-object/from16 v29, v0

    const-wide/16 v30, 0x12c

    invoke-virtual/range {v28 .. v31}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 785
    const-wide/16 v28, -0x1

    goto/16 :goto_d

    .line 795
    :cond_1c
    if-eqz v7, :cond_19

    if-nez v20, :cond_19

    .line 797
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Landroid/app/IActivityManager;->isInLockTaskMode()Z

    move-result v28

    if-eqz v28, :cond_19

    .line 798
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackLongPress:Ljava/lang/Runnable;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mLockTaskEndDelay:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v30, v0

    invoke-virtual/range {v28 .. v31}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 799
    const-wide/16 v28, -0x1

    goto/16 :goto_d

    .line 801
    :catch_0
    move-exception v8

    .line 802
    .local v8, "e":Landroid/os/RemoteException;
    invoke-virtual {v8}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_e

    .line 817
    .end local v8    # "e":Landroid/os/RemoteException;
    :cond_1d
    if-eqz v10, :cond_31

    .line 818
    if-eqz v7, :cond_29

    .line 819
    if-eqz v4, :cond_23

    .line 820
    const/16 v28, 0x7ed

    move/from16 v0, v24

    move/from16 v1, v28

    if-eq v0, v1, :cond_1e

    const/16 v28, 0x7d9

    move/from16 v0, v24

    move/from16 v1, v28

    if-eq v0, v1, :cond_1e

    iget v0, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    move/from16 v28, v0

    move/from16 v0, v28

    and-int/lit16 v0, v0, 0x400

    move/from16 v28, v0

    if-eqz v28, :cond_20

    .line 824
    :cond_1e
    sget-boolean v28, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v28, :cond_1f

    .line 825
    const-string v28, "OemPhoneWindowManager"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, " ++++++++++ interceptKeyBeforeDispatching(): event is cancelled due to keyguard showing, event = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    :cond_1f
    const-wide/16 v28, 0x0

    goto/16 :goto_d

    .line 829
    :cond_20
    sget-object v28, Lcom/android/server/policy/OemPhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v25, v0

    .line 830
    .local v25, "typeCount":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_f
    move/from16 v0, v25

    if-ge v11, v0, :cond_23

    .line 831
    sget-object v28, Lcom/android/server/policy/OemPhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    aget v28, v28, v11

    move/from16 v0, v24

    move/from16 v1, v28

    if-ne v0, v1, :cond_22

    .line 833
    sget-boolean v28, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v28, :cond_21

    .line 834
    const-string v28, "OemPhoneWindowManager"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, " ++++++++++ interceptKeyBeforeDispatching(): event is cancelled cause window type is blocking it, event = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    :cond_21
    const-wide/16 v28, -0x1

    goto/16 :goto_d

    .line 830
    :cond_22
    add-int/lit8 v11, v11, 0x1

    goto :goto_f

    .line 841
    .end local v11    # "i":I
    .end local v25    # "typeCount":I
    :cond_23
    if-nez v20, :cond_27

    .line 842
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyPressed:Z

    .line 843
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyConsumed:Z

    .line 844
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyDoubleTapPending:Z

    move/from16 v28, v0

    if-eqz v28, :cond_25

    .line 845
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyDoubleTapPending:Z

    .line 846
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 847
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyConsumed:Z

    .line 848
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    move/from16 v1, v28

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/OemPhoneWindowManager;->performKeyAction(ILandroid/view/KeyEvent;)V

    .line 906
    :cond_24
    :goto_10
    const-wide/16 v28, -0x1

    goto/16 :goto_d

    .line 849
    :cond_25
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnHomeBehavior:I

    move/from16 v28, v0

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    move/from16 v28, v0

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_24

    .line 851
    :cond_26
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/OemPhoneWindowManager;->preloadRecentApps()V

    goto :goto_10

    .line 853
    :cond_27
    if-eqz v16, :cond_24

    .line 854
    if-nez v15, :cond_24

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyConsumed:Z

    move/from16 v28, v0

    if-nez v28, :cond_24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnHomeBehavior:I

    move/from16 v28, v0

    if-eqz v28, :cond_24

    .line 856
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnHomeBehavior:I

    move/from16 v28, v0

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_28

    .line 857
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/OemPhoneWindowManager;->cancelPreloadRecentApps()V

    .line 859
    :cond_28
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyPressed:Z

    .line 860
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyConsumed:Z

    .line 861
    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/policy/OemPhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 862
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnHomeBehavior:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    move/from16 v1, v28

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/OemPhoneWindowManager;->performKeyAction(ILandroid/view/KeyEvent;)V

    goto :goto_10

    .line 866
    :cond_29
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    move/from16 v28, v0

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_2a

    .line 867
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/OemPhoneWindowManager;->cancelPreloadRecentApps()V

    .line 870
    :cond_2a
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyPressed:Z

    .line 871
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyConsumed:Z

    move/from16 v28, v0

    if-eqz v28, :cond_2b

    .line 872
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyConsumed:Z

    .line 873
    const-wide/16 v28, -0x1

    goto/16 :goto_d

    .line 876
    :cond_2b
    if-eqz v6, :cond_2d

    .line 877
    sget-boolean v28, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG:Z

    if-eqz v28, :cond_2c

    .line 878
    const-string v28, "OemPhoneWindowManager"

    const-string v29, "Ignoring HOME; event canceled."

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    :cond_2c
    const-wide/16 v28, -0x1

    goto/16 :goto_d

    .line 886
    :cond_2d
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/OemPhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v23

    .line 887
    .local v23, "telecomManager":Landroid/telecom/TelecomManager;
    if-eqz v23, :cond_2f

    invoke-virtual/range {v23 .. v23}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v28

    if-eqz v28, :cond_2f

    .line 888
    sget-boolean v28, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG:Z

    if-eqz v28, :cond_2e

    .line 889
    const-string v28, "OemPhoneWindowManager"

    const-string v29, "Ignoring HOME; there\'s a ringing incoming call."

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    :cond_2e
    const-wide/16 v28, -0x1

    goto/16 :goto_d

    .line 895
    :cond_2f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    move/from16 v28, v0

    if-eqz v28, :cond_30

    .line 896
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 897
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyDoubleTapPending:Z

    .line 898
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    move-object/from16 v29, v0

    const-wide/16 v30, 0xc8

    invoke-virtual/range {v28 .. v31}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 900
    const-wide/16 v28, -0x1

    goto/16 :goto_d

    .line 903
    :cond_30
    const/16 v28, 0x9

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/OemPhoneWindowManager;->performKeyAction(ILandroid/view/KeyEvent;)V

    .line 904
    const-wide/16 v28, -0x1

    goto/16 :goto_d

    .line 907
    .end local v23    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_31
    if-eqz v17, :cond_42

    .line 908
    if-eqz v4, :cond_34

    .line 909
    const/16 v28, 0x7ed

    move/from16 v0, v24

    move/from16 v1, v28

    if-eq v0, v1, :cond_32

    const/16 v28, 0x7d9

    move/from16 v0, v24

    move/from16 v1, v28

    if-eq v0, v1, :cond_32

    iget v0, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    move/from16 v28, v0

    move/from16 v0, v28

    and-int/lit16 v0, v0, 0x400

    move/from16 v28, v0

    if-eqz v28, :cond_34

    .line 912
    :cond_32
    sget-boolean v28, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v28, :cond_33

    .line 913
    const-string v28, "OemPhoneWindowManager"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, " ++++++++++ interceptKeyBeforeDispatching(): event is cancelled due to keyguard showing, event = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    :cond_33
    const-wide/16 v28, -0x1

    goto/16 :goto_d

    .line 920
    :cond_34
    if-eqz v27, :cond_36

    .line 921
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mMenuKeyConsumed:Z

    move/from16 v28, v0

    if-eqz v28, :cond_35

    .line 922
    const-wide/16 v28, -0x1

    goto/16 :goto_d

    .line 924
    :cond_35
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mMenuKeyConsumed:Z

    .line 926
    const-wide/16 v28, 0x0

    goto/16 :goto_d

    .line 931
    :cond_36
    if-eqz v7, :cond_3c

    .line 932
    if-nez v20, :cond_3a

    .line 933
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mMenuKeyPressed:Z

    .line 934
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mMenuKeyConsumed:Z

    .line 935
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mMenuKeyDoubleTapPending:Z

    move/from16 v28, v0

    if-eqz v28, :cond_38

    .line 936
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mMenuKeyDoubleTapPending:Z

    .line 937
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mMenuDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 938
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mMenuKeyConsumed:Z

    .line 939
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnMenuBehavior:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    move/from16 v1, v28

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/OemPhoneWindowManager;->performKeyAction(ILandroid/view/KeyEvent;)V

    .line 986
    :cond_37
    :goto_11
    const-wide/16 v28, -0x1

    goto/16 :goto_d

    .line 940
    :cond_38
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnMenuBehavior:I

    move/from16 v28, v0

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_39

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnMenuBehavior:I

    move/from16 v28, v0

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_37

    .line 942
    :cond_39
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/OemPhoneWindowManager;->preloadRecentApps()V

    goto :goto_11

    .line 944
    :cond_3a
    if-eqz v16, :cond_37

    .line 945
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mMenuKeyConsumed:Z

    move/from16 v28, v0

    if-nez v28, :cond_37

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnMenuBehavior:I

    move/from16 v28, v0

    if-eqz v28, :cond_37

    .line 947
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnMenuBehavior:I

    move/from16 v28, v0

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_3b

    .line 948
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/OemPhoneWindowManager;->cancelPreloadRecentApps()V

    .line 950
    :cond_3b
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mMenuKeyPressed:Z

    .line 951
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mMenuKeyConsumed:Z

    .line 952
    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/policy/OemPhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 953
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnMenuBehavior:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    move/from16 v1, v28

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/OemPhoneWindowManager;->performKeyAction(ILandroid/view/KeyEvent;)V

    goto :goto_11

    .line 957
    :cond_3c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnMenuBehavior:I

    move/from16 v28, v0

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_3d

    .line 958
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/OemPhoneWindowManager;->cancelPreloadRecentApps()V

    .line 961
    :cond_3d
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mMenuKeyPressed:Z

    .line 962
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mMenuKeyConsumed:Z

    move/from16 v28, v0

    if-eqz v28, :cond_3e

    .line 963
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mMenuKeyConsumed:Z

    .line 964
    const-wide/16 v28, -0x1

    goto/16 :goto_d

    .line 967
    :cond_3e
    if-eqz v6, :cond_40

    .line 968
    sget-boolean v28, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG:Z

    if-eqz v28, :cond_3f

    .line 969
    const-string v28, "OemPhoneWindowManager"

    const-string v29, "Ignoring MENU; event canceled."

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    :cond_3f
    const-wide/16 v28, -0x1

    goto/16 :goto_d

    .line 975
    :cond_40
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnMenuBehavior:I

    move/from16 v28, v0

    if-eqz v28, :cond_41

    .line 976
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mMenuDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 977
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mMenuKeyDoubleTapPending:Z

    .line 978
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mMenuDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    move-object/from16 v29, v0

    const-wide/16 v30, 0xc8

    invoke-virtual/range {v28 .. v31}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 980
    const-wide/16 v28, -0x1

    goto/16 :goto_d

    .line 983
    :cond_41
    const/16 v28, 0x1

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/OemPhoneWindowManager;->performKeyAction(ILandroid/view/KeyEvent;)V

    .line 984
    const-wide/16 v28, -0x1

    goto/16 :goto_d

    .line 987
    :cond_42
    if-eqz v5, :cond_50

    .line 988
    if-eqz v27, :cond_44

    .line 989
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyConsumed:Z

    move/from16 v28, v0

    if-eqz v28, :cond_43

    .line 990
    const-wide/16 v28, -0x1

    goto/16 :goto_d

    .line 993
    :cond_43
    const-wide/16 v28, 0x0

    goto/16 :goto_d

    .line 997
    :cond_44
    if-eqz v7, :cond_4a

    .line 998
    if-nez v20, :cond_48

    .line 999
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyPressed:Z

    .line 1000
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyDoubleTapPending:Z

    move/from16 v28, v0

    if-eqz v28, :cond_46

    .line 1001
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyDoubleTapPending:Z

    .line 1002
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1003
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyConsumed:Z

    .line 1004
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnBackBehavior:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    move/from16 v1, v28

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/OemPhoneWindowManager;->performKeyAction(ILandroid/view/KeyEvent;)V

    .line 1051
    :cond_45
    :goto_12
    const-wide/16 v28, -0x1

    goto/16 :goto_d

    .line 1005
    :cond_46
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnBackBehavior:I

    move/from16 v28, v0

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_47

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnBackBehavior:I

    move/from16 v28, v0

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_45

    .line 1007
    :cond_47
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/OemPhoneWindowManager;->preloadRecentApps()V

    goto :goto_12

    .line 1009
    :cond_48
    if-eqz v16, :cond_45

    .line 1010
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyConsumed:Z

    move/from16 v28, v0

    if-nez v28, :cond_45

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnBackBehavior:I

    move/from16 v28, v0

    if-eqz v28, :cond_45

    .line 1012
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnBackBehavior:I

    move/from16 v28, v0

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_49

    .line 1013
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/OemPhoneWindowManager;->cancelPreloadRecentApps()V

    .line 1015
    :cond_49
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyPressed:Z

    .line 1016
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyConsumed:Z

    .line 1017
    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/policy/OemPhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 1018
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnBackBehavior:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    move/from16 v1, v28

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/OemPhoneWindowManager;->performKeyAction(ILandroid/view/KeyEvent;)V

    goto :goto_12

    .line 1022
    :cond_4a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnBackBehavior:I

    move/from16 v28, v0

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_4b

    .line 1023
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/OemPhoneWindowManager;->cancelPreloadRecentApps()V

    .line 1026
    :cond_4b
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyPressed:Z

    .line 1027
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyConsumed:Z

    move/from16 v28, v0

    if-eqz v28, :cond_4c

    .line 1028
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyConsumed:Z

    .line 1029
    const-wide/16 v28, -0x1

    goto/16 :goto_d

    .line 1032
    :cond_4c
    if-eqz v6, :cond_4e

    .line 1033
    sget-boolean v28, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG:Z

    if-eqz v28, :cond_4d

    .line 1034
    const-string v28, "OemPhoneWindowManager"

    const-string v29, "Ignoring BACK; event canceled."

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    :cond_4d
    const-wide/16 v28, -0x1

    goto/16 :goto_d

    .line 1040
    :cond_4e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnBackBehavior:I

    move/from16 v28, v0

    if-eqz v28, :cond_4f

    .line 1041
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1042
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyDoubleTapPending:Z

    .line 1043
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    move-object/from16 v29, v0

    const-wide/16 v30, 0xc8

    invoke-virtual/range {v28 .. v31}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1045
    const-wide/16 v28, -0x1

    goto/16 :goto_d

    .line 1048
    :cond_4f
    const/16 v28, 0xa

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/OemPhoneWindowManager;->performKeyAction(ILandroid/view/KeyEvent;)V

    .line 1049
    const-wide/16 v28, -0x1

    goto/16 :goto_d

    .line 1052
    :cond_50
    if-eqz v22, :cond_5f

    .line 1053
    if-eqz v4, :cond_53

    .line 1054
    const/16 v28, 0x7ed

    move/from16 v0, v24

    move/from16 v1, v28

    if-eq v0, v1, :cond_51

    const/16 v28, 0x7d9

    move/from16 v0, v24

    move/from16 v1, v28

    if-eq v0, v1, :cond_51

    iget v0, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    move/from16 v28, v0

    move/from16 v0, v28

    and-int/lit16 v0, v0, 0x400

    move/from16 v28, v0

    if-eqz v28, :cond_53

    .line 1058
    :cond_51
    sget-boolean v28, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v28, :cond_52

    .line 1059
    const-string v28, "OemPhoneWindowManager"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, " ++++++++++ interceptKeyBeforeDispatching(): event is cancelled due to keyguard showing, event = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    :cond_52
    const-wide/16 v28, -0x1

    goto/16 :goto_d

    .line 1066
    :cond_53
    if-eqz v7, :cond_59

    .line 1067
    if-nez v20, :cond_57

    .line 1068
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyPressed:Z

    .line 1069
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyConsumed:Z

    .line 1070
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyDoubleTapPending:Z

    move/from16 v28, v0

    if-eqz v28, :cond_55

    .line 1071
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyDoubleTapPending:Z

    .line 1072
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1073
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyConsumed:Z

    .line 1074
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnAppSwitchBehavior:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    move/from16 v1, v28

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/OemPhoneWindowManager;->performKeyAction(ILandroid/view/KeyEvent;)V

    .line 1121
    :cond_54
    :goto_13
    const-wide/16 v28, -0x1

    goto/16 :goto_d

    .line 1075
    :cond_55
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnAppSwitchBehavior:I

    move/from16 v28, v0

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_56

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnAppSwitchBehavior:I

    move/from16 v28, v0

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_54

    .line 1077
    :cond_56
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/OemPhoneWindowManager;->preloadRecentApps()V

    goto :goto_13

    .line 1079
    :cond_57
    if-eqz v16, :cond_54

    .line 1080
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyConsumed:Z

    move/from16 v28, v0

    if-nez v28, :cond_54

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnAppSwitchBehavior:I

    move/from16 v28, v0

    if-eqz v28, :cond_54

    .line 1082
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnAppSwitchBehavior:I

    move/from16 v28, v0

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_58

    .line 1083
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/OemPhoneWindowManager;->cancelPreloadRecentApps()V

    .line 1085
    :cond_58
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyPressed:Z

    .line 1086
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyConsumed:Z

    .line 1087
    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/policy/OemPhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 1088
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnAppSwitchBehavior:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    move/from16 v1, v28

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/OemPhoneWindowManager;->performKeyAction(ILandroid/view/KeyEvent;)V

    goto :goto_13

    .line 1092
    :cond_59
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnAppSwitchBehavior:I

    move/from16 v28, v0

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_5a

    .line 1093
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/OemPhoneWindowManager;->cancelPreloadRecentApps()V

    .line 1096
    :cond_5a
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyPressed:Z

    .line 1097
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyConsumed:Z

    move/from16 v28, v0

    if-eqz v28, :cond_5b

    .line 1098
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyConsumed:Z

    .line 1099
    const-wide/16 v28, -0x1

    goto/16 :goto_d

    .line 1102
    :cond_5b
    if-eqz v6, :cond_5d

    .line 1103
    sget-boolean v28, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG:Z

    if-eqz v28, :cond_5c

    .line 1104
    const-string v28, "OemPhoneWindowManager"

    const-string v29, "Ignoring APP_SWITCH; event canceled."

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    :cond_5c
    const-wide/16 v28, -0x1

    goto/16 :goto_d

    .line 1110
    :cond_5d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnAppSwitchBehavior:I

    move/from16 v28, v0

    if-eqz v28, :cond_5e

    .line 1111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1112
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyDoubleTapPending:Z

    .line 1113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    move-object/from16 v29, v0

    const-wide/16 v30, 0xc8

    invoke-virtual/range {v28 .. v31}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1115
    const-wide/16 v28, -0x1

    goto/16 :goto_d

    .line 1118
    :cond_5e
    const/16 v28, 0x2

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/OemPhoneWindowManager;->performKeyAction(ILandroid/view/KeyEvent;)V

    .line 1119
    const-wide/16 v28, -0x1

    goto/16 :goto_d

    .line 1127
    :cond_5f
    invoke-static {}, Landroid/util/OpFeatures;->isSupportedScreenshotGuider()Z

    move-result v28

    if-eqz v28, :cond_61

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mNeedToDismissScreenshotGuider:Z

    move/from16 v28, v0

    if-eqz v28, :cond_61

    if-nez v5, :cond_60

    if-nez v10, :cond_60

    if-nez v17, :cond_60

    if-eqz v22, :cond_61

    .line 1129
    :cond_60
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/OemPhoneWindowManager;->hideScreenshotGuider()V

    .line 1133
    :cond_61
    invoke-super/range {p0 .. p3}, Lcom/android/server/policy/PhoneWindowManager;->interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J

    move-result-wide v28

    goto/16 :goto_d

    .line 728
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I
    .locals 26
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 455
    invoke-static {}, Landroid/util/OpFeatures;->isO2()Z

    move-result v23

    if-eqz v23, :cond_0

    .line 456
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    if-eqz v23, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v23

    const-string v24, "oem.virtual.hw.key"

    invoke-virtual/range {v23 .. v24}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_0

    .line 458
    const/high16 v23, 0x1000000

    and-int v23, v23, p2

    if-nez v23, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v23

    and-int/lit8 v23, v23, 0x40

    if-eqz v23, :cond_0

    .line 461
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v23

    and-int/lit8 v23, v23, -0x41

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-static {v0, v1}, Landroid/view/KeyEvent;->changeFlags(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object p1

    .line 467
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v7

    .line 468
    .local v7, "flags":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v13

    .line 469
    .local v13, "keyCode":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getSource()I

    move-result v19

    .line 470
    .local v19, "source":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v18

    .line 471
    .local v18, "repeatCount":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/OemPhoneWindowManager;->keyguardOn()Z

    move-result v14

    .line 472
    .local v14, "keyguardOn":Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v23

    if-nez v23, :cond_2

    const/4 v6, 0x1

    .line 473
    .local v6, "down":Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_3

    const/16 v21, 0x1

    .line 474
    .local v21, "up":Z
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v5

    .line 476
    .local v5, "canceled":Z
    invoke-static {}, Landroid/util/OpFeatures;->isH2()Z

    move-result v23

    if-eqz v23, :cond_4

    const/4 v12, 0x0

    .line 478
    .local v12, "isFromNavbar":Z
    :goto_2
    const/high16 v23, 0x20000000

    and-int v23, v23, p2

    if-eqz v23, :cond_6

    const/4 v11, 0x1

    .line 479
    .local v11, "interactive":Z
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v23

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_7

    const/16 v22, 0x1

    .line 480
    .local v22, "virtualKey":Z
    :goto_4
    const/16 v23, 0x4

    move/from16 v0, v23

    if-ne v13, v0, :cond_8

    const/4 v4, 0x1

    .line 481
    .local v4, "backKeyCode":Z
    :goto_5
    const/16 v23, 0x3

    move/from16 v0, v23

    if-ne v13, v0, :cond_9

    const/4 v9, 0x1

    .line 482
    .local v9, "homeKeyCode":Z
    :goto_6
    const/16 v23, 0x52

    move/from16 v0, v23

    if-ne v13, v0, :cond_a

    const/4 v15, 0x1

    .line 483
    .local v15, "menuKeyCode":Z
    :goto_7
    const/16 v23, 0xbb

    move/from16 v0, v23

    if-ne v13, v0, :cond_b

    const/16 v20, 0x1

    .line 484
    .local v20, "switchKeyCode":Z
    :goto_8
    const/16 v23, 0x1a

    move/from16 v0, v23

    if-ne v13, v0, :cond_c

    const/16 v17, 0x1

    .line 485
    .local v17, "powerKeyCode":Z
    :goto_9
    const/16 v23, 0x86

    move/from16 v0, v23

    if-ne v13, v0, :cond_d

    const/4 v8, 0x1

    .line 486
    .local v8, "gestureKeyCode":Z
    :goto_a
    const/high16 v23, 0x10000000

    and-int v23, v23, v19

    if-eqz v23, :cond_e

    const/16 v16, 0x1

    .line 488
    .local v16, "oemSource":Z
    :goto_b
    sget-boolean v23, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v23, :cond_1

    .line 489
    const-string v23, "OemPhoneWindowManager"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, " ++++++++++ interceptKeyBeforeQueueing(): event = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", interactive = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mSystemBooted:Z

    move/from16 v23, v0

    if-nez v23, :cond_f

    .line 498
    const/16 v23, 0x0

    .line 679
    :goto_c
    return v23

    .line 472
    .end local v4    # "backKeyCode":Z
    .end local v5    # "canceled":Z
    .end local v6    # "down":Z
    .end local v8    # "gestureKeyCode":Z
    .end local v9    # "homeKeyCode":Z
    .end local v11    # "interactive":Z
    .end local v12    # "isFromNavbar":Z
    .end local v15    # "menuKeyCode":Z
    .end local v16    # "oemSource":Z
    .end local v17    # "powerKeyCode":Z
    .end local v20    # "switchKeyCode":Z
    .end local v21    # "up":Z
    .end local v22    # "virtualKey":Z
    :cond_2
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 473
    .restart local v6    # "down":Z
    :cond_3
    const/16 v21, 0x0

    goto/16 :goto_1

    .line 476
    .restart local v5    # "canceled":Z
    .restart local v21    # "up":Z
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v23

    and-int/lit8 v23, v23, 0x40

    if-eqz v23, :cond_5

    const/4 v12, 0x1

    goto/16 :goto_2

    :cond_5
    const/4 v12, 0x0

    goto/16 :goto_2

    .line 478
    .restart local v12    # "isFromNavbar":Z
    :cond_6
    const/4 v11, 0x0

    goto/16 :goto_3

    .line 479
    .restart local v11    # "interactive":Z
    :cond_7
    const/16 v22, 0x0

    goto/16 :goto_4

    .line 480
    .restart local v22    # "virtualKey":Z
    :cond_8
    const/4 v4, 0x0

    goto/16 :goto_5

    .line 481
    .restart local v4    # "backKeyCode":Z
    :cond_9
    const/4 v9, 0x0

    goto :goto_6

    .line 482
    .restart local v9    # "homeKeyCode":Z
    :cond_a
    const/4 v15, 0x0

    goto :goto_7

    .line 483
    .restart local v15    # "menuKeyCode":Z
    :cond_b
    const/16 v20, 0x0

    goto :goto_8

    .line 484
    .restart local v20    # "switchKeyCode":Z
    :cond_c
    const/16 v17, 0x0

    goto :goto_9

    .line 485
    .restart local v17    # "powerKeyCode":Z
    :cond_d
    const/4 v8, 0x0

    goto :goto_a

    .line 486
    .restart local v8    # "gestureKeyCode":Z
    :cond_e
    const/16 v16, 0x0

    goto :goto_b

    .line 506
    .restart local v16    # "oemSource":Z
    :cond_f
    invoke-static {}, Landroid/util/OpFeatures;->isSupportedKeyLock()Z

    move-result v23

    if-eqz v23, :cond_19

    .line 507
    sget-object v23, Lcom/android/server/policy/OemPhoneWindowManager$9;->$SwitchMap$com$android$server$policy$OemPhoneWindowManager$KeyLockMode:[I

    sget-object v24, Lcom/android/server/policy/OemPhoneWindowManager;->mKeyLockMode:Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;->ordinal()I

    move-result v24

    aget v23, v23, v24

    packed-switch v23, :pswitch_data_0

    .line 549
    :cond_10
    :goto_d
    sget-boolean v23, Lcom/android/server/policy/OemPhoneWindowManager;->mFingerprintEnrolling:Z

    if-eqz v23, :cond_19

    .line 550
    if-nez v12, :cond_19

    if-nez v9, :cond_11

    if-nez v4, :cond_11

    if-nez v20, :cond_11

    if-eqz v15, :cond_19

    if-nez v16, :cond_19

    .line 551
    :cond_11
    const/16 v23, 0x0

    goto :goto_c

    .line 509
    :pswitch_0
    sget-boolean v23, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v23, :cond_10

    .line 510
    const-string v23, "OemPhoneWindowManager"

    const-string v24, " ++++++++++ interceptKeyBeforeQueueing(): dispatching event due to NORMAL key lock mode."

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 516
    :pswitch_1
    sget-boolean v23, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v23, :cond_12

    .line 517
    const-string v23, "OemPhoneWindowManager"

    const-string v24, " ++++++++++ interceptKeyBeforeQueueing(): return 1 due to POWER/POWER_HOME key lock mode."

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    :cond_12
    const/16 v23, 0x1

    goto :goto_c

    .line 521
    :pswitch_2
    if-nez v12, :cond_10

    if-eqz v9, :cond_10

    .line 522
    sget-boolean v23, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v23, :cond_13

    .line 523
    const-string v23, "OemPhoneWindowManager"

    const-string v24, " ++++++++++ interceptKeyBeforeQueueing(): cancelling event due to HOME key lock mode."

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    :cond_13
    const/16 v23, 0x0

    goto :goto_c

    .line 529
    :pswitch_3
    if-nez v12, :cond_10

    if-nez v4, :cond_14

    if-nez v9, :cond_14

    if-nez v20, :cond_14

    if-eqz v15, :cond_10

    .line 530
    :cond_14
    sget-boolean v23, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v23, :cond_15

    .line 531
    const-string v23, "OemPhoneWindowManager"

    const-string v24, " ++++++++++ interceptKeyBeforeQueueing(): cancelling event due to FOOT key lock mode."

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    :cond_15
    const/16 v23, 0x0

    goto/16 :goto_c

    .line 537
    :pswitch_4
    if-nez v12, :cond_10

    if-nez v4, :cond_17

    if-nez v20, :cond_17

    if-eqz v15, :cond_16

    if-eqz v16, :cond_17

    :cond_16
    sget-boolean v23, Lcom/android/server/policy/OemPhoneWindowManager;->mForceHomeEnabled:Z

    if-nez v23, :cond_10

    if-eqz v9, :cond_10

    .line 539
    :cond_17
    sget-boolean v23, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v23, :cond_18

    .line 540
    const-string v23, "OemPhoneWindowManager"

    const-string v24, " ++++++++++ interceptKeyBeforeQueueing(): cancelling event due to BACK_SWITCH key lock mode."

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    :cond_18
    const/16 v23, 0x0

    goto/16 :goto_c

    .line 557
    :cond_19
    sparse-switch v13, :sswitch_data_0

    .line 603
    :cond_1a
    :goto_e
    invoke-static {}, Landroid/util/OpFeatures;->isO2()Z

    move-result v23

    if-eqz v23, :cond_25

    .line 604
    if-nez v12, :cond_24

    if-nez v6, :cond_24

    .line 605
    if-eqz v4, :cond_20

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyConsumed:Z

    move/from16 v23, v0

    if-eqz v23, :cond_20

    .line 606
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyConsumed:Z

    .line 607
    sget-boolean v23, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v23, :cond_1b

    .line 608
    const-string v23, "OemPhoneWindowManager"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, " ++++++++++ interceptKeyBeforeQueueing(): ignoring event because already consumed, event = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    :cond_1b
    const/16 v23, 0x0

    goto/16 :goto_c

    .line 559
    :sswitch_0
    const/16 v23, 0x18

    move/from16 v0, v23

    if-ne v13, v0, :cond_1a

    .line 560
    if-eqz v6, :cond_1a

    .line 561
    if-eqz v11, :cond_1c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mScreenshotChordVolumeUpKeyTriggered:Z

    move/from16 v23, v0

    if-nez v23, :cond_1c

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v23

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0x400

    move/from16 v23, v0

    if-nez v23, :cond_1c

    .line 563
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mScreenshotChordVolumeUpKeyTriggered:Z

    .line 566
    :cond_1c
    invoke-static {}, Landroid/util/OpFeatures;->isSupportedOPBugReport()Z

    move-result v23

    if-eqz v23, :cond_1a

    .line 567
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/policy/OemPhoneWindowManager;->mVolumeUpKeyTime:J

    .line 568
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mVolumeUpKeyConsumedByScreenshotChord:Z

    .line 569
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/OemPhoneWindowManager;->recordErrorLog()V

    goto/16 :goto_e

    .line 580
    :sswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mLidState:I

    move/from16 v23, v0

    if-nez v23, :cond_1e

    .line 581
    sget-boolean v23, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v23, :cond_1d

    .line 582
    const-string v23, "OemPhoneWindowManager"

    const-string v24, " ++++++++++ interceptKeyBeforeQueueing(): event is a gesture, ignoring event."

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    :cond_1d
    const/16 v23, 0x0

    goto/16 :goto_c

    .line 588
    :cond_1e
    if-nez v11, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mDeviceKeyHandler:Lcom/android/server/policy/DeviceKeyHandler;

    move-object/from16 v23, v0

    if-eqz v23, :cond_1a

    .line 589
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mDeviceKeyHandler:Lcom/android/server/policy/DeviceKeyHandler;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/policy/DeviceKeyHandler;->handleKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v23

    if-eqz v23, :cond_1a

    .line 590
    sget-boolean v23, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v23, :cond_1f

    .line 591
    const-string v23, "OemPhoneWindowManager"

    const-string v24, " ++++++++++ interceptKeyBeforeQueueing(): event is a gesture, handled by DeviceKeyHandler."

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    :cond_1f
    const/16 v23, 0x0

    goto/16 :goto_c

    .line 613
    :cond_20
    if-eqz v15, :cond_22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mMenuKeyConsumed:Z

    move/from16 v23, v0

    if-eqz v23, :cond_22

    .line 614
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mMenuKeyConsumed:Z

    .line 615
    sget-boolean v23, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v23, :cond_21

    .line 616
    const-string v23, "OemPhoneWindowManager"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, " ++++++++++ interceptKeyBeforeQueueing(): ignoring event because already consumed, event = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    :cond_21
    const/16 v23, 0x0

    goto/16 :goto_c

    .line 621
    :cond_22
    if-eqz v20, :cond_24

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyConsumed:Z

    move/from16 v23, v0

    if-eqz v23, :cond_24

    .line 622
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyConsumed:Z

    .line 623
    sget-boolean v23, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v23, :cond_23

    .line 624
    const-string v23, "OemPhoneWindowManager"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, " ++++++++++ interceptKeyBeforeQueueing(): ignoring event because already consumed, event = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    :cond_23
    const/16 v23, 0x0

    goto/16 :goto_c

    .line 631
    :cond_24
    if-nez v12, :cond_25

    .line 632
    and-int/lit8 p2, p2, -0x3

    .line 649
    :cond_25
    if-nez v11, :cond_28

    .line 650
    if-nez v12, :cond_2a

    if-nez v9, :cond_26

    if-nez v4, :cond_26

    if-nez v20, :cond_26

    if-eqz v15, :cond_2a

    .line 651
    :cond_26
    sget-boolean v23, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v23, :cond_27

    .line 652
    const-string v23, "OemPhoneWindowManager"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, " ++++++++++ interceptKeyBeforeQueueing(): ignoring event, display not interactive, event = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    :cond_27
    const/16 v23, 0x0

    goto/16 :goto_c

    .line 656
    :cond_28
    invoke-static {}, Landroid/util/OpFeatures;->isO2()Z

    move-result v23

    if-eqz v23, :cond_2a

    .line 657
    if-nez v12, :cond_2a

    if-nez v9, :cond_29

    if-nez v4, :cond_29

    if-nez v20, :cond_29

    if-eqz v15, :cond_2a

    :cond_29
    if-nez v21, :cond_2a

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v23

    if-nez v23, :cond_2a

    if-nez v16, :cond_2a

    .line 659
    const/16 v23, 0x0

    const/16 v24, 0x1

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/policy/OemPhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 665
    :cond_2a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mNeedToNotifyStkUserActivity:Z

    move/from16 v23, v0

    if-eqz v23, :cond_2c

    .line 667
    const/16 v23, 0x18

    move/from16 v0, v23

    if-eq v13, v0, :cond_2b

    const/16 v23, 0x19

    move/from16 v0, v23

    if-eq v13, v0, :cond_2b

    if-nez v4, :cond_2b

    if-nez v9, :cond_2b

    if-nez v15, :cond_2b

    if-nez v20, :cond_2b

    if-eqz v17, :cond_2c

    .line 670
    :cond_2b
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mNeedToNotifyStkUserActivity:Z

    .line 673
    new-instance v10, Landroid/content/Intent;

    const-string v23, "com.oneplus.intent.action.stk.user_activity"

    move-object/from16 v0, v23

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 674
    .local v10, "intent":Landroid/content/Intent;
    const/high16 v23, 0x10000000

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 675
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 679
    .end local v10    # "intent":Landroid/content/Intent;
    :cond_2c
    invoke-super/range {p0 .. p2}, Lcom/android/server/policy/PhoneWindowManager;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I

    move-result v23

    goto/16 :goto_c

    .line 507
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 557
    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x86 -> :sswitch_1
    .end sparse-switch
.end method

.method public notifyLidSwitchChanged(JZ)V
    .locals 1
    .param p1, "whenNanos"    # J
    .param p3, "lidOpen"    # Z

    .prologue
    .line 1743
    if-eqz p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/server/policy/OemPhoneWindowManager;->updateLidSwitchState(I)V

    .line 1744
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/policy/PhoneWindowManager;->notifyLidSwitchChanged(JZ)V

    .line 1745
    return-void

    .line 1743
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setInputManager(Lcom/android/server/input/InputManagerService;)V
    .locals 0
    .param p1, "inputManagerService"    # Lcom/android/server/input/InputManagerService;

    .prologue
    .line 1730
    iput-object p1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mInputManager:Lcom/android/server/input/InputManagerService;

    .line 1731
    return-void
.end method

.method setKeyguardOccludedLw(Z)Z
    .locals 5
    .param p1, "isOccluded"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1708
    iget-boolean v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mKeyguardOccluded:Z

    .line 1709
    .local v0, "wasOccluded":Z
    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 1710
    iput-boolean v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mKeyguardOccluded:Z

    .line 1711
    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v3, v2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->setOccluded(Z)V

    .line 1712
    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v3}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1713
    iget-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v3, v3, 0x400

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 1725
    :goto_0
    return v1

    .line 1716
    :cond_0
    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 1717
    iput-boolean v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mKeyguardOccluded:Z

    .line 1718
    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v3, v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->setOccluded(Z)V

    .line 1719
    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v3}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1720
    iget-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v3, v3, -0x401

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 1721
    iget-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v4, -0x100001

    and-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    :cond_1
    move v1, v2

    .line 1725
    goto :goto_0
.end method

.method public setRotationLw(I)V
    .locals 5
    .param p1, "rotation"    # I

    .prologue
    .line 1689
    :try_start_0
    iget v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPortraitRotation:I

    if-ne p1, v3, :cond_0

    const-string v1, "1"

    .line 1690
    .local v1, "enabled":Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/io/FileOutputStream;

    const-string v3, "/proc/touchpanel/tpedge_limit_enable"

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 1691
    .local v2, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 1692
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1696
    .end local v1    # "enabled":Ljava/lang/String;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    :goto_1
    invoke-super {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->setRotationLw(I)V

    .line 1697
    return-void

    .line 1689
    :cond_0
    :try_start_1
    const-string v1, "0"
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1693
    :catch_0
    move-exception v0

    .line 1694
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "OemPhoneWindowManager"

    const-string v4, "Could not write to file /proc/touchpanel/tpedge_limit_enable"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public systemReady()V
    .locals 1

    .prologue
    .line 387
    invoke-super {p0}, Lcom/android/server/policy/PhoneWindowManager;->systemReady()V

    .line 388
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDeviceKeyHandler:Lcom/android/server/policy/DeviceKeyHandler;

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDeviceKeyHandler:Lcom/android/server/policy/DeviceKeyHandler;

    invoke-virtual {v0}, Lcom/android/server/policy/DeviceKeyHandler;->systemReady()V

    .line 391
    :cond_0
    return-void
.end method

.method protected takeScreenshot()V
    .locals 0

    .prologue
    .line 1769
    invoke-direct {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->showScreenshotGuider()V

    .line 1770
    invoke-super {p0}, Lcom/android/server/policy/PhoneWindowManager;->takeScreenshot()V

    .line 1771
    return-void
.end method
