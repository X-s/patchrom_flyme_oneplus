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
.field private gesture_switch_exist:Z

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
    .line 71
    const-string v0, "persist.sys.assert.panic"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/policy/DeviceKeyHandler;->DEBUG:Z

    .line 90
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

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mBlackKeySettingState:I

    .line 108
    iput-boolean v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mBlackEnableState:Z

    .line 110
    iput-boolean v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mStartCamera:Z

    .line 111
    iput-boolean v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mStartFlash:Z

    .line 112
    iput-boolean v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mMusic_control:Z

    .line 113
    iput-boolean v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mMusic_prev:Z

    .line 114
    iput-boolean v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mMusic_next:Z

    .line 115
    iput-boolean v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mMusic_pause:Z

    .line 116
    iput-boolean v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mMusic_play:Z

    .line 117
    iput-boolean v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mDoubleScreenOn:Z

    .line 127
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mObject:Ljava/lang/Object;

    .line 132
    iput-boolean v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mProximitySensorEnabled:Z

    .line 133
    iput-boolean v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mProximitySensorActive:Z

    .line 136
    iput-boolean v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->gesture_switch_exist:Z

    .line 225
    iput-boolean v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mListenerActive:Z

    .line 272
    new-instance v0, Lcom/android/server/policy/DeviceKeyHandler$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/DeviceKeyHandler$1;-><init>(Lcom/android/server/policy/DeviceKeyHandler;)V

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mScreenStateReceiver:Landroid/content/BroadcastReceiver;

    .line 289
    new-instance v0, Lcom/android/server/policy/DeviceKeyHandler$2;

    invoke-direct {v0, p0}, Lcom/android/server/policy/DeviceKeyHandler$2;-><init>(Lcom/android/server/policy/DeviceKeyHandler;)V

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mPocketListener:Landroid/hardware/SensorEventListener;

    .line 326
    new-instance v0, Lcom/android/server/policy/DeviceKeyHandler$3;

    invoke-direct {v0, p0}, Lcom/android/server/policy/DeviceKeyHandler$3;-><init>(Lcom/android/server/policy/DeviceKeyHandler;)V

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mProximityListener:Landroid/hardware/SensorEventListener;

    .line 580
    new-instance v0, Lcom/android/server/policy/DeviceKeyHandler$4;

    invoke-direct {v0, p0}, Lcom/android/server/policy/DeviceKeyHandler$4;-><init>(Lcom/android/server/policy/DeviceKeyHandler;)V

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mTorchCallback:Landroid/hardware/camera2/CameraManager$TorchCallback;

    .line 147
    iput-object p1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mContext:Landroid/content/Context;

    .line 148
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mPowerManager:Landroid/os/PowerManager;

    .line 149
    new-instance v0, Lcom/android/server/policy/DeviceKeyHandler$EventHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/DeviceKeyHandler$EventHandler;-><init>(Lcom/android/server/policy/DeviceKeyHandler;Lcom/android/server/policy/DeviceKeyHandler$1;)V

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mEventHandler:Lcom/android/server/policy/DeviceKeyHandler$EventHandler;

    .line 150
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mSensorManager:Landroid/hardware/SensorManager;

    .line 151
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mProximitySensor:Landroid/hardware/Sensor;

    .line 152
    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mVibrator:Landroid/os/Vibrator;

    .line 153
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mActivityManager:Landroid/app/ActivityManager;

    .line 154
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mPowerManager:Landroid/os/PowerManager;

    const-string v1, "ProximityWakeLock"

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 156
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mPowerManager:Landroid/os/PowerManager;

    const-string v1, "PartialGestureWakeLock"

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mPartialGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 158
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mPowerManager:Landroid/os/PowerManager;

    const v1, 0x10000001

    const-string v2, "AcquireCauseWakeUpGestureWakeLock"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mAcquireCauseWakeUpGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 162
    new-instance v0, Lcom/android/server/policy/DeviceKeyHandler$SettingsObserver;

    iget-object v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mEventHandler:Lcom/android/server/policy/DeviceKeyHandler$EventHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/DeviceKeyHandler$SettingsObserver;-><init>(Lcom/android/server/policy/DeviceKeyHandler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mObserver:Lcom/android/server/policy/DeviceKeyHandler$SettingsObserver;

    .line 164
    const-string v0, "camera"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 165
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DeviceKeyHandler"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mHandlerThread:Landroid/os/HandlerThread;

    .line 166
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 167
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mHandler:Landroid/os/Handler;

    .line 168
    invoke-virtual {p0}, Lcom/android/server/policy/DeviceKeyHandler;->registerCameraManagerCallbacks()V

    .line 170
    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/touchpanel/gesture_switch"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->gesture_switch_exist:Z

    .line 172
    return-void
.end method

.method private SensorProcessMessage()V
    .locals 6

    .prologue
    .line 392
    iget-object v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 393
    iget-object v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mObject:Ljava/lang/Object;

    monitor-enter v2

    .line 395
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->gesture_switch_exist:Z

    if-eqz v1, :cond_0

    .line 396
    iget-object v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mEventHandler:Lcom/android/server/policy/DeviceKeyHandler$EventHandler;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/server/policy/DeviceKeyHandler$EventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 397
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mEventHandler:Lcom/android/server/policy/DeviceKeyHandler$EventHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/policy/DeviceKeyHandler$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 415
    .end local v0    # "msg":Landroid/os/Message;
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 416
    iget-object v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 417
    return-void

    .line 399
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/policy/DeviceKeyHandler;->enableProximitySensor()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 401
    :try_start_2
    iget-object v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mObject:Ljava/lang/Object;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 405
    :goto_1
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mProximitySensorActive:Z

    if-nez v1, :cond_2

    .line 406
    sget-boolean v1, Lcom/android/server/policy/DeviceKeyHandler;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 407
    const-string v1, "DeviceKeyHandler"

    const-string v3, "SensorProcessMessage(): sensor value change."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    :cond_1
    iget-object v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mEventHandler:Lcom/android/server/policy/DeviceKeyHandler$EventHandler;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/server/policy/DeviceKeyHandler$EventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 410
    .restart local v0    # "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mEventHandler:Lcom/android/server/policy/DeviceKeyHandler$EventHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/policy/DeviceKeyHandler$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 412
    .end local v0    # "msg":Landroid/os/Message;
    :cond_2
    invoke-direct {p0}, Lcom/android/server/policy/DeviceKeyHandler;->disableProximitySensor()V

    goto :goto_0

    .line 415
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 402
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method static synthetic access$100(Lcom/android/server/policy/DeviceKeyHandler;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/DeviceKeyHandler;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/policy/DeviceKeyHandler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/DeviceKeyHandler;

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mFlashlightEnabled:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/server/policy/DeviceKeyHandler;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/DeviceKeyHandler;
    .param p1, "x1"    # Z

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mFlashlightEnabled:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/policy/DeviceKeyHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/DeviceKeyHandler;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/server/policy/DeviceKeyHandler;->updateOemSettings()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/policy/DeviceKeyHandler;)Landroid/hardware/Sensor;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/DeviceKeyHandler;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mProximitySensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/policy/DeviceKeyHandler;)Landroid/hardware/SensorManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/DeviceKeyHandler;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mSensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    .line 68
    sget-boolean v0, Lcom/android/server/policy/DeviceKeyHandler;->DEBUG:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/policy/DeviceKeyHandler;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/DeviceKeyHandler;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mObject:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/policy/DeviceKeyHandler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/DeviceKeyHandler;

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mProximitySensorActive:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/server/policy/DeviceKeyHandler;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/DeviceKeyHandler;
    .param p1, "x1"    # Z

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mProximitySensorActive:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/policy/DeviceKeyHandler;)Landroid/app/ActivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/DeviceKeyHandler;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mActivityManager:Landroid/app/ActivityManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/policy/DeviceKeyHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/DeviceKeyHandler;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/server/policy/DeviceKeyHandler;->processKeyEvent()V

    return-void
.end method

.method private acquireGestureWakeLock(Ljava/lang/String;)V
    .locals 4
    .param p1, "gesture"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, 0xbb8

    .line 430
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mAcquireCauseWakeUpGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mAcquireCauseWakeUpGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mAcquireCauseWakeUpGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 434
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mPartialGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mPartialGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 436
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mPartialGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 438
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/policy/DeviceKeyHandler;->isAWakeUpGesture(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 439
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mAcquireCauseWakeUpGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_2

    .line 440
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mAcquireCauseWakeUpGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 447
    :cond_2
    :goto_0
    return-void

    .line 443
    :cond_3
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mPartialGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_2

    .line 444
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mPartialGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    goto :goto_0
.end method

.method private disableProximitySensor()V
    .locals 4

    .prologue
    .line 375
    sget-boolean v2, Lcom/android/server/policy/DeviceKeyHandler;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 376
    const-string v2, "DeviceKeyHandler"

    const-string v3, "disableProximitySensor() called."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mProximitySensorEnabled:Z

    if-eqz v2, :cond_1

    .line 381
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 383
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/android/server/policy/DeviceKeyHandler;->mProximityListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 384
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mProximitySensorEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 386
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 389
    .end local v0    # "identity":J
    :cond_1
    return-void

    .line 386
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

    .line 616
    iget-boolean v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mSystemReady:Z

    if-eqz v2, :cond_0

    .line 617
    iget-object v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v0

    .line 618
    .local v0, "helper":Landroid/media/session/MediaSessionLegacyHelper;
    if-eqz v0, :cond_1

    .line 619
    new-instance v1, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move v7, p1

    move v8, v6

    invoke-direct/range {v1 .. v8}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 621
    .local v1, "event":Landroid/view/KeyEvent;
    invoke-virtual {v0, v1, v9}, Landroid/media/session/MediaSessionLegacyHelper;->sendMediaButtonEvent(Landroid/view/KeyEvent;Z)V

    .line 622
    invoke-static {v1, v9}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v1

    .line 623
    invoke-virtual {v0, v1, v9}, Landroid/media/session/MediaSessionLegacyHelper;->sendMediaButtonEvent(Landroid/view/KeyEvent;Z)V

    .line 630
    .end local v0    # "helper":Landroid/media/session/MediaSessionLegacyHelper;
    .end local v1    # "event":Landroid/view/KeyEvent;
    :cond_0
    :goto_0
    return-void

    .line 625
    .restart local v0    # "helper":Landroid/media/session/MediaSessionLegacyHelper;
    :cond_1
    sget-boolean v2, Lcom/android/server/policy/DeviceKeyHandler;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 626
    const-string v2, "DeviceKeyHandler"

    const-string v3, "MediaSessionLegacyHelper instance is null."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private enableProximitySensor()V
    .locals 6

    .prologue
    .line 356
    sget-boolean v2, Lcom/android/server/policy/DeviceKeyHandler;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 357
    const-string v2, "DeviceKeyHandler"

    const-string v3, "enableProximitySensor() called."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mProximitySensorEnabled:Z

    if-nez v2, :cond_1

    .line 362
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 364
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/android/server/policy/DeviceKeyHandler;->mProximityListener:Landroid/hardware/SensorEventListener;

    iget-object v4, p0, Lcom/android/server/policy/DeviceKeyHandler;->mProximitySensor:Landroid/hardware/Sensor;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 367
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mProximitySensorEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 369
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 372
    .end local v0    # "identity":J
    :cond_1
    return-void

    .line 369
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

    .line 561
    iget-object v10, p0, Lcom/android/server/policy/DeviceKeyHandler;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v10}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v6

    .line 562
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

    .line 564
    .local v5, "id":Ljava/lang/String;
    :try_start_0
    iget-object v10, p0, Lcom/android/server/policy/DeviceKeyHandler;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v10, v5}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v1

    .line 565
    .local v1, "c":Landroid/hardware/camera2/CameraCharacteristics;
    sget-object v10, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v10}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    .line 566
    .local v3, "flashAvailable":Ljava/lang/Boolean;
    sget-object v10, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v10}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 567
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

    .line 577
    .end local v1    # "c":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v3    # "flashAvailable":Ljava/lang/Boolean;
    .end local v5    # "id":Ljava/lang/String;
    .end local v8    # "lensFacing":Ljava/lang/Integer;
    :goto_1
    return-object v5

    .line 572
    .restart local v5    # "id":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 573
    .local v2, "e":Ljava/lang/NullPointerException;
    const-string v10, "DeviceKeyHandler"

    const-string v11, "Couldn\'t get torch mode characteristics."

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v5, v9

    .line 574
    goto :goto_1

    .line 562
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

    .line 577
    goto :goto_1
.end method

.method public static getOffset(II)I
    .locals 1
    .param p0, "num"    # I
    .param p1, "index"    # I

    .prologue
    .line 469
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

    .line 420
    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 425
    :pswitch_0
    return v0

    .line 420
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
    .line 605
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/policy/DeviceKeyHandler;->performVibration(Z)V

    .line 606
    return-void
.end method

.method private performVibration(Z)V
    .locals 4
    .param p1, "success"    # Z

    .prologue
    .line 609
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    .line 610
    iget-object v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mVibrator:Landroid/os/Vibrator;

    if-eqz p1, :cond_1

    const-wide/16 v0, 0x4b

    :goto_0
    sget-object v3, Lcom/android/server/policy/DeviceKeyHandler;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {v2, v0, v1, v3}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V

    .line 613
    :cond_0
    return-void

    .line 610
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

    .line 473
    const-string v6, "/proc/touchpanel/coordinate"

    invoke-static {v6}, Lcom/android/server/policy/FileUtils;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 475
    .local v3, "value":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 529
    :cond_0
    :goto_0
    return-void

    .line 479
    :cond_1
    const/16 v6, 0x2c

    invoke-virtual {v3, v6, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 480
    .local v0, "at":I
    invoke-virtual {v3, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 482
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

    .line 484
    :pswitch_1
    iget-boolean v4, p0, Lcom/android/server/policy/DeviceKeyHandler;->mStartCamera:Z

    if-eqz v4, :cond_0

    .line 485
    invoke-direct {p0, v1}, Lcom/android/server/policy/DeviceKeyHandler;->acquireGestureWakeLock(Ljava/lang/String;)V

    .line 486
    invoke-direct {p0}, Lcom/android/server/policy/DeviceKeyHandler;->performVibration()V

    .line 487
    const-class v4, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 489
    .local v2, "service":Lcom/android/server/statusbar/StatusBarManagerInternal;
    invoke-interface {v2, v7}, Lcom/android/server/statusbar/StatusBarManagerInternal;->onCameraLaunchGestureDetected(I)V

    goto :goto_0

    .line 482
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

    .line 493
    :pswitch_8
    iget-boolean v4, p0, Lcom/android/server/policy/DeviceKeyHandler;->mMusic_pause:Z

    if-eqz v4, :cond_0

    .line 494
    invoke-direct {p0, v1}, Lcom/android/server/policy/DeviceKeyHandler;->acquireGestureWakeLock(Ljava/lang/String;)V

    .line 495
    invoke-direct {p0}, Lcom/android/server/policy/DeviceKeyHandler;->performVibration()V

    .line 496
    const/16 v4, 0x55

    invoke-direct {p0, v4}, Lcom/android/server/policy/DeviceKeyHandler;->dispatchMediaKeyWithWakeLockToAudioService(I)V

    goto :goto_0

    .line 500
    :pswitch_9
    iget-boolean v6, p0, Lcom/android/server/policy/DeviceKeyHandler;->mStartFlash:Z

    if-eqz v6, :cond_0

    .line 501
    invoke-direct {p0, v1}, Lcom/android/server/policy/DeviceKeyHandler;->acquireGestureWakeLock(Ljava/lang/String;)V

    .line 502
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

    .line 506
    :pswitch_a
    iget-boolean v4, p0, Lcom/android/server/policy/DeviceKeyHandler;->mMusic_prev:Z

    if-eqz v4, :cond_0

    .line 507
    invoke-direct {p0, v1}, Lcom/android/server/policy/DeviceKeyHandler;->acquireGestureWakeLock(Ljava/lang/String;)V

    .line 508
    invoke-direct {p0}, Lcom/android/server/policy/DeviceKeyHandler;->performVibration()V

    .line 509
    const/16 v4, 0x58

    invoke-direct {p0, v4}, Lcom/android/server/policy/DeviceKeyHandler;->dispatchMediaKeyWithWakeLockToAudioService(I)V

    goto/16 :goto_0

    .line 513
    :pswitch_b
    iget-boolean v4, p0, Lcom/android/server/policy/DeviceKeyHandler;->mMusic_next:Z

    if-eqz v4, :cond_0

    .line 514
    invoke-direct {p0, v1}, Lcom/android/server/policy/DeviceKeyHandler;->acquireGestureWakeLock(Ljava/lang/String;)V

    .line 515
    invoke-direct {p0}, Lcom/android/server/policy/DeviceKeyHandler;->performVibration()V

    .line 516
    const/16 v4, 0x57

    invoke-direct {p0, v4}, Lcom/android/server/policy/DeviceKeyHandler;->dispatchMediaKeyWithWakeLockToAudioService(I)V

    goto/16 :goto_0

    .line 520
    :pswitch_c
    iget-boolean v4, p0, Lcom/android/server/policy/DeviceKeyHandler;->mDoubleScreenOn:Z

    if-eqz v4, :cond_0

    .line 521
    invoke-direct {p0, v1}, Lcom/android/server/policy/DeviceKeyHandler;->acquireGestureWakeLock(Ljava/lang/String;)V

    .line 522
    invoke-direct {p0}, Lcom/android/server/policy/DeviceKeyHandler;->performVibration()V

    .line 523
    iget-object v4, p0, Lcom/android/server/policy/DeviceKeyHandler;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Landroid/os/PowerManager;->wakeUp(J)V

    goto/16 :goto_0

    .line 482
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

    .line 229
    iget-object v3, p0, Lcom/android/server/policy/DeviceKeyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 230
    .local v2, "resolver":Landroid/content/ContentResolver;
    const-string v3, "oem_acc_blackscreen_gestrue_enable"

    const/4 v6, -0x2

    invoke-static {v2, v3, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    iput v3, p0, Lcom/android/server/policy/DeviceKeyHandler;->mBlackKeySettingState:I

    .line 234
    sget-boolean v3, Lcom/android/server/policy/DeviceKeyHandler;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 235
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

    .line 238
    :cond_0
    iget v3, p0, Lcom/android/server/policy/DeviceKeyHandler;->mBlackKeySettingState:I

    const/4 v6, 0x7

    invoke-static {v3, v6}, Lcom/android/server/policy/DeviceKeyHandler;->getOffset(II)I

    move-result v3

    if-ne v3, v4, :cond_3

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/android/server/policy/DeviceKeyHandler;->mDoubleScreenOn:Z

    .line 239
    iget v3, p0, Lcom/android/server/policy/DeviceKeyHandler;->mBlackKeySettingState:I

    const/4 v6, 0x6

    invoke-static {v3, v6}, Lcom/android/server/policy/DeviceKeyHandler;->getOffset(II)I

    move-result v3

    if-ne v3, v4, :cond_4

    move v3, v4

    :goto_1
    iput-boolean v3, p0, Lcom/android/server/policy/DeviceKeyHandler;->mStartCamera:Z

    .line 240
    iget v3, p0, Lcom/android/server/policy/DeviceKeyHandler;->mBlackKeySettingState:I

    const/4 v6, 0x5

    invoke-static {v3, v6}, Lcom/android/server/policy/DeviceKeyHandler;->getOffset(II)I

    move-result v3

    if-ne v3, v4, :cond_5

    move v3, v4

    :goto_2
    iput-boolean v3, p0, Lcom/android/server/policy/DeviceKeyHandler;->mMusic_control:Z

    .line 241
    iget v3, p0, Lcom/android/server/policy/DeviceKeyHandler;->mBlackKeySettingState:I

    const/4 v6, 0x4

    invoke-static {v3, v6}, Lcom/android/server/policy/DeviceKeyHandler;->getOffset(II)I

    move-result v3

    if-ne v3, v4, :cond_6

    move v3, v4

    :goto_3
    iput-boolean v3, p0, Lcom/android/server/policy/DeviceKeyHandler;->mMusic_prev:Z

    .line 242
    iget v3, p0, Lcom/android/server/policy/DeviceKeyHandler;->mBlackKeySettingState:I

    const/4 v6, 0x3

    invoke-static {v3, v6}, Lcom/android/server/policy/DeviceKeyHandler;->getOffset(II)I

    move-result v3

    if-ne v3, v4, :cond_7

    move v3, v4

    :goto_4
    iput-boolean v3, p0, Lcom/android/server/policy/DeviceKeyHandler;->mMusic_next:Z

    .line 243
    iget v3, p0, Lcom/android/server/policy/DeviceKeyHandler;->mBlackKeySettingState:I

    const/4 v6, 0x2

    invoke-static {v3, v6}, Lcom/android/server/policy/DeviceKeyHandler;->getOffset(II)I

    move-result v3

    if-ne v3, v4, :cond_8

    move v3, v4

    :goto_5
    iput-boolean v3, p0, Lcom/android/server/policy/DeviceKeyHandler;->mMusic_pause:Z

    .line 244
    iget v3, p0, Lcom/android/server/policy/DeviceKeyHandler;->mBlackKeySettingState:I

    invoke-static {v3, v4}, Lcom/android/server/policy/DeviceKeyHandler;->getOffset(II)I

    move-result v3

    if-ne v3, v4, :cond_9

    move v3, v4

    :goto_6
    iput-boolean v3, p0, Lcom/android/server/policy/DeviceKeyHandler;->mMusic_play:Z

    .line 245
    iget v3, p0, Lcom/android/server/policy/DeviceKeyHandler;->mBlackKeySettingState:I

    invoke-static {v3, v5}, Lcom/android/server/policy/DeviceKeyHandler;->getOffset(II)I

    move-result v3

    if-ne v3, v4, :cond_a

    move v3, v4

    :goto_7
    iput-boolean v3, p0, Lcom/android/server/policy/DeviceKeyHandler;->mStartFlash:Z

    .line 248
    iget-boolean v3, p0, Lcom/android/server/policy/DeviceKeyHandler;->mMusic_play:Z

    if-ne v3, v4, :cond_1

    .line 249
    iput-boolean v4, p0, Lcom/android/server/policy/DeviceKeyHandler;->mMusic_pause:Z

    .line 252
    :cond_1
    const-string v3, "/proc/touchpanel/gesture_enable"

    iget v6, p0, Lcom/android/server/policy/DeviceKeyHandler;->mBlackKeySettingState:I

    invoke-static {v3, v6}, Lcom/android/server/policy/FileUtils;->writeIntLine(Ljava/lang/String;I)Z

    .line 254
    iget-boolean v3, p0, Lcom/android/server/policy/DeviceKeyHandler;->gesture_switch_exist:Z

    if-eqz v3, :cond_2

    .line 255
    iget v3, p0, Lcom/android/server/policy/DeviceKeyHandler;->mBlackKeySettingState:I

    if-eqz v3, :cond_b

    iget-boolean v3, p0, Lcom/android/server/policy/DeviceKeyHandler;->mListenerActive:Z

    if-nez v3, :cond_b

    .line 257
    iput-boolean v4, p0, Lcom/android/server/policy/DeviceKeyHandler;->mListenerActive:Z

    .line 258
    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 259
    .local v1, "mScreenOnFilter":Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/android/server/policy/DeviceKeyHandler;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/policy/DeviceKeyHandler;->mScreenStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 260
    new-instance v0, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 261
    .local v0, "mScreenOffFilter":Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/android/server/policy/DeviceKeyHandler;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/policy/DeviceKeyHandler;->mScreenStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 269
    .end local v0    # "mScreenOffFilter":Landroid/content/IntentFilter;
    .end local v1    # "mScreenOnFilter":Landroid/content/IntentFilter;
    :cond_2
    :goto_8
    return-void

    :cond_3
    move v3, v5

    .line 238
    goto/16 :goto_0

    :cond_4
    move v3, v5

    .line 239
    goto/16 :goto_1

    :cond_5
    move v3, v5

    .line 240
    goto :goto_2

    :cond_6
    move v3, v5

    .line 241
    goto :goto_3

    :cond_7
    move v3, v5

    .line 242
    goto :goto_4

    :cond_8
    move v3, v5

    .line 243
    goto :goto_5

    :cond_9
    move v3, v5

    .line 244
    goto :goto_6

    :cond_a
    move v3, v5

    .line 245
    goto :goto_7

    .line 262
    :cond_b
    iget v3, p0, Lcom/android/server/policy/DeviceKeyHandler;->mBlackKeySettingState:I

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/android/server/policy/DeviceKeyHandler;->mListenerActive:Z

    if-ne v3, v4, :cond_2

    .line 264
    iput-boolean v5, p0, Lcom/android/server/policy/DeviceKeyHandler;->mListenerActive:Z

    .line 265
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

    .line 310
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    .line 311
    .local v3, "repeatCount":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    if-ne v6, v5, :cond_2

    move v0, v5

    .line 312
    .local v0, "actionUp":Z
    :goto_0
    if-eqz v0, :cond_0

    if-nez v3, :cond_0

    move v4, v5

    .line 313
    .local v4, "shouldHandleEvent":Z
    :cond_0
    move v1, v4

    .line 314
    .local v1, "handled":Z
    if-eqz v1, :cond_1

    .line 315
    iget-object v6, p0, Lcom/android/server/policy/DeviceKeyHandler;->mEventHandler:Lcom/android/server/policy/DeviceKeyHandler$EventHandler;

    invoke-virtual {v6, v5}, Lcom/android/server/policy/DeviceKeyHandler$EventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 316
    .local v2, "msg":Landroid/os/Message;
    iget-object v5, p0, Lcom/android/server/policy/DeviceKeyHandler;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v5, :cond_3

    .line 317
    invoke-direct {p0}, Lcom/android/server/policy/DeviceKeyHandler;->SensorProcessMessage()V

    .line 323
    .end local v2    # "msg":Landroid/os/Message;
    :cond_1
    :goto_1
    return v1

    .end local v0    # "actionUp":Z
    .end local v1    # "handled":Z
    .end local v4    # "shouldHandleEvent":Z
    :cond_2
    move v0, v4

    .line 311
    goto :goto_0

    .line 319
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
    .line 532
    sget-boolean v0, Lcom/android/server/policy/DeviceKeyHandler;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 533
    const-string v0, "DeviceKeyHandler"

    const-string v1, "registerCameraManagerCallbacks() called."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mTorchCallback:Landroid/hardware/camera2/CameraManager$TorchCallback;

    iget-object v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CameraManager;->registerTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;Landroid/os/Handler;)V

    .line 536
    return-void
.end method

.method public setFlashlight(Z)Z
    .locals 6
    .param p1, "enabled"    # Z

    .prologue
    const/4 v2, 0x0

    .line 539
    sget-boolean v3, Lcom/android/server/policy/DeviceKeyHandler;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 540
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

    .line 543
    :cond_0
    monitor-enter p0

    .line 544
    :try_start_0
    iget-boolean v3, p0, Lcom/android/server/policy/DeviceKeyHandler;->mFlashlightEnabled:Z

    if-eq v3, p1, :cond_2

    .line 545
    iput-boolean p1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mFlashlightEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 547
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/policy/DeviceKeyHandler;->getCameraId()Ljava/lang/String;

    move-result-object v0

    .line 548
    .local v0, "cameraId":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/policy/DeviceKeyHandler;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    if-eqz v0, :cond_1

    .end local v0    # "cameraId":Ljava/lang/String;
    :goto_0
    invoke-virtual {v3, v0, p1}, Landroid/hardware/camera2/CameraManager;->setTorchMode(Ljava/lang/String;Z)V
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 549
    const/4 v2, 0x1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 557
    :goto_1
    return v2

    .line 548
    .restart local v0    # "cameraId":Ljava/lang/String;
    :cond_1
    :try_start_3
    const-string v0, "0"
    :try_end_3
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 550
    .end local v0    # "cameraId":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 551
    .local v1, "e":Landroid/hardware/camera2/CameraAccessException;
    :try_start_4
    const-string v3, "DeviceKeyHandler"

    const-string v4, "CameraAccessException: Couldn\'t set torch mode."

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 552
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/policy/DeviceKeyHandler;->mFlashlightEnabled:Z

    .line 553
    monitor-exit p0

    goto :goto_1

    .line 556
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
    .line 175
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/policy/DeviceKeyHandler;->mSystemReady:Z

    .line 178
    iget-object v3, p0, Lcom/android/server/policy/DeviceKeyHandler;->mObserver:Lcom/android/server/policy/DeviceKeyHandler$SettingsObserver;

    invoke-virtual {v3}, Lcom/android/server/policy/DeviceKeyHandler$SettingsObserver;->observe()V

    .line 181
    const/4 v2, 0x0

    .line 183
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

    .line 189
    :goto_0
    if-eqz v2, :cond_0

    .line 191
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    const-string v4, "com.netease.cloudmusic"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v3, v4, v5, v6}, Landroid/content/pm/IPackageManager;->setPackageStoppedState(Ljava/lang/String;ZI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 198
    :cond_0
    :goto_1
    return-void

    .line 185
    :catch_0
    move-exception v1

    .line 186
    .local v1, "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    .line 187
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 193
    .end local v1    # "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v0

    .line 194
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method
