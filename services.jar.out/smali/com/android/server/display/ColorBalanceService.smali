.class public final Lcom/android/server/display/ColorBalanceService;
.super Lcom/android/server/SystemService;
.source "ColorBalanceService.java"

# interfaces
.implements Lcom/android/internal/app/NightDisplayController$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/ColorBalanceService$1;,
        Lcom/android/server/display/ColorBalanceService$2;,
        Lcom/android/server/display/ColorBalanceService$AutoMode;,
        Lcom/android/server/display/ColorBalanceService$BinderService;,
        Lcom/android/server/display/ColorBalanceService$CMH;,
        Lcom/android/server/display/ColorBalanceService$ColorMatrixEvaluator;,
        Lcom/android/server/display/ColorBalanceService$CustomAutoMode;,
        Lcom/android/server/display/ColorBalanceService$ModeInfoWrapper;,
        Lcom/android/server/display/ColorBalanceService$TwilightAutoMode;
    }
.end annotation


# static fields
.field private static final AUTO_ADJUSTMENT_SHADING_TIME:I = 0x0

.field private static final COLOR_DELTA:I = 0x5a

.field private static final COLOR_MATRIX_EVALUATOR:Lcom/android/server/display/ColorBalanceService$ColorMatrixEvaluator;

.field private static final COLOR_MATRIX_FACTOR_DELTA:F = 0.0125f

.field private static final COLOR_MATRIX_FACTOR_DELTA_SHADING_DELAY:I = 0xf

.field private static final DEBUG:Z = false

.field private static final DEFAULT_COLORBALANCE:I = 0x2b

.field private static final IS_QCOM_SAVE_MODE_USED:Z = false

.field private static final MATRIX_IDENTITY:[F

.field private static final MODE_CREATE_ING:I = 0x1

.field private static final MODE_CREATE_NONE:I = 0x0

.field private static final MODE_NIGHT:I = 0x1

.field private static final MODE_NIGHT_OFF:I = 0x3

.field private static final MODE_NULL:I = 0x0

.field private static final MODE_READING:I = 0x2

.field private static final MODE_READING_OFF:I = 0x4

.field private static final MODE_READING_OFF_AUTO:I = 0x5

.field private static final MSG_ACTIVE_MODE:I = 0x5

.field private static final MSG_CHECK_LIGHT:I = 0x10

.field private static final MSG_CHECK_SRGBSEN:I = 0xf

.field private static final MSG_DEFAULT_MODE:I = 0x6

.field private static final MSG_NIGHT2READING:I = 0xd

.field private static final MSG_NIGHT_ENVIRONMENT_CHANGED:I = 0x8

.field private static final MSG_NIGHT_SWITCH:I = 0xa

.field private static final MSG_READING2NIGHT:I = 0xe

.field private static final MSG_READING_ENVIRONMENT_CHANGED:I = 0x9

.field private static final MSG_READING_SWITCH:I = 0xb

.field private static final MSG_REVERT_STATUS:I = 0xc

.field private static final MSG_SAVE_MODE:I = 0x4

.field private static final MSG_SCREEN_AFTER_ON:I = 0x7

.field private static final MSG_SCREEN_OFF:I = 0x2

.field private static final MSG_SCREEN_ON:I = 0x1

.field private static final MSG_SET_COLORBALANCE:I = 0x3

.field private static final NIGHT_MODE_SEEKBAR_DEFAULT:I = 0x67

.field private static final NIGHT_MODE_SEEKBAR_MAX:I = 0x84

.field private static final NIGHT_STAGE_CLOSED:I = 0x4

.field private static final NIGHT_STAGE_CLOSING:I = 0x3

.field private static final NIGHT_STAGE_OPENED:I = 0x2

.field private static final NIGHT_STAGE_OPENING:I = 0x1

.field private static final OP_SYS_DCIP3_PROPERTY:Ljava/lang/String; = "sys.dci3p"

.field private static final OP_SYS_NIGHT_MODE:Ljava/lang/String; = "sys.night_mode"

.field private static final OP_SYS_SRGB_PROPERTY:Ljava/lang/String; = "sys.srgb"

.field private static final READING_INIT_COLOR:I = -0x14

.field private static final READING_STAGE_CLOSED:I = 0x8

.field private static final READING_STAGE_CLOSING:I = 0x7

.field private static final READING_STAGE_OPENED:I = 0x6

.field private static final READING_STAGE_OPENING:I = 0x5

.field private static final SENSOR_TYPE_RGB:I = 0x1fa264c

.field private static final STAGE_NULL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ColorBalanceService"

.field private static final TYPICAL_PROXIMITY_THRESHOLD:F = 5.0f

.field private static config_colorbalance_reading_mode:[I

.field private static config_colorbalance_reading_mode_SRGB_and_P3:[I


# instance fields
.field colortemprature:[I

.field config_autocolortemp:[I

.field config_autoseekbar:[I

.field config_colorbalance:[[I

.field private dtm:Lcom/android/server/display/DisplayTransformManager;

.field private mAutoMode:Lcom/android/server/display/ColorBalanceService$AutoMode;

.field private mAverageColor:I

.field private mBootCompleted:Z

.field private mBootPhase:I

.field private final mCMHHandler:Lcom/android/server/display/ColorBalanceService$CMH;

.field private mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

.field private mColorBalanceThread:Landroid/os/HandlerThread;

.field private mColorMatrix:[F

.field private mColorMatrixAnimator:Landroid/animation/ValueAnimator;

.field private mContext:Landroid/content/Context;

.field private mController:Lcom/android/internal/app/NightDisplayController;

.field private mCreateModeState:I

.field private mCurrentColorBalance:I

.field private mCurrentNightColorbalance:I

.field private mCurrentReadingColorbalance:I

.field private mCurrentSrgbSensorAverageColor:I

.field private mCurrentUser:I

.field private mFactor:F

.field private mGeneration:I

.field private final mHandler:Landroid/os/Handler;

.field private final mIgnoreAllColorMatrixChanges:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mIsColorManagerConnected:Ljava/lang/Boolean;

.field private mIsDisableByApp:Ljava/lang/Boolean;

.field private mIsNightModeActivated:Ljava/lang/Boolean;

.field private mIsNightModeSettingFromeUser:Ljava/lang/Boolean;

.field private mIsReadingModeActivated:Ljava/lang/Boolean;

.field private mIsReadingModeActivatedAuto:Ljava/lang/Boolean;

.field private mIsReadingModeSettingFromeUser:Ljava/lang/Boolean;

.field private mIsReadingOrNightModeOpendLastSesson:Ljava/lang/Boolean;

.field private mIsScreenOn:Ljava/lang/Boolean;

.field private mIsTimeActivated:Ljava/lang/Boolean;

.field private mLightBrightness:I

.field private mLightGeneration:I

.field private mLightSensorListener:Landroid/hardware/SensorEventListener;

.field private final mLock:Ljava/lang/Object;

.field private mLowLightCount:I

.field private mMode:I

.field private mModeEnable:I

.field private mModeId:I

.field private mModeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/display/ColorBalanceService$ModeInfoWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private mModeStage:I

.field private mNight2ReadingModeStage:I

.field private mNightDisplayMoede:I

.field private mNightModeAutoStatus:I

.field private mNightModeClosingStage:I

.field private mNightModeOpingStage:I

.field private mNightModeStatus:Ljava/lang/Boolean;

.field private mOemExSvc:Lcom/oem/os/IOemExService;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPreColorTemp:I

.field private mPretNightColorbalance:I

.field private mReading2NightModeStage:I

.field private mReadingModeClosingStage:I

.field private mReadingModeOpingStage:I

.field private mReadingModeStatus:Ljava/lang/Boolean;

.field private mSDM:Landroid/hardware/display/SDManager;

.field private mSRGBSensorEnabled:Z

.field private mSRGBSensorListener:Landroid/hardware/SensorEventListener;

.field private mSensorColortemperature:I

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSrgbSensorGeneration:I

.field private mStableColor:I

.field private mStableCount:I

.field private mStartSetCount:I

.field private mStopSetCount:I

.field private mUserSetupObserver:Landroid/database/ContentObserver;


# direct methods
.method static synthetic -get0(Lcom/android/server/display/ColorBalanceService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/ColorBalanceService;->mBootCompleted:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/display/ColorBalanceService;)Lcom/qti/snapdragon/sdk/display/ColorManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/server/display/ColorBalanceService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/ColorBalanceService;->mLightBrightness:I

    return v0
.end method

.method static synthetic -get11(Lcom/android/server/display/ColorBalanceService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/ColorBalanceService;->mLightGeneration:I

    return v0
.end method

.method static synthetic -get12(Lcom/android/server/display/ColorBalanceService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/server/display/ColorBalanceService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/ColorBalanceService;->mLowLightCount:I

    return v0
.end method

.method static synthetic -get14(Lcom/android/server/display/ColorBalanceService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/ColorBalanceService;->mMode:I

    return v0
.end method

.method static synthetic -get15(Lcom/android/server/display/ColorBalanceService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/ColorBalanceService;->mModeStage:I

    return v0
.end method

.method static synthetic -get16(Lcom/android/server/display/ColorBalanceService;)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mNightModeStatus:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic -get17(Lcom/android/server/display/ColorBalanceService;)Landroid/hardware/display/SDManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mSDM:Landroid/hardware/display/SDManager;

    return-object v0
.end method

.method static synthetic -get18(Lcom/android/server/display/ColorBalanceService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/ColorBalanceService;->mSRGBSensorEnabled:Z

    return v0
.end method

.method static synthetic -get19(Lcom/android/server/display/ColorBalanceService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/ColorBalanceService;->mSensorColortemperature:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/display/ColorBalanceService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get20(Lcom/android/server/display/ColorBalanceService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/ColorBalanceService;->mSrgbSensorGeneration:I

    return v0
.end method

.method static synthetic -get21(Lcom/android/server/display/ColorBalanceService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/ColorBalanceService;->mStableColor:I

    return v0
.end method

.method static synthetic -get22(Lcom/android/server/display/ColorBalanceService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/ColorBalanceService;->mStartSetCount:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/server/display/ColorBalanceService;)Lcom/android/internal/app/NightDisplayController;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mController:Lcom/android/internal/app/NightDisplayController;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/display/ColorBalanceService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentSrgbSensorAverageColor:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/server/display/ColorBalanceService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentUser:I

    return v0
.end method

.method static synthetic -get6(Lcom/android/server/display/ColorBalanceService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/display/ColorBalanceService;)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/display/ColorBalanceService;)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/display/ColorBalanceService;)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mIsReadingModeActivatedAuto:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/display/ColorBalanceService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentSrgbSensorAverageColor:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/display/ColorBalanceService;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic -set10(Lcom/android/server/display/ColorBalanceService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/display/ColorBalanceService;->mNightModeAutoStatus:I

    return p1
.end method

.method static synthetic -set11(Lcom/android/server/display/ColorBalanceService;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/ColorBalanceService;->mNightModeStatus:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic -set12(Lcom/android/server/display/ColorBalanceService;Landroid/hardware/display/SDManager;)Landroid/hardware/display/SDManager;
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/ColorBalanceService;->mSDM:Landroid/hardware/display/SDManager;

    return-object p1
.end method

.method static synthetic -set13(Lcom/android/server/display/ColorBalanceService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/display/ColorBalanceService;->mSensorColortemperature:I

    return p1
.end method

.method static synthetic -set14(Lcom/android/server/display/ColorBalanceService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/display/ColorBalanceService;->mStableColor:I

    return p1
.end method

.method static synthetic -set15(Lcom/android/server/display/ColorBalanceService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/display/ColorBalanceService;->mStartSetCount:I

    return p1
.end method

.method static synthetic -set16(Lcom/android/server/display/ColorBalanceService;Landroid/database/ContentObserver;)Landroid/database/ContentObserver;
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/ColorBalanceService;->mUserSetupObserver:Landroid/database/ContentObserver;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/server/display/ColorBalanceService;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/ColorBalanceService;->mIsNightModeSettingFromeUser:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/server/display/ColorBalanceService;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/ColorBalanceService;->mIsReadingOrNightModeOpendLastSesson:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic -set4(Lcom/android/server/display/ColorBalanceService;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/ColorBalanceService;->mIsScreenOn:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic -set5(Lcom/android/server/display/ColorBalanceService;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/ColorBalanceService;->mIsTimeActivated:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic -set6(Lcom/android/server/display/ColorBalanceService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/display/ColorBalanceService;->mLightBrightness:I

    return p1
.end method

.method static synthetic -set7(Lcom/android/server/display/ColorBalanceService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/display/ColorBalanceService;->mLightGeneration:I

    return p1
.end method

.method static synthetic -set8(Lcom/android/server/display/ColorBalanceService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/display/ColorBalanceService;->mLowLightCount:I

    return p1
.end method

.method static synthetic -set9(Lcom/android/server/display/ColorBalanceService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/display/ColorBalanceService;->mMode:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/display/ColorBalanceService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/display/ColorBalanceService;->checkColorManageEnable()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Landroid/content/ContentResolver;I)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "userHandle"    # I

    .prologue
    invoke-static {p0, p1}, Lcom/android/server/display/ColorBalanceService;->isUserSetupCompleted(Landroid/content/ContentResolver;I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/server/display/ColorBalanceService;Z)V
    .locals 0
    .param p1, "on"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/display/ColorBalanceService;->processScreenOn(Z)V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/server/display/ColorBalanceService;I)V
    .locals 0
    .param p1, "setColorBalance"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/display/ColorBalanceService;->processSetColorBalance(I)V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/server/display/ColorBalanceService;ZII)V
    .locals 0
    .param p1, "isActivite"    # Z
    .param p2, "generation"    # I
    .param p3, "arg2"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/ColorBalanceService;->readingModeSwitch(ZII)V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/server/display/ColorBalanceService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/ColorBalanceService;->revertStatus()V

    return-void
.end method

.method static synthetic -wrap14(Lcom/android/server/display/ColorBalanceService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/ColorBalanceService;->saveColorModeInternal()V

    return-void
.end method

.method static synthetic -wrap15(Lcom/android/server/display/ColorBalanceService;I)V
    .locals 0
    .param p1, "v"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/display/ColorBalanceService;->sendMsgInternal(I)V

    return-void
.end method

.method static synthetic -wrap16(Lcom/android/server/display/ColorBalanceService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/ColorBalanceService;->setUp()V

    return-void
.end method

.method static synthetic -wrap17(Lcom/android/server/display/ColorBalanceService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/ColorBalanceService;->setupApplication()V

    return-void
.end method

.method static synthetic -wrap18(Lcom/android/server/display/ColorBalanceService;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "on"    # Ljava/lang/Boolean;
    .param p2, "isIgnore"    # Ljava/lang/Boolean;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/ColorBalanceService;->triggerNightModeButton(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/display/ColorBalanceService;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p1, "type"    # Ljava/lang/Class;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/display/ColorBalanceService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Lcom/android/server/display/ColorBalanceService;II)V
    .locals 0
    .param p1, "generation"    # I
    .param p2, "arg2"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/ColorBalanceService;->changeNight2ReadingMode(II)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/display/ColorBalanceService;II)V
    .locals 0
    .param p1, "generation"    # I
    .param p2, "arg2"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/ColorBalanceService;->changeReading2NightMode(II)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/display/ColorBalanceService;I)V
    .locals 0
    .param p1, "colortemperature"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/display/ColorBalanceService;->handleSRGBSensorEvent(I)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/display/ColorBalanceService;ZI)V
    .locals 0
    .param p1, "isActivite"    # Z
    .param p2, "generation"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/ColorBalanceService;->nightModeSwitch(ZI)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/display/ColorBalanceService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/ColorBalanceService;->processEnvironmentChange()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/display/ColorBalanceService;Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/display/ColorBalanceService;->processEnvironmentColorChangeAtNightMode(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/display/ColorBalanceService;Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/display/ColorBalanceService;->processEnvironmentColorChangeAtReadingMode(Landroid/os/Message;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x6

    .line 199
    const/16 v0, 0x10

    new-array v0, v0, [F

    sput-object v0, Lcom/android/server/display/ColorBalanceService;->MATRIX_IDENTITY:[F

    .line 201
    sget-object v0, Lcom/android/server/display/ColorBalanceService;->MATRIX_IDENTITY:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 204
    new-instance v0, Lcom/android/server/display/ColorBalanceService$ColorMatrixEvaluator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/display/ColorBalanceService$ColorMatrixEvaluator;-><init>(Lcom/android/server/display/ColorBalanceService$ColorMatrixEvaluator;)V

    sput-object v0, Lcom/android/server/display/ColorBalanceService;->COLOR_MATRIX_EVALUATOR:Lcom/android/server/display/ColorBalanceService$ColorMatrixEvaluator;

    .line 250
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/display/ColorBalanceService;->config_colorbalance_reading_mode:[I

    .line 251
    new-array v0, v2, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/server/display/ColorBalanceService;->config_colorbalance_reading_mode_SRGB_and_P3:[I

    .line 76
    return-void

    .line 250
    :array_0
    .array-data 4
        0x23
        0x2a
        0x3a
        0x47
        0x4b
        0x4e
    .end array-data

    .line 251
    :array_1
    .array-data 4
        0x36
        0x3d
        0x4e
        0x59
        0x5d
        0x62
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v2, 0x36

    const/4 v6, 0x1

    const/4 v5, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x6

    .line 260
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 124
    iput v3, p0, Lcom/android/server/display/ColorBalanceService;->mLightGeneration:I

    .line 125
    iput v3, p0, Lcom/android/server/display/ColorBalanceService;->mStableCount:I

    .line 126
    iput v3, p0, Lcom/android/server/display/ColorBalanceService;->mPreColorTemp:I

    .line 127
    iput v3, p0, Lcom/android/server/display/ColorBalanceService;->mStableColor:I

    .line 128
    iput v3, p0, Lcom/android/server/display/ColorBalanceService;->mAverageColor:I

    .line 129
    iput v3, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentNightColorbalance:I

    .line 130
    iput v3, p0, Lcom/android/server/display/ColorBalanceService;->mPretNightColorbalance:I

    .line 131
    iput v3, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    .line 132
    iput v3, p0, Lcom/android/server/display/ColorBalanceService;->mGeneration:I

    .line 133
    iput v3, p0, Lcom/android/server/display/ColorBalanceService;->mSrgbSensorGeneration:I

    .line 134
    const/16 v1, 0x2e

    iput v1, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentColorBalance:I

    .line 135
    iput v3, p0, Lcom/android/server/display/ColorBalanceService;->mStartSetCount:I

    .line 136
    iput v3, p0, Lcom/android/server/display/ColorBalanceService;->mStopSetCount:I

    .line 137
    iput v3, p0, Lcom/android/server/display/ColorBalanceService;->mModeStage:I

    .line 138
    iput v3, p0, Lcom/android/server/display/ColorBalanceService;->mMode:I

    .line 139
    iput v3, p0, Lcom/android/server/display/ColorBalanceService;->mModeEnable:I

    .line 140
    iput v3, p0, Lcom/android/server/display/ColorBalanceService;->mCreateModeState:I

    .line 141
    iput v3, p0, Lcom/android/server/display/ColorBalanceService;->mLightBrightness:I

    .line 142
    iput v3, p0, Lcom/android/server/display/ColorBalanceService;->mLowLightCount:I

    .line 144
    iput v3, p0, Lcom/android/server/display/ColorBalanceService;->mNightModeOpingStage:I

    .line 145
    iput v3, p0, Lcom/android/server/display/ColorBalanceService;->mNightModeClosingStage:I

    .line 146
    iput v3, p0, Lcom/android/server/display/ColorBalanceService;->mReadingModeOpingStage:I

    .line 147
    iput v3, p0, Lcom/android/server/display/ColorBalanceService;->mReadingModeClosingStage:I

    .line 148
    iput v3, p0, Lcom/android/server/display/ColorBalanceService;->mReading2NightModeStage:I

    .line 149
    iput v3, p0, Lcom/android/server/display/ColorBalanceService;->mNight2ReadingModeStage:I

    .line 150
    iput v3, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentSrgbSensorAverageColor:I

    .line 153
    const/16 v1, -0x2710

    iput v1, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentUser:I

    .line 158
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    .line 159
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/ColorBalanceService;->mIsReadingModeActivatedAuto:Ljava/lang/Boolean;

    .line 160
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/ColorBalanceService;->mIsScreenOn:Ljava/lang/Boolean;

    .line 161
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/ColorBalanceService;->mIsTimeActivated:Ljava/lang/Boolean;

    .line 162
    iput v3, p0, Lcom/android/server/display/ColorBalanceService;->mNightModeAutoStatus:I

    .line 163
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/ColorBalanceService;->mIsDisableByApp:Ljava/lang/Boolean;

    .line 164
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/ColorBalanceService;->mNightModeStatus:Ljava/lang/Boolean;

    .line 165
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/ColorBalanceService;->mReadingModeStatus:Ljava/lang/Boolean;

    .line 166
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/ColorBalanceService;->mIsNightModeSettingFromeUser:Ljava/lang/Boolean;

    .line 169
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/ColorBalanceService;->mIsReadingModeSettingFromeUser:Ljava/lang/Boolean;

    .line 171
    iput v3, p0, Lcom/android/server/display/ColorBalanceService;->mNightDisplayMoede:I

    .line 173
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/ColorBalanceService;->mIsColorManagerConnected:Ljava/lang/Boolean;

    .line 177
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/display/ColorBalanceService;->mModeId:I

    .line 187
    const/16 v1, 0x10

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/server/display/ColorBalanceService;->mColorMatrix:[F

    .line 195
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/server/display/ColorBalanceService;->mFactor:F

    .line 203
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v1, p0, Lcom/android/server/display/ColorBalanceService;->mIgnoreAllColorMatrixChanges:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 207
    const/16 v1, 0x84

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    iput-object v1, p0, Lcom/android/server/display/ColorBalanceService;->colortemprature:[I

    .line 222
    new-array v1, v2, [I

    fill-array-data v1, :array_2

    iput-object v1, p0, Lcom/android/server/display/ColorBalanceService;->config_autocolortemp:[I

    .line 230
    new-array v1, v2, [I

    fill-array-data v1, :array_3

    iput-object v1, p0, Lcom/android/server/display/ColorBalanceService;->config_autoseekbar:[I

    .line 237
    new-array v1, v2, [[I

    .line 238
    new-array v2, v5, [I

    fill-array-data v2, :array_4

    aput-object v2, v1, v3

    new-array v2, v5, [I

    fill-array-data v2, :array_5

    aput-object v2, v1, v6

    new-array v2, v5, [I

    fill-array-data v2, :array_6

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-array v2, v4, [I

    fill-array-data v2, :array_7

    const/4 v3, 0x3

    aput-object v2, v1, v3

    new-array v2, v4, [I

    fill-array-data v2, :array_8

    const/4 v3, 0x4

    aput-object v2, v1, v3

    new-array v2, v4, [I

    fill-array-data v2, :array_9

    const/4 v3, 0x5

    aput-object v2, v1, v3

    .line 239
    new-array v2, v4, [I

    fill-array-data v2, :array_a

    aput-object v2, v1, v4

    new-array v2, v4, [I

    fill-array-data v2, :array_b

    aput-object v2, v1, v5

    new-array v2, v4, [I

    fill-array-data v2, :array_c

    const/16 v3, 0x8

    aput-object v2, v1, v3

    new-array v2, v4, [I

    fill-array-data v2, :array_d

    const/16 v3, 0x9

    aput-object v2, v1, v3

    new-array v2, v4, [I

    fill-array-data v2, :array_e

    const/16 v3, 0xa

    aput-object v2, v1, v3

    .line 240
    new-array v2, v4, [I

    fill-array-data v2, :array_f

    const/16 v3, 0xb

    aput-object v2, v1, v3

    new-array v2, v4, [I

    fill-array-data v2, :array_10

    const/16 v3, 0xc

    aput-object v2, v1, v3

    new-array v2, v4, [I

    fill-array-data v2, :array_11

    const/16 v3, 0xd

    aput-object v2, v1, v3

    new-array v2, v4, [I

    fill-array-data v2, :array_12

    const/16 v3, 0xe

    aput-object v2, v1, v3

    new-array v2, v4, [I

    fill-array-data v2, :array_13

    const/16 v3, 0xf

    aput-object v2, v1, v3

    .line 241
    new-array v2, v4, [I

    fill-array-data v2, :array_14

    const/16 v3, 0x10

    aput-object v2, v1, v3

    new-array v2, v4, [I

    fill-array-data v2, :array_15

    const/16 v3, 0x11

    aput-object v2, v1, v3

    new-array v2, v4, [I

    fill-array-data v2, :array_16

    const/16 v3, 0x12

    aput-object v2, v1, v3

    new-array v2, v4, [I

    fill-array-data v2, :array_17

    const/16 v3, 0x13

    aput-object v2, v1, v3

    new-array v2, v4, [I

    fill-array-data v2, :array_18

    const/16 v3, 0x14

    aput-object v2, v1, v3

    .line 242
    new-array v2, v4, [I

    fill-array-data v2, :array_19

    const/16 v3, 0x15

    aput-object v2, v1, v3

    new-array v2, v4, [I

    fill-array-data v2, :array_1a

    const/16 v3, 0x16

    aput-object v2, v1, v3

    new-array v2, v4, [I

    fill-array-data v2, :array_1b

    const/16 v3, 0x17

    aput-object v2, v1, v3

    new-array v2, v4, [I

    fill-array-data v2, :array_1c

    const/16 v3, 0x18

    aput-object v2, v1, v3

    new-array v2, v4, [I

    fill-array-data v2, :array_1d

    const/16 v3, 0x19

    aput-object v2, v1, v3

    .line 243
    new-array v2, v4, [I

    fill-array-data v2, :array_1e

    const/16 v3, 0x1a

    aput-object v2, v1, v3

    new-array v2, v4, [I

    fill-array-data v2, :array_1f

    const/16 v3, 0x1b

    aput-object v2, v1, v3

    new-array v2, v4, [I

    fill-array-data v2, :array_20

    const/16 v3, 0x1c

    aput-object v2, v1, v3

    new-array v2, v4, [I

    fill-array-data v2, :array_21

    const/16 v3, 0x1d

    aput-object v2, v1, v3

    .line 244
    new-array v2, v4, [I

    fill-array-data v2, :array_22

    const/16 v3, 0x1e

    aput-object v2, v1, v3

    new-array v2, v4, [I

    fill-array-data v2, :array_23

    const/16 v3, 0x1f

    aput-object v2, v1, v3

    new-array v2, v4, [I

    fill-array-data v2, :array_24

    const/16 v3, 0x20

    aput-object v2, v1, v3

    new-array v2, v4, [I

    fill-array-data v2, :array_25

    const/16 v3, 0x21

    aput-object v2, v1, v3

    new-array v2, v4, [I

    fill-array-data v2, :array_26

    const/16 v3, 0x22

    aput-object v2, v1, v3

    .line 245
    new-array v2, v4, [I

    fill-array-data v2, :array_27

    const/16 v3, 0x23

    aput-object v2, v1, v3

    new-array v2, v4, [I

    fill-array-data v2, :array_28

    const/16 v3, 0x24

    aput-object v2, v1, v3

    new-array v2, v4, [I

    fill-array-data v2, :array_29

    const/16 v3, 0x25

    aput-object v2, v1, v3

    new-array v2, v4, [I

    fill-array-data v2, :array_2a

    const/16 v3, 0x26

    aput-object v2, v1, v3

    .line 246
    new-array v2, v4, [I

    fill-array-data v2, :array_2b

    const/16 v3, 0x27

    aput-object v2, v1, v3

    new-array v2, v4, [I

    fill-array-data v2, :array_2c

    const/16 v3, 0x28

    aput-object v2, v1, v3

    new-array v2, v4, [I

    fill-array-data v2, :array_2d

    const/16 v3, 0x29

    aput-object v2, v1, v3

    new-array v2, v4, [I

    fill-array-data v2, :array_2e

    const/16 v3, 0x2a

    aput-object v2, v1, v3

    new-array v2, v4, [I

    fill-array-data v2, :array_2f

    const/16 v3, 0x2b

    aput-object v2, v1, v3

    .line 247
    new-array v2, v4, [I

    fill-array-data v2, :array_30

    const/16 v3, 0x2c

    aput-object v2, v1, v3

    new-array v2, v4, [I

    fill-array-data v2, :array_31

    const/16 v3, 0x2d

    aput-object v2, v1, v3

    new-array v2, v4, [I

    fill-array-data v2, :array_32

    const/16 v3, 0x2e

    aput-object v2, v1, v3

    new-array v2, v4, [I

    fill-array-data v2, :array_33

    const/16 v3, 0x2f

    aput-object v2, v1, v3

    new-array v2, v4, [I

    fill-array-data v2, :array_34

    const/16 v3, 0x30

    aput-object v2, v1, v3

    .line 248
    new-array v2, v4, [I

    fill-array-data v2, :array_35

    const/16 v3, 0x31

    aput-object v2, v1, v3

    new-array v2, v4, [I

    fill-array-data v2, :array_36

    const/16 v3, 0x32

    aput-object v2, v1, v3

    new-array v2, v4, [I

    fill-array-data v2, :array_37

    const/16 v3, 0x33

    aput-object v2, v1, v3

    new-array v2, v4, [I

    fill-array-data v2, :array_38

    const/16 v3, 0x34

    aput-object v2, v1, v3

    new-array v2, v4, [I

    fill-array-data v2, :array_39

    const/16 v3, 0x35

    aput-object v2, v1, v3

    .line 237
    iput-object v1, p0, Lcom/android/server/display/ColorBalanceService;->config_colorbalance:[[I

    .line 256
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/display/ColorBalanceService;->mSensorManager:Landroid/hardware/SensorManager;

    .line 1519
    new-instance v1, Lcom/android/server/display/ColorBalanceService$1;

    invoke-direct {v1, p0}, Lcom/android/server/display/ColorBalanceService$1;-><init>(Lcom/android/server/display/ColorBalanceService;)V

    iput-object v1, p0, Lcom/android/server/display/ColorBalanceService;->mSRGBSensorListener:Landroid/hardware/SensorEventListener;

    .line 1542
    new-instance v1, Lcom/android/server/display/ColorBalanceService$2;

    invoke-direct {v1, p0}, Lcom/android/server/display/ColorBalanceService$2;-><init>(Lcom/android/server/display/ColorBalanceService;)V

    iput-object v1, p0, Lcom/android/server/display/ColorBalanceService;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    .line 261
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/display/ColorBalanceService;->mLock:Ljava/lang/Object;

    .line 262
    iput-object p1, p0, Lcom/android/server/display/ColorBalanceService;->mContext:Landroid/content/Context;

    .line 263
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/display/ColorBalanceService;->mHandler:Landroid/os/Handler;

    .line 264
    new-instance v1, Landroid/os/HandlerThread;

    const-string/jumbo v2, "ColorBalanceThread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/display/ColorBalanceService;->mColorBalanceThread:Landroid/os/HandlerThread;

    .line 265
    iget-object v1, p0, Lcom/android/server/display/ColorBalanceService;->mColorBalanceThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 266
    new-instance v1, Lcom/android/server/display/ColorBalanceService$CMH;

    iget-object v2, p0, Lcom/android/server/display/ColorBalanceService;->mColorBalanceThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/display/ColorBalanceService$CMH;-><init>(Lcom/android/server/display/ColorBalanceService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/display/ColorBalanceService$CMH;

    .line 267
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 271
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 272
    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 273
    iget-object v1, p0, Lcom/android/server/display/ColorBalanceService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/display/ColorBalanceService$3;

    invoke-direct {v2, p0}, Lcom/android/server/display/ColorBalanceService$3;-><init>(Lcom/android/server/display/ColorBalanceService;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 259
    return-void

    .line 187
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f410625    # 0.754f
        0x0
        0x0
        0x0
        0x0
        0x3f041893    # 0.516f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 207
    :array_1
    .array-data 4
        0xba3
        0xba5
        0xc20
        0xc20
        0xc64
        0xc64
        0xc63
        0xce1
        0xce0
        0xd4e
        0xd4f
        0xd4d
        0xdd0
        0xdcd
        0xe39
        0xe39
        0xe38
        0xece
        0xecd
        0xf14
        0xf17
        0xf16
        0xfa8
        0xfa9
        0xfd4
        0xfd4
        0xfd4
        0x104d
        0x104d
        0x10af
        0x10af
        0x10af
        0x1111
        0x1110
        0x116d
        0x116c
        0x116c
        0x11c9
        0x11c9
        0x121d
        0x121c
        0x121b
        0x1260
        0x1261
        0x12ba
        0x12ba
        0x12b8
        0x1327
        0x1325
        0x136f
        0x1370
        0x1370
        0x13d7
        0x13d7
        0x1437
        0x1437
        0x1437
        0x149c
        0x149d
        0x14eb
        0x14ea
        0x14e9
        0x1528
        0x1528
        0x15b2
        0x15b2
        0x15b3
        0x15fd
        0x15fd
        0x1657
        0x1656
        0x1656
        0x168c
        0x168b
        0x16ef
        0x16f0
        0x175d
        0x175d
        0x17a9
        0x17a9
        0x17a8
        0x17d1
        0x17c4
        0x1811
        0x1810
        0x1810
        0x1845
        0x1846
        0x18ab
        0x18ab
        0x18aa
        0x18da
        0x18da
        0x192a
        0x1929
        0x1928
        0x196a
        0x1969
        0x19a3
        0x19a3
        0x19a2
        0x19f9
        0x19fa
        0x1a51
        0x1a52
        0x1a51
        0x1aa8
        0x1aa8
        0x1ad6
        0x1ad4
        0x1ad4
        0x1b3f
        0x1b40
        0x1b5e
        0x1b5f
        0x1b5e
        0x1ba0
        0x1ba0
        0x1bc2
        0x1bbf
        0x1bc0
        0x1c00
        0x1c00
        0x1c32
        0x1c2f
        0x1c2e
        0x1c81
        0x1c81
        0x1ce3
        0x1ce6
        0x1ce3
        0x1d08
    .end array-data

    .line 222
    :array_2
    .array-data 4
        0xba3
        0xc20
        0xc64
        0xce0
        0xd4f
        0xdd0
        0xe39
        0xece
        0xf17
        0xfa8
        0xfd4
        0x104d
        0x10af
        0x1111
        0x116d
        0x11c9
        0x121c
        0x1260
        0x12ba
        0x1327
        0x136f
        0x13d7
        0x1437
        0x149c
        0x14eb
        0x1528
        0x15b2
        0x15fd
        0x1657
        0x168c
        0x16ef
        0x175d
        0x17a9
        0x17d1
        0x1811
        0x1845
        0x18ab
        0x18da
        0x192a
        0x196a
        0x19a3
        0x19f9
        0x1a51
        0x1aa8
        0x1ad6
        0x1b3f
        0x1b5e
        0x1ba0
        0x1bc2
        0x1c00
        0x1c32
        0x1c81
        0x1ce6
        0x1d08
    .end array-data

    .line 230
    :array_3
    .array-data 4
        0x1
        0x3
        0x5
        0x8
        0xa
        0xd
        0x10
        0x12
        0x15
        0x17
        0x19
        0x1c
        0x1e
        0x21
        0x23
        0x26
        0x28
        0x2b
        0x2d
        0x30
        0x32
        0x35
        0x37
        0x3a
        0x3c
        0x3f
        0x41
        0x44
        0x46
        0x49
        0x4b
        0x4e
        0x50
        0x53
        0x55
        0x58
        0x5a
        0x5d
        0x5f
        0x62
        0x64
        0x67
        0x69
        0x6c
        0x6e
        0x71
        0x73
        0x76
        0x78
        0x7b
        0x7d
        0x80
        0x82
        0x84
    .end array-data

    .line 238
    :array_4
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x3
        0xa
        0xd
    .end array-data

    :array_5
    .array-data 4
        0x1
        0x3
        0x3
        0x3
        0x8
        0xd
        0x10
    .end array-data

    :array_6
    .array-data 4
        0x1
        0x3
        0x5
        0x5
        0xa
        0xd
        0x10
    .end array-data

    :array_7
    .array-data 4
        0x3
        0x5
        0x8
        0x8
        0xd
        0x12
    .end array-data

    :array_8
    .array-data 4
        0x3
        0x5
        0x8
        0xa
        0x10
        0x15
    .end array-data

    :array_9
    .array-data 4
        0x5
        0x8
        0xa
        0xd
        0x12
        0x17
    .end array-data

    .line 239
    :array_a
    .array-data 4
        0x5
        0x8
        0xd
        0x10
        0x15
        0x19
    .end array-data

    :array_b
    .array-data 4
        0x8
        0xa
        0x10
        0x12
        0x17
        0x1c
    .end array-data

    :array_c
    .array-data 4
        0xa
        0xd
        0x12
        0x15
        0x19
        0x1e
    .end array-data

    :array_d
    .array-data 4
        0xa
        0xd
        0x12
        0x17
        0x1c
        0x21
    .end array-data

    :array_e
    .array-data 4
        0xd
        0x10
        0x15
        0x19
        0x1e
        0x23
    .end array-data

    .line 240
    :array_f
    .array-data 4
        0xd
        0x12
        0x17
        0x1c
        0x21
        0x26
    .end array-data

    :array_10
    .array-data 4
        0xd
        0x15
        0x19
        0x1e
        0x23
        0x28
    .end array-data

    :array_11
    .array-data 4
        0xd
        0x17
        0x1c
        0x21
        0x26
        0x2b
    .end array-data

    :array_12
    .array-data 4
        0xd
        0x19
        0x1e
        0x21
        0x28
        0x2d
    .end array-data

    :array_13
    .array-data 4
        0xd
        0x17
        0x1e
        0x21
        0x2b
        0x30
    .end array-data

    .line 241
    :array_14
    .array-data 4
        0xd
        0x14
        0x19
        0x23
        0x2d
        0x32
    .end array-data

    :array_15
    .array-data 4
        0x10
        0x14
        0x1c
        0x26
        0x30
        0x35
    .end array-data

    :array_16
    .array-data 4
        0x12
        0x17
        0x1e
        0x28
        0x32
        0x37
    .end array-data

    :array_17
    .array-data 4
        0x12
        0x19
        0x23
        0x2d
        0x35
        0x3a
    .end array-data

    :array_18
    .array-data 4
        0x12
        0x1c
        0x26
        0x30
        0x37
        0x3c
    .end array-data

    .line 242
    :array_19
    .array-data 4
        0x15
        0x1e
        0x28
        0x32
        0x3a
        0x3f
    .end array-data

    :array_1a
    .array-data 4
        0x17
        0x21
        0x2b
        0x35
        0x3c
        0x41
    .end array-data

    :array_1b
    .array-data 4
        0x19
        0x23
        0x2d
        0x37
        0x3f
        0x44
    .end array-data

    :array_1c
    .array-data 4
        0x1c
        0x26
        0x30
        0x3a
        0x41
        0x46
    .end array-data

    :array_1d
    .array-data 4
        0x1e
        0x28
        0x32
        0x3c
        0x44
        0x49
    .end array-data

    .line 243
    :array_1e
    .array-data 4
        0x21
        0x2b
        0x35
        0x3f
        0x46
        0x4b
    .end array-data

    :array_1f
    .array-data 4
        0x23
        0x2d
        0x37
        0x41
        0x49
        0x4e
    .end array-data

    :array_20
    .array-data 4
        0x26
        0x30
        0x3a
        0x44
        0x4b
        0x50
    .end array-data

    :array_21
    .array-data 4
        0x28
        0x32
        0x3c
        0x46
        0x4e
        0x53
    .end array-data

    .line 244
    :array_22
    .array-data 4
        0x2b
        0x35
        0x3f
        0x49
        0x50
        0x55
    .end array-data

    :array_23
    .array-data 4
        0x2d
        0x37
        0x41
        0x4b
        0x53
        0x58
    .end array-data

    :array_24
    .array-data 4
        0x30
        0x3a
        0x44
        0x4e
        0x55
        0x5a
    .end array-data

    :array_25
    .array-data 4
        0x32
        0x3c
        0x46
        0x50
        0x58
        0x5d
    .end array-data

    :array_26
    .array-data 4
        0x35
        0x3f
        0x49
        0x53
        0x5a
        0x5f
    .end array-data

    .line 245
    :array_27
    .array-data 4
        0x2d
        0x3f
        0x49
        0x55
        0x5d
        0x62
    .end array-data

    :array_28
    .array-data 4
        0x30
        0x41
        0x4b
        0x58
        0x5f
        0x64
    .end array-data

    :array_29
    .array-data 4
        0x32
        0x44
        0x4e
        0x5a
        0x62
        0x67
    .end array-data

    :array_2a
    .array-data 4
        0x35
        0x46
        0x50
        0x5d
        0x64
        0x69
    .end array-data

    .line 246
    :array_2b
    .array-data 4
        0x37
        0x49
        0x53
        0x5f
        0x67
        0x6c
    .end array-data

    :array_2c
    .array-data 4
        0x3a
        0x4b
        0x55
        0x62
        0x69
        0x6e
    .end array-data

    :array_2d
    .array-data 4
        0x3c
        0x4e
        0x58
        0x64
        0x6c
        0x71
    .end array-data

    :array_2e
    .array-data 4
        0x3f
        0x50
        0x5a
        0x67
        0x6e
        0x73
    .end array-data

    :array_2f
    .array-data 4
        0x41
        0x53
        0x5d
        0x69
        0x71
        0x76
    .end array-data

    .line 247
    :array_30
    .array-data 4
        0x44
        0x55
        0x5f
        0x6c
        0x73
        0x78
    .end array-data

    :array_31
    .array-data 4
        0x46
        0x58
        0x62
        0x6e
        0x76
        0x7b
    .end array-data

    :array_32
    .array-data 4
        0x49
        0x5a
        0x64
        0x71
        0x78
        0x7d
    .end array-data

    :array_33
    .array-data 4
        0x4b
        0x5d
        0x67
        0x73
        0x7b
        0x80
    .end array-data

    :array_34
    .array-data 4
        0x4e
        0x5f
        0x69
        0x76
        0x7d
        0x82
    .end array-data

    .line 248
    :array_35
    .array-data 4
        0x50
        0x5f
        0x6c
        0x78
        0x80
        0x84
    .end array-data

    :array_36
    .array-data 4
        0x53
        0x62
        0x6e
        0x7b
        0x80
        0x84
    .end array-data

    :array_37
    .array-data 4
        0x55
        0x64
        0x71
        0x7d
        0x82
        0x84
    .end array-data

    :array_38
    .array-data 4
        0x58
        0x67
        0x73
        0x82
        0x84
        0x84
    .end array-data

    :array_39
    .array-data 4
        0x5a
        0x69
        0x76
        0x84
        0x84
        0x84
    .end array-data
.end method

.method private changeNight2ReadingMode(II)V
    .locals 8
    .param p1, "generation"    # I
    .param p2, "arg2"    # I

    .prologue
    const/4 v2, 0x1

    .line 2434
    iget-object v3, p0, Lcom/android/server/display/ColorBalanceService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2435
    :try_start_0
    iget v4, p0, Lcom/android/server/display/ColorBalanceService;->mGeneration:I

    if-ne v4, p1, :cond_0

    .line 2436
    iget-object v4, p0, Lcom/android/server/display/ColorBalanceService;->mIsScreenOn:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2437
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/display/ColorBalanceService;->setNightModeProp(Ljava/lang/Boolean;)I

    .line 2438
    iget-object v2, p0, Lcom/android/server/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setActiveMode(I)I

    .line 2439
    const/16 v2, 0x1a90

    iput v2, p0, Lcom/android/server/display/ColorBalanceService;->mStableColor:I

    .line 2440
    const/16 v2, -0x14

    const/4 v4, 0x0

    invoke-direct {p0, v2, v4}, Lcom/android/server/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 2441
    const-string/jumbo v2, "ColorBalanceService"

    const-string/jumbo v4, "Screen off,readingModeSwitch ON done!"

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2442
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/display/ColorBalanceService;->mIsReadingOrNightModeOpendLastSesson:Ljava/lang/Boolean;

    .line 2443
    const/4 v2, 0x6

    iput v2, p0, Lcom/android/server/display/ColorBalanceService;->mModeStage:I

    .line 2444
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/android/server/display/ColorBalanceService;->mFactor:F

    .line 2445
    invoke-direct {p0}, Lcom/android/server/display/ColorBalanceService;->closeMatrix()V

    .line 2446
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    .line 2447
    iget v2, p0, Lcom/android/server/display/ColorBalanceService;->mGeneration:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/display/ColorBalanceService;->mGeneration:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v3

    .line 2433
    return-void

    .line 2449
    :cond_1
    :try_start_1
    iget v4, p0, Lcom/android/server/display/ColorBalanceService;->mNight2ReadingModeStage:I

    if-nez v4, :cond_6

    .line 2450
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/server/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    .line 2451
    const-string/jumbo v2, "ColorBalanceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "changeNight2ReadingMode mFactor should be 1 :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/display/ColorBalanceService;->mFactor:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2453
    iget v2, p0, Lcom/android/server/display/ColorBalanceService;->mFactor:F

    float-to-double v4, v2

    const-wide v6, 0x3fefff2e48e8a71eL    # 0.9999

    cmpl-double v2, v4, v6

    if-lez v2, :cond_3

    .line 2454
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/android/server/display/ColorBalanceService;->mFactor:F

    .line 2455
    iget-object v2, p0, Lcom/android/server/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setActiveMode(I)I

    .line 2461
    :cond_2
    :goto_1
    iget v2, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentNightColorbalance:I

    iput v2, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    .line 2462
    const-string/jumbo v2, "ColorBalanceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "changeNight2ReadingMode mCurrentNightColorbalance:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentNightColorbalance:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2464
    iget v2, p0, Lcom/android/server/display/ColorBalanceService;->mStableColor:I

    const/16 v4, 0x7d0

    if-le v2, v4, :cond_4

    iget v2, p0, Lcom/android/server/display/ColorBalanceService;->mStableColor:I

    const/16 v4, 0x1f40

    if-ge v2, v4, :cond_4

    .line 2465
    iget v2, p0, Lcom/android/server/display/ColorBalanceService;->mStableColor:I

    invoke-direct {p0, v2}, Lcom/android/server/display/ColorBalanceService;->getBalanceByTemprature(I)I

    move-result v1

    .line 2470
    .local v1, "target":I
    :goto_2
    const-string/jumbo v2, "ColorBalanceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mStableColor:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/display/ColorBalanceService;->mStableColor:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " mCurrentSrgbSensorAverageColor:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentSrgbSensorAverageColor:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2471
    const/16 v2, 0x2710

    iput v2, p0, Lcom/android/server/display/ColorBalanceService;->mNight2ReadingModeStage:I

    .line 2472
    const-string/jumbo v2, "ColorBalanceService"

    const-string/jumbo v4, "changeNight2ReadingMode 0 --> 10000,init"

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2473
    const/16 v2, 0xd

    const/16 v4, 0xf

    invoke-virtual {p0, v2, p1, v1, v4}, Lcom/android/server/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 2434
    .end local v1    # "target":I
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 2456
    :cond_3
    :try_start_2
    iget v2, p0, Lcom/android/server/display/ColorBalanceService;->mFactor:F

    float-to-double v4, v2

    const-wide v6, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v2, v4, v6

    if-gez v2, :cond_2

    .line 2457
    iget-object v2, p0, Lcom/android/server/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setActiveMode(I)I

    .line 2458
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/display/ColorBalanceService;->mFactor:F

    .line 2459
    const-string/jumbo v2, "ColorBalanceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "changeNight2ReadingMode mFactor:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/display/ColorBalanceService;->mFactor:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2466
    :cond_4
    iget v2, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentSrgbSensorAverageColor:I

    const/16 v4, 0x7d0

    if-le v2, v4, :cond_5

    iget v2, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentSrgbSensorAverageColor:I

    const/16 v4, 0x1f40

    if-ge v2, v4, :cond_5

    .line 2467
    iget v2, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentSrgbSensorAverageColor:I

    invoke-direct {p0, v2}, Lcom/android/server/display/ColorBalanceService;->getBalanceByTemprature(I)I

    move-result v1

    .restart local v1    # "target":I
    goto/16 :goto_2

    .line 2469
    .end local v1    # "target":I
    :cond_5
    const/16 v1, -0x14

    .restart local v1    # "target":I
    goto/16 :goto_2

    .line 2474
    .end local v1    # "target":I
    :cond_6
    iget v4, p0, Lcom/android/server/display/ColorBalanceService;->mNight2ReadingModeStage:I

    const/16 v5, 0x2710

    if-ne v4, v5, :cond_f

    .line 2475
    const/4 v0, 0x0

    .line 2476
    .local v0, "count":I
    move v1, p2

    .line 2477
    .restart local v1    # "target":I
    iget v4, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    if-eq v4, p2, :cond_8

    .line 2478
    iget v4, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    iget v5, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    if-le v5, p2, :cond_7

    const/4 v2, -0x1

    :cond_7
    add-int/2addr v2, v4

    iput v2, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    .line 2479
    iget v2, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    iput v2, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    .line 2480
    iget v2, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    const/4 v4, 0x0

    invoke-direct {p0, v2, v4}, Lcom/android/server/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 2481
    const/4 v0, 0x1

    .line 2483
    :cond_8
    iget v2, p0, Lcom/android/server/display/ColorBalanceService;->mFactor:F

    const v4, 0x3c3c6a7f    # 0.0115f

    cmpl-float v2, v2, v4

    if-lez v2, :cond_a

    .line 2484
    iget v2, p0, Lcom/android/server/display/ColorBalanceService;->mFactor:F

    const v4, 0x3c4ccccd    # 0.0125f

    sub-float/2addr v2, v4

    iput v2, p0, Lcom/android/server/display/ColorBalanceService;->mFactor:F

    .line 2485
    iget v2, p0, Lcom/android/server/display/ColorBalanceService;->mFactor:F

    const v4, 0x3f39930c    # 0.7249f

    cmpl-float v2, v2, v4

    if-lez v2, :cond_b

    iget v2, p0, Lcom/android/server/display/ColorBalanceService;->mFactor:F

    const v4, 0x3f39a027    # 0.7251f

    cmpg-float v2, v2, v4

    if-gez v2, :cond_b

    .line 2486
    iget-object v2, p0, Lcom/android/server/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    const/4 v4, 0x5

    invoke-virtual {v2, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setActiveMode(I)I

    .line 2487
    iget-object v2, p0, Lcom/android/server/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    const/4 v4, 0x6

    invoke-virtual {v2, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setActiveMode(I)I

    .line 2488
    const-string/jumbo v2, "ColorBalanceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "changeNight2ReadingMode mFactor:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/display/ColorBalanceService;->mFactor:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2501
    :cond_9
    :goto_3
    iget v2, p0, Lcom/android/server/display/ColorBalanceService;->mFactor:F

    invoke-direct {p0, v2}, Lcom/android/server/display/ColorBalanceService;->setColorMatrixNight2Reading(F)V

    .line 2502
    add-int/lit8 v0, v0, 0x2

    .line 2504
    :cond_a
    if-lez v0, :cond_e

    .line 2505
    const/16 v2, 0xd

    const/16 v4, 0xf

    invoke-virtual {p0, v2, p1, p2, v4}, Lcom/android/server/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto/16 :goto_0

    .line 2489
    :cond_b
    iget v2, p0, Lcom/android/server/display/ColorBalanceService;->mFactor:F

    const v4, 0x3efae148    # 0.49f

    cmpl-float v2, v2, v4

    if-lez v2, :cond_c

    iget v2, p0, Lcom/android/server/display/ColorBalanceService;->mFactor:F

    const v4, 0x3f028f5c    # 0.51f

    cmpg-float v2, v2, v4

    if-gez v2, :cond_c

    .line 2490
    iget-object v2, p0, Lcom/android/server/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    const/4 v4, 0x7

    invoke-virtual {v2, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setActiveMode(I)I

    .line 2491
    const-string/jumbo v2, "ColorBalanceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "changeNight2ReadingMode mFactor:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/display/ColorBalanceService;->mFactor:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 2492
    :cond_c
    iget v2, p0, Lcom/android/server/display/ColorBalanceService;->mFactor:F

    const v4, 0x3e7ef9db    # 0.249f

    cmpl-float v2, v2, v4

    if-lez v2, :cond_d

    iget v2, p0, Lcom/android/server/display/ColorBalanceService;->mFactor:F

    const v4, 0x3e808312    # 0.251f

    cmpg-float v2, v2, v4

    if-gez v2, :cond_d

    .line 2493
    iget-object v2, p0, Lcom/android/server/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setActiveMode(I)I

    .line 2494
    iget-object v2, p0, Lcom/android/server/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    const/16 v4, 0x9

    invoke-virtual {v2, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setActiveMode(I)I

    .line 2495
    const-string/jumbo v2, "ColorBalanceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "changeNight2ReadingMode mFactor:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/display/ColorBalanceService;->mFactor:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 2496
    :cond_d
    iget v2, p0, Lcom/android/server/display/ColorBalanceService;->mFactor:F

    float-to-double v4, v2

    const-wide v6, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v2, v4, v6

    if-gez v2, :cond_9

    .line 2497
    iget-object v2, p0, Lcom/android/server/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setActiveMode(I)I

    .line 2498
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/display/ColorBalanceService;->mFactor:F

    .line 2499
    const-string/jumbo v2, "ColorBalanceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "changeNight2ReadingMode mFactor:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/display/ColorBalanceService;->mFactor:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 2507
    :cond_e
    const/16 v2, 0x3a98

    iput v2, p0, Lcom/android/server/display/ColorBalanceService;->mNight2ReadingModeStage:I

    .line 2508
    const-string/jumbo v2, "ColorBalanceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "changeNight2ReadingMode mCurrentReadingColorbalance:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " target:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "  mFactor:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/display/ColorBalanceService;->mFactor:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2509
    const-string/jumbo v2, "ColorBalanceService"

    const-string/jumbo v4, "changeNight2ReadingMode 10000 --> 15000,be B & W,and set colorbalance"

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2510
    const/16 v2, 0xd

    const/4 v4, 0x0

    invoke-virtual {p0, v2, p1, p2, v4}, Lcom/android/server/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto/16 :goto_0

    .line 2512
    .end local v0    # "count":I
    .end local v1    # "target":I
    :cond_f
    iget v2, p0, Lcom/android/server/display/ColorBalanceService;->mNight2ReadingModeStage:I

    const/16 v4, 0x3a98

    if-ne v2, v4, :cond_11

    .line 2513
    iget v2, p0, Lcom/android/server/display/ColorBalanceService;->mFactor:F

    float-to-double v4, v2

    const-wide v6, 0x3fefff2e48e8a71eL    # 0.9999

    cmpl-double v2, v4, v6

    if-lez v2, :cond_10

    .line 2514
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/android/server/display/ColorBalanceService;->mFactor:F

    .line 2515
    invoke-direct {p0}, Lcom/android/server/display/ColorBalanceService;->closeMatrix()V

    .line 2516
    const/16 v2, 0x4e20

    iput v2, p0, Lcom/android/server/display/ColorBalanceService;->mNight2ReadingModeStage:I

    .line 2517
    const-string/jumbo v2, "ColorBalanceService"

    const-string/jumbo v4, "changeNight2ReadingMode 15000 --> 20000,turn off Matrix(shading)"

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2518
    const/16 v2, 0xd

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0, v2, p1, v4, v5}, Lcom/android/server/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto/16 :goto_0

    .line 2520
    :cond_10
    iget v2, p0, Lcom/android/server/display/ColorBalanceService;->mFactor:F

    const v4, 0x3ccccccd    # 0.025f

    add-float/2addr v2, v4

    iput v2, p0, Lcom/android/server/display/ColorBalanceService;->mFactor:F

    .line 2521
    iget v2, p0, Lcom/android/server/display/ColorBalanceService;->mFactor:F

    invoke-direct {p0, v2}, Lcom/android/server/display/ColorBalanceService;->setColorMartix(F)V

    .line 2522
    invoke-direct {p0}, Lcom/android/server/display/ColorBalanceService;->setDTMColorMatrix()V

    .line 2523
    const/16 v2, 0xd

    const/4 v4, 0x0

    const/16 v5, 0xf

    invoke-virtual {p0, v2, p1, v4, v5}, Lcom/android/server/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto/16 :goto_0

    .line 2525
    :cond_11
    iget v2, p0, Lcom/android/server/display/ColorBalanceService;->mNight2ReadingModeStage:I

    const/16 v4, 0x4e20

    if-ne v2, v4, :cond_0

    .line 2526
    const/4 v2, 0x6

    iput v2, p0, Lcom/android/server/display/ColorBalanceService;->mModeStage:I

    .line 2527
    invoke-direct {p0}, Lcom/android/server/display/ColorBalanceService;->saveColorModeInternal()V

    .line 2528
    const-string/jumbo v2, "ColorBalanceService"

    const-string/jumbo v4, "changeNight2ReadingMode done!"

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private changeReading2NightMode(II)V
    .locals 10
    .param p1, "generation"    # I
    .param p2, "arg2"    # I

    .prologue
    const/4 v9, 0x2

    const/4 v4, 0x1

    .line 2328
    iget-object v5, p0, Lcom/android/server/display/ColorBalanceService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 2329
    :try_start_0
    iget v3, p0, Lcom/android/server/display/ColorBalanceService;->mGeneration:I

    if-ne v3, p1, :cond_0

    .line 2330
    iget-object v3, p0, Lcom/android/server/display/ColorBalanceService;->mIsScreenOn:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2331
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Lcom/android/server/display/ColorBalanceService;->mFactor:F

    .line 2332
    invoke-direct {p0}, Lcom/android/server/display/ColorBalanceService;->closeMatrix()V

    .line 2333
    const-string/jumbo v3, "ColorBalanceService"

    const-string/jumbo v4, "Screen off,changeReading2NightMode done!"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2334
    iget-object v3, p0, Lcom/android/server/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setActiveMode(I)I

    .line 2335
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/display/ColorBalanceService;->setNightModeProp(Ljava/lang/Boolean;)I

    .line 2337
    iget-object v3, p0, Lcom/android/server/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 2338
    const-string/jumbo v4, "oem_nightmode_progress_status"

    const/16 v6, 0x67

    const/4 v7, -0x2

    .line 2336
    invoke-static {v3, v4, v6, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    rsub-int v3, v3, 0x84

    add-int/lit8 v1, v3, -0x5a

    .line 2340
    .local v1, "progress":I
    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/android/server/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 2341
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/server/display/ColorBalanceService;->mModeStage:I

    .line 2342
    invoke-direct {p0}, Lcom/android/server/display/ColorBalanceService;->saveColorModeInternal()V

    .line 2343
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/server/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    .line 2344
    iget v3, p0, Lcom/android/server/display/ColorBalanceService;->mGeneration:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/display/ColorBalanceService;->mGeneration:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "progress":I
    :cond_0
    :goto_0
    monitor-exit v5

    .line 2327
    return-void

    .line 2346
    :cond_1
    :try_start_1
    iget v3, p0, Lcom/android/server/display/ColorBalanceService;->mReading2NightModeStage:I

    if-nez v3, :cond_3

    .line 2347
    iget v3, p0, Lcom/android/server/display/ColorBalanceService;->mFactor:F

    float-to-double v6, v3

    const-wide v8, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v3, v6, v8

    if-gez v3, :cond_2

    .line 2348
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/display/ColorBalanceService;->mFactor:F

    .line 2349
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/server/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    .line 2350
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/display/ColorBalanceService;->setNightModeProp(Ljava/lang/Boolean;)I

    .line 2351
    const/16 v3, 0x1388

    iput v3, p0, Lcom/android/server/display/ColorBalanceService;->mReading2NightModeStage:I

    .line 2352
    const/16 v3, 0xe

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0, v3, p1, v4, v6}, Lcom/android/server/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    .line 2353
    const-string/jumbo v3, "ColorBalanceService"

    const-string/jumbo v4, "changeReading2NightMode: 0 --> 5000,be B & W"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2328
    :catchall_0
    move-exception v3

    monitor-exit v5

    throw v3

    .line 2355
    :cond_2
    :try_start_2
    iget v3, p0, Lcom/android/server/display/ColorBalanceService;->mFactor:F

    const v4, 0x3ccccccd    # 0.025f

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/android/server/display/ColorBalanceService;->mFactor:F

    .line 2356
    iget v3, p0, Lcom/android/server/display/ColorBalanceService;->mFactor:F

    invoke-direct {p0, v3}, Lcom/android/server/display/ColorBalanceService;->setColorMartix(F)V

    .line 2357
    invoke-direct {p0}, Lcom/android/server/display/ColorBalanceService;->setDTMColorMatrix()V

    .line 2358
    const/16 v3, 0xe

    const/4 v4, 0x0

    const/16 v6, 0xf

    invoke-virtual {p0, v3, p1, v4, v6}, Lcom/android/server/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto :goto_0

    .line 2360
    :cond_3
    iget v3, p0, Lcom/android/server/display/ColorBalanceService;->mReading2NightModeStage:I

    const/16 v6, 0x1388

    if-ne v3, v6, :cond_5

    .line 2362
    iget-object v3, p0, Lcom/android/server/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 2363
    const-string/jumbo v4, "oem_nightmode_progress_status"

    const/16 v6, 0x67

    const/4 v7, -0x2

    .line 2361
    invoke-static {v3, v4, v6, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    rsub-int v3, v3, 0x84

    add-int/lit8 v2, v3, -0x5a

    .line 2365
    .local v2, "target":I
    iget v3, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    iput v3, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentNightColorbalance:I

    .line 2366
    const-string/jumbo v3, "ColorBalanceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "changeReading2NightMode:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentNightColorbalance:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2368
    iget v3, p0, Lcom/android/server/display/ColorBalanceService;->mFactor:F

    invoke-direct {p0, v3}, Lcom/android/server/display/ColorBalanceService;->setColorMatrixNight2Reading(F)V

    .line 2369
    iget-object v3, p0, Lcom/android/server/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setActiveMode(I)I

    .line 2370
    iget v3, p0, Lcom/android/server/display/ColorBalanceService;->mFactor:F

    float-to-double v6, v3

    const-wide v8, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v3, v6, v8

    if-gez v3, :cond_4

    .line 2371
    iget-object v3, p0, Lcom/android/server/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setActiveMode(I)I

    .line 2372
    iget-object v3, p0, Lcom/android/server/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setActiveMode(I)I

    .line 2374
    :cond_4
    const/16 v3, 0x2710

    iput v3, p0, Lcom/android/server/display/ColorBalanceService;->mReading2NightModeStage:I

    .line 2375
    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-virtual {p0, v3, p1, v2, v4}, Lcom/android/server/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    .line 2376
    const-string/jumbo v3, "ColorBalanceService"

    const-string/jumbo v4, "changeReading2NightMode:stage 5000 --> 10000,init target colorbalance"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2377
    .end local v2    # "target":I
    :cond_5
    iget v3, p0, Lcom/android/server/display/ColorBalanceService;->mReading2NightModeStage:I

    const/16 v6, 0x2710

    if-ne v3, v6, :cond_f

    .line 2379
    iget-object v3, p0, Lcom/android/server/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 2380
    const-string/jumbo v6, "oem_nightmode_progress_status"

    const/16 v7, 0x67

    const/4 v8, -0x2

    .line 2378
    invoke-static {v3, v6, v7, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    rsub-int v3, v3, 0x84

    add-int/lit8 v2, v3, -0x5a

    .line 2383
    .restart local v2    # "target":I
    iget v3, p0, Lcom/android/server/display/ColorBalanceService;->mFactor:F

    const v6, 0x3f7fbe77    # 0.999f

    cmpl-float v3, v3, v6

    if-lez v3, :cond_a

    .line 2384
    iget v3, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentNightColorbalance:I

    if-eq v3, v2, :cond_9

    .line 2385
    const/4 v0, 0x1

    .line 2386
    .local v0, "count":I
    iget v6, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentNightColorbalance:I

    iget v3, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentNightColorbalance:I

    if-le v3, v2, :cond_8

    const/4 v3, -0x1

    :goto_1
    add-int/2addr v3, v6

    iput v3, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentNightColorbalance:I

    .line 2387
    iget v3, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentNightColorbalance:I

    iput v3, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentColorBalance:I

    .line 2388
    iget v3, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentNightColorbalance:I

    const/4 v6, 0x0

    invoke-direct {p0, v3, v6}, Lcom/android/server/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 2395
    :goto_2
    iget v3, p0, Lcom/android/server/display/ColorBalanceService;->mFactor:F

    const v6, 0x3f7fbe77    # 0.999f

    cmpg-float v3, v3, v6

    if-gez v3, :cond_7

    .line 2396
    iget v3, p0, Lcom/android/server/display/ColorBalanceService;->mFactor:F

    const v6, 0x3e7ef9db    # 0.249f

    cmpl-float v3, v3, v6

    if-lez v3, :cond_b

    iget v3, p0, Lcom/android/server/display/ColorBalanceService;->mFactor:F

    const v6, 0x3e808312    # 0.251f

    cmpg-float v3, v3, v6

    if-gez v3, :cond_b

    .line 2397
    iget-object v3, p0, Lcom/android/server/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    const/4 v6, 0x7

    invoke-virtual {v3, v6}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setActiveMode(I)I

    .line 2398
    const-string/jumbo v3, "ColorBalanceService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "changeReading2NightMode mFactor:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/display/ColorBalanceService;->mFactor:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2408
    :cond_6
    :goto_3
    add-int/lit8 v0, v0, 0x2

    .line 2409
    iget v3, p0, Lcom/android/server/display/ColorBalanceService;->mFactor:F

    const v6, 0x3c4ccccd    # 0.0125f

    add-float/2addr v3, v6

    iput v3, p0, Lcom/android/server/display/ColorBalanceService;->mFactor:F

    .line 2410
    iget v3, p0, Lcom/android/server/display/ColorBalanceService;->mFactor:F

    invoke-direct {p0, v3}, Lcom/android/server/display/ColorBalanceService;->setColorMatrixNight2Reading(F)V

    .line 2412
    :cond_7
    if-lt v0, v9, :cond_d

    .line 2413
    const/16 v3, 0xe

    const/16 v4, 0xf

    invoke-virtual {p0, v3, p1, v2, v4}, Lcom/android/server/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto/16 :goto_0

    :cond_8
    move v3, v4

    .line 2386
    goto :goto_1

    .line 2390
    .end local v0    # "count":I
    :cond_9
    const/4 v0, 0x0

    .restart local v0    # "count":I
    goto :goto_2

    .line 2393
    .end local v0    # "count":I
    :cond_a
    const/4 v0, 0x1

    .restart local v0    # "count":I
    goto :goto_2

    .line 2399
    :cond_b
    iget v3, p0, Lcom/android/server/display/ColorBalanceService;->mFactor:F

    const v6, 0x3efae148    # 0.49f

    cmpl-float v3, v3, v6

    if-lez v3, :cond_c

    iget v3, p0, Lcom/android/server/display/ColorBalanceService;->mFactor:F

    const v6, 0x3f028f5c    # 0.51f

    cmpg-float v3, v3, v6

    if-gez v3, :cond_c

    .line 2400
    iget-object v3, p0, Lcom/android/server/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    const/4 v6, 0x6

    invoke-virtual {v3, v6}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setActiveMode(I)I

    .line 2401
    iget-object v3, p0, Lcom/android/server/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    const/4 v6, 0x5

    invoke-virtual {v3, v6}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setActiveMode(I)I

    .line 2402
    const-string/jumbo v3, "ColorBalanceService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "changeReading2NightMod mFactor:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/display/ColorBalanceService;->mFactor:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 2403
    :cond_c
    iget v3, p0, Lcom/android/server/display/ColorBalanceService;->mFactor:F

    const v6, 0x3f3fbe77    # 0.749f

    cmpl-float v3, v3, v6

    if-lez v3, :cond_6

    iget v3, p0, Lcom/android/server/display/ColorBalanceService;->mFactor:F

    const v6, 0x3f404189    # 0.751f

    cmpg-float v3, v3, v6

    if-gez v3, :cond_6

    .line 2404
    iget-object v3, p0, Lcom/android/server/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    const/4 v6, 0x4

    invoke-virtual {v3, v6}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setActiveMode(I)I

    .line 2405
    iget-object v3, p0, Lcom/android/server/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    const/4 v6, 0x2

    invoke-virtual {v3, v6}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setActiveMode(I)I

    .line 2406
    const-string/jumbo v3, "ColorBalanceService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "changeReading2NightMode mFactor:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/display/ColorBalanceService;->mFactor:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 2414
    :cond_d
    if-ne v0, v4, :cond_e

    .line 2415
    const/16 v3, 0xe

    const/16 v4, 0xf

    invoke-virtual {p0, v3, p1, v2, v4}, Lcom/android/server/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto/16 :goto_0

    .line 2417
    :cond_e
    const/16 v3, 0x4e20

    iput v3, p0, Lcom/android/server/display/ColorBalanceService;->mReading2NightModeStage:I

    .line 2418
    const-string/jumbo v3, "ColorBalanceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "changeReading2NightMode mCurrentNightColorbalance:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentNightColorbalance:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2419
    const-string/jumbo v3, "ColorBalanceService"

    const-string/jumbo v4, "changeReading2NightMode:stage 10000 --> 20000,to be colors and set colorbalance"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2420
    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-virtual {p0, v3, p1, v2, v4}, Lcom/android/server/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto/16 :goto_0

    .line 2422
    .end local v0    # "count":I
    .end local v2    # "target":I
    :cond_f
    iget v3, p0, Lcom/android/server/display/ColorBalanceService;->mReading2NightModeStage:I

    const/16 v4, 0x4e20

    if-ne v3, v4, :cond_0

    .line 2423
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Lcom/android/server/display/ColorBalanceService;->mFactor:F

    .line 2424
    invoke-direct {p0}, Lcom/android/server/display/ColorBalanceService;->closeMatrix()V

    .line 2425
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/server/display/ColorBalanceService;->mModeStage:I

    .line 2426
    invoke-direct {p0}, Lcom/android/server/display/ColorBalanceService;->saveColorModeInternal()V

    .line 2427
    const-string/jumbo v3, "ColorBalanceService"

    const-string/jumbo v4, "changeReading2NightMode done(20000)!"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private checkColorManageEnable()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 2691
    const/16 v1, 0x1388

    .line 2692
    .local v1, "retryCount":I
    :goto_0
    if-lez v1, :cond_3

    iget-object v3, p0, Lcom/android/server/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    if-nez v3, :cond_3

    .line 2693
    iget-object v3, p0, Lcom/android/server/display/ColorBalanceService;->mIsColorManagerConnected:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2694
    invoke-direct {p0}, Lcom/android/server/display/ColorBalanceService;->colorManagerInit()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/display/ColorBalanceService;->mIsColorManagerConnected:Ljava/lang/Boolean;

    .line 2696
    :cond_0
    iget-object v3, p0, Lcom/android/server/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    if-nez v3, :cond_2

    .line 2697
    rem-int/lit8 v3, v1, 0x32

    if-nez v3, :cond_1

    .line 2698
    const-string/jumbo v3, "ColorBalanceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "init error,wait 10ms and reinit,retryCount:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2700
    :cond_1
    const-wide/16 v4, 0xa

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2692
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2701
    :catch_0
    move-exception v0

    .line 2702
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 2706
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_3
    iget-object v3, p0, Lcom/android/server/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    if-eqz v3, :cond_4

    const/4 v2, 0x1

    :cond_4
    return v2
.end method

.method private closeMatrix()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, -0x2

    const/4 v4, 0x0

    .line 574
    iget-object v2, p0, Lcom/android/server/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 575
    const-string/jumbo v3, "accessibility_display_daltonizer_enabled"

    .line 574
    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 576
    .local v0, "dal":I
    iget-object v2, p0, Lcom/android/server/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 577
    const-string/jumbo v3, "accessibility_display_inversion_enabled"

    .line 576
    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 579
    .local v1, "rev":I
    if-eq v0, v6, :cond_0

    if-ne v1, v6, :cond_1

    .line 580
    :cond_0
    return-void

    .line 581
    :cond_1
    iget-object v2, p0, Lcom/android/server/display/ColorBalanceService;->dtm:Lcom/android/server/display/DisplayTransformManager;

    if-eqz v2, :cond_2

    .line 582
    iget-object v2, p0, Lcom/android/server/display/ColorBalanceService;->dtm:Lcom/android/server/display/DisplayTransformManager;

    invoke-virtual {v2, v4, v7}, Lcom/android/server/display/DisplayTransformManager;->setColorMatrix(I[F)V

    .line 583
    const-string/jumbo v2, "ColorBalanceService"

    const-string/jumbo v3, "close matrix!"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    :cond_2
    return-void
.end method

.method private colorManagerInit()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1573
    iget-object v2, p0, Lcom/android/server/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    if-nez v2, :cond_1

    .line 1574
    new-instance v0, Lcom/android/server/display/ColorBalanceService$5;

    invoke-direct {v0, p0}, Lcom/android/server/display/ColorBalanceService$5;-><init>(Lcom/android/server/display/ColorBalanceService;)V

    .line 1580
    .local v0, "colorinterface":Lcom/qti/snapdragon/sdk/display/ColorManager$ColorManagerListener;
    iget-object v2, p0, Lcom/android/server/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/qti/snapdragon/sdk/display/ColorManager;->connect(Landroid/content/Context;Lcom/qti/snapdragon/sdk/display/ColorManager$ColorManagerListener;)I

    move-result v1

    .line 1581
    .local v1, "retVal":I
    if-eqz v1, :cond_0

    .line 1582
    const-string/jumbo v2, "ColorBalanceService"

    const-string/jumbo v3, "Connection failed"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1583
    return v4

    .line 1585
    :cond_0
    const-string/jumbo v2, "ColorBalanceService"

    const-string/jumbo v3, "ColorManager Connected!"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1587
    .end local v0    # "colorinterface":Lcom/qti/snapdragon/sdk/display/ColorManager$ColorManagerListener;
    .end local v1    # "retVal":I
    :cond_1
    const/4 v2, 0x1

    return v2
.end method

.method private createModeList([Lcom/qti/snapdragon/sdk/display/ModeInfo;)V
    .locals 5
    .param p1, "pa"    # [Lcom/qti/snapdragon/sdk/display/ModeInfo;

    .prologue
    .line 2848
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/display/ColorBalanceService;->mModeList:Ljava/util/ArrayList;

    .line 2849
    const/4 v1, 0x0

    array-length v2, p1

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p1, v1

    .line 2850
    .local v0, "i":Lcom/qti/snapdragon/sdk/display/ModeInfo;
    iget-object v3, p0, Lcom/android/server/display/ColorBalanceService;->mModeList:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/server/display/ColorBalanceService$ModeInfoWrapper;

    invoke-direct {v4, p0, v0}, Lcom/android/server/display/ColorBalanceService$ModeInfoWrapper;-><init>(Lcom/android/server/display/ColorBalanceService;Lcom/qti/snapdragon/sdk/display/ModeInfo;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2849
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2847
    .end local v0    # "i":Lcom/qti/snapdragon/sdk/display/ModeInfo;
    :cond_0
    return-void
.end method

.method private getBalanceByTemprature(I)I
    .locals 14
    .param p1, "CTemp"    # I

    .prologue
    const/16 v13, 0x39

    const/16 v12, 0x2f

    const/16 v11, 0x24

    const/16 v10, 0x1a

    const/4 v9, 0x0

    .line 1692
    const/4 v1, 0x0

    .line 1694
    .local v1, "elemIndex":I
    const/4 v2, 0x0

    .line 1695
    .local v2, "enviroment_step":I
    const/4 v0, 0x0

    .line 1696
    .local v0, "balance":I
    iget-object v5, p0, Lcom/android/server/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1697
    const-string/jumbo v5, "ColorBalanceService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, " when open the reading mode the enviroment color temperature         == "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1698
    if-gez p1, :cond_0

    .line 1699
    const-string/jumbo v5, "ColorBalanceService"

    const-string/jumbo v6, " The RGB sensor output negative data this is error !  "

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1700
    return v9

    .line 1703
    :cond_0
    div-int/lit8 v2, p1, 0x64

    .line 1704
    if-ge v2, v10, :cond_2

    .line 1705
    const/4 v2, 0x0

    .line 1716
    :goto_0
    const-string/jumbo v5, "ColorBalanceService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, " when in reading mode the enviroment_step = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1717
    iget-object v5, p0, Lcom/android/server/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 1718
    const-string/jumbo v6, "screen_color_mode_settings_value"

    const/4 v7, 0x1

    const/4 v8, -0x2

    .line 1717
    invoke-static {v5, v6, v7, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    .line 1719
    .local v4, "status":I
    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    const/4 v5, 0x3

    if-ne v4, v5, :cond_7

    .line 1720
    :cond_1
    sget-object v5, Lcom/android/server/display/ColorBalanceService;->config_colorbalance_reading_mode:[I

    aget v0, v5, v2

    .line 1725
    :goto_1
    add-int/lit8 v0, v0, -0x5a

    .line 1768
    .end local v4    # "status":I
    :goto_2
    const-string/jumbo v5, "ColorBalanceService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getBalanceByTemprature:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1769
    return v0

    .line 1706
    :cond_2
    if-lt v2, v10, :cond_3

    if-ge v2, v11, :cond_3

    .line 1707
    const/4 v2, 0x1

    goto :goto_0

    .line 1708
    :cond_3
    if-lt v2, v11, :cond_4

    if-ge v2, v12, :cond_4

    .line 1709
    const/4 v2, 0x2

    goto :goto_0

    .line 1710
    :cond_4
    if-lt v2, v12, :cond_5

    if-ge v2, v13, :cond_5

    .line 1711
    const/4 v2, 0x3

    goto :goto_0

    .line 1712
    :cond_5
    if-lt v2, v13, :cond_6

    const/16 v5, 0x42

    if-ge v2, v5, :cond_6

    .line 1713
    const/4 v2, 0x4

    goto :goto_0

    .line 1715
    :cond_6
    const/4 v2, 0x5

    goto :goto_0

    .line 1723
    .restart local v4    # "status":I
    :cond_7
    sget-object v5, Lcom/android/server/display/ColorBalanceService;->config_colorbalance_reading_mode_SRGB_and_P3:[I

    aget v0, v5, v2

    goto :goto_1

    .line 1729
    .end local v4    # "status":I
    :cond_8
    iget-object v5, p0, Lcom/android/server/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 1730
    const-string/jumbo v6, "oem_nightmode_progress_status"

    const/16 v7, 0x67

    const/4 v8, -0x2

    .line 1728
    invoke-static {v5, v6, v7, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    rsub-int v3, v5, 0x84

    .line 1731
    .local v3, "manualSeekbarPos":I
    const/4 v1, 0x0

    .line 1693
    :goto_3
    const/16 v5, 0x36

    .line 1731
    if-ge v1, v5, :cond_9

    .line 1732
    iget-object v5, p0, Lcom/android/server/display/ColorBalanceService;->config_autoseekbar:[I

    aget v5, v5, v1

    if-gt v3, v5, :cond_b

    .line 1740
    :cond_9
    :goto_4
    if-ltz v1, :cond_a

    const/16 v5, 0x35

    if-le v1, v5, :cond_d

    .line 1741
    :cond_a
    const-string/jumbo v5, "ColorBalanceService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Out of range elemIndex: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1742
    return v9

    .line 1735
    :cond_b
    iget-object v5, p0, Lcom/android/server/display/ColorBalanceService;->config_autoseekbar:[I

    const/16 v6, 0x35

    aget v5, v5, v6

    if-lt v3, v5, :cond_c

    .line 1736
    const/16 v1, 0x35

    .line 1737
    goto :goto_4

    .line 1731
    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1744
    :cond_d
    const-string/jumbo v5, "ColorBalanceService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, " when open the night mode the enviroment color temperature         == "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1745
    if-gez p1, :cond_e

    .line 1746
    const-string/jumbo v5, "ColorBalanceService"

    const-string/jumbo v6, " The RGB sensor output negative data this is error !  "

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1747
    return v9

    .line 1750
    :cond_e
    div-int/lit8 v2, p1, 0x64

    .line 1751
    if-ge v2, v10, :cond_f

    .line 1752
    const/4 v2, 0x0

    .line 1763
    :goto_5
    const-string/jumbo v5, "ColorBalanceService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, " when in night mode the enviroment_step = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1764
    iget-object v5, p0, Lcom/android/server/display/ColorBalanceService;->config_colorbalance:[[I

    aget-object v5, v5, v1

    aget v0, v5, v2

    .line 1765
    add-int/lit8 v0, v0, -0x5a

    goto/16 :goto_2

    .line 1753
    :cond_f
    if-lt v2, v10, :cond_10

    if-ge v2, v11, :cond_10

    .line 1754
    const/4 v2, 0x1

    goto :goto_5

    .line 1755
    :cond_10
    if-lt v2, v11, :cond_11

    if-ge v2, v12, :cond_11

    .line 1756
    const/4 v2, 0x2

    goto :goto_5

    .line 1757
    :cond_11
    if-lt v2, v12, :cond_12

    if-ge v2, v13, :cond_12

    .line 1758
    const/4 v2, 0x3

    goto :goto_5

    .line 1759
    :cond_12
    if-lt v2, v13, :cond_13

    const/16 v5, 0x42

    if-ge v2, v5, :cond_13

    .line 1760
    const/4 v2, 0x4

    goto :goto_5

    .line 1762
    :cond_13
    const/4 v2, 0x5

    goto :goto_5
.end method

.method private handleSRGBSensorEvent(I)V
    .locals 5
    .param p1, "colortemperature"    # I

    .prologue
    const/16 v2, 0x8

    const/4 v4, 0x0

    .line 1631
    const/16 v1, 0x7d0

    if-le p1, v1, :cond_1

    const/16 v1, 0x1f40

    if-ge p1, v1, :cond_1

    .line 1632
    iget v1, p0, Lcom/android/server/display/ColorBalanceService;->mAverageColor:I

    if-nez v1, :cond_0

    .line 1633
    iput p1, p0, Lcom/android/server/display/ColorBalanceService;->mAverageColor:I

    .line 1634
    iput v4, p0, Lcom/android/server/display/ColorBalanceService;->mStableCount:I

    .line 1635
    return-void

    .line 1637
    :cond_0
    iget v1, p0, Lcom/android/server/display/ColorBalanceService;->mStableCount:I

    if-ge v1, v2, :cond_5

    .line 1638
    iget v1, p0, Lcom/android/server/display/ColorBalanceService;->mAverageColor:I

    sub-int/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 1639
    .local v0, "delta":I
    const/16 v1, 0xc8

    if-ge v0, v1, :cond_4

    .line 1640
    iget v1, p0, Lcom/android/server/display/ColorBalanceService;->mStableCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/display/ColorBalanceService;->mStableCount:I

    .line 1641
    iget v1, p0, Lcom/android/server/display/ColorBalanceService;->mAverageColor:I

    add-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/server/display/ColorBalanceService;->mAverageColor:I

    .line 1642
    iget v1, p0, Lcom/android/server/display/ColorBalanceService;->mStableCount:I

    if-ne v1, v2, :cond_1

    .line 1643
    iget v1, p0, Lcom/android/server/display/ColorBalanceService;->mStableColor:I

    if-nez v1, :cond_2

    .line 1644
    iget v1, p0, Lcom/android/server/display/ColorBalanceService;->mAverageColor:I

    iput v1, p0, Lcom/android/server/display/ColorBalanceService;->mStableColor:I

    .line 1645
    const-string/jumbo v1, "ColorBalanceService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Stable color is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/display/ColorBalanceService;->mStableColor:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1627
    .end local v0    # "delta":I
    :cond_1
    :goto_0
    return-void

    .line 1647
    .restart local v0    # "delta":I
    :cond_2
    iget v1, p0, Lcom/android/server/display/ColorBalanceService;->mStableColor:I

    iget v2, p0, Lcom/android/server/display/ColorBalanceService;->mAverageColor:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 1648
    const/16 v1, 0x320

    if-ge v0, v1, :cond_3

    .line 1650
    const-string/jumbo v1, "ColorBalanceService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ignored,Stable color is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/display/ColorBalanceService;->mStableColor:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1652
    :cond_3
    iget v1, p0, Lcom/android/server/display/ColorBalanceService;->mAverageColor:I

    iput v1, p0, Lcom/android/server/display/ColorBalanceService;->mStableColor:I

    .line 1653
    invoke-direct {p0}, Lcom/android/server/display/ColorBalanceService;->processEnvironmentChange()V

    .line 1654
    const-string/jumbo v1, "ColorBalanceService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "adjusted,Stable color is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/display/ColorBalanceService;->mStableColor:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1656
    iput v4, p0, Lcom/android/server/display/ColorBalanceService;->mStableCount:I

    .line 1657
    iput v4, p0, Lcom/android/server/display/ColorBalanceService;->mAverageColor:I

    goto :goto_0

    .line 1663
    :cond_4
    iput v4, p0, Lcom/android/server/display/ColorBalanceService;->mStableCount:I

    .line 1664
    iput v4, p0, Lcom/android/server/display/ColorBalanceService;->mAverageColor:I

    goto :goto_0

    .line 1668
    .end local v0    # "delta":I
    :cond_5
    iget v1, p0, Lcom/android/server/display/ColorBalanceService;->mStableColor:I

    sub-int/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 1669
    .restart local v0    # "delta":I
    const/16 v1, 0x64

    if-ge v0, v1, :cond_6

    .line 1671
    return-void

    .line 1674
    :cond_6
    iput v4, p0, Lcom/android/server/display/ColorBalanceService;->mStableCount:I

    .line 1675
    iput v4, p0, Lcom/android/server/display/ColorBalanceService;->mAverageColor:I

    goto :goto_0
.end method

.method private isFactoryMode(Lcom/android/server/display/ColorBalanceService$ModeInfoWrapper;)Z
    .locals 2
    .param p1, "mode"    # Lcom/android/server/display/ColorBalanceService$ModeInfoWrapper;

    .prologue
    .line 2854
    iget-object v0, p1, Lcom/android/server/display/ColorBalanceService$ModeInfoWrapper;->mode:Lcom/qti/snapdragon/sdk/display/ModeInfo;

    invoke-virtual {v0}, Lcom/qti/snapdragon/sdk/display/ModeInfo;->getModeType()Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;

    move-result-object v0

    sget-object v1, Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;->MODE_SYSTEM:Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;

    if-ne v0, v1, :cond_0

    .line 2855
    const/4 v0, 0x1

    return v0

    .line 2856
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isScreenOn()Z
    .locals 2

    .prologue
    .line 301
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    return v0

    .line 304
    :cond_0
    const-string/jumbo v0, "ColorBalanceService"

    const-string/jumbo v1, "mPowerManager is null!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    const/4 v0, 0x0

    return v0
.end method

.method private static isUserSetupCompleted(Landroid/content/ContentResolver;I)Z
    .locals 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "userHandle"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 391
    const-string/jumbo v2, "user_setup_complete"

    invoke-static {p0, v2, v1, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private modeExists(Ljava/lang/String;)Lcom/android/server/display/ColorBalanceService$ModeInfoWrapper;
    .locals 6
    .param p1, "modeName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 2860
    iget-object v3, p0, Lcom/android/server/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;->MODE_USER:Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;

    invoke-virtual {v3, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager;->getModes(Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;)[Lcom/qti/snapdragon/sdk/display/ModeInfo;

    move-result-object v2

    .line 2861
    .local v2, "modeDataArray":[Lcom/qti/snapdragon/sdk/display/ModeInfo;
    if-eqz v2, :cond_0

    .line 2862
    invoke-direct {p0, v2}, Lcom/android/server/display/ColorBalanceService;->createModeList([Lcom/qti/snapdragon/sdk/display/ModeInfo;)V

    .line 2864
    :cond_0
    iget-object v3, p0, Lcom/android/server/display/ColorBalanceService;->mModeList:Ljava/util/ArrayList;

    if-nez v3, :cond_1

    .line 2865
    return-object v5

    .line 2867
    :cond_1
    iget-object v3, p0, Lcom/android/server/display/ColorBalanceService;->mModeList:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "mode$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/ColorBalanceService$ModeInfoWrapper;

    .line 2868
    .local v0, "mode":Lcom/android/server/display/ColorBalanceService$ModeInfoWrapper;
    iget-object v3, v0, Lcom/android/server/display/ColorBalanceService$ModeInfoWrapper;->modename:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2869
    return-object v0

    .line 2872
    .end local v0    # "mode":Lcom/android/server/display/ColorBalanceService$ModeInfoWrapper;
    :cond_3
    return-object v5
.end method

.method private nightModeSwitch(ZI)V
    .locals 11
    .param p1, "isActivite"    # Z
    .param p2, "generation"    # I

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x3

    const/4 v4, 0x1

    .line 1910
    iget-object v5, p0, Lcom/android/server/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 1911
    const-string/jumbo v6, "oem_nightmode_progress_status"

    const/16 v7, 0x67

    const/4 v8, -0x2

    .line 1909
    invoke-static {v5, v6, v7, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    rsub-int v5, v5, 0x84

    add-int/lit8 v1, v5, -0x5a

    .line 1914
    .local v1, "progress":I
    iget-object v5, p0, Lcom/android/server/display/ColorBalanceService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1915
    :try_start_0
    iget-object v6, p0, Lcom/android/server/display/ColorBalanceService;->mIsScreenOn:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1916
    iget v4, p0, Lcom/android/server/display/ColorBalanceService;->mGeneration:I

    if-ne v4, p2, :cond_0

    .line 1917
    iget v4, p0, Lcom/android/server/display/ColorBalanceService;->mGeneration:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/display/ColorBalanceService;->mGeneration:I

    .line 1918
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/server/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    .line 1919
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/display/ColorBalanceService;->mIsReadingOrNightModeOpendLastSesson:Ljava/lang/Boolean;

    .line 1920
    iget-object v4, p0, Lcom/android/server/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1921
    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, p0, Lcom/android/server/display/ColorBalanceService;->mFactor:F

    .line 1922
    invoke-direct {p0}, Lcom/android/server/display/ColorBalanceService;->closeMatrix()V

    .line 1923
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/display/ColorBalanceService;->setNightModeProp(Ljava/lang/Boolean;)I

    .line 1924
    iget-object v4, p0, Lcom/android/server/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setActiveMode(I)I

    .line 1925
    const/4 v4, 0x0

    invoke-direct {p0, v1, v4}, Lcom/android/server/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 1926
    const/4 v4, 0x4

    iput v4, p0, Lcom/android/server/display/ColorBalanceService;->mNightModeOpingStage:I

    .line 1927
    const/4 v4, 0x2

    iput v4, p0, Lcom/android/server/display/ColorBalanceService;->mModeStage:I

    .line 1928
    const-string/jumbo v4, "ColorBalanceService"

    const-string/jumbo v6, "Screen off,nightModeSwitch ON done!"

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1935
    :goto_0
    invoke-direct {p0}, Lcom/android/server/display/ColorBalanceService;->saveColorModeInternal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_1
    monitor-exit v5

    .line 1907
    return-void

    .line 1930
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/display/ColorBalanceService;->revertStatus()V

    .line 1931
    const/4 v4, 0x3

    iput v4, p0, Lcom/android/server/display/ColorBalanceService;->mNightModeClosingStage:I

    .line 1932
    const/4 v4, 0x4

    iput v4, p0, Lcom/android/server/display/ColorBalanceService;->mModeStage:I

    .line 1933
    const-string/jumbo v4, "ColorBalanceService"

    const-string/jumbo v6, "Screen off,nightModeSwitch OFF done!"

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1914
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 1938
    :cond_2
    :try_start_2
    iget v6, p0, Lcom/android/server/display/ColorBalanceService;->mGeneration:I

    if-ne v6, p2, :cond_0

    .line 1939
    iget-object v6, p0, Lcom/android/server/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 1940
    iget v6, p0, Lcom/android/server/display/ColorBalanceService;->mModeStage:I

    if-eq v6, v10, :cond_0

    .line 1941
    iget-object v6, p0, Lcom/android/server/display/ColorBalanceService;->mIsReadingOrNightModeOpendLastSesson:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_b

    .line 1942
    iget v6, p0, Lcom/android/server/display/ColorBalanceService;->mNightModeOpingStage:I

    if-nez v6, :cond_4

    .line 1943
    iget-object v4, p0, Lcom/android/server/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 1944
    const-string/jumbo v6, "screen_color_mode_settings_value"

    const/4 v7, 0x1

    const/4 v8, -0x2

    .line 1943
    invoke-static {v4, v6, v7, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 1945
    .local v2, "status":I
    if-eq v2, v9, :cond_3

    .line 1946
    iget-object v4, p0, Lcom/android/server/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setActiveMode(I)I

    .line 1947
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/display/ColorBalanceService;->setNightModeProp(Ljava/lang/Boolean;)I

    .line 1948
    const/16 v4, 0x2b

    iput v4, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentNightColorbalance:I

    .line 1949
    const/4 v4, 0x3

    iput v4, p0, Lcom/android/server/display/ColorBalanceService;->mNightModeOpingStage:I

    .line 1950
    const-string/jumbo v4, "ColorBalanceService"

    const-string/jumbo v6, "nightModeSwitch ON: 0 --> 3,default!"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1958
    :goto_2
    const/16 v4, 0xa

    invoke-virtual {p0, v4, p2}, Lcom/android/server/display/ColorBalanceService;->sendMsgWithValue(II)V

    goto :goto_1

    .line 1952
    :cond_3
    iget-object v4, p0, Lcom/android/server/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 1953
    const-string/jumbo v6, "oem_screen_better_value"

    const/16 v7, 0x39

    .line 1954
    const/4 v8, -0x2

    .line 1952
    invoke-static {v4, v6, v7, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    rsub-int/lit8 v4, v4, 0x64

    iput v4, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentNightColorbalance:I

    .line 1955
    const/4 v4, 0x2

    iput v4, p0, Lcom/android/server/display/ColorBalanceService;->mNightModeOpingStage:I

    .line 1956
    const-string/jumbo v4, "ColorBalanceService"

    const-string/jumbo v6, "nightModeSwitch ON: 0 --> 2,status 3,setting customer to default"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1959
    .end local v2    # "status":I
    :cond_4
    iget v6, p0, Lcom/android/server/display/ColorBalanceService;->mNightModeOpingStage:I

    if-ne v6, v10, :cond_7

    .line 1960
    iget v6, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentNightColorbalance:I

    const/4 v7, 0x0

    invoke-direct {p0, v6, v7}, Lcom/android/server/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 1961
    iget v6, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentNightColorbalance:I

    const/16 v7, 0x2b

    if-ne v6, v7, :cond_5

    .line 1962
    const/4 v4, 0x3

    iput v4, p0, Lcom/android/server/display/ColorBalanceService;->mNightModeOpingStage:I

    .line 1963
    const-string/jumbo v4, "ColorBalanceService"

    const-string/jumbo v6, "nightModeSwitch ON: 2 --> 3,default!"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1964
    iget-object v4, p0, Lcom/android/server/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setActiveMode(I)I

    .line 1965
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/display/ColorBalanceService;->setNightModeProp(Ljava/lang/Boolean;)I

    .line 1966
    const/16 v4, 0x2b

    iput v4, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentNightColorbalance:I

    .line 1970
    :goto_3
    const/16 v4, 0xa

    const/4 v6, 0x0

    const/16 v7, 0xf

    invoke-virtual {p0, v4, p2, v6, v7}, Lcom/android/server/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto/16 :goto_1

    .line 1968
    :cond_5
    iget v6, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentNightColorbalance:I

    iget v7, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentNightColorbalance:I

    const/16 v8, 0x2b

    if-le v7, v8, :cond_6

    const/4 v4, -0x1

    :cond_6
    add-int/2addr v4, v6

    iput v4, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentNightColorbalance:I

    goto :goto_3

    .line 1971
    :cond_7
    iget v4, p0, Lcom/android/server/display/ColorBalanceService;->mNightModeOpingStage:I

    if-ne v4, v9, :cond_a

    .line 1973
    iget v4, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentNightColorbalance:I

    if-ne v4, v1, :cond_8

    .line 1974
    const/4 v4, 0x4

    iput v4, p0, Lcom/android/server/display/ColorBalanceService;->mNightModeOpingStage:I

    .line 1975
    const-string/jumbo v4, "ColorBalanceService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "nightModeSwitch ON: 3 --> 4, SET Balance:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentNightColorbalance:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1980
    :goto_4
    iget v4, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentNightColorbalance:I

    const/4 v6, 0x0

    invoke-direct {p0, v4, v6}, Lcom/android/server/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 1981
    const/16 v4, 0xa

    const/4 v6, 0x0

    const/16 v7, 0xf

    invoke-virtual {p0, v4, p2, v6, v7}, Lcom/android/server/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto/16 :goto_1

    .line 1977
    :cond_8
    iget v4, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentNightColorbalance:I

    if-le v4, v1, :cond_9

    const/4 v0, -0x1

    .line 1978
    .local v0, "delta":I
    :goto_5
    iget v4, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentNightColorbalance:I

    add-int/2addr v4, v0

    iput v4, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentNightColorbalance:I

    goto :goto_4

    .line 1977
    .end local v0    # "delta":I
    :cond_9
    const/4 v0, 0x1

    .restart local v0    # "delta":I
    goto :goto_5

    .line 1982
    .end local v0    # "delta":I
    :cond_a
    iget v4, p0, Lcom/android/server/display/ColorBalanceService;->mNightModeOpingStage:I

    const/4 v6, 0x4

    if-ne v4, v6, :cond_0

    .line 1983
    iput v1, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentColorBalance:I

    .line 1984
    invoke-direct {p0}, Lcom/android/server/display/ColorBalanceService;->saveColorModeInternal()V

    .line 1985
    const/4 v4, 0x2

    iput v4, p0, Lcom/android/server/display/ColorBalanceService;->mModeStage:I

    .line 1986
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/android/server/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    .line 1987
    const-string/jumbo v4, "ColorBalanceService"

    const-string/jumbo v6, "nightModeSwitch ON done!"

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1990
    :cond_b
    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, p0, Lcom/android/server/display/ColorBalanceService;->mFactor:F

    .line 1991
    invoke-direct {p0}, Lcom/android/server/display/ColorBalanceService;->closeMatrix()V

    .line 1992
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/display/ColorBalanceService;->mIsReadingOrNightModeOpendLastSesson:Ljava/lang/Boolean;

    .line 1993
    const-string/jumbo v4, "ColorBalanceService"

    const-string/jumbo v6, "#2 night mode had been opened!"

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1994
    iget-object v4, p0, Lcom/android/server/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setActiveMode(I)I

    .line 1995
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/display/ColorBalanceService;->setProp(Ljava/lang/Boolean;)I

    .line 1996
    iput v1, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentNightColorbalance:I

    .line 1997
    iput v1, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentColorBalance:I

    .line 1998
    const/4 v4, 0x0

    invoke-direct {p0, v1, v4}, Lcom/android/server/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 1999
    const/4 v4, 0x2

    iput v4, p0, Lcom/android/server/display/ColorBalanceService;->mModeStage:I

    .line 2000
    invoke-direct {p0}, Lcom/android/server/display/ColorBalanceService;->saveColorModeInternal()V

    .line 2001
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/android/server/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    goto/16 :goto_1

    .line 2005
    :cond_c
    iget v6, p0, Lcom/android/server/display/ColorBalanceService;->mModeStage:I

    const/4 v7, 0x4

    if-eq v6, v7, :cond_0

    iget v6, p0, Lcom/android/server/display/ColorBalanceService;->mModeStage:I

    if-eqz v6, :cond_0

    .line 2006
    iget v6, p0, Lcom/android/server/display/ColorBalanceService;->mNightModeClosingStage:I

    if-nez v6, :cond_f

    .line 2007
    iget v4, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentNightColorbalance:I

    const/16 v6, 0x2b

    if-ne v6, v4, :cond_d

    .line 2008
    const/4 v4, 0x1

    iput v4, p0, Lcom/android/server/display/ColorBalanceService;->mNightModeClosingStage:I

    .line 2009
    const/16 v4, 0xa

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0, v4, p2, v6, v7}, Lcom/android/server/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    .line 2010
    const-string/jumbo v4, "ColorBalanceService"

    const-string/jumbo v6, "nightModeSwitch OFF 0 --> 1,colorBalance default!"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2012
    :cond_d
    iget v4, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentNightColorbalance:I

    const/16 v6, 0x2b

    if-le v4, v6, :cond_e

    const/4 v0, -0x1

    .line 2013
    .restart local v0    # "delta":I
    :goto_6
    iget v4, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentNightColorbalance:I

    add-int/2addr v4, v0

    iput v4, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentNightColorbalance:I

    .line 2014
    iget v4, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentNightColorbalance:I

    const/4 v6, 0x0

    invoke-direct {p0, v4, v6}, Lcom/android/server/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 2015
    const/16 v4, 0xa

    const/4 v6, 0x0

    const/16 v7, 0xf

    invoke-virtual {p0, v4, p2, v6, v7}, Lcom/android/server/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto/16 :goto_1

    .line 2012
    .end local v0    # "delta":I
    :cond_e
    const/4 v0, 0x1

    .restart local v0    # "delta":I
    goto :goto_6

    .line 2017
    .end local v0    # "delta":I
    :cond_f
    iget v6, p0, Lcom/android/server/display/ColorBalanceService;->mNightModeClosingStage:I

    if-ne v6, v4, :cond_11

    .line 2018
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/display/ColorBalanceService;->setNightModeProp(Ljava/lang/Boolean;)I

    move-result v2

    .line 2019
    .restart local v2    # "status":I
    if-eq v2, v9, :cond_10

    .line 2020
    invoke-direct {p0}, Lcom/android/server/display/ColorBalanceService;->revertStatus()V

    .line 2021
    const/4 v4, 0x3

    iput v4, p0, Lcom/android/server/display/ColorBalanceService;->mNightModeClosingStage:I

    .line 2022
    const-string/jumbo v4, "ColorBalanceService"

    const-string/jumbo v6, "nightModeSwitch OFF:1 --> 3, revertStatus"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2032
    :goto_7
    const/16 v4, 0xa

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0, v4, p2, v6, v7}, Lcom/android/server/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto/16 :goto_1

    .line 2024
    :cond_10
    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, p0, Lcom/android/server/display/ColorBalanceService;->mFactor:F

    .line 2025
    invoke-direct {p0}, Lcom/android/server/display/ColorBalanceService;->closeMatrix()V

    .line 2026
    iget-object v4, p0, Lcom/android/server/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setActiveMode(I)I

    .line 2028
    const/16 v4, 0x2b

    iput v4, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentNightColorbalance:I

    .line 2029
    const/4 v4, 0x2

    iput v4, p0, Lcom/android/server/display/ColorBalanceService;->mNightModeClosingStage:I

    .line 2030
    const-string/jumbo v4, "ColorBalanceService"

    const-string/jumbo v6, "nightModeSwitch OFF:1 --> 2,be status 3"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 2033
    .end local v2    # "status":I
    :cond_11
    iget v4, p0, Lcom/android/server/display/ColorBalanceService;->mNightModeClosingStage:I

    if-ne v4, v10, :cond_14

    .line 2034
    iget-object v4, p0, Lcom/android/server/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 2035
    const-string/jumbo v6, "oem_screen_better_value"

    const/16 v7, 0x39

    .line 2036
    const/4 v8, -0x2

    .line 2034
    invoke-static {v4, v6, v7, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    rsub-int/lit8 v3, v4, 0x64

    .line 2037
    .local v3, "value":I
    iget v4, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentNightColorbalance:I

    if-ne v4, v3, :cond_12

    .line 2038
    const/4 v4, 0x3

    iput v4, p0, Lcom/android/server/display/ColorBalanceService;->mNightModeClosingStage:I

    .line 2039
    const/16 v4, 0xa

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0, v4, p2, v6, v7}, Lcom/android/server/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    .line 2040
    const-string/jumbo v4, "ColorBalanceService"

    const-string/jumbo v6, "nightModeSwitch OFF:2 --> 3,status 3 done!"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2042
    :cond_12
    iget v4, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentNightColorbalance:I

    if-le v4, v3, :cond_13

    const/4 v0, -0x1

    .line 2043
    .restart local v0    # "delta":I
    :goto_8
    iget v4, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentNightColorbalance:I

    add-int/2addr v4, v0

    iput v4, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentNightColorbalance:I

    .line 2044
    iget v4, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentNightColorbalance:I

    const/4 v6, 0x0

    invoke-direct {p0, v4, v6}, Lcom/android/server/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 2045
    const/16 v4, 0xa

    const/4 v6, 0x0

    const/16 v7, 0xf

    invoke-virtual {p0, v4, p2, v6, v7}, Lcom/android/server/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto/16 :goto_1

    .line 2042
    .end local v0    # "delta":I
    :cond_13
    const/4 v0, 0x1

    .restart local v0    # "delta":I
    goto :goto_8

    .line 2047
    .end local v0    # "delta":I
    .end local v3    # "value":I
    :cond_14
    iget v4, p0, Lcom/android/server/display/ColorBalanceService;->mNightModeClosingStage:I

    if-ne v4, v9, :cond_0

    .line 2048
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/server/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    .line 2049
    const-string/jumbo v4, "ColorBalanceService"

    const-string/jumbo v6, "nightModeSwitch OFF done!"

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2050
    const/4 v4, 0x4

    iput v4, p0, Lcom/android/server/display/ColorBalanceService;->mModeStage:I

    .line 2051
    invoke-direct {p0}, Lcom/android/server/display/ColorBalanceService;->saveColorModeInternal()V

    .line 2052
    iget-object v4, p0, Lcom/android/server/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 2053
    const-string/jumbo v6, "oem_screen_better_value"

    const/16 v7, 0x39

    .line 2054
    const/4 v8, -0x2

    .line 2052
    invoke-static {v4, v6, v7, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    rsub-int/lit8 v4, v4, 0x64

    iput v4, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentColorBalance:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1
.end method

.method private onUserChanged(I)V
    .locals 5
    .param p1, "userHandle"    # I

    .prologue
    const/4 v3, 0x0

    const/16 v2, -0x2710

    .line 354
    invoke-virtual {p0}, Lcom/android/server/display/ColorBalanceService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 355
    .local v0, "cr":Landroid/content/ContentResolver;
    iget v1, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentUser:I

    if-eq v1, v2, :cond_0

    .line 356
    iget-object v1, p0, Lcom/android/server/display/ColorBalanceService;->mUserSetupObserver:Landroid/database/ContentObserver;

    if-eqz v1, :cond_2

    .line 357
    iget-object v1, p0, Lcom/android/server/display/ColorBalanceService;->mUserSetupObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 358
    iput-object v3, p0, Lcom/android/server/display/ColorBalanceService;->mUserSetupObserver:Landroid/database/ContentObserver;

    .line 364
    :cond_0
    :goto_0
    iput p1, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentUser:I

    .line 366
    iget v1, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentUser:I

    if-eq v1, v2, :cond_1

    .line 367
    iget v1, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentUser:I

    invoke-static {v0, v1}, Lcom/android/server/display/ColorBalanceService;->isUserSetupCompleted(Landroid/content/ContentResolver;I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 368
    new-instance v1, Lcom/android/server/display/ColorBalanceService$4;

    iget-object v2, p0, Lcom/android/server/display/ColorBalanceService;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2, v0}, Lcom/android/server/display/ColorBalanceService$4;-><init>(Lcom/android/server/display/ColorBalanceService;Landroid/os/Handler;Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/android/server/display/ColorBalanceService;->mUserSetupObserver:Landroid/database/ContentObserver;

    .line 382
    const-string/jumbo v1, "user_setup_complete"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 383
    iget-object v2, p0, Lcom/android/server/display/ColorBalanceService;->mUserSetupObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentUser:I

    const/4 v4, 0x0

    .line 382
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 353
    :cond_1
    :goto_1
    return-void

    .line 359
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/display/ColorBalanceService;->mBootCompleted:Z

    if-eqz v1, :cond_0

    .line 360
    invoke-direct {p0}, Lcom/android/server/display/ColorBalanceService;->tearDown()V

    goto :goto_0

    .line 384
    :cond_3
    iget-boolean v1, p0, Lcom/android/server/display/ColorBalanceService;->mBootCompleted:Z

    if-eqz v1, :cond_1

    .line 385
    invoke-direct {p0}, Lcom/android/server/display/ColorBalanceService;->setUp()V

    goto :goto_1
.end method

.method private oneplusSetColorBalance(II)V
    .locals 24
    .param p1, "iValue"    # I
    .param p2, "delta"    # I

    .prologue
    .line 2550
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 2551
    .local v4, "r":D
    const-wide/16 v6, 0x0

    .line 2552
    .local v6, "g":D
    const-wide/16 v8, 0x0

    .line 2553
    .local v8, "b":D
    move/from16 v0, p1

    int-to-double v0, v0

    move-wide/from16 v16, v0

    .line 2554
    .local v16, "value":D
    move/from16 v0, p2

    int-to-double v10, v0

    .line 2555
    .local v10, "dDelta":D
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    .line 2556
    .local v14, "factor":D
    const/16 v3, 0x64

    move/from16 v0, p1

    if-le v0, v3, :cond_0

    const/16 v3, -0x64

    move/from16 v0, p1

    if-ge v0, v3, :cond_0

    .line 2557
    const-string/jumbo v3, "ColorBalanceService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "oneplusSetColorBalance ERROR:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2558
    return-void

    .line 2560
    :cond_0
    const-wide v18, 0x4045800000000000L    # 43.0

    cmpg-double v3, v16, v18

    if-ltz v3, :cond_1

    const-wide v18, 0x4045800000000000L    # 43.0

    cmpl-double v3, v16, v18

    if-nez v3, :cond_5

    .line 2561
    :cond_1
    if-nez p2, :cond_3

    .line 2564
    const-wide v18, 0x3ff072b020c49ba6L    # 1.028

    mul-double v18, v18, v16

    mul-double v18, v18, v16

    mul-double v18, v18, v16

    const-wide v20, 0x3e7ad7f2a0000000L    # 1.0000000116860974E-7

    mul-double v18, v18, v20

    const-wide v20, -0x400522d0e5604189L    # -1.679

    mul-double v20, v20, v16

    mul-double v20, v20, v16

    const-wide v22, 0x3ee4f8b580000000L    # 9.999999747378752E-6

    mul-double v20, v20, v22

    add-double v18, v18, v20

    const-wide v20, 0x3f66feb4a66559f7L    # 0.002807

    mul-double v20, v20, v16

    add-double v18, v18, v20

    const-wide v20, 0x3fecb6ae7d566cf4L    # 0.8973

    add-double v6, v18, v20

    .line 2565
    const-wide v18, -0x4009b22d0e560419L    # -1.394

    mul-double v18, v18, v16

    mul-double v18, v18, v16

    mul-double v18, v18, v16

    const-wide v20, 0x3e7ad7f2a0000000L    # 1.0000000116860974E-7

    mul-double v18, v18, v20

    const-wide v20, -0x3fff9db22d0e5604L    # -2.048

    mul-double v20, v20, v16

    mul-double v20, v20, v16

    const-wide v22, 0x3ee4f8b580000000L    # 9.999999747378752E-6

    mul-double v20, v20, v22

    add-double v18, v18, v20

    const-wide v20, 0x3f7a5fc7e6b3fea0L    # 0.006439

    mul-double v20, v20, v16

    add-double v18, v18, v20

    const-wide v20, 0x3fe81a36e2eb1c43L    # 0.7532

    add-double v8, v18, v20

    .line 2568
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/display/ColorBalanceService;->mSDM:Landroid/hardware/display/SDManager;

    if-eqz v3, :cond_2

    .line 2569
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/display/ColorBalanceService;->mSDM:Landroid/hardware/display/SDManager;

    invoke-virtual/range {v3 .. v9}, Landroid/hardware/display/SDManager;->SetUsrColorBalanceConfig(DDD)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2549
    :cond_2
    :goto_0
    return-void

    .line 2570
    :catch_0
    move-exception v12

    .line 2571
    .local v12, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "ColorBalanceService"

    const-string/jumbo v18, "mSDM.SetUsrColorBalanceConfig error!"

    move-object/from16 v0, v18

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2575
    .end local v12    # "e":Ljava/lang/NullPointerException;
    :cond_3
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    const/4 v3, 0x5

    if-ge v13, v3, :cond_2

    .line 2576
    const-wide v18, 0x3fc999999999999aL    # 0.2

    sub-double v14, v14, v18

    .line 2577
    move/from16 v0, p1

    int-to-double v0, v0

    move-wide/from16 v18, v0

    mul-double v20, v10, v14

    sub-double v16, v18, v20

    .line 2580
    const-wide v18, 0x3ff072b020c49ba6L    # 1.028

    mul-double v18, v18, v16

    mul-double v18, v18, v16

    mul-double v18, v18, v16

    const-wide v20, 0x3e7ad7f2a0000000L    # 1.0000000116860974E-7

    mul-double v18, v18, v20

    const-wide v20, -0x400522d0e5604189L    # -1.679

    mul-double v20, v20, v16

    mul-double v20, v20, v16

    const-wide v22, 0x3ee4f8b580000000L    # 9.999999747378752E-6

    mul-double v20, v20, v22

    add-double v18, v18, v20

    const-wide v20, 0x3f66feb4a66559f7L    # 0.002807

    mul-double v20, v20, v16

    add-double v18, v18, v20

    const-wide v20, 0x3fecb6ae7d566cf4L    # 0.8973

    add-double v6, v18, v20

    .line 2581
    const-wide v18, -0x4009b22d0e560419L    # -1.394

    mul-double v18, v18, v16

    mul-double v18, v18, v16

    mul-double v18, v18, v16

    const-wide v20, 0x3e7ad7f2a0000000L    # 1.0000000116860974E-7

    mul-double v18, v18, v20

    const-wide v20, -0x3fff9db22d0e5604L    # -2.048

    mul-double v20, v20, v16

    mul-double v20, v20, v16

    const-wide v22, 0x3ee4f8b580000000L    # 9.999999747378752E-6

    mul-double v20, v20, v22

    add-double v18, v18, v20

    const-wide v20, 0x3f7a5fc7e6b3fea0L    # 0.006439

    mul-double v20, v20, v16

    add-double v18, v18, v20

    const-wide v20, 0x3fe81a36e2eb1c43L    # 0.7532

    add-double v8, v18, v20

    .line 2584
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/display/ColorBalanceService;->mSDM:Landroid/hardware/display/SDManager;

    if-eqz v3, :cond_4

    .line 2585
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/display/ColorBalanceService;->mSDM:Landroid/hardware/display/SDManager;

    invoke-virtual/range {v3 .. v9}, Landroid/hardware/display/SDManager;->SetUsrColorBalanceConfig(DDD)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2590
    :cond_4
    :goto_2
    const-wide/16 v18, 0xf

    :try_start_2
    invoke-static/range {v18 .. v19}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 2575
    :goto_3
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    .line 2586
    :catch_1
    move-exception v12

    .line 2587
    .restart local v12    # "e":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "ColorBalanceService"

    const-string/jumbo v18, "mSDM.SetUsrColorBalanceConfig error!"

    move-object/from16 v0, v18

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2591
    .end local v12    # "e":Ljava/lang/NullPointerException;
    :catch_2
    move-exception v2

    .line 2592
    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3

    .line 2597
    .end local v2    # "e":Ljava/lang/InterruptedException;
    .end local v13    # "i":I
    :cond_5
    if-nez p2, :cond_6

    .line 2600
    const-wide v18, -0x3ff6978d4fdf3b64L    # -3.176

    mul-double v18, v18, v16

    mul-double v18, v18, v16

    mul-double v18, v18, v16

    const-wide v20, 0x3e7ad7f2a0000000L    # 1.0000000116860974E-7

    mul-double v18, v18, v20

    const-wide v20, 0x3ff02d0e56041893L    # 1.011

    mul-double v20, v20, v16

    mul-double v20, v20, v16

    const-wide v22, 0x3f1a36e2e0000000L    # 9.999999747378752E-5

    mul-double v20, v20, v22

    add-double v18, v18, v20

    const-wide v20, -0x4075bea0ba1f4b1fL    # -0.01282

    mul-double v20, v20, v16

    add-double v18, v18, v20

    const-wide v20, 0x3ff63126e978d4feL    # 1.387

    add-double v4, v18, v20

    .line 2601
    const-wide v18, 0x3ff553f7ced91687L    # 1.333

    mul-double v18, v18, v16

    mul-double v18, v18, v16

    mul-double v18, v18, v16

    const-wide v20, 0x3eb0c6f7a0000000L    # 9.999999974752427E-7

    mul-double v18, v18, v20

    const-wide v20, -0x3fffeb851eb851ecL    # -2.01

    mul-double v20, v20, v16

    mul-double v20, v20, v16

    const-wide v22, 0x3f1a36e2e0000000L    # 9.999999747378752E-5

    mul-double v20, v20, v22

    add-double v18, v18, v20

    const-wide v20, 0x3f7c0767d34df04eL    # 0.006843

    mul-double v20, v20, v16

    add-double v18, v18, v20

    const-wide v20, 0x3feef765fd8adabaL    # 0.9677

    add-double v6, v18, v20

    .line 2602
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 2604
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/display/ColorBalanceService;->mSDM:Landroid/hardware/display/SDManager;

    if-eqz v3, :cond_2

    .line 2605
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/display/ColorBalanceService;->mSDM:Landroid/hardware/display/SDManager;

    invoke-virtual/range {v3 .. v9}, Landroid/hardware/display/SDManager;->SetUsrColorBalanceConfig(DDD)V
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 2606
    :catch_3
    move-exception v12

    .line 2607
    .restart local v12    # "e":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "ColorBalanceService"

    const-string/jumbo v18, "mSDM.SetUsrColorBalanceConfig error!"

    move-object/from16 v0, v18

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2610
    .end local v12    # "e":Ljava/lang/NullPointerException;
    :cond_6
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_4
    const/4 v3, 0x5

    if-ge v13, v3, :cond_2

    .line 2611
    const-wide v18, 0x3fc999999999999aL    # 0.2

    sub-double v14, v14, v18

    .line 2612
    move/from16 v0, p1

    int-to-double v0, v0

    move-wide/from16 v18, v0

    mul-double v20, v10, v14

    sub-double v16, v18, v20

    .line 2615
    const-wide v18, -0x3ff6978d4fdf3b64L    # -3.176

    mul-double v18, v18, v16

    mul-double v18, v18, v16

    mul-double v18, v18, v16

    const-wide v20, 0x3e7ad7f2a0000000L    # 1.0000000116860974E-7

    mul-double v18, v18, v20

    const-wide v20, 0x3ff02d0e56041893L    # 1.011

    mul-double v20, v20, v16

    mul-double v20, v20, v16

    const-wide v22, 0x3f1a36e2e0000000L    # 9.999999747378752E-5

    mul-double v20, v20, v22

    add-double v18, v18, v20

    const-wide v20, -0x4075bea0ba1f4b1fL    # -0.01282

    mul-double v20, v20, v16

    add-double v18, v18, v20

    const-wide v20, 0x3ff63126e978d4feL    # 1.387

    add-double v4, v18, v20

    .line 2616
    const-wide v18, 0x3ff553f7ced91687L    # 1.333

    mul-double v18, v18, v16

    mul-double v18, v18, v16

    mul-double v18, v18, v16

    const-wide v20, 0x3eb0c6f7a0000000L    # 9.999999974752427E-7

    mul-double v18, v18, v20

    const-wide v20, -0x3fffeb851eb851ecL    # -2.01

    mul-double v20, v20, v16

    mul-double v20, v20, v16

    const-wide v22, 0x3f1a36e2e0000000L    # 9.999999747378752E-5

    mul-double v20, v20, v22

    add-double v18, v18, v20

    const-wide v20, 0x3f7c0767d34df04eL    # 0.006843

    mul-double v20, v20, v16

    add-double v18, v18, v20

    const-wide v20, 0x3feef765fd8adabaL    # 0.9677

    add-double v6, v18, v20

    .line 2617
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 2619
    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/display/ColorBalanceService;->mSDM:Landroid/hardware/display/SDManager;

    if-eqz v3, :cond_7

    .line 2620
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/display/ColorBalanceService;->mSDM:Landroid/hardware/display/SDManager;

    invoke-virtual/range {v3 .. v9}, Landroid/hardware/display/SDManager;->SetUsrColorBalanceConfig(DDD)V
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_4

    .line 2625
    :cond_7
    :goto_5
    const-wide/16 v18, 0xf

    :try_start_5
    invoke-static/range {v18 .. v19}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_5

    .line 2610
    :goto_6
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_4

    .line 2621
    :catch_4
    move-exception v12

    .line 2622
    .restart local v12    # "e":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "ColorBalanceService"

    const-string/jumbo v18, "mSDM.SetUsrColorBalanceConfig error!"

    move-object/from16 v0, v18

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 2626
    .end local v12    # "e":Ljava/lang/NullPointerException;
    :catch_5
    move-exception v2

    .line 2627
    .restart local v2    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_6
.end method

.method private opSetColorBalance(II)V
    .locals 0
    .param p1, "value"    # I
    .param p2, "delta"    # I

    .prologue
    .line 588
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/ColorBalanceService;->oneplusSetColorBalance(II)V

    .line 586
    return-void
.end method

.method private processEnvironmentChange()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1591
    iget-object v4, p0, Lcom/android/server/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1592
    iget v4, p0, Lcom/android/server/display/ColorBalanceService;->mGeneration:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/display/ColorBalanceService;->mGeneration:I

    .line 1593
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1594
    .local v1, "msg":Landroid/os/Message;
    const/16 v4, 0x8

    iput v4, v1, Landroid/os/Message;->what:I

    .line 1595
    iget v4, p0, Lcom/android/server/display/ColorBalanceService;->mStableColor:I

    invoke-direct {p0, v4}, Lcom/android/server/display/ColorBalanceService;->getBalanceByTemprature(I)I

    move-result v4

    iput v4, v1, Landroid/os/Message;->arg1:I

    .line 1596
    iget v4, p0, Lcom/android/server/display/ColorBalanceService;->mGeneration:I

    iput v4, v1, Landroid/os/Message;->arg2:I

    .line 1597
    const-string/jumbo v4, "ColorBalanceService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mCurrentNightColorbalance:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentNightColorbalance:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " target:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1598
    iget v4, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentNightColorbalance:I

    iget v5, v1, Landroid/os/Message;->arg1:I

    if-eq v4, v5, :cond_0

    .line 1599
    iget v4, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentNightColorbalance:I

    iget v5, v1, Landroid/os/Message;->arg1:I

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    div-int v4, v7, v4

    int-to-long v2, v4

    .line 1600
    .local v2, "delay":J
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1601
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v4, "delay"

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1602
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1603
    iget-object v4, p0, Lcom/android/server/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/display/ColorBalanceService$CMH;

    if-eqz v4, :cond_0

    .line 1604
    iget-object v4, p0, Lcom/android/server/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/display/ColorBalanceService$CMH;

    invoke-virtual {v4, v1, v2, v3}, Lcom/android/server/display/ColorBalanceService$CMH;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1605
    const-string/jumbo v4, "ColorBalanceService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mCurrentNightColorbalance:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentNightColorbalance:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " target:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1590
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "delay":J
    :cond_0
    :goto_0
    return-void

    .line 1608
    :cond_1
    iget-object v4, p0, Lcom/android/server/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1609
    iget v4, p0, Lcom/android/server/display/ColorBalanceService;->mGeneration:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/display/ColorBalanceService;->mGeneration:I

    .line 1610
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1611
    .restart local v1    # "msg":Landroid/os/Message;
    const/16 v4, 0x9

    iput v4, v1, Landroid/os/Message;->what:I

    .line 1612
    iget v4, p0, Lcom/android/server/display/ColorBalanceService;->mStableColor:I

    invoke-direct {p0, v4}, Lcom/android/server/display/ColorBalanceService;->getBalanceByTemprature(I)I

    move-result v4

    iput v4, v1, Landroid/os/Message;->arg1:I

    .line 1613
    iget v4, p0, Lcom/android/server/display/ColorBalanceService;->mGeneration:I

    iput v4, v1, Landroid/os/Message;->arg2:I

    .line 1614
    const-string/jumbo v4, "ColorBalanceService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mCurrentReadingColorbalance:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " target:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1615
    iget v4, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    iget v5, v1, Landroid/os/Message;->arg1:I

    if-eq v4, v5, :cond_0

    .line 1616
    iget v4, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    iget v5, v1, Landroid/os/Message;->arg1:I

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    div-int v4, v7, v4

    int-to-long v2, v4

    .line 1617
    .restart local v2    # "delay":J
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1618
    .restart local v0    # "bundle":Landroid/os/Bundle;
    const-string/jumbo v4, "delay"

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1619
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1620
    iget-object v4, p0, Lcom/android/server/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/display/ColorBalanceService$CMH;

    if-eqz v4, :cond_0

    .line 1621
    iget-object v4, p0, Lcom/android/server/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/display/ColorBalanceService$CMH;

    invoke-virtual {v4, v1, v2, v3}, Lcom/android/server/display/ColorBalanceService$CMH;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1622
    const-string/jumbo v4, "ColorBalanceService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mCurrentReadingColorbalance:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " target:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " delay:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private processEnvironmentColorChangeAtNightMode(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2635
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v8

    const-string/jumbo v9, "delay"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 2636
    .local v2, "delay":J
    iget v5, p1, Landroid/os/Message;->arg2:I

    .line 2637
    .local v5, "generation":I
    iget v7, p1, Landroid/os/Message;->arg1:I

    .line 2639
    .local v7, "target":I
    iget-object v8, p0, Lcom/android/server/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 2640
    const-string/jumbo v9, "oem_nightmode_progress_status"

    const/16 v10, 0x67

    const/4 v11, -0x2

    .line 2639
    invoke-static {v8, v9, v10, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    .line 2638
    rsub-int v8, v8, 0x84

    add-int/lit8 v1, v8, -0x5a

    .line 2642
    .local v1, "currentSeekBar":I
    iget v8, p0, Lcom/android/server/display/ColorBalanceService;->mGeneration:I

    if-ne v5, v8, :cond_0

    iget v8, p0, Lcom/android/server/display/ColorBalanceService;->mPretNightColorbalance:I

    if-ne v1, v8, :cond_0

    .line 2643
    iget v8, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentNightColorbalance:I

    if-le v8, v7, :cond_1

    const/4 v4, -0x1

    .line 2644
    .local v4, "delta":I
    :goto_0
    iget v8, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentNightColorbalance:I

    add-int/2addr v8, v4

    iput v8, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentNightColorbalance:I

    iput v8, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentNightColorbalance:I

    .line 2645
    iget v8, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentNightColorbalance:I

    invoke-direct {p0, v8, v4}, Lcom/android/server/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 2646
    iget v8, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentNightColorbalance:I

    iget v9, p1, Landroid/os/Message;->arg1:I

    if-eq v8, v9, :cond_2

    .line 2647
    iget-object v8, p0, Lcom/android/server/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/display/ColorBalanceService$CMH;

    if-eqz v8, :cond_0

    .line 2648
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v6

    .line 2649
    .local v6, "msg2":Landroid/os/Message;
    iget v8, p1, Landroid/os/Message;->what:I

    iput v8, v6, Landroid/os/Message;->what:I

    .line 2650
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2651
    .local v0, "bundle":Landroid/os/Bundle;
    iget v8, p1, Landroid/os/Message;->arg1:I

    iput v8, v6, Landroid/os/Message;->arg1:I

    .line 2652
    iget v8, p1, Landroid/os/Message;->arg2:I

    iput v8, v6, Landroid/os/Message;->arg2:I

    .line 2653
    const-string/jumbo v8, "delay"

    invoke-virtual {v0, v8, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2654
    invoke-virtual {v6, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2655
    iget-object v8, p0, Lcom/android/server/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/display/ColorBalanceService$CMH;

    invoke-virtual {v8, v6, v2, v3}, Lcom/android/server/display/ColorBalanceService$CMH;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2661
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v4    # "delta":I
    .end local v6    # "msg2":Landroid/os/Message;
    :cond_0
    :goto_1
    iput v1, p0, Lcom/android/server/display/ColorBalanceService;->mPretNightColorbalance:I

    .line 2634
    return-void

    .line 2643
    :cond_1
    const/4 v4, 0x1

    .restart local v4    # "delta":I
    goto :goto_0

    .line 2658
    :cond_2
    const-string/jumbo v8, "ColorBalanceService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "shading done,mCurrentNightColorbalance:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentNightColorbalance:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " target:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private processEnvironmentColorChangeAtReadingMode(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2665
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    const-string/jumbo v8, "delay"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 2666
    .local v2, "delay":J
    iget v4, p1, Landroid/os/Message;->arg2:I

    .line 2667
    .local v4, "generation":I
    iget v6, p1, Landroid/os/Message;->arg1:I

    .line 2669
    .local v6, "target":I
    iget v7, p0, Lcom/android/server/display/ColorBalanceService;->mGeneration:I

    if-ne v4, v7, :cond_0

    .line 2670
    iget v7, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    if-le v7, v6, :cond_1

    const/4 v1, -0x1

    .line 2671
    .local v1, "delta":I
    :goto_0
    iget v7, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    add-int/2addr v7, v1

    iput v7, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    .line 2672
    iget v7, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    invoke-direct {p0, v7, v1}, Lcom/android/server/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 2674
    iget v7, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    if-eq v7, v6, :cond_2

    .line 2675
    iget-object v7, p0, Lcom/android/server/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/display/ColorBalanceService$CMH;

    if-eqz v7, :cond_0

    .line 2676
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v5

    .line 2677
    .local v5, "msg2":Landroid/os/Message;
    iget v7, p1, Landroid/os/Message;->what:I

    iput v7, v5, Landroid/os/Message;->what:I

    .line 2678
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2679
    .local v0, "bundle":Landroid/os/Bundle;
    iget v7, p1, Landroid/os/Message;->arg1:I

    iput v7, v5, Landroid/os/Message;->arg1:I

    .line 2680
    iget v7, p1, Landroid/os/Message;->arg2:I

    iput v7, v5, Landroid/os/Message;->arg2:I

    .line 2681
    const-string/jumbo v7, "delay"

    invoke-virtual {v0, v7, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2682
    invoke-virtual {v5, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2683
    iget-object v7, p0, Lcom/android/server/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/display/ColorBalanceService$CMH;

    invoke-virtual {v7, v5, v2, v3}, Lcom/android/server/display/ColorBalanceService$CMH;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2664
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "delta":I
    .end local v5    # "msg2":Landroid/os/Message;
    :cond_0
    :goto_1
    return-void

    .line 2670
    :cond_1
    const/4 v1, 0x1

    .restart local v1    # "delta":I
    goto :goto_0

    .line 2686
    :cond_2
    const-string/jumbo v7, "ColorBalanceService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "shading done,mCurrentReadingColorbalance:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " target:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private processScreenOn(Z)V
    .locals 4
    .param p1, "on"    # Z

    .prologue
    .line 2535
    iget-object v1, p0, Lcom/android/server/display/ColorBalanceService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2536
    :try_start_0
    const-string/jumbo v0, "ColorBalanceService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "processScreenOn:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2537
    if-eqz p1, :cond_3

    .line 2538
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2540
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    monitor-exit v1

    .line 2534
    return-void

    .line 2543
    :cond_3
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0, v0}, Lcom/android/server/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2535
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private processSetColorBalance(I)V
    .locals 3
    .param p1, "setColorBalance"    # I

    .prologue
    .line 2715
    iget v0, p0, Lcom/android/server/display/ColorBalanceService;->mStartSetCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/display/ColorBalanceService;->mStartSetCount:I

    .line 2716
    const-string/jumbo v0, "ColorBalanceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MSG_SET_COLORBALANCE:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentColorBalance:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " --> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mStartSetCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/ColorBalanceService;->mStartSetCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2717
    iget v0, p0, Lcom/android/server/display/ColorBalanceService;->mStartSetCount:I

    if-nez v0, :cond_0

    .line 2718
    iget v0, p0, Lcom/android/server/display/ColorBalanceService;->mModeStage:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 2719
    iget v0, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentColorBalance:I

    invoke-direct {p0, v0, p1}, Lcom/android/server/display/ColorBalanceService;->shading(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentColorBalance:I

    iput v0, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentNightColorbalance:I

    .line 2708
    :cond_0
    return-void
.end method

.method private readingModeSwitch(ZII)V
    .locals 10
    .param p1, "isActivite"    # Z
    .param p2, "generation"    # I
    .param p3, "arg2"    # I

    .prologue
    const/4 v8, 0x6

    const/16 v7, 0x4e20

    const/4 v3, 0x1

    .line 2064
    iget-object v5, p0, Lcom/android/server/display/ColorBalanceService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 2065
    :try_start_0
    iget-object v4, p0, Lcom/android/server/display/ColorBalanceService;->mIsScreenOn:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_2

    .line 2066
    iget v3, p0, Lcom/android/server/display/ColorBalanceService;->mGeneration:I

    if-ne v3, p2, :cond_0

    .line 2067
    iget v3, p0, Lcom/android/server/display/ColorBalanceService;->mGeneration:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/display/ColorBalanceService;->mGeneration:I

    .line 2068
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/server/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    .line 2069
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/display/ColorBalanceService;->mIsReadingOrNightModeOpendLastSesson:Ljava/lang/Boolean;

    .line 2070
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Lcom/android/server/display/ColorBalanceService;->mFactor:F

    .line 2071
    invoke-direct {p0}, Lcom/android/server/display/ColorBalanceService;->closeMatrix()V

    .line 2072
    iget-object v3, p0, Lcom/android/server/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2073
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/display/ColorBalanceService;->setNightModeProp(Ljava/lang/Boolean;)I

    .line 2074
    iget-object v3, p0, Lcom/android/server/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setActiveMode(I)I

    .line 2075
    const/16 v3, 0x1a90

    iput v3, p0, Lcom/android/server/display/ColorBalanceService;->mStableColor:I

    .line 2076
    const/16 v3, -0x14

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/android/server/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 2077
    const-string/jumbo v3, "ColorBalanceService"

    const-string/jumbo v4, "Screen off,readingModeSwitch ON done!"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2078
    const v3, 0x9c40

    iput v3, p0, Lcom/android/server/display/ColorBalanceService;->mReadingModeOpingStage:I

    .line 2079
    const/4 v3, 0x6

    iput v3, p0, Lcom/android/server/display/ColorBalanceService;->mModeStage:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v5

    .line 2062
    return-void

    .line 2082
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/display/ColorBalanceService;->revertStatus()V

    .line 2083
    const/16 v3, 0x4e20

    iput v3, p0, Lcom/android/server/display/ColorBalanceService;->mReadingModeClosingStage:I

    .line 2084
    const/16 v3, 0x8

    iput v3, p0, Lcom/android/server/display/ColorBalanceService;->mModeStage:I

    .line 2085
    const-string/jumbo v3, "ColorBalanceService"

    const-string/jumbo v4, "Screen off,readingModeSwitch OFF done!"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2064
    :catchall_0
    move-exception v3

    monitor-exit v5

    throw v3

    .line 2089
    :cond_2
    :try_start_2
    iget v4, p0, Lcom/android/server/display/ColorBalanceService;->mGeneration:I

    if-ne v4, p2, :cond_0

    .line 2090
    iget-object v4, p0, Lcom/android/server/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_17

    .line 2091
    iget v4, p0, Lcom/android/server/display/ColorBalanceService;->mReadingModeClosingStage:I

    const/16 v6, 0x1f4

    if-ne v4, v6, :cond_3

    .line 2092
    const/16 v3, 0x4e20

    iput v3, p0, Lcom/android/server/display/ColorBalanceService;->mReadingModeClosingStage:I

    .line 2093
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Lcom/android/server/display/ColorBalanceService;->mFactor:F

    .line 2094
    invoke-direct {p0}, Lcom/android/server/display/ColorBalanceService;->closeMatrix()V

    .line 2095
    const v3, 0x9c40

    iput v3, p0, Lcom/android/server/display/ColorBalanceService;->mReadingModeOpingStage:I

    .line 2096
    const/4 v3, 0x6

    iput v3, p0, Lcom/android/server/display/ColorBalanceService;->mModeStage:I

    .line 2097
    const-string/jumbo v3, "ColorBalanceService"

    const-string/jumbo v4, "readingModeSwitch ON, mReadingModeClosingStage 500,to be on done!"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v5

    .line 2098
    return-void

    .line 2100
    :cond_3
    :try_start_3
    iget v4, p0, Lcom/android/server/display/ColorBalanceService;->mModeStage:I

    if-eq v4, v8, :cond_0

    .line 2101
    iget-object v4, p0, Lcom/android/server/display/ColorBalanceService;->mIsReadingOrNightModeOpendLastSesson:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_16

    .line 2102
    iget v4, p0, Lcom/android/server/display/ColorBalanceService;->mReadingModeOpingStage:I

    if-nez v4, :cond_5

    .line 2103
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/server/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    .line 2104
    iget-object v3, p0, Lcom/android/server/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 2105
    const-string/jumbo v4, "screen_color_mode_settings_value"

    const/4 v6, 0x1

    const/4 v7, -0x2

    .line 2104
    invoke-static {v3, v4, v6, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 2106
    .local v0, "status":I
    const/4 v3, 0x3

    if-eq v0, v3, :cond_4

    .line 2107
    const/16 v3, 0x3a98

    iput v3, p0, Lcom/android/server/display/ColorBalanceService;->mReadingModeOpingStage:I

    .line 2108
    const/16 v3, 0xb

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0, v3, p2, v4, v6}, Lcom/android/server/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    .line 2109
    const-string/jumbo v3, "ColorBalanceService"

    const-string/jumbo v4, "readingModeSwitch ON:stage 0 --> 15000,colorBalance default"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2111
    :cond_4
    iget-object v3, p0, Lcom/android/server/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 2112
    const-string/jumbo v4, "oem_screen_better_value"

    const/16 v6, 0x39

    .line 2113
    const/4 v7, -0x2

    .line 2111
    invoke-static {v3, v4, v6, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x64

    iput v3, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    .line 2114
    iget v3, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/android/server/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 2115
    const/16 v3, 0x2710

    iput v3, p0, Lcom/android/server/display/ColorBalanceService;->mReadingModeOpingStage:I

    .line 2116
    const/16 v3, 0xb

    const/4 v4, 0x0

    const/4 v6, 0x5

    invoke-virtual {p0, v3, p2, v4, v6}, Lcom/android/server/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    .line 2117
    const-string/jumbo v3, "ColorBalanceService"

    const-string/jumbo v4, "readingModeSwitch ON:stage 0 --> 10000,status 3,to be default"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2119
    .end local v0    # "status":I
    :cond_5
    iget v4, p0, Lcom/android/server/display/ColorBalanceService;->mReadingModeOpingStage:I

    const/16 v6, 0x2710

    if-ne v4, v6, :cond_8

    .line 2120
    iget v4, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    const/16 v6, 0x2b

    if-ne v4, v6, :cond_6

    .line 2121
    const/16 v3, 0x3a98

    iput v3, p0, Lcom/android/server/display/ColorBalanceService;->mReadingModeOpingStage:I

    .line 2122
    const/16 v3, 0xb

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0, v3, p2, v4, v6}, Lcom/android/server/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    .line 2123
    const-string/jumbo v3, "ColorBalanceService"

    const-string/jumbo v4, "readingModeSwitch ON:,10000 --> 15000, default now"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2125
    :cond_6
    iget v4, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    iget v6, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    const/16 v7, 0x2b

    if-le v6, v7, :cond_7

    const/4 v3, -0x1

    :cond_7
    add-int/2addr v3, v4

    iput v3, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    .line 2126
    iget v3, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/android/server/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 2127
    const/16 v3, 0xb

    const/4 v4, 0x0

    const/4 v6, 0x7

    invoke-virtual {p0, v3, p2, v4, v6}, Lcom/android/server/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto/16 :goto_0

    .line 2130
    :cond_8
    iget v4, p0, Lcom/android/server/display/ColorBalanceService;->mReadingModeOpingStage:I

    const/16 v6, 0x3a98

    if-ne v4, v6, :cond_11

    .line 2131
    iget v3, p0, Lcom/android/server/display/ColorBalanceService;->mFactor:F

    const v4, 0x3a83126f    # 0.001f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_b

    .line 2132
    const/16 v3, 0x4e20

    iput v3, p0, Lcom/android/server/display/ColorBalanceService;->mReadingModeOpingStage:I

    .line 2133
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/display/ColorBalanceService;->setNightModeProp(Ljava/lang/Boolean;)I

    .line 2134
    iget-object v3, p0, Lcom/android/server/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setActiveMode(I)I

    .line 2135
    const/16 v3, 0x2b

    iput v3, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    .line 2137
    iget v3, p0, Lcom/android/server/display/ColorBalanceService;->mStableColor:I

    const/16 v4, 0x7d0

    if-le v3, v4, :cond_9

    iget v3, p0, Lcom/android/server/display/ColorBalanceService;->mStableColor:I

    const/16 v4, 0x1f40

    if-ge v3, v4, :cond_9

    .line 2138
    iget v3, p0, Lcom/android/server/display/ColorBalanceService;->mStableColor:I

    invoke-direct {p0, v3}, Lcom/android/server/display/ColorBalanceService;->getBalanceByTemprature(I)I

    move-result v1

    .line 2143
    .local v1, "target":I
    :goto_1
    const-string/jumbo v3, "ColorBalanceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mStableColor:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, Lcom/android/server/display/ColorBalanceService;->mStableColor:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " mCurrentSrgbSensorAverageColor:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentSrgbSensorAverageColor:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2144
    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-virtual {p0, v3, p2, v1, v4}, Lcom/android/server/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    .line 2145
    const-string/jumbo v3, "ColorBalanceService"

    const-string/jumbo v4, "readingModeSwitch ON:,15000 --> 20000, B & W now!"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2139
    .end local v1    # "target":I
    :cond_9
    iget v3, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentSrgbSensorAverageColor:I

    const/16 v4, 0x7d0

    if-le v3, v4, :cond_a

    iget v3, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentSrgbSensorAverageColor:I

    const/16 v4, 0x1f40

    if-ge v3, v4, :cond_a

    .line 2140
    iget v3, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentSrgbSensorAverageColor:I

    invoke-direct {p0, v3}, Lcom/android/server/display/ColorBalanceService;->getBalanceByTemprature(I)I

    move-result v1

    .restart local v1    # "target":I
    goto :goto_1

    .line 2142
    .end local v1    # "target":I
    :cond_a
    const/16 v1, -0x14

    .restart local v1    # "target":I
    goto :goto_1

    .line 2147
    .end local v1    # "target":I
    :cond_b
    iget v3, p0, Lcom/android/server/display/ColorBalanceService;->mFactor:F

    float-to-double v6, v3

    const-wide v8, 0x3fefff2e48e8a71eL    # 0.9999

    cmpl-double v3, v6, v8

    if-lez v3, :cond_e

    .line 2148
    const-string/jumbo v3, "ColorBalanceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "readingModeSwitch ON:mFactor:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, Lcom/android/server/display/ColorBalanceService;->mFactor:F

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2150
    iget-object v3, p0, Lcom/android/server/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setActiveMode(I)I

    .line 2166
    :cond_c
    :goto_2
    iget v3, p0, Lcom/android/server/display/ColorBalanceService;->mFactor:F

    const v4, 0x3c4ccccd    # 0.0125f

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/android/server/display/ColorBalanceService;->mFactor:F

    .line 2167
    iget v3, p0, Lcom/android/server/display/ColorBalanceService;->mFactor:F

    const v4, 0x3cf5c28f    # 0.03f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_d

    .line 2168
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/display/ColorBalanceService;->mFactor:F

    .line 2170
    :cond_d
    iget v3, p0, Lcom/android/server/display/ColorBalanceService;->mFactor:F

    invoke-direct {p0, v3}, Lcom/android/server/display/ColorBalanceService;->setColorMartix(F)V

    .line 2171
    invoke-direct {p0}, Lcom/android/server/display/ColorBalanceService;->setDTMColorMatrix()V

    .line 2172
    const/16 v3, 0xb

    const/4 v4, 0x0

    const/16 v6, 0x10

    invoke-virtual {p0, v3, p2, v4, v6}, Lcom/android/server/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto/16 :goto_0

    .line 2152
    :cond_e
    iget v3, p0, Lcom/android/server/display/ColorBalanceService;->mFactor:F

    const v4, 0x3f39930c    # 0.7249f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_f

    iget v3, p0, Lcom/android/server/display/ColorBalanceService;->mFactor:F

    const v4, 0x3f39a027    # 0.7251f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_f

    .line 2153
    const-string/jumbo v3, "ColorBalanceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "readingModeSwitch ON:mFactor:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, Lcom/android/server/display/ColorBalanceService;->mFactor:F

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2154
    iget-object v3, p0, Lcom/android/server/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setActiveMode(I)I

    .line 2155
    iget-object v3, p0, Lcom/android/server/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setActiveMode(I)I

    goto :goto_2

    .line 2157
    :cond_f
    iget v3, p0, Lcom/android/server/display/ColorBalanceService;->mFactor:F

    const v4, 0x3efae148    # 0.49f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_10

    iget v3, p0, Lcom/android/server/display/ColorBalanceService;->mFactor:F

    const v4, 0x3f028f5c    # 0.51f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_10

    .line 2158
    iget-object v3, p0, Lcom/android/server/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setActiveMode(I)I

    .line 2159
    const-string/jumbo v3, "ColorBalanceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "readingModeSwitch ON:mFactor:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, Lcom/android/server/display/ColorBalanceService;->mFactor:F

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2160
    :cond_10
    iget v3, p0, Lcom/android/server/display/ColorBalanceService;->mFactor:F

    const v4, 0x3e7ef9db    # 0.249f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_c

    iget v3, p0, Lcom/android/server/display/ColorBalanceService;->mFactor:F

    const v4, 0x3e808312    # 0.251f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_c

    .line 2161
    iget-object v3, p0, Lcom/android/server/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setActiveMode(I)I

    .line 2162
    iget-object v3, p0, Lcom/android/server/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setActiveMode(I)I

    .line 2164
    const-string/jumbo v3, "ColorBalanceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "readingModeSwitch ON:mFactor:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, Lcom/android/server/display/ColorBalanceService;->mFactor:F

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2174
    :cond_11
    iget v4, p0, Lcom/android/server/display/ColorBalanceService;->mReadingModeOpingStage:I

    if-ne v4, v7, :cond_14

    .line 2175
    iget v4, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    if-ne v4, p3, :cond_12

    .line 2176
    invoke-direct {p0}, Lcom/android/server/display/ColorBalanceService;->saveColorModeInternal()V

    .line 2177
    const/16 v3, 0x7530

    iput v3, p0, Lcom/android/server/display/ColorBalanceService;->mReadingModeOpingStage:I

    .line 2178
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/display/ColorBalanceService;->mFactor:F

    .line 2179
    iput p3, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    .line 2181
    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-virtual {p0, v3, p2, p3, v4}, Lcom/android/server/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    .line 2182
    const-string/jumbo v3, "ColorBalanceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "readingModeSwitch ON:,2000 --> 30000  reading colorBalance:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2184
    :cond_12
    iget v4, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    iget v6, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    if-le v6, p3, :cond_13

    const/4 v3, -0x1

    :cond_13
    add-int/2addr v3, v4

    iput v3, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    .line 2185
    iget v3, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/android/server/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 2186
    const/16 v3, 0xb

    const/4 v4, 0x7

    invoke-virtual {p0, v3, p2, p3, v4}, Lcom/android/server/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto/16 :goto_0

    .line 2188
    :cond_14
    iget v3, p0, Lcom/android/server/display/ColorBalanceService;->mReadingModeOpingStage:I

    const/16 v4, 0x7530

    if-ne v3, v4, :cond_0

    .line 2189
    iget v3, p0, Lcom/android/server/display/ColorBalanceService;->mFactor:F

    float-to-double v6, v3

    const-wide v8, 0x3fefff2e48e8a71eL    # 0.9999

    cmpl-double v3, v6, v8

    if-lez v3, :cond_15

    .line 2190
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Lcom/android/server/display/ColorBalanceService;->mFactor:F

    .line 2191
    invoke-direct {p0}, Lcom/android/server/display/ColorBalanceService;->closeMatrix()V

    .line 2192
    const v3, 0x9c40

    iput v3, p0, Lcom/android/server/display/ColorBalanceService;->mReadingModeOpingStage:I

    .line 2193
    const/4 v3, 0x6

    iput v3, p0, Lcom/android/server/display/ColorBalanceService;->mModeStage:I

    .line 2194
    const-string/jumbo v3, "ColorBalanceService"

    const-string/jumbo v4, "readingModeSwitch ON Done(30000 -> 40000)"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2196
    :cond_15
    iget v3, p0, Lcom/android/server/display/ColorBalanceService;->mFactor:F

    const v4, 0x3ccccccd    # 0.025f

    add-float/2addr v3, v4

    iput v3, p0, Lcom/android/server/display/ColorBalanceService;->mFactor:F

    .line 2197
    iget v3, p0, Lcom/android/server/display/ColorBalanceService;->mFactor:F

    invoke-direct {p0, v3}, Lcom/android/server/display/ColorBalanceService;->setColorMartix(F)V

    .line 2198
    invoke-direct {p0}, Lcom/android/server/display/ColorBalanceService;->setDTMColorMatrix()V

    .line 2199
    const/16 v3, 0xb

    const/4 v4, 0x0

    const/16 v6, 0x10

    invoke-virtual {p0, v3, p2, v4, v6}, Lcom/android/server/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto/16 :goto_0

    .line 2203
    :cond_16
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Lcom/android/server/display/ColorBalanceService;->mFactor:F

    .line 2204
    invoke-direct {p0}, Lcom/android/server/display/ColorBalanceService;->closeMatrix()V

    .line 2205
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/display/ColorBalanceService;->setProp(Ljava/lang/Boolean;)I

    .line 2206
    iget-object v3, p0, Lcom/android/server/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setActiveMode(I)I

    .line 2207
    const/16 v3, 0x1a90

    iput v3, p0, Lcom/android/server/display/ColorBalanceService;->mStableColor:I

    .line 2208
    const/16 v3, -0x14

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/android/server/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 2209
    const-string/jumbo v3, "ColorBalanceService"

    const-string/jumbo v4, "readingModeSwitch ON done!"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2210
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/display/ColorBalanceService;->mIsReadingOrNightModeOpendLastSesson:Ljava/lang/Boolean;

    .line 2211
    const/4 v3, 0x6

    iput v3, p0, Lcom/android/server/display/ColorBalanceService;->mModeStage:I

    .line 2212
    const v3, 0x9c40

    iput v3, p0, Lcom/android/server/display/ColorBalanceService;->mReadingModeOpingStage:I

    .line 2213
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/server/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    goto/16 :goto_0

    .line 2217
    :cond_17
    iget v4, p0, Lcom/android/server/display/ColorBalanceService;->mModeStage:I

    const/16 v6, 0x8

    if-eq v4, v6, :cond_0

    iget v4, p0, Lcom/android/server/display/ColorBalanceService;->mModeStage:I

    if-eqz v4, :cond_0

    .line 2218
    iget v4, p0, Lcom/android/server/display/ColorBalanceService;->mReadingModeClosingStage:I

    if-eqz v4, :cond_18

    iget v4, p0, Lcom/android/server/display/ColorBalanceService;->mReadingModeClosingStage:I

    const/16 v6, 0x1f4

    if-ne v4, v6, :cond_1c

    .line 2219
    :cond_18
    iget v3, p0, Lcom/android/server/display/ColorBalanceService;->mFactor:F

    float-to-double v6, v3

    const-wide v8, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v3, v6, v8

    if-gez v3, :cond_1b

    .line 2220
    iget-object v3, p0, Lcom/android/server/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setActiveMode(I)I

    .line 2221
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/display/ColorBalanceService;->mFactor:F

    .line 2222
    const/16 v3, 0x3e8

    iput v3, p0, Lcom/android/server/display/ColorBalanceService;->mReadingModeClosingStage:I

    .line 2223
    const/16 v1, 0x2b

    .line 2224
    .restart local v1    # "target":I
    iget-object v3, p0, Lcom/android/server/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 2225
    const-string/jumbo v4, "screen_color_mode_settings_value"

    const/4 v6, 0x1

    const/4 v7, -0x2

    .line 2224
    invoke-static {v3, v4, v6, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 2226
    .restart local v0    # "status":I
    const/4 v3, 0x2

    if-eq v0, v3, :cond_19

    const/4 v3, 0x4

    if-ne v0, v3, :cond_1a

    .line 2227
    :cond_19
    const/16 v1, 0x2d

    .line 2229
    :cond_1a
    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-virtual {p0, v3, p2, v1, v4}, Lcom/android/server/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    .line 2230
    const-string/jumbo v3, "ColorBalanceService"

    const-string/jumbo v4, "readingModeSwitch OFF:stage 0 --> 1000,Matrix be B & W"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2232
    .end local v0    # "status":I
    .end local v1    # "target":I
    :cond_1b
    const/16 v3, 0x1f4

    iput v3, p0, Lcom/android/server/display/ColorBalanceService;->mReadingModeClosingStage:I

    .line 2233
    iget v3, p0, Lcom/android/server/display/ColorBalanceService;->mFactor:F

    const v4, 0x3ccccccd    # 0.025f

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/android/server/display/ColorBalanceService;->mFactor:F

    .line 2234
    iget v3, p0, Lcom/android/server/display/ColorBalanceService;->mFactor:F

    invoke-direct {p0, v3}, Lcom/android/server/display/ColorBalanceService;->setColorMartix(F)V

    .line 2235
    invoke-direct {p0}, Lcom/android/server/display/ColorBalanceService;->setDTMColorMatrix()V

    .line 2236
    const/16 v3, 0xb

    const/4 v4, 0x0

    const/16 v6, 0x8

    invoke-virtual {p0, v3, p2, v4, v6}, Lcom/android/server/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    .line 2237
    const-string/jumbo v3, "ColorBalanceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "readingModeSwitch OFF: mReadingModeClosingStage:-->500,mFactor:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, Lcom/android/server/display/ColorBalanceService;->mFactor:F

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2239
    :cond_1c
    iget v4, p0, Lcom/android/server/display/ColorBalanceService;->mReadingModeClosingStage:I

    const/16 v6, 0x3e8

    if-ne v4, v6, :cond_21

    .line 2240
    iget v4, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    if-ne v4, p3, :cond_1d

    .line 2241
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/display/ColorBalanceService;->setNightModeProp(Ljava/lang/Boolean;)I

    .line 2242
    const/16 v3, 0x9c4

    iput v3, p0, Lcom/android/server/display/ColorBalanceService;->mReadingModeClosingStage:I

    .line 2243
    const-string/jumbo v3, "ColorBalanceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "readingModeSwitch OFF:stage 1000 --> 2500,colorBalance default:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2244
    const/16 v3, 0xb

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0, v3, p2, v4, v6}, Lcom/android/server/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto/16 :goto_0

    .line 2246
    :cond_1d
    iget v6, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    iget v4, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    if-le v4, p3, :cond_20

    const/4 v4, -0x1

    :goto_3
    add-int/2addr v4, v6

    iput v4, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    .line 2247
    iget v4, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    if-eq v4, p3, :cond_1f

    .line 2248
    iget v4, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    iget v6, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    if-le v6, p3, :cond_1e

    const/4 v3, -0x1

    :cond_1e
    add-int/2addr v3, v4

    iput v3, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    .line 2249
    :cond_1f
    iget v3, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/android/server/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 2252
    const/16 v3, 0xb

    const/4 v4, 0x5

    invoke-virtual {p0, v3, p2, p3, v4}, Lcom/android/server/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto/16 :goto_0

    :cond_20
    move v4, v3

    .line 2246
    goto :goto_3

    .line 2254
    :cond_21
    iget v4, p0, Lcom/android/server/display/ColorBalanceService;->mReadingModeClosingStage:I

    const/16 v6, 0x9c4

    if-ne v4, v6, :cond_27

    .line 2255
    iget v3, p0, Lcom/android/server/display/ColorBalanceService;->mFactor:F

    float-to-double v6, v3

    const-wide v8, 0x3feff7ced916872bL    # 0.999

    cmpl-double v3, v6, v8

    if-lez v3, :cond_22

    .line 2256
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Lcom/android/server/display/ColorBalanceService;->mFactor:F

    .line 2257
    const/16 v3, 0x1388

    iput v3, p0, Lcom/android/server/display/ColorBalanceService;->mReadingModeClosingStage:I

    .line 2258
    const-string/jumbo v3, "ColorBalanceService"

    const-string/jumbo v4, "readingModeSwitch OFF:stage 2500 --> 5000,be Colors"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2259
    const/16 v3, 0xb

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0, v3, p2, v4, v6}, Lcom/android/server/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto/16 :goto_0

    .line 2261
    :cond_22
    iget v3, p0, Lcom/android/server/display/ColorBalanceService;->mFactor:F

    const v4, 0x3d48b439    # 0.049f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_24

    iget v3, p0, Lcom/android/server/display/ColorBalanceService;->mFactor:F

    const v4, 0x3d50e560    # 0.051f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_24

    .line 2262
    const-string/jumbo v3, "ColorBalanceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "readingModeSwitch OFF:stage 2500,mFactor:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, Lcom/android/server/display/ColorBalanceService;->mFactor:F

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2263
    iget-object v3, p0, Lcom/android/server/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setActiveMode(I)I

    .line 2277
    :cond_23
    :goto_4
    iget v3, p0, Lcom/android/server/display/ColorBalanceService;->mFactor:F

    const v4, 0x3c4ccccd    # 0.0125f

    add-float/2addr v3, v4

    iput v3, p0, Lcom/android/server/display/ColorBalanceService;->mFactor:F

    .line 2278
    iget v3, p0, Lcom/android/server/display/ColorBalanceService;->mFactor:F

    invoke-direct {p0, v3}, Lcom/android/server/display/ColorBalanceService;->setColorMartix(F)V

    .line 2279
    invoke-direct {p0}, Lcom/android/server/display/ColorBalanceService;->setDTMColorMatrix()V

    .line 2280
    const/16 v3, 0xb

    const/4 v4, 0x0

    const/16 v6, 0xf

    invoke-virtual {p0, v3, p2, v4, v6}, Lcom/android/server/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto/16 :goto_0

    .line 2264
    :cond_24
    iget v3, p0, Lcom/android/server/display/ColorBalanceService;->mFactor:F

    const v4, 0x3e7ef9db    # 0.249f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_25

    iget v3, p0, Lcom/android/server/display/ColorBalanceService;->mFactor:F

    const v4, 0x3e808312    # 0.251f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_25

    .line 2265
    iget-object v3, p0, Lcom/android/server/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setActiveMode(I)I

    .line 2266
    iget-object v3, p0, Lcom/android/server/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setActiveMode(I)I

    .line 2267
    const-string/jumbo v3, "ColorBalanceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "readingModeSwitch OFF:stage 2500,mFactor:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, Lcom/android/server/display/ColorBalanceService;->mFactor:F

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 2268
    :cond_25
    iget v3, p0, Lcom/android/server/display/ColorBalanceService;->mFactor:F

    const v4, 0x3efae148    # 0.49f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_26

    iget v3, p0, Lcom/android/server/display/ColorBalanceService;->mFactor:F

    const v4, 0x3f028f5c    # 0.51f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_26

    .line 2269
    iget-object v3, p0, Lcom/android/server/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setActiveMode(I)I

    .line 2270
    iget-object v3, p0, Lcom/android/server/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setActiveMode(I)I

    .line 2271
    const-string/jumbo v3, "ColorBalanceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "readingModeSwitch OFF:stage 2500,mFactor:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, Lcom/android/server/display/ColorBalanceService;->mFactor:F

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 2272
    :cond_26
    iget v3, p0, Lcom/android/server/display/ColorBalanceService;->mFactor:F

    const v4, 0x3f3fbe77    # 0.749f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_23

    iget v3, p0, Lcom/android/server/display/ColorBalanceService;->mFactor:F

    const v4, 0x3f404189    # 0.751f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_23

    .line 2273
    iget-object v3, p0, Lcom/android/server/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setActiveMode(I)I

    .line 2274
    iget-object v3, p0, Lcom/android/server/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setActiveMode(I)I

    .line 2275
    const-string/jumbo v3, "ColorBalanceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "readingModeSwitch OFF:stage 2500,mFactor:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, Lcom/android/server/display/ColorBalanceService;->mFactor:F

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 2282
    :cond_27
    iget v4, p0, Lcom/android/server/display/ColorBalanceService;->mReadingModeClosingStage:I

    const/16 v6, 0x1388

    if-ne v4, v6, :cond_2b

    .line 2283
    iget-object v4, p0, Lcom/android/server/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 2284
    const-string/jumbo v6, "screen_color_mode_settings_value"

    const/4 v7, 0x1

    const/4 v8, -0x2

    .line 2283
    invoke-static {v4, v6, v7, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 2285
    .restart local v0    # "status":I
    if-ne v0, v3, :cond_28

    .line 2286
    invoke-direct {p0}, Lcom/android/server/display/ColorBalanceService;->revertStatus()V

    .line 2287
    const/16 v3, 0x4e20

    iput v3, p0, Lcom/android/server/display/ColorBalanceService;->mReadingModeClosingStage:I

    .line 2288
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/server/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    .line 2289
    const-string/jumbo v3, "ColorBalanceService"

    const-string/jumbo v4, "readingModeSwitch OFF:stage:5000 --> 20000,reverstatus"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2302
    :goto_5
    const/16 v3, 0xb

    invoke-virtual {p0, v3, p2}, Lcom/android/server/display/ColorBalanceService;->sendMsgWithValue(II)V

    goto/16 :goto_0

    .line 2290
    :cond_28
    const/4 v3, 0x2

    if-eq v0, v3, :cond_29

    const/4 v3, 0x4

    if-ne v0, v3, :cond_2a

    .line 2291
    :cond_29
    const/16 v3, 0x4e20

    iput v3, p0, Lcom/android/server/display/ColorBalanceService;->mReadingModeClosingStage:I

    .line 2293
    const-string/jumbo v3, "ColorBalanceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "readingModeSwitch OFF: srgb stage:5000 --> 20000,status:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 2295
    :cond_2a
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Lcom/android/server/display/ColorBalanceService;->mFactor:F

    .line 2296
    invoke-direct {p0}, Lcom/android/server/display/ColorBalanceService;->closeMatrix()V

    .line 2297
    iget-object v3, p0, Lcom/android/server/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setActiveMode(I)I

    .line 2298
    const/16 v3, 0x2b

    iput v3, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    .line 2299
    const/16 v3, 0x2710

    iput v3, p0, Lcom/android/server/display/ColorBalanceService;->mReadingModeClosingStage:I

    .line 2300
    const-string/jumbo v3, "ColorBalanceService"

    const-string/jumbo v4, "readingModeSwitch OFF:stage:5000 --> 10000,status 3"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 2303
    .end local v0    # "status":I
    :cond_2b
    iget v4, p0, Lcom/android/server/display/ColorBalanceService;->mReadingModeClosingStage:I

    const/16 v6, 0x2710

    if-ne v4, v6, :cond_2e

    .line 2304
    iget-object v4, p0, Lcom/android/server/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 2305
    const-string/jumbo v6, "oem_screen_better_value"

    const/16 v7, 0x2b

    .line 2306
    const/4 v8, -0x2

    .line 2304
    invoke-static {v4, v6, v7, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    rsub-int/lit8 v2, v4, 0x64

    .line 2307
    .local v2, "value":I
    iget v4, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    if-ne v4, v2, :cond_2c

    .line 2308
    const/16 v3, 0x4e20

    iput v3, p0, Lcom/android/server/display/ColorBalanceService;->mReadingModeClosingStage:I

    .line 2309
    const-string/jumbo v3, "ColorBalanceService"

    const-string/jumbo v4, "readingModeSwitch OFF:stage:10000 -> 20000,status 3,be customer colorbalance"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2314
    :goto_6
    const/16 v3, 0xb

    const/4 v4, 0x0

    const/16 v6, 0xa

    invoke-virtual {p0, v3, p2, v4, v6}, Lcom/android/server/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto/16 :goto_0

    .line 2311
    :cond_2c
    iget v4, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    iget v6, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    if-le v6, v2, :cond_2d

    const/4 v3, -0x1

    :cond_2d
    add-int/2addr v3, v4

    iput v3, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    .line 2312
    iget v3, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/android/server/display/ColorBalanceService;->opSetColorBalance(II)V

    goto :goto_6

    .line 2315
    .end local v2    # "value":I
    :cond_2e
    iget v3, p0, Lcom/android/server/display/ColorBalanceService;->mReadingModeClosingStage:I

    if-ne v3, v7, :cond_0

    .line 2316
    invoke-direct {p0}, Lcom/android/server/display/ColorBalanceService;->saveColorModeInternal()V

    .line 2317
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/server/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    .line 2318
    const/16 v3, 0x8

    iput v3, p0, Lcom/android/server/display/ColorBalanceService;->mModeStage:I

    .line 2319
    const-string/jumbo v3, "ColorBalanceService"

    const-string/jumbo v4, "readingModeSwitch OFF done(-->2000)!"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0
.end method

.method private revertStatus()V
    .locals 9

    .prologue
    const/4 v8, -0x2

    const/16 v7, 0x2b

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 592
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/android/server/display/ColorBalanceService;->mFactor:F

    .line 593
    invoke-direct {p0}, Lcom/android/server/display/ColorBalanceService;->closeMatrix()V

    .line 594
    iget-object v2, p0, Lcom/android/server/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    if-nez v2, :cond_0

    .line 595
    const-string/jumbo v2, "ColorBalanceService"

    const-string/jumbo v3, "revertStatus:mCmgr is null!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    return-void

    .line 598
    :cond_0
    iget-object v2, p0, Lcom/android/server/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 599
    const-string/jumbo v3, "screen_color_mode_settings_value"

    .line 598
    invoke-static {v2, v3, v6, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 600
    .local v0, "status":I
    const-string/jumbo v2, "ColorBalanceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "revertStatus:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    packed-switch v0, :pswitch_data_0

    .line 637
    :goto_0
    invoke-direct {p0}, Lcom/android/server/display/ColorBalanceService;->saveColorModeInternal()V

    .line 591
    return-void

    .line 604
    :pswitch_0
    iput v7, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentColorBalance:I

    .line 605
    invoke-direct {p0, v5}, Lcom/android/server/display/ColorBalanceService;->setSRGB(Z)V

    .line 606
    invoke-direct {p0, v5}, Lcom/android/server/display/ColorBalanceService;->setDciP3(Z)V

    .line 607
    invoke-direct {p0, v5}, Lcom/android/server/display/ColorBalanceService;->setNightMode(Z)V

    .line 608
    iget-object v2, p0, Lcom/android/server/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    invoke-virtual {v2, v5}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setActiveMode(I)I

    goto :goto_0

    .line 611
    :pswitch_1
    iput v7, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentColorBalance:I

    .line 614
    invoke-direct {p0, v6}, Lcom/android/server/display/ColorBalanceService;->setSRGB(Z)V

    .line 615
    iget-object v2, p0, Lcom/android/server/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    invoke-virtual {v2, v5}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setActiveMode(I)I

    goto :goto_0

    .line 618
    :pswitch_2
    invoke-direct {p0, v5}, Lcom/android/server/display/ColorBalanceService;->setSRGB(Z)V

    .line 619
    invoke-direct {p0, v5}, Lcom/android/server/display/ColorBalanceService;->setDciP3(Z)V

    .line 620
    invoke-direct {p0, v5}, Lcom/android/server/display/ColorBalanceService;->setNightMode(Z)V

    .line 621
    iget-object v2, p0, Lcom/android/server/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 622
    const-string/jumbo v3, "oem_screen_better_value"

    const/16 v4, 0x39

    .line 621
    invoke-static {v2, v3, v4, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    rsub-int/lit8 v1, v2, 0x64

    .line 624
    .local v1, "value":I
    iget-object v2, p0, Lcom/android/server/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    invoke-virtual {v2, v5}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setActiveMode(I)I

    .line 625
    invoke-direct {p0, v1, v5}, Lcom/android/server/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 626
    iput v1, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentColorBalance:I

    .line 627
    const-string/jumbo v2, "ColorBalanceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "customer value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 632
    .end local v1    # "value":I
    :pswitch_3
    invoke-direct {p0, v6}, Lcom/android/server/display/ColorBalanceService;->setDciP3(Z)V

    .line 633
    iput v7, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentColorBalance:I

    .line 634
    iget-object v2, p0, Lcom/android/server/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    invoke-virtual {v2, v5}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setActiveMode(I)I

    goto :goto_0

    .line 601
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private saveColorModeInternal()V
    .locals 0

    .prologue
    .line 2877
    return-void
.end method

.method private sendMsgInternal(I)V
    .locals 0
    .param p1, "v"    # I

    .prologue
    .line 2825
    invoke-virtual {p0, p1}, Lcom/android/server/display/ColorBalanceService;->sendMsg(I)V

    .line 2824
    return-void
.end method

.method private setColorMartix(F)V
    .locals 8
    .param p1, "factor"    # F

    .prologue
    const v7, 0x3f1c01a3    # 0.6094f

    const v6, 0x3e9e00d2    # 0.3086f

    const v5, 0x3da7ef9e    # 0.082f

    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    .line 2947
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mColorMatrix:[F

    sub-float v1, v3, p1

    mul-float/2addr v1, v6

    add-float/2addr v1, p1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 2948
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mColorMatrix:[F

    sub-float v1, v3, p1

    mul-float/2addr v1, v6

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 2949
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mColorMatrix:[F

    sub-float v1, v3, p1

    mul-float/2addr v1, v6

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 2950
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mColorMatrix:[F

    const/4 v1, 0x3

    aput v4, v0, v1

    .line 2951
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mColorMatrix:[F

    sub-float v1, v3, p1

    mul-float/2addr v1, v7

    const/4 v2, 0x4

    aput v1, v0, v2

    .line 2952
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mColorMatrix:[F

    sub-float v1, v3, p1

    mul-float/2addr v1, v7

    add-float/2addr v1, p1

    const/4 v2, 0x5

    aput v1, v0, v2

    .line 2953
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mColorMatrix:[F

    sub-float v1, v3, p1

    mul-float/2addr v1, v7

    const/4 v2, 0x6

    aput v1, v0, v2

    .line 2954
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mColorMatrix:[F

    const/4 v1, 0x7

    aput v4, v0, v1

    .line 2955
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mColorMatrix:[F

    sub-float v1, v3, p1

    mul-float/2addr v1, v5

    const/16 v2, 0x8

    aput v1, v0, v2

    .line 2956
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mColorMatrix:[F

    sub-float v1, v3, p1

    mul-float/2addr v1, v5

    const/16 v2, 0x9

    aput v1, v0, v2

    .line 2957
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mColorMatrix:[F

    sub-float v1, v3, p1

    mul-float/2addr v1, v5

    add-float/2addr v1, p1

    const/16 v2, 0xa

    aput v1, v0, v2

    .line 2958
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mColorMatrix:[F

    const/16 v1, 0xb

    aput v4, v0, v1

    .line 2959
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mColorMatrix:[F

    const/16 v1, 0xc

    aput v4, v0, v1

    .line 2960
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mColorMatrix:[F

    const/16 v1, 0xd

    aput v4, v0, v1

    .line 2961
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mColorMatrix:[F

    const/16 v1, 0xe

    aput v4, v0, v1

    .line 2962
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mColorMatrix:[F

    const/16 v1, 0xf

    aput v3, v0, v1

    .line 2945
    return-void
.end method

.method private setColorMartixNight2ReadingBW(FFFFF)V
    .locals 8
    .param p1, "RED"    # F
    .param p2, "Green"    # F
    .param p3, "Blue"    # F
    .param p4, "factor"    # F
    .param p5, "factor2"    # F

    .prologue
    const v7, 0x3e9e00d2    # 0.3086f

    const v6, 0x3da7ef9e    # 0.082f

    const/4 v5, 0x0

    const/high16 v4, 0x437f0000    # 255.0f

    const/high16 v3, 0x3f800000    # 1.0f

    .line 2965
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mColorMatrix:[F

    div-float v1, p1, v4

    sub-float v2, v3, p4

    mul-float/2addr v1, v2

    add-float/2addr v1, p4

    mul-float/2addr v1, v7

    sub-float v2, v3, p5

    mul-float/2addr v1, v2

    add-float/2addr v1, p5

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 2966
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mColorMatrix:[F

    div-float v1, p1, v4

    sub-float v2, v3, p4

    mul-float/2addr v1, v2

    add-float/2addr v1, p4

    mul-float/2addr v1, v7

    sub-float v2, v3, p5

    mul-float/2addr v1, v2

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 2967
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mColorMatrix:[F

    div-float v1, p1, v4

    sub-float v2, v3, p4

    mul-float/2addr v1, v2

    add-float/2addr v1, p4

    mul-float/2addr v1, v7

    sub-float v2, v3, p5

    mul-float/2addr v1, v2

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 2968
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mColorMatrix:[F

    const/4 v1, 0x3

    aput v5, v0, v1

    .line 2969
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mColorMatrix:[F

    div-float v1, p2, v4

    sub-float v2, v3, p4

    mul-float/2addr v1, v2

    add-float/2addr v1, p4

    const v2, 0x3f1c01a3    # 0.6094f

    mul-float/2addr v1, v2

    sub-float v2, v3, p5

    mul-float/2addr v1, v2

    const/4 v2, 0x4

    aput v1, v0, v2

    .line 2970
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mColorMatrix:[F

    div-float v1, p2, v4

    sub-float v2, v3, p4

    mul-float/2addr v1, v2

    add-float/2addr v1, p4

    const v2, 0x3f1c01a3    # 0.6094f

    mul-float/2addr v1, v2

    sub-float v2, v3, p5

    mul-float/2addr v1, v2

    add-float/2addr v1, p5

    const/4 v2, 0x5

    aput v1, v0, v2

    .line 2971
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mColorMatrix:[F

    div-float v1, p2, v4

    sub-float v2, v3, p4

    mul-float/2addr v1, v2

    add-float/2addr v1, p4

    const v2, 0x3f1c01a3    # 0.6094f

    mul-float/2addr v1, v2

    sub-float v2, v3, p5

    mul-float/2addr v1, v2

    const/4 v2, 0x6

    aput v1, v0, v2

    .line 2972
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mColorMatrix:[F

    const/4 v1, 0x7

    aput v5, v0, v1

    .line 2973
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mColorMatrix:[F

    div-float v1, p3, v4

    sub-float v2, v3, p4

    mul-float/2addr v1, v2

    add-float/2addr v1, p4

    mul-float/2addr v1, v6

    sub-float v2, v3, p5

    mul-float/2addr v1, v2

    const/16 v2, 0x8

    aput v1, v0, v2

    .line 2974
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mColorMatrix:[F

    div-float v1, p3, v4

    sub-float v2, v3, p4

    mul-float/2addr v1, v2

    add-float/2addr v1, p4

    mul-float/2addr v1, v6

    sub-float v2, v3, p5

    mul-float/2addr v1, v2

    const/16 v2, 0x9

    aput v1, v0, v2

    .line 2975
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mColorMatrix:[F

    div-float v1, p3, v4

    sub-float v2, v3, p4

    mul-float/2addr v1, v2

    add-float/2addr v1, p4

    mul-float/2addr v1, v6

    sub-float v2, v3, p5

    mul-float/2addr v1, v2

    add-float/2addr v1, p5

    const/16 v2, 0xa

    aput v1, v0, v2

    .line 2976
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mColorMatrix:[F

    const/16 v1, 0xb

    aput v5, v0, v1

    .line 2977
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mColorMatrix:[F

    const/16 v1, 0xc

    aput v5, v0, v1

    .line 2978
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mColorMatrix:[F

    const/16 v1, 0xd

    aput v5, v0, v1

    .line 2979
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mColorMatrix:[F

    const/16 v1, 0xe

    aput v5, v0, v1

    .line 2980
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mColorMatrix:[F

    const/16 v1, 0xf

    aput v3, v0, v1

    .line 2964
    return-void
.end method

.method private setColorMatrixNight2Reading(F)V
    .locals 7
    .param p1, "factor"    # F

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x2

    const/4 v4, 0x0

    .line 2983
    iget-object v2, p0, Lcom/android/server/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 2984
    const-string/jumbo v3, "accessibility_display_daltonizer_enabled"

    .line 2983
    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 2985
    .local v0, "dal":I
    iget-object v2, p0, Lcom/android/server/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 2986
    const-string/jumbo v3, "accessibility_display_inversion_enabled"

    .line 2985
    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 2987
    .local v1, "rev":I
    if-eq v0, v6, :cond_0

    if-ne v1, v6, :cond_1

    .line 2988
    :cond_0
    return-void

    .line 2990
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/display/ColorBalanceService;->setColorMartix(F)V

    .line 2991
    iget-object v2, p0, Lcom/android/server/display/ColorBalanceService;->dtm:Lcom/android/server/display/DisplayTransformManager;

    if-eqz v2, :cond_2

    .line 2992
    iget-object v2, p0, Lcom/android/server/display/ColorBalanceService;->dtm:Lcom/android/server/display/DisplayTransformManager;

    iget-object v3, p0, Lcom/android/server/display/ColorBalanceService;->mColorMatrix:[F

    invoke-virtual {v2, v4, v3}, Lcom/android/server/display/DisplayTransformManager;->setColorMatrix(I[F)V

    .line 2982
    :cond_2
    return-void
.end method

.method private setDTMColorMatrix()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x2

    const/4 v4, 0x0

    .line 563
    iget-object v2, p0, Lcom/android/server/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 564
    const-string/jumbo v3, "accessibility_display_daltonizer_enabled"

    .line 563
    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 565
    .local v0, "dal":I
    iget-object v2, p0, Lcom/android/server/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 566
    const-string/jumbo v3, "accessibility_display_inversion_enabled"

    .line 565
    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 568
    .local v1, "rev":I
    if-eq v0, v6, :cond_0

    if-ne v1, v6, :cond_1

    .line 569
    :cond_0
    return-void

    .line 570
    :cond_1
    iget-object v2, p0, Lcom/android/server/display/ColorBalanceService;->dtm:Lcom/android/server/display/DisplayTransformManager;

    if-eqz v2, :cond_2

    .line 571
    iget-object v2, p0, Lcom/android/server/display/ColorBalanceService;->dtm:Lcom/android/server/display/DisplayTransformManager;

    iget-object v3, p0, Lcom/android/server/display/ColorBalanceService;->mColorMatrix:[F

    invoke-virtual {v2, v4, v3}, Lcom/android/server/display/DisplayTransformManager;->setColorMatrix(I[F)V

    .line 562
    :cond_2
    return-void
.end method

.method private setDciP3(Z)V
    .locals 2
    .param p1, "b"    # Z

    .prologue
    .line 534
    if-eqz p1, :cond_0

    .line 535
    const-string/jumbo v0, "ColorBalanceService"

    const-string/jumbo v1, "DCIP3,turn on!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    const-string/jumbo v0, "sys.dci3p"

    const-string/jumbo v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    :goto_0
    return-void

    .line 538
    :cond_0
    const-string/jumbo v0, "ColorBalanceService"

    const-string/jumbo v1, "DCIP3,turn off!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    const-string/jumbo v0, "sys.dci3p"

    const-string/jumbo v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setNightMode(Z)V
    .locals 2
    .param p1, "b"    # Z

    .prologue
    .line 553
    if-eqz p1, :cond_0

    .line 554
    const-string/jumbo v0, "ColorBalanceService"

    const-string/jumbo v1, "night mode node,turn on!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    const-string/jumbo v0, "sys.night_mode"

    const-string/jumbo v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    :goto_0
    return-void

    .line 557
    :cond_0
    const-string/jumbo v0, "ColorBalanceService"

    const-string/jumbo v1, "night mode node,turn off!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    const-string/jumbo v0, "sys.night_mode"

    const-string/jumbo v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setNightModeProp(Ljava/lang/Boolean;)I
    .locals 5
    .param p1, "b"    # Ljava/lang/Boolean;

    .prologue
    const/4 v4, 0x1

    .line 406
    iget-object v1, p0, Lcom/android/server/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 407
    const-string/jumbo v2, "screen_color_mode_settings_value"

    const/4 v3, -0x2

    .line 406
    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 408
    .local v0, "status":I
    if-eqz v0, :cond_0

    if-ne v0, v4, :cond_2

    .line 409
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/display/ColorBalanceService;->setNightMode(Z)V

    .line 411
    :cond_1
    return v0

    .line 408
    :cond_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    goto :goto_0
.end method

.method private setPa(I)V
    .locals 8
    .param p1, "pa"    # I

    .prologue
    .line 1900
    iget-object v1, p0, Lcom/android/server/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    if-eqz v1, :cond_0

    .line 1901
    iget-object v1, p0, Lcom/android/server/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    invoke-virtual {v1}, Lcom/qti/snapdragon/sdk/display/ColorManager;->getPictureAdjustmentParams()Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig;

    move-result-object v7

    .line 1902
    .local v7, "PAValues":Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig;
    new-instance v0, Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig;

    const-class v1, Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig$PICTURE_ADJUSTMENT_PARAMS;

    invoke-static {v1}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    .line 1903
    invoke-virtual {v7}, Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig;->getHue()I

    move-result v2

    invoke-virtual {v7}, Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig;->getIntensity()I

    move-result v4

    invoke-virtual {v7}, Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig;->getContrast()I

    move-result v5

    invoke-virtual {v7}, Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig;->getSaturationThreshold()I

    move-result v6

    move v3, p1

    .line 1902
    invoke-direct/range {v0 .. v6}, Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig;-><init>(Ljava/util/EnumSet;IIIII)V

    .line 1904
    .local v0, "newPaConfig":Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig;
    iget-object v1, p0, Lcom/android/server/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    invoke-virtual {v1, v0}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setPictureAdjustmentParams(Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig;)I

    .line 1899
    .end local v0    # "newPaConfig":Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig;
    .end local v7    # "PAValues":Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig;
    :cond_0
    return-void
.end method

.method private setProp(Ljava/lang/Boolean;)I
    .locals 5
    .param p1, "b"    # Ljava/lang/Boolean;

    .prologue
    const/4 v4, 0x1

    .line 394
    iget-object v1, p0, Lcom/android/server/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 395
    const-string/jumbo v2, "screen_color_mode_settings_value"

    const/4 v3, -0x2

    .line 394
    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 396
    .local v0, "status":I
    if-eqz v0, :cond_0

    if-ne v0, v4, :cond_1

    .line 397
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/display/ColorBalanceService;->setNightMode(Z)V

    .line 403
    :goto_0
    return v0

    .line 396
    :cond_1
    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 398
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 399
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/display/ColorBalanceService;->setSRGB(Z)V

    goto :goto_0

    .line 401
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/display/ColorBalanceService;->setDciP3(Z)V

    goto :goto_0
.end method

.method private setSRGB(Z)V
    .locals 2
    .param p1, "b"    # Z

    .prologue
    .line 544
    if-eqz p1, :cond_0

    .line 545
    const-string/jumbo v0, "ColorBalanceService"

    const-string/jumbo v1, "SRGB,turn on!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    const-string/jumbo v0, "sys.srgb"

    const-string/jumbo v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    :goto_0
    return-void

    .line 548
    :cond_0
    const-string/jumbo v0, "ColorBalanceService"

    const-string/jumbo v1, "SRGB,turn off!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    const-string/jumbo v0, "sys.srgb"

    const-string/jumbo v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setSRGBSensorEnabled(Z)Z
    .locals 6
    .param p1, "enable"    # Z

    .prologue
    const/4 v5, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1491
    const-string/jumbo v0, "ColorBalanceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSRGBSensorEnabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1492
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    if-eqz v0, :cond_1

    .line 1493
    iget-boolean v0, p0, Lcom/android/server/display/ColorBalanceService;->mSRGBSensorEnabled:Z

    if-nez v0, :cond_2

    .line 1494
    iput-boolean v4, p0, Lcom/android/server/display/ColorBalanceService;->mSRGBSensorEnabled:Z

    .line 1496
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_0

    .line 1497
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mSensorManager:Landroid/hardware/SensorManager;

    .line 1499
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_2

    .line 1500
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/display/ColorBalanceService;->mSRGBSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/server/display/ColorBalanceService;->mSensorManager:Landroid/hardware/SensorManager;

    const v3, 0x1fa264c

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 1501
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/display/ColorBalanceService;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/server/display/ColorBalanceService;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 1502
    const-string/jumbo v0, "ColorBalanceService"

    const-string/jumbo v1, "SRGB & LIGHT SENSOR ENABLE!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1503
    return v4

    .line 1507
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/display/ColorBalanceService;->mSRGBSensorEnabled:Z

    if-eqz v0, :cond_2

    .line 1508
    iput-boolean v3, p0, Lcom/android/server/display/ColorBalanceService;->mSRGBSensorEnabled:Z

    .line 1509
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_2

    .line 1510
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/display/ColorBalanceService;->mSRGBSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 1511
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/display/ColorBalanceService;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 1512
    const-string/jumbo v0, "ColorBalanceService"

    const-string/jumbo v1, "SRGB & LIGHT SENSOR DISABLE!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1513
    return v4

    .line 1517
    :cond_2
    return v3
.end method

.method private setUp()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, -0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 415
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Lcom/android/server/display/ColorBalanceService;->mFactor:F

    .line 416
    invoke-direct {p0}, Lcom/android/server/display/ColorBalanceService;->closeMatrix()V

    .line 418
    iget-object v3, p0, Lcom/android/server/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 419
    const-string/jumbo v6, "colorbalanceservice-night-reading-mode"

    .line 418
    invoke-static {v3, v6, v5, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 420
    .local v2, "mode":I
    iget-object v3, p0, Lcom/android/server/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v6, "reading_mode_status_manual"

    invoke-static {v3, v6, v5, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v4, :cond_5

    move v3, v4

    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 421
    .local v1, "isReadingModeActivated":Ljava/lang/Boolean;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    and-int/lit8 v3, v2, 0x2

    const/4 v6, 0x2

    if-eq v3, v6, :cond_6

    .line 422
    :cond_0
    iget-object v3, p0, Lcom/android/server/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v6, "reading_mode_status"

    invoke-static {v3, v6, v5, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v4, v3, :cond_1

    .line 423
    iget-object v3, p0, Lcom/android/server/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v6, "reading_mode_status"

    invoke-static {v3, v6, v5, v7}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 424
    const-string/jumbo v3, "ColorBalanceService"

    const-string/jumbo v6, "INIT Settings.System.READING_MODE_STATUS TO BE ZERO!"

    invoke-static {v3, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    :cond_1
    :goto_1
    new-instance v3, Lcom/android/internal/app/NightDisplayController;

    invoke-virtual {p0}, Lcom/android/server/display/ColorBalanceService;->getContext()Landroid/content/Context;

    move-result-object v6

    iget v7, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentUser:I

    invoke-direct {v3, v6, v7}, Lcom/android/internal/app/NightDisplayController;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/android/server/display/ColorBalanceService;->mController:Lcom/android/internal/app/NightDisplayController;

    .line 430
    iget-object v3, p0, Lcom/android/server/display/ColorBalanceService;->mController:Lcom/android/internal/app/NightDisplayController;

    invoke-virtual {v3, p0}, Lcom/android/internal/app/NightDisplayController;->setListener(Lcom/android/internal/app/NightDisplayController$Callback;)V

    .line 433
    const-string/jumbo v3, "ColorBalanceService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setUp: currentUser="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentUser:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    iget-object v3, p0, Lcom/android/server/display/ColorBalanceService;->mController:Lcom/android/internal/app/NightDisplayController;

    invoke-virtual {v3}, Lcom/android/internal/app/NightDisplayController;->isActivated()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 441
    .local v0, "isNightOn":Ljava/lang/Boolean;
    iget-object v3, p0, Lcom/android/server/display/ColorBalanceService;->mController:Lcom/android/internal/app/NightDisplayController;

    invoke-virtual {v3}, Lcom/android/internal/app/NightDisplayController;->getAutoMode()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/server/display/ColorBalanceService;->onAutoModeChanged(I)V

    .line 442
    iget-object v3, p0, Lcom/android/server/display/ColorBalanceService;->mController:Lcom/android/internal/app/NightDisplayController;

    invoke-virtual {v3}, Lcom/android/internal/app/NightDisplayController;->isReadingModeActivated()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 443
    iget-object v3, p0, Lcom/android/server/display/ColorBalanceService;->mIsReadingOrNightModeOpendLastSesson:Ljava/lang/Boolean;

    if-nez v3, :cond_7

    .line 444
    const-string/jumbo v3, "ColorBalanceService"

    const-string/jumbo v5, "#1 reading mode had been opened!"

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/display/ColorBalanceService;->mIsReadingOrNightModeOpendLastSesson:Ljava/lang/Boolean;

    .line 449
    :goto_2
    invoke-virtual {p0, v4}, Lcom/android/server/display/ColorBalanceService;->onReadingModeActivatedManual(Z)V

    .line 464
    :cond_2
    :goto_3
    const-string/jumbo v3, "ColorBalanceService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "SetUp mode:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    if-ne v2, v8, :cond_3

    iget v3, p0, Lcom/android/server/display/ColorBalanceService;->mMode:I

    if-ge v3, v8, :cond_3

    .line 470
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/display/ColorBalanceService;->mReadingModeStatus:Ljava/lang/Boolean;

    .line 471
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/display/ColorBalanceService;->mNightModeStatus:Ljava/lang/Boolean;

    .line 472
    iput v8, p0, Lcom/android/server/display/ColorBalanceService;->mMode:I

    .line 478
    :cond_3
    if-ne v2, v4, :cond_4

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 414
    :cond_4
    :goto_4
    return-void

    .end local v0    # "isNightOn":Ljava/lang/Boolean;
    .end local v1    # "isReadingModeActivated":Ljava/lang/Boolean;
    :cond_5
    move v3, v5

    .line 420
    goto/16 :goto_0

    .line 427
    .restart local v1    # "isReadingModeActivated":Ljava/lang/Boolean;
    :cond_6
    const-string/jumbo v3, "ColorBalanceService"

    const-string/jumbo v6, "INIT Settings.System.READING_MODE_STATUS_MANUAL 1!"

    invoke-static {v3, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 447
    .restart local v0    # "isNightOn":Ljava/lang/Boolean;
    :cond_7
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/display/ColorBalanceService;->mIsReadingOrNightModeOpendLastSesson:Ljava/lang/Boolean;

    goto :goto_2

    .line 450
    :cond_8
    iget-object v3, p0, Lcom/android/server/display/ColorBalanceService;->mController:Lcom/android/internal/app/NightDisplayController;

    invoke-virtual {v3}, Lcom/android/internal/app/NightDisplayController;->isActivated()Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/android/server/display/ColorBalanceService;->mAutoMode:Lcom/android/server/display/ColorBalanceService$AutoMode;

    if-nez v3, :cond_a

    .line 451
    iget-object v3, p0, Lcom/android/server/display/ColorBalanceService;->mIsReadingOrNightModeOpendLastSesson:Ljava/lang/Boolean;

    if-nez v3, :cond_9

    .line 452
    const-string/jumbo v3, "ColorBalanceService"

    const-string/jumbo v5, "#1 night mode had been opened!"

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/display/ColorBalanceService;->mIsReadingOrNightModeOpendLastSesson:Ljava/lang/Boolean;

    .line 457
    :goto_5
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/display/ColorBalanceService;->setNightModeProp(Ljava/lang/Boolean;)I

    .line 458
    invoke-virtual {p0, v4}, Lcom/android/server/display/ColorBalanceService;->onNightModeActivated(Z)V

    goto :goto_3

    .line 455
    :cond_9
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/display/ColorBalanceService;->mIsReadingOrNightModeOpendLastSesson:Ljava/lang/Boolean;

    goto :goto_5

    .line 460
    :cond_a
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/display/ColorBalanceService;->mIsReadingOrNightModeOpendLastSesson:Ljava/lang/Boolean;

    .line 461
    iget-object v3, p0, Lcom/android/server/display/ColorBalanceService;->mAutoMode:Lcom/android/server/display/ColorBalanceService$AutoMode;

    if-nez v3, :cond_2

    .line 462
    const/16 v3, 0xc

    invoke-virtual {p0, v3}, Lcom/android/server/display/ColorBalanceService;->sendMsg(I)V

    goto/16 :goto_3

    .line 479
    :cond_b
    const-string/jumbo v3, "ColorBalanceService"

    const-string/jumbo v5, "setup: turn on night Mode!"

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    iget-object v3, p0, Lcom/android/server/display/ColorBalanceService;->mController:Lcom/android/internal/app/NightDisplayController;

    invoke-virtual {v3, v4}, Lcom/android/internal/app/NightDisplayController;->setActivated(Z)Z

    goto :goto_4
.end method

.method private setupApplication()V
    .locals 3

    .prologue
    .line 1477
    const-string/jumbo v0, "ColorBalanceService"

    const-string/jumbo v1, "Display ColorManager registered.."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1478
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    if-nez v0, :cond_0

    .line 1479
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 1480
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v1

    .line 1481
    sget-object v2, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_DISPLAY_TYPE;->DISP_PRIMARY:Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_DISPLAY_TYPE;

    .line 1479
    invoke-static {v0, v1, v2}, Lcom/qti/snapdragon/sdk/display/ColorManager;->getInstance(Landroid/app/Application;Landroid/content/Context;Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_DISPLAY_TYPE;)Lcom/qti/snapdragon/sdk/display/ColorManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    .line 1483
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    if-nez v0, :cond_0

    .line 1484
    const-string/jumbo v0, "ColorBalanceService"

    const-string/jumbo v1, "Failed to get ColorManager instance."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1476
    :cond_0
    return-void
.end method

.method private shading(II)I
    .locals 6
    .param p1, "base"    # I
    .param p2, "obj"    # I

    .prologue
    const/4 v5, 0x0

    .line 1826
    move v1, p1

    .line 1828
    .local v1, "i":I
    if-le p2, p1, :cond_0

    .line 1829
    :goto_0
    if-ge v1, p2, :cond_1

    iget v2, p0, Lcom/android/server/display/ColorBalanceService;->mStartSetCount:I

    if-nez v2, :cond_1

    .line 1830
    add-int/lit8 v1, v1, 0x1

    .line 1831
    invoke-direct {p0, v1, v5}, Lcom/android/server/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 1832
    const-string/jumbo v2, "ColorBalanceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setColorBalance:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1834
    const-wide/16 v2, 0x8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1835
    :catch_0
    move-exception v0

    .line 1836
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 1841
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    :goto_1
    if-le v1, p2, :cond_1

    iget v2, p0, Lcom/android/server/display/ColorBalanceService;->mStartSetCount:I

    if-nez v2, :cond_1

    .line 1842
    add-int/lit8 v1, v1, -0x1

    .line 1843
    invoke-direct {p0, v1, v5}, Lcom/android/server/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 1844
    const-string/jumbo v2, "ColorBalanceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setColorBalance:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1846
    const-wide/16 v2, 0x8

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1847
    :catch_1
    move-exception v0

    .line 1848
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 1852
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_1
    return v1
.end method

.method private shadingSeekBar(II)I
    .locals 7
    .param p1, "base"    # I
    .param p2, "obj"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1773
    move v1, p1

    .line 1775
    .local v1, "i":I
    if-le p2, p1, :cond_3

    .line 1778
    :goto_0
    if-gt v1, p2, :cond_0

    iget v2, p0, Lcom/android/server/display/ColorBalanceService;->mStartSetCount:I

    if-nez v2, :cond_0

    iget v2, p0, Lcom/android/server/display/ColorBalanceService;->mStopSetCount:I

    if-nez v2, :cond_0

    .line 1779
    invoke-direct {p0, v1, v6}, Lcom/android/server/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 1780
    const-string/jumbo v2, "ColorBalanceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SeekBar setColorBalance:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1782
    const-wide/16 v2, 0x7

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1778
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1783
    :catch_0
    move-exception v0

    .line 1784
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 1787
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    iget v2, p0, Lcom/android/server/display/ColorBalanceService;->mStopSetCount:I

    if-ne v2, v6, :cond_2

    .line 1788
    :goto_2
    if-gt v1, p2, :cond_1

    iget v2, p0, Lcom/android/server/display/ColorBalanceService;->mStopSetCount:I

    if-ne v2, v6, :cond_1

    .line 1789
    invoke-direct {p0, v1, v5}, Lcom/android/server/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 1790
    const-string/jumbo v2, "ColorBalanceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SeekBar next,setColorBalance:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1788
    add-int/lit8 v1, v1, 0x3

    goto :goto_2

    .line 1793
    :cond_1
    const-wide/16 v2, 0x64

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1822
    :cond_2
    :goto_3
    const-string/jumbo v2, "ColorBalanceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mStartSetCount:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/display/ColorBalanceService;->mStartSetCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " mStopSetCount:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/display/ColorBalanceService;->mStopSetCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1823
    return v1

    .line 1794
    :catch_1
    move-exception v0

    .line 1795
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3

    .line 1801
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_3
    :goto_4
    if-lt v1, p2, :cond_4

    iget v2, p0, Lcom/android/server/display/ColorBalanceService;->mStartSetCount:I

    if-nez v2, :cond_4

    iget v2, p0, Lcom/android/server/display/ColorBalanceService;->mStopSetCount:I

    if-nez v2, :cond_4

    .line 1802
    invoke-direct {p0, v1, v5}, Lcom/android/server/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 1803
    const-string/jumbo v2, "ColorBalanceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SeekBar setColorBalance:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1805
    const-wide/16 v2, 0x7

    :try_start_2
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1801
    :goto_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    .line 1806
    :catch_2
    move-exception v0

    .line 1807
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_5

    .line 1810
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_4
    iget v2, p0, Lcom/android/server/display/ColorBalanceService;->mStopSetCount:I

    if-ne v2, v6, :cond_2

    .line 1811
    :goto_6
    if-lt v1, p2, :cond_5

    iget v2, p0, Lcom/android/server/display/ColorBalanceService;->mStopSetCount:I

    if-ne v2, v6, :cond_5

    .line 1812
    invoke-direct {p0, v1, v5}, Lcom/android/server/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 1813
    const-string/jumbo v2, "ColorBalanceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SeekBar next,setColorBalance:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1811
    add-int/lit8 v1, v1, -0x3

    goto :goto_6

    .line 1816
    :cond_5
    const-wide/16 v2, 0x64

    :try_start_3
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_3

    .line 1817
    :catch_3
    move-exception v0

    .line 1818
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_3
.end method

.method private tearDown()V
    .locals 4

    .prologue
    .line 485
    iget-object v1, p0, Lcom/android/server/display/ColorBalanceService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 486
    :try_start_0
    const-string/jumbo v0, "ColorBalanceService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "tearDown: currentUser="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentUser:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mController:Lcom/android/internal/app/NightDisplayController;

    if-eqz v0, :cond_0

    .line 488
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mController:Lcom/android/internal/app/NightDisplayController;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/internal/app/NightDisplayController;->setListener(Lcom/android/internal/app/NightDisplayController$Callback;)V

    .line 489
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mController:Lcom/android/internal/app/NightDisplayController;

    .line 492
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mAutoMode:Lcom/android/server/display/ColorBalanceService$AutoMode;

    if-eqz v0, :cond_1

    .line 493
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mAutoMode:Lcom/android/server/display/ColorBalanceService$AutoMode;

    invoke-virtual {v0}, Lcom/android/server/display/ColorBalanceService$AutoMode;->onStop()V

    .line 494
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mAutoMode:Lcom/android/server/display/ColorBalanceService$AutoMode;

    .line 496
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/ColorBalanceService;->mMode:I

    .line 497
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mIsTimeActivated:Ljava/lang/Boolean;

    .line 498
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/ColorBalanceService;->mNightModeAutoStatus:I

    .line 499
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mNightModeStatus:Ljava/lang/Boolean;

    .line 500
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mReadingModeStatus:Ljava/lang/Boolean;

    .line 501
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mIsDisableByApp:Ljava/lang/Boolean;

    .line 502
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mIsReadingModeActivatedAuto:Ljava/lang/Boolean;

    .line 503
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/ColorBalanceService;->mModeEnable:I

    .line 513
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 514
    const-string/jumbo v0, "ColorBalanceService"

    const-string/jumbo v2, "TearDown:Turning off reading mode"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    iget v0, p0, Lcom/android/server/display/ColorBalanceService;->mGeneration:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/display/ColorBalanceService;->mGeneration:I

    .line 516
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    .line 517
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/ColorBalanceService;->mReadingModeClosingStage:I

    .line 518
    iget v0, p0, Lcom/android/server/display/ColorBalanceService;->mGeneration:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v2, v0, v3}, Lcom/android/server/display/ColorBalanceService;->readingModeSwitch(ZII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    .line 484
    return-void

    .line 519
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 520
    const-string/jumbo v0, "ColorBalanceService"

    const-string/jumbo v2, "TearDown:Turning off night  mode"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    iget v0, p0, Lcom/android/server/display/ColorBalanceService;->mGeneration:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/display/ColorBalanceService;->mGeneration:I

    .line 522
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    .line 523
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/ColorBalanceService;->mNightModeClosingStage:I

    .line 524
    iget v0, p0, Lcom/android/server/display/ColorBalanceService;->mGeneration:I

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0}, Lcom/android/server/display/ColorBalanceService;->nightModeSwitch(ZI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 485
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 526
    :cond_3
    const/high16 v0, 0x3f800000    # 1.0f

    :try_start_2
    iput v0, p0, Lcom/android/server/display/ColorBalanceService;->mFactor:F

    .line 527
    invoke-direct {p0}, Lcom/android/server/display/ColorBalanceService;->closeMatrix()V

    .line 528
    const-string/jumbo v0, "ColorBalanceService"

    const-string/jumbo v2, "TearDown:Turn off B & W!"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    invoke-direct {p0}, Lcom/android/server/display/ColorBalanceService;->revertStatus()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private triggerNightModeButton(Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "on"    # Ljava/lang/Boolean;
    .param p2, "isIgnore"    # Ljava/lang/Boolean;

    .prologue
    .line 822
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mController:Lcom/android/internal/app/NightDisplayController;

    if-eqz v0, :cond_0

    .line 823
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 824
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mController:Lcom/android/internal/app/NightDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/NightDisplayController;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 825
    iput-object p2, p0, Lcom/android/server/display/ColorBalanceService;->mIsNightModeSettingFromeUser:Ljava/lang/Boolean;

    .line 826
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mController:Lcom/android/internal/app/NightDisplayController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/NightDisplayController;->setActivated(Z)Z

    .line 827
    const-string/jumbo v0, "ColorBalanceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "night mdoe trigger button is on,Is from user:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/ColorBalanceService;->mIsNightModeSettingFromeUser:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    :cond_0
    :goto_0
    return-void

    .line 830
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mController:Lcom/android/internal/app/NightDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/NightDisplayController;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 831
    iput-object p2, p0, Lcom/android/server/display/ColorBalanceService;->mIsNightModeSettingFromeUser:Ljava/lang/Boolean;

    .line 832
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mController:Lcom/android/internal/app/NightDisplayController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/app/NightDisplayController;->setActivated(Z)Z

    .line 833
    const-string/jumbo v0, "ColorBalanceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "night mdoe trigger button is off,Is from user:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/ColorBalanceService;->mIsNightModeSettingFromeUser:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private triggerReadingButton(Ljava/lang/Boolean;)V
    .locals 5
    .param p1, "on"    # Ljava/lang/Boolean;

    .prologue
    const/4 v4, -0x2

    const/4 v3, 0x0

    .line 674
    iget-object v1, p0, Lcom/android/server/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 675
    const-string/jumbo v2, "reading_mode_status_manual"

    .line 674
    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 677
    .local v0, "status":I
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    .line 678
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/ColorBalanceService;->mIsReadingModeSettingFromeUser:Ljava/lang/Boolean;

    .line 679
    iget-object v1, p0, Lcom/android/server/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 680
    const-string/jumbo v2, "reading_mode_status_manual"

    .line 681
    const-string/jumbo v3, "force-on"

    .line 679
    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 673
    :cond_0
    :goto_0
    return-void

    .line 682
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 683
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/ColorBalanceService;->mIsReadingModeSettingFromeUser:Ljava/lang/Boolean;

    .line 684
    iget-object v1, p0, Lcom/android/server/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 685
    const-string/jumbo v2, "reading_mode_status_manual"

    .line 686
    const-string/jumbo v3, "force-off"

    .line 684
    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_0
.end method


# virtual methods
.method public onAutoModeChanged(I)V
    .locals 3
    .param p1, "autoMode"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1095
    iput p1, p0, Lcom/android/server/display/ColorBalanceService;->mNightDisplayMoede:I

    .line 1096
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mAutoMode:Lcom/android/server/display/ColorBalanceService$AutoMode;

    if-eqz v0, :cond_0

    .line 1097
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mAutoMode:Lcom/android/server/display/ColorBalanceService$AutoMode;

    invoke-virtual {v0}, Lcom/android/server/display/ColorBalanceService$AutoMode;->onStop()V

    .line 1098
    iput-object v1, p0, Lcom/android/server/display/ColorBalanceService;->mAutoMode:Lcom/android/server/display/ColorBalanceService$AutoMode;

    .line 1101
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 1102
    new-instance v0, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;

    invoke-direct {v0, p0}, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;-><init>(Lcom/android/server/display/ColorBalanceService;)V

    iput-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mAutoMode:Lcom/android/server/display/ColorBalanceService$AutoMode;

    .line 1112
    :goto_0
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mAutoMode:Lcom/android/server/display/ColorBalanceService$AutoMode;

    if-eqz v0, :cond_1

    .line 1113
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mAutoMode:Lcom/android/server/display/ColorBalanceService$AutoMode;

    invoke-virtual {v0}, Lcom/android/server/display/ColorBalanceService$AutoMode;->onStart()V

    .line 1092
    :cond_1
    return-void

    .line 1103
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 1104
    new-instance v0, Lcom/android/server/display/ColorBalanceService$TwilightAutoMode;

    invoke-direct {v0, p0}, Lcom/android/server/display/ColorBalanceService$TwilightAutoMode;-><init>(Lcom/android/server/display/ColorBalanceService;)V

    iput-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mAutoMode:Lcom/android/server/display/ColorBalanceService$AutoMode;

    goto :goto_0

    .line 1106
    :cond_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mIsTimeActivated:Ljava/lang/Boolean;

    .line 1107
    iput v2, p0, Lcom/android/server/display/ColorBalanceService;->mNightModeAutoStatus:I

    goto :goto_0
.end method

.method public onBootPhase(I)V
    .locals 2
    .param p1, "phase"    # I

    .prologue
    .line 310
    iput p1, p0, Lcom/android/server/display/ColorBalanceService;->mBootPhase:I

    .line 313
    const/16 v0, 0x258

    .line 311
    if-ne p1, v0, :cond_3

    .line 315
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mContext:Landroid/content/Context;

    .line 316
    const-string/jumbo v1, "power"

    .line 315
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mPowerManager:Landroid/os/PowerManager;

    .line 317
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mIsScreenOn:Ljava/lang/Boolean;

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->dtm:Lcom/android/server/display/DisplayTransformManager;

    if-nez v0, :cond_1

    .line 320
    const-class v0, Lcom/android/server/display/DisplayTransformManager;

    invoke-virtual {p0, v0}, Lcom/android/server/display/ColorBalanceService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/DisplayTransformManager;

    iput-object v0, p0, Lcom/android/server/display/ColorBalanceService;->dtm:Lcom/android/server/display/DisplayTransformManager;

    .line 321
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/ColorBalanceService;->mBootCompleted:Z

    .line 323
    iget v0, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentUser:I

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mUserSetupObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_2

    .line 324
    const-string/jumbo v0, "ColorBalanceService"

    const-string/jumbo v1, "onBootPhase Call the function setUp "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    invoke-direct {p0}, Lcom/android/server/display/ColorBalanceService;->colorManagerInit()Z

    .line 326
    invoke-direct {p0}, Lcom/android/server/display/ColorBalanceService;->setUp()V

    .line 328
    :cond_2
    new-instance v0, Landroid/hardware/display/SDManager;

    iget-object v1, p0, Lcom/android/server/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/hardware/display/SDManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mSDM:Landroid/hardware/display/SDManager;

    .line 309
    :cond_3
    return-void
.end method

.method public onCustomEndTimeChanged(Lcom/android/internal/app/NightDisplayController$LocalTime;)V
    .locals 3
    .param p1, "endTime"    # Lcom/android/internal/app/NightDisplayController$LocalTime;

    .prologue
    .line 1128
    const-string/jumbo v0, "ColorBalanceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCustomEndTimeChanged: endTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mAutoMode:Lcom/android/server/display/ColorBalanceService$AutoMode;

    if-eqz v0, :cond_0

    .line 1131
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mAutoMode:Lcom/android/server/display/ColorBalanceService$AutoMode;

    invoke-virtual {v0, p1}, Lcom/android/server/display/ColorBalanceService$AutoMode;->onCustomEndTimeChanged(Lcom/android/internal/app/NightDisplayController$LocalTime;)V

    .line 1127
    :cond_0
    return-void
.end method

.method public onCustomStartTimeChanged(Lcom/android/internal/app/NightDisplayController$LocalTime;)V
    .locals 3
    .param p1, "startTime"    # Lcom/android/internal/app/NightDisplayController$LocalTime;

    .prologue
    .line 1119
    const-string/jumbo v0, "ColorBalanceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCustomStartTimeChanged: startTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mAutoMode:Lcom/android/server/display/ColorBalanceService$AutoMode;

    if-eqz v0, :cond_0

    .line 1122
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mAutoMode:Lcom/android/server/display/ColorBalanceService$AutoMode;

    invoke-virtual {v0, p1}, Lcom/android/server/display/ColorBalanceService$AutoMode;->onCustomStartTimeChanged(Lcom/android/internal/app/NightDisplayController$LocalTime;)V

    .line 1118
    :cond_0
    return-void
.end method

.method public onModeSettingChange()V
    .locals 0

    .prologue
    .line 1089
    invoke-direct {p0}, Lcom/android/server/display/ColorBalanceService;->revertStatus()V

    .line 1085
    return-void
.end method

.method public onNightModeActivated(Z)V
    .locals 10
    .param p1, "activated"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 691
    const-string/jumbo v5, "ColorBalanceService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onNightModeActivated:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    iget-object v6, p0, Lcom/android/server/display/ColorBalanceService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 693
    :try_start_0
    iget-object v5, p0, Lcom/android/server/display/ColorBalanceService;->mIsNightModeSettingFromeUser:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_0

    .line 694
    const-string/jumbo v3, "ColorBalanceService"

    const-string/jumbo v4, "onNightModeActivated ignore being invoked "

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/display/ColorBalanceService;->mIsNightModeSettingFromeUser:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    .line 696
    return-void

    .line 705
    :cond_0
    :try_start_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/display/ColorBalanceService;->mNightModeStatus:Ljava/lang/Boolean;

    .line 706
    if-eqz p1, :cond_7

    .line 707
    iget v5, p0, Lcom/android/server/display/ColorBalanceService;->mMode:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/server/display/ColorBalanceService;->mMode:I

    .line 713
    :goto_0
    const-string/jumbo v5, "ColorBalanceService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onNightModeActivated,save mode:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/display/ColorBalanceService;->mMode:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    iget-object v5, p0, Lcom/android/server/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 715
    const-string/jumbo v7, "colorbalanceservice-night-reading-mode"

    iget v8, p0, Lcom/android/server/display/ColorBalanceService;->mMode:I

    const/4 v9, -0x2

    .line 714
    invoke-static {v5, v7, v8, v9}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 716
    iget-object v5, p0, Lcom/android/server/display/ColorBalanceService;->mIsDisableByApp:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 717
    const-string/jumbo v5, "ColorBalanceService"

    const-string/jumbo v7, "onNightModeActivated: reading mode disable App!"

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    if-eqz p1, :cond_8

    iget-object v5, p0, Lcom/android/server/display/ColorBalanceService;->mReadingModeStatus:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 719
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/display/ColorBalanceService;->triggerReadingButton(Ljava/lang/Boolean;)V

    .line 724
    :cond_1
    :goto_1
    const-string/jumbo v5, "ColorBalanceService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onNightModeActivated:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " current-status:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    iget-object v5, p0, Lcom/android/server/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/server/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eq v5, p1, :cond_6

    .line 726
    :cond_2
    const-string/jumbo v7, "ColorBalanceService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onNightModeActivated:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v8, p0, Lcom/android/server/display/ColorBalanceService;->mNightDisplayMoede:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 727
    if-eqz p1, :cond_9

    const-string/jumbo v5, " Turning on night display"

    .line 726
    :goto_2
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    iget v5, p0, Lcom/android/server/display/ColorBalanceService;->mGeneration:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/server/display/ColorBalanceService;->mGeneration:I

    .line 730
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentSrgbSensorAverageColor:I

    .line 731
    iget-object v5, p0, Lcom/android/server/display/ColorBalanceService;->mAutoMode:Lcom/android/server/display/ColorBalanceService$AutoMode;

    if-eqz v5, :cond_3

    .line 732
    iget-object v5, p0, Lcom/android/server/display/ColorBalanceService;->mAutoMode:Lcom/android/server/display/ColorBalanceService$AutoMode;

    invoke-virtual {v5, p1}, Lcom/android/server/display/ColorBalanceService$AutoMode;->onActivated(Z)V

    .line 734
    :cond_3
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    .line 736
    iget-object v5, p0, Lcom/android/server/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 737
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/display/ColorBalanceService;->mStableCount:I

    .line 738
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/display/ColorBalanceService;->mAverageColor:I

    .line 739
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/display/ColorBalanceService;->mPreColorTemp:I

    .line 742
    iget-object v3, p0, Lcom/android/server/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 743
    const-string/jumbo v4, "oem_nightmode_progress_status"

    const/16 v5, 0x67

    const/4 v7, -0x2

    .line 742
    invoke-static {v3, v4, v5, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    .line 741
    rsub-int v3, v3, 0x84

    add-int/lit8 v3, v3, -0x5a

    iput v3, p0, Lcom/android/server/display/ColorBalanceService;->mPretNightColorbalance:I

    iput v3, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentNightColorbalance:I

    .line 745
    iget-object v3, p0, Lcom/android/server/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/server/display/ColorBalanceService;->mIsReadingModeActivatedAuto:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 746
    :cond_4
    iget-object v3, p0, Lcom/android/server/display/ColorBalanceService;->mIsReadingModeActivatedAuto:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 747
    const-string/jumbo v3, "ColorBalanceService"

    const-string/jumbo v4, "turn off reading mode button!"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    iget-object v3, p0, Lcom/android/server/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 749
    const-string/jumbo v4, "reading_mode_status_manual"

    .line 750
    const-string/jumbo v5, "force-off"

    const/4 v7, -0x2

    .line 748
    invoke-static {v3, v4, v5, v7}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 752
    :cond_5
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    .line 753
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/display/ColorBalanceService;->mIsReadingModeActivatedAuto:Ljava/lang/Boolean;

    .line 754
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/display/ColorBalanceService;->triggerReadingButton(Ljava/lang/Boolean;)V

    .line 755
    iget v3, p0, Lcom/android/server/display/ColorBalanceService;->mMode:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/display/ColorBalanceService;->mMode:I

    .line 756
    const/4 v3, 0x1

    iput v3, p0, Lcom/android/server/display/ColorBalanceService;->mModeEnable:I

    .line 757
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/display/ColorBalanceService;->mReading2NightModeStage:I

    .line 758
    const/4 v3, 0x1

    iput v3, p0, Lcom/android/server/display/ColorBalanceService;->mModeStage:I

    .line 759
    iget v3, p0, Lcom/android/server/display/ColorBalanceService;->mGeneration:I

    const/16 v4, 0xe

    invoke-virtual {p0, v4, v3}, Lcom/android/server/display/ColorBalanceService;->sendMsgWithValue(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_6
    :goto_3
    monitor-exit v6

    .line 690
    return-void

    .line 710
    :cond_7
    :try_start_2
    iget v5, p0, Lcom/android/server/display/ColorBalanceService;->mMode:I

    and-int/lit8 v5, v5, -0x2

    iput v5, p0, Lcom/android/server/display/ColorBalanceService;->mMode:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 692
    :catchall_0
    move-exception v3

    monitor-exit v6

    throw v3

    .line 720
    :cond_8
    if-nez p1, :cond_1

    :try_start_3
    iget-object v5, p0, Lcom/android/server/display/ColorBalanceService;->mReadingModeStatus:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 721
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/display/ColorBalanceService;->triggerReadingButton(Ljava/lang/Boolean;)V

    goto/16 :goto_1

    .line 727
    :cond_9
    const-string/jumbo v5, " Turning off night display"

    goto/16 :goto_2

    .line 761
    :cond_a
    iget v3, p0, Lcom/android/server/display/ColorBalanceService;->mMode:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/display/ColorBalanceService;->mMode:I

    .line 762
    const/4 v3, 0x1

    iput v3, p0, Lcom/android/server/display/ColorBalanceService;->mModeEnable:I

    .line 763
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/display/ColorBalanceService;->mNightModeOpingStage:I

    .line 764
    const/4 v3, 0x1

    iput v3, p0, Lcom/android/server/display/ColorBalanceService;->mModeStage:I

    .line 765
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/display/ColorBalanceService;->mStableColor:I

    .line 766
    iget v3, p0, Lcom/android/server/display/ColorBalanceService;->mGeneration:I

    const/16 v4, 0xa

    invoke-virtual {p0, v4, v3}, Lcom/android/server/display/ColorBalanceService;->sendMsgWithValue(II)V

    goto :goto_3

    .line 770
    :cond_b
    iget v5, p0, Lcom/android/server/display/ColorBalanceService;->mMode:I

    and-int/lit8 v5, v5, -0x2

    iput v5, p0, Lcom/android/server/display/ColorBalanceService;->mMode:I

    .line 771
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/display/ColorBalanceService;->mIsTimeActivated:Ljava/lang/Boolean;

    .line 772
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/server/display/ColorBalanceService;->mNightModeAutoStatus:I

    .line 773
    const-string/jumbo v5, "ColorBalanceService"

    const-string/jumbo v7, "onNightModeActivated:Night mode is off,set mIsTimeActivated false!"

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    const/4 v5, 0x3

    iput v5, p0, Lcom/android/server/display/ColorBalanceService;->mModeEnable:I

    .line 775
    iget v5, p0, Lcom/android/server/display/ColorBalanceService;->mMode:I

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/android/server/display/ColorBalanceService;->mIsDisableByApp:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 784
    :cond_c
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v1

    .line 787
    .local v1, "isAutoReadingModeOn":Ljava/lang/Boolean;
    :try_start_4
    iget-object v5, p0, Lcom/android/server/display/ColorBalanceService;->mOemExSvc:Lcom/oem/os/IOemExService;

    if-nez v5, :cond_d

    .line 788
    const-string/jumbo v5, "OEMExService"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/oem/os/IOemExService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oem/os/IOemExService;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/display/ColorBalanceService;->mOemExSvc:Lcom/oem/os/IOemExService;

    .line 790
    :cond_d
    iget-object v5, p0, Lcom/android/server/display/ColorBalanceService;->mOemExSvc:Lcom/oem/os/IOemExService;

    if-eqz v5, :cond_e

    .line 792
    iget-object v5, p0, Lcom/android/server/display/ColorBalanceService;->mOemExSvc:Lcom/oem/os/IOemExService;

    const/4 v7, 0x0

    .line 793
    const/4 v8, 0x1

    .line 792
    invoke-interface {v5, v7, v8}, Lcom/oem/os/IOemExService;->preEvaluateModeStatus(II)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 794
    iget-object v5, p0, Lcom/android/server/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v7, "reading_mode_status"

    const/4 v8, 0x0

    const/4 v9, -0x2

    invoke-static {v5, v7, v8, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 795
    .local v2, "status":I
    const-string/jumbo v5, "ColorBalanceService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isAutoReadingModeOn:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " READING_MODE_STATUS:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_10

    if-ne v2, v3, :cond_10

    :goto_4
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v1

    .line 801
    .end local v2    # "status":I
    :cond_e
    :goto_5
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 802
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    .line 804
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/server/display/ColorBalanceService;->mModeEnable:I

    .line 805
    const-string/jumbo v3, "ColorBalanceService"

    const-string/jumbo v4, "Auto Reading mode is on,turn on Reading mode"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/display/ColorBalanceService;->mNight2ReadingModeStage:I

    .line 807
    const/4 v3, 0x5

    iput v3, p0, Lcom/android/server/display/ColorBalanceService;->mModeStage:I

    .line 808
    iget v3, p0, Lcom/android/server/display/ColorBalanceService;->mGeneration:I

    const/16 v4, 0xd

    invoke-virtual {p0, v4, v3}, Lcom/android/server/display/ColorBalanceService;->sendMsgWithValue(II)V

    goto/16 :goto_3

    .line 776
    .end local v1    # "isAutoReadingModeOn":Ljava/lang/Boolean;
    :cond_f
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    .line 777
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/server/display/ColorBalanceService;->mModeEnable:I

    .line 778
    const-string/jumbo v3, "ColorBalanceService"

    const-string/jumbo v4, "onNightModeActivated:Night mode is off, revert to reading mode!"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/display/ColorBalanceService;->mNight2ReadingModeStage:I

    .line 780
    const/4 v3, 0x5

    iput v3, p0, Lcom/android/server/display/ColorBalanceService;->mModeStage:I

    .line 781
    iget v3, p0, Lcom/android/server/display/ColorBalanceService;->mGeneration:I

    const/16 v4, 0xd

    invoke-virtual {p0, v4, v3}, Lcom/android/server/display/ColorBalanceService;->sendMsgWithValue(II)V

    .line 782
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/display/ColorBalanceService;->triggerReadingButton(Ljava/lang/Boolean;)V

    goto/16 :goto_3

    .restart local v1    # "isAutoReadingModeOn":Ljava/lang/Boolean;
    .restart local v2    # "status":I
    :cond_10
    move v3, v4

    .line 796
    goto :goto_4

    .line 798
    .end local v2    # "status":I
    :catch_0
    move-exception v0

    .line 799
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "ColorBalanceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "error while operating the scene mode controller: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 810
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_11
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/display/ColorBalanceService;->mNightModeClosingStage:I

    .line 811
    const/4 v3, 0x3

    iput v3, p0, Lcom/android/server/display/ColorBalanceService;->mModeStage:I

    .line 812
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/display/ColorBalanceService;->mStableColor:I

    .line 814
    iget v3, p0, Lcom/android/server/display/ColorBalanceService;->mGeneration:I

    const/16 v4, 0xa

    invoke-virtual {p0, v4, v3}, Lcom/android/server/display/ColorBalanceService;->sendMsgWithValue(II)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_3
.end method

.method public onNightOrReadingModeDisableByApp(Z)V
    .locals 7
    .param p1, "on"    # Z

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x5

    const/4 v0, 0x0

    .line 1043
    iget-object v1, p0, Lcom/android/server/display/ColorBalanceService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1044
    :try_start_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/display/ColorBalanceService;->mIsDisableByApp:Ljava/lang/Boolean;

    .line 1045
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentSrgbSensorAverageColor:I

    .line 1046
    const-string/jumbo v2, "ColorBalanceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onNightOrReadingModeChangeByApp,on:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " mModeEnable:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/display/ColorBalanceService;->mModeEnable:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " mReadingModeStatus:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/display/ColorBalanceService;->mReadingModeStatus:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    iget v2, p0, Lcom/android/server/display/ColorBalanceService;->mModeEnable:I

    if-eq v2, v6, :cond_1

    iget v2, p0, Lcom/android/server/display/ColorBalanceService;->mModeEnable:I

    if-ne v2, v5, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/server/display/ColorBalanceService;->mReadingModeStatus:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/server/display/ColorBalanceService;->mModeEnable:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    .line 1065
    :cond_1
    if-eqz p1, :cond_3

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    .line 1066
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/ColorBalanceService;->mReadingModeOpingStage:I

    .line 1067
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/ColorBalanceService;->mReadingModeClosingStage:I

    .line 1068
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1069
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/display/ColorBalanceService;->mModeEnable:I

    .line 1073
    :goto_1
    const/16 v0, -0x14

    iput v0, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    .line 1074
    const-string/jumbo v2, "ColorBalanceService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onNightOrReadingModeChangeByApp,"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "turn on reading mode!"

    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1076
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/display/ColorBalanceService;->mModeStage:I

    .line 1079
    :goto_3
    iget v0, p0, Lcom/android/server/display/ColorBalanceService;->mGeneration:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/display/ColorBalanceService;->mGeneration:I

    .line 1080
    iget v0, p0, Lcom/android/server/display/ColorBalanceService;->mGeneration:I

    const/16 v2, 0xb

    invoke-virtual {p0, v2, v0}, Lcom/android/server/display/ColorBalanceService;->sendMsgWithValue(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v1

    .line 1042
    return-void

    .line 1065
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mReadingModeStatus:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    .line 1071
    :cond_4
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/display/ColorBalanceService;->mModeEnable:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1043
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1074
    :cond_5
    :try_start_2
    const-string/jumbo v0, "turn off reading mode!"

    goto :goto_2

    .line 1078
    :cond_6
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/server/display/ColorBalanceService;->mModeStage:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method

.method public onReadingModeActivatedAuto(Z)V
    .locals 5
    .param p1, "activated"    # Z

    .prologue
    const/4 v4, 0x1

    .line 840
    const-string/jumbo v0, "ColorBalanceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onReadingModeActivatedAuto:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " bootPhase: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/ColorBalanceService;->mBootPhase:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    iget-object v1, p0, Lcom/android/server/display/ColorBalanceService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 842
    :try_start_0
    iget v0, p0, Lcom/android/server/display/ColorBalanceService;->mBootPhase:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v2, 0x3e8

    if-ge v0, v2, :cond_0

    monitor-exit v1

    .line 843
    return-void

    .line 845
    :cond_0
    :try_start_1
    const-string/jumbo v0, "ColorBalanceService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onReadingModeActivatedAuto:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/ColorBalanceService;->mIsReadingModeActivatedAuto:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mIsReadingModeActivatedAuto:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, p1, :cond_1

    .line 847
    const-string/jumbo v0, "ColorBalanceService"

    const-string/jumbo v2, "onReadingModeActivatedAuto ignore same status!"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 848
    return-void

    .line 850
    :cond_1
    const/4 v0, 0x0

    :try_start_2
    iput v0, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentSrgbSensorAverageColor:I

    .line 851
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mIsReadingModeActivatedAuto:Ljava/lang/Boolean;

    .line 852
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mIsReadingModeActivatedAuto:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 854
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/ColorBalanceService;->mStableCount:I

    .line 855
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/ColorBalanceService;->mAverageColor:I

    .line 856
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/ColorBalanceService;->mPreColorTemp:I

    .line 858
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 859
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    .line 860
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    .line 861
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/display/ColorBalanceService;->mModeEnable:I

    .line 862
    const-string/jumbo v0, "ColorBalanceService"

    const-string/jumbo v2, "onReadingModeActivatedAuto:switch night into reading mode!"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/ColorBalanceService;->mNight2ReadingModeStage:I

    .line 865
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/display/ColorBalanceService;->mModeStage:I

    .line 866
    iget v0, p0, Lcom/android/server/display/ColorBalanceService;->mGeneration:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/display/ColorBalanceService;->mGeneration:I

    .line 867
    iget v0, p0, Lcom/android/server/display/ColorBalanceService;->mGeneration:I

    const/16 v2, 0xd

    invoke-virtual {p0, v2, v0}, Lcom/android/server/display/ColorBalanceService;->sendMsgWithValue(II)V

    .line 868
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/server/display/ColorBalanceService;->triggerNightModeButton(Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    :goto_0
    monitor-exit v1

    .line 839
    return-void

    .line 870
    :cond_3
    const/4 v0, 0x1

    :try_start_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    .line 871
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    .line 872
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/display/ColorBalanceService;->mModeEnable:I

    .line 873
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/ColorBalanceService;->mReadingModeOpingStage:I

    .line 874
    const/16 v0, -0x14

    iput v0, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    .line 875
    const-string/jumbo v0, "ColorBalanceService"

    const-string/jumbo v2, "onReadingModeActivatedAuto:turning reading mode!"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/display/ColorBalanceService;->mModeStage:I

    .line 877
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/ColorBalanceService;->mStableColor:I

    .line 878
    iget v0, p0, Lcom/android/server/display/ColorBalanceService;->mGeneration:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/display/ColorBalanceService;->mGeneration:I

    .line 879
    iget v0, p0, Lcom/android/server/display/ColorBalanceService;->mGeneration:I

    const/16 v2, 0xb

    invoke-virtual {p0, v2, v0}, Lcom/android/server/display/ColorBalanceService;->sendMsgWithValue(II)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 841
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 883
    :cond_4
    :try_start_4
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mNightModeStatus:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_5

    iget v0, p0, Lcom/android/server/display/ColorBalanceService;->mNightModeAutoStatus:I

    if-ne v0, v4, :cond_6

    .line 884
    :cond_5
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    .line 885
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    .line 886
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/display/ColorBalanceService;->mModeEnable:I

    .line 887
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/ColorBalanceService;->mReading2NightModeStage:I

    .line 888
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/display/ColorBalanceService;->triggerReadingButton(Ljava/lang/Boolean;)V

    .line 889
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/server/display/ColorBalanceService;->triggerNightModeButton(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 891
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 892
    const-string/jumbo v2, "oem_nightmode_progress_status"

    const/16 v3, 0x67

    const/4 v4, -0x2

    .line 891
    invoke-static {v0, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 890
    rsub-int v0, v0, 0x84

    add-int/lit8 v0, v0, -0x5a

    iput v0, p0, Lcom/android/server/display/ColorBalanceService;->mPretNightColorbalance:I

    iput v0, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentNightColorbalance:I

    .line 894
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/display/ColorBalanceService;->mModeStage:I

    .line 895
    iget v0, p0, Lcom/android/server/display/ColorBalanceService;->mGeneration:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/display/ColorBalanceService;->mGeneration:I

    .line 896
    iget v0, p0, Lcom/android/server/display/ColorBalanceService;->mGeneration:I

    const/16 v2, 0xe

    invoke-virtual {p0, v2, v0}, Lcom/android/server/display/ColorBalanceService;->sendMsgWithValue(II)V

    goto/16 :goto_0

    .line 898
    :cond_6
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mReadingModeStatus:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_7

    .line 899
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    .line 900
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/display/ColorBalanceService;->mModeEnable:I

    .line 901
    const-string/jumbo v0, "ColorBalanceService"

    const-string/jumbo v2, "onReadingModeActivatedAuto Turning off reading mode"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/ColorBalanceService;->mReadingModeClosingStage:I

    .line 903
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/server/display/ColorBalanceService;->mModeStage:I

    .line 904
    iget v0, p0, Lcom/android/server/display/ColorBalanceService;->mGeneration:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/display/ColorBalanceService;->mGeneration:I

    .line 905
    iget v0, p0, Lcom/android/server/display/ColorBalanceService;->mGeneration:I

    const/16 v2, 0xb

    invoke-virtual {p0, v2, v0}, Lcom/android/server/display/ColorBalanceService;->sendMsgWithValue(II)V

    .line 907
    :cond_7
    iget v0, p0, Lcom/android/server/display/ColorBalanceService;->mNightModeAutoStatus:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    .line 908
    const-string/jumbo v0, "ColorBalanceService"

    const-string/jumbo v2, "onReadingModeActivatedAuto: night mode should be off status!"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/ColorBalanceService;->mNightModeAutoStatus:I

    .line 910
    iget v0, p0, Lcom/android/server/display/ColorBalanceService;->mMode:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/server/display/ColorBalanceService;->mMode:I

    .line 912
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    .line 913
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mNightModeStatus:Ljava/lang/Boolean;

    .line 914
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/server/display/ColorBalanceService;->triggerNightModeButton(Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0
.end method

.method public onReadingModeActivatedManual(Z)V
    .locals 6
    .param p1, "activated"    # Z

    .prologue
    const/4 v5, 0x1

    .line 922
    iget-object v1, p0, Lcom/android/server/display/ColorBalanceService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 923
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mIsReadingModeSettingFromeUser:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 924
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mIsReadingModeSettingFromeUser:Ljava/lang/Boolean;

    .line 925
    const-string/jumbo v0, "ColorBalanceService"

    const-string/jumbo v2, "onReadingModeActivatedManual ignore being invoked!"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 926
    return-void

    .line 929
    :cond_0
    :try_start_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mReadingModeStatus:Ljava/lang/Boolean;

    .line 930
    if-eqz p1, :cond_2

    .line 931
    iget v0, p0, Lcom/android/server/display/ColorBalanceService;->mMode:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/server/display/ColorBalanceService;->mMode:I

    .line 937
    :goto_0
    const-string/jumbo v0, "ColorBalanceService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onReadingModeActivatedManual,save mode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/display/ColorBalanceService;->mMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 939
    const-string/jumbo v2, "colorbalanceservice-night-reading-mode"

    iget v3, p0, Lcom/android/server/display/ColorBalanceService;->mMode:I

    const/4 v4, -0x2

    .line 938
    invoke-static {v0, v2, v3, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 940
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mIsDisableByApp:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 941
    const-string/jumbo v0, "ColorBalanceService"

    const-string/jumbo v2, "reaing disable app,ignore!"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mNightModeStatus:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 943
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/server/display/ColorBalanceService;->triggerNightModeButton(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 944
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/ColorBalanceService;->mNightModeClosingStage:I

    .line 945
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/display/ColorBalanceService;->mModeStage:I

    .line 946
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    .line 948
    iget v0, p0, Lcom/android/server/display/ColorBalanceService;->mGeneration:I

    const/16 v2, 0xa

    invoke-virtual {p0, v2, v0}, Lcom/android/server/display/ColorBalanceService;->sendMsgWithValue(II)V

    .line 952
    :cond_1
    :goto_1
    if-eqz p1, :cond_4

    .line 953
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/display/ColorBalanceService;->mModeEnable:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    monitor-exit v1

    .line 957
    return-void

    .line 934
    :cond_2
    :try_start_2
    iget v0, p0, Lcom/android/server/display/ColorBalanceService;->mMode:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/server/display/ColorBalanceService;->mMode:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 922
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 949
    :cond_3
    if-nez p1, :cond_1

    :try_start_3
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mNightModeStatus:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 950
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/server/display/ColorBalanceService;->triggerNightModeButton(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto :goto_1

    .line 955
    :cond_4
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/display/ColorBalanceService;->mModeEnable:I

    goto :goto_2

    .line 959
    :cond_5
    const-string/jumbo v0, "ColorBalanceService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onReadingModeActivatedManual:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " current-status:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v0, p1, :cond_6

    .line 982
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    .line 983
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 984
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/ColorBalanceService;->mStableCount:I

    .line 985
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/ColorBalanceService;->mAverageColor:I

    .line 986
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/ColorBalanceService;->mPreColorTemp:I

    .line 988
    const/16 v0, -0x14

    iput v0, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    .line 989
    iget v0, p0, Lcom/android/server/display/ColorBalanceService;->mMode:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/server/display/ColorBalanceService;->mMode:I

    .line 990
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 991
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    .line 992
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/server/display/ColorBalanceService;->triggerNightModeButton(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 993
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/ColorBalanceService;->mNightModeClosingStage:I

    .line 994
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/display/ColorBalanceService;->mModeEnable:I

    .line 995
    const-string/jumbo v0, "ColorBalanceService"

    const-string/jumbo v2, "onReadingModeActivatedManual changing night to reading mode"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/ColorBalanceService;->mNight2ReadingModeStage:I

    .line 997
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/display/ColorBalanceService;->mModeStage:I

    .line 998
    iget v0, p0, Lcom/android/server/display/ColorBalanceService;->mGeneration:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/display/ColorBalanceService;->mGeneration:I

    .line 999
    iget v0, p0, Lcom/android/server/display/ColorBalanceService;->mGeneration:I

    const/16 v2, 0xd

    invoke-virtual {p0, v2, v0}, Lcom/android/server/display/ColorBalanceService;->sendMsgWithValue(II)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_6
    :goto_3
    monitor-exit v1

    .line 921
    return-void

    .line 1001
    :cond_7
    const/4 v0, 0x2

    :try_start_4
    iput v0, p0, Lcom/android/server/display/ColorBalanceService;->mModeEnable:I

    .line 1002
    const-string/jumbo v0, "ColorBalanceService"

    const-string/jumbo v2, "onReadingModeActivatedManual Turning on reading mode"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/ColorBalanceService;->mReadingModeOpingStage:I

    .line 1004
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/display/ColorBalanceService;->mModeStage:I

    .line 1005
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/ColorBalanceService;->mStableColor:I

    .line 1006
    iget v0, p0, Lcom/android/server/display/ColorBalanceService;->mGeneration:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/display/ColorBalanceService;->mGeneration:I

    .line 1007
    iget v0, p0, Lcom/android/server/display/ColorBalanceService;->mGeneration:I

    const/16 v2, 0xb

    invoke-virtual {p0, v2, v0}, Lcom/android/server/display/ColorBalanceService;->sendMsgWithValue(II)V

    goto :goto_3

    .line 1011
    :cond_8
    iget v0, p0, Lcom/android/server/display/ColorBalanceService;->mMode:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/server/display/ColorBalanceService;->mMode:I

    .line 1012
    const-string/jumbo v0, "ColorBalanceService"

    const-string/jumbo v2, "onReadingModeActivatedManual Turning off reading mode"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    iget v0, p0, Lcom/android/server/display/ColorBalanceService;->mNightModeAutoStatus:I

    if-eq v0, v5, :cond_9

    iget v0, p0, Lcom/android/server/display/ColorBalanceService;->mMode:I

    if-eqz v0, :cond_a

    .line 1015
    :cond_9
    iget v0, p0, Lcom/android/server/display/ColorBalanceService;->mMode:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/display/ColorBalanceService;->mMode:I

    .line 1016
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    .line 1017
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    .line 1018
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/display/ColorBalanceService;->mModeEnable:I

    .line 1019
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/ColorBalanceService;->mReading2NightModeStage:I

    .line 1021
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1022
    const-string/jumbo v2, "oem_nightmode_progress_status"

    const/16 v3, 0x67

    const/4 v4, -0x2

    .line 1021
    invoke-static {v0, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 1020
    rsub-int v0, v0, 0x84

    add-int/lit8 v0, v0, -0x5a

    iput v0, p0, Lcom/android/server/display/ColorBalanceService;->mPretNightColorbalance:I

    iput v0, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentNightColorbalance:I

    .line 1024
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/display/ColorBalanceService;->mModeStage:I

    .line 1025
    iget v0, p0, Lcom/android/server/display/ColorBalanceService;->mGeneration:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/display/ColorBalanceService;->mGeneration:I

    .line 1026
    iget v0, p0, Lcom/android/server/display/ColorBalanceService;->mGeneration:I

    const/16 v2, 0xe

    invoke-virtual {p0, v2, v0}, Lcom/android/server/display/ColorBalanceService;->sendMsgWithValue(II)V

    .line 1027
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/server/display/ColorBalanceService;->triggerNightModeButton(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 1028
    const-string/jumbo v0, "ColorBalanceService"

    const-string/jumbo v2, "onReadingModeActivatedManual Revert to night mode!"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1030
    :cond_a
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/server/display/ColorBalanceService;->mModeStage:I

    .line 1031
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/ColorBalanceService;->mStableColor:I

    .line 1032
    iget v0, p0, Lcom/android/server/display/ColorBalanceService;->mGeneration:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/display/ColorBalanceService;->mGeneration:I

    .line 1033
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/display/ColorBalanceService;->mModeEnable:I

    .line 1034
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/ColorBalanceService;->mReadingModeClosingStage:I

    .line 1035
    iget v0, p0, Lcom/android/server/display/ColorBalanceService;->mGeneration:I

    const/16 v2, 0xb

    invoke-virtual {p0, v2, v0}, Lcom/android/server/display/ColorBalanceService;->sendMsgWithValue(II)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_3
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 297
    const-string/jumbo v0, "nightdisplay"

    new-instance v1, Lcom/android/server/display/ColorBalanceService$BinderService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/display/ColorBalanceService$BinderService;-><init>(Lcom/android/server/display/ColorBalanceService;Lcom/android/server/display/ColorBalanceService$BinderService;)V

    .line 298
    const/4 v2, 0x1

    .line 297
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/display/ColorBalanceService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;Z)V

    .line 296
    return-void
.end method

.method public onStartUser(I)V
    .locals 2
    .param p1, "userHandle"    # I

    .prologue
    .line 333
    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onStartUser(I)V

    .line 334
    iget v0, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentUser:I

    const/16 v1, -0x2710

    if-ne v0, v1, :cond_0

    .line 335
    invoke-direct {p0, p1}, Lcom/android/server/display/ColorBalanceService;->onUserChanged(I)V

    .line 332
    :cond_0
    return-void
.end method

.method public onStopUser(I)V
    .locals 1
    .param p1, "userHandle"    # I

    .prologue
    .line 347
    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onStopUser(I)V

    .line 348
    iget v0, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentUser:I

    if-ne v0, p1, :cond_0

    .line 349
    const/16 v0, -0x2710

    invoke-direct {p0, v0}, Lcom/android/server/display/ColorBalanceService;->onUserChanged(I)V

    .line 346
    :cond_0
    return-void
.end method

.method public onSwitchUser(I)V
    .locals 0
    .param p1, "userHandle"    # I

    .prologue
    .line 341
    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onSwitchUser(I)V

    .line 342
    invoke-direct {p0, p1}, Lcom/android/server/display/ColorBalanceService;->onUserChanged(I)V

    .line 340
    return-void
.end method

.method public sendMsg(I)V
    .locals 3
    .param p1, "v"    # I

    .prologue
    .line 1443
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1444
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 1445
    iget-object v1, p0, Lcom/android/server/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/display/ColorBalanceService$CMH;

    if-eqz v1, :cond_0

    .line 1446
    iget-object v1, p0, Lcom/android/server/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/display/ColorBalanceService$CMH;

    iget v2, v0, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Lcom/android/server/display/ColorBalanceService$CMH;->removeMessages(I)V

    .line 1447
    iget-object v1, p0, Lcom/android/server/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/display/ColorBalanceService$CMH;

    invoke-virtual {v1, v0}, Lcom/android/server/display/ColorBalanceService$CMH;->sendMessage(Landroid/os/Message;)Z

    .line 1442
    :cond_0
    return-void
.end method

.method public sendMsgWithValue(II)V
    .locals 3
    .param p1, "Msg"    # I
    .param p2, "value"    # I

    .prologue
    .line 1451
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1452
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 1456
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 1457
    iget-object v1, p0, Lcom/android/server/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/display/ColorBalanceService$CMH;

    if-eqz v1, :cond_1

    .line 1458
    iget v1, v0, Landroid/os/Message;->what:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 1459
    iget-object v1, p0, Lcom/android/server/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/display/ColorBalanceService$CMH;

    iget v2, v0, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Lcom/android/server/display/ColorBalanceService$CMH;->removeMessages(I)V

    .line 1461
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/display/ColorBalanceService$CMH;

    invoke-virtual {v1, v0}, Lcom/android/server/display/ColorBalanceService$CMH;->sendMessage(Landroid/os/Message;)Z

    .line 1450
    :cond_1
    return-void
.end method

.method public sendMsgWithValueDelayed(IIII)V
    .locals 4
    .param p1, "Msg"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "delay"    # I

    .prologue
    .line 1465
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1466
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 1467
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 1468
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 1469
    iget-object v1, p0, Lcom/android/server/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/display/ColorBalanceService$CMH;

    if-eqz v1, :cond_0

    .line 1473
    iget-object v1, p0, Lcom/android/server/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/display/ColorBalanceService$CMH;

    int-to-long v2, p4

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/display/ColorBalanceService$CMH;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1464
    :cond_0
    return-void
.end method
