.class Lcom/android/server/display/AutomaticBrightnessController;
.super Ljava/lang/Object;
.source "AutomaticBrightnessController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/AutomaticBrightnessController$1;,
        Lcom/android/server/display/AutomaticBrightnessController$2;,
        Lcom/android/server/display/AutomaticBrightnessController$3;,
        Lcom/android/server/display/AutomaticBrightnessController$4;,
        Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;,
        Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;,
        Lcom/android/server/display/AutomaticBrightnessController$Callbacks;
    }
.end annotation


# static fields
.field private static final AMBIENT_LIGHT_PREDICTION_TIME_MILLIS:J = 0x64L

.field private static final BRIGHTENING_FAST_THRESHOLD:F = 3000.0f

.field private static final BRIGHTENING_LIGHT_HYSTERESIS:F = 0.0f

.field private static final BRIGHTNESS_ADJUSTMENT_SAMPLE_DEBOUNCE_MILLIS:I = 0x2710

.field private static final DARKENING_LIGHT_HYSTERESIS:F = 0.0f

.field static DEBUG:Z = false

.field private static DEBUG_BACKLIGHT:Z = false

.field private static final DEBUG_PRETEND_LIGHT_SENSOR_ABSENT:Z = false

.field private static final MSG_BRIGHTNESS_ADJUSTMENT_SAMPLE:I = 0x2

.field private static final MSG_UPDATE_AMBIENT_LUX:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AutomaticBrightnessController"

.field private static final TWILIGHT_ADJUSTMENT_MAX_GAMMA:F = 1.0f

.field private static final USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z = true

.field public static mManualSetBrightness:Z

.field private static sBrightnessControllerUtility:Lcom/android/server/display/BrightnessControllerUtility;


# instance fields
.field private final mAmbientLightHorizon:I

.field private mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

.field private mAmbientLightZone:I

.field private mAmbientLux:F

.field private mAmbientLuxMax:F

.field private mAmbientLuxMin:F

.field private mAmbientLuxValid:Z

.field private mAmbientState:I

.field private final mBrighteningLightDebounceConfig:J

.field private final mBrighteningLightFastDebounceConfig:J

.field private mBrighteningLuxThreshold:F

.field private mBrightnessAdjustmentSampleOldAdjustment:F

.field private mBrightnessAdjustmentSampleOldBrightness:I

.field private mBrightnessAdjustmentSampleOldGamma:F

.field private mBrightnessAdjustmentSampleOldLux:F

.field private mBrightnessAdjustmentSamplePending:Z

.field private final mCallbacks:Lcom/android/server/display/AutomaticBrightnessController$Callbacks;

.field private mContext:Landroid/content/Context;

.field private final mDarkeningLightDebounceConfig:J

.field private mDarkeningLuxThreshold:F

.field private final mDozeScaleFactor:F

.field private mDozing:Z

.field private mFirst_lux:Z

.field private mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

.field private mInitialHorizonAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

.field private mLastAmbientLightZone:I

.field private mLastAmbientLuxMax:F

.field private mLastAmbientLuxMin:F

.field private mLastObservedLux:F

.field private mLastObservedLuxTime:J

.field private mLastScreenAutoBrightnessGamma:F

.field private final mLightSensor:Landroid/hardware/Sensor;

.field private mLightSensorEnableTime:J

.field private mLightSensorEnabled:Z

.field private final mLightSensorListener:Landroid/hardware/SensorEventListener;

.field private final mLightSensorRate:I

.field private mLightSensorWarmUpTimeConfig:I

.field private mManulBrightnessSlide:Z

.field private mProximityPositive:Z

.field private final mProximitySensor:Landroid/hardware/Sensor;

.field private final mProximitySensorListener:Landroid/hardware/SensorEventListener;

.field private mRecentLightSamples:I

.field private final mResetAmbientLuxAfterWarmUpConfig:Z

.field public mScreenAutoBrightness:I

.field private mScreenAutoBrightnessAdjustment:F

.field private mScreenAutoBrightnessAdjustmentMaxGamma:F

.field private final mScreenAutoBrightnessSpline:Landroid/util/Spline;

.field private mScreenAutoRate:I

.field private final mScreenBrightnessRangeMaximum:I

.field private final mScreenBrightnessRangeMinimum:I

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private mStartManual:Z

.field private final mTwilight:Lcom/android/server/twilight/TwilightManager;

.field private final mTwilightListener:Lcom/android/server/twilight/TwilightListener;

.field private mUseTwilight:Z

.field private final mWeightingIntercept:I

.field private mZeroStartTime:J

.field private mZeroTask:Ljava/util/TimerTask;

.field private mZeroTimer:Ljava/util/Timer;

.field private mbStartTimer:Z

.field private zeroHandler:Landroid/os/Handler;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG_BACKLIGHT:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/display/AutomaticBrightnessController;)Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/server/display/AutomaticBrightnessController;)F
    .locals 1

    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastAmbientLuxMin:F

    return v0
.end method

.method static synthetic -get11(Lcom/android/server/display/AutomaticBrightnessController;)F
    .locals 1

    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedLux:F

    return v0
.end method

.method static synthetic -get12(Lcom/android/server/display/AutomaticBrightnessController;)Landroid/hardware/Sensor;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/server/display/AutomaticBrightnessController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    return v0
.end method

.method static synthetic -get14(Lcom/android/server/display/AutomaticBrightnessController;)Landroid/hardware/SensorEventListener;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    return-object v0
.end method

.method static synthetic -get15(Lcom/android/server/display/AutomaticBrightnessController;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorRate:I

    return v0
.end method

.method static synthetic -get16(Lcom/android/server/display/AutomaticBrightnessController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mProximityPositive:Z

    return v0
.end method

.method static synthetic -get17(Lcom/android/server/display/AutomaticBrightnessController;)Landroid/hardware/Sensor;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mProximitySensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic -get18(Lcom/android/server/display/AutomaticBrightnessController;)Landroid/hardware/SensorEventListener;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    return-object v0
.end method

.method static synthetic -get19(Lcom/android/server/display/AutomaticBrightnessController;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoRate:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/display/AutomaticBrightnessController;)F
    .locals 1

    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxMax:F

    return v0
.end method

.method static synthetic -get20(Lcom/android/server/display/AutomaticBrightnessController;)Landroid/hardware/SensorManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic -get21(Lcom/android/server/display/AutomaticBrightnessController;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mZeroStartTime:J

    return-wide v0
.end method

.method static synthetic -get22(Lcom/android/server/display/AutomaticBrightnessController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mbStartTimer:Z

    return v0
.end method

.method static synthetic -get23()Lcom/android/server/display/BrightnessControllerUtility;
    .locals 1

    sget-object v0, Lcom/android/server/display/AutomaticBrightnessController;->sBrightnessControllerUtility:Lcom/android/server/display/BrightnessControllerUtility;

    return-object v0
.end method

.method static synthetic -get24(Lcom/android/server/display/AutomaticBrightnessController;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->zeroHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/display/AutomaticBrightnessController;)F
    .locals 1

    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxMin:F

    return v0
.end method

.method static synthetic -get4(Lcom/android/server/display/AutomaticBrightnessController;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientState:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/server/display/AutomaticBrightnessController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/display/AutomaticBrightnessController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mFirst_lux:Z

    return v0
.end method

.method static synthetic -get7(Lcom/android/server/display/AutomaticBrightnessController;)Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/display/AutomaticBrightnessController;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastAmbientLightZone:I

    return v0
.end method

.method static synthetic -get9(Lcom/android/server/display/AutomaticBrightnessController;)F
    .locals 1

    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastAmbientLuxMax:F

    return v0
.end method

.method static synthetic -set0(Lcom/android/server/display/AutomaticBrightnessController;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightZone:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/display/AutomaticBrightnessController;F)F
    .locals 0

    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxMax:F

    return p1
.end method

.method static synthetic -set2(Lcom/android/server/display/AutomaticBrightnessController;F)F
    .locals 0

    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxMin:F

    return p1
.end method

.method static synthetic -set3(Lcom/android/server/display/AutomaticBrightnessController;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientState:I

    return p1
.end method

.method static synthetic -set4(Lcom/android/server/display/AutomaticBrightnessController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mFirst_lux:Z

    return p1
.end method

.method static synthetic -set5(Lcom/android/server/display/AutomaticBrightnessController;F)F
    .locals 0

    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedLux:F

    return p1
.end method

.method static synthetic -set6(Lcom/android/server/display/AutomaticBrightnessController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mProximityPositive:Z

    return p1
.end method

.method static synthetic -set7(Lcom/android/server/display/AutomaticBrightnessController;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoRate:I

    return p1
.end method

.method static synthetic -set8(Lcom/android/server/display/AutomaticBrightnessController;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mZeroStartTime:J

    return-wide p1
.end method

.method static synthetic -set9(Lcom/android/server/display/AutomaticBrightnessController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mbStartTimer:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/display/AutomaticBrightnessController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController;->collectBrightnessAdjustmentSample()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/display/AutomaticBrightnessController;JF)V
    .locals 1
    .param p1, "time"    # J
    .param p3, "lux"    # F

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/AutomaticBrightnessController;->handleLightSensorEvent(JF)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/display/AutomaticBrightnessController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController;->startZeroTimer()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/display/AutomaticBrightnessController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController;->stopZeroTimer()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/display/AutomaticBrightnessController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController;->updateAmbientLux()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/display/AutomaticBrightnessController;Z)V
    .locals 0
    .param p1, "sendUpdate"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/display/AutomaticBrightnessController;->updateAutoBrightness(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 57
    sput-boolean v0, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG:Z

    .line 58
    sput-boolean v0, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG_BACKLIGHT:Z

    .line 242
    sput-boolean v0, Lcom/android/server/display/AutomaticBrightnessController;->mManualSetBrightness:Z

    .line 50
    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/AutomaticBrightnessController$Callbacks;Landroid/os/Looper;Landroid/content/Context;Landroid/hardware/SensorManager;Landroid/util/Spline;IIIFIJJJZIF)V
    .locals 7
    .param p1, "callbacks"    # Lcom/android/server/display/AutomaticBrightnessController$Callbacks;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "sensorManager"    # Landroid/hardware/SensorManager;
    .param p5, "autoBrightnessSpline"    # Landroid/util/Spline;
    .param p6, "lightSensorWarmUpTime"    # I
    .param p7, "brightnessMin"    # I
    .param p8, "brightnessMax"    # I
    .param p9, "dozeScaleFactor"    # F
    .param p10, "lightSensorRate"    # I
    .param p11, "brighteningLightDebounceConfig"    # J
    .param p13, "brighteningLightFastDebounceConfig"    # J
    .param p15, "darkeningLightDebounceConfig"    # J
    .param p17, "resetAmbientLuxAfterWarmUpConfig"    # Z
    .param p18, "ambientLightHorizon"    # I
    .param p19, "autoBrightnessAdjustmentMaxGamma"    # F

    .prologue
    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    .line 191
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessAdjustment:F

    .line 198
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastScreenAutoBrightnessGamma:F

    .line 220
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mManulBrightnessSlide:Z

    .line 221
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mStartManual:Z

    .line 225
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxMin:F

    .line 226
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxMax:F

    .line 227
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastAmbientLuxMin:F

    .line 228
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastAmbientLuxMax:F

    .line 229
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientState:I

    .line 230
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightZone:I

    .line 231
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastAmbientLightZone:I

    .line 234
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoRate:I

    .line 239
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mbStartTimer:Z

    .line 240
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mZeroStartTime:J

    .line 241
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mFirst_lux:Z

    .line 290
    new-instance v3, Lcom/android/server/display/AutomaticBrightnessController$1;

    invoke-direct {v3, p0}, Lcom/android/server/display/AutomaticBrightnessController$1;-><init>(Lcom/android/server/display/AutomaticBrightnessController;)V

    iput-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->zeroHandler:Landroid/os/Handler;

    .line 1025
    new-instance v3, Lcom/android/server/display/AutomaticBrightnessController$2;

    invoke-direct {v3, p0}, Lcom/android/server/display/AutomaticBrightnessController$2;-><init>(Lcom/android/server/display/AutomaticBrightnessController;)V

    iput-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    .line 1162
    new-instance v3, Lcom/android/server/display/AutomaticBrightnessController$3;

    invoke-direct {v3, p0}, Lcom/android/server/display/AutomaticBrightnessController$3;-><init>(Lcom/android/server/display/AutomaticBrightnessController;)V

    iput-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    .line 1183
    new-instance v3, Lcom/android/server/display/AutomaticBrightnessController$4;

    invoke-direct {v3, p0}, Lcom/android/server/display/AutomaticBrightnessController$4;-><init>(Lcom/android/server/display/AutomaticBrightnessController;)V

    iput-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mTwilightListener:Lcom/android/server/twilight/TwilightListener;

    .line 325
    iput-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCallbacks:Lcom/android/server/display/AutomaticBrightnessController$Callbacks;

    .line 326
    const-class v3, Lcom/android/server/twilight/TwilightManager;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/twilight/TwilightManager;

    iput-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mTwilight:Lcom/android/server/twilight/TwilightManager;

    .line 327
    iput-object p4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 328
    iput-object p5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessSpline:Landroid/util/Spline;

    .line 329
    iput p7, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessRangeMinimum:I

    .line 330
    iput p8, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessRangeMaximum:I

    .line 331
    iput p6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorWarmUpTimeConfig:I

    .line 332
    move/from16 v0, p9

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDozeScaleFactor:F

    .line 333
    move/from16 v0, p10

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorRate:I

    .line 334
    move-wide/from16 v0, p11

    iput-wide v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrighteningLightDebounceConfig:J

    .line 335
    move-wide/from16 v0, p15

    iput-wide v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDarkeningLightDebounceConfig:J

    .line 336
    move/from16 v0, p17

    iput-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mResetAmbientLuxAfterWarmUpConfig:Z

    .line 337
    move/from16 v0, p18

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightHorizon:I

    .line 338
    move/from16 v0, p18

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mWeightingIntercept:I

    .line 339
    move/from16 v0, p19

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessAdjustmentMaxGamma:F

    .line 341
    new-instance v3, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    invoke-direct {v3, p0, p2}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;-><init>(Lcom/android/server/display/AutomaticBrightnessController;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    .line 343
    new-instance v3, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    iget v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorRate:I

    int-to-long v4, v4

    iget v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightHorizon:I

    invoke-direct {v3, v4, v5, v6}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;-><init>(JI)V

    .line 342
    iput-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    .line 345
    new-instance v3, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    iget v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorRate:I

    int-to-long v4, v4

    iget v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightHorizon:I

    invoke-direct {v3, v4, v5, v6}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;-><init>(JI)V

    .line 344
    iput-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mInitialHorizonAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    .line 348
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensor:Landroid/hardware/Sensor;

    .line 353
    iput-object p3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mContext:Landroid/content/Context;

    .line 354
    move-wide/from16 v0, p13

    iput-wide v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrighteningLightFastDebounceConfig:J

    .line 355
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mProximitySensor:Landroid/hardware/Sensor;

    .line 356
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 358
    .local v2, "resources":Landroid/content/res/Resources;
    invoke-static {}, Lcom/android/server/display/BrightnessControllerUtility;->getInstance()Lcom/android/server/display/BrightnessControllerUtility;

    move-result-object v3

    sput-object v3, Lcom/android/server/display/AutomaticBrightnessController;->sBrightnessControllerUtility:Lcom/android/server/display/BrightnessControllerUtility;

    .line 359
    sget-object v3, Lcom/android/server/display/AutomaticBrightnessController;->sBrightnessControllerUtility:Lcom/android/server/display/BrightnessControllerUtility;

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/android/server/display/BrightnessControllerUtility;->init(Landroid/content/Context;)V

    .line 360
    sget-object v3, Lcom/android/server/display/AutomaticBrightnessController;->sBrightnessControllerUtility:Lcom/android/server/display/BrightnessControllerUtility;

    invoke-virtual {v3}, Lcom/android/server/display/BrightnessControllerUtility;->readAutoBrightnessLuxConfig()V

    .line 323
    return-void
.end method

.method private applyLightSensorMeasurement(JF)V
    .locals 5
    .param p1, "time"    # J
    .param p3, "lux"    # F

    .prologue
    .line 518
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mRecentLightSamples:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mRecentLightSamples:I

    .line 521
    iget-wide v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnableTime:J

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightHorizon:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 522
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mInitialHorizonAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->push(JF)V

    .line 524
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightHorizon:I

    int-to-long v2, v1

    sub-long v2, p1, v2

    invoke-virtual {v0, v2, v3}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->prune(J)V

    .line 525
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->push(JF)V

    .line 517
    return-void
.end method

.method private calculateAmbientLux(J)F
    .locals 13
    .param p1, "now"    # J

    .prologue
    .line 564
    iget-object v10, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v10}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->size()I

    move-result v0

    .line 565
    .local v0, "N":I
    if-nez v0, :cond_0

    .line 566
    const-string/jumbo v10, "AutomaticBrightnessController"

    const-string/jumbo v11, "calculateAmbientLux: No ambient light readings available"

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    const/high16 v10, -0x40800000    # -1.0f

    return v10

    .line 569
    :cond_0
    const/4 v5, 0x0

    .line 570
    .local v5, "sum":F
    const/4 v8, 0x0

    .line 571
    .local v8, "totalWeight":F
    const-wide/16 v2, 0x64

    .line 572
    .local v2, "endTime":J
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_3

    .line 573
    iget-object v10, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v10, v1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getTime(I)J

    move-result-wide v10

    sub-long v6, v10, p1

    .line 576
    .local v6, "startTime":J
    const-wide/16 v10, 0x0

    cmp-long v10, v6, v10

    if-gez v10, :cond_1

    .line 577
    const-wide/16 v6, 0x0

    .line 580
    :cond_1
    invoke-direct {p0, v6, v7, v2, v3}, Lcom/android/server/display/AutomaticBrightnessController;->calculateWeight(JJ)F

    move-result v9

    .line 581
    .local v9, "weight":F
    iget-object v10, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v10, v1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getLux(I)F

    move-result v4

    .line 582
    .local v4, "lux":F
    sget-boolean v10, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG:Z

    if-eqz v10, :cond_2

    .line 583
    const-string/jumbo v10, "AutomaticBrightnessController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "calculateAmbientLux: ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 584
    const-string/jumbo v12, ", "

    .line 583
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 585
    const-string/jumbo v12, "]: lux="

    .line 583
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 585
    const-string/jumbo v12, ", weight="

    .line 583
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    :cond_2
    add-float/2addr v8, v9

    .line 588
    iget-object v10, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v10, v1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getLux(I)F

    move-result v10

    mul-float/2addr v10, v9

    add-float/2addr v5, v10

    .line 589
    move-wide v2, v6

    .line 572
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 591
    .end local v4    # "lux":F
    .end local v6    # "startTime":J
    .end local v9    # "weight":F
    :cond_3
    sget-boolean v10, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG:Z

    if-eqz v10, :cond_4

    .line 592
    const-string/jumbo v10, "AutomaticBrightnessController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "calculateAmbientLux: totalWeight="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 593
    const-string/jumbo v12, ", newAmbientLux="

    .line 592
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 593
    div-float v12, v5, v8

    .line 592
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    :cond_4
    div-float v10, v5, v8

    return v10
.end method

.method private calculateWeight(JJ)F
    .locals 3
    .param p1, "startDelta"    # J
    .param p3, "endDelta"    # J

    .prologue
    .line 599
    invoke-direct {p0, p3, p4}, Lcom/android/server/display/AutomaticBrightnessController;->weightIntegral(J)F

    move-result v0

    invoke-direct {p0, p1, p2}, Lcom/android/server/display/AutomaticBrightnessController;->weightIntegral(J)F

    move-result v1

    sub-float/2addr v0, v1

    return v0
.end method

.method private cancelBrightnessAdjustmentSample()V
    .locals 2

    .prologue
    .line 974
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSamplePending:Z

    if-eqz v0, :cond_0

    .line 975
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSamplePending:Z

    .line 976
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->removeMessages(I)V

    .line 973
    :cond_0
    return-void
.end method

.method private clampScreenBrightness(I)I
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 955
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessRangeMinimum:I

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessRangeMaximum:I

    .line 954
    invoke-static {p1, v0, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    return v0
.end method

.method private collectBrightnessAdjustmentSample()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 981
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSamplePending:Z

    if-eqz v0, :cond_1

    .line 982
    iput-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSamplePending:Z

    .line 983
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    if-ltz v0, :cond_1

    .line 984
    sget-boolean v0, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 985
    const-string/jumbo v0, "AutomaticBrightnessController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Auto-brightness adjustment changed by user: adj="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 986
    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessAdjustment:F

    .line 985
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 987
    const-string/jumbo v2, ", lux="

    .line 985
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 987
    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    .line 985
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 988
    const-string/jumbo v2, ", brightness="

    .line 985
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 988
    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    .line 985
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 989
    const-string/jumbo v2, ", gamma="

    .line 985
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 989
    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastScreenAutoBrightnessGamma:F

    .line 985
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 990
    const-string/jumbo v2, ", ring="

    .line 985
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 990
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    .line 985
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    :cond_0
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    .line 994
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSampleOldAdjustment:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v0, v3

    .line 995
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSampleOldLux:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 996
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSampleOldBrightness:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 997
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSampleOldGamma:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 998
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessAdjustment:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 999
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 1000
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 1001
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastScreenAutoBrightnessGamma:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 993
    const v1, 0x88b8

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 980
    :cond_1
    return-void
.end method

.method private handleLightSensorEvent(JF)V
    .locals 3
    .param p1, "time"    # J
    .param p3, "lux"    # F

    .prologue
    .line 511
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->removeMessages(I)V

    .line 513
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/AutomaticBrightnessController;->applyLightSensorMeasurement(JF)V

    .line 514
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/AutomaticBrightnessController;->updateAmbientLux(J)V

    .line 510
    return-void
.end method

.method private nextAmbientLightBrighteningTransition(JF)J
    .locals 11
    .param p1, "time"    # J
    .param p3, "ambientLux"    # F

    .prologue
    .line 637
    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v6}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->size()I

    move-result v0

    .line 638
    .local v0, "N":I
    move-wide v4, p1

    .line 639
    .local v4, "earliestValidTime":J
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 640
    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v6, v1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getLux(I)F

    move-result v6

    iget v7, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrighteningLuxThreshold:F

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_1

    .line 645
    :cond_0
    iget v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedLux:F

    sub-float/2addr v6, p3

    const v7, 0x453b8000    # 3000.0f

    cmpl-float v6, v6, v7

    if-lez v6, :cond_2

    .line 646
    iget-wide v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrighteningLightFastDebounceConfig:J

    .line 647
    .local v2, "debounceDelay":J
    :goto_1
    const/4 v6, 0x2

    if-ne v0, v6, :cond_3

    .line 648
    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    add-int/lit8 v7, v0, -0x1

    invoke-virtual {v6, v7}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getTime(I)J

    move-result-wide v6

    iget-object v8, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    add-int/lit8 v9, v0, -0x2

    invoke-virtual {v8, v9}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getTime(I)J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x64

    cmp-long v6, v6, v8

    if-gez v6, :cond_3

    .line 649
    return-wide v4

    .line 643
    .end local v2    # "debounceDelay":J
    :cond_1
    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v6, v1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getTime(I)J

    move-result-wide v4

    .line 639
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 646
    :cond_2
    iget-wide v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrighteningLightDebounceConfig:J

    .restart local v2    # "debounceDelay":J
    goto :goto_1

    .line 652
    :cond_3
    add-long v6, v4, v2

    return-wide v6
.end method

.method private nextAmbientLightDarkeningTransition(JF)J
    .locals 9
    .param p1, "time"    # J
    .param p3, "ambientLux"    # F

    .prologue
    .line 656
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v4}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->size()I

    move-result v0

    .line 657
    .local v0, "N":I
    move-wide v2, p1

    .line 658
    .local v2, "earliestValidTime":J
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 659
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v4, v1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getLux(I)F

    move-result v4

    iget v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDarkeningLuxThreshold:F

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_1

    .line 664
    :cond_0
    const/4 v4, 0x2

    if-ne v0, v4, :cond_2

    .line 665
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {v4, v5}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getTime(I)J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    add-int/lit8 v7, v0, -0x2

    invoke-virtual {v6, v7}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getTime(I)J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x64

    cmp-long v4, v4, v6

    if-gez v4, :cond_2

    .line 666
    return-wide v2

    .line 662
    :cond_1
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v4, v1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getTime(I)J

    move-result-wide v2

    .line 658
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 669
    :cond_2
    iget-wide v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDarkeningLightDebounceConfig:J

    add-long/2addr v4, v2

    return-wide v4
.end method

.method private prepareBrightnessAdjustmentSample()V
    .locals 4

    .prologue
    const/4 v1, 0x2

    .line 959
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSamplePending:Z

    if-nez v0, :cond_1

    .line 960
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSamplePending:Z

    .line 961
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessAdjustment:F

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSampleOldAdjustment:F

    .line 962
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    :goto_0
    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSampleOldLux:F

    .line 963
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSampleOldBrightness:I

    .line 964
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastScreenAutoBrightnessGamma:F

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSampleOldGamma:F

    .line 969
    :goto_1
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    .line 970
    const-wide/16 v2, 0x2710

    .line 969
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 958
    return-void

    .line 962
    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_0

    .line 966
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->removeMessages(I)V

    goto :goto_1
.end method

.method private resetAutoBrightness(FFI)V
    .locals 9
    .param p1, "ambientLux"    # F
    .param p2, "manulAtAmbientLux"    # F
    .param p3, "manulBrihgtness"    # I

    .prologue
    .line 1326
    const/4 v3, 0x0

    .line 1327
    .local v3, "scal":F
    const/4 v4, 0x0

    .line 1328
    .local v4, "step":I
    sget-object v6, Lcom/android/server/display/AutomaticBrightnessController;->sBrightnessControllerUtility:Lcom/android/server/display/BrightnessControllerUtility;

    invoke-virtual {v6, p1}, Lcom/android/server/display/BrightnessControllerUtility;->resetAmbientLux(F)I

    move-result v2

    .line 1329
    .local v2, "nowlux":I
    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessSpline:Landroid/util/Spline;

    invoke-virtual {v6, p2}, Landroid/util/Spline;->interpolate(F)F

    move-result v5

    .line 1330
    .local v5, "value":F
    const/high16 v6, 0x437f0000    # 255.0f

    mul-float/2addr v6, v5

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/server/display/AutomaticBrightnessController;->clampScreenBrightness(I)I

    move-result v0

    .line 1331
    .local v0, "brightness":I
    sget-object v6, Lcom/android/server/display/AutomaticBrightnessController;->sBrightnessControllerUtility:Lcom/android/server/display/BrightnessControllerUtility;

    invoke-virtual {v6, p2}, Lcom/android/server/display/BrightnessControllerUtility;->resetAmbientLux(F)I

    move-result v1

    .line 1332
    .local v1, "manullux":I
    if-eqz v0, :cond_0

    .line 1333
    sub-int v6, p3, v0

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    int-to-float v7, v0

    div-float v3, v6, v7

    .line 1334
    const v6, 0x3e99999a    # 0.3f

    cmpl-float v6, v3, v6

    if-ltz v6, :cond_0

    .line 1335
    const v3, 0x3e99999a    # 0.3f

    .line 1337
    :cond_0
    sub-int v6, v2, v1

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    const/4 v7, 0x3

    if-gt v6, v7, :cond_1

    .line 1338
    iget v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    int-to-float v6, v6

    mul-float/2addr v6, v3

    .line 1339
    sub-int v7, v2, v1

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x3e800000    # 0.25f

    mul-float/2addr v7, v8

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float v7, v8, v7

    .line 1338
    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 1341
    :cond_1
    if-le p3, v0, :cond_4

    .line 1342
    iget v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    add-int/2addr v6, v4

    iput v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    .line 1346
    :cond_2
    :goto_0
    iget v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    invoke-direct {p0, v6}, Lcom/android/server/display/AutomaticBrightnessController;->clampScreenBrightness(I)I

    move-result v6

    iput v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    .line 1347
    sget-boolean v6, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG:Z

    if-eqz v6, :cond_3

    .line 1348
    const-string/jumbo v6, "AutomaticBrightnessController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "brightness = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " manulBrihgtness = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1349
    const-string/jumbo v8, " manullux = "

    .line 1348
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1349
    const-string/jumbo v8, " nowlux = "

    .line 1348
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1350
    const-string/jumbo v8, " mScreenAutoBrightness = "

    .line 1348
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1350
    iget v8, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    .line 1348
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1350
    const-string/jumbo v8, " step = "

    .line 1348
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1351
    const-string/jumbo v8, " scal = "

    .line 1348
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1325
    :cond_3
    return-void

    .line 1343
    :cond_4
    if-ge p3, v0, :cond_2

    .line 1344
    iget v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    sub-int/2addr v6, v4

    iput v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    goto :goto_0
.end method

.method private setAmbientLux(F)V
    .locals 2
    .param p1, "lux"    # F

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 558
    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    .line 559
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrighteningLuxThreshold:F

    .line 560
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDarkeningLuxThreshold:F

    .line 557
    return-void
.end method

.method private setLightSensorEnabled(Z)Z
    .locals 9
    .param p1, "enable"    # Z

    .prologue
    const/4 v8, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 440
    if-eqz p1, :cond_2

    .line 441
    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    if-nez v1, :cond_3

    .line 442
    sget-boolean v1, Lcom/android/server/display/DisplayPowerController;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    sput-boolean v1, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG_BACKLIGHT:Z

    .line 443
    iput-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    .line 444
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnableTime:J

    .line 453
    sput-boolean v2, Lcom/android/server/power/PowerManagerService;->mUseAutoBrightness:Z

    .line 454
    sget v1, Lcom/android/server/power/PowerManagerService;->sBrightnessBoost:I

    if-ne v1, v2, :cond_1

    .line 455
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/display/AutomaticBrightnessController$6;

    invoke-direct {v1, p0}, Lcom/android/server/display/AutomaticBrightnessController$6;-><init>(Lcom/android/server/display/AutomaticBrightnessController;)V

    .line 464
    const-string/jumbo v4, "LightSensorEnableThread"

    .line 455
    invoke-direct {v0, v1, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 465
    .local v0, "thread":Ljava/lang/Thread;
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 466
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 473
    .end local v0    # "thread":Ljava/lang/Thread;
    :goto_1
    iput v8, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxMin:F

    .line 474
    iput v8, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxMax:F

    .line 475
    iput v8, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastAmbientLuxMin:F

    .line 476
    iput v8, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastAmbientLuxMax:F

    .line 477
    iput-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mFirst_lux:Z

    .line 480
    return v2

    :cond_0
    move v1, v3

    .line 442
    goto :goto_0

    .line 468
    :cond_1
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensor:Landroid/hardware/Sensor;

    .line 469
    iget v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorRate:I

    mul-int/lit16 v6, v6, 0x3e8

    iget-object v7, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    .line 468
    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 470
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mProximitySensor:Landroid/hardware/Sensor;

    .line 471
    iget v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorRate:I

    mul-int/lit16 v6, v6, 0x3e8

    iget-object v7, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    .line 470
    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    goto :goto_1

    .line 483
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    if-eqz v1, :cond_3

    .line 484
    sput-boolean v3, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG_BACKLIGHT:Z

    .line 485
    iput-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    .line 486
    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mResetAmbientLuxAfterWarmUpConfig:Z

    if-eqz v1, :cond_4

    move v1, v3

    :goto_2
    iput-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    .line 487
    iput v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mRecentLightSamples:I

    .line 488
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->clear()V

    .line 489
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mInitialHorizonAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->clear()V

    .line 490
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    invoke-virtual {v1, v2}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->removeMessages(I)V

    .line 491
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 495
    iput-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mManulBrightnessSlide:Z

    .line 496
    sput v3, Lcom/android/server/power/PowerManagerService;->mManualBrightness:I

    .line 497
    iput-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mStartManual:Z

    .line 498
    sput-boolean v3, Lcom/android/server/power/PowerManagerService;->mUseAutoBrightness:Z

    .line 499
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 500
    iput v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientState:I

    .line 501
    iput-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mProximityPositive:Z

    .line 502
    iput-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mFirst_lux:Z

    .line 507
    :cond_3
    return v3

    :cond_4
    move v1, v2

    .line 486
    goto :goto_2
.end method

.method private setScreenAutoBrightnessAdjustment(F)Z
    .locals 4
    .param p1, "adjustment"    # F

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 535
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessAdjustment:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_2

    .line 536
    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessAdjustment:F

    .line 540
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessAdjustment:F

    const/high16 v1, 0x43960000    # 300.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 541
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessAdjustment:F

    const/high16 v1, 0x43fa0000    # 500.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 542
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessAdjustment:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 543
    iput-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mManulBrightnessSlide:Z

    .line 544
    iput-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mStartManual:Z

    .line 548
    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v0

    sput v0, Lcom/android/server/power/PowerManagerService;->mManualBrightness:I

    .line 552
    :cond_0
    return v3

    .line 546
    :cond_1
    iput-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mManulBrightnessSlide:Z

    goto :goto_0

    .line 554
    :cond_2
    return v2
.end method

.method private setUseTwilight(Z)Z
    .locals 3
    .param p1, "useTwilight"    # Z

    .prologue
    .line 394
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mUseTwilight:Z

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 395
    :cond_0
    if-eqz p1, :cond_1

    .line 396
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mTwilight:Lcom/android/server/twilight/TwilightManager;

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mTwilightListener:Lcom/android/server/twilight/TwilightListener;

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    invoke-interface {v0, v1, v2}, Lcom/android/server/twilight/TwilightManager;->registerListener(Lcom/android/server/twilight/TwilightListener;Landroid/os/Handler;)V

    .line 400
    :goto_0
    iput-boolean p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mUseTwilight:Z

    .line 401
    const/4 v0, 0x1

    return v0

    .line 398
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mTwilight:Lcom/android/server/twilight/TwilightManager;

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mTwilightListener:Lcom/android/server/twilight/TwilightListener;

    invoke-interface {v0, v1}, Lcom/android/server/twilight/TwilightManager;->unregisterListener(Lcom/android/server/twilight/TwilightListener;)V

    goto :goto_0
.end method

.method private startZeroTimer()V
    .locals 6

    .prologue
    .line 245
    monitor-enter p0

    .line 246
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mZeroTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 247
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mZeroTimer:Ljava/util/Timer;

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mZeroTask:Ljava/util/TimerTask;

    if-nez v0, :cond_1

    .line 251
    new-instance v0, Lcom/android/server/display/AutomaticBrightnessController$5;

    invoke-direct {v0, p0}, Lcom/android/server/display/AutomaticBrightnessController$5;-><init>(Lcom/android/server/display/AutomaticBrightnessController;)V

    iput-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mZeroTask:Ljava/util/TimerTask;

    .line 261
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mZeroTimer:Ljava/util/Timer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mZeroTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_2

    .line 262
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mZeroTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mZeroTask:Ljava/util/TimerTask;

    const-wide/16 v2, 0x1388

    iget-wide v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDarkeningLightDebounceConfig:J

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    .line 244
    return-void

    .line 245
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private stopZeroTimer()V
    .locals 4

    .prologue
    .line 268
    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mbStartTimer:Z

    if-nez v1, :cond_0

    .line 269
    return-void

    .line 271
    :cond_0
    monitor-enter p0

    .line 273
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mbStartTimer:Z

    .line 275
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mZeroTimer:Ljava/util/Timer;

    if-eqz v1, :cond_1

    .line 276
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mZeroTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 277
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mZeroTimer:Ljava/util/Timer;

    .line 280
    :cond_1
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mZeroTask:Ljava/util/TimerTask;

    if-eqz v1, :cond_2

    .line 281
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mZeroTask:Ljava/util/TimerTask;

    invoke-virtual {v1}, Ljava/util/TimerTask;->cancel()Z

    .line 282
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mZeroTask:Ljava/util/TimerTask;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    monitor-exit p0

    .line 267
    return-void

    .line 284
    :catch_0
    move-exception v0

    .line 285
    .local v0, "e":Ljava/lang/NullPointerException;
    :try_start_1
    const-string/jumbo v1, "AutomaticBrightnessController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stopZeroTimer null pointer"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 271
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private updateAmbientLux()V
    .locals 6

    .prologue
    .line 674
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 675
    .local v0, "time":J
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightHorizon:I

    int-to-long v4, v3

    sub-long v4, v0, v4

    invoke-virtual {v2, v4, v5}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->prune(J)V

    .line 676
    invoke-direct {p0, v0, v1}, Lcom/android/server/display/AutomaticBrightnessController;->updateAmbientLux(J)V

    .line 673
    return-void
.end method

.method private updateAmbientLux(J)V
    .locals 19
    .param p1, "time"    # J

    .prologue
    .line 682
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    if-nez v14, :cond_3

    .line 684
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorWarmUpTimeConfig:I

    int-to-long v14, v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnableTime:J

    move-wide/from16 v16, v0

    add-long v12, v14, v16

    .line 685
    .local v12, "timeWhenSensorWarmedUp":J
    cmp-long v14, p1, v12

    if-gez v14, :cond_1

    .line 686
    sget-boolean v14, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG:Z

    if-eqz v14, :cond_0

    .line 687
    const-string/jumbo v14, "AutomaticBrightnessController"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "updateAmbientLux: Sensor not  ready yet: time="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-wide/from16 v0, p1

    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 689
    const-string/jumbo v16, ", timeWhenSensorWarmedUp="

    .line 687
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    const/4 v15, 0x1

    invoke-virtual {v14, v15, v12, v13}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->sendEmptyMessageAtTime(IJ)Z

    .line 693
    return-void

    .line 695
    :cond_1
    invoke-direct/range {p0 .. p2}, Lcom/android/server/display/AutomaticBrightnessController;->calculateAmbientLux(J)F

    move-result v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/display/AutomaticBrightnessController;->setAmbientLux(F)V

    .line 696
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    .line 697
    sget-boolean v14, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG:Z

    if-eqz v14, :cond_2

    .line 698
    const-string/jumbo v14, "AutomaticBrightnessController"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "updateAmbientLux: Initializing: mAmbientLightRingBuffer="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 699
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    move-object/from16 v16, v0

    .line 698
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 700
    const-string/jumbo v16, ", mAmbientLux="

    .line 698
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 700
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    move/from16 v16, v0

    .line 698
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    :cond_2
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/display/AutomaticBrightnessController;->mFirst_lux:Z

    .line 703
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/display/AutomaticBrightnessController;->updateAutoBrightness(Z)V

    .line 729
    .end local v12    # "timeWhenSensorWarmedUp":J
    :cond_3
    invoke-direct/range {p0 .. p2}, Lcom/android/server/display/AutomaticBrightnessController;->calculateAmbientLux(J)F

    move-result v4

    .line 731
    .local v4, "ambientLux":F
    const/4 v5, 0x0

    .local v5, "lux_index":I
    :goto_0
    sget-object v14, Lcom/android/server/display/AutomaticBrightnessController;->sBrightnessControllerUtility:Lcom/android/server/display/BrightnessControllerUtility;

    sget v14, Lcom/android/server/display/BrightnessControllerUtility;->BRIGHTNESS_LEVELS:I

    if-ge v5, v14, :cond_4

    .line 732
    float-to-double v14, v4

    invoke-static {v14, v15}, Ljava/lang/Math;->rint(D)D

    move-result-wide v14

    sget-object v16, Lcom/android/server/display/AutomaticBrightnessController;->sBrightnessControllerUtility:Lcom/android/server/display/BrightnessControllerUtility;

    sget-object v16, Lcom/android/server/display/BrightnessControllerUtility;->mAmbientLuxConfig:[F

    aget v16, v16, v5

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    cmpl-double v14, v14, v16

    if-nez v14, :cond_c

    .line 735
    :cond_4
    sget-object v14, Lcom/android/server/display/AutomaticBrightnessController;->sBrightnessControllerUtility:Lcom/android/server/display/BrightnessControllerUtility;

    sget v14, Lcom/android/server/display/BrightnessControllerUtility;->BRIGHTNESS_LEVELS:I

    if-ge v5, v14, :cond_d

    .line 736
    sget-object v14, Lcom/android/server/display/AutomaticBrightnessController;->sBrightnessControllerUtility:Lcom/android/server/display/BrightnessControllerUtility;

    sget-object v14, Lcom/android/server/display/BrightnessControllerUtility;->mAmbientLuxMinConfig:[F

    aget v14, v14, v5

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxMin:F

    cmpl-float v14, v14, v15

    if-eqz v14, :cond_5

    sget-object v14, Lcom/android/server/display/AutomaticBrightnessController;->sBrightnessControllerUtility:Lcom/android/server/display/BrightnessControllerUtility;

    sget-object v14, Lcom/android/server/display/BrightnessControllerUtility;->mAmbientLuxMinConfig:[F

    aget v14, v14, v5

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxMax:F

    cmpl-float v14, v14, v15

    if-eqz v14, :cond_5

    .line 737
    sget-object v14, Lcom/android/server/display/AutomaticBrightnessController;->sBrightnessControllerUtility:Lcom/android/server/display/BrightnessControllerUtility;

    sget-object v14, Lcom/android/server/display/BrightnessControllerUtility;->mAmbientLuxMinConfig:[F

    aget v14, v14, v5

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxMin:F

    .line 738
    sget-object v14, Lcom/android/server/display/AutomaticBrightnessController;->sBrightnessControllerUtility:Lcom/android/server/display/BrightnessControllerUtility;

    sget-object v14, Lcom/android/server/display/BrightnessControllerUtility;->mAmbientLuxMinConfig:[F

    aget v14, v14, v5

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxMax:F

    .line 744
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-direct {v0, v1, v2, v4}, Lcom/android/server/display/AutomaticBrightnessController;->nextAmbientLightBrighteningTransition(JF)J

    move-result-wide v6

    .line 745
    .local v6, "nextBrightenTransition":J
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-direct {v0, v1, v2, v4}, Lcom/android/server/display/AutomaticBrightnessController;->nextAmbientLightDarkeningTransition(JF)J

    move-result-wide v8

    .line 747
    .local v8, "nextDarkenTransition":J
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientState:I

    const/4 v15, 0x2

    if-ne v14, v15, :cond_6

    .line 748
    const-wide/16 p1, 0x0

    .line 750
    :cond_6
    sget-boolean v14, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG:Z

    if-eqz v14, :cond_7

    .line 751
    const-string/jumbo v15, "AutomaticBrightnessController"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Pre-updateAmbientLux: "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 752
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    cmpl-float v14, v4, v14

    if-lez v14, :cond_e

    const-string/jumbo v14, "Brightened"

    .line 751
    :goto_2
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 752
    const-string/jumbo v16, ": "

    .line 751
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 753
    const-string/jumbo v16, "mBrighteningLuxThreshold="

    .line 751
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 753
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/AutomaticBrightnessController;->mBrighteningLuxThreshold:F

    move/from16 v16, v0

    .line 751
    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 754
    const-string/jumbo v16, ", mAmbientLightRingBuffer="

    .line 751
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 754
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    move-object/from16 v16, v0

    .line 751
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 755
    const-string/jumbo v16, ", mAmbientLux="

    .line 751
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 755
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    move/from16 v16, v0

    .line 751
    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 755
    const-string/jumbo v16, ", mAmbientState="

    .line 751
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 755
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientState:I

    move/from16 v16, v0

    .line 751
    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v15, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    :cond_7
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/display/AutomaticBrightnessController;->mBrighteningLuxThreshold:F

    cmpl-float v14, v4, v14

    if-ltz v14, :cond_f

    cmp-long v14, v6, p1

    if-gtz v14, :cond_f

    .line 759
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientState:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_f

    .line 762
    :cond_8
    :goto_3
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/display/AutomaticBrightnessController;->setAmbientLux(F)V

    .line 763
    sget-boolean v14, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG:Z

    if-eqz v14, :cond_9

    .line 764
    const-string/jumbo v15, "AutomaticBrightnessController"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "updateAmbientLux: "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 765
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    cmpl-float v14, v4, v14

    if-lez v14, :cond_11

    const-string/jumbo v14, "Brightened"

    .line 764
    :goto_4
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 765
    const-string/jumbo v16, ": "

    .line 764
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 766
    const-string/jumbo v16, "mBrighteningLuxThreshold="

    .line 764
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 766
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/AutomaticBrightnessController;->mBrighteningLuxThreshold:F

    move/from16 v16, v0

    .line 764
    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 767
    const-string/jumbo v16, ", mAmbientLightRingBuffer="

    .line 764
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 767
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    move-object/from16 v16, v0

    .line 764
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 768
    const-string/jumbo v16, ", mAmbientLux="

    .line 764
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 768
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    move/from16 v16, v0

    .line 764
    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v15, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    :cond_9
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientState:I

    .line 771
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxMin:F

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLastAmbientLuxMin:F

    .line 772
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxMax:F

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLastAmbientLuxMax:F

    .line 773
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightZone:I

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLastAmbientLightZone:I

    .line 774
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/display/AutomaticBrightnessController;->updateAutoBrightness(Z)V

    .line 775
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-direct {v0, v1, v2, v4}, Lcom/android/server/display/AutomaticBrightnessController;->nextAmbientLightBrighteningTransition(JF)J

    move-result-wide v6

    .line 776
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-direct {v0, v1, v2, v4}, Lcom/android/server/display/AutomaticBrightnessController;->nextAmbientLightDarkeningTransition(JF)J

    move-result-wide v8

    .line 780
    :cond_a
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    .line 788
    .local v10, "nextTransitionTime":J
    cmp-long v14, v10, p1

    if-lez v14, :cond_12

    .line 789
    :goto_5
    sget-boolean v14, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG:Z

    if-eqz v14, :cond_b

    .line 790
    const-string/jumbo v14, "AutomaticBrightnessController"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "updateAmbientLux: Scheduling ambient lux update for "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 791
    invoke-static {v10, v11}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v16

    .line 790
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    :cond_b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    const/4 v15, 0x1

    invoke-virtual {v14, v15, v10, v11}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->sendEmptyMessageAtTime(IJ)Z

    .line 679
    return-void

    .line 731
    .end local v6    # "nextBrightenTransition":J
    .end local v8    # "nextDarkenTransition":J
    .end local v10    # "nextTransitionTime":J
    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 741
    :cond_d
    sget-boolean v14, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG:Z

    if-eqz v14, :cond_5

    .line 742
    const-string/jumbo v14, "AutomaticBrightnessController"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "The lux_index is illegal ambientLux = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " lux_index="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 752
    .restart local v6    # "nextBrightenTransition":J
    .restart local v8    # "nextDarkenTransition":J
    :cond_e
    const-string/jumbo v14, "Darkened"

    goto/16 :goto_2

    .line 760
    :cond_f
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/display/AutomaticBrightnessController;->mDarkeningLuxThreshold:F

    cmpg-float v14, v4, v14

    if-gtz v14, :cond_10

    cmp-long v14, v8, p1

    if-gtz v14, :cond_10

    .line 761
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientState:I

    const/4 v15, 0x1

    if-eq v14, v15, :cond_8

    :cond_10
    const/4 v14, 0x0

    cmpl-float v14, v4, v14

    if-nez v14, :cond_a

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/display/AutomaticBrightnessController;->mbStartTimer:Z

    .line 758
    if-eqz v14, :cond_a

    goto/16 :goto_3

    .line 765
    :cond_11
    const-string/jumbo v14, "Darkened"

    goto/16 :goto_4

    .line 788
    .restart local v10    # "nextTransitionTime":J
    :cond_12
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorRate:I

    int-to-long v14, v14

    add-long v10, p1, v14

    goto/16 :goto_5
.end method

.method private updateAutoBrightness(Z)V
    .locals 8
    .param p1, "sendUpdate"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 804
    iget-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mManulBrightnessSlide:Z

    if-eqz v3, :cond_3

    .line 810
    :cond_0
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessSpline:Landroid/util/Spline;

    iget v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    invoke-virtual {v3, v4}, Landroid/util/Spline;->interpolate(F)F

    move-result v2

    .line 852
    .local v2, "value":F
    iget-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mManulBrightnessSlide:Z

    if-eqz v3, :cond_4

    .line 853
    sget-boolean v3, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG:Z

    if-nez v3, :cond_1

    sget-boolean v3, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG_BACKLIGHT:Z

    if-eqz v3, :cond_2

    .line 854
    :cond_1
    const-string/jumbo v3, "AutomaticBrightnessController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "PowerManagerService.mManualBrightness = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 855
    sget v5, Lcom/android/server/power/PowerManagerService;->mManualBrightness:I

    .line 854
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 855
    const-string/jumbo v5, " mAmbientLux = "

    .line 854
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 855
    iget v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    .line 854
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    :cond_2
    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    sput v3, Lcom/android/server/power/PowerManagerService;->mManulAtAmbientLux:F

    .line 857
    iput-boolean v7, p0, Lcom/android/server/display/AutomaticBrightnessController;->mStartManual:Z

    .line 858
    iput-boolean v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mManulBrightnessSlide:Z

    .line 859
    sput-boolean v7, Lcom/android/server/display/AutomaticBrightnessController;->mManualSetBrightness:Z

    .line 860
    sput-boolean v7, Lcom/android/server/power/PowerManagerService;->mManualSetAutoBrightness:Z

    .line 861
    sget v3, Lcom/android/server/power/PowerManagerService;->mManualBrightness:I

    iput v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    .line 862
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCallbacks:Lcom/android/server/display/AutomaticBrightnessController$Callbacks;

    invoke-interface {v3}, Lcom/android/server/display/AutomaticBrightnessController$Callbacks;->updateBrightness()V

    .line 796
    :goto_0
    return-void

    .line 804
    .end local v2    # "value":F
    :cond_3
    iget-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    if-eqz v3, :cond_0

    .line 805
    return-void

    .line 864
    .restart local v2    # "value":F
    :cond_4
    sput-boolean v6, Lcom/android/server/power/PowerManagerService;->mManualSetAutoBrightness:Z

    .line 866
    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/display/AutomaticBrightnessController;->clampScreenBrightness(I)I

    move-result v1

    .line 867
    .local v1, "newScreenAutoBrightness":I
    sget-object v3, Lcom/android/server/display/AutomaticBrightnessController;->sBrightnessControllerUtility:Lcom/android/server/display/BrightnessControllerUtility;

    invoke-virtual {v3, v1}, Lcom/android/server/display/BrightnessControllerUtility;->getNightBrightness(I)I

    move-result v1

    .line 870
    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    if-eq v3, v1, :cond_a

    .line 871
    sget-boolean v3, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG:Z

    if-nez v3, :cond_5

    sget-boolean v3, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG_BACKLIGHT:Z

    if-eqz v3, :cond_6

    .line 872
    :cond_5
    const-string/jumbo v3, "AutomaticBrightnessController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mScreenAutoBrightness = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 873
    const-string/jumbo v5, " newScreenAutoBrightness = "

    .line 872
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 874
    const-string/jumbo v5, " PowerManagerService.mManualBrightness = "

    .line 872
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 875
    sget v5, Lcom/android/server/power/PowerManagerService;->mManualBrightness:I

    .line 872
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 875
    const-string/jumbo v5, " mStartManual = "

    .line 872
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 876
    iget-boolean v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mStartManual:Z

    .line 872
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 877
    const-string/jumbo v5, " PowerManagerService.mManualBrightnessBackup = "

    .line 872
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 878
    sget v5, Lcom/android/server/power/PowerManagerService;->mManualBrightnessBackup:I

    .line 872
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 879
    const-string/jumbo v5, " PowerManagerService.mDisplayStateOn = "

    .line 872
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 880
    sget-boolean v5, Lcom/android/server/power/PowerManagerService;->mDisplayStateOn:Z

    .line 872
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 881
    const-string/jumbo v5, " mBrightnessOverride = "

    .line 872
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 881
    sget v5, Lcom/android/server/power/PowerManagerService;->mBrightnessOverride:I

    .line 872
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    :cond_6
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    .line 883
    .local v0, "autoBrightness":I
    iput v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    .line 811
    const/high16 v3, 0x3f800000    # 1.0f

    .line 884
    iput v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastScreenAutoBrightnessGamma:F

    .line 885
    sget-boolean v3, Lcom/android/server/power/PowerManagerService;->mDisplayStateOn:Z

    if-eqz v3, :cond_7

    .line 886
    sget v3, Lcom/android/server/power/PowerManagerService;->mManualBrightnessBackup:I

    if-eqz v3, :cond_7

    .line 887
    iput-boolean v7, p0, Lcom/android/server/display/AutomaticBrightnessController;->mStartManual:Z

    .line 888
    sget v3, Lcom/android/server/power/PowerManagerService;->mManualBrightnessBackup:I

    sput v3, Lcom/android/server/power/PowerManagerService;->mManualBrightness:I

    .line 889
    sget v3, Lcom/android/server/power/PowerManagerService;->mManualAmbientLuxBackup:F

    sput v3, Lcom/android/server/power/PowerManagerService;->mManulAtAmbientLux:F

    .line 890
    sput v6, Lcom/android/server/power/PowerManagerService;->mManualBrightnessBackup:I

    .line 891
    const/4 v3, 0x0

    sput v3, Lcom/android/server/power/PowerManagerService;->mManualAmbientLuxBackup:F

    .line 894
    :cond_7
    sget v3, Lcom/android/server/power/PowerManagerService;->mBrightnessOverride:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_8

    .line 895
    sget v3, Lcom/android/server/power/PowerManagerService;->mBrightnessOverrideAdj:I

    if-eqz v3, :cond_8

    .line 896
    iget-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    .line 894
    if-eqz v3, :cond_8

    .line 897
    iput-boolean v7, p0, Lcom/android/server/display/AutomaticBrightnessController;->mStartManual:Z

    .line 898
    sget v3, Lcom/android/server/power/PowerManagerService;->mBrightnessOverrideAdj:I

    sput v3, Lcom/android/server/power/PowerManagerService;->mManualBrightness:I

    .line 899
    sput v6, Lcom/android/server/power/PowerManagerService;->mBrightnessOverride:I

    .line 900
    sput v6, Lcom/android/server/power/PowerManagerService;->mBrightnessOverrideAdj:I

    .line 903
    :cond_8
    iget-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mStartManual:Z

    if-eqz v3, :cond_9

    iget-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    if-eqz v3, :cond_9

    .line 904
    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    sget v4, Lcom/android/server/power/PowerManagerService;->mManulAtAmbientLux:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_c

    .line 905
    sget v3, Lcom/android/server/power/PowerManagerService;->mManualBrightness:I

    iput v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    .line 919
    :cond_9
    :goto_1
    if-eqz p1, :cond_a

    .line 920
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCallbacks:Lcom/android/server/display/AutomaticBrightnessController$Callbacks;

    invoke-interface {v3}, Lcom/android/server/display/AutomaticBrightnessController$Callbacks;->updateBrightness()V

    .line 924
    .end local v0    # "autoBrightness":I
    :cond_a
    sget-boolean v3, Lcom/android/server/power/PowerManagerService;->mDisplayStateOn:Z

    if-eqz v3, :cond_b

    iget-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    if-eqz v3, :cond_b

    .line 925
    sget v3, Lcom/android/server/power/PowerManagerService;->mManualBrightnessBackup:I

    if-eqz v3, :cond_b

    .line 926
    iput-boolean v7, p0, Lcom/android/server/display/AutomaticBrightnessController;->mStartManual:Z

    .line 927
    sget v3, Lcom/android/server/power/PowerManagerService;->mManualBrightnessBackup:I

    sput v3, Lcom/android/server/power/PowerManagerService;->mManualBrightness:I

    .line 928
    sput v6, Lcom/android/server/power/PowerManagerService;->mManualBrightnessBackup:I

    .line 930
    :cond_b
    sput-boolean v6, Lcom/android/server/power/PowerManagerService;->mDisplayStateOn:Z

    goto/16 :goto_0

    .line 907
    .restart local v0    # "autoBrightness":I
    :cond_c
    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    sget v4, Lcom/android/server/power/PowerManagerService;->mManulAtAmbientLux:F

    .line 908
    sget v5, Lcom/android/server/power/PowerManagerService;->mManualBrightness:I

    .line 907
    invoke-direct {p0, v3, v4, v5}, Lcom/android/server/display/AutomaticBrightnessController;->resetAutoBrightness(FFI)V

    .line 909
    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    sget v4, Lcom/android/server/power/PowerManagerService;->mManulAtAmbientLux:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_d

    .line 910
    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    .line 911
    sget v4, Lcom/android/server/power/PowerManagerService;->mManualBrightness:I

    .line 910
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    goto :goto_1

    .line 912
    :cond_d
    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    sget v4, Lcom/android/server/power/PowerManagerService;->mManulAtAmbientLux:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_9

    .line 913
    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    .line 914
    sget v4, Lcom/android/server/power/PowerManagerService;->mManualBrightness:I

    .line 913
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    goto :goto_1
.end method

.method private weightIntegral(J)F
    .locals 3
    .param p1, "x"    # J

    .prologue
    .line 605
    long-to-float v0, p1

    long-to-float v1, p1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mWeightingIntercept:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    mul-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public configure(ZFZZZ)V
    .locals 3
    .param p1, "enable"    # Z
    .param p2, "adjustment"    # F
    .param p3, "dozing"    # Z
    .param p4, "userInitiatedChange"    # Z
    .param p5, "useTwilight"    # Z

    .prologue
    const/4 v2, 0x0

    .line 381
    iput-boolean p3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDozing:Z

    .line 382
    if-eqz p1, :cond_0

    if-eqz p3, :cond_3

    :cond_0
    move v1, v2

    :goto_0
    invoke-direct {p0, v1}, Lcom/android/server/display/AutomaticBrightnessController;->setLightSensorEnabled(Z)Z

    move-result v0

    .line 383
    .local v0, "changed":Z
    invoke-direct {p0, p2}, Lcom/android/server/display/AutomaticBrightnessController;->setScreenAutoBrightnessAdjustment(F)Z

    move-result v1

    or-int/2addr v0, v1

    .line 384
    invoke-direct {p0, p5}, Lcom/android/server/display/AutomaticBrightnessController;->setUseTwilight(Z)Z

    move-result v1

    or-int/2addr v0, v1

    .line 385
    if-eqz v0, :cond_1

    .line 386
    invoke-direct {p0, v2}, Lcom/android/server/display/AutomaticBrightnessController;->updateAutoBrightness(Z)V

    .line 388
    :cond_1
    if-eqz p1, :cond_2

    if-eqz p3, :cond_4

    .line 375
    :cond_2
    :goto_1
    return-void

    .line 382
    .end local v0    # "changed":Z
    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    .line 388
    .restart local v0    # "changed":Z
    :cond_4
    if-eqz p4, :cond_2

    .line 389
    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController;->prepareBrightnessAdjustmentSample()V

    goto :goto_1
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 405
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 406
    const-string/jumbo v0, "Automatic Brightness Controller Configuration:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mScreenAutoBrightnessSpline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessSpline:Landroid/util/Spline;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 408
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mScreenBrightnessRangeMinimum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessRangeMinimum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mScreenBrightnessRangeMaximum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessRangeMaximum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mLightSensorWarmUpTimeConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorWarmUpTimeConfig:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 411
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mBrighteningLightDebounceConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrighteningLightDebounceConfig:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mBrighteningLightFastDebounceConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrighteningLightFastDebounceConfig:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 413
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mDarkeningLightDebounceConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDarkeningLightDebounceConfig:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mResetAmbientLuxAfterWarmUpConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mResetAmbientLuxAfterWarmUpConfig:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 416
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 417
    const-string/jumbo v0, "Automatic Brightness Controller State:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 418
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mLightSensor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 419
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mTwilight.getLastTwilightState()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mTwilight:Lcom/android/server/twilight/TwilightManager;

    invoke-interface {v1}, Lcom/android/server/twilight/TwilightManager;->getLastTwilightState()Lcom/android/server/twilight/TwilightState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 420
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mLightSensorEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 421
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mLightSensorEnableTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnableTime:J

    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mAmbientLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 423
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mAmbientLightHorizon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightHorizon:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mBrighteningLuxThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrighteningLuxThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mDarkeningLuxThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDarkeningLuxThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 426
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mLastObservedLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 427
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mLastObservedLuxTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedLuxTime:J

    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 428
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mRecentLightSamples="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mRecentLightSamples:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mAmbientLightRingBuffer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 430
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mInitialHorizonAmbientLightRingBuffer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 431
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mInitialHorizonAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    .line 430
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 432
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mScreenAutoBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mScreenAutoBrightnessAdjustment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessAdjustment:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mScreenAutoBrightnessAdjustmentMaxGamma="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessAdjustmentMaxGamma:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 435
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mLastScreenAutoBrightnessGamma="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastScreenAutoBrightnessGamma:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 436
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mDozing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDozing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 404
    return-void
.end method

.method public getAutomaticScreenBrightness()I
    .locals 2

    .prologue
    .line 365
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDozing:Z

    if-eqz v0, :cond_0

    .line 366
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDozeScaleFactor:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0

    .line 368
    :cond_0
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    return v0
.end method

.method public getAutomaticScreenRate()I
    .locals 1

    .prologue
    .line 1355
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoRate:I

    return v0
.end method

.method public setAutomaticScreenBrightness(I)I
    .locals 0
    .param p1, "brightness"    # I

    .prologue
    .line 371
    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    return p1
.end method
