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
        Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;,
        Lcom/android/server/policy/OemPhoneWindowManager$KeyLockModeReceiver;,
        Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;,
        Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;,
        Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;,
        Lcom/android/server/policy/OemPhoneWindowManager$QuickPayConfigUpdater;,
        Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;,
        Lcom/android/server/policy/OemPhoneWindowManager$StkUserActivityTestEnabledReceiver;
    }
.end annotation


# static fields
.field private static final synthetic -com-android-server-policy-OemPhoneWindowManager$KeyLockModeSwitchesValues:[I = null

.field private static final ACTION_KEY_LOCK:Ljava/lang/String; = "com.oem.intent.action.KEY_LOCK_MODE"

.field private static final APP_SWITCH_DELAY:I = 0x1f4

.field public static DEBUG:Z = false

.field public static DEBUG_INPUT:Z = false

.field public static DEBUG_KEYLOCK:Z = false

.field public static DEBUG_KEYSWAP:Z = false

.field private static final DOUBLE_TAP_TIMEOUT:I = 0xc8

.field private static final HARDWARE_KEY_SWITCH:I = 0x1

.field private static final HARDWARE_KEY_SWITCH_OFF:I = 0x0

.field private static final HARDWARE_KEY_SWITCH_ON:I = 0x1

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

.field private static final KEY_LAYOUT_DEFAULT:Ljava/lang/String; = "1"

.field private static final KEY_LAYOUT_SWAP:Ljava/lang/String; = "0"

.field private static final OEM_SMART_SCREEN_CAPTURE:Ljava/lang/String; = "oem_acc_sensor_three_finger"

.field static final OP_QUICK_PAY_BUTTON_TIMEOUT:J = 0x1f40L

.field static final OP_QUICK_PAY_COMPONENT:Ljava/lang/String; = "OP_QUICK_PAY_DEFAULT"

.field private static QUICKPAY_APPS_CONFIG_NAME:Ljava/lang/String; = null

.field static final QUICK_PAY_CLASS_NAME:Ljava/lang/String; = "com.oneplus.quickpay.PayActivity"

.field static final QUICK_PAY_PACKAGE_NAME:Ljava/lang/String; = "com.oneplus.quickpay"

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

.method static synthetic -get10(Lcom/android/server/policy/OemPhoneWindowManager;)Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureHandler:Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/server/policy/OemPhoneWindowManager;)Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mSettingsObserver:Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/server/policy/OemPhoneWindowManager;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mStartBugReportTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/server/policy/OemPhoneWindowManager;)Lcom/android/server/policy/OemThreePointersGesturesListener;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mThreePointersGestures:Lcom/android/server/policy/OemThreePointersGesturesListener;

    return-object v0
.end method

.method static synthetic -get14()Z
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

    iput-boolean p1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mNeedToNotifyStkUserActivity:Z

    return p1
.end method

.method static synthetic -set11(Z)Z
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

    iput-boolean p1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyConsumed:Z

    return p1
.end method

.method static synthetic -set5(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyDoubleTapPending:Z

    return p1
.end method

.method static synthetic -set6(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyPressed:Z

    return p1
.end method

.method static synthetic -set7(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mMenuKeyConsumed:Z

    return p1
.end method

.method static synthetic -set8(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mMenuKeyDoubleTapPending:Z

    return p1
.end method

.method static synthetic -set9(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mMenuKeyPressed:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/policy/OemPhoneWindowManager;)Landroid/view/WindowManager;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/policy/OemPhoneWindowManager;)Ljava/util/ArrayList;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->getAvailablePayApps()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/server/policy/OemPhoneWindowManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->disableQuickPayButton()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/policy/OemPhoneWindowManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->enableQuickPayButton()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/policy/OemPhoneWindowManager;ILandroid/view/KeyEvent;)V
    .locals 0
    .param p1, "behavior"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/OemPhoneWindowManager;->performKeyAction(ILandroid/view/KeyEvent;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/policy/OemPhoneWindowManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->readConfigurationDependentBehaviors()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/policy/OemPhoneWindowManager;Lorg/json/JSONArray;)V
    .locals 0
    .param p1, "jsonArray"    # Lorg/json/JSONArray;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/policy/OemPhoneWindowManager;->resolveQuickPayConfigFromJSON(Lorg/json/JSONArray;)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/policy/OemPhoneWindowManager;IZZ)V
    .locals 0
    .param p1, "which"    # I
    .param p2, "unlocked"    # Z
    .param p3, "fromButton"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/policy/OemPhoneWindowManager;->startQuickPay(IZZ)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 130
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG:Z

    .line 131
    sget-boolean v0, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    .line 132
    sget-boolean v0, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_KEYLOCK:Z

    .line 133
    sget-boolean v0, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_KEYSWAP:Z

    .line 157
    sget-object v0, Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;->NORMAL:Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;

    sput-object v0, Lcom/android/server/policy/OemPhoneWindowManager;->mKeyLockMode:Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;

    .line 158
    sput-boolean v2, Lcom/android/server/policy/OemPhoneWindowManager;->mForceHomeEnabled:Z

    .line 159
    sput-boolean v2, Lcom/android/server/policy/OemPhoneWindowManager;->mFingerprintEnrolling:Z

    .line 161
    sput-boolean v2, Lcom/android/server/policy/OemPhoneWindowManager;->sLongPressAppSwitchActive:Z

    .line 295
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x1a

    aput v1, v0, v2

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/policy/OemPhoneWindowManager;->IS_QUICK_PAY_ENABLED:Z

    .line 333
    const-string/jumbo v0, "QuickPay_APPS_Config"

    sput-object v0, Lcom/android/server/policy/OemPhoneWindowManager;->QUICKPAY_APPS_CONFIG_NAME:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 121
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;-><init>()V

    .line 136
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLock:Ljava/lang/Object;

    .line 156
    iput v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mKeysBehavior:I

    .line 178
    iput-boolean v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLidState:Z

    .line 183
    iput-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mThreePointersGestures:Lcom/android/server/policy/OemThreePointersGesturesListener;

    .line 184
    iput-boolean v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mEnableThreePointersScreenShot:Z

    .line 186
    iput-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureHandler:Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;

    .line 191
    iput-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mFourPointersGestures:Lcom/android/server/policy/OemFourPointersGesturesListener;

    .line 192
    iput-boolean v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mEnableFourPointersScreenShot:Z

    .line 193
    iput-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureOPBugreportHandler:Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;

    .line 209
    new-instance v0, Lcom/android/server/policy/OemPhoneWindowManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/OemPhoneWindowManager$1;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackLongPress:Ljava/lang/Runnable;

    .line 288
    iput-boolean v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mNeedToNotifyStkUserActivity:Z

    .line 291
    const-string/jumbo v0, "com.android.incallui.InCallActivity"

    iput-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->INCALL_ACTIVITY:Ljava/lang/String;

    .line 303
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPaymentApps:Ljava/util/ArrayList;

    .line 304
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPaymentAppsName:Ljava/util/ArrayList;

    .line 311
    iput-boolean v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayEnabled:Z

    .line 312
    iput-boolean v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayBtnLaunched:Z

    .line 313
    iput v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayDefault:I

    .line 314
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayWhich:I

    .line 318
    iput v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayBtnX:I

    iput v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayBtnY:I

    .line 322
    iput-boolean v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mIsPerfBoostEnabled:Z

    .line 323
    iput-boolean v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mIsperfDisablepackingEnable:Z

    .line 324
    iput v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->lDisPackTimeOut:I

    .line 325
    iput v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->lBoostTimeOut:I

    .line 328
    iput-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPerfBoost:Landroid/util/BoostFramework;

    .line 329
    iput-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPerfPack:Landroid/util/BoostFramework;

    .line 330
    iput-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPerfIop:Landroid/util/BoostFramework;

    .line 337
    new-instance v0, Lcom/android/server/policy/OemPhoneWindowManager$2;

    invoke-direct {v0, p0}, Lcom/android/server/policy/OemPhoneWindowManager$2;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 347
    new-instance v0, Lcom/android/server/policy/OemPhoneWindowManager$3;

    invoke-direct {v0, p0}, Lcom/android/server/policy/OemPhoneWindowManager$3;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mMenuDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 357
    new-instance v0, Lcom/android/server/policy/OemPhoneWindowManager$4;

    invoke-direct {v0, p0}, Lcom/android/server/policy/OemPhoneWindowManager$4;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 367
    new-instance v0, Lcom/android/server/policy/OemPhoneWindowManager$5;

    invoke-direct {v0, p0}, Lcom/android/server/policy/OemPhoneWindowManager$5;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 602
    new-instance v0, Lcom/android/server/policy/OemPhoneWindowManager$6;

    invoke-direct {v0, p0}, Lcom/android/server/policy/OemPhoneWindowManager$6;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mStartBugReportTask:Ljava/lang/Runnable;

    .line 121
    return-void
.end method

.method private cancelErrorLog()V
    .locals 2

    .prologue
    .line 577
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mStartBugReportTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 576
    return-void
.end method

.method private clearQuickPaySwitch(Z)V
    .locals 2
    .param p1, "clearWhich"    # Z

    .prologue
    .line 2000
    if-eqz p1, :cond_0

    .line 2001
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayWhich:I

    .line 2003
    :cond_0
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayFocusWin:Ljava/lang/String;

    .line 2004
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayFocusWinPid:I

    .line 2005
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureHandler:Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;

    .line 2006
    const/16 v1, 0x8

    .line 2005
    invoke-virtual {v0, v1}, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;->removeMessages(I)V

    .line 2007
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureHandler:Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;

    .line 2008
    const/16 v1, 0x9

    .line 2007
    invoke-virtual {v0, v1}, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;->sendEmptyMessage(I)Z

    .line 1998
    return-void
.end method

.method private collapsePanels()V
    .locals 4

    .prologue
    .line 1594
    sget-boolean v1, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1595
    const-string/jumbo v1, "OemPhoneWindowManager"

    const-string/jumbo v2, " ++++++++++ collapsePanels() "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1598
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v1, :cond_1

    .line 1599
    invoke-super {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    .line 1603
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->collapsePanels()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1593
    :goto_0
    return-void

    .line 1604
    :catch_0
    move-exception v0

    .line 1605
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

    .line 1979
    sget-boolean v0, Lcom/android/server/policy/OemPhoneWindowManager;->IS_QUICK_PAY_ENABLED:Z

    if-nez v0, :cond_0

    return-void

    .line 1980
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayBtnView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1981
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayBtnView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1982
    invoke-direct {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayBtnView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 1984
    :cond_1
    iput-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayBtnView:Landroid/view/View;

    .line 1986
    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    .line 1987
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1989
    :cond_3
    const-string/jumbo v0, "OemPhoneWindowManager"

    const-string/jumbo v1, "QuickPay: Ball disabled"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1978
    return-void
.end method

.method private enableQuickPayButton()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const-wide v6, 0x3ff199999999999aL    # 1.1

    .line 1793
    sget-boolean v3, Lcom/android/server/policy/OemPhoneWindowManager;->IS_QUICK_PAY_ENABLED:Z

    if-nez v3, :cond_0

    return-void

    .line 1794
    :cond_0
    invoke-direct {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->getAvailablePayApps()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_1

    return-void

    .line 1795
    :cond_1
    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayBtnView:Landroid/view/View;

    if-nez v3, :cond_3

    .line 1796
    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 1798
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x5030005

    .line 1797
    invoke-virtual {v1, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayBtnView:Landroid/view/View;

    .line 1799
    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayBtnView:Landroid/view/View;

    .line 1800
    const v4, 0x50d0008

    .line 1799
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mFloatingButton:Landroid/widget/ImageButton;

    .line 1801
    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayBtnView:Landroid/view/View;

    .line 1802
    const v4, 0x50d0007

    .line 1801
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mFloatingButtonBG:Landroid/widget/ImageView;

    .line 1804
    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    const/16 v4, 0x7d3

    invoke-direct {v3, v4}, Landroid/view/WindowManager$LayoutParams;-><init>(I)V

    iput-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 1805
    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v4, v4, 0x128

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1809
    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v4, v4, 0x1

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 1811
    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const-string/jumbo v4, "QuickPayBall"

    invoke-virtual {v3, v4}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1812
    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v4, -0x2

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1813
    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const v4, 0x1030004

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1814
    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v4, 0x33

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1815
    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1816
    const v4, 0x5050002

    .line 1815
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 1817
    .local v2, "margin":I
    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1818
    const v4, 0x5020007

    .line 1817
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1819
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1820
    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1822
    iget v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayBtnX:I

    if-nez v3, :cond_2

    iget v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayBtnY:I

    if-eqz v3, :cond_4

    .line 1823
    :cond_2
    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayBtnX:I

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1824
    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayBtnY:I

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1830
    :goto_0
    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mFloatingButton:Landroid/widget/ImageButton;

    new-instance v4, Lcom/android/server/policy/OemPhoneWindowManager$8;

    invoke-direct {v4, p0, v2}, Lcom/android/server/policy/OemPhoneWindowManager$8;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;I)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1974
    invoke-direct {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayBtnView:Landroid/view/View;

    iget-object v5, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v3, v4, v5}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1975
    const-string/jumbo v3, "OemPhoneWindowManager"

    const-string/jumbo v4, "QuickPay: Ball enabled"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1792
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    .end local v2    # "margin":I
    :cond_3
    return-void

    .line 1826
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

    .line 1827
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
    .line 1578
    sget-boolean v1, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1579
    const-string/jumbo v1, "OemPhoneWindowManager"

    const-string/jumbo v2, " ++++++++++ expandNotificationPanel() "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1582
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v1, :cond_1

    .line 1583
    invoke-super {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    .line 1587
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    const/4 v2, 0x0

    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->expandNotificationsPanel()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1577
    :goto_0
    return-void

    .line 1588
    :catch_0
    move-exception v0

    .line 1589
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
    .line 1773
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1775
    :catch_0
    move-exception v0

    .line 1776
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

    .line 1778
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

    .line 1749
    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 1750
    const v7, 0x5070013

    .line 1749
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v5, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPaymentAppsName:Ljava/util/ArrayList;

    .line 1751
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1752
    .local v1, "dialoglist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPaymentApps:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 1753
    iget-object v5, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPaymentApps:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;

    .line 1754
    .local v0, "app":Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;
    iget-object v5, v0, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->packageName:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/server/policy/OemPhoneWindowManager;->isPackageAvailable(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1755
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1756
    iget-object v5, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPaymentAppsName:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, v0, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->switchName:Ljava/lang/String;

    .line 1758
    iget-object v5, v0, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->appIcon:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_0

    .line 1759
    iget-object v5, v0, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->packageName:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/server/policy/OemPhoneWindowManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 1760
    .local v3, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_0

    .line 1761
    iget-object v5, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 1762
    const v6, 0x5050003

    .line 1761
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 1763
    .local v4, "iconSize":I
    invoke-virtual {v3, v8, v8, v4, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1764
    iput-object v3, v0, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->appIcon:Landroid/graphics/drawable/Drawable;

    .line 1752
    .end local v3    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v4    # "iconSize":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1769
    .end local v0    # "app":Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;
    :cond_1
    return-object v1
.end method

.method private getLastTask(Landroid/content/Context;I)Landroid/app/ActivityManager$RecentTaskInfo;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 1534
    const-string/jumbo v0, "com.android.systemui"

    .line 1535
    .local v0, "SYSTEMUI_PACKAGE":Ljava/lang/String;
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/OemPhoneWindowManager;->resolveCurrentLauncherPackage(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 1536
    .local v2, "defaultHomePackage":Ljava/lang/String;
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 1537
    .local v1, "am":Landroid/app/IActivityManager;
    const/4 v3, 0x6

    .line 1538
    .local v3, "flags":I
    const/4 v8, 0x5

    const/4 v9, 0x6

    invoke-interface {v1, v8, v9, p2}, Landroid/app/IActivityManager;->getRecentTasks(III)Landroid/content/pm/ParceledListSlice;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v7

    .line 1540
    .local v7, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_0
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-ge v4, v8, :cond_3

    .line 1541
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 1542
    .local v6, "task":Landroid/app/ActivityManager$RecentTaskInfo;
    iget-object v8, v6, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    if-eqz v8, :cond_0

    .line 1543
    iget-object v8, v6, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    iget-object v9, v6, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1545
    :cond_0
    iget-object v8, v6, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 1546
    .local v5, "packageName":Ljava/lang/String;
    iget v8, v6, Landroid/app/ActivityManager$RecentTaskInfo;->stackId:I

    if-eqz v8, :cond_1

    .line 1547
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1540
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1548
    :cond_2
    const-string/jumbo v8, "com.android.systemui"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 1549
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$RecentTaskInfo;

    return-object v8

    .line 1553
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "task":Landroid/app/ActivityManager$RecentTaskInfo;
    :cond_3
    return-object v10
.end method

.method private getScreenshotChordLongPressDelay()J
    .locals 2

    .prologue
    .line 581
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 584
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getDeviceGlobalActionKeyTimeout()J

    move-result-wide v0

    long-to-float v0, v0

    .line 583
    const/high16 v1, 0x3fc80000    # 1.5625f

    mul-float/2addr v0, v1

    float-to-long v0, v0

    return-wide v0

    .line 586
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
    .line 1992
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    .line 1994
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1993
    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowManager:Landroid/view/WindowManager;

    .line 1996
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method private hasInComingCall()Z
    .locals 4

    .prologue
    .line 590
    const/4 v1, 0x0

    .line 592
    .local v1, "inCallFocused":Z
    iget-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_0

    .line 593
    iget-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 594
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->INCALL_ACTIVITY:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 595
    const/4 v1, 0x1

    .line 599
    .end local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    return v1
.end method

.method private isPackageAvailable(Ljava/lang/String;)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 1782
    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1783
    const/4 v3, 0x0

    .line 1782
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1784
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    iget-boolean v2, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    .line 1785
    const/4 v2, 0x1

    return v2

    .line 1787
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 1789
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

    .line 1790
    return v5
.end method

.method private launchCameraAction()V
    .locals 2

    .prologue
    .line 1490
    invoke-virtual {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->sendCloseSystemWindows()V

    .line 1492
    const-class v1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 1491
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 1493
    .local v0, "service":Lcom/android/server/statusbar/StatusBarManagerInternal;
    const/16 v1, 0xb

    invoke-interface {v0, v1}, Lcom/android/server/statusbar/StatusBarManagerInternal;->onCameraLaunchGestureDetected(I)V

    .line 1489
    return-void
.end method

.method private launchQuickAccessPage()V
    .locals 2

    .prologue
    .line 1572
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "net.oneplus.launcher.action.OPEN_QUICK_PAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1573
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1574
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1571
    return-void
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

    .line 2153
    invoke-virtual {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->keyguardOn()Z

    move-result v2

    .line 2154
    .local v2, "keyguardOn":Z
    invoke-virtual {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->isUserSetupComplete()Z

    move-result v3

    .line 2157
    .local v3, "userSetupComplete":Z
    if-nez v3, :cond_0

    .line 2158
    packed-switch p1, :pswitch_data_0

    .line 2165
    :goto_0
    return-void

    .line 2160
    :pswitch_0
    invoke-direct {p0, v4}, Lcom/android/server/policy/OemPhoneWindowManager;->triggerVirtualKeypress(I)V

    goto :goto_0

    .line 2168
    :cond_0
    packed-switch p1, :pswitch_data_1

    .line 2152
    :cond_1
    :goto_1
    :pswitch_1
    return-void

    .line 2170
    :pswitch_2
    invoke-direct {p0, v4}, Lcom/android/server/policy/OemPhoneWindowManager;->triggerVirtualKeypress(I)V

    goto :goto_1

    .line 2173
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->handleShortPressOnHome()V

    goto :goto_1

    .line 2176
    :pswitch_4
    const/16 v4, 0x52

    invoke-direct {p0, v4}, Lcom/android/server/policy/OemPhoneWindowManager;->triggerVirtualKeypress(I)V

    goto :goto_1

    .line 2179
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->toggleRecentApps()V

    goto :goto_1

    .line 2183
    :pswitch_6
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v4

    invoke-virtual {p0, v6, v4}, Lcom/android/server/policy/OemPhoneWindowManager;->launchAssistAction(Ljava/lang/String;I)V

    goto :goto_1

    .line 2186
    :pswitch_7
    invoke-direct {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->putDeviceToSleep()V

    goto :goto_1

    .line 2189
    :pswitch_8
    invoke-direct {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->launchCameraAction()V

    goto :goto_1

    .line 2192
    :pswitch_9
    invoke-virtual {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->launchAssistLongPressAction()V

    goto :goto_1

    .line 2195
    :pswitch_a
    iget-object v4, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mCurrentUserId:I

    invoke-direct {p0, v4, v5}, Lcom/android/server/policy/OemPhoneWindowManager;->switchToLastApp(Landroid/content/Context;I)Z

    goto :goto_1

    .line 2198
    :pswitch_b
    invoke-direct {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->launchQuickAccessPage()V

    goto :goto_1

    .line 2201
    :pswitch_c
    iget-object v4, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v4, :cond_1

    .line 2202
    iget-object v4, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 2203
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "StatusBar"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2206
    invoke-direct {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->collapsePanels()V

    goto :goto_1

    .line 2210
    :cond_2
    invoke-direct {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->expandNotificationsPanel()V

    goto :goto_1

    .line 2215
    .end local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :pswitch_d
    invoke-direct {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->toggleSplitScreen()V

    goto :goto_1

    .line 2222
    :pswitch_e
    sget-boolean v4, Lcom/android/server/policy/OemPhoneWindowManager;->IS_QUICK_PAY_ENABLED:Z

    if-eqz v4, :cond_1

    .line 2223
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 2224
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

    .line 2225
    iget-object v4, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureHandler:Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;

    invoke-virtual {v4, v8}, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;->removeMessages(I)V

    .line 2227
    iget-object v6, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureHandler:Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;

    .line 2229
    const/16 v4, 0x84

    if-ne v1, v4, :cond_3

    const/4 v4, 0x1

    .line 2227
    :goto_2
    invoke-virtual {v6, v8, v4, v5}, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    :cond_3
    move v4, v5

    .line 2229
    goto :goto_2

    .line 2158
    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
    .end packed-switch

    .line 2168
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
    .line 1565
    sget-boolean v0, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1566
    const-string/jumbo v0, "OemPhoneWindowManager"

    const-string/jumbo v1, " ++++++++++ putDeviceToSleep() "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1568
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 1564
    return-void
.end method

.method private readConfigurationDependentBehaviors()V
    .locals 13

    .prologue
    const/16 v12, 0xc

    const/4 v11, 0x0

    .line 1385
    iget-object v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 1388
    .local v8, "resolver":Landroid/content/ContentResolver;
    iget-object v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 1389
    const v10, 0x10e0062

    .line 1388
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 1391
    .local v6, "defaultLongPressOnHomeBehavior":I
    const-string/jumbo v9, "key_home_long_press_action"

    .line 1390
    invoke-static {v8, v9, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnHomeBehavior:I

    .line 1393
    iget v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnHomeBehavior:I

    if-ltz v9, :cond_0

    .line 1394
    iget v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnHomeBehavior:I

    if-le v9, v12, :cond_1

    .line 1395
    :cond_0
    iput v11, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnHomeBehavior:I

    .line 1399
    :cond_1
    iget-object v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 1400
    const v10, 0x10e0063

    .line 1399
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 1402
    .local v2, "defaultDoubleTapOnHomeBehavior":I
    const-string/jumbo v9, "key_home_double_tap_action"

    .line 1401
    invoke-static {v8, v9, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    .line 1404
    iget v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    if-ltz v9, :cond_2

    .line 1405
    iget v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    if-le v9, v12, :cond_3

    .line 1406
    :cond_2
    iput v11, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    .line 1410
    :cond_3
    iget-object v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 1411
    const v10, 0x5090009

    .line 1410
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    .line 1413
    .local v7, "defaultLongPressOnMenuBehavior":I
    const-string/jumbo v9, "key_menu_long_press_action"

    .line 1412
    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnMenuBehavior:I

    .line 1415
    iget v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnMenuBehavior:I

    if-ltz v9, :cond_4

    .line 1416
    iget v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnMenuBehavior:I

    if-le v9, v12, :cond_5

    .line 1417
    :cond_4
    iput v11, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnMenuBehavior:I

    .line 1421
    :cond_5
    iget-object v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 1422
    const v10, 0x5090005

    .line 1421
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 1424
    .local v3, "defaultDoubleTapOnMenuBehavior":I
    const-string/jumbo v9, "key_menu_double_tap_action"

    .line 1423
    invoke-static {v8, v9, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnMenuBehavior:I

    .line 1426
    iget v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnMenuBehavior:I

    if-ltz v9, :cond_6

    .line 1427
    iget v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnMenuBehavior:I

    if-le v9, v12, :cond_7

    .line 1428
    :cond_6
    iput v11, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnMenuBehavior:I

    .line 1432
    :cond_7
    iget-object v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 1433
    const v10, 0x5090008

    .line 1432
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 1435
    .local v5, "defaultLongPressOnBackBehavior":I
    const-string/jumbo v9, "key_back_long_press_action"

    .line 1434
    invoke-static {v8, v9, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnBackBehavior:I

    .line 1437
    iget v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnBackBehavior:I

    if-ltz v9, :cond_8

    .line 1438
    iget v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnBackBehavior:I

    if-le v9, v12, :cond_9

    .line 1439
    :cond_8
    iput v11, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnBackBehavior:I

    .line 1443
    :cond_9
    iget-object v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 1444
    const v10, 0x5090004

    .line 1443
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 1446
    .local v1, "defaultDoubleTapOnBackBehavior":I
    const-string/jumbo v9, "key_back_double_tap_action"

    .line 1445
    invoke-static {v8, v9, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnBackBehavior:I

    .line 1448
    iget v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnBackBehavior:I

    if-ltz v9, :cond_a

    .line 1449
    iget v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnBackBehavior:I

    if-le v9, v12, :cond_b

    .line 1450
    :cond_a
    iput v11, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnBackBehavior:I

    .line 1454
    :cond_b
    iget-object v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 1455
    const v10, 0x5090007

    .line 1454
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 1457
    .local v4, "defaultLongPressOnAppSwitchBehavior":I
    const-string/jumbo v9, "key_app_switch_long_press_action"

    .line 1456
    invoke-static {v8, v9, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnAppSwitchBehavior:I

    .line 1459
    iget v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnAppSwitchBehavior:I

    if-ltz v9, :cond_c

    .line 1460
    iget v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnAppSwitchBehavior:I

    if-le v9, v12, :cond_d

    .line 1461
    :cond_c
    iput v11, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnAppSwitchBehavior:I

    .line 1465
    :cond_d
    iget-object v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 1466
    const v10, 0x5090003

    .line 1465
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 1468
    .local v0, "defaultDoubleTapOnAppSwitchBehavior":I
    const-string/jumbo v9, "key_app_switch_double_tap_action"

    .line 1467
    invoke-static {v8, v9, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnAppSwitchBehavior:I

    .line 1470
    iget v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnAppSwitchBehavior:I

    if-ltz v9, :cond_e

    .line 1471
    iget v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnAppSwitchBehavior:I

    if-le v9, v12, :cond_f

    .line 1472
    :cond_e
    iput v11, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnAppSwitchBehavior:I

    .line 1384
    :cond_f
    return-void
.end method

.method private recordErrorLog()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x96

    .line 563
    iget-boolean v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mScreenshotChordEnabled:Z

    if-eqz v2, :cond_0

    .line 564
    iget-boolean v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mScreenshotChordVolumeUpKeyTriggered:Z

    .line 563
    if-eqz v2, :cond_0

    .line 564
    iget-boolean v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mScreenshotChordPowerKeyTriggered:Z

    .line 563
    if-eqz v2, :cond_0

    .line 565
    iget-boolean v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mScreenshotChordVolumeDownKeyTriggered:Z

    if-eqz v2, :cond_1

    .line 562
    :cond_0
    :goto_0
    return-void

    .line 566
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 567
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mVolumeUpKeyTime:J

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 568
    iget-wide v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mScreenshotChordPowerKeyTime:J

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 569
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mVolumeUpKeyConsumedByScreenshotChord:Z

    .line 570
    invoke-direct {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->cancelErrorLog()V

    .line 571
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
    .line 1557
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1558
    const-string/jumbo v4, "android.intent.category.HOME"

    .line 1557
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 1559
    .local v1, "launcherIntent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1560
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, p2}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 1561
    .local v0, "launcherInfo":Landroid/content/pm/ResolveInfo;
    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    return-object v3
.end method

.method private resolveQuickPayConfigFromJSON(Lorg/json/JSONArray;)V
    .locals 7
    .param p1, "jsonArray"    # Lorg/json/JSONArray;

    .prologue
    .line 2066
    if-nez p1, :cond_0

    .line 2067
    return-void

    .line 2070
    :cond_0
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_6

    .line 2071
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 2072
    .local v3, "json":Lorg/json/JSONObject;
    const-string/jumbo v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "op_quick_pay_wechat_qrcode_config"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2073
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v3}, Lcom/android/server/policy/OemPhoneWindowManager;->updateQuickPayIfNeed(ILorg/json/JSONObject;)V

    .line 2070
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2074
    :cond_2
    const-string/jumbo v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "op_quick_pay_wechat_scanning_config"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2075
    const/4 v4, 0x1

    invoke-virtual {p0, v4, v3}, Lcom/android/server/policy/OemPhoneWindowManager;->updateQuickPayIfNeed(ILorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 2085
    .end local v3    # "json":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 2086
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

    .line 2065
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_2
    return-void

    .line 2076
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

    .line 2077
    const/4 v4, 0x2

    invoke-virtual {p0, v4, v3}, Lcom/android/server/policy/OemPhoneWindowManager;->updateQuickPayIfNeed(ILorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 2087
    .end local v3    # "json":Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    .line 2088
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

    .line 2078
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

    .line 2079
    const/4 v4, 0x3

    invoke-virtual {p0, v4, v3}, Lcom/android/server/policy/OemPhoneWindowManager;->updateQuickPayIfNeed(ILorg/json/JSONObject;)V

    goto/16 :goto_1

    .line 2080
    :cond_5
    const-string/jumbo v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "op_quick_pay_paytm_config"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2081
    const/4 v4, 0x4

    invoke-virtual {p0, v4, v3}, Lcom/android/server/policy/OemPhoneWindowManager;->updateQuickPayIfNeed(ILorg/json/JSONObject;)V

    goto/16 :goto_1

    .line 2084
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

.method private startQuickPay(IZZ)V
    .locals 8
    .param p1, "which"    # I
    .param p2, "unlocked"    # Z
    .param p3, "fromButton"    # Z

    .prologue
    .line 1691
    :try_start_0
    sget-boolean v5, Lcom/android/server/policy/OemPhoneWindowManager;->IS_QUICK_PAY_ENABLED:Z

    if-nez v5, :cond_0

    return-void

    .line 1692
    :cond_0
    iget-object v5, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPaymentApps:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x5

    if-ge v5, v6, :cond_1

    return-void

    .line 1693
    :cond_1
    iput-boolean p3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayBtnLaunched:Z

    .line 1694
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

    .line 1695
    iget-object v5, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPaymentApps:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;

    iget-object v5, v5, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->packageName:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/server/policy/OemPhoneWindowManager;->isPackageAvailable(Ljava/lang/String;)Z

    move-result v4

    .line 1696
    .local v4, "pkgOK":Z
    if-nez v4, :cond_2

    .line 1697
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPaymentApps:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 1698
    if-eq p1, v1, :cond_5

    .line 1699
    iget-object v5, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPaymentApps:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;

    .line 1700
    .local v3, "next":Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;
    iget-boolean v5, v3, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->isDefault:Z

    if-eqz v5, :cond_5

    iget-object v5, v3, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->packageName:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/server/policy/OemPhoneWindowManager;->isPackageAvailable(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1701
    move p1, v1

    .line 1702
    const/4 v4, 0x1

    .line 1703
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

    .line 1709
    .end local v1    # "i":I
    .end local v3    # "next":Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;
    .end local v4    # "pkgOK":Z
    :cond_2
    if-eqz v4, :cond_8

    .line 1710
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/android/server/policy/OemPhoneWindowManager;->clearQuickPaySwitch(Z)V

    .line 1712
    iget-object v5, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPaymentApps:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;

    iget-object v5, v5, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->packageName:Ljava/lang/String;

    const/16 v6, 0x1388

    invoke-virtual {p0, v5, v6}, Lcom/android/server/policy/OemPhoneWindowManager;->acquireAppLaunchPerfLock(Ljava/lang/String;I)V

    .line 1713
    iput p1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayWhich:I

    .line 1715
    iget-object v5, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPaymentApps:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;

    .line 1716
    .restart local v3    # "next":Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;
    if-eqz p2, :cond_3

    .line 1718
    iget-object v5, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v3, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/ActivityManagerInternal;->addAppLockerPassedPackage(Ljava/lang/String;)V

    .line 1719
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0, v5, v6, v7}, Lcom/android/server/policy/OemPhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 1721
    :cond_3
    const/4 v2, 0x0

    .line 1722
    .local v2, "intent":Landroid/content/Intent;
    iget-boolean v5, v3, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->isSDKstart:Z

    if-eqz v5, :cond_6

    .line 1723
    new-instance v2, Landroid/content/Intent;

    .end local v2    # "intent":Landroid/content/Intent;
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1724
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v5, "com.oneplus.quickpay"

    const-string/jumbo v6, "com.oneplus.quickpay.PayActivity"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1725
    const v5, 0x10008000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1726
    const-string/jumbo v5, "OP_QUICK_PAY_DEFAULT"

    invoke-virtual {v2, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1727
    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v2, v5}, Lcom/android/server/policy/OemPhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1689
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "next":Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;
    :cond_4
    :goto_1
    return-void

    .line 1697
    .restart local v1    # "i":I
    .local v4, "pkgOK":Z
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 1728
    .end local v1    # "i":I
    .end local v4    # "pkgOK":Z
    .local v2, "intent":Landroid/content/Intent;
    .restart local v3    # "next":Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;
    :cond_6
    iget-object v5, v3, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->className:Ljava/lang/String;

    if-eqz v5, :cond_7

    .line 1729
    new-instance v2, Landroid/content/Intent;

    .end local v2    # "intent":Landroid/content/Intent;
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1730
    .local v2, "intent":Landroid/content/Intent;
    iget-object v5, v3, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->packageName:Ljava/lang/String;

    iget-object v6, v3, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->className:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1731
    const v5, 0x10008000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1732
    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v2, v5}, Lcom/android/server/policy/OemPhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1744
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "next":Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;
    :catch_0
    move-exception v0

    .line 1745
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

    .line 1733
    .end local v0    # "e":Ljava/lang/Exception;
    .local v2, "intent":Landroid/content/Intent;
    .restart local v3    # "next":Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;
    :cond_7
    :try_start_1
    iget-object v5, v3, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->urlScheme:Ljava/lang/String;

    if-eqz v5, :cond_4

    .line 1734
    new-instance v2, Landroid/content/Intent;

    .end local v2    # "intent":Landroid/content/Intent;
    const-string/jumbo v5, "android.intent.action.VIEW"

    iget-object v6, v3, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->urlScheme:Ljava/lang/String;

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1736
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v5, 0x14000000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1737
    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v2, v5}, Lcom/android/server/policy/OemPhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_1

    .line 1740
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "next":Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;
    :cond_8
    iget-object v5, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    const v6, 0x50a003e

    .line 1741
    const/4 v7, 0x0

    .line 1740
    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 1742
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
    .line 1498
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/OemPhoneWindowManager;->switchToLastAppInternal(Landroid/content/Context;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1499
    :catch_0
    move-exception v0

    .line 1500
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "OemPhoneWindowManager"

    const-string/jumbo v2, "Could not switch to last app"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1502
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

    .line 1507
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/OemPhoneWindowManager;->getLastTask(Landroid/content/Context;I)Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v1

    .line 1508
    .local v1, "lastTask":Landroid/app/ActivityManager$RecentTaskInfo;
    iget-object v3, v1, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1509
    .local v2, "packageName":Ljava/lang/String;
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 1512
    .local v0, "am":Landroid/app/IActivityManager;
    if-nez v1, :cond_0

    .line 1513
    return v4

    .line 1518
    :cond_0
    iget v3, v1, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    if-gez v3, :cond_1

    .line 1519
    iget v3, v1, Landroid/app/ActivityManager$RecentTaskInfo;->affiliatedTaskId:I

    invoke-interface {v0, v3, v6}, Landroid/app/IActivityManager;->startActivityFromRecents(ILandroid/os/Bundle;)I

    .line 1520
    return v7

    .line 1523
    :cond_1
    sget-boolean v3, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 1524
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

    .line 1527
    :cond_2
    iget v3, v1, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    const/4 v4, 0x2

    invoke-interface {v0, v3, v4, v6}, Landroid/app/IActivityManager;->moveTaskToFront(IILandroid/os/Bundle;)V

    .line 1529
    return v7
.end method

.method private toggleSplitScreen()V
    .locals 3

    .prologue
    .line 1612
    const-class v1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 1611
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 1613
    .local v0, "service":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v0, :cond_0

    .line 1614
    invoke-interface {v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->toggleSplitScreen()V

    .line 1609
    :goto_0
    return-void

    .line 1616
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
    .line 1477
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    .line 1478
    .local v0, "im":Landroid/hardware/input/InputManager;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 1480
    .local v2, "now":J
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v6, 0x0

    .line 1481
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    .line 1482
    const/16 v12, 0x8

    const v13, 0x10000101

    move-wide v4, v2

    move/from16 v7, p1

    .line 1480
    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 1483
    .local v1, "downEvent":Landroid/view/KeyEvent;
    const/4 v4, 0x1

    invoke-static {v1, v4}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v14

    .line 1485
    .local v14, "upEvent":Landroid/view/KeyEvent;
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 1486
    const/4 v4, 0x0

    invoke-virtual {v0, v14, v4}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 1476
    return-void
.end method


# virtual methods
.method acquireAppLaunchPerfLock(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "milliseconds"    # I

    .prologue
    .line 2012
    iget-boolean v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mIsperfDisablepackingEnable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPerfPack:Landroid/util/BoostFramework;

    if-nez v0, :cond_0

    .line 2013
    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPerfPack:Landroid/util/BoostFramework;

    .line 2015
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPerfPack:Landroid/util/BoostFramework;

    if-eqz v0, :cond_1

    .line 2016
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPerfPack:Landroid/util/BoostFramework;

    iget v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->lDisPackTimeOut:I

    iget-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->lBoostPackParamVal:[I

    invoke-virtual {v0, v1, v2}, Landroid/util/BoostFramework;->perfLockAcquire(I[I)I

    .line 2019
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mIsPerfBoostEnabled:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPerfBoost:Landroid/util/BoostFramework;

    if-nez v0, :cond_2

    .line 2020
    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPerfBoost:Landroid/util/BoostFramework;

    .line 2022
    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPerfBoost:Landroid/util/BoostFramework;

    if-eqz v0, :cond_3

    .line 2023
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPerfBoost:Landroid/util/BoostFramework;

    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->lBoostCpuParamVal:[I

    invoke-virtual {v0, p2, v1}, Landroid/util/BoostFramework;->perfLockAcquire(I[I)I

    .line 2027
    :cond_3
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPerfIop:Landroid/util/BoostFramework;

    if-nez v0, :cond_4

    .line 2028
    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPerfIop:Landroid/util/BoostFramework;

    .line 2030
    :cond_4
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPerfIop:Landroid/util/BoostFramework;

    if-eqz v0, :cond_5

    .line 2031
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPerfIop:Landroid/util/BoostFramework;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Landroid/util/BoostFramework;->perfIOPrefetchStart(ILjava/lang/String;)I

    .line 2010
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

    .line 1636
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

    .line 1637
    if-eqz p2, :cond_4

    invoke-interface {p2}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1638
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

    .line 1639
    .local v2, "isPayApp":Z
    if-eqz p2, :cond_0

    if-eqz v2, :cond_5

    :cond_0
    const/4 v1, 0x0

    .line 1642
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

    .line 1643
    const-string/jumbo v8, " mQuickPayWhich="

    .line 1642
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1643
    iget v8, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayWhich:I

    .line 1642
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1643
    const-string/jumbo v8, " newFocus="

    .line 1642
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1644
    const-string/jumbo v8, " lastFocus="

    .line 1642
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1644
    const-string/jumbo v8, " isFocusChanged="

    .line 1642
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1645
    const-string/jumbo v8, " mQuickPayFocusWinPid="

    .line 1642
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1645
    iget v8, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayFocusWinPid:I

    .line 1642
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1646
    if-eqz v2, :cond_8

    .line 1647
    iget v6, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayFocusWinPid:I

    if-nez v6, :cond_7

    .line 1648
    invoke-interface {p2}, Landroid/view/WindowManagerPolicy$WindowState;->getWindowPid()I

    move-result v6

    iput v6, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayFocusWinPid:I

    .line 1672
    :cond_1
    :goto_2
    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 1673
    .local v3, "newFocusWin":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayFocusWin:Ljava/lang/String;

    const-string/jumbo v7, ""

    if-eq v6, v7, :cond_2

    iget-object v6, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayFocusWin:Ljava/lang/String;

    if-eq v6, v3, :cond_3

    .line 1674
    :cond_2
    iput-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayFocusWin:Ljava/lang/String;

    .line 1675
    iget-object v6, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureHandler:Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;

    .line 1676
    const/16 v7, 0x9

    .line 1675
    invoke-virtual {v6, v7}, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;->removeMessages(I)V

    .line 1677
    iget-object v6, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureHandler:Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;

    invoke-virtual {v6, v10}, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;->removeMessages(I)V

    .line 1679
    iget-object v6, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureHandler:Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;

    .line 1681
    invoke-interface {p2}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v7

    .line 1679
    invoke-virtual {v6, v10, v7}, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 1687
    .end local v1    # "isFocusChanged":Z
    .end local v2    # "isPayApp":Z
    .end local v3    # "newFocusWin":Ljava/lang/String;
    .end local v5    # "winTitle":Ljava/lang/String;
    :cond_3
    :goto_3
    invoke-super {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->focusChangedLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)I

    move-result v6

    return v6

    .line 1637
    :cond_4
    const-string/jumbo v5, ""

    .restart local v5    # "winTitle":Ljava/lang/String;
    goto/16 :goto_0

    .line 1640
    .restart local v2    # "isPayApp":Z
    :cond_5
    invoke-interface {p2}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x7d0

    if-eq v6, v7, :cond_0

    .line 1641
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

    .line 1650
    :cond_7
    invoke-interface {p2}, Landroid/view/WindowManagerPolicy$WindowState;->getWindowPid()I

    move-result v4

    .line 1651
    .local v4, "pid":I
    iget v6, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayFocusWinPid:I

    if-eq v6, v4, :cond_1

    .line 1652
    const-string/jumbo v6, ""

    iput-object v6, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayFocusWin:Ljava/lang/String;

    .line 1654
    iput v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayFocusWinPid:I

    .line 1656
    iget-object v6, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 1657
    iget-object v6, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPaymentApps:Ljava/util/ArrayList;

    iget v8, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayWhich:I

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;

    iget-object v6, v6, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->packageName:Ljava/lang/String;

    .line 1656
    invoke-virtual {v7, v6}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1658
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_1

    .line 1659
    const v6, 0x10008000

    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1660
    iget-object v6, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    new-instance v7, Lcom/android/server/policy/OemPhoneWindowManager$7;

    invoke-direct {v7, p0, v0}, Lcom/android/server/policy/OemPhoneWindowManager$7;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;Landroid/content/Intent;)V

    invoke-virtual {v6, v7}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_2

    .line 1683
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v4    # "pid":I
    :cond_8
    if-eqz v1, :cond_3

    iget-object v6, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayFocusWin:Ljava/lang/String;

    const-string/jumbo v7, ""

    if-eq v6, v7, :cond_3

    .line 1684
    invoke-direct {p0, v9}, Lcom/android/server/policy/OemPhoneWindowManager;->clearQuickPaySwitch(Z)V

    goto :goto_3
.end method

.method public init(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManager"    # Landroid/view/IWindowManager;
    .param p3, "windowManagerFuncs"    # Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .prologue
    .line 380
    invoke-super/range {p0 .. p3}, Lcom/android/server/policy/PhoneWindowManager;->init(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V

    .line 383
    const/4 v14, 0x1

    new-array v14, v14, [I

    const/16 v15, 0xb

    const/16 v16, 0x0

    aput v15, v14, v16

    invoke-static {v14}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 384
    new-instance v14, Lcom/android/server/policy/OemPhoneWindowManager$KeyLockModeReceiver;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v15}, Lcom/android/server/policy/OemPhoneWindowManager$KeyLockModeReceiver;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;Lcom/android/server/policy/OemPhoneWindowManager$KeyLockModeReceiver;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mKeyLockModeReceiver:Lcom/android/server/policy/OemPhoneWindowManager$KeyLockModeReceiver;

    .line 385
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 386
    .local v8, "keyModeFilter":Landroid/content/IntentFilter;
    const-string/jumbo v14, "com.oem.intent.action.KEY_LOCK_MODE"

    invoke-virtual {v8, v14}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 387
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mKeyLockModeReceiver:Lcom/android/server/policy/OemPhoneWindowManager$KeyLockModeReceiver;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 392
    .end local v8    # "keyModeFilter":Landroid/content/IntentFilter;
    :cond_0
    const/4 v14, 0x1

    new-array v14, v14, [I

    const/16 v15, 0xd

    const/16 v16, 0x0

    aput v15, v14, v16

    invoke-static {v14}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 393
    new-instance v10, Landroid/os/HandlerThread;

    const-string/jumbo v14, "ThreePointersThread"

    invoke-direct {v10, v14}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 394
    .local v10, "mRecognizeThread":Landroid/os/HandlerThread;
    invoke-virtual {v10}, Landroid/os/HandlerThread;->start()V

    .line 395
    new-instance v14, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;

    invoke-virtual {v10}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v15}, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;Landroid/os/Looper;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureHandler:Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;

    .line 396
    new-instance v14, Lcom/android/server/policy/OemThreePointersGesturesListener;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    .line 397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureHandler:Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;

    move-object/from16 v16, v0

    .line 396
    invoke-direct/range {v14 .. v16}, Lcom/android/server/policy/OemThreePointersGesturesListener;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mThreePointersGestures:Lcom/android/server/policy/OemThreePointersGesturesListener;

    .line 398
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mThreePointersGestures:Lcom/android/server/policy/OemThreePointersGesturesListener;

    invoke-interface {v14, v15}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->registerPointerEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V

    .line 403
    .end local v10    # "mRecognizeThread":Landroid/os/HandlerThread;
    :cond_1
    const/4 v7, 0x1

    .line 404
    .local v7, "installedOPBugreport":Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 406
    .local v11, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    const-string/jumbo v14, "com.oneplus.opbugreport"

    const/4 v15, 0x4

    invoke-virtual {v11, v14, v15}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 410
    :goto_0
    if-eqz v7, :cond_2

    .line 411
    new-instance v9, Landroid/os/HandlerThread;

    const-string/jumbo v14, "FourPointersThread"

    invoke-direct {v9, v14}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 412
    .local v9, "mRecognize4PointThread":Landroid/os/HandlerThread;
    invoke-virtual {v9}, Landroid/os/HandlerThread;->start()V

    .line 413
    new-instance v14, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;

    invoke-virtual {v9}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v15}, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;Landroid/os/Looper;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureOPBugreportHandler:Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;

    .line 414
    new-instance v14, Lcom/android/server/policy/OemFourPointersGesturesListener;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    .line 415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureOPBugreportHandler:Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;

    move-object/from16 v16, v0

    .line 414
    invoke-direct/range {v14 .. v16}, Lcom/android/server/policy/OemFourPointersGesturesListener;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mFourPointersGestures:Lcom/android/server/policy/OemFourPointersGesturesListener;

    .line 416
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mFourPointersGestures:Lcom/android/server/policy/OemFourPointersGesturesListener;

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mEnableFourPointersScreenShot:Z

    invoke-virtual {v14, v15}, Lcom/android/server/policy/OemFourPointersGesturesListener;->setOPBugreporttEnable(Z)V

    .line 417
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mFourPointersGestures:Lcom/android/server/policy/OemFourPointersGesturesListener;

    invoke-interface {v14, v15}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->registerPointerEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V

    .line 421
    .end local v9    # "mRecognize4PointThread":Landroid/os/HandlerThread;
    :cond_2
    new-instance v14, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v15}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    .line 422
    new-instance v14, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v15}, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mSettingsObserver:Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;

    .line 424
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mSettingsObserver:Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;

    invoke-virtual {v14}, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->observe()V

    .line 427
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mDeviceKeyHandler:Lcom/android/server/policy/DeviceKeyHandler;

    if-nez v14, :cond_3

    .line 428
    new-instance v14, Lcom/android/server/policy/DeviceKeyHandler;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v14, v15}, Lcom/android/server/policy/DeviceKeyHandler;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mDeviceKeyHandler:Lcom/android/server/policy/DeviceKeyHandler;

    .line 433
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 434
    const v15, 0x5090006

    .line 433
    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mLockTaskEndDelay:I

    .line 438
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 439
    .local v5, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v14, "com.oneplus.intent.action.stk.user_activity_enabled"

    invoke-virtual {v5, v14}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 440
    new-instance v14, Lcom/android/server/policy/OemPhoneWindowManager$StkUserActivityTestEnabledReceiver;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v15}, Lcom/android/server/policy/OemPhoneWindowManager$StkUserActivityTestEnabledReceiver;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;Lcom/android/server/policy/OemPhoneWindowManager$StkUserActivityTestEnabledReceiver;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mStkUserActivityTestEnabledReceiver:Lcom/android/server/policy/OemPhoneWindowManager$StkUserActivityTestEnabledReceiver;

    .line 441
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mStkUserActivityTestEnabledReceiver:Lcom/android/server/policy/OemPhoneWindowManager$StkUserActivityTestEnabledReceiver;

    invoke-virtual {v14, v15, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 446
    sget-boolean v14, Lcom/android/server/policy/OemPhoneWindowManager;->IS_QUICK_PAY_ENABLED:Z

    if-eqz v14, :cond_a

    .line 447
    new-instance v2, Ljava/util/ArrayList;

    .line 448
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 449
    const v15, 0x507000e

    .line 448
    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    .line 447
    invoke-direct {v2, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 450
    .local v2, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mPaymentApps:Ljava/util/ArrayList;

    .line 451
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v6, v14, :cond_9

    .line 452
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 453
    .local v3, "config":Ljava/lang/String;
    const-string/jumbo v14, ";"

    invoke-virtual {v3, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 454
    .local v12, "split":[Ljava/lang/String;
    array-length v14, v12

    const/4 v15, 0x4

    if-lt v14, v15, :cond_6

    .line 455
    new-instance v13, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;)V

    .line 456
    .local v13, "tmp":Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;
    iput v6, v13, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->index:I

    .line 457
    const/4 v14, 0x0

    aget-object v14, v12, v14

    iput-object v14, v13, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->packageName:Ljava/lang/String;

    .line 458
    const/4 v14, 0x1

    aget-object v14, v12, v14

    const-string/jumbo v15, "sdk"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 459
    const/4 v14, 0x1

    iput-boolean v14, v13, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->isSDKstart:Z

    .line 466
    :goto_2
    const-string/jumbo v14, "default"

    const/4 v15, 0x2

    aget-object v15, v12, v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 467
    const/4 v14, 0x1

    iput-boolean v14, v13, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->isDefault:Z

    .line 469
    :cond_4
    const-string/jumbo v14, "class"

    const/4 v15, 0x3

    aget-object v15, v12, v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_5

    .line 470
    const/4 v14, 0x3

    aget-object v14, v12, v14

    iput-object v14, v13, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->tartgetClassName:Ljava/lang/String;

    .line 472
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mPaymentApps:Ljava/util/ArrayList;

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 451
    .end local v13    # "tmp":Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 407
    .end local v2    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "config":Ljava/lang/String;
    .end local v5    # "filter":Landroid/content/IntentFilter;
    .end local v6    # "i":I
    .end local v12    # "split":[Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 408
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 460
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3    # "config":Ljava/lang/String;
    .restart local v5    # "filter":Landroid/content/IntentFilter;
    .restart local v6    # "i":I
    .restart local v12    # "split":[Ljava/lang/String;
    .restart local v13    # "tmp":Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;
    :cond_7
    const/4 v14, 0x1

    aget-object v14, v12, v14

    const-string/jumbo v15, "://"

    invoke-virtual {v14, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 461
    const/4 v14, 0x1

    aget-object v14, v12, v14

    iput-object v14, v13, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->urlScheme:Ljava/lang/String;

    goto :goto_2

    .line 463
    :cond_8
    const/4 v14, 0x1

    aget-object v14, v12, v14

    iput-object v14, v13, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->className:Ljava/lang/String;

    .line 464
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v15, v13, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v13, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->className:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->tartgetClassName:Ljava/lang/String;

    goto :goto_2

    .line 476
    .end local v3    # "config":Ljava/lang/String;
    .end local v12    # "split":[Ljava/lang/String;
    .end local v13    # "tmp":Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;
    :cond_9
    new-instance v14, Lcom/oneplus/config/ConfigObserver;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    move-object/from16 v16, v0

    .line 477
    new-instance v17, Lcom/android/server/policy/OemPhoneWindowManager$QuickPayConfigUpdater;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/policy/OemPhoneWindowManager$QuickPayConfigUpdater;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;)V

    sget-object v18, Lcom/android/server/policy/OemPhoneWindowManager;->QUICKPAY_APPS_CONFIG_NAME:Ljava/lang/String;

    .line 476
    invoke-direct/range {v14 .. v18}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayConfigObserver:Lcom/oneplus/config/ConfigObserver;

    .line 478
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayConfigObserver:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {v14}, Lcom/oneplus/config/ConfigObserver;->register()V

    .line 479
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureHandler:Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;

    const/16 v15, 0xa

    invoke-virtual {v14, v15}, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;->sendEmptyMessage(I)Z

    .line 482
    .end local v2    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "i":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 483
    const v15, 0x11200b6

    .line 482
    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mIsPerfBoostEnabled:Z

    .line 484
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 485
    const v15, 0x11200b9

    .line 484
    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mIsperfDisablepackingEnable:Z

    .line 487
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mIsPerfBoostEnabled:Z

    if-eqz v14, :cond_b

    .line 488
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 489
    const v15, 0x10e00aa

    .line 488
    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/policy/OemPhoneWindowManager;->lBoostTimeOut:I

    .line 490
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 491
    const v15, 0x107004b

    .line 490
    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/policy/OemPhoneWindowManager;->lBoostCpuParamVal:[I

    .line 493
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mIsperfDisablepackingEnable:Z

    if-eqz v14, :cond_c

    .line 494
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 495
    const v15, 0x10e00ad

    .line 494
    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/policy/OemPhoneWindowManager;->lDisPackTimeOut:I

    .line 496
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 497
    const v15, 0x107004f

    .line 496
    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/policy/OemPhoneWindowManager;->lBoostPackParamVal:[I

    .line 379
    :cond_c
    return-void
.end method

.method public interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J
    .locals 32
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .prologue
    .line 847
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v9

    .line 848
    .local v9, "flags":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v14

    .line 849
    .local v14, "keyCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v17

    .line 850
    .local v17, "metaState":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v19

    .line 851
    .local v19, "repeatCount":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getSource()I

    move-result v20

    .line 852
    .local v20, "source":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/OemPhoneWindowManager;->keyguardOn()Z

    move-result v15

    .line 853
    .local v15, "keyguardOn":Z
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v27

    if-nez v27, :cond_5

    const/4 v7, 0x1

    .line 854
    .local v7, "down":Z
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v27

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_6

    const/16 v25, 0x1

    .line 855
    .local v25, "up":Z
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v6

    .line 856
    .local v6, "canceled":Z
    and-int/lit16 v0, v9, 0x80

    move/from16 v27, v0

    if-eqz v27, :cond_7

    const/16 v16, 0x1

    .line 858
    .local v16, "longPress":Z
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v27

    and-int/lit8 v27, v27, 0x40

    if-eqz v27, :cond_8

    const/4 v13, 0x1

    .line 859
    .local v13, "isFromNavbar":Z
    :goto_3
    const/high16 v27, 0x20000000

    and-int v27, v27, p3

    if-eqz v27, :cond_9

    const/4 v12, 0x1

    .line 860
    .local v12, "interactive":Z
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v27

    const/16 v28, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_a

    const/16 v26, 0x1

    .line 861
    .local v26, "virtualKey":Z
    :goto_5
    const/16 v27, 0x4

    move/from16 v0, v27

    if-ne v14, v0, :cond_b

    const/4 v5, 0x1

    .line 862
    .local v5, "backKeyCode":Z
    :goto_6
    const/16 v27, 0x3

    move/from16 v0, v27

    if-ne v14, v0, :cond_c

    const/4 v10, 0x1

    .line 863
    .local v10, "homeKeyCode":Z
    :goto_7
    const/16 v27, 0xbb

    move/from16 v0, v27

    if-ne v14, v0, :cond_d

    const/16 v21, 0x1

    .line 864
    .local v21, "switchKeyCode":Z
    :goto_8
    const/16 v27, 0x1a

    move/from16 v0, v27

    if-ne v14, v0, :cond_e

    const/16 v18, 0x1

    .line 866
    .local v18, "powerKeyCode":Z
    :goto_9
    if-eqz p1, :cond_f

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 867
    .local v4, "attrs":Landroid/view/WindowManager$LayoutParams;
    :goto_a
    if-eqz v4, :cond_10

    iget v0, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v23, v0

    .line 869
    .local v23, "type":I
    :goto_b
    sget-boolean v27, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v27, :cond_0

    .line 870
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

    .line 874
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

    .line 875
    invoke-static {}, Lcom/android/server/policy/OemPhoneWindowManager;->-getcom-android-server-policy-OemPhoneWindowManager$KeyLockModeSwitchesValues()[I

    move-result-object v27

    sget-object v28, Lcom/android/server/policy/OemPhoneWindowManager;->mKeyLockMode:Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;

    invoke-virtual/range {v28 .. v28}, Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;->ordinal()I

    move-result v28

    aget v27, v27, v28

    packed-switch v27, :pswitch_data_0

    .line 896
    :cond_1
    if-eqz v21, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/OemPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v27

    if-eqz v27, :cond_13

    .line 902
    :cond_2
    const/16 v27, 0x4

    move/from16 v0, v27

    if-ne v14, v0, :cond_3

    .line 903
    if-nez v7, :cond_14

    .line 904
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackLongPress:Ljava/lang/Runnable;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 919
    :cond_3
    :goto_c
    if-eqz v13, :cond_15

    .line 920
    sget-boolean v27, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v27, :cond_4

    .line 921
    const-string/jumbo v27, "OemPhoneWindowManager"

    const-string/jumbo v28, " ++++++++++ interceptKeyBeforeDispatching(): event is from navigation bar, KeyEvent.FLAG_VIRTUAL_HARD_KEY flag present. Calling super method."

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    :cond_4
    invoke-super/range {p0 .. p3}, Lcom/android/server/policy/PhoneWindowManager;->interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J

    move-result-wide v28

    return-wide v28

    .line 853
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
    :cond_5
    const/4 v7, 0x0

    .restart local v7    # "down":Z
    goto/16 :goto_0

    .line 854
    :cond_6
    const/16 v25, 0x0

    .restart local v25    # "up":Z
    goto/16 :goto_1

    .line 856
    .restart local v6    # "canceled":Z
    :cond_7
    const/16 v16, 0x0

    .restart local v16    # "longPress":Z
    goto/16 :goto_2

    .line 858
    :cond_8
    const/4 v13, 0x0

    .restart local v13    # "isFromNavbar":Z
    goto/16 :goto_3

    .line 859
    :cond_9
    const/4 v12, 0x0

    .restart local v12    # "interactive":Z
    goto/16 :goto_4

    .line 860
    :cond_a
    const/16 v26, 0x0

    .restart local v26    # "virtualKey":Z
    goto/16 :goto_5

    .line 861
    :cond_b
    const/4 v5, 0x0

    .restart local v5    # "backKeyCode":Z
    goto/16 :goto_6

    .line 862
    :cond_c
    const/4 v10, 0x0

    .restart local v10    # "homeKeyCode":Z
    goto/16 :goto_7

    .line 863
    :cond_d
    const/16 v21, 0x0

    .restart local v21    # "switchKeyCode":Z
    goto/16 :goto_8

    .line 864
    :cond_e
    const/16 v18, 0x0

    .restart local v18    # "powerKeyCode":Z
    goto/16 :goto_9

    .line 866
    :cond_f
    const/4 v4, 0x0

    goto/16 :goto_a

    .line 867
    .restart local v4    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_10
    const/16 v23, 0x0

    .restart local v23    # "type":I
    goto/16 :goto_b

    .line 882
    :pswitch_0
    if-nez v10, :cond_11

    if-nez v5, :cond_11

    if-nez v21, :cond_11

    if-eqz v18, :cond_1

    .line 883
    :cond_11
    sget-boolean v27, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v27, :cond_12

    .line 884
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

    .line 886
    :cond_12
    const-wide/16 v28, 0x0

    return-wide v28

    .line 897
    :cond_13
    const-wide/16 v28, -0x1

    return-wide v28

    .line 905
    :cond_14
    if-eqz v7, :cond_3

    if-nez v19, :cond_3

    .line 907
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Landroid/app/IActivityManager;->isInLockTaskMode()Z

    move-result v27

    if-eqz v27, :cond_3

    .line 908
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

    .line 909
    const-wide/16 v28, -0x1

    return-wide v28

    .line 911
    :catch_0
    move-exception v8

    .line 912
    .local v8, "e":Landroid/os/RemoteException;
    invoke-virtual {v8}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_c

    .line 926
    .end local v8    # "e":Landroid/os/RemoteException;
    :cond_15
    if-eqz v10, :cond_24

    .line 927
    if-eqz v7, :cond_1e

    .line 928
    if-eqz v4, :cond_1b

    .line 929
    const/16 v27, 0x7ed

    move/from16 v0, v23

    move/from16 v1, v27

    if-eq v0, v1, :cond_16

    .line 930
    const/16 v27, 0x7d9

    move/from16 v0, v23

    move/from16 v1, v27

    if-ne v0, v1, :cond_18

    .line 933
    :cond_16
    sget-boolean v27, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v27, :cond_17

    .line 934
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

    .line 936
    :cond_17
    const-wide/16 v28, 0x0

    return-wide v28

    .line 931
    :cond_18
    iget v0, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    move/from16 v27, v0

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0x400

    move/from16 v27, v0

    if-nez v27, :cond_16

    .line 938
    sget-object v27, Lcom/android/server/policy/OemPhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v24, v0

    .line 939
    .local v24, "typeCount":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_d
    move/from16 v0, v24

    if-ge v11, v0, :cond_1b

    .line 940
    sget-object v27, Lcom/android/server/policy/OemPhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    aget v27, v27, v11

    move/from16 v0, v23

    move/from16 v1, v27

    if-ne v0, v1, :cond_1a

    .line 942
    sget-boolean v27, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v27, :cond_19

    .line 943
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

    .line 945
    :cond_19
    const-wide/16 v28, -0x1

    return-wide v28

    .line 939
    :cond_1a
    add-int/lit8 v11, v11, 0x1

    goto :goto_d

    .line 950
    .end local v11    # "i":I
    .end local v24    # "typeCount":I
    :cond_1b
    if-nez v19, :cond_1d

    .line 951
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyPressed:Z

    .line 952
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyConsumed:Z

    .line 953
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyDoubleTapPending:Z

    move/from16 v27, v0

    if-eqz v27, :cond_1c

    .line 954
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyDoubleTapPending:Z

    .line 955
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 956
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyConsumed:Z

    .line 957
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/OemPhoneWindowManager;->performKeyAction(ILandroid/view/KeyEvent;)V

    .line 1007
    :cond_1c
    :goto_e
    const-wide/16 v28, -0x1

    return-wide v28

    .line 959
    :cond_1d
    if-eqz v16, :cond_1c

    .line 960
    if-nez v15, :cond_1c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyConsumed:Z

    move/from16 v27, v0

    if-nez v27, :cond_1c

    .line 961
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnHomeBehavior:I

    move/from16 v27, v0

    if-eqz v27, :cond_1c

    .line 962
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyPressed:Z

    .line 963
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyConsumed:Z

    .line 964
    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/policy/OemPhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 965
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnHomeBehavior:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/OemPhoneWindowManager;->performKeyAction(ILandroid/view/KeyEvent;)V

    goto :goto_e

    .line 969
    :cond_1e
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyPressed:Z

    .line 970
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyConsumed:Z

    move/from16 v27, v0

    if-eqz v27, :cond_1f

    .line 971
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyConsumed:Z

    .line 972
    const-wide/16 v28, -0x1

    return-wide v28

    .line 975
    :cond_1f
    if-eqz v6, :cond_21

    .line 976
    sget-boolean v27, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG:Z

    if-eqz v27, :cond_20

    .line 977
    const-string/jumbo v27, "OemPhoneWindowManager"

    const-string/jumbo v28, "Ignoring HOME; event canceled."

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    :cond_20
    const-wide/16 v28, -0x1

    return-wide v28

    .line 986
    :cond_21
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/OemPhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v22

    .line 987
    .local v22, "telecomManager":Landroid/telecom/TelecomManager;
    if-eqz v22, :cond_22

    invoke-virtual/range {v22 .. v22}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v27

    if-eqz v27, :cond_22

    .line 988
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/OemPhoneWindowManager;->hasInComingCall()Z

    move-result v27

    if-eqz v27, :cond_22

    .line 989
    const-string/jumbo v27, "OemPhoneWindowManager"

    const-string/jumbo v28, "Ignoring HOME; there\'s a ringing incoming call."

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    const-wide/16 v28, -0x1

    return-wide v28

    .line 996
    :cond_22
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    move/from16 v27, v0

    if-eqz v27, :cond_23

    .line 997
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 998
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyDoubleTapPending:Z

    .line 999
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    move-object/from16 v28, v0

    .line 1000
    const-wide/16 v30, 0xc8

    .line 999
    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-wide/from16 v2, v30

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1001
    const-wide/16 v28, -0x1

    return-wide v28

    .line 1004
    :cond_23
    const/16 v27, 0xc

    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/OemPhoneWindowManager;->performKeyAction(ILandroid/view/KeyEvent;)V

    .line 1005
    const-wide/16 v28, -0x1

    return-wide v28

    .line 1008
    .end local v22    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_24
    if-eqz v5, :cond_2f

    .line 1009
    if-eqz v26, :cond_26

    .line 1010
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyConsumed:Z

    move/from16 v27, v0

    if-eqz v27, :cond_25

    .line 1011
    const-wide/16 v28, -0x1

    return-wide v28

    .line 1014
    :cond_25
    const-wide/16 v28, 0x0

    return-wide v28

    .line 1020
    :cond_26
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnBackBehavior:I

    move/from16 v27, v0

    if-nez v27, :cond_27

    .line 1021
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnBackBehavior:I

    move/from16 v27, v0

    if-nez v27, :cond_27

    .line 1022
    const-wide/16 v28, 0x0

    return-wide v28

    .line 1026
    :cond_27
    if-eqz v7, :cond_2a

    .line 1027
    if-nez v19, :cond_29

    .line 1028
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyPressed:Z

    .line 1029
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyDoubleTapPending:Z

    move/from16 v27, v0

    if-eqz v27, :cond_28

    .line 1030
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyDoubleTapPending:Z

    .line 1031
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1032
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyConsumed:Z

    .line 1033
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnBackBehavior:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/OemPhoneWindowManager;->performKeyAction(ILandroid/view/KeyEvent;)V

    .line 1070
    :cond_28
    :goto_f
    const-wide/16 v28, -0x1

    return-wide v28

    .line 1035
    :cond_29
    if-eqz v16, :cond_28

    .line 1036
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyConsumed:Z

    move/from16 v27, v0

    if-nez v27, :cond_28

    .line 1037
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnBackBehavior:I

    move/from16 v27, v0

    if-eqz v27, :cond_28

    .line 1038
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyPressed:Z

    .line 1039
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyConsumed:Z

    .line 1040
    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/policy/OemPhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 1041
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnBackBehavior:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/OemPhoneWindowManager;->performKeyAction(ILandroid/view/KeyEvent;)V

    goto :goto_f

    .line 1045
    :cond_2a
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyPressed:Z

    .line 1046
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyConsumed:Z

    move/from16 v27, v0

    if-eqz v27, :cond_2b

    .line 1047
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyConsumed:Z

    .line 1048
    const-wide/16 v28, -0x1

    return-wide v28

    .line 1051
    :cond_2b
    if-eqz v6, :cond_2d

    .line 1052
    sget-boolean v27, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG:Z

    if-eqz v27, :cond_2c

    .line 1053
    const-string/jumbo v27, "OemPhoneWindowManager"

    const-string/jumbo v28, "Ignoring BACK; event canceled."

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    :cond_2c
    const-wide/16 v28, -0x1

    return-wide v28

    .line 1059
    :cond_2d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnBackBehavior:I

    move/from16 v27, v0

    if-eqz v27, :cond_2e

    .line 1060
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1061
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyDoubleTapPending:Z

    .line 1062
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    move-object/from16 v28, v0

    .line 1063
    const-wide/16 v30, 0xc8

    .line 1062
    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-wide/from16 v2, v30

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1064
    const-wide/16 v28, -0x1

    return-wide v28

    .line 1067
    :cond_2e
    const/16 v27, 0xd

    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/OemPhoneWindowManager;->performKeyAction(ILandroid/view/KeyEvent;)V

    .line 1068
    const-wide/16 v28, -0x1

    return-wide v28

    .line 1071
    :cond_2f
    if-eqz v21, :cond_3c

    .line 1072
    if-eqz v4, :cond_33

    .line 1073
    const/16 v27, 0x7ed

    move/from16 v0, v23

    move/from16 v1, v27

    if-eq v0, v1, :cond_30

    .line 1074
    const/16 v27, 0x7d9

    move/from16 v0, v23

    move/from16 v1, v27

    if-ne v0, v1, :cond_32

    .line 1077
    :cond_30
    sget-boolean v27, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v27, :cond_31

    .line 1078
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

    .line 1080
    :cond_31
    const-wide/16 v28, -0x1

    return-wide v28

    .line 1075
    :cond_32
    iget v0, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    move/from16 v27, v0

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0x400

    move/from16 v27, v0

    if-nez v27, :cond_30

    .line 1085
    :cond_33
    if-eqz v7, :cond_36

    .line 1086
    if-nez v19, :cond_35

    .line 1087
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyPressed:Z

    .line 1088
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyConsumed:Z

    .line 1089
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyDoubleTapPending:Z

    move/from16 v27, v0

    if-eqz v27, :cond_34

    .line 1090
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyDoubleTapPending:Z

    .line 1091
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1092
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyConsumed:Z

    .line 1093
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnAppSwitchBehavior:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/OemPhoneWindowManager;->performKeyAction(ILandroid/view/KeyEvent;)V

    .line 1139
    :cond_34
    :goto_10
    const-wide/16 v28, -0x1

    return-wide v28

    .line 1095
    :cond_35
    if-eqz v16, :cond_34

    .line 1096
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyConsumed:Z

    move/from16 v27, v0

    if-nez v27, :cond_34

    .line 1097
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnAppSwitchBehavior:I

    move/from16 v27, v0

    if-eqz v27, :cond_34

    .line 1098
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyPressed:Z

    .line 1099
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyConsumed:Z

    .line 1100
    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/policy/OemPhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 1101
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnAppSwitchBehavior:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/OemPhoneWindowManager;->performKeyAction(ILandroid/view/KeyEvent;)V

    goto :goto_10

    .line 1105
    :cond_36
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyPressed:Z

    .line 1106
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyConsumed:Z

    move/from16 v27, v0

    if-eqz v27, :cond_37

    .line 1107
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyConsumed:Z

    .line 1108
    const-wide/16 v28, -0x1

    return-wide v28

    .line 1111
    :cond_37
    if-eqz v6, :cond_39

    .line 1112
    sget-boolean v27, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG:Z

    if-eqz v27, :cond_38

    .line 1113
    const-string/jumbo v27, "OemPhoneWindowManager"

    const-string/jumbo v28, "Ignoring APP_SWITCH; event canceled."

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    :cond_38
    const-wide/16 v28, -0x1

    return-wide v28

    .line 1119
    :cond_39
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnAppSwitchBehavior:I

    move/from16 v27, v0

    if-eqz v27, :cond_3a

    .line 1120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1121
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyDoubleTapPending:Z

    .line 1122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    move-object/from16 v28, v0

    .line 1123
    const-wide/16 v30, 0xc8

    .line 1122
    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-wide/from16 v2, v30

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1124
    const-wide/16 v28, -0x1

    return-wide v28

    .line 1129
    :cond_3a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mDisplayRotation:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/server/policy/OemPhoneWindowManager;->isLandscapeOrSeascape(I)Z

    move-result v27

    if-eqz v27, :cond_3b

    .line 1130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/view/WindowManagerInternal;->isAnimating()Z

    move-result v27

    .line 1129
    if-eqz v27, :cond_3b

    .line 1131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    move-object/from16 v27, v0

    const/16 v28, 0x3

    invoke-virtual/range {v27 .. v28}, Landroid/view/WindowManagerInternal;->isStackVisible(I)Z

    move-result v27

    .line 1129
    if-eqz v27, :cond_3b

    .line 1132
    const-string/jumbo v27, "OemPhoneWindowManager"

    const-string/jumbo v28, "Drop APP_SWITCH key due to animation is on-going"

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    :goto_11
    const-wide/16 v28, -0x1

    return-wide v28

    .line 1134
    :cond_3b
    const/16 v27, 0x2

    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/OemPhoneWindowManager;->performKeyAction(ILandroid/view/KeyEvent;)V

    goto :goto_11

    .line 1142
    :cond_3c
    invoke-super/range {p0 .. p3}, Lcom/android/server/policy/PhoneWindowManager;->interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J

    move-result-wide v28

    return-wide v28

    .line 875
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
    .line 613
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v7

    .line 614
    .local v7, "flags":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v13

    .line 615
    .local v13, "keyCode":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getSource()I

    move-result v18

    .line 616
    .local v18, "source":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v17

    .line 617
    .local v17, "repeatCount":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/OemPhoneWindowManager;->keyguardOn()Z

    move-result v14

    .line 618
    .local v14, "keyguardOn":Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v22

    if-nez v22, :cond_1

    const/4 v6, 0x1

    .line 619
    .local v6, "down":Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_2

    const/16 v20, 0x1

    .line 620
    .local v20, "up":Z
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v5

    .line 622
    .local v5, "canceled":Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v22

    and-int/lit8 v22, v22, 0x40

    if-eqz v22, :cond_3

    const/4 v12, 0x1

    .line 623
    .local v12, "isFromNavbar":Z
    :goto_2
    const/high16 v22, 0x20000000

    and-int v22, v22, p2

    if-eqz v22, :cond_4

    const/4 v11, 0x1

    .line 624
    .local v11, "interactive":Z
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v22

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_5

    const/16 v21, 0x1

    .line 625
    .local v21, "virtualKey":Z
    :goto_4
    const/16 v22, 0x4

    move/from16 v0, v22

    if-ne v13, v0, :cond_6

    const/4 v4, 0x1

    .line 626
    .local v4, "backKeyCode":Z
    :goto_5
    const/16 v22, 0x3

    move/from16 v0, v22

    if-ne v13, v0, :cond_7

    const/4 v9, 0x1

    .line 627
    .local v9, "homeKeyCode":Z
    :goto_6
    const/16 v22, 0xbb

    move/from16 v0, v22

    if-ne v13, v0, :cond_8

    const/16 v19, 0x1

    .line 628
    .local v19, "switchKeyCode":Z
    :goto_7
    const/16 v22, 0x1a

    move/from16 v0, v22

    if-ne v13, v0, :cond_9

    const/16 v16, 0x1

    .line 629
    .local v16, "powerKeyCode":Z
    :goto_8
    const/16 v22, 0x86

    move/from16 v0, v22

    if-ne v13, v0, :cond_a

    const/4 v8, 0x1

    .line 630
    .local v8, "gestureKeyCode":Z
    :goto_9
    const/high16 v22, 0x10000000

    and-int v22, v22, v18

    if-eqz v22, :cond_b

    const/4 v15, 0x1

    .line 632
    .local v15, "oemSource":Z
    :goto_a
    sget-boolean v22, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v22, :cond_0

    .line 633
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

    .line 640
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mSystemBooted:Z

    move/from16 v22, v0

    if-nez v22, :cond_c

    .line 642
    const/16 v22, 0x0

    return v22

    .line 618
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

    .line 619
    :cond_2
    const/16 v20, 0x0

    .restart local v20    # "up":Z
    goto/16 :goto_1

    .line 622
    .restart local v5    # "canceled":Z
    :cond_3
    const/4 v12, 0x0

    .restart local v12    # "isFromNavbar":Z
    goto/16 :goto_2

    .line 623
    :cond_4
    const/4 v11, 0x0

    .restart local v11    # "interactive":Z
    goto :goto_3

    .line 624
    :cond_5
    const/16 v21, 0x0

    .restart local v21    # "virtualKey":Z
    goto :goto_4

    .line 625
    :cond_6
    const/4 v4, 0x0

    .restart local v4    # "backKeyCode":Z
    goto :goto_5

    .line 626
    :cond_7
    const/4 v9, 0x0

    .restart local v9    # "homeKeyCode":Z
    goto :goto_6

    .line 627
    :cond_8
    const/16 v19, 0x0

    .restart local v19    # "switchKeyCode":Z
    goto :goto_7

    .line 628
    :cond_9
    const/16 v16, 0x0

    .restart local v16    # "powerKeyCode":Z
    goto :goto_8

    .line 629
    :cond_a
    const/4 v8, 0x0

    .restart local v8    # "gestureKeyCode":Z
    goto :goto_9

    .line 630
    :cond_b
    const/4 v15, 0x0

    .restart local v15    # "oemSource":Z
    goto :goto_a

    .line 650
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

    .line 651
    invoke-static {}, Lcom/android/server/policy/OemPhoneWindowManager;->-getcom-android-server-policy-OemPhoneWindowManager$KeyLockModeSwitchesValues()[I

    move-result-object v22

    sget-object v23, Lcom/android/server/policy/OemPhoneWindowManager;->mKeyLockMode:Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;->ordinal()I

    move-result v23

    aget v22, v22, v23

    packed-switch v22, :pswitch_data_0

    .line 693
    :cond_d
    :goto_b
    sget-boolean v22, Lcom/android/server/policy/OemPhoneWindowManager;->mFingerprintEnrolling:Z

    if-eqz v22, :cond_15

    .line 694
    if-nez v12, :cond_15

    if-nez v9, :cond_e

    if-nez v4, :cond_e

    if-eqz v19, :cond_15

    .line 695
    :cond_e
    const/16 v22, 0x0

    return v22

    .line 653
    :pswitch_0
    sget-boolean v22, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v22, :cond_d

    .line 654
    const-string/jumbo v22, "OemPhoneWindowManager"

    const-string/jumbo v23, " ++++++++++ interceptKeyBeforeQueueing(): dispatching event due to NORMAL key lock mode."

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 660
    :pswitch_1
    sget-boolean v22, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v22, :cond_f

    .line 661
    const-string/jumbo v22, "OemPhoneWindowManager"

    const-string/jumbo v23, " ++++++++++ interceptKeyBeforeQueueing(): return 1 due to POWER/POWER_HOME key lock mode."

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    :cond_f
    const/16 v22, 0x1

    return v22

    .line 665
    :pswitch_2
    if-nez v12, :cond_d

    if-eqz v9, :cond_d

    .line 666
    sget-boolean v22, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v22, :cond_10

    .line 667
    const-string/jumbo v22, "OemPhoneWindowManager"

    const-string/jumbo v23, " ++++++++++ interceptKeyBeforeQueueing(): cancelling event due to HOME key lock mode."

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    :cond_10
    const/16 v22, 0x0

    return v22

    .line 673
    :pswitch_3
    if-nez v12, :cond_d

    if-nez v4, :cond_11

    if-nez v9, :cond_11

    if-eqz v19, :cond_d

    .line 674
    :cond_11
    sget-boolean v22, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v22, :cond_12

    .line 675
    const-string/jumbo v22, "OemPhoneWindowManager"

    const-string/jumbo v23, " ++++++++++ interceptKeyBeforeQueueing(): cancelling event due to FOOT key lock mode."

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    :cond_12
    const/16 v22, 0x0

    return v22

    .line 681
    :pswitch_4
    if-nez v12, :cond_d

    .line 682
    if-nez v4, :cond_13

    if-nez v19, :cond_13

    sget-boolean v22, Lcom/android/server/policy/OemPhoneWindowManager;->mForceHomeEnabled:Z

    if-nez v22, :cond_d

    .line 681
    if-eqz v9, :cond_d

    .line 683
    :cond_13
    sget-boolean v22, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v22, :cond_14

    .line 684
    const-string/jumbo v22, "OemPhoneWindowManager"

    const-string/jumbo v23, " ++++++++++ interceptKeyBeforeQueueing(): cancelling event due to BACK_SWITCH key lock mode."

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    :cond_14
    const/16 v22, 0x0

    return v22

    .line 701
    :cond_15
    sparse-switch v13, :sswitch_data_0

    .line 776
    :cond_16
    :goto_c
    if-nez v12, :cond_17

    if-eqz v6, :cond_20

    .line 795
    :cond_17
    if-nez v12, :cond_18

    .line 796
    and-int/lit8 p2, p2, -0x3

    .line 812
    :cond_18
    if-nez v11, :cond_24

    .line 813
    if-nez v12, :cond_26

    if-nez v9, :cond_19

    if-nez v4, :cond_19

    if-eqz v19, :cond_26

    .line 814
    :cond_19
    sget-boolean v22, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v22, :cond_1a

    .line 815
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

    .line 817
    :cond_1a
    const/16 v22, 0x0

    return v22

    .line 703
    :sswitch_0
    const/16 v22, 0x18

    move/from16 v0, v22

    if-ne v13, v0, :cond_16

    .line 704
    if-eqz v6, :cond_16

    .line 705
    if-eqz v11, :cond_1b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mScreenshotChordVolumeUpKeyTriggered:Z

    move/from16 v22, v0

    if-eqz v22, :cond_1c

    .line 710
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

    .line 711
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/policy/OemPhoneWindowManager;->mVolumeUpKeyTime:J

    .line 712
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mVolumeUpKeyConsumedByScreenshotChord:Z

    .line 713
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/OemPhoneWindowManager;->recordErrorLog()V

    goto :goto_c

    .line 706
    :cond_1c
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v22

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0x400

    move/from16 v22, v0

    if-nez v22, :cond_1b

    .line 707
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mScreenshotChordVolumeUpKeyTriggered:Z

    goto :goto_d

    .line 724
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

    .line 725
    if-nez v11, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mDeviceKeyHandler:Lcom/android/server/policy/DeviceKeyHandler;

    move-object/from16 v22, v0

    if-eqz v22, :cond_16

    .line 726
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mDeviceKeyHandler:Lcom/android/server/policy/DeviceKeyHandler;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/policy/DeviceKeyHandler;->handleKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v22

    if-eqz v22, :cond_16

    .line 727
    sget-boolean v22, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v22, :cond_1d

    .line 728
    const-string/jumbo v22, "OemPhoneWindowManager"

    .line 729
    const-string/jumbo v23, " ++++++++++ interceptKeyBeforeQueueing(): event is a gesture, handled by DeviceKeyHandler."

    .line 728
    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    :cond_1d
    const/16 v22, 0x0

    return v22

    .line 743
    :sswitch_2
    sget-boolean v22, Lcom/android/server/policy/OemPhoneWindowManager;->IS_QUICK_PAY_ENABLED:Z

    if-eqz v22, :cond_16

    .line 744
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayEnabled:Z

    move/from16 v22, v0

    if-eqz v22, :cond_1e

    if-eqz v6, :cond_1e

    .line 745
    const/16 v22, 0xb

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/OemPhoneWindowManager;->performKeyAction(ILandroid/view/KeyEvent;)V

    .line 747
    :cond_1e
    const/16 v22, 0x0

    return v22

    .line 753
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

    .line 754
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

    .line 755
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/policy/OemPhoneWindowManager;->clearQuickPaySwitch(Z)V

    goto/16 :goto_c

    .line 760
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

    .line 761
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

    .line 762
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

    .line 764
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

    .line 765
    const/16 v22, 0x1

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/server/policy/OemPhoneWindowManager;->launchHomeFromHotKey(ZZ)V

    .line 767
    :cond_1f
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/policy/OemPhoneWindowManager;->clearQuickPaySwitch(Z)V

    goto/16 :goto_c

    .line 777
    :cond_20
    if-eqz v4, :cond_22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyConsumed:Z

    move/from16 v22, v0

    if-eqz v22, :cond_22

    .line 778
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyConsumed:Z

    .line 779
    sget-boolean v22, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v22, :cond_21

    .line 780
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

    .line 783
    :cond_21
    const/16 v22, 0x0

    return v22

    .line 785
    :cond_22
    if-eqz v19, :cond_17

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyConsumed:Z

    move/from16 v22, v0

    if-eqz v22, :cond_17

    .line 786
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyConsumed:Z

    .line 787
    sget-boolean v22, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v22, :cond_23

    .line 788
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

    .line 791
    :cond_23
    const/16 v22, 0x0

    return v22

    .line 820
    :cond_24
    if-nez v12, :cond_26

    if-nez v9, :cond_25

    if-nez v4, :cond_25

    if-eqz v19, :cond_26

    :cond_25
    if-eqz v20, :cond_29

    .line 828
    :cond_26
    :goto_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mNeedToNotifyStkUserActivity:Z

    move/from16 v22, v0

    if-eqz v22, :cond_28

    .line 830
    const/16 v22, 0x18

    move/from16 v0, v22

    if-eq v13, v0, :cond_27

    const/16 v22, 0x19

    move/from16 v0, v22

    if-ne v13, v0, :cond_2a

    .line 833
    :cond_27
    :goto_f
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mNeedToNotifyStkUserActivity:Z

    .line 836
    new-instance v10, Landroid/content/Intent;

    const-string/jumbo v22, "com.oneplus.intent.action.stk.user_activity"

    move-object/from16 v0, v22

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 837
    .local v10, "intent":Landroid/content/Intent;
    const/high16 v22, 0x10000000

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 838
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 842
    .end local v10    # "intent":Landroid/content/Intent;
    :cond_28
    invoke-super/range {p0 .. p2}, Lcom/android/server/policy/PhoneWindowManager;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I

    move-result v22

    return v22

    .line 821
    :cond_29
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v22

    if-nez v22, :cond_26

    if-nez v15, :cond_26

    .line 822
    const/16 v22, 0x0

    const/16 v23, 0x1

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/policy/OemPhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    goto :goto_e

    .line 830
    :cond_2a
    if-nez v4, :cond_27

    if-nez v9, :cond_27

    if-nez v19, :cond_27

    if-eqz v16, :cond_28

    goto :goto_f

    .line 651
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 701
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

    .line 2122
    invoke-direct {p0, p1}, Lcom/android/server/policy/OemPhoneWindowManager;->isPackageAvailable(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    const-string/jumbo v10, ""

    if-ne p2, v10, :cond_1

    .line 2123
    :cond_0
    return v9

    .line 2126
    :cond_1
    :try_start_0
    iget-object v10, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 2127
    const/4 v11, 0x0

    .line 2126
    invoke-virtual {v10, p1, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8

    .line 2128
    .local v8, "packageInfo":Landroid/content/pm/PackageInfo;
    const-string/jumbo v7, ""

    .line 2129
    .local v7, "nowVersionName":Ljava/lang/String;
    if-eqz v8, :cond_6

    .line 2130
    iget-object v7, v8, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 2131
    const-string/jumbo v10, "\\."

    invoke-virtual {v7, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 2132
    .local v6, "nowVersion":[Ljava/lang/String;
    const-string/jumbo v10, "\\."

    invoke-virtual {p2, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2133
    .local v0, "configVersion":[Ljava/lang/String;
    array-length v10, v6

    array-length v11, v0

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 2134
    .local v3, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_6

    .line 2135
    array-length v10, v6

    if-ge v2, v10, :cond_2

    .line 2136
    aget-object v10, v6, v2

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 2137
    .local v5, "nowV":I
    :goto_1
    array-length v10, v0

    if-ge v2, v10, :cond_3

    .line 2138
    aget-object v10, v0, v2

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 2139
    .local v4, "newV":I
    :goto_2
    if-ge v5, v4, :cond_4

    .line 2140
    const/4 v9, 0x1

    return v9

    .line 2136
    .end local v4    # "newV":I
    .end local v5    # "nowV":I
    :cond_2
    const/4 v5, 0x0

    .restart local v5    # "nowV":I
    goto :goto_1

    :cond_3
    move v4, v9

    .line 2138
    goto :goto_2

    .line 2141
    .restart local v4    # "newV":I
    :cond_4
    if-le v5, v4, :cond_5

    .line 2142
    return v9

    .line 2134
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2146
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

    .line 2148
    :cond_6
    return v9
.end method

.method public notifyAppLaunchFailedLw(Ljava/lang/String;)V
    .locals 6
    .param p1, "appName"    # Ljava/lang/String;

    .prologue
    .line 2036
    iget v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayWhich:I

    .line 2037
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

    .line 2038
    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPaymentApps:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;

    iget-object v1, v3, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->packageName:Ljava/lang/String;

    .line 2039
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

    .line 2040
    if-eqz p1, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2041
    :cond_0
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/server/policy/OemPhoneWindowManager;->clearQuickPaySwitch(Z)V

    .line 2042
    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 2043
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_1

    .line 2044
    const v3, 0x10008000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2045
    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    new-instance v4, Lcom/android/server/policy/OemPhoneWindowManager$9;

    invoke-direct {v4, p0, v1, v0}, Lcom/android/server/policy/OemPhoneWindowManager$9;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;Ljava/lang/String;Landroid/content/Intent;)V

    invoke-virtual {v3, v4}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->post(Ljava/lang/Runnable;)Z

    .line 2035
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "pkg":Ljava/lang/String;
    :cond_1
    return-void

    .line 2040
    .restart local v1    # "pkg":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public notifyLidSwitchChanged(JZ)V
    .locals 5
    .param p1, "whenNanos"    # J
    .param p3, "lidOpen"    # Z

    .prologue
    .line 2323
    iget-boolean v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mSystemReady:Z

    if-eqz v1, :cond_0

    .line 2324
    const-string/jumbo v1, "OemPhoneWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifyLidSwitchChanged :mLidState= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2325
    iput-boolean p3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLidState:Z

    .line 2326
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.LID_SWITCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2327
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "lidOpen"

    if-eqz p3, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2328
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2330
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/policy/PhoneWindowManager;->notifyLidSwitchChanged(JZ)V

    .line 2322
    return-void

    .line 2327
    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setInputManager(Lcom/android/server/input/InputManagerService;)V
    .locals 0
    .param p1, "inputManagerService"    # Lcom/android/server/input/InputManagerService;

    .prologue
    .line 2318
    return-void
.end method

.method public systemReady()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 504
    invoke-super {p0}, Lcom/android/server/policy/PhoneWindowManager;->systemReady()V

    .line 505
    iget-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDeviceKeyHandler:Lcom/android/server/policy/DeviceKeyHandler;

    if-eqz v2, :cond_0

    .line 506
    iget-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDeviceKeyHandler:Lcom/android/server/policy/DeviceKeyHandler;

    invoke-virtual {v2}, Lcom/android/server/policy/DeviceKeyHandler;->systemReady()V

    .line 511
    :cond_0
    iget-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 512
    const-string/jumbo v3, "oem_acc_fingerprint_enrolling"

    .line 511
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 518
    new-array v2, v0, [I

    const/16 v3, 0xb

    aput v3, v2, v1

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 519
    iget-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 520
    const-string/jumbo v3, "buttons_show_on_screen_navkeys"

    .line 519
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_2

    .line 522
    .local v0, "showNavBar":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 523
    const-string/jumbo v1, "OemPhoneWindowManager"

    const-string/jumbo v2, "Restore the key lock mode to BACK_SWITCH because navigation bar is enabled."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 526
    const-string/jumbo v2, "oem_acc_key_lock_mode"

    sget-object v3, Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;->BACK_SWITCH:Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;

    invoke-virtual {v3}, Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;->ordinal()I

    move-result v3

    .line 525
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 503
    .end local v0    # "showNavBar":Z
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 519
    goto :goto_0
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

    .line 2092
    const-string/jumbo v5, "value"

    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 2093
    .local v4, "whiteAppListJsonArray":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v1, v5, :cond_5

    .line 2094
    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2095
    .local v0, "config":Ljava/lang/String;
    const-string/jumbo v5, ";"

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2096
    .local v2, "split":[Ljava/lang/String;
    array-length v5, v2

    if-lt v5, v10, :cond_2

    iget-object v5, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPaymentApps:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v5, v10, :cond_2

    .line 2097
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

    .line 2098
    new-instance v3, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;

    invoke-direct {v3, p0}, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;)V

    .line 2099
    .local v3, "tmp":Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;
    const/4 v5, 0x0

    aget-object v5, v2, v5

    iput-object v5, v3, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->packageName:Ljava/lang/String;

    .line 2100
    aget-object v5, v2, v8

    const-string/jumbo v6, "sdk"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2101
    iput-boolean v8, v3, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->isSDKstart:Z

    .line 2108
    :goto_1
    const-string/jumbo v5, "default"

    const/4 v6, 0x2

    aget-object v6, v2, v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2109
    iput-boolean v8, v3, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->isDefault:Z

    .line 2111
    :cond_0
    const-string/jumbo v5, "class"

    aget-object v6, v2, v9

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2112
    aget-object v5, v2, v9

    iput-object v5, v3, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->tartgetClassName:Ljava/lang/String;

    .line 2114
    :cond_1
    iget-object v5, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPaymentApps:Ljava/util/ArrayList;

    invoke-virtual {v5, p1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2115
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

    .line 2093
    .end local v3    # "tmp":Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 2102
    .restart local v3    # "tmp":Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;
    :cond_3
    aget-object v5, v2, v8

    const-string/jumbo v6, "://"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2103
    aget-object v5, v2, v8

    iput-object v5, v3, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->urlScheme:Ljava/lang/String;

    goto :goto_1

    .line 2105
    :cond_4
    aget-object v5, v2, v8

    iput-object v5, v3, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->className:Ljava/lang/String;

    .line 2106
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

    .line 2091
    .end local v0    # "config":Ljava/lang/String;
    .end local v2    # "split":[Ljava/lang/String;
    .end local v3    # "tmp":Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;
    :cond_5
    return-void
.end method
