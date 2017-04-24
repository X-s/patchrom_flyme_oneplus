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

.field static final CAMERA_LAUNCH_NO_VIBRATION:I = 0x3

.field public static DEBUG:Z = false

.field public static DEBUG_INPUT:Z = false

.field public static DEBUG_KEYLOCK:Z = false

.field public static DEBUG_KEYSWAP:Z = false

.field private static final DOUBLE_TAP_TIMEOUT:I = 0xc8

.field private static final EXPAND_NOTIFICATION_DELAY:I = 0x50

.field private static final KEYS_DEFAULT:I = 0x0

.field private static final KEYS_SWAP:I = 0x1

.field private static final KEY_ACTION_APP_SWITCH:I = 0x2

.field private static final KEY_ACTION_ASSIST:I = 0x3

.field private static final KEY_ACTION_BACK:I = 0xb

.field private static final KEY_ACTION_EXPAND_NOTIFICATION:I = 0x9

.field private static final KEY_ACTION_HOME:I = 0xa

.field private static final KEY_ACTION_LAST_APP:I = 0x7

.field private static final KEY_ACTION_LAUNCH_CAMERA:I = 0x5

.field private static final KEY_ACTION_MENU:I = 0x1

.field private static final KEY_ACTION_NOTHING:I = 0x0

.field private static final KEY_ACTION_QUICK_ACCESS_PAGE:I = 0x8

.field private static final KEY_ACTION_TURN_OFF_SCREEN:I = 0x4

.field private static final KEY_ACTION_VOICE_SEARCH:I = 0x6

.field private static final KEY_LAYOUT_DEFAULT:Ljava/lang/String; = "1"

.field private static final KEY_LAYOUT_SWAP:Ljava/lang/String; = "0"

.field private static final OEM_SMART_SCREEN_CAPTURE:Ljava/lang/String; = "oem_acc_sensor_three_finger"

.field private static final SHOW_SCREENSHOT_GUIDER_DALAY:I = 0x3e8

.field private static final SHOW_SCREENSHOT_GUIDER_DISABLED_KEY:Ljava/lang/String; = "persist.sys.oem.ssguider"

.field static final SOURCE_OEM:I = 0x10000000

.field private static final STK_USER_ACTIVITY_ACTION:Ljava/lang/String; = "com.oneplus.intent.action.stk.user_activity"

.field private static final STK_USER_ACTIVITY_ENABLED_ACTION:Ljava/lang/String; = "com.oneplus.intent.action.stk.user_activity_enabled"

.field private static final TAG:Ljava/lang/String; = "OemPhoneWindowManager"

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

.field private mKeyLockModeReceiver:Lcom/android/server/policy/OemPhoneWindowManager$KeyLockModeReceiver;

.field protected mKeysBehavior:I

.field private mLidState:Z

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

    .line 92
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG:Z

    .line 93
    sget-boolean v0, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG:Z

    or-int/lit8 v0, v0, 0x0

    sput-boolean v0, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    .line 94
    sget-boolean v0, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG:Z

    or-int/lit8 v0, v0, 0x0

    sput-boolean v0, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_KEYLOCK:Z

    .line 95
    sget-boolean v0, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG:Z

    or-int/lit8 v0, v0, 0x0

    sput-boolean v0, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_KEYSWAP:Z

    .line 120
    sget-object v0, Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;->NORMAL:Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;

    sput-object v0, Lcom/android/server/policy/OemPhoneWindowManager;->mKeyLockMode:Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;

    .line 121
    sput-boolean v1, Lcom/android/server/policy/OemPhoneWindowManager;->mForceHomeEnabled:Z

    .line 122
    sput-boolean v1, Lcom/android/server/policy/OemPhoneWindowManager;->mFingerprintEnrolling:Z

    .line 124
    sput-boolean v1, Lcom/android/server/policy/OemPhoneWindowManager;->sLongPressAppSwitchActive:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 83
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;-><init>()V

    .line 98
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLock:Ljava/lang/Object;

    .line 119
    iput v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mKeysBehavior:I

    .line 141
    iput-boolean v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLidState:Z

    .line 146
    iput-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mThreePointersGestures:Lcom/android/server/policy/OemThreePointersGesturesListener;

    .line 147
    iput-boolean v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mEnableThreePointersScreenShot:Z

    .line 149
    iput-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureHandler:Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;

    .line 154
    iput-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mFourPointersGestures:Lcom/android/server/policy/OemFourPointersGesturesListener;

    .line 155
    iput-boolean v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mEnableFourPointersScreenShot:Z

    .line 156
    iput-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureOPBugreportHandler:Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;

    .line 166
    new-instance v0, Lcom/android/server/policy/OemPhoneWindowManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/OemPhoneWindowManager$1;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackLongPress:Ljava/lang/Runnable;

    .line 234
    iput-boolean v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mNeedToDismissScreenshotGuider:Z

    .line 251
    iput-boolean v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mNeedToNotifyStkUserActivity:Z

    .line 254
    const-string v0, "com.android.incallui.InCallActivity"

    iput-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->INCALL_ACTIVITY:Ljava/lang/String;

    .line 256
    new-instance v0, Lcom/android/server/policy/OemPhoneWindowManager$2;

    invoke-direct {v0, p0}, Lcom/android/server/policy/OemPhoneWindowManager$2;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 266
    new-instance v0, Lcom/android/server/policy/OemPhoneWindowManager$3;

    invoke-direct {v0, p0}, Lcom/android/server/policy/OemPhoneWindowManager$3;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mMenuDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 276
    new-instance v0, Lcom/android/server/policy/OemPhoneWindowManager$4;

    invoke-direct {v0, p0}, Lcom/android/server/policy/OemPhoneWindowManager$4;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 286
    new-instance v0, Lcom/android/server/policy/OemPhoneWindowManager$5;

    invoke-direct {v0, p0}, Lcom/android/server/policy/OemPhoneWindowManager$5;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 437
    new-instance v0, Lcom/android/server/policy/OemPhoneWindowManager$6;

    invoke-direct {v0, p0}, Lcom/android/server/policy/OemPhoneWindowManager$6;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mStartBugReportTask:Ljava/lang/Runnable;

    .line 1636
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/policy/OemPhoneWindowManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyDoubleTapPending:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;
    .param p1, "x1"    # Z

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyDoubleTapPending:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/policy/OemPhoneWindowManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyConsumed:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;
    .param p1, "x1"    # Z

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyConsumed:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/server/policy/OemPhoneWindowManager;)Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mSettingsObserver:Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/policy/OemPhoneWindowManager;)Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureHandler:Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;

    return-object v0
.end method

.method static synthetic access$1500()Z
    .locals 1

    .prologue
    .line 83
    sget-boolean v0, Lcom/android/server/policy/OemPhoneWindowManager;->sEnableSoftwareKeys:Z

    return v0
.end method

.method static synthetic access$1502(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 83
    sput-boolean p0, Lcom/android/server/policy/OemPhoneWindowManager;->sEnableSoftwareKeys:Z

    return p0
.end method

.method static synthetic access$1602(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;
    .param p1, "x1"    # Z

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyPressed:Z

    return p1
.end method

.method static synthetic access$1702(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;
    .param p1, "x1"    # Z

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyPressed:Z

    return p1
.end method

.method static synthetic access$1802(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;
    .param p1, "x1"    # Z

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mMenuKeyPressed:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/server/policy/OemPhoneWindowManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->readConfigurationDependentBehaviors()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/policy/OemPhoneWindowManager;ILandroid/view/KeyEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/KeyEvent;

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/OemPhoneWindowManager;->performKeyAction(ILandroid/view/KeyEvent;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/policy/OemPhoneWindowManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->expandNotificationsPanel()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/policy/OemPhoneWindowManager;)Lcom/android/server/policy/OemThreePointersGesturesListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mThreePointersGestures:Lcom/android/server/policy/OemThreePointersGesturesListener;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;
    .param p1, "x1"    # Z

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mEnableThreePointersScreenShot:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/android/server/policy/OemPhoneWindowManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->isScreenshotGuiderDisabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/android/server/policy/OemPhoneWindowManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->setScreenshotGuiderDisabled()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/policy/OemPhoneWindowManager;)Lcom/android/server/policy/OemPhoneWindowManager$PhoneStatusBroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPhoneStatusReceiver:Lcom/android/server/policy/OemPhoneWindowManager$PhoneStatusBroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/android/server/policy/OemPhoneWindowManager;Lcom/android/server/policy/OemPhoneWindowManager$PhoneStatusBroadcastReceiver;)Lcom/android/server/policy/OemPhoneWindowManager$PhoneStatusBroadcastReceiver;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;
    .param p1, "x1"    # Lcom/android/server/policy/OemPhoneWindowManager$PhoneStatusBroadcastReceiver;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPhoneStatusReceiver:Lcom/android/server/policy/OemPhoneWindowManager$PhoneStatusBroadcastReceiver;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/android/server/policy/OemPhoneWindowManager;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mStartBugReportTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/policy/OemPhoneWindowManager;)Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/policy/OemPhoneWindowManager;)Lcom/android/server/policy/ScreenshotGuider;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mScreenshotGuider:Lcom/android/server/policy/ScreenshotGuider;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/android/server/policy/OemPhoneWindowManager;Lcom/android/server/policy/ScreenshotGuider;)Lcom/android/server/policy/ScreenshotGuider;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;
    .param p1, "x1"    # Lcom/android/server/policy/ScreenshotGuider;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mScreenshotGuider:Lcom/android/server/policy/ScreenshotGuider;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/android/server/policy/OemPhoneWindowManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mNeedToDismissScreenshotGuider:Z

    return v0
.end method

.method static synthetic access$2902(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;
    .param p1, "x1"    # Z

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mNeedToDismissScreenshotGuider:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/policy/OemPhoneWindowManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mMenuKeyDoubleTapPending:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/android/server/policy/OemPhoneWindowManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->hideScreenshotGuider()V

    return-void
.end method

.method static synthetic access$302(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;
    .param p1, "x1"    # Z

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mMenuKeyDoubleTapPending:Z

    return p1
.end method

.method static synthetic access$3102(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;
    .param p1, "x1"    # Z

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mNeedToNotifyStkUserActivity:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/policy/OemPhoneWindowManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mMenuKeyConsumed:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;
    .param p1, "x1"    # Z

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mMenuKeyConsumed:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/policy/OemPhoneWindowManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyDoubleTapPending:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;
    .param p1, "x1"    # Z

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyDoubleTapPending:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/policy/OemPhoneWindowManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyConsumed:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;
    .param p1, "x1"    # Z

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyConsumed:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/policy/OemPhoneWindowManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyDoubleTapPending:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;
    .param p1, "x1"    # Z

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyDoubleTapPending:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/policy/OemPhoneWindowManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyConsumed:Z

    return v0
.end method

.method private cancelErrorLog()V
    .locals 2

    .prologue
    .line 412
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mStartBugReportTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 413
    return-void
.end method

.method private collapsePanels()V
    .locals 4

    .prologue
    .line 1361
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-eqz v1, :cond_0

    .line 1363
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->collapsePanels()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1368
    :cond_0
    :goto_0
    return-void

    .line 1364
    :catch_0
    move-exception v0

    .line 1365
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "OemPhoneWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to collapse notification panel, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private expandNotificationsPanel()V
    .locals 4

    .prologue
    .line 1351
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-eqz v1, :cond_0

    .line 1353
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->expandNotificationsPanel()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1358
    :cond_0
    :goto_0
    return-void

    .line 1354
    :catch_0
    move-exception v0

    .line 1355
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "OemPhoneWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to expand notification panel, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
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
    .line 1309
    const-string v0, "com.android.systemui"

    .line 1310
    .local v0, "SYSTEMUI_PACKAGE":Ljava/lang/String;
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/OemPhoneWindowManager;->resolveCurrentLauncherPackage(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 1311
    .local v2, "defaultHomePackage":Ljava/lang/String;
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 1312
    .local v1, "am":Landroid/app/IActivityManager;
    const/4 v7, 0x5

    const/4 v8, 0x2

    invoke-interface {v1, v7, v8, p2}, Landroid/app/IActivityManager;->getRecentTasks(III)Ljava/util/List;

    move-result-object v6

    .line 1315
    .local v6, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_2

    .line 1316
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 1317
    .local v5, "task":Landroid/app/ActivityManager$RecentTaskInfo;
    iget-object v7, v5, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    if-eqz v7, :cond_0

    .line 1318
    iget-object v7, v5, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    iget-object v8, v5, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1320
    :cond_0
    iget-object v7, v5, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 1321
    .local v4, "packageName":Ljava/lang/String;
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "com.android.systemui"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1323
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 1327
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "task":Landroid/app/ActivityManager$RecentTaskInfo;
    :goto_1
    return-object v7

    .line 1315
    .restart local v4    # "packageName":Ljava/lang/String;
    .restart local v5    # "task":Landroid/app/ActivityManager$RecentTaskInfo;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1327
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "task":Landroid/app/ActivityManager$RecentTaskInfo;
    :cond_2
    const/4 v7, 0x0

    goto :goto_1
.end method

.method private getScreenshotChordLongPressDelay()J
    .locals 4

    .prologue
    .line 416
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 418
    const/high16 v0, 0x3fc80000    # 1.5625f

    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getDeviceGlobalActionKeyTimeout()J

    move-result-wide v2

    long-to-float v1, v2

    mul-float/2addr v0, v1

    float-to-long v0, v0

    .line 421
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

.method private hasInComingCall()Z
    .locals 4

    .prologue
    .line 425
    const/4 v1, 0x0

    .line 427
    .local v1, "inCallFocused":Z
    iget-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_0

    .line 428
    iget-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 429
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->INCALL_ACTIVITY:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 430
    const/4 v1, 0x1

    .line 434
    .end local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    return v1
.end method

.method private hideScreenshotGuider()V
    .locals 2

    .prologue
    .line 1593
    const-string v0, "OemPhoneWindowManager"

    const-string v1, "hideScreenshotGuider"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1594
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mScreenshotGuider:Lcom/android/server/policy/ScreenshotGuider;

    if-eqz v0, :cond_0

    .line 1595
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mScreenshotGuider:Lcom/android/server/policy/ScreenshotGuider;

    invoke-virtual {v0}, Lcom/android/server/policy/ScreenshotGuider;->hide()V

    .line 1598
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPhoneStatusReceiver:Lcom/android/server/policy/OemPhoneWindowManager$PhoneStatusBroadcastReceiver;

    if-eqz v0, :cond_1

    .line 1599
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPhoneStatusReceiver:Lcom/android/server/policy/OemPhoneWindowManager$PhoneStatusBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1600
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPhoneStatusReceiver:Lcom/android/server/policy/OemPhoneWindowManager$PhoneStatusBroadcastReceiver;

    .line 1603
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mNeedToDismissScreenshotGuider:Z

    .line 1604
    return-void
.end method

.method private isScreenshotGuiderDisabled()Z
    .locals 3

    .prologue
    .line 1557
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
    .locals 2

    .prologue
    .line 1272
    invoke-virtual {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->sendCloseSystemWindows()V

    .line 1273
    const-class v1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 1275
    .local v0, "service":Lcom/android/server/statusbar/StatusBarManagerInternal;
    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/android/server/statusbar/StatusBarManagerInternal;->onCameraLaunchGestureDetected(I)V

    .line 1276
    return-void
.end method

.method private launchQuickAccessPage()V
    .locals 2

    .prologue
    .line 1346
    new-instance v0, Landroid/content/Intent;

    const-string v1, "net.oneplus.launcher.action.OPEN_QUICK_PAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1347
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1348
    return-void
.end method

.method private performKeyAction(ILandroid/view/KeyEvent;)V
    .locals 8
    .param p1, "behavior"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x4

    .line 1371
    invoke-virtual {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->keyguardOn()Z

    move-result v1

    .line 1372
    .local v1, "keyguardOn":Z
    invoke-virtual {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->isUserSetupComplete()Z

    move-result v2

    .line 1375
    .local v2, "userSetupComplete":Z
    if-nez v2, :cond_1

    .line 1376
    packed-switch p1, :pswitch_data_0

    .line 1444
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1378
    :pswitch_1
    invoke-direct {p0, v3}, Lcom/android/server/policy/OemPhoneWindowManager;->triggerVirtualKeypress(I)V

    goto :goto_0

    .line 1386
    :cond_1
    packed-switch p1, :pswitch_data_1

    goto :goto_0

    .line 1394
    :pswitch_2
    const/16 v3, 0x52

    invoke-direct {p0, v3}, Lcom/android/server/policy/OemPhoneWindowManager;->triggerVirtualKeypress(I)V

    goto :goto_0

    .line 1388
    :pswitch_3
    invoke-direct {p0, v3}, Lcom/android/server/policy/OemPhoneWindowManager;->triggerVirtualKeypress(I)V

    goto :goto_0

    .line 1391
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->handleShortPressOnHome()V

    goto :goto_0

    .line 1397
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->toggleRecentApps()V

    goto :goto_0

    .line 1400
    :pswitch_6
    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/android/server/policy/OemPhoneWindowManager;->launchAssistAction(Ljava/lang/String;I)V

    goto :goto_0

    .line 1403
    :pswitch_7
    invoke-direct {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->putDeviceToSleep()V

    goto :goto_0

    .line 1406
    :pswitch_8
    invoke-direct {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->launchCameraAction()V

    goto :goto_0

    .line 1409
    :pswitch_9
    invoke-virtual {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->launchAssistLongPressAction()V

    goto :goto_0

    .line 1412
    :pswitch_a
    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mCurrentUserId:I

    invoke-direct {p0, v3, v4}, Lcom/android/server/policy/OemPhoneWindowManager;->switchToLastApp(Landroid/content/Context;I)Z

    goto :goto_0

    .line 1415
    :pswitch_b
    invoke-direct {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->launchQuickAccessPage()V

    goto :goto_0

    .line 1418
    :pswitch_c
    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v3, :cond_0

    .line 1419
    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1420
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "StatusBar"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1423
    invoke-direct {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->collapsePanels()V

    goto :goto_0

    .line 1429
    :cond_2
    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    new-instance v4, Lcom/android/server/policy/OemPhoneWindowManager$7;

    invoke-direct {v4, p0}, Lcom/android/server/policy/OemPhoneWindowManager$7;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;)V

    const-wide/16 v6, 0x50

    invoke-virtual {v3, v4, v6, v7}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1376
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
    .end packed-switch

    .line 1386
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
        :pswitch_c
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private putDeviceToSleep()V
    .locals 4

    .prologue
    .line 1339
    sget-boolean v0, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1340
    const-string v0, "OemPhoneWindowManager"

    const-string v1, " ++++++++++ putDeviceToSleep() "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1342
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 1343
    return-void
.end method

.method private readConfigurationDependentBehaviors()V
    .locals 13

    .prologue
    const/16 v12, 0x9

    const/4 v11, 0x0

    .line 1160
    iget-object v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 1163
    .local v8, "resolver":Landroid/content/ContentResolver;
    iget-object v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x10e005c

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 1165
    .local v6, "defaultLongPressOnHomeBehavior":I
    const-string v9, "key_home_long_press_action"

    invoke-static {v8, v9, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnHomeBehavior:I

    .line 1168
    iget v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnHomeBehavior:I

    if-ltz v9, :cond_0

    iget v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnHomeBehavior:I

    if-le v9, v12, :cond_1

    .line 1170
    :cond_0
    iput v11, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnHomeBehavior:I

    .line 1174
    :cond_1
    iget-object v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x10e005d

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 1176
    .local v2, "defaultDoubleTapOnHomeBehavior":I
    const-string v9, "key_home_double_tap_action"

    invoke-static {v8, v9, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    .line 1179
    iget v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    if-ltz v9, :cond_2

    iget v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    if-le v9, v12, :cond_3

    .line 1181
    :cond_2
    iput v11, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    .line 1185
    :cond_3
    iget-object v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x5090009

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    .line 1187
    .local v7, "defaultLongPressOnMenuBehavior":I
    const-string v9, "key_menu_long_press_action"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnMenuBehavior:I

    .line 1190
    iget v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnMenuBehavior:I

    if-ltz v9, :cond_4

    iget v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnMenuBehavior:I

    if-le v9, v12, :cond_5

    .line 1192
    :cond_4
    iput v11, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnMenuBehavior:I

    .line 1196
    :cond_5
    iget-object v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x5090005

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 1198
    .local v3, "defaultDoubleTapOnMenuBehavior":I
    const-string v9, "key_menu_double_tap_action"

    invoke-static {v8, v9, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnMenuBehavior:I

    .line 1201
    iget v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnMenuBehavior:I

    if-ltz v9, :cond_6

    iget v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnMenuBehavior:I

    if-le v9, v12, :cond_7

    .line 1203
    :cond_6
    iput v11, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnMenuBehavior:I

    .line 1207
    :cond_7
    iget-object v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x5090008

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 1209
    .local v5, "defaultLongPressOnBackBehavior":I
    const-string v9, "key_back_long_press_action"

    invoke-static {v8, v9, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnBackBehavior:I

    .line 1212
    iget v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnBackBehavior:I

    if-ltz v9, :cond_8

    iget v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnBackBehavior:I

    if-le v9, v12, :cond_9

    .line 1214
    :cond_8
    iput v11, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnBackBehavior:I

    .line 1218
    :cond_9
    iget-object v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x5090004

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 1220
    .local v1, "defaultDoubleTapOnBackBehavior":I
    const-string v9, "key_back_double_tap_action"

    invoke-static {v8, v9, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnBackBehavior:I

    .line 1223
    iget v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnBackBehavior:I

    if-ltz v9, :cond_a

    iget v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnBackBehavior:I

    if-le v9, v12, :cond_b

    .line 1225
    :cond_a
    iput v11, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnBackBehavior:I

    .line 1229
    :cond_b
    iget-object v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x5090007

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 1231
    .local v4, "defaultLongPressOnAppSwitchBehavior":I
    const-string v9, "key_app_switch_long_press_action"

    invoke-static {v8, v9, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnAppSwitchBehavior:I

    .line 1234
    iget v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnAppSwitchBehavior:I

    if-ltz v9, :cond_c

    iget v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnAppSwitchBehavior:I

    if-le v9, v12, :cond_d

    .line 1236
    :cond_c
    iput v11, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnAppSwitchBehavior:I

    .line 1240
    :cond_d
    iget-object v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x5090003

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 1242
    .local v0, "defaultDoubleTapOnAppSwitchBehavior":I
    const-string v9, "key_app_switch_double_tap_action"

    invoke-static {v8, v9, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnAppSwitchBehavior:I

    .line 1245
    iget v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnAppSwitchBehavior:I

    if-ltz v9, :cond_e

    iget v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnAppSwitchBehavior:I

    if-le v9, v12, :cond_f

    .line 1247
    :cond_e
    iput v11, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnAppSwitchBehavior:I

    .line 1249
    :cond_f
    return-void
.end method

.method private recordErrorLog()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x96

    .line 398
    iget-boolean v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mScreenshotChordEnabled:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mScreenshotChordVolumeUpKeyTriggered:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mScreenshotChordPowerKeyTriggered:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mScreenshotChordVolumeDownKeyTriggered:Z

    if-nez v2, :cond_0

    .line 401
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 402
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mVolumeUpKeyTime:J

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    iget-wide v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mScreenshotChordPowerKeyTime:J

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 404
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mVolumeUpKeyConsumedByScreenshotChord:Z

    .line 405
    invoke-direct {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->cancelErrorLog()V

    .line 406
    iget-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mStartBugReportTask:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->getScreenshotChordLongPressDelay()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 409
    .end local v0    # "now":J
    :cond_0
    return-void
.end method

.method private resolveCurrentLauncherPackage(Landroid/content/Context;I)Ljava/lang/String;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I

    .prologue
    .line 1331
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "android.intent.category.HOME"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 1333
    .local v1, "launcherIntent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1334
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, p2}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 1335
    .local v0, "launcherInfo":Landroid/content/pm/ResolveInfo;
    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    return-object v3
.end method

.method private setScreenshotGuiderDisabled()V
    .locals 4

    .prologue
    .line 1561
    const-string v0, "OemPhoneWindowManager"

    const-string v1, "setScreenshotGuiderDisabled was called:"

    new-instance v2, Ljava/lang/Exception;

    const-string v3, "setScreenshotGuiderDisabled"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1563
    const-string v0, "persist.sys.oem.ssguider"

    const-string v1, "disabled"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1564
    return-void
.end method

.method private showScreenshotGuider()V
    .locals 4

    .prologue
    .line 1575
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xd

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->isScreenshotGuiderDisabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mEnableThreePointersScreenShot:Z

    if-eqz v0, :cond_0

    .line 1577
    const-string v0, "OemPhoneWindowManager"

    const-string v1, "showScreenshotGuider"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1578
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    new-instance v1, Lcom/android/server/policy/OemPhoneWindowManager$8;

    invoke-direct {v1, p0}, Lcom/android/server/policy/OemPhoneWindowManager$8;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1590
    :cond_0
    return-void
.end method

.method private switchToLastApp(Landroid/content/Context;I)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I

    .prologue
    .line 1280
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/OemPhoneWindowManager;->switchToLastAppInternal(Landroid/content/Context;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1284
    :goto_0
    return v1

    .line 1281
    :catch_0
    move-exception v0

    .line 1282
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OemPhoneWindowManager"

    const-string v2, "Could not switch to last app"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1284
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
    .line 1289
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/OemPhoneWindowManager;->getLastTask(Landroid/content/Context;I)Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v1

    .line 1291
    .local v1, "lastTask":Landroid/app/ActivityManager$RecentTaskInfo;
    if-eqz v1, :cond_0

    iget v3, v1, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    if-gez v3, :cond_1

    .line 1292
    :cond_0
    const/4 v3, 0x0

    .line 1304
    :goto_0
    return v3

    .line 1295
    :cond_1
    iget-object v3, v1, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1296
    .local v2, "packageName":Ljava/lang/String;
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 1298
    .local v0, "am":Landroid/app/IActivityManager;
    sget-boolean v3, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 1299
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

    .line 1302
    :cond_2
    iget v3, v1, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-interface {v0, v3, v4, v5}, Landroid/app/IActivityManager;->moveTaskToFront(IILandroid/os/Bundle;)V

    .line 1304
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private triggerVirtualKeypress(I)V
    .locals 18
    .param p1, "keyCode"    # I

    .prologue
    .line 1252
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v16

    .line 1253
    .local v16, "im":Landroid/hardware/input/InputManager;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 1256
    .local v4, "now":J
    const/16 v6, 0x52

    move/from16 v0, p1

    if-ne v0, v6, :cond_0

    .line 1257
    const/16 v2, 0x48

    .line 1262
    .local v2, "flag":I
    :goto_0
    new-instance v3, Landroid/view/KeyEvent;

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/16 v14, 0x8

    const v15, 0x10000101

    move-wide v6, v4

    move/from16 v9, p1

    invoke-direct/range {v3 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 1265
    .local v3, "downEvent":Landroid/view/KeyEvent;
    const/4 v6, 0x1

    invoke-static {v3, v6}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v17

    .line 1267
    .local v17, "upEvent":Landroid/view/KeyEvent;
    const/4 v6, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v6}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 1268
    const/4 v6, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v6}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 1269
    return-void

    .line 1259
    .end local v2    # "flag":I
    .end local v3    # "downEvent":Landroid/view/KeyEvent;
    .end local v17    # "upEvent":Landroid/view/KeyEvent;
    :cond_0
    const/16 v2, 0x8

    .restart local v2    # "flag":I
    goto :goto_0
.end method


# virtual methods
.method public init(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManager"    # Landroid/view/IWindowManager;
    .param p3, "windowManagerFuncs"    # Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .prologue
    .line 299
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/policy/PhoneWindowManager;->init(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V

    .line 302
    const/4 v7, 0x1

    new-array v7, v7, [I

    const/4 v8, 0x0

    const/16 v9, 0xb

    aput v9, v7, v8

    invoke-static {v7}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 303
    new-instance v7, Lcom/android/server/policy/OemPhoneWindowManager$KeyLockModeReceiver;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/android/server/policy/OemPhoneWindowManager$KeyLockModeReceiver;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;Lcom/android/server/policy/OemPhoneWindowManager$1;)V

    iput-object v7, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mKeyLockModeReceiver:Lcom/android/server/policy/OemPhoneWindowManager$KeyLockModeReceiver;

    .line 304
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 305
    .local v3, "keyModeFilter":Landroid/content/IntentFilter;
    const-string v7, "com.oem.intent.action.KEY_LOCK_MODE"

    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 306
    iget-object v7, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mKeyLockModeReceiver:Lcom/android/server/policy/OemPhoneWindowManager$KeyLockModeReceiver;

    invoke-virtual {p1, v7, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 311
    .end local v3    # "keyModeFilter":Landroid/content/IntentFilter;
    :cond_0
    const/4 v7, 0x1

    new-array v7, v7, [I

    const/4 v8, 0x0

    const/16 v9, 0xd

    aput v9, v7, v8

    invoke-static {v7}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 312
    new-instance v5, Landroid/os/HandlerThread;

    const-string v7, "ThreePointersThread"

    invoke-direct {v5, v7}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 313
    .local v5, "mRecognizeThread":Landroid/os/HandlerThread;
    invoke-virtual {v5}, Landroid/os/HandlerThread;->start()V

    .line 314
    new-instance v7, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-direct {v7, p0, v8}, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;Landroid/os/Looper;)V

    iput-object v7, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureHandler:Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;

    .line 315
    new-instance v7, Lcom/android/server/policy/OemThreePointersGesturesListener;

    iget-object v8, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureHandler:Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;

    invoke-direct {v7, v8, v9}, Lcom/android/server/policy/OemThreePointersGesturesListener;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v7, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mThreePointersGestures:Lcom/android/server/policy/OemThreePointersGesturesListener;

    .line 317
    iget-object v7, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    iget-object v8, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mThreePointersGestures:Lcom/android/server/policy/OemThreePointersGesturesListener;

    invoke-interface {v7, v8}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->registerPointerEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V

    .line 322
    .end local v5    # "mRecognizeThread":Landroid/os/HandlerThread;
    :cond_1
    const/4 v2, 0x1

    .line 323
    .local v2, "installedOPBugreport":Z
    iget-object v7, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 325
    .local v6, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v7, "com.oneplus.opbugreport"

    const/4 v8, 0x4

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 329
    :goto_0
    if-eqz v2, :cond_2

    .line 330
    new-instance v4, Landroid/os/HandlerThread;

    const-string v7, "FourPointersThread"

    invoke-direct {v4, v7}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 331
    .local v4, "mRecognize4PointThread":Landroid/os/HandlerThread;
    invoke-virtual {v4}, Landroid/os/HandlerThread;->start()V

    .line 332
    new-instance v7, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-direct {v7, p0, v8}, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;Landroid/os/Looper;)V

    iput-object v7, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureOPBugreportHandler:Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;

    .line 333
    new-instance v7, Lcom/android/server/policy/OemFourPointersGesturesListener;

    iget-object v8, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureOPBugreportHandler:Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;

    invoke-direct {v7, v8, v9}, Lcom/android/server/policy/OemFourPointersGesturesListener;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v7, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mFourPointersGestures:Lcom/android/server/policy/OemFourPointersGesturesListener;

    .line 335
    iget-object v7, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mFourPointersGestures:Lcom/android/server/policy/OemFourPointersGesturesListener;

    iget-boolean v8, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mEnableFourPointersScreenShot:Z

    invoke-virtual {v7, v8}, Lcom/android/server/policy/OemFourPointersGesturesListener;->setOPBugreporttEnable(Z)V

    .line 336
    iget-object v7, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    iget-object v8, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mFourPointersGestures:Lcom/android/server/policy/OemFourPointersGesturesListener;

    invoke-interface {v7, v8}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->registerPointerEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V

    .line 340
    .end local v4    # "mRecognize4PointThread":Landroid/os/HandlerThread;
    :cond_2
    new-instance v7, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;Lcom/android/server/policy/OemPhoneWindowManager$1;)V

    iput-object v7, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    .line 341
    new-instance v7, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;

    iget-object v8, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    invoke-direct {v7, p0, v8}, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;Landroid/os/Handler;)V

    iput-object v7, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mSettingsObserver:Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;

    .line 343
    iget-object v7, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mSettingsObserver:Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;

    invoke-virtual {v7}, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->observe()V

    .line 346
    iget-object v7, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDeviceKeyHandler:Lcom/android/server/policy/DeviceKeyHandler;

    if-nez v7, :cond_3

    .line 347
    new-instance v7, Lcom/android/server/policy/DeviceKeyHandler;

    iget-object v8, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Lcom/android/server/policy/DeviceKeyHandler;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDeviceKeyHandler:Lcom/android/server/policy/DeviceKeyHandler;

    .line 352
    :cond_3
    iget-object v7, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x5090006

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    iput v7, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLockTaskEndDelay:I

    .line 358
    const/4 v7, 0x1

    new-array v7, v7, [I

    const/4 v8, 0x0

    const/16 v9, 0xd

    aput v9, v7, v8

    invoke-static {v7}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-direct {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->isScreenshotGuiderDisabled()Z

    move-result v7

    if-nez v7, :cond_4

    .line 359
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 360
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v7, "android.intent.action.PHONE_STATE"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 361
    new-instance v7, Lcom/android/server/policy/OemPhoneWindowManager$PhoneStatusBroadcastReceiver;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/android/server/policy/OemPhoneWindowManager$PhoneStatusBroadcastReceiver;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;Lcom/android/server/policy/OemPhoneWindowManager$1;)V

    iput-object v7, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPhoneStatusReceiver:Lcom/android/server/policy/OemPhoneWindowManager$PhoneStatusBroadcastReceiver;

    .line 362
    iget-object v7, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPhoneStatusReceiver:Lcom/android/server/policy/OemPhoneWindowManager$PhoneStatusBroadcastReceiver;

    invoke-virtual {v7, v8, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 367
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :cond_4
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 368
    .restart local v1    # "filter":Landroid/content/IntentFilter;
    const-string v7, "com.oneplus.intent.action.stk.user_activity_enabled"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 369
    new-instance v7, Lcom/android/server/policy/OemPhoneWindowManager$StkUserActivityTestEnabledReceiver;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/android/server/policy/OemPhoneWindowManager$StkUserActivityTestEnabledReceiver;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;Lcom/android/server/policy/OemPhoneWindowManager$1;)V

    iput-object v7, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mStkUserActivityTestEnabledReceiver:Lcom/android/server/policy/OemPhoneWindowManager$StkUserActivityTestEnabledReceiver;

    .line 370
    iget-object v7, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mStkUserActivityTestEnabledReceiver:Lcom/android/server/policy/OemPhoneWindowManager$StkUserActivityTestEnabledReceiver;

    invoke-virtual {v7, v8, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 372
    return-void

    .line 326
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :catch_0
    move-exception v0

    .line 327
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
    .line 649
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v9

    .line 650
    .local v9, "flags":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v14

    .line 651
    .local v14, "keyCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v18

    .line 652
    .local v18, "metaState":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v20

    .line 653
    .local v20, "repeatCount":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getSource()I

    move-result v21

    .line 654
    .local v21, "source":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/OemPhoneWindowManager;->keyguardOn()Z

    move-result v15

    .line 655
    .local v15, "keyguardOn":Z
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v28

    if-nez v28, :cond_2

    const/4 v7, 0x1

    .line 656
    .local v7, "down":Z
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_3

    const/16 v26, 0x1

    .line 657
    .local v26, "up":Z
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v6

    .line 658
    .local v6, "canceled":Z
    and-int/lit16 v0, v9, 0x80

    move/from16 v28, v0

    if-eqz v28, :cond_4

    const/16 v16, 0x1

    .line 660
    .local v16, "longPress":Z
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v28

    and-int/lit8 v28, v28, 0x40

    if-eqz v28, :cond_5

    const/4 v13, 0x1

    .line 661
    .local v13, "isFromNavbar":Z
    :goto_3
    const/high16 v28, 0x20000000

    and-int v28, v28, p3

    if-eqz v28, :cond_6

    const/4 v12, 0x1

    .line 662
    .local v12, "interactive":Z
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v28

    const/16 v29, -0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_7

    const/16 v27, 0x1

    .line 663
    .local v27, "virtualKey":Z
    :goto_5
    const/16 v28, 0x4

    move/from16 v0, v28

    if-ne v14, v0, :cond_8

    const/4 v5, 0x1

    .line 664
    .local v5, "backKeyCode":Z
    :goto_6
    const/16 v28, 0x3

    move/from16 v0, v28

    if-ne v14, v0, :cond_9

    const/4 v10, 0x1

    .line 665
    .local v10, "homeKeyCode":Z
    :goto_7
    const/16 v28, 0x52

    move/from16 v0, v28

    if-ne v14, v0, :cond_a

    const/16 v17, 0x1

    .line 666
    .local v17, "menuKeyCode":Z
    :goto_8
    const/16 v28, 0xbb

    move/from16 v0, v28

    if-ne v14, v0, :cond_b

    const/16 v22, 0x1

    .line 667
    .local v22, "switchKeyCode":Z
    :goto_9
    const/16 v28, 0x1a

    move/from16 v0, v28

    if-ne v14, v0, :cond_c

    const/16 v19, 0x1

    .line 669
    .local v19, "powerKeyCode":Z
    :goto_a
    if-eqz p1, :cond_d

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 670
    .local v4, "attrs":Landroid/view/WindowManager$LayoutParams;
    :goto_b
    if-eqz v4, :cond_e

    iget v0, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v24, v0

    .line 672
    .local v24, "type":I
    :goto_c
    sget-boolean v28, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v28, :cond_0

    .line 673
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

    .line 677
    :cond_0
    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [I

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const/16 v30, 0xb

    aput v30, v28, v29

    invoke-static/range {v28 .. v28}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v28

    if-eqz v28, :cond_1

    .line 678
    sget-object v28, Lcom/android/server/policy/OemPhoneWindowManager$9;->$SwitchMap$com$android$server$policy$OemPhoneWindowManager$KeyLockMode:[I

    sget-object v29, Lcom/android/server/policy/OemPhoneWindowManager;->mKeyLockMode:Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;

    invoke-virtual/range {v29 .. v29}, Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;->ordinal()I

    move-result v29

    aget v28, v28, v29

    packed-switch v28, :pswitch_data_0

    .line 699
    :cond_1
    if-eqz v22, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/OemPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v28

    if-nez v28, :cond_11

    .line 700
    const-wide/16 v28, -0x1

    .line 966
    :goto_d
    return-wide v28

    .line 655
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
    :cond_2
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 656
    .restart local v7    # "down":Z
    :cond_3
    const/16 v26, 0x0

    goto/16 :goto_1

    .line 658
    .restart local v6    # "canceled":Z
    .restart local v26    # "up":Z
    :cond_4
    const/16 v16, 0x0

    goto/16 :goto_2

    .line 660
    .restart local v16    # "longPress":Z
    :cond_5
    const/4 v13, 0x0

    goto/16 :goto_3

    .line 661
    .restart local v13    # "isFromNavbar":Z
    :cond_6
    const/4 v12, 0x0

    goto/16 :goto_4

    .line 662
    .restart local v12    # "interactive":Z
    :cond_7
    const/16 v27, 0x0

    goto/16 :goto_5

    .line 663
    .restart local v27    # "virtualKey":Z
    :cond_8
    const/4 v5, 0x0

    goto/16 :goto_6

    .line 664
    .restart local v5    # "backKeyCode":Z
    :cond_9
    const/4 v10, 0x0

    goto/16 :goto_7

    .line 665
    .restart local v10    # "homeKeyCode":Z
    :cond_a
    const/16 v17, 0x0

    goto/16 :goto_8

    .line 666
    .restart local v17    # "menuKeyCode":Z
    :cond_b
    const/16 v22, 0x0

    goto/16 :goto_9

    .line 667
    .restart local v22    # "switchKeyCode":Z
    :cond_c
    const/16 v19, 0x0

    goto/16 :goto_a

    .line 669
    .restart local v19    # "powerKeyCode":Z
    :cond_d
    const/4 v4, 0x0

    goto/16 :goto_b

    .line 670
    .restart local v4    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_e
    const/16 v24, 0x0

    goto/16 :goto_c

    .line 685
    .restart local v24    # "type":I
    :pswitch_0
    if-nez v10, :cond_f

    if-nez v5, :cond_f

    if-nez v22, :cond_f

    if-eqz v19, :cond_1

    .line 686
    :cond_f
    sget-boolean v28, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v28, :cond_10

    .line 687
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

    .line 689
    :cond_10
    const-wide/16 v28, 0x0

    goto :goto_d

    .line 705
    :cond_11
    const/16 v28, 0x4

    move/from16 v0, v28

    if-ne v14, v0, :cond_12

    .line 706
    if-nez v7, :cond_14

    .line 707
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackLongPress:Ljava/lang/Runnable;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 722
    :cond_12
    :goto_e
    if-eqz v13, :cond_15

    .line 723
    sget-boolean v28, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v28, :cond_13

    .line 724
    const-string v28, "OemPhoneWindowManager"

    const-string v29, " ++++++++++ interceptKeyBeforeDispatching(): event is from navigation bar, KeyEvent.FLAG_VIRTUAL_HARD_KEY flag present. Calling super method."

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    :cond_13
    invoke-super/range {p0 .. p3}, Lcom/android/server/policy/PhoneWindowManager;->interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J

    move-result-wide v28

    goto/16 :goto_d

    .line 708
    :cond_14
    if-eqz v7, :cond_12

    if-nez v20, :cond_12

    .line 710
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Landroid/app/IActivityManager;->isInLockTaskMode()Z

    move-result v28

    if-eqz v28, :cond_12

    .line 711
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

    .line 712
    const-wide/16 v28, -0x1

    goto/16 :goto_d

    .line 714
    :catch_0
    move-exception v8

    .line 715
    .local v8, "e":Landroid/os/RemoteException;
    invoke-virtual {v8}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_e

    .line 729
    .end local v8    # "e":Landroid/os/RemoteException;
    :cond_15
    if-eqz v10, :cond_28

    .line 730
    if-eqz v7, :cond_21

    .line 731
    if-eqz v4, :cond_1b

    .line 732
    const/16 v28, 0x7ed

    move/from16 v0, v24

    move/from16 v1, v28

    if-eq v0, v1, :cond_16

    const/16 v28, 0x7d9

    move/from16 v0, v24

    move/from16 v1, v28

    if-eq v0, v1, :cond_16

    iget v0, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    move/from16 v28, v0

    move/from16 v0, v28

    and-int/lit16 v0, v0, 0x400

    move/from16 v28, v0

    if-eqz v28, :cond_18

    .line 736
    :cond_16
    sget-boolean v28, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v28, :cond_17

    .line 737
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

    .line 739
    :cond_17
    const-wide/16 v28, 0x0

    goto/16 :goto_d

    .line 741
    :cond_18
    sget-object v28, Lcom/android/server/policy/OemPhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v25, v0

    .line 742
    .local v25, "typeCount":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_f
    move/from16 v0, v25

    if-ge v11, v0, :cond_1b

    .line 743
    sget-object v28, Lcom/android/server/policy/OemPhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    aget v28, v28, v11

    move/from16 v0, v24

    move/from16 v1, v28

    if-ne v0, v1, :cond_1a

    .line 745
    sget-boolean v28, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v28, :cond_19

    .line 746
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

    .line 748
    :cond_19
    const-wide/16 v28, -0x1

    goto/16 :goto_d

    .line 742
    :cond_1a
    add-int/lit8 v11, v11, 0x1

    goto :goto_f

    .line 753
    .end local v11    # "i":I
    .end local v25    # "typeCount":I
    :cond_1b
    if-nez v20, :cond_1f

    .line 754
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyPressed:Z

    .line 755
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyConsumed:Z

    .line 756
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyDoubleTapPending:Z

    move/from16 v28, v0

    if-eqz v28, :cond_1d

    .line 757
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyDoubleTapPending:Z

    .line 758
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 759
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyConsumed:Z

    .line 760
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    move/from16 v1, v28

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/OemPhoneWindowManager;->performKeyAction(ILandroid/view/KeyEvent;)V

    .line 820
    :cond_1c
    :goto_10
    const-wide/16 v28, -0x1

    goto/16 :goto_d

    .line 761
    :cond_1d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnHomeBehavior:I

    move/from16 v28, v0

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_1e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    move/from16 v28, v0

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_1c

    .line 763
    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/OemPhoneWindowManager;->preloadRecentApps()V

    goto :goto_10

    .line 765
    :cond_1f
    if-eqz v16, :cond_1c

    .line 766
    if-nez v15, :cond_1c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyConsumed:Z

    move/from16 v28, v0

    if-nez v28, :cond_1c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnHomeBehavior:I

    move/from16 v28, v0

    if-eqz v28, :cond_1c

    .line 768
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnHomeBehavior:I

    move/from16 v28, v0

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_20

    .line 769
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/OemPhoneWindowManager;->cancelPreloadRecentApps()V

    .line 771
    :cond_20
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyPressed:Z

    .line 772
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyConsumed:Z

    .line 773
    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/policy/OemPhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 774
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnHomeBehavior:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    move/from16 v1, v28

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/OemPhoneWindowManager;->performKeyAction(ILandroid/view/KeyEvent;)V

    goto :goto_10

    .line 778
    :cond_21
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    move/from16 v28, v0

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_22

    .line 779
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/OemPhoneWindowManager;->cancelPreloadRecentApps()V

    .line 782
    :cond_22
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyPressed:Z

    .line 783
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyConsumed:Z

    move/from16 v28, v0

    if-eqz v28, :cond_23

    .line 784
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyConsumed:Z

    .line 785
    const-wide/16 v28, -0x1

    goto/16 :goto_d

    .line 788
    :cond_23
    if-eqz v6, :cond_25

    .line 789
    sget-boolean v28, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG:Z

    if-eqz v28, :cond_24

    .line 790
    const-string v28, "OemPhoneWindowManager"

    const-string v29, "Ignoring HOME; event canceled."

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    :cond_24
    const-wide/16 v28, -0x1

    goto/16 :goto_d

    .line 799
    :cond_25
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/OemPhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v23

    .line 800
    .local v23, "telecomManager":Landroid/telecom/TelecomManager;
    if-eqz v23, :cond_26

    invoke-virtual/range {v23 .. v23}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v28

    if-eqz v28, :cond_26

    .line 801
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/OemPhoneWindowManager;->hasInComingCall()Z

    move-result v28

    if-eqz v28, :cond_26

    .line 802
    const-string v28, "OemPhoneWindowManager"

    const-string v29, "Ignoring HOME; there\'s a ringing incoming call."

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    const-wide/16 v28, -0x1

    goto/16 :goto_d

    .line 809
    :cond_26
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    move/from16 v28, v0

    if-eqz v28, :cond_27

    .line 810
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 811
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyDoubleTapPending:Z

    .line 812
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    move-object/from16 v29, v0

    const-wide/16 v30, 0xc8

    invoke-virtual/range {v28 .. v31}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 814
    const-wide/16 v28, -0x1

    goto/16 :goto_d

    .line 817
    :cond_27
    const/16 v28, 0xa

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/OemPhoneWindowManager;->performKeyAction(ILandroid/view/KeyEvent;)V

    .line 818
    const-wide/16 v28, -0x1

    goto/16 :goto_d

    .line 821
    .end local v23    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_28
    if-eqz v5, :cond_36

    .line 822
    if-eqz v27, :cond_2a

    .line 823
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyConsumed:Z

    move/from16 v28, v0

    if-eqz v28, :cond_29

    .line 824
    const-wide/16 v28, -0x1

    goto/16 :goto_d

    .line 827
    :cond_29
    const-wide/16 v28, 0x0

    goto/16 :goto_d

    .line 831
    :cond_2a
    if-eqz v7, :cond_30

    .line 832
    if-nez v20, :cond_2e

    .line 833
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyPressed:Z

    .line 834
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyDoubleTapPending:Z

    move/from16 v28, v0

    if-eqz v28, :cond_2c

    .line 835
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyDoubleTapPending:Z

    .line 836
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 837
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyConsumed:Z

    .line 838
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnBackBehavior:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    move/from16 v1, v28

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/OemPhoneWindowManager;->performKeyAction(ILandroid/view/KeyEvent;)V

    .line 885
    :cond_2b
    :goto_11
    const-wide/16 v28, -0x1

    goto/16 :goto_d

    .line 839
    :cond_2c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnBackBehavior:I

    move/from16 v28, v0

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_2d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnBackBehavior:I

    move/from16 v28, v0

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_2b

    .line 841
    :cond_2d
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/OemPhoneWindowManager;->preloadRecentApps()V

    goto :goto_11

    .line 843
    :cond_2e
    if-eqz v16, :cond_2b

    .line 844
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyConsumed:Z

    move/from16 v28, v0

    if-nez v28, :cond_2b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnBackBehavior:I

    move/from16 v28, v0

    if-eqz v28, :cond_2b

    .line 846
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnBackBehavior:I

    move/from16 v28, v0

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_2f

    .line 847
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/OemPhoneWindowManager;->cancelPreloadRecentApps()V

    .line 849
    :cond_2f
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyPressed:Z

    .line 850
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyConsumed:Z

    .line 851
    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/policy/OemPhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 852
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnBackBehavior:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    move/from16 v1, v28

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/OemPhoneWindowManager;->performKeyAction(ILandroid/view/KeyEvent;)V

    goto :goto_11

    .line 856
    :cond_30
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnBackBehavior:I

    move/from16 v28, v0

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_31

    .line 857
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/OemPhoneWindowManager;->cancelPreloadRecentApps()V

    .line 860
    :cond_31
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyPressed:Z

    .line 861
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyConsumed:Z

    move/from16 v28, v0

    if-eqz v28, :cond_32

    .line 862
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyConsumed:Z

    .line 863
    const-wide/16 v28, -0x1

    goto/16 :goto_d

    .line 866
    :cond_32
    if-eqz v6, :cond_34

    .line 867
    sget-boolean v28, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG:Z

    if-eqz v28, :cond_33

    .line 868
    const-string v28, "OemPhoneWindowManager"

    const-string v29, "Ignoring BACK; event canceled."

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    :cond_33
    const-wide/16 v28, -0x1

    goto/16 :goto_d

    .line 874
    :cond_34
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnBackBehavior:I

    move/from16 v28, v0

    if-eqz v28, :cond_35

    .line 875
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 876
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyDoubleTapPending:Z

    .line 877
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    move-object/from16 v29, v0

    const-wide/16 v30, 0xc8

    invoke-virtual/range {v28 .. v31}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 879
    const-wide/16 v28, -0x1

    goto/16 :goto_d

    .line 882
    :cond_35
    const/16 v28, 0xb

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/OemPhoneWindowManager;->performKeyAction(ILandroid/view/KeyEvent;)V

    .line 883
    const-wide/16 v28, -0x1

    goto/16 :goto_d

    .line 886
    :cond_36
    if-eqz v22, :cond_45

    .line 887
    if-eqz v4, :cond_39

    .line 888
    const/16 v28, 0x7ed

    move/from16 v0, v24

    move/from16 v1, v28

    if-eq v0, v1, :cond_37

    const/16 v28, 0x7d9

    move/from16 v0, v24

    move/from16 v1, v28

    if-eq v0, v1, :cond_37

    iget v0, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    move/from16 v28, v0

    move/from16 v0, v28

    and-int/lit16 v0, v0, 0x400

    move/from16 v28, v0

    if-eqz v28, :cond_39

    .line 892
    :cond_37
    sget-boolean v28, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v28, :cond_38

    .line 893
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

    .line 895
    :cond_38
    const-wide/16 v28, -0x1

    goto/16 :goto_d

    .line 900
    :cond_39
    if-eqz v7, :cond_3f

    .line 901
    if-nez v20, :cond_3d

    .line 902
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyPressed:Z

    .line 903
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyConsumed:Z

    .line 904
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyDoubleTapPending:Z

    move/from16 v28, v0

    if-eqz v28, :cond_3b

    .line 905
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyDoubleTapPending:Z

    .line 906
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 907
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyConsumed:Z

    .line 908
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnAppSwitchBehavior:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    move/from16 v1, v28

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/OemPhoneWindowManager;->performKeyAction(ILandroid/view/KeyEvent;)V

    .line 955
    :cond_3a
    :goto_12
    const-wide/16 v28, -0x1

    goto/16 :goto_d

    .line 909
    :cond_3b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnAppSwitchBehavior:I

    move/from16 v28, v0

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_3c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnAppSwitchBehavior:I

    move/from16 v28, v0

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_3a

    .line 911
    :cond_3c
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/OemPhoneWindowManager;->preloadRecentApps()V

    goto :goto_12

    .line 913
    :cond_3d
    if-eqz v16, :cond_3a

    .line 914
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyConsumed:Z

    move/from16 v28, v0

    if-nez v28, :cond_3a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnAppSwitchBehavior:I

    move/from16 v28, v0

    if-eqz v28, :cond_3a

    .line 916
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnAppSwitchBehavior:I

    move/from16 v28, v0

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_3e

    .line 917
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/OemPhoneWindowManager;->cancelPreloadRecentApps()V

    .line 919
    :cond_3e
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyPressed:Z

    .line 920
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyConsumed:Z

    .line 921
    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/policy/OemPhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 922
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnAppSwitchBehavior:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    move/from16 v1, v28

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/OemPhoneWindowManager;->performKeyAction(ILandroid/view/KeyEvent;)V

    goto :goto_12

    .line 926
    :cond_3f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnAppSwitchBehavior:I

    move/from16 v28, v0

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_40

    .line 927
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/OemPhoneWindowManager;->cancelPreloadRecentApps()V

    .line 930
    :cond_40
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyPressed:Z

    .line 931
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyConsumed:Z

    move/from16 v28, v0

    if-eqz v28, :cond_41

    .line 932
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyConsumed:Z

    .line 933
    const-wide/16 v28, -0x1

    goto/16 :goto_d

    .line 936
    :cond_41
    if-eqz v6, :cond_43

    .line 937
    sget-boolean v28, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG:Z

    if-eqz v28, :cond_42

    .line 938
    const-string v28, "OemPhoneWindowManager"

    const-string v29, "Ignoring APP_SWITCH; event canceled."

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    :cond_42
    const-wide/16 v28, -0x1

    goto/16 :goto_d

    .line 944
    :cond_43
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnAppSwitchBehavior:I

    move/from16 v28, v0

    if-eqz v28, :cond_44

    .line 945
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 946
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyDoubleTapPending:Z

    .line 947
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    move-object/from16 v29, v0

    const-wide/16 v30, 0xc8

    invoke-virtual/range {v28 .. v31}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 949
    const-wide/16 v28, -0x1

    goto/16 :goto_d

    .line 952
    :cond_44
    const/16 v28, 0x2

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/OemPhoneWindowManager;->performKeyAction(ILandroid/view/KeyEvent;)V

    .line 953
    const-wide/16 v28, -0x1

    goto/16 :goto_d

    .line 960
    :cond_45
    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [I

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const/16 v30, 0xd

    aput v30, v28, v29

    invoke-static/range {v28 .. v28}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v28

    if-eqz v28, :cond_47

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mNeedToDismissScreenshotGuider:Z

    move/from16 v28, v0

    if-eqz v28, :cond_47

    if-nez v5, :cond_46

    if-nez v10, :cond_46

    if-nez v17, :cond_46

    if-eqz v22, :cond_47

    .line 962
    :cond_46
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/OemPhoneWindowManager;->hideScreenshotGuider()V

    .line 966
    :cond_47
    invoke-super/range {p0 .. p3}, Lcom/android/server/policy/PhoneWindowManager;->interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J

    move-result-wide v28

    goto/16 :goto_d

    .line 678
    nop

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
    .line 448
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v7

    .line 449
    .local v7, "flags":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v13

    .line 450
    .local v13, "keyCode":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getSource()I

    move-result v19

    .line 451
    .local v19, "source":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v18

    .line 452
    .local v18, "repeatCount":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/OemPhoneWindowManager;->keyguardOn()Z

    move-result v14

    .line 453
    .local v14, "keyguardOn":Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v23

    if-nez v23, :cond_1

    const/4 v6, 0x1

    .line 454
    .local v6, "down":Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_2

    const/16 v21, 0x1

    .line 455
    .local v21, "up":Z
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v5

    .line 457
    .local v5, "canceled":Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v23

    and-int/lit8 v23, v23, 0x40

    if-eqz v23, :cond_3

    const/4 v12, 0x1

    .line 458
    .local v12, "isFromNavbar":Z
    :goto_2
    const/high16 v23, 0x20000000

    and-int v23, v23, p2

    if-eqz v23, :cond_4

    const/4 v11, 0x1

    .line 459
    .local v11, "interactive":Z
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v23

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_5

    const/16 v22, 0x1

    .line 460
    .local v22, "virtualKey":Z
    :goto_4
    const/16 v23, 0x4

    move/from16 v0, v23

    if-ne v13, v0, :cond_6

    const/4 v4, 0x1

    .line 461
    .local v4, "backKeyCode":Z
    :goto_5
    const/16 v23, 0x3

    move/from16 v0, v23

    if-ne v13, v0, :cond_7

    const/4 v9, 0x1

    .line 462
    .local v9, "homeKeyCode":Z
    :goto_6
    const/16 v23, 0x52

    move/from16 v0, v23

    if-ne v13, v0, :cond_8

    const/4 v15, 0x1

    .line 463
    .local v15, "menuKeyCode":Z
    :goto_7
    const/16 v23, 0xbb

    move/from16 v0, v23

    if-ne v13, v0, :cond_9

    const/16 v20, 0x1

    .line 464
    .local v20, "switchKeyCode":Z
    :goto_8
    const/16 v23, 0x1a

    move/from16 v0, v23

    if-ne v13, v0, :cond_a

    const/16 v17, 0x1

    .line 465
    .local v17, "powerKeyCode":Z
    :goto_9
    const/16 v23, 0x86

    move/from16 v0, v23

    if-ne v13, v0, :cond_b

    const/4 v8, 0x1

    .line 466
    .local v8, "gestureKeyCode":Z
    :goto_a
    const/high16 v23, 0x10000000

    and-int v23, v23, v19

    if-eqz v23, :cond_c

    const/16 v16, 0x1

    .line 468
    .local v16, "oemSource":Z
    :goto_b
    sget-boolean v23, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v23, :cond_0

    .line 469
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

    .line 476
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mSystemBooted:Z

    move/from16 v23, v0

    if-nez v23, :cond_d

    .line 478
    const/16 v23, 0x0

    .line 644
    :goto_c
    return v23

    .line 453
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
    :cond_1
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 454
    .restart local v6    # "down":Z
    :cond_2
    const/16 v21, 0x0

    goto/16 :goto_1

    .line 457
    .restart local v5    # "canceled":Z
    .restart local v21    # "up":Z
    :cond_3
    const/4 v12, 0x0

    goto/16 :goto_2

    .line 458
    .restart local v12    # "isFromNavbar":Z
    :cond_4
    const/4 v11, 0x0

    goto/16 :goto_3

    .line 459
    .restart local v11    # "interactive":Z
    :cond_5
    const/16 v22, 0x0

    goto :goto_4

    .line 460
    .restart local v22    # "virtualKey":Z
    :cond_6
    const/4 v4, 0x0

    goto :goto_5

    .line 461
    .restart local v4    # "backKeyCode":Z
    :cond_7
    const/4 v9, 0x0

    goto :goto_6

    .line 462
    .restart local v9    # "homeKeyCode":Z
    :cond_8
    const/4 v15, 0x0

    goto :goto_7

    .line 463
    .restart local v15    # "menuKeyCode":Z
    :cond_9
    const/16 v20, 0x0

    goto :goto_8

    .line 464
    .restart local v20    # "switchKeyCode":Z
    :cond_a
    const/16 v17, 0x0

    goto :goto_9

    .line 465
    .restart local v17    # "powerKeyCode":Z
    :cond_b
    const/4 v8, 0x0

    goto :goto_a

    .line 466
    .restart local v8    # "gestureKeyCode":Z
    :cond_c
    const/16 v16, 0x0

    goto :goto_b

    .line 486
    .restart local v16    # "oemSource":Z
    :cond_d
    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [I

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0xb

    aput v25, v23, v24

    invoke-static/range {v23 .. v23}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v23

    if-eqz v23, :cond_17

    .line 487
    sget-object v23, Lcom/android/server/policy/OemPhoneWindowManager$9;->$SwitchMap$com$android$server$policy$OemPhoneWindowManager$KeyLockMode:[I

    sget-object v24, Lcom/android/server/policy/OemPhoneWindowManager;->mKeyLockMode:Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;->ordinal()I

    move-result v24

    aget v23, v23, v24

    packed-switch v23, :pswitch_data_0

    .line 529
    :cond_e
    :goto_d
    sget-boolean v23, Lcom/android/server/policy/OemPhoneWindowManager;->mFingerprintEnrolling:Z

    if-eqz v23, :cond_17

    .line 530
    if-nez v12, :cond_17

    if-nez v9, :cond_f

    if-nez v4, :cond_f

    if-nez v20, :cond_f

    if-eqz v15, :cond_17

    if-nez v16, :cond_17

    .line 531
    :cond_f
    const/16 v23, 0x0

    goto :goto_c

    .line 489
    :pswitch_0
    sget-boolean v23, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v23, :cond_e

    .line 490
    const-string v23, "OemPhoneWindowManager"

    const-string v24, " ++++++++++ interceptKeyBeforeQueueing(): dispatching event due to NORMAL key lock mode."

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 496
    :pswitch_1
    sget-boolean v23, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v23, :cond_10

    .line 497
    const-string v23, "OemPhoneWindowManager"

    const-string v24, " ++++++++++ interceptKeyBeforeQueueing(): return 1 due to POWER/POWER_HOME key lock mode."

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    :cond_10
    const/16 v23, 0x1

    goto :goto_c

    .line 501
    :pswitch_2
    if-nez v12, :cond_e

    if-eqz v9, :cond_e

    .line 502
    sget-boolean v23, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v23, :cond_11

    .line 503
    const-string v23, "OemPhoneWindowManager"

    const-string v24, " ++++++++++ interceptKeyBeforeQueueing(): cancelling event due to HOME key lock mode."

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    :cond_11
    const/16 v23, 0x0

    goto/16 :goto_c

    .line 509
    :pswitch_3
    if-nez v12, :cond_e

    if-nez v4, :cond_12

    if-nez v9, :cond_12

    if-nez v20, :cond_12

    if-eqz v15, :cond_e

    .line 510
    :cond_12
    sget-boolean v23, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v23, :cond_13

    .line 511
    const-string v23, "OemPhoneWindowManager"

    const-string v24, " ++++++++++ interceptKeyBeforeQueueing(): cancelling event due to FOOT key lock mode."

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    :cond_13
    const/16 v23, 0x0

    goto/16 :goto_c

    .line 517
    :pswitch_4
    if-nez v12, :cond_e

    if-nez v4, :cond_15

    if-nez v20, :cond_15

    if-eqz v15, :cond_14

    if-eqz v16, :cond_15

    :cond_14
    sget-boolean v23, Lcom/android/server/policy/OemPhoneWindowManager;->mForceHomeEnabled:Z

    if-nez v23, :cond_e

    if-eqz v9, :cond_e

    .line 519
    :cond_15
    sget-boolean v23, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v23, :cond_16

    .line 520
    const-string v23, "OemPhoneWindowManager"

    const-string v24, " ++++++++++ interceptKeyBeforeQueueing(): cancelling event due to BACK_SWITCH key lock mode."

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    :cond_16
    const/16 v23, 0x0

    goto/16 :goto_c

    .line 537
    :cond_17
    sparse-switch v13, :sswitch_data_0

    .line 578
    :cond_18
    :goto_e
    if-nez v12, :cond_1e

    if-nez v6, :cond_1e

    .line 579
    if-eqz v4, :cond_1c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyConsumed:Z

    move/from16 v23, v0

    if-eqz v23, :cond_1c

    .line 580
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyConsumed:Z

    .line 581
    sget-boolean v23, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v23, :cond_19

    .line 582
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

    .line 585
    :cond_19
    const/16 v23, 0x0

    goto/16 :goto_c

    .line 539
    :sswitch_0
    const/16 v23, 0x18

    move/from16 v0, v23

    if-ne v13, v0, :cond_18

    .line 540
    if-eqz v6, :cond_18

    .line 541
    if-eqz v11, :cond_1a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mScreenshotChordVolumeUpKeyTriggered:Z

    move/from16 v23, v0

    if-nez v23, :cond_1a

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v23

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0x400

    move/from16 v23, v0

    if-nez v23, :cond_1a

    .line 543
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mScreenshotChordVolumeUpKeyTriggered:Z

    .line 546
    :cond_1a
    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [I

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x3

    aput v25, v23, v24

    invoke-static/range {v23 .. v23}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v23

    if-eqz v23, :cond_18

    .line 547
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/policy/OemPhoneWindowManager;->mVolumeUpKeyTime:J

    .line 548
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mVolumeUpKeyConsumedByScreenshotChord:Z

    .line 549
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/OemPhoneWindowManager;->recordErrorLog()V

    goto/16 :goto_e

    .line 560
    :sswitch_1
    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [I

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x11

    aput v25, v23, v24

    invoke-static/range {v23 .. v23}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v23

    if-eqz v23, :cond_18

    .line 561
    if-nez v11, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mDeviceKeyHandler:Lcom/android/server/policy/DeviceKeyHandler;

    move-object/from16 v23, v0

    if-eqz v23, :cond_18

    .line 562
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mDeviceKeyHandler:Lcom/android/server/policy/DeviceKeyHandler;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/policy/DeviceKeyHandler;->handleKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v23

    if-eqz v23, :cond_18

    .line 563
    sget-boolean v23, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v23, :cond_1b

    .line 564
    const-string v23, "OemPhoneWindowManager"

    const-string v24, " ++++++++++ interceptKeyBeforeQueueing(): event is a gesture, handled by DeviceKeyHandler."

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    :cond_1b
    const/16 v23, 0x0

    goto/16 :goto_c

    .line 587
    :cond_1c
    if-eqz v20, :cond_1e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyConsumed:Z

    move/from16 v23, v0

    if-eqz v23, :cond_1e

    .line 588
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyConsumed:Z

    .line 589
    sget-boolean v23, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v23, :cond_1d

    .line 590
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

    .line 593
    :cond_1d
    const/16 v23, 0x0

    goto/16 :goto_c

    .line 597
    :cond_1e
    if-nez v12, :cond_1f

    .line 598
    and-int/lit8 p2, p2, -0x3

    .line 614
    :cond_1f
    if-nez v11, :cond_22

    .line 615
    if-nez v12, :cond_24

    if-nez v9, :cond_20

    if-nez v4, :cond_20

    if-nez v20, :cond_20

    if-eqz v15, :cond_24

    .line 616
    :cond_20
    sget-boolean v23, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v23, :cond_21

    .line 617
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

    .line 619
    :cond_21
    const/16 v23, 0x0

    goto/16 :goto_c

    .line 622
    :cond_22
    if-nez v12, :cond_24

    if-nez v9, :cond_23

    if-nez v4, :cond_23

    if-nez v20, :cond_23

    if-eqz v15, :cond_24

    :cond_23
    if-nez v21, :cond_24

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v23

    if-nez v23, :cond_24

    if-nez v16, :cond_24

    .line 624
    const/16 v23, 0x0

    const/16 v24, 0x1

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/policy/OemPhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 630
    :cond_24
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mNeedToNotifyStkUserActivity:Z

    move/from16 v23, v0

    if-eqz v23, :cond_26

    .line 632
    const/16 v23, 0x18

    move/from16 v0, v23

    if-eq v13, v0, :cond_25

    const/16 v23, 0x19

    move/from16 v0, v23

    if-eq v13, v0, :cond_25

    if-nez v4, :cond_25

    if-nez v9, :cond_25

    if-nez v15, :cond_25

    if-nez v20, :cond_25

    if-eqz v17, :cond_26

    .line 635
    :cond_25
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mNeedToNotifyStkUserActivity:Z

    .line 638
    new-instance v10, Landroid/content/Intent;

    const-string v23, "com.oneplus.intent.action.stk.user_activity"

    move-object/from16 v0, v23

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 639
    .local v10, "intent":Landroid/content/Intent;
    const/high16 v23, 0x10000000

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 640
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 644
    .end local v10    # "intent":Landroid/content/Intent;
    :cond_26
    invoke-super/range {p0 .. p2}, Lcom/android/server/policy/PhoneWindowManager;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I

    move-result v23

    goto/16 :goto_c

    .line 487
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 537
    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x86 -> :sswitch_1
    .end sparse-switch
.end method

.method public notifyLidSwitchChanged(JZ)V
    .locals 5
    .param p1, "whenNanos"    # J
    .param p3, "lidOpen"    # Z

    .prologue
    .line 1545
    iget-boolean v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mSystemReady:Z

    if-eqz v1, :cond_0

    .line 1546
    const-string v1, "OemPhoneWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyLidSwitchChanged :mLidState= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1547
    iput-boolean p3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLidState:Z

    .line 1548
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.LID_SWITCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1549
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "lidOpen"

    if-eqz p3, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1550
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1552
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/policy/PhoneWindowManager;->notifyLidSwitchChanged(JZ)V

    .line 1553
    return-void

    .line 1549
    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setInputManager(Lcom/android/server/input/InputManagerService;)V
    .locals 0
    .param p1, "inputManagerService"    # Lcom/android/server/input/InputManagerService;

    .prologue
    .line 1541
    return-void
.end method

.method setKeyguardOccludedLw(Z)Z
    .locals 5
    .param p1, "isOccluded"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1519
    iget-boolean v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mKeyguardOccluded:Z

    .line 1520
    .local v0, "wasOccluded":Z
    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 1521
    iput-boolean v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mKeyguardOccluded:Z

    .line 1522
    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v3, v2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->setOccluded(Z)V

    .line 1523
    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v3}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1524
    iget-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v3, v3, 0x400

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 1536
    :goto_0
    return v1

    .line 1527
    :cond_0
    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 1528
    iput-boolean v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mKeyguardOccluded:Z

    .line 1529
    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v3, v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->setOccluded(Z)V

    .line 1530
    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v3}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1531
    iget-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v3, v3, -0x401

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 1532
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

    .line 1536
    goto :goto_0
.end method

.method public systemReady()V
    .locals 3

    .prologue
    .line 376
    invoke-super {p0}, Lcom/android/server/policy/PhoneWindowManager;->systemReady()V

    .line 377
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDeviceKeyHandler:Lcom/android/server/policy/DeviceKeyHandler;

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDeviceKeyHandler:Lcom/android/server/policy/DeviceKeyHandler;

    invoke-virtual {v0}, Lcom/android/server/policy/DeviceKeyHandler;->systemReady()V

    .line 383
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_acc_fingerprint_enrolling"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 385
    return-void
.end method

.method protected takeScreenshot(Z)V
    .locals 0
    .param p1, "gesture"    # Z

    .prologue
    .line 1568
    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->showScreenshotGuider()V

    .line 1570
    :cond_0
    invoke-super {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->takeScreenshot(Z)V

    .line 1572
    return-void
.end method
