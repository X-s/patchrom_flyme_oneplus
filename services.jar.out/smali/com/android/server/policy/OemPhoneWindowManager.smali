.class public Lcom/android/server/policy/OemPhoneWindowManager;
.super Lcom/android/server/policy/PhoneWindowManager;
.source "OemPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/OemPhoneWindowManager$1;,
        Lcom/android/server/policy/OemPhoneWindowManager$2;,
        Lcom/android/server/policy/OemPhoneWindowManager$3;,
        Lcom/android/server/policy/OemPhoneWindowManager$4;,
        Lcom/android/server/policy/OemPhoneWindowManager$5;,
        Lcom/android/server/policy/OemPhoneWindowManager$6;,
        Lcom/android/server/policy/OemPhoneWindowManager$7;,
        Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;,
        Lcom/android/server/policy/OemPhoneWindowManager$KeyLockModeReceiver;,
        Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;,
        Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;,
        Lcom/android/server/policy/OemPhoneWindowManager$PhoneStatusBroadcastReceiver;,
        Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;,
        Lcom/android/server/policy/OemPhoneWindowManager$QuickPayConfigUpdater;,
        Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;,
        Lcom/android/server/policy/OemPhoneWindowManager$StkUserActivityTestEnabledReceiver;
    }
.end annotation


# static fields
.field private static final synthetic -com-android-server-policy-OemPhoneWindowManager$KeyLockModeSwitchesValues:[I = null

.field private static final ACTION_DISABLE_LIDCONTROLSSLEEP:Ljava/lang/String; = "oem.intent.action.DISABLE_LIDCONTROLSSLEEP"

.field private static final ACTION_ENABLE_LIDCONTROLSSLEEP:Ljava/lang/String; = "oem.intent.action.ENABLE_LIDCONTROLSSLEEP"

.field private static final ACTION_KEY_LOCK:Ljava/lang/String; = "com.oem.intent.action.KEY_LOCK_MODE"

.field public static DEBUG:Z = false

.field public static DEBUG_INPUT:Z = false

.field public static DEBUG_KEYLOCK:Z = false

.field public static DEBUG_KEYSWAP:Z = false

.field private static final DOUBLE_TAP_TIMEOUT:I = 0xc8

.field static final IS_QUICK_PAY_ENABLED:Z

.field private static final KEYS_DEFAULT:I = 0x0

.field private static final KEYS_SWAP:I = 0x1

.field private static final KEY_ACTION_APP_SWITCH:I = 0x2

.field private static final KEY_ACTION_ASSIST:I = 0x3

.field private static final KEY_ACTION_BACK:I = 0xd

.field private static final KEY_ACTION_END:I = 0xc

.field private static final KEY_ACTION_EXPAND_NOTIFICATION:I = 0x9

.field private static final KEY_ACTION_HOME:I = 0xc

.field private static final KEY_ACTION_LAST_APP:I = 0x7

.field private static final KEY_ACTION_LAUNCH_CAMERA:I = 0x5

.field private static final KEY_ACTION_MENU:I = 0x1

.field private static final KEY_ACTION_NOTHING:I = 0x0

.field private static final KEY_ACTION_QUICK_ACCESS_PAGE:I = 0x8

.field private static final KEY_ACTION_QUICK_PAY:I = 0xb

.field private static final KEY_ACTION_SPLIT_SCREEN:I = 0xa

.field private static final KEY_ACTION_TURN_OFF_SCREEN:I = 0x4

.field private static final KEY_ACTION_VOICE_SEARCH:I = 0x6

.field private static final KEY_DISABLE_NODE:Ljava/lang/String; = "/proc/touchpanel/key_disable"

.field private static final KEY_LAYOUT_DEFAULT:Ljava/lang/String; = "1"

.field private static final KEY_LAYOUT_SWAP:Ljava/lang/String; = "0"

.field private static final KEY_SWITCH_NODE:Ljava/lang/String; = "/proc/touchpanel/key_switch"

.field private static final OEM_SMART_SCREEN_CAPTURE:Ljava/lang/String; = "oem_acc_sensor_three_finger"

.field static final OP_QUICK_PAY_BUTTON_TIMEOUT:J = 0x1f40L

.field static final OP_QUICK_PAY_COMPONENT:Ljava/lang/String; = "OP_QUICK_PAY_DEFAULT"

.field private static QUICKPAY_APPS_CONFIG_NAME:Ljava/lang/String; = null

.field static final QUICK_PAY_CLASS_NAME:Ljava/lang/String; = "com.oneplus.quickpay.PayActivity"

.field static final QUICK_PAY_PACKAGE_NAME:Ljava/lang/String; = "com.oneplus.quickpay"

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

.field private PKG_H2_LAUNCHER:Ljava/lang/String;

.field private PKG_O2_LAUNCHER:Ljava/lang/String;

.field lBoostCpuParamVal:[I

.field lBoostPackParamVal:[I

.field lBoostTimeOut:I

.field lDisPackTimeOut:I

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

.field mEngineerModeHandleReceiver:Landroid/content/BroadcastReceiver;

.field mFloatingButton:Landroid/widget/ImageButton;

.field mFloatingButtonBG:Landroid/widget/ImageView;

.field private mFourPointersGestures:Lcom/android/server/policy/OemFourPointersGesturesListener;

.field private mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

.field private final mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

.field private mHomeKeyConsumed:Z

.field private mHomeKeyDoubleTapPending:Z

.field private mHomeKeyPressed:Z

.field mIsPerfBoostEnabled:Z

.field mIsperfDisablepackingEnable:Z

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

.field mMoveEdgeAnimator:Landroid/animation/ValueAnimator;

.field private mNeedToDismissScreenshotGuider:Z

.field private mNeedToNotifyStkUserActivity:Z

.field private mOemGestureHandler:Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;

.field private mOemGestureOPBugreportHandler:Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;

.field mPaymentApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;",
            ">;"
        }
    .end annotation
.end field

.field mPaymentAppsName:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mPerfBoost:Landroid/util/BoostFramework;

.field mPerfIop:Landroid/util/BoostFramework;

.field mPerfPack:Landroid/util/BoostFramework;

.field private mPhoneStatusReceiver:Lcom/android/server/policy/OemPhoneWindowManager$PhoneStatusBroadcastReceiver;

.field mQuickPayAlertDialog:Landroid/app/AlertDialog;

.field mQuickPayBtnLaunched:Z

.field mQuickPayBtnView:Landroid/view/View;

.field mQuickPayBtnX:I

.field mQuickPayBtnY:I

.field private mQuickPayConfigObserver:Lcom/oneplus/config/ConfigObserver;

.field mQuickPayDefault:I

.field mQuickPayEnabled:Z

.field mQuickPayFocusWin:Ljava/lang/String;

.field mQuickPayFocusWinPid:I

.field mQuickPayWhich:I

.field mScaleAnimation:Landroid/animation/ObjectAnimator;

.field private mScreenshotGuider:Lcom/android/server/policy/ScreenshotGuider;

.field private mSettingsObserver:Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;

.field private final mStartBugReportTask:Ljava/lang/Runnable;

.field private mStkUserActivityTestEnabledReceiver:Lcom/android/server/policy/OemPhoneWindowManager$StkUserActivityTestEnabledReceiver;

.field private mThreePointersGestures:Lcom/android/server/policy/OemThreePointersGesturesListener;

.field private mVolumeUpKeyConsumedByScreenshotChord:Z

.field private mVolumeUpKeyTime:J

.field mWindowManager:Landroid/view/WindowManager;

.field mWindowParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/policy/OemPhoneWindowManager;->QUICKPAY_APPS_CONFIG_NAME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/policy/OemPhoneWindowManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyConsumed:Z

    return v0
.end method

.method static synthetic -get10(Lcom/android/server/policy/OemPhoneWindowManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mNeedToDismissScreenshotGuider:Z

    return v0
.end method

.method static synthetic -get11(Lcom/android/server/policy/OemPhoneWindowManager;)Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureHandler:Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/server/policy/OemPhoneWindowManager;)Lcom/android/server/policy/OemPhoneWindowManager$PhoneStatusBroadcastReceiver;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPhoneStatusReceiver:Lcom/android/server/policy/OemPhoneWindowManager$PhoneStatusBroadcastReceiver;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/server/policy/OemPhoneWindowManager;)Lcom/android/server/policy/ScreenshotGuider;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mScreenshotGuider:Lcom/android/server/policy/ScreenshotGuider;

    return-object v0
.end method

.method static synthetic -get14(Lcom/android/server/policy/OemPhoneWindowManager;)Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mSettingsObserver:Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;

    return-object v0
.end method

.method static synthetic -get15(Lcom/android/server/policy/OemPhoneWindowManager;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mStartBugReportTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get16(Lcom/android/server/policy/OemPhoneWindowManager;)Lcom/android/server/policy/OemThreePointersGesturesListener;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mThreePointersGestures:Lcom/android/server/policy/OemThreePointersGesturesListener;

    return-object v0
.end method

.method static synthetic -get17()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/policy/OemPhoneWindowManager;->sEnableSoftwareKeys:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/policy/OemPhoneWindowManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyDoubleTapPending:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/server/policy/OemPhoneWindowManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyConsumed:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/server/policy/OemPhoneWindowManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyDoubleTapPending:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/server/policy/OemPhoneWindowManager;)Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/policy/OemPhoneWindowManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyConsumed:Z

    return v0
.end method

.method static synthetic -get7(Lcom/android/server/policy/OemPhoneWindowManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyDoubleTapPending:Z

    return v0
.end method

.method static synthetic -get8(Lcom/android/server/policy/OemPhoneWindowManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mMenuKeyConsumed:Z

    return v0
.end method

.method static synthetic -get9(Lcom/android/server/policy/OemPhoneWindowManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mMenuKeyDoubleTapPending:Z

    return v0
.end method

.method private static synthetic -getcom-android-server-policy-OemPhoneWindowManager$KeyLockModeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/server/policy/OemPhoneWindowManager;->-com-android-server-policy-OemPhoneWindowManager$KeyLockModeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/policy/OemPhoneWindowManager;->-com-android-server-policy-OemPhoneWindowManager$KeyLockModeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;->values()[Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;->BACK_SWITCH:Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;

    invoke-virtual {v1}, Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;->BASE:Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;

    invoke-virtual {v1}, Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;->FOOT:Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;

    invoke-virtual {v1}, Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;->HOME:Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;

    invoke-virtual {v1}, Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;->NORMAL:Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;

    invoke-virtual {v1}, Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    :goto_4
    :try_start_5
    sget-object v1, Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;->POWER:Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;

    invoke-virtual {v1}, Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    :goto_5
    :try_start_6
    sget-object v1, Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;->POWER_HOME:Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;

    invoke-virtual {v1}, Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    :goto_6
    sput-object v0, Lcom/android/server/policy/OemPhoneWindowManager;->-com-android-server-policy-OemPhoneWindowManager$KeyLockModeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_1

    :catch_6
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -set0(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyDoubleTapPending:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyConsumed:Z

    return p1
.end method

.method static synthetic -set10(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mMenuKeyPressed:Z

    return p1
.end method

.method static synthetic -set11(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mNeedToDismissScreenshotGuider:Z

    return p1
.end method

.method static synthetic -set12(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mNeedToNotifyStkUserActivity:Z

    return p1
.end method

.method static synthetic -set13(Lcom/android/server/policy/OemPhoneWindowManager;Lcom/android/server/policy/OemPhoneWindowManager$PhoneStatusBroadcastReceiver;)Lcom/android/server/policy/OemPhoneWindowManager$PhoneStatusBroadcastReceiver;
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPhoneStatusReceiver:Lcom/android/server/policy/OemPhoneWindowManager$PhoneStatusBroadcastReceiver;

    return-object p1
.end method

.method static synthetic -set14(Lcom/android/server/policy/OemPhoneWindowManager;Lcom/android/server/policy/ScreenshotGuider;)Lcom/android/server/policy/ScreenshotGuider;
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mScreenshotGuider:Lcom/android/server/policy/ScreenshotGuider;

    return-object p1
.end method

.method static synthetic -set15(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/policy/OemPhoneWindowManager;->sEnableSoftwareKeys:Z

    return p0
.end method

.method static synthetic -set2(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyDoubleTapPending:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyPressed:Z

    return p1
.end method

.method static synthetic -set4(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mEnableThreePointersScreenShot:Z

    return p1
.end method

.method static synthetic -set5(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyConsumed:Z

    return p1
.end method

.method static synthetic -set6(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyDoubleTapPending:Z

    return p1
.end method

.method static synthetic -set7(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyPressed:Z

    return p1
.end method

.method static synthetic -set8(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mMenuKeyConsumed:Z

    return p1
.end method

.method static synthetic -set9(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mMenuKeyDoubleTapPending:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/policy/OemPhoneWindowManager;)Landroid/view/WindowManager;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/policy/OemPhoneWindowManager;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->isScreenshotGuiderDisabled()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/server/policy/OemPhoneWindowManager;IZZ)V
    .locals 0
    .param p1, "which"    # I
    .param p2, "unlocked"    # Z
    .param p3, "fromButton"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/policy/OemPhoneWindowManager;->startQuickPay(IZZ)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/policy/OemPhoneWindowManager;)Ljava/util/ArrayList;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->getAvailablePayApps()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Lcom/android/server/policy/OemPhoneWindowManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->disableQuickPayButton()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/policy/OemPhoneWindowManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->enableQuickPayButton()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/policy/OemPhoneWindowManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->hideScreenshotGuider()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/policy/OemPhoneWindowManager;ILandroid/view/KeyEvent;)V
    .locals 0
    .param p1, "behavior"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/OemPhoneWindowManager;->performKeyAction(ILandroid/view/KeyEvent;)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/policy/OemPhoneWindowManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->readConfigurationDependentBehaviors()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/policy/OemPhoneWindowManager;Lorg/json/JSONArray;)V
    .locals 0
    .param p1, "jsonArray"    # Lorg/json/JSONArray;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/policy/OemPhoneWindowManager;->resolveQuickPayConfigFromJSON(Lorg/json/JSONArray;)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/policy/OemPhoneWindowManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->setScreenshotGuiderDisabled()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 138
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG:Z

    .line 139
    sget-boolean v0, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    .line 140
    sget-boolean v0, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_KEYLOCK:Z

    .line 141
    sget-boolean v0, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_KEYSWAP:Z

    .line 167
    sget-object v0, Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;->NORMAL:Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;

    sput-object v0, Lcom/android/server/policy/OemPhoneWindowManager;->mKeyLockMode:Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;

    .line 168
    sput-boolean v2, Lcom/android/server/policy/OemPhoneWindowManager;->mForceHomeEnabled:Z

    .line 169
    sput-boolean v2, Lcom/android/server/policy/OemPhoneWindowManager;->mFingerprintEnrolling:Z

    .line 171
    sput-boolean v2, Lcom/android/server/policy/OemPhoneWindowManager;->sLongPressAppSwitchActive:Z

    .line 319
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x1a

    aput v1, v0, v2

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/policy/OemPhoneWindowManager;->IS_QUICK_PAY_ENABLED:Z

    .line 357
    const-string/jumbo v0, "QuickPay_APPS_Config"

    sput-object v0, Lcom/android/server/policy/OemPhoneWindowManager;->QUICKPAY_APPS_CONFIG_NAME:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 129
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;-><init>()V

    .line 144
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLock:Ljava/lang/Object;

    .line 166
    iput v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mKeysBehavior:I

    .line 188
    iput-boolean v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLidState:Z

    .line 193
    iput-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mThreePointersGestures:Lcom/android/server/policy/OemThreePointersGesturesListener;

    .line 194
    iput-boolean v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mEnableThreePointersScreenShot:Z

    .line 196
    iput-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureHandler:Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;

    .line 201
    iput-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mFourPointersGestures:Lcom/android/server/policy/OemFourPointersGesturesListener;

    .line 202
    iput-boolean v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mEnableFourPointersScreenShot:Z

    .line 203
    iput-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureOPBugreportHandler:Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;

    .line 213
    new-instance v0, Lcom/android/server/policy/OemPhoneWindowManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/OemPhoneWindowManager$1;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackLongPress:Ljava/lang/Runnable;

    .line 288
    iput-boolean v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mNeedToDismissScreenshotGuider:Z

    .line 302
    iput-boolean v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mNeedToNotifyStkUserActivity:Z

    .line 310
    const-string/jumbo v0, "com.android.incallui.InCallActivity"

    iput-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->INCALL_ACTIVITY:Ljava/lang/String;

    .line 313
    const-string/jumbo v0, "net.oneplus.launcher"

    iput-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->PKG_O2_LAUNCHER:Ljava/lang/String;

    .line 314
    const-string/jumbo v0, "net.oneplus.h2launcher"

    iput-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->PKG_H2_LAUNCHER:Ljava/lang/String;

    .line 327
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPaymentApps:Ljava/util/ArrayList;

    .line 328
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPaymentAppsName:Ljava/util/ArrayList;

    .line 335
    iput-boolean v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayEnabled:Z

    .line 336
    iput-boolean v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayBtnLaunched:Z

    .line 337
    iput v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayDefault:I

    .line 338
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayWhich:I

    .line 342
    iput v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayBtnX:I

    iput v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayBtnY:I

    .line 346
    iput-boolean v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mIsPerfBoostEnabled:Z

    .line 347
    iput-boolean v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mIsperfDisablepackingEnable:Z

    .line 348
    iput v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->lDisPackTimeOut:I

    .line 349
    iput v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->lBoostTimeOut:I

    .line 352
    iput-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPerfBoost:Landroid/util/BoostFramework;

    .line 353
    iput-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPerfPack:Landroid/util/BoostFramework;

    .line 354
    iput-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPerfIop:Landroid/util/BoostFramework;

    .line 361
    new-instance v0, Lcom/android/server/policy/OemPhoneWindowManager$2;

    invoke-direct {v0, p0}, Lcom/android/server/policy/OemPhoneWindowManager$2;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 371
    new-instance v0, Lcom/android/server/policy/OemPhoneWindowManager$3;

    invoke-direct {v0, p0}, Lcom/android/server/policy/OemPhoneWindowManager$3;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mMenuDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 381
    new-instance v0, Lcom/android/server/policy/OemPhoneWindowManager$4;

    invoke-direct {v0, p0}, Lcom/android/server/policy/OemPhoneWindowManager$4;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 391
    new-instance v0, Lcom/android/server/policy/OemPhoneWindowManager$5;

    invoke-direct {v0, p0}, Lcom/android/server/policy/OemPhoneWindowManager$5;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 546
    new-instance v0, Lcom/android/server/policy/OemPhoneWindowManager$6;

    invoke-direct {v0, p0}, Lcom/android/server/policy/OemPhoneWindowManager$6;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mEngineerModeHandleReceiver:Landroid/content/BroadcastReceiver;

    .line 642
    new-instance v0, Lcom/android/server/policy/OemPhoneWindowManager$7;

    invoke-direct {v0, p0}, Lcom/android/server/policy/OemPhoneWindowManager$7;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mStartBugReportTask:Ljava/lang/Runnable;

    .line 129
    return-void
.end method

.method private cancelErrorLog()V
    .locals 2

    .prologue
    .line 617
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mStartBugReportTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 616
    return-void
.end method

.method private clearQuickPaySwitch(Z)V
    .locals 2
    .param p1, "clearWhich"    # Z

    .prologue
    .line 2085
    if-eqz p1, :cond_0

    .line 2086
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayWhich:I

    .line 2088
    :cond_0
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayFocusWin:Ljava/lang/String;

    .line 2089
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayFocusWinPid:I

    .line 2090
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureHandler:Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;

    .line 2091
    const/16 v1, 0x8

    .line 2090
    invoke-virtual {v0, v1}, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;->removeMessages(I)V

    .line 2092
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureHandler:Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;

    .line 2093
    const/16 v1, 0x9

    .line 2092
    invoke-virtual {v0, v1}, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;->sendEmptyMessage(I)Z

    .line 2083
    return-void
.end method

.method private collapsePanels()V
    .locals 4

    .prologue
    .line 1680
    sget-boolean v1, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1681
    const-string/jumbo v1, "OemPhoneWindowManager"

    const-string/jumbo v2, " ++++++++++ collapsePanels() "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1684
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v1, :cond_1

    .line 1685
    invoke-super {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    .line 1689
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->collapsePanels()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1679
    :goto_0
    return-void

    .line 1690
    :catch_0
    move-exception v0

    .line 1691
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "OemPhoneWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to collapse notification panel, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private disableQuickPayButton()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2064
    sget-boolean v0, Lcom/android/server/policy/OemPhoneWindowManager;->IS_QUICK_PAY_ENABLED:Z

    if-nez v0, :cond_0

    return-void

    .line 2065
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayBtnView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 2066
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayBtnView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2067
    invoke-direct {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayBtnView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 2069
    :cond_1
    iput-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayBtnView:Landroid/view/View;

    .line 2071
    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    .line 2072
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2074
    :cond_3
    const-string/jumbo v0, "OemPhoneWindowManager"

    const-string/jumbo v1, "QuickPay: Ball disabled"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2063
    return-void
.end method

.method private enableQuickPayButton()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const-wide v6, 0x3ff199999999999aL    # 1.1

    .line 1878
    sget-boolean v3, Lcom/android/server/policy/OemPhoneWindowManager;->IS_QUICK_PAY_ENABLED:Z

    if-nez v3, :cond_0

    return-void

    .line 1879
    :cond_0
    invoke-direct {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->getAvailablePayApps()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_1

    return-void

    .line 1880
    :cond_1
    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayBtnView:Landroid/view/View;

    if-nez v3, :cond_3

    .line 1881
    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 1883
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x5030005

    .line 1882
    invoke-virtual {v1, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayBtnView:Landroid/view/View;

    .line 1884
    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayBtnView:Landroid/view/View;

    .line 1885
    const v4, 0x50c0008

    .line 1884
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mFloatingButton:Landroid/widget/ImageButton;

    .line 1886
    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayBtnView:Landroid/view/View;

    .line 1887
    const v4, 0x50c0007

    .line 1886
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mFloatingButtonBG:Landroid/widget/ImageView;

    .line 1889
    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    const/16 v4, 0x7d3

    invoke-direct {v3, v4}, Landroid/view/WindowManager$LayoutParams;-><init>(I)V

    iput-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 1890
    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v4, v4, 0x128

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1894
    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v4, v4, 0x1

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 1896
    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const-string/jumbo v4, "QuickPayBall"

    invoke-virtual {v3, v4}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1897
    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v4, -0x2

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1898
    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const v4, 0x1030004

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1899
    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v4, 0x33

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1900
    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1901
    const v4, 0x5050002

    .line 1900
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 1902
    .local v2, "margin":I
    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1903
    const v4, 0x5020005

    .line 1902
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1904
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1905
    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1907
    iget v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayBtnX:I

    if-nez v3, :cond_2

    iget v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayBtnY:I

    if-eqz v3, :cond_4

    .line 1908
    :cond_2
    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayBtnX:I

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1909
    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayBtnY:I

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1915
    :goto_0
    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mFloatingButton:Landroid/widget/ImageButton;

    new-instance v4, Lcom/android/server/policy/OemPhoneWindowManager$9;

    invoke-direct {v4, p0, v2}, Lcom/android/server/policy/OemPhoneWindowManager$9;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;I)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2059
    invoke-direct {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayBtnView:Landroid/view/View;

    iget-object v5, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v3, v4, v5}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2060
    const-string/jumbo v3, "OemPhoneWindowManager"

    const-string/jumbo v4, "QuickPay: Ball enabled"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1877
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    .end local v2    # "margin":I
    :cond_3
    return-void

    .line 1911
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v1    # "inflater":Landroid/view/LayoutInflater;
    .restart local v2    # "margin":I
    :cond_4
    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOverscanScreenWidth:I

    sub-int/2addr v4, v2

    iget-object v5, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->width:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1912
    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOverscanScreenHeight:I

    sub-int/2addr v4, v2

    iget-object v5, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_0
.end method

.method private expandNotificationsPanel()V
    .locals 4

    .prologue
    .line 1664
    sget-boolean v1, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1665
    const-string/jumbo v1, "OemPhoneWindowManager"

    const-string/jumbo v2, " ++++++++++ expandNotificationPanel() "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1668
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v1, :cond_1

    .line 1669
    invoke-super {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    .line 1673
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/internal/statusbar/IStatusBarService;->expandNotificationsPanel(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1663
    :goto_0
    return-void

    .line 1674
    :catch_0
    move-exception v0

    .line 1675
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "OemPhoneWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to expand notification panel, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1858
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1860
    :catch_0
    move-exception v0

    .line 1861
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "OemPhoneWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "QuickPay: getApplicationIcon failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1863
    const/4 v1, 0x0

    return-object v1
.end method

.method private getAvailablePayApps()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 1834
    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 1835
    const v7, 0x5070012

    .line 1834
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v5, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPaymentAppsName:Ljava/util/ArrayList;

    .line 1836
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1837
    .local v1, "dialoglist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPaymentApps:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 1838
    iget-object v5, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPaymentApps:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;

    .line 1839
    .local v0, "app":Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;
    iget-object v5, v0, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->packageName:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/server/policy/OemPhoneWindowManager;->isPackageAvailable(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1840
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1841
    iget-object v5, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPaymentAppsName:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, v0, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->switchName:Ljava/lang/String;

    .line 1843
    iget-object v5, v0, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->appIcon:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_0

    .line 1844
    iget-object v5, v0, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->packageName:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/server/policy/OemPhoneWindowManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 1845
    .local v3, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_0

    .line 1846
    iget-object v5, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 1847
    const v6, 0x5050003

    .line 1846
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 1848
    .local v4, "iconSize":I
    invoke-virtual {v3, v8, v8, v4, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1849
    iput-object v3, v0, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->appIcon:Landroid/graphics/drawable/Drawable;

    .line 1837
    .end local v3    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v4    # "iconSize":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1854
    .end local v0    # "app":Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;
    :cond_1
    return-object v1
.end method

.method private getDefaultHomePackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1648
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "android.intent.category.HOME"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1649
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1650
    .local v1, "pm":Landroid/content/pm/PackageManager;
    if-nez v1, :cond_0

    .line 1651
    const-string/jumbo v3, "OemPhoneWindowManager"

    const-string/jumbo v4, "getDefaultHomePackageName: could not get package manager"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1652
    const-string/jumbo v3, ""

    return-object v3

    .line 1654
    :cond_0
    const/16 v3, 0x80

    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 1655
    .local v2, "res":Landroid/content/pm/ResolveInfo;
    if-nez v2, :cond_1

    .line 1656
    const-string/jumbo v3, "OemPhoneWindowManager"

    const-string/jumbo v4, "getDefaultHomePackageName: could not get ResolveInfo"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1657
    const-string/jumbo v3, ""

    return-object v3

    .line 1659
    :cond_1
    const-string/jumbo v3, "OemPhoneWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[isDefaultHome] default home: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1660
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_2

    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    :goto_0
    return-object v3

    :cond_2
    const-string/jumbo v3, ""

    goto :goto_0
.end method

.method private getLastTask(Landroid/content/Context;I)Landroid/app/ActivityManager$RecentTaskInfo;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 1599
    const-string/jumbo v0, "com.android.systemui"

    .line 1600
    .local v0, "SYSTEMUI_PACKAGE":Ljava/lang/String;
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/OemPhoneWindowManager;->resolveCurrentLauncherPackage(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 1601
    .local v2, "defaultHomePackage":Ljava/lang/String;
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 1602
    .local v1, "am":Landroid/app/IActivityManager;
    const/4 v7, 0x5

    .line 1603
    const/4 v8, 0x2

    .line 1602
    invoke-interface {v1, v7, v8, p2}, Landroid/app/IActivityManager;->getRecentTasks(III)Landroid/content/pm/ParceledListSlice;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v6

    .line 1605
    .local v6, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_3

    .line 1606
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 1607
    .local v5, "task":Landroid/app/ActivityManager$RecentTaskInfo;
    iget-object v7, v5, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    if-eqz v7, :cond_0

    .line 1608
    iget-object v7, v5, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    iget-object v8, v5, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1610
    :cond_0
    iget-object v7, v5, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 1611
    .local v4, "packageName":Ljava/lang/String;
    iget v7, v5, Landroid/app/ActivityManager$RecentTaskInfo;->stackId:I

    if-eqz v7, :cond_1

    .line 1612
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1605
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1613
    :cond_2
    const-string/jumbo v7, "com.android.systemui"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1614
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RecentTaskInfo;

    return-object v7

    .line 1618
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "task":Landroid/app/ActivityManager$RecentTaskInfo;
    :cond_3
    return-object v9
.end method

.method private getScreenshotChordLongPressDelay()J
    .locals 2

    .prologue
    .line 621
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 624
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getDeviceGlobalActionKeyTimeout()J

    move-result-wide v0

    long-to-float v0, v0

    .line 623
    const/high16 v1, 0x3fc80000    # 1.5625f

    mul-float/2addr v0, v1

    float-to-long v0, v0

    return-wide v0

    .line 626
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getDeviceGlobalActionKeyTimeout()J

    move-result-wide v0

    return-wide v0
.end method

.method private getWindowManager()Landroid/view/WindowManager;
    .locals 2

    .prologue
    .line 2077
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    .line 2079
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 2078
    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowManager:Landroid/view/WindowManager;

    .line 2081
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method private hasInComingCall()Z
    .locals 4

    .prologue
    .line 630
    const/4 v1, 0x0

    .line 632
    .local v1, "inCallFocused":Z
    iget-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_0

    .line 633
    iget-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 634
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->INCALL_ACTIVITY:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 635
    const/4 v1, 0x1

    .line 639
    .end local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    return v1
.end method

.method private hideScreenshotGuider()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2485
    const-string/jumbo v0, "OemPhoneWindowManager"

    const-string/jumbo v1, "hideScreenshotGuider"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2486
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mScreenshotGuider:Lcom/android/server/policy/ScreenshotGuider;

    if-eqz v0, :cond_0

    .line 2487
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mScreenshotGuider:Lcom/android/server/policy/ScreenshotGuider;

    invoke-virtual {v0}, Lcom/android/server/policy/ScreenshotGuider;->hide()V

    .line 2490
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPhoneStatusReceiver:Lcom/android/server/policy/OemPhoneWindowManager$PhoneStatusBroadcastReceiver;

    if-eqz v0, :cond_1

    .line 2491
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPhoneStatusReceiver:Lcom/android/server/policy/OemPhoneWindowManager$PhoneStatusBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2492
    iput-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPhoneStatusReceiver:Lcom/android/server/policy/OemPhoneWindowManager$PhoneStatusBroadcastReceiver;

    .line 2495
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mNeedToDismissScreenshotGuider:Z

    .line 2484
    return-void
.end method

.method private isPackageAvailable(Ljava/lang/String;)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 1867
    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1868
    const/4 v3, 0x0

    .line 1867
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1869
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    iget-boolean v2, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    .line 1870
    const/4 v2, 0x1

    return v2

    .line 1872
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 1874
    :cond_0
    const-string/jumbo v2, "OemPhoneWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "QuickPay: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is not available."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1875
    return v5
.end method

.method private isScreenshotGuiderDisabled()Z
    .locals 3

    .prologue
    .line 2451
    const-string/jumbo v0, "disabled"

    const-string/jumbo v1, "persist.sys.oem.ssguider"

    const-string/jumbo v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private launchCameraAction()V
    .locals 2

    .prologue
    .line 1555
    invoke-virtual {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->sendCloseSystemWindows()V

    .line 1557
    const-class v1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 1556
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 1558
    .local v0, "service":Lcom/android/server/statusbar/StatusBarManagerInternal;
    const/16 v1, 0xb

    invoke-interface {v0, v1}, Lcom/android/server/statusbar/StatusBarManagerInternal;->onCameraLaunchGestureDetected(I)V

    .line 1554
    return-void
.end method

.method private launchQuickAccessPage()V
    .locals 3

    .prologue
    .line 1638
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->PKG_H2_LAUNCHER:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/android/server/policy/OemPhoneWindowManager;->getDefaultHomePackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1639
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "net.oneplus.h2launcher.action.OPEN_QUICK_PAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1643
    .local v0, "intent":Landroid/content/Intent;
    :goto_0
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1644
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1636
    return-void

    .line 1641
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "net.oneplus.launcher.action.OPEN_QUICK_PAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v0    # "intent":Landroid/content/Intent;
    goto :goto_0
.end method

.method private performKeyAction(ILandroid/view/KeyEvent;)V
    .locals 9
    .param p1, "behavior"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x7

    const/4 v4, 0x4

    const/4 v5, 0x0

    .line 2238
    invoke-virtual {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->keyguardOn()Z

    move-result v2

    .line 2239
    .local v2, "keyguardOn":Z
    invoke-virtual {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->isUserSetupComplete()Z

    move-result v3

    .line 2242
    .local v3, "userSetupComplete":Z
    if-nez v3, :cond_0

    .line 2243
    packed-switch p1, :pswitch_data_0

    .line 2250
    :goto_0
    return-void

    .line 2245
    :pswitch_0
    invoke-direct {p0, v4}, Lcom/android/server/policy/OemPhoneWindowManager;->triggerVirtualKeypress(I)V

    goto :goto_0

    .line 2253
    :cond_0
    packed-switch p1, :pswitch_data_1

    .line 2237
    :cond_1
    :goto_1
    :pswitch_1
    return-void

    .line 2255
    :pswitch_2
    invoke-direct {p0, v4}, Lcom/android/server/policy/OemPhoneWindowManager;->triggerVirtualKeypress(I)V

    goto :goto_1

    .line 2258
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->handleShortPressOnHome()V

    goto :goto_1

    .line 2261
    :pswitch_4
    const/16 v4, 0x52

    invoke-direct {p0, v4}, Lcom/android/server/policy/OemPhoneWindowManager;->triggerVirtualKeypress(I)V

    goto :goto_1

    .line 2264
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->toggleRecentApps()V

    goto :goto_1

    .line 2267
    :pswitch_6
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v4

    invoke-virtual {p0, v6, v4}, Lcom/android/server/policy/OemPhoneWindowManager;->launchAssistAction(Ljava/lang/String;I)V

    goto :goto_1

    .line 2270
    :pswitch_7
    invoke-direct {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->putDeviceToSleep()V

    goto :goto_1

    .line 2273
    :pswitch_8
    invoke-direct {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->launchCameraAction()V

    goto :goto_1

    .line 2277
    :pswitch_9
    invoke-virtual {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->launchVoiceAssistAction()V

    goto :goto_1

    .line 2280
    :pswitch_a
    iget-object v4, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mCurrentUserId:I

    invoke-direct {p0, v4, v5}, Lcom/android/server/policy/OemPhoneWindowManager;->switchToLastApp(Landroid/content/Context;I)Z

    goto :goto_1

    .line 2283
    :pswitch_b
    invoke-direct {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->launchQuickAccessPage()V

    goto :goto_1

    .line 2286
    :pswitch_c
    iget-object v4, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v4, :cond_1

    .line 2287
    iget-object v4, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 2288
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "StatusBar"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2291
    invoke-direct {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->collapsePanels()V

    goto :goto_1

    .line 2295
    :cond_2
    invoke-direct {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->expandNotificationsPanel()V

    goto :goto_1

    .line 2300
    .end local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :pswitch_d
    invoke-direct {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->toggleSplitScreen()V

    goto :goto_1

    .line 2307
    :pswitch_e
    sget-boolean v4, Lcom/android/server/policy/OemPhoneWindowManager;->IS_QUICK_PAY_ENABLED:Z

    if-eqz v4, :cond_1

    .line 2308
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 2309
    .local v1, "keyCode":I
    const-string/jumbo v4, "OemPhoneWindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "QuickPay: KEY_ACTION_QUICK_PAY code="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2310
    iget-object v4, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureHandler:Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;

    invoke-virtual {v4, v8}, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;->removeMessages(I)V

    .line 2312
    iget-object v6, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureHandler:Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;

    .line 2314
    const/16 v4, 0x84

    if-ne v1, v4, :cond_3

    const/4 v4, 0x1

    .line 2312
    :goto_2
    invoke-virtual {v6, v8, v4, v5}, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    :cond_3
    move v4, v5

    .line 2314
    goto :goto_2

    .line 2243
    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
    .end packed-switch

    .line 2253
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
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
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private putDeviceToSleep()V
    .locals 4

    .prologue
    .line 1630
    sget-boolean v0, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1631
    const-string/jumbo v0, "OemPhoneWindowManager"

    const-string/jumbo v1, " ++++++++++ putDeviceToSleep() "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1633
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 1629
    return-void
.end method

.method private readConfigurationDependentBehaviors()V
    .locals 13

    .prologue
    const/16 v12, 0xc

    const/4 v11, 0x0

    .line 1450
    iget-object v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 1453
    .local v8, "resolver":Landroid/content/ContentResolver;
    iget-object v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 1454
    const v10, 0x10e0062

    .line 1453
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 1456
    .local v6, "defaultLongPressOnHomeBehavior":I
    const-string/jumbo v9, "key_home_long_press_action"

    .line 1455
    invoke-static {v8, v9, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnHomeBehavior:I

    .line 1458
    iget v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnHomeBehavior:I

    if-ltz v9, :cond_0

    .line 1459
    iget v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnHomeBehavior:I

    if-le v9, v12, :cond_1

    .line 1460
    :cond_0
    iput v11, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnHomeBehavior:I

    .line 1464
    :cond_1
    iget-object v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 1465
    const v10, 0x10e0063

    .line 1464
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 1467
    .local v2, "defaultDoubleTapOnHomeBehavior":I
    const-string/jumbo v9, "key_home_double_tap_action"

    .line 1466
    invoke-static {v8, v9, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    .line 1469
    iget v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    if-ltz v9, :cond_2

    .line 1470
    iget v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    if-le v9, v12, :cond_3

    .line 1471
    :cond_2
    iput v11, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    .line 1475
    :cond_3
    iget-object v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 1476
    const v10, 0x5090009

    .line 1475
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    .line 1478
    .local v7, "defaultLongPressOnMenuBehavior":I
    const-string/jumbo v9, "key_menu_long_press_action"

    .line 1477
    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnMenuBehavior:I

    .line 1480
    iget v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnMenuBehavior:I

    if-ltz v9, :cond_4

    .line 1481
    iget v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnMenuBehavior:I

    if-le v9, v12, :cond_5

    .line 1482
    :cond_4
    iput v11, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnMenuBehavior:I

    .line 1486
    :cond_5
    iget-object v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 1487
    const v10, 0x5090005

    .line 1486
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 1489
    .local v3, "defaultDoubleTapOnMenuBehavior":I
    const-string/jumbo v9, "key_menu_double_tap_action"

    .line 1488
    invoke-static {v8, v9, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnMenuBehavior:I

    .line 1491
    iget v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnMenuBehavior:I

    if-ltz v9, :cond_6

    .line 1492
    iget v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnMenuBehavior:I

    if-le v9, v12, :cond_7

    .line 1493
    :cond_6
    iput v11, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnMenuBehavior:I

    .line 1497
    :cond_7
    iget-object v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 1498
    const v10, 0x5090008

    .line 1497
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 1500
    .local v5, "defaultLongPressOnBackBehavior":I
    const-string/jumbo v9, "key_back_long_press_action"

    .line 1499
    invoke-static {v8, v9, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnBackBehavior:I

    .line 1502
    iget v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnBackBehavior:I

    if-ltz v9, :cond_8

    .line 1503
    iget v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnBackBehavior:I

    if-le v9, v12, :cond_9

    .line 1504
    :cond_8
    iput v11, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnBackBehavior:I

    .line 1508
    :cond_9
    iget-object v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 1509
    const v10, 0x5090004

    .line 1508
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 1511
    .local v1, "defaultDoubleTapOnBackBehavior":I
    const-string/jumbo v9, "key_back_double_tap_action"

    .line 1510
    invoke-static {v8, v9, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnBackBehavior:I

    .line 1513
    iget v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnBackBehavior:I

    if-ltz v9, :cond_a

    .line 1514
    iget v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnBackBehavior:I

    if-le v9, v12, :cond_b

    .line 1515
    :cond_a
    iput v11, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnBackBehavior:I

    .line 1519
    :cond_b
    iget-object v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 1520
    const v10, 0x5090007

    .line 1519
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 1522
    .local v4, "defaultLongPressOnAppSwitchBehavior":I
    const-string/jumbo v9, "key_app_switch_long_press_action"

    .line 1521
    invoke-static {v8, v9, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnAppSwitchBehavior:I

    .line 1524
    iget v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnAppSwitchBehavior:I

    if-ltz v9, :cond_c

    .line 1525
    iget v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnAppSwitchBehavior:I

    if-le v9, v12, :cond_d

    .line 1526
    :cond_c
    iput v11, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnAppSwitchBehavior:I

    .line 1530
    :cond_d
    iget-object v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 1531
    const v10, 0x5090003

    .line 1530
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 1533
    .local v0, "defaultDoubleTapOnAppSwitchBehavior":I
    const-string/jumbo v9, "key_app_switch_double_tap_action"

    .line 1532
    invoke-static {v8, v9, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnAppSwitchBehavior:I

    .line 1535
    iget v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnAppSwitchBehavior:I

    if-ltz v9, :cond_e

    .line 1536
    iget v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnAppSwitchBehavior:I

    if-le v9, v12, :cond_f

    .line 1537
    :cond_e
    iput v11, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnAppSwitchBehavior:I

    .line 1449
    :cond_f
    return-void
.end method

.method private recordErrorLog()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x96

    .line 603
    iget-boolean v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mScreenshotChordEnabled:Z

    if-eqz v2, :cond_0

    .line 604
    iget-boolean v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mScreenshotChordVolumeUpKeyTriggered:Z

    .line 603
    if-eqz v2, :cond_0

    .line 604
    iget-boolean v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mScreenshotChordPowerKeyTriggered:Z

    .line 603
    if-eqz v2, :cond_0

    .line 605
    iget-boolean v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mScreenshotChordVolumeDownKeyTriggered:Z

    if-eqz v2, :cond_1

    .line 602
    :cond_0
    :goto_0
    return-void

    .line 606
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 607
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mVolumeUpKeyTime:J

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 608
    iget-wide v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mScreenshotChordPowerKeyTime:J

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 609
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mVolumeUpKeyConsumedByScreenshotChord:Z

    .line 610
    invoke-direct {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->cancelErrorLog()V

    .line 611
    iget-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mStartBugReportTask:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->getScreenshotChordLongPressDelay()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private resolveCurrentLauncherPackage(Landroid/content/Context;I)Ljava/lang/String;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I

    .prologue
    .line 1622
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1623
    const-string/jumbo v4, "android.intent.category.HOME"

    .line 1622
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 1624
    .local v1, "launcherIntent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1625
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, p2}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 1626
    .local v0, "launcherInfo":Landroid/content/pm/ResolveInfo;
    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    return-object v3
.end method

.method private resolveQuickPayConfigFromJSON(Lorg/json/JSONArray;)V
    .locals 7
    .param p1, "jsonArray"    # Lorg/json/JSONArray;

    .prologue
    .line 2151
    if-nez p1, :cond_0

    .line 2152
    return-void

    .line 2155
    :cond_0
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_6

    .line 2156
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 2157
    .local v3, "json":Lorg/json/JSONObject;
    const-string/jumbo v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "op_quick_pay_wechat_qrcode_config"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2158
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v3}, Lcom/android/server/policy/OemPhoneWindowManager;->updateQuickPayIfNeed(ILorg/json/JSONObject;)V

    .line 2155
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2159
    :cond_2
    const-string/jumbo v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "op_quick_pay_wechat_scanning_config"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2160
    const/4 v4, 0x1

    invoke-virtual {p0, v4, v3}, Lcom/android/server/policy/OemPhoneWindowManager;->updateQuickPayIfNeed(ILorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 2170
    .end local v3    # "json":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 2171
    .local v1, "e":Lorg/json/JSONException;
    const-string/jumbo v4, "OemPhoneWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[OnlineConfig] QuickPayConfigUpdater, error message:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2150
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_2
    return-void

    .line 2161
    .restart local v3    # "json":Lorg/json/JSONObject;
    :cond_3
    :try_start_1
    const-string/jumbo v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "op_quick_pay_alipay_qrcode_config"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2162
    const/4 v4, 0x2

    invoke-virtual {p0, v4, v3}, Lcom/android/server/policy/OemPhoneWindowManager;->updateQuickPayIfNeed(ILorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 2172
    .end local v3    # "json":Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    .line 2173
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "OemPhoneWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[OnlineConfig] QuickPayConfigUpdater, error message:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2163
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v3    # "json":Lorg/json/JSONObject;
    :cond_4
    :try_start_2
    const-string/jumbo v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "op_quick_pay_alipay_scanning_config"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2164
    const/4 v4, 0x3

    invoke-virtual {p0, v4, v3}, Lcom/android/server/policy/OemPhoneWindowManager;->updateQuickPayIfNeed(ILorg/json/JSONObject;)V

    goto/16 :goto_1

    .line 2165
    :cond_5
    const-string/jumbo v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "op_quick_pay_paytm_config"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2166
    const/4 v4, 0x4

    invoke-virtual {p0, v4, v3}, Lcom/android/server/policy/OemPhoneWindowManager;->updateQuickPayIfNeed(ILorg/json/JSONObject;)V

    goto/16 :goto_1

    .line 2169
    .end local v3    # "json":Lorg/json/JSONObject;
    :cond_6
    const-string/jumbo v4, "OemPhoneWindowManager"

    const-string/jumbo v5, "[OnlineConfig] QuickPayConfigUpdater updated complete"

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2
.end method

.method private setScreenshotGuiderDisabled()V
    .locals 4

    .prologue
    .line 2455
    const-string/jumbo v0, "OemPhoneWindowManager"

    const-string/jumbo v1, "setScreenshotGuiderDisabled was called:"

    .line 2456
    new-instance v2, Ljava/lang/Exception;

    const-string/jumbo v3, "setScreenshotGuiderDisabled"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 2455
    invoke-static {v0, v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2457
    const-string/jumbo v0, "persist.sys.oem.ssguider"

    const-string/jumbo v1, "disabled"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2454
    return-void
.end method

.method private showScreenshotGuider()V
    .locals 4

    .prologue
    .line 2467
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0xd

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->isScreenshotGuiderDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2466
    :cond_0
    :goto_0
    return-void

    .line 2468
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mEnableThreePointersScreenShot:Z

    .line 2467
    if-eqz v0, :cond_0

    .line 2469
    const-string/jumbo v0, "OemPhoneWindowManager"

    const-string/jumbo v1, "showScreenshotGuider"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2470
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    new-instance v1, Lcom/android/server/policy/OemPhoneWindowManager$12;

    invoke-direct {v1, p0}, Lcom/android/server/policy/OemPhoneWindowManager$12;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;)V

    .line 2480
    const-wide/16 v2, 0x3e8

    .line 2470
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private startQuickPay(IZZ)V
    .locals 8
    .param p1, "which"    # I
    .param p2, "unlocked"    # Z
    .param p3, "fromButton"    # Z

    .prologue
    .line 1777
    :try_start_0
    sget-boolean v5, Lcom/android/server/policy/OemPhoneWindowManager;->IS_QUICK_PAY_ENABLED:Z

    if-nez v5, :cond_0

    return-void

    .line 1778
    :cond_0
    iget-object v5, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPaymentApps:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x5

    if-ge v5, v6, :cond_1

    return-void

    .line 1779
    :cond_1
    iput-boolean p3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayBtnLaunched:Z

    .line 1780
    const-string/jumbo v5, "OemPhoneWindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "QuickPay: startQuickPay which="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " unlocked="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " fromButton="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1781
    iget-object v5, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPaymentApps:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;

    iget-object v5, v5, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->packageName:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/server/policy/OemPhoneWindowManager;->isPackageAvailable(Ljava/lang/String;)Z

    move-result v4

    .line 1782
    .local v4, "pkgOK":Z
    if-nez v4, :cond_2

    .line 1783
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPaymentApps:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 1784
    if-eq p1, v1, :cond_5

    .line 1785
    iget-object v5, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPaymentApps:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;

    .line 1786
    .local v3, "next":Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;
    iget-boolean v5, v3, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->isDefault:Z

    if-eqz v5, :cond_5

    iget-object v5, v3, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->packageName:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/server/policy/OemPhoneWindowManager;->isPackageAvailable(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1787
    move p1, v1

    .line 1788
    const/4 v4, 0x1

    .line 1789
    .local v4, "pkgOK":Z
    const-string/jumbo v5, "OemPhoneWindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "QuickPay: startQuickPay new which="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1795
    .end local v1    # "i":I
    .end local v3    # "next":Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;
    .end local v4    # "pkgOK":Z
    :cond_2
    if-eqz v4, :cond_8

    .line 1796
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/android/server/policy/OemPhoneWindowManager;->clearQuickPaySwitch(Z)V

    .line 1798
    iget-object v5, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPaymentApps:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;

    iget-object v5, v5, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->packageName:Ljava/lang/String;

    const/16 v6, 0x1388

    invoke-virtual {p0, v5, v6}, Lcom/android/server/policy/OemPhoneWindowManager;->acquireAppLaunchPerfLock(Ljava/lang/String;I)V

    .line 1799
    iput p1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayWhich:I

    .line 1801
    iget-object v5, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPaymentApps:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;

    .line 1802
    .restart local v3    # "next":Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;
    if-eqz p2, :cond_3

    .line 1803
    iget-object v5, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    iget-object v6, v3, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/app/ActivityManagerInternal;->addAppLockerPassedPackage(Ljava/lang/String;)V

    .line 1804
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0, v5, v6, v7}, Lcom/android/server/policy/OemPhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 1806
    :cond_3
    const/4 v2, 0x0

    .line 1807
    .local v2, "intent":Landroid/content/Intent;
    iget-boolean v5, v3, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->isSDKstart:Z

    if-eqz v5, :cond_6

    .line 1808
    new-instance v2, Landroid/content/Intent;

    .end local v2    # "intent":Landroid/content/Intent;
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1809
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v5, "com.oneplus.quickpay"

    const-string/jumbo v6, "com.oneplus.quickpay.PayActivity"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1810
    const v5, 0x10008000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1811
    const-string/jumbo v5, "OP_QUICK_PAY_DEFAULT"

    invoke-virtual {v2, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1812
    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v2, v5}, Lcom/android/server/policy/OemPhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1775
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "next":Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;
    :cond_4
    :goto_1
    return-void

    .line 1783
    .restart local v1    # "i":I
    .local v4, "pkgOK":Z
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 1813
    .end local v1    # "i":I
    .end local v4    # "pkgOK":Z
    .local v2, "intent":Landroid/content/Intent;
    .restart local v3    # "next":Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;
    :cond_6
    iget-object v5, v3, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->className:Ljava/lang/String;

    if-eqz v5, :cond_7

    .line 1814
    new-instance v2, Landroid/content/Intent;

    .end local v2    # "intent":Landroid/content/Intent;
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1815
    .local v2, "intent":Landroid/content/Intent;
    iget-object v5, v3, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->packageName:Ljava/lang/String;

    iget-object v6, v3, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->className:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1816
    const v5, 0x10008000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1817
    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v2, v5}, Lcom/android/server/policy/OemPhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1829
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "next":Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;
    :catch_0
    move-exception v0

    .line 1830
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "OemPhoneWindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "QuickPay: startQuickPay failed "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1818
    .end local v0    # "e":Ljava/lang/Exception;
    .local v2, "intent":Landroid/content/Intent;
    .restart local v3    # "next":Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;
    :cond_7
    :try_start_1
    iget-object v5, v3, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->urlScheme:Ljava/lang/String;

    if-eqz v5, :cond_4

    .line 1819
    new-instance v2, Landroid/content/Intent;

    .end local v2    # "intent":Landroid/content/Intent;
    const-string/jumbo v5, "android.intent.action.VIEW"

    iget-object v6, v3, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->urlScheme:Ljava/lang/String;

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1821
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v5, 0x14000000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1822
    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v2, v5}, Lcom/android/server/policy/OemPhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_1

    .line 1825
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "next":Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;
    :cond_8
    iget-object v5, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    const v6, 0x50a003e

    .line 1826
    const/4 v7, 0x0

    .line 1825
    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 1827
    const-string/jumbo v5, "OemPhoneWindowManager"

    const-string/jumbo v6, "QuickPay: startQuickPay have no installed app."

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private switchToLastApp(Landroid/content/Context;I)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I

    .prologue
    .line 1563
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/OemPhoneWindowManager;->switchToLastAppInternal(Landroid/content/Context;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1564
    :catch_0
    move-exception v0

    .line 1565
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "OemPhoneWindowManager"

    const-string/jumbo v2, "Could not switch to last app"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1567
    const/4 v1, 0x0

    return v1
.end method

.method private switchToLastAppInternal(Landroid/content/Context;I)Z
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 1572
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/OemPhoneWindowManager;->getLastTask(Landroid/content/Context;I)Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v1

    .line 1573
    .local v1, "lastTask":Landroid/app/ActivityManager$RecentTaskInfo;
    iget-object v3, v1, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1574
    .local v2, "packageName":Ljava/lang/String;
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 1577
    .local v0, "am":Landroid/app/IActivityManager;
    if-nez v1, :cond_0

    .line 1578
    return v4

    .line 1583
    :cond_0
    iget v3, v1, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    if-gez v3, :cond_1

    .line 1584
    iget v3, v1, Landroid/app/ActivityManager$RecentTaskInfo;->affiliatedTaskId:I

    invoke-interface {v0, v3, v6}, Landroid/app/IActivityManager;->startActivityFromRecents(ILandroid/os/Bundle;)I

    .line 1585
    return v7

    .line 1588
    :cond_1
    sget-boolean v3, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 1589
    const-string/jumbo v3, "OemPhoneWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "switching to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1592
    :cond_2
    iget v3, v1, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    const/4 v4, 0x2

    invoke-interface {v0, v3, v4, v6}, Landroid/app/IActivityManager;->moveTaskToFront(IILandroid/os/Bundle;)V

    .line 1594
    return v7
.end method

.method private toggleSplitScreen()V
    .locals 3

    .prologue
    .line 1698
    const-class v1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 1697
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 1699
    .local v0, "service":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v0, :cond_0

    .line 1700
    invoke-interface {v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->toggleSplitScreen()V

    .line 1695
    :goto_0
    return-void

    .line 1702
    :cond_0
    const-string/jumbo v1, "OemPhoneWindowManager"

    const-string/jumbo v2, "Failed to get StatusBarManagerService"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private triggerVirtualKeypress(I)V
    .locals 15
    .param p1, "keyCode"    # I

    .prologue
    .line 1542
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    .line 1543
    .local v0, "im":Landroid/hardware/input/InputManager;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 1545
    .local v2, "now":J
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v6, 0x0

    .line 1546
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    .line 1547
    const/16 v12, 0x8

    const v13, 0x10000101

    move-wide v4, v2

    move/from16 v7, p1

    .line 1545
    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 1548
    .local v1, "downEvent":Landroid/view/KeyEvent;
    const/4 v4, 0x1

    invoke-static {v1, v4}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v14

    .line 1550
    .local v14, "upEvent":Landroid/view/KeyEvent;
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 1551
    const/4 v4, 0x0

    invoke-virtual {v0, v14, v4}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 1541
    return-void
.end method


# virtual methods
.method acquireAppLaunchPerfLock(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "milliseconds"    # I

    .prologue
    .line 2097
    iget-boolean v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mIsperfDisablepackingEnable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPerfPack:Landroid/util/BoostFramework;

    if-nez v0, :cond_0

    .line 2098
    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPerfPack:Landroid/util/BoostFramework;

    .line 2100
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPerfPack:Landroid/util/BoostFramework;

    if-eqz v0, :cond_1

    .line 2101
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPerfPack:Landroid/util/BoostFramework;

    iget v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->lDisPackTimeOut:I

    iget-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->lBoostPackParamVal:[I

    invoke-virtual {v0, v1, v2}, Landroid/util/BoostFramework;->perfLockAcquire(I[I)I

    .line 2104
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mIsPerfBoostEnabled:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPerfBoost:Landroid/util/BoostFramework;

    if-nez v0, :cond_2

    .line 2105
    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPerfBoost:Landroid/util/BoostFramework;

    .line 2107
    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPerfBoost:Landroid/util/BoostFramework;

    if-eqz v0, :cond_3

    .line 2108
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPerfBoost:Landroid/util/BoostFramework;

    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->lBoostCpuParamVal:[I

    invoke-virtual {v0, p2, v1}, Landroid/util/BoostFramework;->perfLockAcquire(I[I)I

    .line 2112
    :cond_3
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPerfIop:Landroid/util/BoostFramework;

    if-nez v0, :cond_4

    .line 2113
    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPerfIop:Landroid/util/BoostFramework;

    .line 2115
    :cond_4
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPerfIop:Landroid/util/BoostFramework;

    if-eqz v0, :cond_5

    .line 2116
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPerfIop:Landroid/util/BoostFramework;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Landroid/util/BoostFramework;->perfIOPrefetchStart(ILjava/lang/String;)I

    .line 2095
    :cond_5
    return-void
.end method

.method public focusChangedLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)I
    .locals 11
    .param p1, "lastFocus"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "newFocus"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x0

    .line 1722
    sget-boolean v6, Lcom/android/server/policy/OemPhoneWindowManager;->IS_QUICK_PAY_ENABLED:Z

    if-eqz v6, :cond_3

    iget v6, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayWhich:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_3

    iget-object v6, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPaymentApps:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x5

    if-lt v6, v7, :cond_3

    .line 1723
    if-eqz p2, :cond_4

    invoke-interface {p2}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1724
    .local v5, "winTitle":Ljava/lang/String;
    :goto_0
    iget-object v6, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPaymentApps:Ljava/util/ArrayList;

    iget v7, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayWhich:I

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;

    iget-object v6, v6, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->tartgetClassName:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1725
    .local v2, "isPayApp":Z
    if-eqz p2, :cond_0

    if-eqz v2, :cond_5

    :cond_0
    const/4 v1, 0x0

    .line 1728
    .local v1, "isFocusChanged":Z
    :goto_1
    const-string/jumbo v6, "OemPhoneWindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "QuickPay: focusChangedLw mQuickPayFocusWin="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayFocusWin:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1729
    const-string/jumbo v8, " mQuickPayWhich="

    .line 1728
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1729
    iget v8, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayWhich:I

    .line 1728
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1729
    const-string/jumbo v8, " newFocus="

    .line 1728
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1730
    const-string/jumbo v8, " lastFocus="

    .line 1728
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1730
    const-string/jumbo v8, " isFocusChanged="

    .line 1728
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1731
    const-string/jumbo v8, " mQuickPayFocusWinPid="

    .line 1728
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1731
    iget v8, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayFocusWinPid:I

    .line 1728
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1732
    if-eqz v2, :cond_8

    .line 1733
    iget v6, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayFocusWinPid:I

    if-nez v6, :cond_7

    .line 1734
    invoke-interface {p2}, Landroid/view/WindowManagerPolicy$WindowState;->getWindowPid()I

    move-result v6

    iput v6, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayFocusWinPid:I

    .line 1758
    :cond_1
    :goto_2
    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 1759
    .local v3, "newFocusWin":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayFocusWin:Ljava/lang/String;

    const-string/jumbo v7, ""

    if-eq v6, v7, :cond_2

    iget-object v6, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayFocusWin:Ljava/lang/String;

    if-eq v6, v3, :cond_3

    .line 1760
    :cond_2
    iput-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayFocusWin:Ljava/lang/String;

    .line 1761
    iget-object v6, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureHandler:Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;

    .line 1762
    const/16 v7, 0x9

    .line 1761
    invoke-virtual {v6, v7}, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;->removeMessages(I)V

    .line 1763
    iget-object v6, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureHandler:Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;

    invoke-virtual {v6, v10}, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;->removeMessages(I)V

    .line 1765
    iget-object v6, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureHandler:Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;

    .line 1767
    invoke-interface {p2}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v7

    .line 1765
    invoke-virtual {v6, v10, v7}, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 1773
    .end local v1    # "isFocusChanged":Z
    .end local v2    # "isPayApp":Z
    .end local v3    # "newFocusWin":Ljava/lang/String;
    .end local v5    # "winTitle":Ljava/lang/String;
    :cond_3
    :goto_3
    invoke-super {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->focusChangedLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)I

    move-result v6

    return v6

    .line 1723
    :cond_4
    const-string/jumbo v5, ""

    .restart local v5    # "winTitle":Ljava/lang/String;
    goto/16 :goto_0

    .line 1726
    .restart local v2    # "isPayApp":Z
    :cond_5
    invoke-interface {p2}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x7d0

    if-eq v6, v7, :cond_0

    .line 1727
    invoke-interface {p2}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x7d8

    if-eq v6, v7, :cond_6

    const/4 v1, 0x1

    .restart local v1    # "isFocusChanged":Z
    goto/16 :goto_1

    .end local v1    # "isFocusChanged":Z
    :cond_6
    const/4 v1, 0x0

    .restart local v1    # "isFocusChanged":Z
    goto/16 :goto_1

    .line 1736
    :cond_7
    invoke-interface {p2}, Landroid/view/WindowManagerPolicy$WindowState;->getWindowPid()I

    move-result v4

    .line 1737
    .local v4, "pid":I
    iget v6, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayFocusWinPid:I

    if-eq v6, v4, :cond_1

    .line 1738
    const-string/jumbo v6, ""

    iput-object v6, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayFocusWin:Ljava/lang/String;

    .line 1740
    iput v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayFocusWinPid:I

    .line 1742
    iget-object v6, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 1743
    iget-object v6, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPaymentApps:Ljava/util/ArrayList;

    iget v8, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayWhich:I

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;

    iget-object v6, v6, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->packageName:Ljava/lang/String;

    .line 1742
    invoke-virtual {v7, v6}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1744
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_1

    .line 1745
    const v6, 0x10008000

    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1746
    iget-object v6, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    new-instance v7, Lcom/android/server/policy/OemPhoneWindowManager$8;

    invoke-direct {v7, p0, v0}, Lcom/android/server/policy/OemPhoneWindowManager$8;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;Landroid/content/Intent;)V

    invoke-virtual {v6, v7}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_2

    .line 1769
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v4    # "pid":I
    :cond_8
    if-eqz v1, :cond_3

    iget-object v6, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayFocusWin:Ljava/lang/String;

    const-string/jumbo v7, ""

    if-eq v6, v7, :cond_3

    .line 1770
    invoke-direct {p0, v9}, Lcom/android/server/policy/OemPhoneWindowManager;->clearQuickPaySwitch(Z)V

    goto :goto_3
.end method

.method public init(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManager"    # Landroid/view/IWindowManager;
    .param p3, "windowManagerFuncs"    # Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .prologue
    .line 404
    invoke-super/range {p0 .. p3}, Lcom/android/server/policy/PhoneWindowManager;->init(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V

    .line 407
    const/4 v15, 0x1

    new-array v15, v15, [I

    const/16 v16, 0xb

    const/16 v17, 0x0

    aput v16, v15, v17

    invoke-static {v15}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 408
    new-instance v15, Lcom/android/server/policy/OemPhoneWindowManager$KeyLockModeReceiver;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v15, v0, v1}, Lcom/android/server/policy/OemPhoneWindowManager$KeyLockModeReceiver;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;Lcom/android/server/policy/OemPhoneWindowManager$KeyLockModeReceiver;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mKeyLockModeReceiver:Lcom/android/server/policy/OemPhoneWindowManager$KeyLockModeReceiver;

    .line 409
    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    .line 410
    .local v9, "keyModeFilter":Landroid/content/IntentFilter;
    const-string/jumbo v15, "com.oem.intent.action.KEY_LOCK_MODE"

    invoke-virtual {v9, v15}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 411
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mKeyLockModeReceiver:Lcom/android/server/policy/OemPhoneWindowManager$KeyLockModeReceiver;

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 416
    .end local v9    # "keyModeFilter":Landroid/content/IntentFilter;
    :cond_0
    const/4 v15, 0x1

    new-array v15, v15, [I

    const/16 v16, 0xd

    const/16 v17, 0x0

    aput v16, v15, v17

    invoke-static {v15}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 417
    new-instance v11, Landroid/os/HandlerThread;

    const-string/jumbo v15, "ThreePointersThread"

    invoke-direct {v11, v15}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 418
    .local v11, "mRecognizeThread":Landroid/os/HandlerThread;
    invoke-virtual {v11}, Landroid/os/HandlerThread;->start()V

    .line 419
    new-instance v15, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;

    invoke-virtual {v11}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v15, v0, v1}, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;Landroid/os/Looper;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureHandler:Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;

    .line 420
    new-instance v15, Lcom/android/server/policy/OemThreePointersGesturesListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    .line 421
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureHandler:Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;

    move-object/from16 v17, v0

    .line 420
    invoke-direct/range {v15 .. v17}, Lcom/android/server/policy/OemThreePointersGesturesListener;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mThreePointersGestures:Lcom/android/server/policy/OemThreePointersGesturesListener;

    .line 422
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mThreePointersGestures:Lcom/android/server/policy/OemThreePointersGesturesListener;

    move-object/from16 v16, v0

    invoke-interface/range {v15 .. v16}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->registerPointerEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V

    .line 427
    .end local v11    # "mRecognizeThread":Landroid/os/HandlerThread;
    :cond_1
    const/4 v8, 0x1

    .line 428
    .local v8, "installedOPBugreport":Z
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 430
    .local v12, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    const-string/jumbo v15, "com.oneplus.opbugreport"

    const/16 v16, 0x4

    move/from16 v0, v16

    invoke-virtual {v12, v15, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 434
    :goto_0
    if-eqz v8, :cond_2

    .line 435
    new-instance v10, Landroid/os/HandlerThread;

    const-string/jumbo v15, "FourPointersThread"

    invoke-direct {v10, v15}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 436
    .local v10, "mRecognize4PointThread":Landroid/os/HandlerThread;
    invoke-virtual {v10}, Landroid/os/HandlerThread;->start()V

    .line 437
    new-instance v15, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;

    invoke-virtual {v10}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v15, v0, v1}, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;Landroid/os/Looper;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureOPBugreportHandler:Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;

    .line 438
    new-instance v15, Lcom/android/server/policy/OemFourPointersGesturesListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    .line 439
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureOPBugreportHandler:Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;

    move-object/from16 v17, v0

    .line 438
    invoke-direct/range {v15 .. v17}, Lcom/android/server/policy/OemFourPointersGesturesListener;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mFourPointersGestures:Lcom/android/server/policy/OemFourPointersGesturesListener;

    .line 440
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mFourPointersGestures:Lcom/android/server/policy/OemFourPointersGesturesListener;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mEnableFourPointersScreenShot:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/android/server/policy/OemFourPointersGesturesListener;->setOPBugreporttEnable(Z)V

    .line 441
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mFourPointersGestures:Lcom/android/server/policy/OemFourPointersGesturesListener;

    move-object/from16 v16, v0

    invoke-interface/range {v15 .. v16}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->registerPointerEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V

    .line 445
    .end local v10    # "mRecognize4PointThread":Landroid/os/HandlerThread;
    :cond_2
    new-instance v15, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v15, v0, v1}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    .line 446
    new-instance v15, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v15, v0, v1}, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mSettingsObserver:Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;

    .line 448
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mSettingsObserver:Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;

    invoke-virtual {v15}, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->observe()V

    .line 451
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mDeviceKeyHandler:Lcom/android/server/policy/DeviceKeyHandler;

    if-nez v15, :cond_3

    .line 452
    new-instance v15, Lcom/android/server/policy/DeviceKeyHandler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-direct/range {v15 .. v16}, Lcom/android/server/policy/DeviceKeyHandler;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mDeviceKeyHandler:Lcom/android/server/policy/DeviceKeyHandler;

    .line 457
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    .line 458
    const v16, 0x5090006

    .line 457
    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mLockTaskEndDelay:I

    .line 464
    const/4 v15, 0x1

    new-array v15, v15, [I

    const/16 v16, 0xd

    const/16 v17, 0x0

    aput v16, v15, v17

    invoke-static {v15}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/OemPhoneWindowManager;->isScreenshotGuiderDisabled()Z

    move-result v15

    if-eqz v15, :cond_8

    .line 474
    :cond_4
    :goto_1
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 475
    .local v6, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v15, "com.oneplus.intent.action.stk.user_activity_enabled"

    invoke-virtual {v6, v15}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 476
    new-instance v15, Lcom/android/server/policy/OemPhoneWindowManager$StkUserActivityTestEnabledReceiver;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v15, v0, v1}, Lcom/android/server/policy/OemPhoneWindowManager$StkUserActivityTestEnabledReceiver;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;Lcom/android/server/policy/OemPhoneWindowManager$StkUserActivityTestEnabledReceiver;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mStkUserActivityTestEnabledReceiver:Lcom/android/server/policy/OemPhoneWindowManager$StkUserActivityTestEnabledReceiver;

    .line 477
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mStkUserActivityTestEnabledReceiver:Lcom/android/server/policy/OemPhoneWindowManager$StkUserActivityTestEnabledReceiver;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 481
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 482
    .local v5, "engineermodeFilter":Landroid/content/IntentFilter;
    const-string/jumbo v15, "oem.intent.action.DISABLE_LIDCONTROLSSLEEP"

    invoke-virtual {v5, v15}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 483
    const-string/jumbo v15, "oem.intent.action.ENABLE_LIDCONTROLSSLEEP"

    invoke-virtual {v5, v15}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 484
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mEngineerModeHandleReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 489
    sget-boolean v15, Lcom/android/server/policy/OemPhoneWindowManager;->IS_QUICK_PAY_ENABLED:Z

    if-eqz v15, :cond_c

    .line 490
    new-instance v2, Ljava/util/ArrayList;

    .line 491
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    .line 492
    const v16, 0x507000e

    .line 491
    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    .line 490
    invoke-direct {v2, v15}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 493
    .local v2, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mPaymentApps:Ljava/util/ArrayList;

    .line 494
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v7, v15, :cond_b

    .line 495
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 496
    .local v3, "config":Ljava/lang/String;
    const-string/jumbo v15, ";"

    invoke-virtual {v3, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 497
    .local v13, "split":[Ljava/lang/String;
    array-length v15, v13

    const/16 v16, 0x4

    move/from16 v0, v16

    if-lt v15, v0, :cond_7

    .line 498
    new-instance v14, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;)V

    .line 499
    .local v14, "tmp":Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;
    iput v7, v14, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->index:I

    .line 500
    const/4 v15, 0x0

    aget-object v15, v13, v15

    iput-object v15, v14, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->packageName:Ljava/lang/String;

    .line 501
    const/4 v15, 0x1

    aget-object v15, v13, v15

    const-string/jumbo v16, "sdk"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 502
    const/4 v15, 0x1

    iput-boolean v15, v14, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->isSDKstart:Z

    .line 509
    :goto_3
    const-string/jumbo v15, "default"

    const/16 v16, 0x2

    aget-object v16, v13, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 510
    const/4 v15, 0x1

    iput-boolean v15, v14, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->isDefault:Z

    .line 512
    :cond_5
    const-string/jumbo v15, "class"

    const/16 v16, 0x3

    aget-object v16, v13, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_6

    .line 513
    const/4 v15, 0x3

    aget-object v15, v13, v15

    iput-object v15, v14, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->tartgetClassName:Ljava/lang/String;

    .line 515
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mPaymentApps:Ljava/util/ArrayList;

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 494
    .end local v14    # "tmp":Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;
    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 431
    .end local v2    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "config":Ljava/lang/String;
    .end local v5    # "engineermodeFilter":Landroid/content/IntentFilter;
    .end local v6    # "filter":Landroid/content/IntentFilter;
    .end local v7    # "i":I
    .end local v13    # "split":[Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 432
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 465
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_8
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 466
    .restart local v6    # "filter":Landroid/content/IntentFilter;
    const-string/jumbo v15, "android.intent.action.PHONE_STATE"

    invoke-virtual {v6, v15}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 467
    new-instance v15, Lcom/android/server/policy/OemPhoneWindowManager$PhoneStatusBroadcastReceiver;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v15, v0, v1}, Lcom/android/server/policy/OemPhoneWindowManager$PhoneStatusBroadcastReceiver;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;Lcom/android/server/policy/OemPhoneWindowManager$PhoneStatusBroadcastReceiver;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mPhoneStatusReceiver:Lcom/android/server/policy/OemPhoneWindowManager$PhoneStatusBroadcastReceiver;

    .line 468
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mPhoneStatusReceiver:Lcom/android/server/policy/OemPhoneWindowManager$PhoneStatusBroadcastReceiver;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 503
    .restart local v2    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3    # "config":Ljava/lang/String;
    .restart local v5    # "engineermodeFilter":Landroid/content/IntentFilter;
    .restart local v7    # "i":I
    .restart local v13    # "split":[Ljava/lang/String;
    .restart local v14    # "tmp":Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;
    :cond_9
    const/4 v15, 0x1

    aget-object v15, v13, v15

    const-string/jumbo v16, "://"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 504
    const/4 v15, 0x1

    aget-object v15, v13, v15

    iput-object v15, v14, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->urlScheme:Ljava/lang/String;

    goto :goto_3

    .line 506
    :cond_a
    const/4 v15, 0x1

    aget-object v15, v13, v15

    iput-object v15, v14, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->className:Ljava/lang/String;

    .line 507
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v14, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v14, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->className:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v14, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->tartgetClassName:Ljava/lang/String;

    goto/16 :goto_3

    .line 519
    .end local v3    # "config":Ljava/lang/String;
    .end local v13    # "split":[Ljava/lang/String;
    .end local v14    # "tmp":Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;
    :cond_b
    new-instance v15, Lcom/oneplus/config/ConfigObserver;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    move-object/from16 v17, v0

    .line 520
    new-instance v18, Lcom/android/server/policy/OemPhoneWindowManager$QuickPayConfigUpdater;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/policy/OemPhoneWindowManager$QuickPayConfigUpdater;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;)V

    sget-object v19, Lcom/android/server/policy/OemPhoneWindowManager;->QUICKPAY_APPS_CONFIG_NAME:Ljava/lang/String;

    .line 519
    invoke-direct/range {v15 .. v19}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayConfigObserver:Lcom/oneplus/config/ConfigObserver;

    .line 521
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayConfigObserver:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {v15}, Lcom/oneplus/config/ConfigObserver;->register()V

    .line 522
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureHandler:Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;

    const/16 v16, 0xa

    invoke-virtual/range {v15 .. v16}, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;->sendEmptyMessage(I)Z

    .line 525
    .end local v2    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7    # "i":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    .line 526
    const v16, 0x11200b6

    .line 525
    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v15

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mIsPerfBoostEnabled:Z

    .line 527
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    .line 528
    const v16, 0x11200b9

    .line 527
    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v15

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mIsperfDisablepackingEnable:Z

    .line 530
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mIsPerfBoostEnabled:Z

    if-eqz v15, :cond_d

    .line 531
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    .line 532
    const v16, 0x10e00aa

    .line 531
    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/server/policy/OemPhoneWindowManager;->lBoostTimeOut:I

    .line 533
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    .line 534
    const v16, 0x107004b

    .line 533
    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/server/policy/OemPhoneWindowManager;->lBoostCpuParamVal:[I

    .line 536
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mIsperfDisablepackingEnable:Z

    if-eqz v15, :cond_e

    .line 537
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    .line 538
    const v16, 0x10e00ad

    .line 537
    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/server/policy/OemPhoneWindowManager;->lDisPackTimeOut:I

    .line 539
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    .line 540
    const v16, 0x107004f

    .line 539
    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/server/policy/OemPhoneWindowManager;->lBoostPackParamVal:[I

    .line 403
    :cond_e
    return-void
.end method

.method public interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J
    .locals 32
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .prologue
    .line 888
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v9

    .line 889
    .local v9, "flags":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v14

    .line 890
    .local v14, "keyCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v17

    .line 891
    .local v17, "metaState":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v19

    .line 892
    .local v19, "repeatCount":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getSource()I

    move-result v20

    .line 893
    .local v20, "source":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/OemPhoneWindowManager;->keyguardOn()Z

    move-result v15

    .line 894
    .local v15, "keyguardOn":Z
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v27

    if-nez v27, :cond_7

    const/4 v7, 0x1

    .line 895
    .local v7, "down":Z
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v27

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_8

    const/16 v25, 0x1

    .line 896
    .local v25, "up":Z
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v6

    .line 897
    .local v6, "canceled":Z
    and-int/lit16 v0, v9, 0x80

    move/from16 v27, v0

    if-eqz v27, :cond_9

    const/16 v16, 0x1

    .line 899
    .local v16, "longPress":Z
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v27

    and-int/lit8 v27, v27, 0x40

    if-eqz v27, :cond_a

    const/4 v13, 0x1

    .line 900
    .local v13, "isFromNavbar":Z
    :goto_3
    const/high16 v27, 0x20000000

    and-int v27, v27, p3

    if-eqz v27, :cond_b

    const/4 v12, 0x1

    .line 901
    .local v12, "interactive":Z
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v27

    const/16 v28, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_c

    const/16 v26, 0x1

    .line 902
    .local v26, "virtualKey":Z
    :goto_5
    const/16 v27, 0x4

    move/from16 v0, v27

    if-ne v14, v0, :cond_d

    const/4 v5, 0x1

    .line 903
    .local v5, "backKeyCode":Z
    :goto_6
    const/16 v27, 0x3

    move/from16 v0, v27

    if-ne v14, v0, :cond_e

    const/4 v10, 0x1

    .line 904
    .local v10, "homeKeyCode":Z
    :goto_7
    const/16 v27, 0xbb

    move/from16 v0, v27

    if-ne v14, v0, :cond_f

    const/16 v21, 0x1

    .line 905
    .local v21, "switchKeyCode":Z
    :goto_8
    const/16 v27, 0x1a

    move/from16 v0, v27

    if-ne v14, v0, :cond_10

    const/16 v18, 0x1

    .line 907
    .local v18, "powerKeyCode":Z
    :goto_9
    if-eqz p1, :cond_11

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 908
    .local v4, "attrs":Landroid/view/WindowManager$LayoutParams;
    :goto_a
    if-eqz v4, :cond_12

    iget v0, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v23, v0

    .line 910
    .local v23, "type":I
    :goto_b
    sget-boolean v27, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v27, :cond_0

    .line 911
    const-string/jumbo v27, "OemPhoneWindowManager"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, " ++++++++++ interceptKeyBeforeDispatching "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, ", interactive = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    :cond_0
    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [I

    move-object/from16 v27, v0

    const/16 v28, 0xb

    const/16 v29, 0x0

    aput v28, v27, v29

    invoke-static/range {v27 .. v27}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v27

    if-eqz v27, :cond_1

    .line 916
    invoke-static {}, Lcom/android/server/policy/OemPhoneWindowManager;->-getcom-android-server-policy-OemPhoneWindowManager$KeyLockModeSwitchesValues()[I

    move-result-object v27

    sget-object v28, Lcom/android/server/policy/OemPhoneWindowManager;->mKeyLockMode:Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;

    invoke-virtual/range {v28 .. v28}, Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;->ordinal()I

    move-result v28

    aget v27, v27, v28

    packed-switch v27, :pswitch_data_0

    .line 937
    :cond_1
    if-eqz v21, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/OemPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v27

    if-eqz v27, :cond_15

    .line 943
    :cond_2
    const/16 v27, 0x4

    move/from16 v0, v27

    if-ne v14, v0, :cond_3

    .line 944
    if-nez v7, :cond_16

    .line 945
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackLongPress:Ljava/lang/Runnable;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 960
    :cond_3
    :goto_c
    if-eqz v13, :cond_17

    .line 961
    sget-boolean v27, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v27, :cond_4

    .line 962
    const-string/jumbo v27, "OemPhoneWindowManager"

    const-string/jumbo v28, " ++++++++++ interceptKeyBeforeDispatching(): event is from navigation bar, KeyEvent.FLAG_VIRTUAL_HARD_KEY flag present. Calling super method."

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    :cond_4
    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [I

    move-object/from16 v27, v0

    const/16 v28, 0xd

    const/16 v29, 0x0

    aput v28, v27, v29

    invoke-static/range {v27 .. v27}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v27

    if-eqz v27, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mNeedToDismissScreenshotGuider:Z

    move/from16 v27, v0

    if-eqz v27, :cond_6

    .line 967
    if-nez v5, :cond_5

    if-nez v10, :cond_5

    .line 966
    if-eqz v21, :cond_6

    .line 968
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/OemPhoneWindowManager;->hideScreenshotGuider()V

    .line 972
    :cond_6
    invoke-super/range {p0 .. p3}, Lcom/android/server/policy/PhoneWindowManager;->interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J

    move-result-wide v28

    return-wide v28

    .line 894
    .end local v4    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v5    # "backKeyCode":Z
    .end local v6    # "canceled":Z
    .end local v7    # "down":Z
    .end local v10    # "homeKeyCode":Z
    .end local v12    # "interactive":Z
    .end local v13    # "isFromNavbar":Z
    .end local v16    # "longPress":Z
    .end local v18    # "powerKeyCode":Z
    .end local v21    # "switchKeyCode":Z
    .end local v23    # "type":I
    .end local v25    # "up":Z
    .end local v26    # "virtualKey":Z
    :cond_7
    const/4 v7, 0x0

    .restart local v7    # "down":Z
    goto/16 :goto_0

    .line 895
    :cond_8
    const/16 v25, 0x0

    .restart local v25    # "up":Z
    goto/16 :goto_1

    .line 897
    .restart local v6    # "canceled":Z
    :cond_9
    const/16 v16, 0x0

    .restart local v16    # "longPress":Z
    goto/16 :goto_2

    .line 899
    :cond_a
    const/4 v13, 0x0

    .restart local v13    # "isFromNavbar":Z
    goto/16 :goto_3

    .line 900
    :cond_b
    const/4 v12, 0x0

    .restart local v12    # "interactive":Z
    goto/16 :goto_4

    .line 901
    :cond_c
    const/16 v26, 0x0

    .restart local v26    # "virtualKey":Z
    goto/16 :goto_5

    .line 902
    :cond_d
    const/4 v5, 0x0

    .restart local v5    # "backKeyCode":Z
    goto/16 :goto_6

    .line 903
    :cond_e
    const/4 v10, 0x0

    .restart local v10    # "homeKeyCode":Z
    goto/16 :goto_7

    .line 904
    :cond_f
    const/16 v21, 0x0

    .restart local v21    # "switchKeyCode":Z
    goto/16 :goto_8

    .line 905
    :cond_10
    const/16 v18, 0x0

    .restart local v18    # "powerKeyCode":Z
    goto/16 :goto_9

    .line 907
    :cond_11
    const/4 v4, 0x0

    goto/16 :goto_a

    .line 908
    .restart local v4    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_12
    const/16 v23, 0x0

    .restart local v23    # "type":I
    goto/16 :goto_b

    .line 923
    :pswitch_0
    if-nez v10, :cond_13

    if-nez v5, :cond_13

    if-nez v21, :cond_13

    if-eqz v18, :cond_1

    .line 924
    :cond_13
    sget-boolean v27, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v27, :cond_14

    .line 925
    const-string/jumbo v27, "OemPhoneWindowManager"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, " ++++++++++ interceptKeyBeforeDispatching(): cancelling event due to POWER_HOME key lock mode, event = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    :cond_14
    const-wide/16 v28, 0x0

    return-wide v28

    .line 938
    :cond_15
    const-wide/16 v28, -0x1

    return-wide v28

    .line 946
    :cond_16
    if-eqz v7, :cond_3

    if-nez v19, :cond_3

    .line 948
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Landroid/app/IActivityManager;->isInLockTaskMode()Z

    move-result v27

    if-eqz v27, :cond_3

    .line 949
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackLongPress:Ljava/lang/Runnable;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mLockTaskEndDelay:I

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-long v0, v0

    move-wide/from16 v30, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-wide/from16 v2, v30

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 950
    const-wide/16 v28, -0x1

    return-wide v28

    .line 952
    :catch_0
    move-exception v8

    .line 953
    .local v8, "e":Landroid/os/RemoteException;
    invoke-virtual {v8}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_c

    .line 975
    .end local v8    # "e":Landroid/os/RemoteException;
    :cond_17
    if-eqz v10, :cond_26

    .line 976
    if-eqz v7, :cond_20

    .line 977
    if-eqz v4, :cond_1d

    .line 978
    const/16 v27, 0x7ed

    move/from16 v0, v23

    move/from16 v1, v27

    if-eq v0, v1, :cond_18

    .line 979
    const/16 v27, 0x7d9

    move/from16 v0, v23

    move/from16 v1, v27

    if-ne v0, v1, :cond_1a

    .line 982
    :cond_18
    sget-boolean v27, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v27, :cond_19

    .line 983
    const-string/jumbo v27, "OemPhoneWindowManager"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, " ++++++++++ interceptKeyBeforeDispatching(): event is cancelled due to keyguard showing, event = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    :cond_19
    const-wide/16 v28, 0x0

    return-wide v28

    .line 980
    :cond_1a
    iget v0, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    move/from16 v27, v0

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0x400

    move/from16 v27, v0

    if-nez v27, :cond_18

    .line 987
    sget-object v27, Lcom/android/server/policy/OemPhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v24, v0

    .line 988
    .local v24, "typeCount":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_d
    move/from16 v0, v24

    if-ge v11, v0, :cond_1d

    .line 989
    sget-object v27, Lcom/android/server/policy/OemPhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    aget v27, v27, v11

    move/from16 v0, v23

    move/from16 v1, v27

    if-ne v0, v1, :cond_1c

    .line 991
    sget-boolean v27, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v27, :cond_1b

    .line 992
    const-string/jumbo v27, "OemPhoneWindowManager"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, " ++++++++++ interceptKeyBeforeDispatching(): event is cancelled cause window type is blocking it, event = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    :cond_1b
    const-wide/16 v28, -0x1

    return-wide v28

    .line 988
    :cond_1c
    add-int/lit8 v11, v11, 0x1

    goto :goto_d

    .line 999
    .end local v11    # "i":I
    .end local v24    # "typeCount":I
    :cond_1d
    if-nez v19, :cond_1f

    .line 1000
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyPressed:Z

    .line 1001
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyConsumed:Z

    .line 1002
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyDoubleTapPending:Z

    move/from16 v27, v0

    if-eqz v27, :cond_1e

    .line 1003
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyDoubleTapPending:Z

    .line 1004
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1005
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyConsumed:Z

    .line 1006
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/OemPhoneWindowManager;->performKeyAction(ILandroid/view/KeyEvent;)V

    .line 1056
    :cond_1e
    :goto_e
    const-wide/16 v28, -0x1

    return-wide v28

    .line 1008
    :cond_1f
    if-eqz v16, :cond_1e

    .line 1009
    if-nez v15, :cond_1e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyConsumed:Z

    move/from16 v27, v0

    if-nez v27, :cond_1e

    .line 1010
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnHomeBehavior:I

    move/from16 v27, v0

    if-eqz v27, :cond_1e

    .line 1011
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyPressed:Z

    .line 1012
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyConsumed:Z

    .line 1013
    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/policy/OemPhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 1014
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnHomeBehavior:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/OemPhoneWindowManager;->performKeyAction(ILandroid/view/KeyEvent;)V

    goto :goto_e

    .line 1018
    :cond_20
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyPressed:Z

    .line 1019
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyConsumed:Z

    move/from16 v27, v0

    if-eqz v27, :cond_21

    .line 1020
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyConsumed:Z

    .line 1021
    const-wide/16 v28, -0x1

    return-wide v28

    .line 1024
    :cond_21
    if-eqz v6, :cond_23

    .line 1025
    sget-boolean v27, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG:Z

    if-eqz v27, :cond_22

    .line 1026
    const-string/jumbo v27, "OemPhoneWindowManager"

    const-string/jumbo v28, "Ignoring HOME; event canceled."

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    :cond_22
    const-wide/16 v28, -0x1

    return-wide v28

    .line 1035
    :cond_23
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/OemPhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v22

    .line 1036
    .local v22, "telecomManager":Landroid/telecom/TelecomManager;
    if-eqz v22, :cond_24

    invoke-virtual/range {v22 .. v22}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v27

    if-eqz v27, :cond_24

    .line 1037
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/OemPhoneWindowManager;->hasInComingCall()Z

    move-result v27

    if-eqz v27, :cond_24

    .line 1038
    const-string/jumbo v27, "OemPhoneWindowManager"

    const-string/jumbo v28, "Ignoring HOME; there\'s a ringing incoming call."

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    const-wide/16 v28, -0x1

    return-wide v28

    .line 1045
    :cond_24
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    move/from16 v27, v0

    if-eqz v27, :cond_25

    .line 1046
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1047
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyDoubleTapPending:Z

    .line 1048
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    move-object/from16 v28, v0

    .line 1049
    const-wide/16 v30, 0xc8

    .line 1048
    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-wide/from16 v2, v30

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1050
    const-wide/16 v28, -0x1

    return-wide v28

    .line 1053
    :cond_25
    const/16 v27, 0xc

    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/OemPhoneWindowManager;->performKeyAction(ILandroid/view/KeyEvent;)V

    .line 1054
    const-wide/16 v28, -0x1

    return-wide v28

    .line 1057
    .end local v22    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_26
    if-eqz v5, :cond_31

    .line 1058
    if-eqz v26, :cond_28

    .line 1059
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyConsumed:Z

    move/from16 v27, v0

    if-eqz v27, :cond_27

    .line 1060
    const-wide/16 v28, -0x1

    return-wide v28

    .line 1063
    :cond_27
    const-wide/16 v28, 0x0

    return-wide v28

    .line 1069
    :cond_28
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnBackBehavior:I

    move/from16 v27, v0

    if-nez v27, :cond_29

    .line 1070
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnBackBehavior:I

    move/from16 v27, v0

    if-nez v27, :cond_29

    .line 1071
    const-wide/16 v28, 0x0

    return-wide v28

    .line 1075
    :cond_29
    if-eqz v7, :cond_2c

    .line 1076
    if-nez v19, :cond_2b

    .line 1077
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyPressed:Z

    .line 1078
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyDoubleTapPending:Z

    move/from16 v27, v0

    if-eqz v27, :cond_2a

    .line 1079
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyDoubleTapPending:Z

    .line 1080
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1081
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyConsumed:Z

    .line 1082
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnBackBehavior:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/OemPhoneWindowManager;->performKeyAction(ILandroid/view/KeyEvent;)V

    .line 1119
    :cond_2a
    :goto_f
    const-wide/16 v28, -0x1

    return-wide v28

    .line 1084
    :cond_2b
    if-eqz v16, :cond_2a

    .line 1085
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyConsumed:Z

    move/from16 v27, v0

    if-nez v27, :cond_2a

    .line 1086
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnBackBehavior:I

    move/from16 v27, v0

    if-eqz v27, :cond_2a

    .line 1087
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyPressed:Z

    .line 1088
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyConsumed:Z

    .line 1089
    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/policy/OemPhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 1090
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnBackBehavior:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/OemPhoneWindowManager;->performKeyAction(ILandroid/view/KeyEvent;)V

    goto :goto_f

    .line 1094
    :cond_2c
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyPressed:Z

    .line 1095
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyConsumed:Z

    move/from16 v27, v0

    if-eqz v27, :cond_2d

    .line 1096
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyConsumed:Z

    .line 1097
    const-wide/16 v28, -0x1

    return-wide v28

    .line 1100
    :cond_2d
    if-eqz v6, :cond_2f

    .line 1101
    sget-boolean v27, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG:Z

    if-eqz v27, :cond_2e

    .line 1102
    const-string/jumbo v27, "OemPhoneWindowManager"

    const-string/jumbo v28, "Ignoring BACK; event canceled."

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    :cond_2e
    const-wide/16 v28, -0x1

    return-wide v28

    .line 1108
    :cond_2f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnBackBehavior:I

    move/from16 v27, v0

    if-eqz v27, :cond_30

    .line 1109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1110
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyDoubleTapPending:Z

    .line 1111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    move-object/from16 v28, v0

    .line 1112
    const-wide/16 v30, 0xc8

    .line 1111
    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-wide/from16 v2, v30

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1113
    const-wide/16 v28, -0x1

    return-wide v28

    .line 1116
    :cond_30
    const/16 v27, 0xd

    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/OemPhoneWindowManager;->performKeyAction(ILandroid/view/KeyEvent;)V

    .line 1117
    const-wide/16 v28, -0x1

    return-wide v28

    .line 1120
    :cond_31
    if-eqz v21, :cond_3e

    .line 1121
    if-eqz v4, :cond_35

    .line 1122
    const/16 v27, 0x7ed

    move/from16 v0, v23

    move/from16 v1, v27

    if-eq v0, v1, :cond_32

    .line 1123
    const/16 v27, 0x7d9

    move/from16 v0, v23

    move/from16 v1, v27

    if-ne v0, v1, :cond_34

    .line 1126
    :cond_32
    sget-boolean v27, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v27, :cond_33

    .line 1127
    const-string/jumbo v27, "OemPhoneWindowManager"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, " ++++++++++ interceptKeyBeforeDispatching(): event is cancelled due to keyguard showing, event = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    :cond_33
    const-wide/16 v28, -0x1

    return-wide v28

    .line 1124
    :cond_34
    iget v0, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    move/from16 v27, v0

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0x400

    move/from16 v27, v0

    if-nez v27, :cond_32

    .line 1134
    :cond_35
    if-eqz v7, :cond_38

    .line 1135
    if-nez v19, :cond_37

    .line 1136
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyPressed:Z

    .line 1137
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyConsumed:Z

    .line 1138
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyDoubleTapPending:Z

    move/from16 v27, v0

    if-eqz v27, :cond_36

    .line 1139
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyDoubleTapPending:Z

    .line 1140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1141
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyConsumed:Z

    .line 1142
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnAppSwitchBehavior:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/OemPhoneWindowManager;->performKeyAction(ILandroid/view/KeyEvent;)V

    .line 1188
    :cond_36
    :goto_10
    const-wide/16 v28, -0x1

    return-wide v28

    .line 1144
    :cond_37
    if-eqz v16, :cond_36

    .line 1145
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyConsumed:Z

    move/from16 v27, v0

    if-nez v27, :cond_36

    .line 1146
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnAppSwitchBehavior:I

    move/from16 v27, v0

    if-eqz v27, :cond_36

    .line 1147
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyPressed:Z

    .line 1148
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyConsumed:Z

    .line 1149
    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/policy/OemPhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 1150
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnAppSwitchBehavior:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/OemPhoneWindowManager;->performKeyAction(ILandroid/view/KeyEvent;)V

    goto :goto_10

    .line 1154
    :cond_38
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyPressed:Z

    .line 1155
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyConsumed:Z

    move/from16 v27, v0

    if-eqz v27, :cond_39

    .line 1156
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyConsumed:Z

    .line 1157
    const-wide/16 v28, -0x1

    return-wide v28

    .line 1160
    :cond_39
    if-eqz v6, :cond_3b

    .line 1161
    sget-boolean v27, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG:Z

    if-eqz v27, :cond_3a

    .line 1162
    const-string/jumbo v27, "OemPhoneWindowManager"

    const-string/jumbo v28, "Ignoring APP_SWITCH; event canceled."

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    :cond_3a
    const-wide/16 v28, -0x1

    return-wide v28

    .line 1168
    :cond_3b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnAppSwitchBehavior:I

    move/from16 v27, v0

    if-eqz v27, :cond_3c

    .line 1169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1170
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyDoubleTapPending:Z

    .line 1171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    move-object/from16 v28, v0

    .line 1172
    const-wide/16 v30, 0xc8

    .line 1171
    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-wide/from16 v2, v30

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1173
    const-wide/16 v28, -0x1

    return-wide v28

    .line 1178
    :cond_3c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mDisplayRotation:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/server/policy/OemPhoneWindowManager;->isLandscapeOrSeascape(I)Z

    move-result v27

    if-eqz v27, :cond_3d

    .line 1179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/view/WindowManagerInternal;->isAnimating()Z

    move-result v27

    .line 1178
    if-eqz v27, :cond_3d

    .line 1180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    move-object/from16 v27, v0

    const/16 v28, 0x3

    invoke-virtual/range {v27 .. v28}, Landroid/view/WindowManagerInternal;->isStackVisible(I)Z

    move-result v27

    .line 1178
    if-eqz v27, :cond_3d

    .line 1181
    const-string/jumbo v27, "OemPhoneWindowManager"

    const-string/jumbo v28, "Drop APP_SWITCH key due to animation is on-going"

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1186
    :goto_11
    const-wide/16 v28, -0x1

    return-wide v28

    .line 1183
    :cond_3d
    const/16 v27, 0x2

    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/OemPhoneWindowManager;->performKeyAction(ILandroid/view/KeyEvent;)V

    goto :goto_11

    .line 1194
    :cond_3e
    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [I

    move-object/from16 v27, v0

    const/16 v28, 0xd

    const/16 v29, 0x0

    aput v28, v27, v29

    invoke-static/range {v27 .. v27}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v27

    if-eqz v27, :cond_40

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mNeedToDismissScreenshotGuider:Z

    move/from16 v27, v0

    if-eqz v27, :cond_40

    .line 1195
    if-nez v5, :cond_3f

    if-nez v10, :cond_3f

    .line 1194
    if-eqz v21, :cond_40

    .line 1196
    :cond_3f
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/OemPhoneWindowManager;->hideScreenshotGuider()V

    .line 1201
    :cond_40
    invoke-super/range {p0 .. p3}, Lcom/android/server/policy/PhoneWindowManager;->interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J

    move-result-wide v28

    return-wide v28

    .line 916
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I
    .locals 25
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 653
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v7

    .line 654
    .local v7, "flags":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v13

    .line 655
    .local v13, "keyCode":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getSource()I

    move-result v18

    .line 656
    .local v18, "source":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v17

    .line 657
    .local v17, "repeatCount":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/OemPhoneWindowManager;->keyguardOn()Z

    move-result v14

    .line 658
    .local v14, "keyguardOn":Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v22

    if-nez v22, :cond_1

    const/4 v6, 0x1

    .line 659
    .local v6, "down":Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_2

    const/16 v20, 0x1

    .line 660
    .local v20, "up":Z
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v5

    .line 662
    .local v5, "canceled":Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v22

    and-int/lit8 v22, v22, 0x40

    if-eqz v22, :cond_3

    const/4 v12, 0x1

    .line 663
    .local v12, "isFromNavbar":Z
    :goto_2
    const/high16 v22, 0x20000000

    and-int v22, v22, p2

    if-eqz v22, :cond_4

    const/4 v11, 0x1

    .line 664
    .local v11, "interactive":Z
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v22

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_5

    const/16 v21, 0x1

    .line 665
    .local v21, "virtualKey":Z
    :goto_4
    const/16 v22, 0x4

    move/from16 v0, v22

    if-ne v13, v0, :cond_6

    const/4 v4, 0x1

    .line 666
    .local v4, "backKeyCode":Z
    :goto_5
    const/16 v22, 0x3

    move/from16 v0, v22

    if-ne v13, v0, :cond_7

    const/4 v9, 0x1

    .line 667
    .local v9, "homeKeyCode":Z
    :goto_6
    const/16 v22, 0xbb

    move/from16 v0, v22

    if-ne v13, v0, :cond_8

    const/16 v19, 0x1

    .line 668
    .local v19, "switchKeyCode":Z
    :goto_7
    const/16 v22, 0x1a

    move/from16 v0, v22

    if-ne v13, v0, :cond_9

    const/16 v16, 0x1

    .line 669
    .local v16, "powerKeyCode":Z
    :goto_8
    const/16 v22, 0x86

    move/from16 v0, v22

    if-ne v13, v0, :cond_a

    const/4 v8, 0x1

    .line 670
    .local v8, "gestureKeyCode":Z
    :goto_9
    const/high16 v22, 0x10000000

    and-int v22, v22, v18

    if-eqz v22, :cond_b

    const/4 v15, 0x1

    .line 672
    .local v15, "oemSource":Z
    :goto_a
    sget-boolean v22, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v22, :cond_0

    .line 673
    const-string/jumbo v22, "OemPhoneWindowManager"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, " ++++++++++ interceptKeyBeforeQueueing(): event = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, ", interactive = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mSystemBooted:Z

    move/from16 v22, v0

    if-nez v22, :cond_c

    .line 682
    const/16 v22, 0x0

    return v22

    .line 658
    .end local v4    # "backKeyCode":Z
    .end local v5    # "canceled":Z
    .end local v6    # "down":Z
    .end local v8    # "gestureKeyCode":Z
    .end local v9    # "homeKeyCode":Z
    .end local v11    # "interactive":Z
    .end local v12    # "isFromNavbar":Z
    .end local v15    # "oemSource":Z
    .end local v16    # "powerKeyCode":Z
    .end local v19    # "switchKeyCode":Z
    .end local v20    # "up":Z
    .end local v21    # "virtualKey":Z
    :cond_1
    const/4 v6, 0x0

    .restart local v6    # "down":Z
    goto/16 :goto_0

    .line 659
    :cond_2
    const/16 v20, 0x0

    .restart local v20    # "up":Z
    goto/16 :goto_1

    .line 662
    .restart local v5    # "canceled":Z
    :cond_3
    const/4 v12, 0x0

    .restart local v12    # "isFromNavbar":Z
    goto/16 :goto_2

    .line 663
    :cond_4
    const/4 v11, 0x0

    .restart local v11    # "interactive":Z
    goto :goto_3

    .line 664
    :cond_5
    const/16 v21, 0x0

    .restart local v21    # "virtualKey":Z
    goto :goto_4

    .line 665
    :cond_6
    const/4 v4, 0x0

    .restart local v4    # "backKeyCode":Z
    goto :goto_5

    .line 666
    :cond_7
    const/4 v9, 0x0

    .restart local v9    # "homeKeyCode":Z
    goto :goto_6

    .line 667
    :cond_8
    const/16 v19, 0x0

    .restart local v19    # "switchKeyCode":Z
    goto :goto_7

    .line 668
    :cond_9
    const/16 v16, 0x0

    .restart local v16    # "powerKeyCode":Z
    goto :goto_8

    .line 669
    :cond_a
    const/4 v8, 0x0

    .restart local v8    # "gestureKeyCode":Z
    goto :goto_9

    .line 670
    :cond_b
    const/4 v15, 0x0

    .restart local v15    # "oemSource":Z
    goto :goto_a

    .line 690
    :cond_c
    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v22, v0

    const/16 v23, 0xb

    const/16 v24, 0x0

    aput v23, v22, v24

    invoke-static/range {v22 .. v22}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v22

    if-eqz v22, :cond_15

    .line 691
    invoke-static {}, Lcom/android/server/policy/OemPhoneWindowManager;->-getcom-android-server-policy-OemPhoneWindowManager$KeyLockModeSwitchesValues()[I

    move-result-object v22

    sget-object v23, Lcom/android/server/policy/OemPhoneWindowManager;->mKeyLockMode:Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;->ordinal()I

    move-result v23

    aget v22, v22, v23

    packed-switch v22, :pswitch_data_0

    .line 733
    :cond_d
    :goto_b
    sget-boolean v22, Lcom/android/server/policy/OemPhoneWindowManager;->mFingerprintEnrolling:Z

    if-eqz v22, :cond_15

    .line 734
    if-nez v12, :cond_15

    if-nez v9, :cond_e

    if-nez v4, :cond_e

    if-eqz v19, :cond_15

    .line 735
    :cond_e
    const/16 v22, 0x0

    return v22

    .line 693
    :pswitch_0
    sget-boolean v22, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v22, :cond_d

    .line 694
    const-string/jumbo v22, "OemPhoneWindowManager"

    const-string/jumbo v23, " ++++++++++ interceptKeyBeforeQueueing(): dispatching event due to NORMAL key lock mode."

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 700
    :pswitch_1
    sget-boolean v22, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v22, :cond_f

    .line 701
    const-string/jumbo v22, "OemPhoneWindowManager"

    const-string/jumbo v23, " ++++++++++ interceptKeyBeforeQueueing(): return 1 due to POWER/POWER_HOME key lock mode."

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    :cond_f
    const/16 v22, 0x1

    return v22

    .line 705
    :pswitch_2
    if-nez v12, :cond_d

    if-eqz v9, :cond_d

    .line 706
    sget-boolean v22, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v22, :cond_10

    .line 707
    const-string/jumbo v22, "OemPhoneWindowManager"

    const-string/jumbo v23, " ++++++++++ interceptKeyBeforeQueueing(): cancelling event due to HOME key lock mode."

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    :cond_10
    const/16 v22, 0x0

    return v22

    .line 713
    :pswitch_3
    if-nez v12, :cond_d

    if-nez v4, :cond_11

    if-nez v9, :cond_11

    if-eqz v19, :cond_d

    .line 714
    :cond_11
    sget-boolean v22, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v22, :cond_12

    .line 715
    const-string/jumbo v22, "OemPhoneWindowManager"

    const-string/jumbo v23, " ++++++++++ interceptKeyBeforeQueueing(): cancelling event due to FOOT key lock mode."

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    :cond_12
    const/16 v22, 0x0

    return v22

    .line 721
    :pswitch_4
    if-nez v12, :cond_d

    .line 722
    if-nez v4, :cond_13

    if-nez v19, :cond_13

    sget-boolean v22, Lcom/android/server/policy/OemPhoneWindowManager;->mForceHomeEnabled:Z

    if-nez v22, :cond_d

    .line 721
    if-eqz v9, :cond_d

    .line 723
    :cond_13
    sget-boolean v22, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v22, :cond_14

    .line 724
    const-string/jumbo v22, "OemPhoneWindowManager"

    const-string/jumbo v23, " ++++++++++ interceptKeyBeforeQueueing(): cancelling event due to BACK_SWITCH key lock mode."

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    :cond_14
    const/16 v22, 0x0

    return v22

    .line 741
    :cond_15
    sparse-switch v13, :sswitch_data_0

    .line 817
    :cond_16
    :goto_c
    if-nez v12, :cond_17

    if-eqz v6, :cond_20

    .line 836
    :cond_17
    if-nez v12, :cond_18

    .line 837
    and-int/lit8 p2, p2, -0x3

    .line 853
    :cond_18
    if-nez v11, :cond_24

    .line 854
    if-nez v12, :cond_26

    if-nez v9, :cond_19

    if-nez v4, :cond_19

    if-eqz v19, :cond_26

    .line 855
    :cond_19
    sget-boolean v22, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v22, :cond_1a

    .line 856
    const-string/jumbo v22, "OemPhoneWindowManager"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, " ++++++++++ interceptKeyBeforeQueueing(): ignoring event, display not interactive, event = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    :cond_1a
    const/16 v22, 0x0

    return v22

    .line 743
    :sswitch_0
    const/16 v22, 0x18

    move/from16 v0, v22

    if-ne v13, v0, :cond_16

    .line 744
    if-eqz v6, :cond_16

    .line 745
    if-eqz v11, :cond_1b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mScreenshotChordVolumeUpKeyTriggered:Z

    move/from16 v22, v0

    if-eqz v22, :cond_1c

    .line 750
    :cond_1b
    :goto_d
    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v22, v0

    const/16 v23, 0x3

    const/16 v24, 0x0

    aput v23, v22, v24

    invoke-static/range {v22 .. v22}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v22

    if-eqz v22, :cond_16

    .line 751
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/policy/OemPhoneWindowManager;->mVolumeUpKeyTime:J

    .line 752
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mVolumeUpKeyConsumedByScreenshotChord:Z

    .line 753
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/OemPhoneWindowManager;->recordErrorLog()V

    goto :goto_c

    .line 746
    :cond_1c
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v22

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0x400

    move/from16 v22, v0

    if-nez v22, :cond_1b

    .line 747
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mScreenshotChordVolumeUpKeyTriggered:Z

    goto :goto_d

    .line 764
    :sswitch_1
    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v22, v0

    const/16 v23, 0x11

    const/16 v24, 0x0

    aput v23, v22, v24

    invoke-static/range {v22 .. v22}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v22

    if-eqz v22, :cond_16

    .line 765
    if-nez v11, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mDeviceKeyHandler:Lcom/android/server/policy/DeviceKeyHandler;

    move-object/from16 v22, v0

    if-eqz v22, :cond_16

    .line 766
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mDeviceKeyHandler:Lcom/android/server/policy/DeviceKeyHandler;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lcom/android/server/policy/DeviceKeyHandler;->setKeyguardDelegate(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;)V

    .line 767
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mDeviceKeyHandler:Lcom/android/server/policy/DeviceKeyHandler;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/policy/DeviceKeyHandler;->handleKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v22

    if-eqz v22, :cond_16

    .line 768
    sget-boolean v22, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v22, :cond_1d

    .line 769
    const-string/jumbo v22, "OemPhoneWindowManager"

    .line 770
    const-string/jumbo v23, " ++++++++++ interceptKeyBeforeQueueing(): event is a gesture, handled by DeviceKeyHandler."

    .line 769
    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    :cond_1d
    const/16 v22, 0x0

    return v22

    .line 784
    :sswitch_2
    sget-boolean v22, Lcom/android/server/policy/OemPhoneWindowManager;->IS_QUICK_PAY_ENABLED:Z

    if-eqz v22, :cond_16

    .line 785
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayEnabled:Z

    move/from16 v22, v0

    if-eqz v22, :cond_1e

    if-eqz v6, :cond_1e

    .line 786
    const/16 v22, 0xb

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/OemPhoneWindowManager;->performKeyAction(ILandroid/view/KeyEvent;)V

    .line 788
    :cond_1e
    const/16 v22, 0x0

    return v22

    .line 794
    :sswitch_3
    sget-boolean v22, Lcom/android/server/policy/OemPhoneWindowManager;->IS_QUICK_PAY_ENABLED:Z

    if-eqz v22, :cond_16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayWhich:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_16

    if-eqz v6, :cond_16

    .line 795
    const-string/jumbo v22, "OemPhoneWindowManager"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "QuickPay: Cancelled by "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/policy/OemPhoneWindowManager;->clearQuickPaySwitch(Z)V

    goto/16 :goto_c

    .line 801
    :sswitch_4
    sget-boolean v22, Lcom/android/server/policy/OemPhoneWindowManager;->IS_QUICK_PAY_ENABLED:Z

    if-eqz v22, :cond_16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayWhich:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_16

    if-eqz v6, :cond_16

    .line 802
    const-string/jumbo v22, "OemPhoneWindowManager"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "QuickPay: Cancelled by "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, " focus="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v22, v0

    if-eqz v22, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v22, v0

    const/16 v23, 0x7d8

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_16

    .line 805
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayBtnView:Landroid/view/View;

    move-object/from16 v22, v0

    if-eqz v22, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayBtnView:Landroid/view/View;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v22

    if-eqz v22, :cond_1f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayBtnLaunched:Z

    move/from16 v22, v0

    if-eqz v22, :cond_1f

    .line 806
    const/16 v22, 0x1

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/server/policy/OemPhoneWindowManager;->launchHomeFromHotKey(ZZ)V

    .line 808
    :cond_1f
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/policy/OemPhoneWindowManager;->clearQuickPaySwitch(Z)V

    goto/16 :goto_c

    .line 818
    :cond_20
    if-eqz v4, :cond_22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyConsumed:Z

    move/from16 v22, v0

    if-eqz v22, :cond_22

    .line 819
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyConsumed:Z

    .line 820
    sget-boolean v22, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v22, :cond_21

    .line 821
    const-string/jumbo v22, "OemPhoneWindowManager"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, " ++++++++++ interceptKeyBeforeQueueing(): ignoring event because already consumed, event = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    :cond_21
    const/16 v22, 0x0

    return v22

    .line 826
    :cond_22
    if-eqz v19, :cond_17

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyConsumed:Z

    move/from16 v22, v0

    if-eqz v22, :cond_17

    .line 827
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyConsumed:Z

    .line 828
    sget-boolean v22, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v22, :cond_23

    .line 829
    const-string/jumbo v22, "OemPhoneWindowManager"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, " ++++++++++ interceptKeyBeforeQueueing(): ignoring event because already consumed, event = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    :cond_23
    const/16 v22, 0x0

    return v22

    .line 861
    :cond_24
    if-nez v12, :cond_26

    if-nez v9, :cond_25

    if-nez v4, :cond_25

    if-eqz v19, :cond_26

    :cond_25
    if-eqz v20, :cond_29

    .line 869
    :cond_26
    :goto_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mNeedToNotifyStkUserActivity:Z

    move/from16 v22, v0

    if-eqz v22, :cond_28

    .line 871
    const/16 v22, 0x18

    move/from16 v0, v22

    if-eq v13, v0, :cond_27

    const/16 v22, 0x19

    move/from16 v0, v22

    if-ne v13, v0, :cond_2a

    .line 874
    :cond_27
    :goto_f
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mNeedToNotifyStkUserActivity:Z

    .line 877
    new-instance v10, Landroid/content/Intent;

    const-string/jumbo v22, "com.oneplus.intent.action.stk.user_activity"

    move-object/from16 v0, v22

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 878
    .local v10, "intent":Landroid/content/Intent;
    const/high16 v22, 0x10000000

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 879
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 883
    .end local v10    # "intent":Landroid/content/Intent;
    :cond_28
    invoke-super/range {p0 .. p2}, Lcom/android/server/policy/PhoneWindowManager;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I

    move-result v22

    return v22

    .line 862
    :cond_29
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v22

    if-nez v22, :cond_26

    if-nez v15, :cond_26

    .line 863
    const/16 v22, 0x0

    const/16 v23, 0x1

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/policy/OemPhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    goto :goto_e

    .line 871
    :cond_2a
    if-nez v4, :cond_27

    if-nez v9, :cond_27

    if-nez v19, :cond_27

    if-eqz v16, :cond_28

    goto :goto_f

    .line 691
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 741
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x18 -> :sswitch_0
        0x84 -> :sswitch_2
        0x86 -> :sswitch_1
        0xbb -> :sswitch_3
    .end sparse-switch
.end method

.method isNewConfig(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "configVersionName"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 2207
    invoke-direct {p0, p1}, Lcom/android/server/policy/OemPhoneWindowManager;->isPackageAvailable(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    const-string/jumbo v10, ""

    if-ne p2, v10, :cond_1

    .line 2208
    :cond_0
    return v9

    .line 2211
    :cond_1
    :try_start_0
    iget-object v10, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 2212
    const/4 v11, 0x0

    .line 2211
    invoke-virtual {v10, p1, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8

    .line 2213
    .local v8, "packageInfo":Landroid/content/pm/PackageInfo;
    const-string/jumbo v7, ""

    .line 2214
    .local v7, "nowVersionName":Ljava/lang/String;
    if-eqz v8, :cond_6

    .line 2215
    iget-object v7, v8, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 2216
    const-string/jumbo v10, "\\."

    invoke-virtual {v7, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 2217
    .local v6, "nowVersion":[Ljava/lang/String;
    const-string/jumbo v10, "\\."

    invoke-virtual {p2, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2218
    .local v0, "configVersion":[Ljava/lang/String;
    array-length v10, v6

    array-length v11, v0

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 2219
    .local v3, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_6

    .line 2220
    array-length v10, v6

    if-ge v2, v10, :cond_2

    .line 2221
    aget-object v10, v6, v2

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 2222
    .local v5, "nowV":I
    :goto_1
    array-length v10, v0

    if-ge v2, v10, :cond_3

    .line 2223
    aget-object v10, v0, v2

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 2224
    .local v4, "newV":I
    :goto_2
    if-ge v5, v4, :cond_4

    .line 2225
    const/4 v9, 0x1

    return v9

    .line 2221
    .end local v4    # "newV":I
    .end local v5    # "nowV":I
    :cond_2
    const/4 v5, 0x0

    .restart local v5    # "nowV":I
    goto :goto_1

    :cond_3
    move v4, v9

    .line 2223
    goto :goto_2

    .line 2226
    .restart local v4    # "newV":I
    :cond_4
    if-le v5, v4, :cond_5

    .line 2227
    return v9

    .line 2219
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2231
    .end local v0    # "configVersion":[Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "length":I
    .end local v4    # "newV":I
    .end local v5    # "nowV":I
    .end local v6    # "nowVersion":[Ljava/lang/String;
    .end local v7    # "nowVersionName":Ljava/lang/String;
    .end local v8    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v1

    .line 2233
    :cond_6
    return v9
.end method

.method public notifyAppLaunchFailedLw(Ljava/lang/String;)V
    .locals 6
    .param p1, "appName"    # Ljava/lang/String;

    .prologue
    .line 2121
    iget v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayWhich:I

    .line 2122
    .local v2, "which":I
    sget-boolean v3, Lcom/android/server/policy/OemPhoneWindowManager;->IS_QUICK_PAY_ENABLED:Z

    if-eqz v3, :cond_1

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPaymentApps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x5

    if-lt v3, v4, :cond_1

    .line 2123
    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPaymentApps:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;

    iget-object v1, v3, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->packageName:Ljava/lang/String;

    .line 2124
    .local v1, "pkg":Ljava/lang/String;
    const-string/jumbo v3, "OemPhoneWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "QuickPay: App Launch Failed, restart: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2125
    if-eqz p1, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2126
    :cond_0
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/server/policy/OemPhoneWindowManager;->clearQuickPaySwitch(Z)V

    .line 2127
    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 2128
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_1

    .line 2129
    const v3, 0x10008000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2130
    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    new-instance v4, Lcom/android/server/policy/OemPhoneWindowManager$10;

    invoke-direct {v4, p0, v1, v0}, Lcom/android/server/policy/OemPhoneWindowManager$10;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;Ljava/lang/String;Landroid/content/Intent;)V

    invoke-virtual {v3, v4}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->post(Ljava/lang/Runnable;)Z

    .line 2120
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "pkg":Ljava/lang/String;
    :cond_1
    return-void

    .line 2125
    .restart local v1    # "pkg":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public notifyLidSwitchChanged(JZ)V
    .locals 3
    .param p1, "whenNanos"    # J
    .param p3, "lidOpen"    # Z

    .prologue
    .line 2430
    iget-boolean v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mSystemReady:Z

    if-eqz v0, :cond_0

    .line 2431
    const-string/jumbo v0, "OemPhoneWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyLidSwitchChanged :mLidState= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2432
    iput-boolean p3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLidState:Z

    .line 2434
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/policy/OemPhoneWindowManager$11;

    invoke-direct {v1, p0, p3}, Lcom/android/server/policy/OemPhoneWindowManager$11;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;Z)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2445
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/policy/PhoneWindowManager;->notifyLidSwitchChanged(JZ)V

    .line 2429
    return-void
.end method

.method public onKeyguardDone()V
    .locals 1

    .prologue
    .line 2564
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDeviceKeyHandler:Lcom/android/server/policy/DeviceKeyHandler;

    if-eqz v0, :cond_0

    .line 2565
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDeviceKeyHandler:Lcom/android/server/policy/DeviceKeyHandler;

    invoke-virtual {v0}, Lcom/android/server/policy/DeviceKeyHandler;->onKeyguardDone()V

    .line 2563
    :cond_0
    return-void
.end method

.method public screenTurnedOff()V
    .locals 1

    .prologue
    .line 2548
    invoke-super {p0}, Lcom/android/server/policy/PhoneWindowManager;->screenTurnedOff()V

    .line 2549
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDeviceKeyHandler:Lcom/android/server/policy/DeviceKeyHandler;

    if-eqz v0, :cond_0

    .line 2550
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDeviceKeyHandler:Lcom/android/server/policy/DeviceKeyHandler;

    invoke-virtual {v0}, Lcom/android/server/policy/DeviceKeyHandler;->onScreenTurnedOff()V

    .line 2547
    :cond_0
    return-void
.end method

.method public screenTurnedOn()V
    .locals 1

    .prologue
    .line 2556
    invoke-super {p0}, Lcom/android/server/policy/PhoneWindowManager;->screenTurnedOn()V

    .line 2557
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDeviceKeyHandler:Lcom/android/server/policy/DeviceKeyHandler;

    if-eqz v0, :cond_0

    .line 2558
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDeviceKeyHandler:Lcom/android/server/policy/DeviceKeyHandler;

    invoke-virtual {v0}, Lcom/android/server/policy/DeviceKeyHandler;->onScreenTurnedOn()V

    .line 2555
    :cond_0
    return-void
.end method

.method public setInputManager(Lcom/android/server/input/InputManagerService;)V
    .locals 0
    .param p1, "inputManagerService"    # Lcom/android/server/input/InputManagerService;

    .prologue
    .line 2425
    return-void
.end method

.method public systemReady()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 565
    invoke-super {p0}, Lcom/android/server/policy/PhoneWindowManager;->systemReady()V

    .line 566
    iget-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDeviceKeyHandler:Lcom/android/server/policy/DeviceKeyHandler;

    if-eqz v2, :cond_0

    .line 567
    iget-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDeviceKeyHandler:Lcom/android/server/policy/DeviceKeyHandler;

    invoke-virtual {v2}, Lcom/android/server/policy/DeviceKeyHandler;->systemReady()V

    .line 572
    :cond_0
    iget-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 573
    const-string/jumbo v3, "oem_acc_fingerprint_enrolling"

    .line 572
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 579
    new-array v2, v0, [I

    const/16 v3, 0xb

    aput v3, v2, v1

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 580
    iget-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 581
    const-string/jumbo v3, "buttons_show_on_screen_navkeys"

    .line 580
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_2

    .line 583
    .local v0, "showNavBar":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 584
    const-string/jumbo v1, "OemPhoneWindowManager"

    const-string/jumbo v2, "Restore the key lock mode to BACK_SWITCH because navigation bar is enabled."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 587
    const-string/jumbo v2, "oem_acc_key_lock_mode"

    sget-object v3, Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;->BACK_SWITCH:Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;

    invoke-virtual {v3}, Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;->ordinal()I

    move-result v3

    .line 586
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 564
    .end local v0    # "showNavBar":Z
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 580
    goto :goto_0
.end method

.method protected takeScreenshot(I)V
    .locals 0
    .param p1, "screenshotType"    # I

    .prologue
    .line 2462
    invoke-direct {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->showScreenshotGuider()V

    .line 2463
    invoke-super {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->takeScreenshot(I)V

    .line 2461
    return-void
.end method

.method updateQuickPayIfNeed(ILorg/json/JSONObject;)V
    .locals 11
    .param p1, "which"    # I
    .param p2, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x5

    const/4 v9, 0x3

    const/4 v8, 0x1

    .line 2177
    const-string/jumbo v5, "value"

    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 2178
    .local v4, "whiteAppListJsonArray":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v1, v5, :cond_5

    .line 2179
    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2180
    .local v0, "config":Ljava/lang/String;
    const-string/jumbo v5, ";"

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2181
    .local v2, "split":[Ljava/lang/String;
    array-length v5, v2

    if-lt v5, v10, :cond_2

    iget-object v5, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPaymentApps:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v5, v10, :cond_2

    .line 2182
    iget-object v5, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPaymentApps:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;

    iget-object v5, v5, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->packageName:Ljava/lang/String;

    const/4 v6, 0x4

    aget-object v6, v2, v6

    invoke-virtual {p0, v5, v6}, Lcom/android/server/policy/OemPhoneWindowManager;->isNewConfig(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2183
    new-instance v3, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;

    invoke-direct {v3, p0}, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;)V

    .line 2184
    .local v3, "tmp":Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;
    const/4 v5, 0x0

    aget-object v5, v2, v5

    iput-object v5, v3, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->packageName:Ljava/lang/String;

    .line 2185
    aget-object v5, v2, v8

    const-string/jumbo v6, "sdk"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2186
    iput-boolean v8, v3, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->isSDKstart:Z

    .line 2193
    :goto_1
    const-string/jumbo v5, "default"

    const/4 v6, 0x2

    aget-object v6, v2, v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2194
    iput-boolean v8, v3, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->isDefault:Z

    .line 2196
    :cond_0
    const-string/jumbo v5, "class"

    aget-object v6, v2, v9

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2197
    aget-object v5, v2, v9

    iput-object v5, v3, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->tartgetClassName:Ljava/lang/String;

    .line 2199
    :cond_1
    iget-object v5, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPaymentApps:Ljava/util/ArrayList;

    invoke-virtual {v5, p1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2200
    const-string/jumbo v5, "OemPhoneWindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "QuickPay: update "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2178
    .end local v3    # "tmp":Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 2187
    .restart local v3    # "tmp":Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;
    :cond_3
    aget-object v5, v2, v8

    const-string/jumbo v6, "://"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2188
    aget-object v5, v2, v8

    iput-object v5, v3, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->urlScheme:Ljava/lang/String;

    goto :goto_1

    .line 2190
    :cond_4
    aget-object v5, v2, v8

    iput-object v5, v3, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->className:Ljava/lang/String;

    .line 2191
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v3, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->className:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->tartgetClassName:Ljava/lang/String;

    goto :goto_1

    .line 2176
    .end local v0    # "config":Ljava/lang/String;
    .end local v2    # "split":[Ljava/lang/String;
    .end local v3    # "tmp":Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;
    :cond_5
    return-void
.end method
