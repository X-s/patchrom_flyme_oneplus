.class public Lcom/android/server/policy/DeviceKeyHandler;
.super Ljava/lang/Object;
.source "DeviceKeyHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/DeviceKeyHandler$EventHandler;,
        Lcom/android/server/policy/DeviceKeyHandler$SettingsObserver;
    }
.end annotation


# static fields
.field private static final BLACK_ENBALE_PATH:Ljava/lang/String; = "/proc/touchpanel/gesture_enable"

.field private static final BLACK_VALUE_PATH:Ljava/lang/String; = "/proc/touchpanel/coordinate"

.field private static final CAMERA_ID:Ljava/lang/String; = "0"

.field private static final DEBUG:Z

.field private static final GESTURE_CIRCLE_SCANCODE:Ljava/lang/String; = "6"

.field private static final GESTURE_DOUBLE_TAP:Ljava/lang/String; = "1"

.field private static final GESTURE_GTR_SCANCODE:Ljava/lang/String; = "4"

.field private static final GESTURE_LTR_SCANCODE:Ljava/lang/String; = "5"

.field private static final GESTURE_SWIPE_DOWN_SCANCODE:Ljava/lang/String; = "7"

.field private static final GESTURE_SWITCH:Ljava/lang/String; = "/proc/touchpanel/gesture_switch"

.field private static final GESTURE_V_SCANCODE:Ljava/lang/String; = "2"

.field private static final GESTURE_WAKELOCK_DURATION:I = 0xbb8

.field private static final MAX_WAIT_TIME:I = 0x3e8

.field private static final PROXIMITY_THRESHOLD:F = 2.0f

.field private static final TAG:Ljava/lang/String; = "DeviceKeyHandler"

.field private static final VIBRATE_DURATION_LONG:J = 0x96L

.field private static final VIBRATE_DURATION_SHORT:J = 0x4bL

.field private static final VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;


# instance fields
.field mAcquireCauseWakeUpGestureWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mActivityManager:Landroid/app/ActivityManager;

.field private mBlackEnableState:Z

.field private mBlackKeySettingState:I

.field private mCameraManager:Landroid/hardware/camera2/CameraManager;

.field private final mContext:Landroid/content/Context;

.field private mDoubleScreenOn:Z

.field private mEventHandler:Lcom/android/server/policy/DeviceKeyHandler$EventHandler;

.field private mFlashlightEnabled:Z

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field mListenerActive:Z

.field private mMusic_control:Z

.field private mMusic_next:Z

.field private mMusic_pause:Z

.field private mMusic_play:Z

.field private mMusic_prev:Z

.field private final mObject:Ljava/lang/Object;

.field private mObserver:Lcom/android/server/policy/DeviceKeyHandler$SettingsObserver;

.field mPartialGestureWakeLock:Landroid/os/PowerManager$WakeLock;

.field mPocketListener:Landroid/hardware/SensorEventListener;

.field private final mPowerManager:Landroid/os/PowerManager;

.field mProximityListener:Landroid/hardware/SensorEventListener;

.field private mProximitySensor:Landroid/hardware/Sensor;

.field private mProximitySensorActive:Z

.field private mProximitySensorEnabled:Z

.field mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mScreenStateReceiver:Landroid/content/BroadcastReceiver;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mStartCamera:Z

.field private mStartFlash:Z

.field private mSystemReady:Z

.field private final mTorchCallback:Landroid/hardware/camera2/CameraManager$TorchCallback;

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 70
    const-string v0, "persist.sys.assert.panic"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/policy/DeviceKeyHandler;->DEBUG:Z

    .line 89
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/server/policy/DeviceKeyHandler;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mBlackKeySettingState:I

    .line 107
    iput-boolean v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mBlackEnableState:Z

    .line 109
    iput-boolean v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mStartCamera:Z

    .line 110
    iput-boolean v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mStartFlash:Z

    .line 111
    iput-boolean v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mMusic_control:Z

    .line 112
    iput-boolean v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mMusic_prev:Z

    .line 113
    iput-boolean v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mMusic_next:Z

    .line 114
    iput-boolean v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mMusic_pause:Z

    .line 115
    iput-boolean v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mMusic_play:Z

    .line 116
    iput-boolean v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mDoubleScreenOn:Z

    .line 126
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mObject:Ljava/lang/Object;

    .line 131
    iput-boolean v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mProximitySensorEnabled:Z

    .line 132
    iput-boolean v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mProximitySensorActive:Z

    .line 218
    iput-boolean v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mListenerActive:Z

    .line 258
    new-instance v0, Lcom/android/server/policy/DeviceKeyHandler$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/DeviceKeyHandler$1;-><init>(Lcom/android/server/policy/DeviceKeyHandler;)V

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mScreenStateReceiver:Landroid/content/BroadcastReceiver;

    .line 275
    new-instance v0, Lcom/android/server/policy/DeviceKeyHandler$2;

    invoke-direct {v0, p0}, Lcom/android/server/policy/DeviceKeyHandler$2;-><init>(Lcom/android/server/policy/DeviceKeyHandler;)V

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mPocketListener:Landroid/hardware/SensorEventListener;

    .line 312
    new-instance v0, Lcom/android/server/policy/DeviceKeyHandler$3;

    invoke-direct {v0, p0}, Lcom/android/server/policy/DeviceKeyHandler$3;-><init>(Lcom/android/server/policy/DeviceKeyHandler;)V

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mProximityListener:Landroid/hardware/SensorEventListener;

    .line 563
    new-instance v0, Lcom/android/server/policy/DeviceKeyHandler$4;

    invoke-direct {v0, p0}, Lcom/android/server/policy/DeviceKeyHandler$4;-><init>(Lcom/android/server/policy/DeviceKeyHandler;)V

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mTorchCallback:Landroid/hardware/camera2/CameraManager$TorchCallback;

    .line 143
    iput-object p1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mContext:Landroid/content/Context;

    .line 144
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mPowerManager:Landroid/os/PowerManager;

    .line 145
    new-instance v0, Lcom/android/server/policy/DeviceKeyHandler$EventHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/DeviceKeyHandler$EventHandler;-><init>(Lcom/android/server/policy/DeviceKeyHandler;Lcom/android/server/policy/DeviceKeyHandler$1;)V

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mEventHandler:Lcom/android/server/policy/DeviceKeyHandler$EventHandler;

    .line 146
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mSensorManager:Landroid/hardware/SensorManager;

    .line 147
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mProximitySensor:Landroid/hardware/Sensor;

    .line 148
    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mVibrator:Landroid/os/Vibrator;

    .line 149
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mActivityManager:Landroid/app/ActivityManager;

    .line 150
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mPowerManager:Landroid/os/PowerManager;

    const-string v1, "ProximityWakeLock"

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 152
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mPowerManager:Landroid/os/PowerManager;

    const-string v1, "PartialGestureWakeLock"

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mPartialGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 154
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mPowerManager:Landroid/os/PowerManager;

    const v1, 0x10000001

    const-string v2, "AcquireCauseWakeUpGestureWakeLock"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mAcquireCauseWakeUpGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 158
    new-instance v0, Lcom/android/server/policy/DeviceKeyHandler$SettingsObserver;

    iget-object v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mEventHandler:Lcom/android/server/policy/DeviceKeyHandler$EventHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/DeviceKeyHandler$SettingsObserver;-><init>(Lcom/android/server/policy/DeviceKeyHandler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mObserver:Lcom/android/server/policy/DeviceKeyHandler$SettingsObserver;

    .line 160
    const-string v0, "camera"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 161
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DeviceKeyHandler"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mHandlerThread:Landroid/os/HandlerThread;

    .line 162
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 163
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mHandler:Landroid/os/Handler;

    .line 164
    invoke-virtual {p0}, Lcom/android/server/policy/DeviceKeyHandler;->registerCameraManagerCallbacks()V

    .line 165
    return-void
.end method

.method private SensorProcessMessage()V
    .locals 4

    .prologue
    .line 378
    iget-object v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 379
    iget-object v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mObject:Ljava/lang/Object;

    monitor-enter v2

    .line 394
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mEventHandler:Lcom/android/server/policy/DeviceKeyHandler$EventHandler;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/server/policy/DeviceKeyHandler$EventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 395
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mEventHandler:Lcom/android/server/policy/DeviceKeyHandler$EventHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/policy/DeviceKeyHandler$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 398
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 399
    iget-object v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 400
    return-void

    .line 398
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method static synthetic access$100(Lcom/android/server/policy/DeviceKeyHandler;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/DeviceKeyHandler;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/policy/DeviceKeyHandler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/DeviceKeyHandler;

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mFlashlightEnabled:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/server/policy/DeviceKeyHandler;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/DeviceKeyHandler;
    .param p1, "x1"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mFlashlightEnabled:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/policy/DeviceKeyHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/DeviceKeyHandler;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/server/policy/DeviceKeyHandler;->updateOemSettings()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/policy/DeviceKeyHandler;)Landroid/hardware/Sensor;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/DeviceKeyHandler;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mProximitySensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/policy/DeviceKeyHandler;)Landroid/hardware/SensorManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/DeviceKeyHandler;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mSensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    .line 67
    sget-boolean v0, Lcom/android/server/policy/DeviceKeyHandler;->DEBUG:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/policy/DeviceKeyHandler;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/DeviceKeyHandler;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mObject:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/policy/DeviceKeyHandler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/DeviceKeyHandler;

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mProximitySensorActive:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/server/policy/DeviceKeyHandler;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/DeviceKeyHandler;
    .param p1, "x1"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mProximitySensorActive:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/policy/DeviceKeyHandler;)Landroid/app/ActivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/DeviceKeyHandler;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mActivityManager:Landroid/app/ActivityManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/policy/DeviceKeyHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/DeviceKeyHandler;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/server/policy/DeviceKeyHandler;->processKeyEvent()V

    return-void
.end method

.method private acquireGestureWakeLock(Ljava/lang/String;)V
    .locals 4
    .param p1, "gesture"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, 0xbb8

    .line 413
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mAcquireCauseWakeUpGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mAcquireCauseWakeUpGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mAcquireCauseWakeUpGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 417
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mPartialGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mPartialGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 419
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mPartialGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 421
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/policy/DeviceKeyHandler;->isAWakeUpGesture(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 422
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mAcquireCauseWakeUpGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_2

    .line 423
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mAcquireCauseWakeUpGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 430
    :cond_2
    :goto_0
    return-void

    .line 426
    :cond_3
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mPartialGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_2

    .line 427
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mPartialGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    goto :goto_0
.end method

.method private disableProximitySensor()V
    .locals 4

    .prologue
    .line 361
    sget-boolean v2, Lcom/android/server/policy/DeviceKeyHandler;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 362
    const-string v2, "DeviceKeyHandler"

    const-string v3, "disableProximitySensor() called."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mProximitySensorEnabled:Z

    if-eqz v2, :cond_1

    .line 367
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 369
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/android/server/policy/DeviceKeyHandler;->mProximityListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 370
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mProximitySensorEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 372
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 375
    .end local v0    # "identity":J
    :cond_1
    return-void

    .line 372
    .restart local v0    # "identity":J
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private dispatchMediaKeyWithWakeLockToAudioService(I)V
    .locals 10
    .param p1, "keycode"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v9, 0x1

    .line 599
    iget-boolean v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mSystemReady:Z

    if-eqz v2, :cond_0

    .line 600
    iget-object v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v0

    .line 601
    .local v0, "helper":Landroid/media/session/MediaSessionLegacyHelper;
    if-eqz v0, :cond_1

    .line 602
    new-instance v1, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move v7, p1

    move v8, v6

    invoke-direct/range {v1 .. v8}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 604
    .local v1, "event":Landroid/view/KeyEvent;
    invoke-virtual {v0, v1, v9}, Landroid/media/session/MediaSessionLegacyHelper;->sendMediaButtonEvent(Landroid/view/KeyEvent;Z)V

    .line 605
    invoke-static {v1, v9}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v1

    .line 606
    invoke-virtual {v0, v1, v9}, Landroid/media/session/MediaSessionLegacyHelper;->sendMediaButtonEvent(Landroid/view/KeyEvent;Z)V

    .line 613
    .end local v0    # "helper":Landroid/media/session/MediaSessionLegacyHelper;
    .end local v1    # "event":Landroid/view/KeyEvent;
    :cond_0
    :goto_0
    return-void

    .line 608
    .restart local v0    # "helper":Landroid/media/session/MediaSessionLegacyHelper;
    :cond_1
    sget-boolean v2, Lcom/android/server/policy/DeviceKeyHandler;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 609
    const-string v2, "DeviceKeyHandler"

    const-string v3, "MediaSessionLegacyHelper instance is null."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private enableProximitySensor()V
    .locals 6

    .prologue
    .line 342
    sget-boolean v2, Lcom/android/server/policy/DeviceKeyHandler;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 343
    const-string v2, "DeviceKeyHandler"

    const-string v3, "enableProximitySensor() called."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mProximitySensorEnabled:Z

    if-nez v2, :cond_1

    .line 348
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 350
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/android/server/policy/DeviceKeyHandler;->mProximityListener:Landroid/hardware/SensorEventListener;

    iget-object v4, p0, Lcom/android/server/policy/DeviceKeyHandler;->mProximitySensor:Landroid/hardware/Sensor;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 353
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mProximitySensorEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 355
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 358
    .end local v0    # "identity":J
    :cond_1
    return-void

    .line 355
    .restart local v0    # "identity":J
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private getCameraId()Ljava/lang/String;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 544
    iget-object v10, p0, Lcom/android/server/policy/DeviceKeyHandler;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v10}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v6

    .line 545
    .local v6, "ids":[Ljava/lang/String;
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/String;
    array-length v7, v0

    .local v7, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v7, :cond_1

    aget-object v5, v0, v4

    .line 547
    .local v5, "id":Ljava/lang/String;
    :try_start_0
    iget-object v10, p0, Lcom/android/server/policy/DeviceKeyHandler;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v10, v5}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v1

    .line 548
    .local v1, "c":Landroid/hardware/camera2/CameraCharacteristics;
    sget-object v10, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v10}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    .line 549
    .local v3, "flashAvailable":Ljava/lang/Boolean;
    sget-object v10, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v10}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 550
    .local v8, "lensFacing":Ljava/lang/Integer;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_0

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_0

    .line 560
    .end local v1    # "c":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v3    # "flashAvailable":Ljava/lang/Boolean;
    .end local v5    # "id":Ljava/lang/String;
    .end local v8    # "lensFacing":Ljava/lang/Integer;
    :goto_1
    return-object v5

    .line 555
    .restart local v5    # "id":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 556
    .local v2, "e":Ljava/lang/NullPointerException;
    const-string v10, "DeviceKeyHandler"

    const-string v11, "Couldn\'t get torch mode characteristics."

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v5, v9

    .line 557
    goto :goto_1

    .line 545
    .end local v2    # "e":Ljava/lang/NullPointerException;
    .restart local v1    # "c":Landroid/hardware/camera2/CameraCharacteristics;
    .restart local v3    # "flashAvailable":Ljava/lang/Boolean;
    .restart local v8    # "lensFacing":Ljava/lang/Integer;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v1    # "c":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v3    # "flashAvailable":Ljava/lang/Boolean;
    .end local v5    # "id":Ljava/lang/String;
    .end local v8    # "lensFacing":Ljava/lang/Integer;
    :cond_1
    move-object v5, v9

    .line 560
    goto :goto_1
.end method

.method public static getOffset(II)I
    .locals 1
    .param p0, "num"    # I
    .param p1, "index"    # I

    .prologue
    .line 452
    const/4 v0, 0x1

    shl-int/2addr v0, p1

    and-int/2addr v0, p0

    shr-int/2addr v0, p1

    return v0
.end method

.method private isAWakeUpGesture(Ljava/lang/String;)Z
    .locals 4
    .param p1, "gesture"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 403
    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 408
    :pswitch_0
    return v0

    .line 403
    :sswitch_0
    const-string v3, "6"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, v1

    goto :goto_0

    :sswitch_1
    const-string v3, "1"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, v0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x31 -> :sswitch_1
        0x36 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private performVibration()V
    .locals 1

    .prologue
    .line 588
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/policy/DeviceKeyHandler;->performVibration(Z)V

    .line 589
    return-void
.end method

.method private performVibration(Z)V
    .locals 4
    .param p1, "success"    # Z

    .prologue
    .line 592
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    .line 593
    iget-object v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mVibrator:Landroid/os/Vibrator;

    if-eqz p1, :cond_1

    const-wide/16 v0, 0x4b

    :goto_0
    sget-object v3, Lcom/android/server/policy/DeviceKeyHandler;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {v2, v0, v1, v3}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V

    .line 596
    :cond_0
    return-void

    .line 593
    :cond_1
    const-wide/16 v0, 0x96

    goto :goto_0
.end method

.method private processKeyEvent()V
    .locals 9

    .prologue
    const/4 v7, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 456
    const-string v6, "/proc/touchpanel/coordinate"

    invoke-static {v6}, Lcom/android/server/policy/FileUtils;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 458
    .local v3, "value":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 512
    :cond_0
    :goto_0
    return-void

    .line 462
    :cond_1
    const/16 v6, 0x2c

    invoke-virtual {v3, v6, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 463
    .local v0, "at":I
    invoke-virtual {v3, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 465
    .local v1, "keyValue":Ljava/lang/String;
    const/4 v6, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    :cond_2
    :goto_1
    :pswitch_0
    packed-switch v6, :pswitch_data_1

    goto :goto_0

    .line 467
    :pswitch_1
    iget-boolean v4, p0, Lcom/android/server/policy/DeviceKeyHandler;->mStartCamera:Z

    if-eqz v4, :cond_0

    .line 468
    invoke-direct {p0, v1}, Lcom/android/server/policy/DeviceKeyHandler;->acquireGestureWakeLock(Ljava/lang/String;)V

    .line 469
    invoke-direct {p0}, Lcom/android/server/policy/DeviceKeyHandler;->performVibration()V

    .line 470
    const-class v4, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 472
    .local v2, "service":Lcom/android/server/statusbar/StatusBarManagerInternal;
    invoke-interface {v2, v7}, Lcom/android/server/statusbar/StatusBarManagerInternal;->onCameraLaunchGestureDetected(I)V

    goto :goto_0

    .line 465
    .end local v2    # "service":Lcom/android/server/statusbar/StatusBarManagerInternal;
    :pswitch_2
    const-string v8, "6"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    move v6, v5

    goto :goto_1

    :pswitch_3
    const-string v8, "7"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    move v6, v4

    goto :goto_1

    :pswitch_4
    const-string v8, "2"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    move v6, v7

    goto :goto_1

    :pswitch_5
    const-string v8, "5"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v6, 0x3

    goto :goto_1

    :pswitch_6
    const-string v8, "4"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v6, 0x4

    goto :goto_1

    :pswitch_7
    const-string v8, "1"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v6, 0x5

    goto :goto_1

    .line 476
    :pswitch_8
    iget-boolean v4, p0, Lcom/android/server/policy/DeviceKeyHandler;->mMusic_pause:Z

    if-eqz v4, :cond_0

    .line 477
    invoke-direct {p0, v1}, Lcom/android/server/policy/DeviceKeyHandler;->acquireGestureWakeLock(Ljava/lang/String;)V

    .line 478
    invoke-direct {p0}, Lcom/android/server/policy/DeviceKeyHandler;->performVibration()V

    .line 479
    const/16 v4, 0x55

    invoke-direct {p0, v4}, Lcom/android/server/policy/DeviceKeyHandler;->dispatchMediaKeyWithWakeLockToAudioService(I)V

    goto :goto_0

    .line 483
    :pswitch_9
    iget-boolean v6, p0, Lcom/android/server/policy/DeviceKeyHandler;->mStartFlash:Z

    if-eqz v6, :cond_0

    .line 484
    invoke-direct {p0, v1}, Lcom/android/server/policy/DeviceKeyHandler;->acquireGestureWakeLock(Ljava/lang/String;)V

    .line 485
    iget-boolean v6, p0, Lcom/android/server/policy/DeviceKeyHandler;->mFlashlightEnabled:Z

    if-nez v6, :cond_3

    :goto_2
    invoke-virtual {p0, v4}, Lcom/android/server/policy/DeviceKeyHandler;->setFlashlight(Z)Z

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/server/policy/DeviceKeyHandler;->performVibration(Z)V

    goto/16 :goto_0

    :cond_3
    move v4, v5

    goto :goto_2

    .line 489
    :pswitch_a
    iget-boolean v4, p0, Lcom/android/server/policy/DeviceKeyHandler;->mMusic_prev:Z

    if-eqz v4, :cond_0

    .line 490
    invoke-direct {p0, v1}, Lcom/android/server/policy/DeviceKeyHandler;->acquireGestureWakeLock(Ljava/lang/String;)V

    .line 491
    invoke-direct {p0}, Lcom/android/server/policy/DeviceKeyHandler;->performVibration()V

    .line 492
    const/16 v4, 0x58

    invoke-direct {p0, v4}, Lcom/android/server/policy/DeviceKeyHandler;->dispatchMediaKeyWithWakeLockToAudioService(I)V

    goto/16 :goto_0

    .line 496
    :pswitch_b
    iget-boolean v4, p0, Lcom/android/server/policy/DeviceKeyHandler;->mMusic_next:Z

    if-eqz v4, :cond_0

    .line 497
    invoke-direct {p0, v1}, Lcom/android/server/policy/DeviceKeyHandler;->acquireGestureWakeLock(Ljava/lang/String;)V

    .line 498
    invoke-direct {p0}, Lcom/android/server/policy/DeviceKeyHandler;->performVibration()V

    .line 499
    const/16 v4, 0x57

    invoke-direct {p0, v4}, Lcom/android/server/policy/DeviceKeyHandler;->dispatchMediaKeyWithWakeLockToAudioService(I)V

    goto/16 :goto_0

    .line 503
    :pswitch_c
    iget-boolean v4, p0, Lcom/android/server/policy/DeviceKeyHandler;->mDoubleScreenOn:Z

    if-eqz v4, :cond_0

    .line 504
    invoke-direct {p0, v1}, Lcom/android/server/policy/DeviceKeyHandler;->acquireGestureWakeLock(Ljava/lang/String;)V

    .line 505
    invoke-direct {p0}, Lcom/android/server/policy/DeviceKeyHandler;->performVibration()V

    .line 506
    iget-object v4, p0, Lcom/android/server/policy/DeviceKeyHandler;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Landroid/os/PowerManager;->wakeUp(J)V

    goto/16 :goto_0

    .line 465
    nop

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_7
        :pswitch_4
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method private updateOemSettings()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 222
    iget-object v3, p0, Lcom/android/server/policy/DeviceKeyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 223
    .local v2, "resolver":Landroid/content/ContentResolver;
    const-string v3, "oem_acc_blackscreen_gestrue_enable"

    const/4 v6, -0x2

    invoke-static {v2, v3, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    iput v3, p0, Lcom/android/server/policy/DeviceKeyHandler;->mBlackKeySettingState:I

    .line 227
    sget-boolean v3, Lcom/android/server/policy/DeviceKeyHandler;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 228
    const-string v3, "DeviceKeyHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateH2OemSettings(): mBlackKeySettingState = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/policy/DeviceKeyHandler;->mBlackKeySettingState:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_0
    iget v3, p0, Lcom/android/server/policy/DeviceKeyHandler;->mBlackKeySettingState:I

    const/4 v6, 0x7

    invoke-static {v3, v6}, Lcom/android/server/policy/DeviceKeyHandler;->getOffset(II)I

    move-result v3

    if-ne v3, v4, :cond_2

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/android/server/policy/DeviceKeyHandler;->mDoubleScreenOn:Z

    .line 232
    iget v3, p0, Lcom/android/server/policy/DeviceKeyHandler;->mBlackKeySettingState:I

    const/4 v6, 0x6

    invoke-static {v3, v6}, Lcom/android/server/policy/DeviceKeyHandler;->getOffset(II)I

    move-result v3

    if-ne v3, v4, :cond_3

    move v3, v4

    :goto_1
    iput-boolean v3, p0, Lcom/android/server/policy/DeviceKeyHandler;->mStartCamera:Z

    .line 233
    iget v3, p0, Lcom/android/server/policy/DeviceKeyHandler;->mBlackKeySettingState:I

    const/4 v6, 0x5

    invoke-static {v3, v6}, Lcom/android/server/policy/DeviceKeyHandler;->getOffset(II)I

    move-result v3

    if-ne v3, v4, :cond_4

    move v3, v4

    :goto_2
    iput-boolean v3, p0, Lcom/android/server/policy/DeviceKeyHandler;->mMusic_control:Z

    .line 234
    iget v3, p0, Lcom/android/server/policy/DeviceKeyHandler;->mBlackKeySettingState:I

    const/4 v6, 0x4

    invoke-static {v3, v6}, Lcom/android/server/policy/DeviceKeyHandler;->getOffset(II)I

    move-result v3

    if-ne v3, v4, :cond_5

    move v3, v4

    :goto_3
    iput-boolean v3, p0, Lcom/android/server/policy/DeviceKeyHandler;->mMusic_prev:Z

    .line 235
    iget v3, p0, Lcom/android/server/policy/DeviceKeyHandler;->mBlackKeySettingState:I

    const/4 v6, 0x3

    invoke-static {v3, v6}, Lcom/android/server/policy/DeviceKeyHandler;->getOffset(II)I

    move-result v3

    if-ne v3, v4, :cond_6

    move v3, v4

    :goto_4
    iput-boolean v3, p0, Lcom/android/server/policy/DeviceKeyHandler;->mMusic_next:Z

    .line 236
    iget v3, p0, Lcom/android/server/policy/DeviceKeyHandler;->mBlackKeySettingState:I

    const/4 v6, 0x2

    invoke-static {v3, v6}, Lcom/android/server/policy/DeviceKeyHandler;->getOffset(II)I

    move-result v3

    if-ne v3, v4, :cond_7

    move v3, v4

    :goto_5
    iput-boolean v3, p0, Lcom/android/server/policy/DeviceKeyHandler;->mMusic_pause:Z

    .line 237
    iget v3, p0, Lcom/android/server/policy/DeviceKeyHandler;->mBlackKeySettingState:I

    invoke-static {v3, v4}, Lcom/android/server/policy/DeviceKeyHandler;->getOffset(II)I

    move-result v3

    if-ne v3, v4, :cond_8

    move v3, v4

    :goto_6
    iput-boolean v3, p0, Lcom/android/server/policy/DeviceKeyHandler;->mMusic_play:Z

    .line 238
    iget v3, p0, Lcom/android/server/policy/DeviceKeyHandler;->mBlackKeySettingState:I

    invoke-static {v3, v5}, Lcom/android/server/policy/DeviceKeyHandler;->getOffset(II)I

    move-result v3

    if-ne v3, v4, :cond_9

    move v3, v4

    :goto_7
    iput-boolean v3, p0, Lcom/android/server/policy/DeviceKeyHandler;->mStartFlash:Z

    .line 240
    const-string v3, "/proc/touchpanel/gesture_enable"

    iget v6, p0, Lcom/android/server/policy/DeviceKeyHandler;->mBlackKeySettingState:I

    invoke-static {v3, v6}, Lcom/android/server/policy/FileUtils;->writeIntLine(Ljava/lang/String;I)Z

    .line 242
    iget v3, p0, Lcom/android/server/policy/DeviceKeyHandler;->mBlackKeySettingState:I

    if-eqz v3, :cond_a

    iget-boolean v3, p0, Lcom/android/server/policy/DeviceKeyHandler;->mListenerActive:Z

    if-nez v3, :cond_a

    .line 244
    iput-boolean v4, p0, Lcom/android/server/policy/DeviceKeyHandler;->mListenerActive:Z

    .line 245
    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 246
    .local v1, "mScreenOnFilter":Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/android/server/policy/DeviceKeyHandler;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/policy/DeviceKeyHandler;->mScreenStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 247
    new-instance v0, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 248
    .local v0, "mScreenOffFilter":Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/android/server/policy/DeviceKeyHandler;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/policy/DeviceKeyHandler;->mScreenStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 255
    .end local v0    # "mScreenOffFilter":Landroid/content/IntentFilter;
    .end local v1    # "mScreenOnFilter":Landroid/content/IntentFilter;
    :cond_1
    :goto_8
    return-void

    :cond_2
    move v3, v5

    .line 231
    goto/16 :goto_0

    :cond_3
    move v3, v5

    .line 232
    goto :goto_1

    :cond_4
    move v3, v5

    .line 233
    goto :goto_2

    :cond_5
    move v3, v5

    .line 234
    goto :goto_3

    :cond_6
    move v3, v5

    .line 235
    goto :goto_4

    :cond_7
    move v3, v5

    .line 236
    goto :goto_5

    :cond_8
    move v3, v5

    .line 237
    goto :goto_6

    :cond_9
    move v3, v5

    .line 238
    goto :goto_7

    .line 249
    :cond_a
    iget v3, p0, Lcom/android/server/policy/DeviceKeyHandler;->mBlackKeySettingState:I

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/android/server/policy/DeviceKeyHandler;->mListenerActive:Z

    if-ne v3, v4, :cond_1

    .line 251
    iput-boolean v5, p0, Lcom/android/server/policy/DeviceKeyHandler;->mListenerActive:Z

    .line 252
    iget-object v3, p0, Lcom/android/server/policy/DeviceKeyHandler;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/policy/DeviceKeyHandler;->mScreenStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_8
.end method


# virtual methods
.method public handleKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 296
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    .line 297
    .local v3, "repeatCount":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    if-ne v6, v5, :cond_2

    move v0, v5

    .line 298
    .local v0, "actionUp":Z
    :goto_0
    if-eqz v0, :cond_0

    if-nez v3, :cond_0

    move v4, v5

    .line 299
    .local v4, "shouldHandleEvent":Z
    :cond_0
    move v1, v4

    .line 300
    .local v1, "handled":Z
    if-eqz v1, :cond_1

    .line 301
    iget-object v6, p0, Lcom/android/server/policy/DeviceKeyHandler;->mEventHandler:Lcom/android/server/policy/DeviceKeyHandler$EventHandler;

    invoke-virtual {v6, v5}, Lcom/android/server/policy/DeviceKeyHandler$EventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 302
    .local v2, "msg":Landroid/os/Message;
    iget-object v5, p0, Lcom/android/server/policy/DeviceKeyHandler;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v5, :cond_3

    .line 303
    invoke-direct {p0}, Lcom/android/server/policy/DeviceKeyHandler;->SensorProcessMessage()V

    .line 309
    .end local v2    # "msg":Landroid/os/Message;
    :cond_1
    :goto_1
    return v1

    .end local v0    # "actionUp":Z
    .end local v1    # "handled":Z
    .end local v4    # "shouldHandleEvent":Z
    :cond_2
    move v0, v4

    .line 297
    goto :goto_0

    .line 305
    .restart local v0    # "actionUp":Z
    .restart local v1    # "handled":Z
    .restart local v2    # "msg":Landroid/os/Message;
    .restart local v4    # "shouldHandleEvent":Z
    :cond_3
    iget-object v5, p0, Lcom/android/server/policy/DeviceKeyHandler;->mEventHandler:Lcom/android/server/policy/DeviceKeyHandler$EventHandler;

    invoke-virtual {v5, v2}, Lcom/android/server/policy/DeviceKeyHandler$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1
.end method

.method public registerCameraManagerCallbacks()V
    .locals 3

    .prologue
    .line 515
    sget-boolean v0, Lcom/android/server/policy/DeviceKeyHandler;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 516
    const-string v0, "DeviceKeyHandler"

    const-string v1, "registerCameraManagerCallbacks() called."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mTorchCallback:Landroid/hardware/camera2/CameraManager$TorchCallback;

    iget-object v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CameraManager;->registerTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;Landroid/os/Handler;)V

    .line 519
    return-void
.end method

.method public setFlashlight(Z)Z
    .locals 6
    .param p1, "enabled"    # Z

    .prologue
    const/4 v2, 0x0

    .line 522
    sget-boolean v3, Lcom/android/server/policy/DeviceKeyHandler;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 523
    const-string v3, "DeviceKeyHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setTorchMode() called: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    :cond_0
    monitor-enter p0

    .line 527
    :try_start_0
    iget-boolean v3, p0, Lcom/android/server/policy/DeviceKeyHandler;->mFlashlightEnabled:Z

    if-eq v3, p1, :cond_2

    .line 528
    iput-boolean p1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mFlashlightEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 530
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/policy/DeviceKeyHandler;->getCameraId()Ljava/lang/String;

    move-result-object v0

    .line 531
    .local v0, "cameraId":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/policy/DeviceKeyHandler;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    if-eqz v0, :cond_1

    .end local v0    # "cameraId":Ljava/lang/String;
    :goto_0
    invoke-virtual {v3, v0, p1}, Landroid/hardware/camera2/CameraManager;->setTorchMode(Ljava/lang/String;Z)V
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 532
    const/4 v2, 0x1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 540
    :goto_1
    return v2

    .line 531
    .restart local v0    # "cameraId":Ljava/lang/String;
    :cond_1
    :try_start_3
    const-string v0, "0"
    :try_end_3
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 533
    .end local v0    # "cameraId":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 534
    .local v1, "e":Landroid/hardware/camera2/CameraAccessException;
    :try_start_4
    const-string v3, "DeviceKeyHandler"

    const-string v4, "CameraAccessException: Couldn\'t set torch mode."

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 535
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/policy/DeviceKeyHandler;->mFlashlightEnabled:Z

    .line 536
    monitor-exit p0

    goto :goto_1

    .line 539
    .end local v1    # "e":Landroid/hardware/camera2/CameraAccessException;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2

    :cond_2
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method public systemReady()V
    .locals 7

    .prologue
    .line 168
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/policy/DeviceKeyHandler;->mSystemReady:Z

    .line 171
    iget-object v3, p0, Lcom/android/server/policy/DeviceKeyHandler;->mObserver:Lcom/android/server/policy/DeviceKeyHandler$SettingsObserver;

    invoke-virtual {v3}, Lcom/android/server/policy/DeviceKeyHandler$SettingsObserver;->observe()V

    .line 174
    const/4 v2, 0x0

    .line 176
    .local v2, "info":Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v3, p0, Lcom/android/server/policy/DeviceKeyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.netease.cloudmusic"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 182
    :goto_0
    if-eqz v2, :cond_0

    .line 184
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    const-string v4, "com.netease.cloudmusic"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v3, v4, v5, v6}, Landroid/content/pm/IPackageManager;->setPackageStoppedState(Ljava/lang/String;ZI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 191
    :cond_0
    :goto_1
    return-void

    .line 178
    :catch_0
    move-exception v1

    .line 179
    .local v1, "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    .line 180
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 186
    .end local v1    # "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v0

    .line 187
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method
