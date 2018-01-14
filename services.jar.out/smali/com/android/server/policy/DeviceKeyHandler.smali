.class public Lcom/android/server/policy/DeviceKeyHandler;
.super Ljava/lang/Object;
.source "DeviceKeyHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/DeviceKeyHandler$1;,
        Lcom/android/server/policy/DeviceKeyHandler$2;,
        Lcom/android/server/policy/DeviceKeyHandler$3;,
        Lcom/android/server/policy/DeviceKeyHandler$4;,
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

.field private static final PROXIMITY_THRESHOLD:F = 0.1f

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

.field private mPocketmodeEnabled:Z

.field private final mPowerManager:Landroid/os/PowerManager;

.field mProximityListener:Landroid/hardware/SensorEventListener;

.field private mProximitySensor:Landroid/hardware/Sensor;

.field private mProximitySensorActive:Z

.field private mProximitySensorEnabled:Z

.field mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mScreenStateReceiver:Landroid/content/BroadcastReceiver;

.field private mSensorEnabled:Z

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mStartCamera:Z

.field private mStartFlash:Z

.field private mSystemReady:Z

.field private mTelecomManager:Landroid/telecom/TelecomManager;

.field private final mTorchCallback:Landroid/hardware/camera2/CameraManager$TorchCallback;

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/policy/DeviceKeyHandler;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/policy/DeviceKeyHandler;)Landroid/app/ActivityManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mActivityManager:Landroid/app/ActivityManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/policy/DeviceKeyHandler;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/policy/DeviceKeyHandler;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mFlashlightEnabled:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/server/policy/DeviceKeyHandler;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mObject:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/policy/DeviceKeyHandler;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mPocketmodeEnabled:Z

    return v0
.end method

.method static synthetic -get6(Lcom/android/server/policy/DeviceKeyHandler;)Landroid/hardware/Sensor;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mProximitySensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/policy/DeviceKeyHandler;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mProximitySensorActive:Z

    return v0
.end method

.method static synthetic -get8(Lcom/android/server/policy/DeviceKeyHandler;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mSensorEnabled:Z

    return v0
.end method

.method static synthetic -get9(Lcom/android/server/policy/DeviceKeyHandler;)Landroid/hardware/SensorManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mSensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/policy/DeviceKeyHandler;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mFlashlightEnabled:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/policy/DeviceKeyHandler;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mProximitySensorActive:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/server/policy/DeviceKeyHandler;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mSensorEnabled:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/policy/DeviceKeyHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/DeviceKeyHandler;->processKeyEvent()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/policy/DeviceKeyHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/DeviceKeyHandler;->updateOemSettings()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 72
    const-string/jumbo v0, "persist.sys.assert.panic"

    .line 73
    const/4 v1, 0x0

    .line 72
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/policy/DeviceKeyHandler;->DEBUG:Z

    .line 91
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 92
    const/4 v1, 0x4

    .line 91
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 93
    const/16 v1, 0xd

    .line 91
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/server/policy/DeviceKeyHandler;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mBlackKeySettingState:I

    .line 109
    iput-boolean v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mBlackEnableState:Z

    .line 111
    iput-boolean v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mStartCamera:Z

    .line 112
    iput-boolean v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mStartFlash:Z

    .line 113
    iput-boolean v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mMusic_control:Z

    .line 114
    iput-boolean v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mMusic_prev:Z

    .line 115
    iput-boolean v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mMusic_next:Z

    .line 116
    iput-boolean v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mMusic_pause:Z

    .line 117
    iput-boolean v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mMusic_play:Z

    .line 118
    iput-boolean v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mDoubleScreenOn:Z

    .line 128
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mObject:Ljava/lang/Object;

    .line 134
    iput-boolean v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mProximitySensorEnabled:Z

    .line 135
    iput-boolean v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mProximitySensorActive:Z

    .line 138
    iput-boolean v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->gesture_switch_exist:Z

    .line 141
    iput-boolean v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mPocketmodeEnabled:Z

    .line 142
    iput-boolean v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mSensorEnabled:Z

    .line 235
    iput-boolean v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mListenerActive:Z

    .line 285
    new-instance v0, Lcom/android/server/policy/DeviceKeyHandler$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/DeviceKeyHandler$1;-><init>(Lcom/android/server/policy/DeviceKeyHandler;)V

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mScreenStateReceiver:Landroid/content/BroadcastReceiver;

    .line 304
    new-instance v0, Lcom/android/server/policy/DeviceKeyHandler$2;

    invoke-direct {v0, p0}, Lcom/android/server/policy/DeviceKeyHandler$2;-><init>(Lcom/android/server/policy/DeviceKeyHandler;)V

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mPocketListener:Landroid/hardware/SensorEventListener;

    .line 341
    new-instance v0, Lcom/android/server/policy/DeviceKeyHandler$3;

    invoke-direct {v0, p0}, Lcom/android/server/policy/DeviceKeyHandler$3;-><init>(Lcom/android/server/policy/DeviceKeyHandler;)V

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mProximityListener:Landroid/hardware/SensorEventListener;

    .line 596
    new-instance v0, Lcom/android/server/policy/DeviceKeyHandler$4;

    invoke-direct {v0, p0}, Lcom/android/server/policy/DeviceKeyHandler$4;-><init>(Lcom/android/server/policy/DeviceKeyHandler;)V

    .line 595
    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mTorchCallback:Landroid/hardware/camera2/CameraManager$TorchCallback;

    .line 152
    iput-object p1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mContext:Landroid/content/Context;

    .line 153
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mPowerManager:Landroid/os/PowerManager;

    .line 154
    new-instance v0, Lcom/android/server/policy/DeviceKeyHandler$EventHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/DeviceKeyHandler$EventHandler;-><init>(Lcom/android/server/policy/DeviceKeyHandler;Lcom/android/server/policy/DeviceKeyHandler$EventHandler;)V

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mEventHandler:Lcom/android/server/policy/DeviceKeyHandler$EventHandler;

    .line 155
    const-string/jumbo v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mSensorManager:Landroid/hardware/SensorManager;

    .line 157
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mSensorManager:Landroid/hardware/SensorManager;

    const v1, 0x1fa2650

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mProximitySensor:Landroid/hardware/Sensor;

    .line 158
    const-string/jumbo v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mVibrator:Landroid/os/Vibrator;

    .line 159
    const-string/jumbo v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mActivityManager:Landroid/app/ActivityManager;

    .line 160
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mPowerManager:Landroid/os/PowerManager;

    .line 161
    const-string/jumbo v1, "ProximityWakeLock"

    .line 160
    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 162
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mPowerManager:Landroid/os/PowerManager;

    .line 163
    const-string/jumbo v1, "PartialGestureWakeLock"

    .line 162
    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mPartialGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 164
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mPowerManager:Landroid/os/PowerManager;

    .line 166
    const-string/jumbo v1, "AcquireCauseWakeUpGestureWakeLock"

    .line 165
    const v2, 0x10000001

    .line 164
    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mAcquireCauseWakeUpGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 168
    new-instance v0, Lcom/android/server/policy/DeviceKeyHandler$SettingsObserver;

    iget-object v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mEventHandler:Lcom/android/server/policy/DeviceKeyHandler$EventHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/DeviceKeyHandler$SettingsObserver;-><init>(Lcom/android/server/policy/DeviceKeyHandler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mObserver:Lcom/android/server/policy/DeviceKeyHandler$SettingsObserver;

    .line 170
    const-string/jumbo v0, "camera"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 171
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "DeviceKeyHandler"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mHandlerThread:Landroid/os/HandlerThread;

    .line 172
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 173
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mHandler:Landroid/os/Handler;

    .line 174
    invoke-virtual {p0}, Lcom/android/server/policy/DeviceKeyHandler;->registerCameraManagerCallbacks()V

    .line 176
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/proc/touchpanel/gesture_switch"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->gesture_switch_exist:Z

    .line 177
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "telecom"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mTelecomManager:Landroid/telecom/TelecomManager;

    .line 151
    return-void
.end method

.method private SensorProcessMessage()V
    .locals 6

    .prologue
    .line 407
    iget-object v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 408
    iget-object v3, p0, Lcom/android/server/policy/DeviceKeyHandler;->mObject:Ljava/lang/Object;

    monitor-enter v3

    .line 410
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->gesture_switch_exist:Z

    if-eqz v2, :cond_0

    .line 411
    iget-object v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mEventHandler:Lcom/android/server/policy/DeviceKeyHandler$EventHandler;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/server/policy/DeviceKeyHandler$EventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 412
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mEventHandler:Lcom/android/server/policy/DeviceKeyHandler$EventHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/policy/DeviceKeyHandler$EventHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "msg":Landroid/os/Message;
    :goto_0
    monitor-exit v3

    .line 431
    iget-object v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 406
    return-void

    .line 414
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/policy/DeviceKeyHandler;->enableProximitySensor()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 416
    :try_start_2
    iget-object v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mObject:Ljava/lang/Object;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 420
    :goto_1
    :try_start_3
    iget-boolean v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mProximitySensorActive:Z

    if-nez v2, :cond_2

    .line 421
    sget-boolean v2, Lcom/android/server/policy/DeviceKeyHandler;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 422
    const-string/jumbo v2, "DeviceKeyHandler"

    const-string/jumbo v4, "SensorProcessMessage(): sensor value change."

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    :cond_1
    iget-object v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mEventHandler:Lcom/android/server/policy/DeviceKeyHandler$EventHandler;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/server/policy/DeviceKeyHandler$EventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 425
    .restart local v1    # "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mEventHandler:Lcom/android/server/policy/DeviceKeyHandler$EventHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/policy/DeviceKeyHandler$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 427
    .end local v1    # "msg":Landroid/os/Message;
    :cond_2
    invoke-direct {p0}, Lcom/android/server/policy/DeviceKeyHandler;->disableProximitySensor()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 408
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 417
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_1
.end method

.method private acquireGestureWakeLock(Ljava/lang/String;)V
    .locals 4
    .param p1, "gesture"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, 0xbb8

    .line 445
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mAcquireCauseWakeUpGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mAcquireCauseWakeUpGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    .line 445
    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mAcquireCauseWakeUpGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 449
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mPartialGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    .line 450
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mPartialGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    .line 449
    if-eqz v0, :cond_1

    .line 451
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mPartialGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 453
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/policy/DeviceKeyHandler;->isAWakeUpGesture(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 454
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mAcquireCauseWakeUpGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_2

    .line 455
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mAcquireCauseWakeUpGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 444
    :cond_2
    :goto_0
    return-void

    .line 458
    :cond_3
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mPartialGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_2

    .line 459
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mPartialGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    goto :goto_0
.end method

.method private disableProximitySensor()V
    .locals 4

    .prologue
    .line 390
    sget-boolean v2, Lcom/android/server/policy/DeviceKeyHandler;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 391
    const-string/jumbo v2, "DeviceKeyHandler"

    const-string/jumbo v3, "disableProximitySensor() called."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mProximitySensorEnabled:Z

    if-eqz v2, :cond_1

    .line 396
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 398
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/android/server/policy/DeviceKeyHandler;->mProximityListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 399
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mProximitySensorEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 401
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 389
    .end local v0    # "identity":J
    :cond_1
    return-void

    .line 400
    .restart local v0    # "identity":J
    :catchall_0
    move-exception v2

    .line 401
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 400
    throw v2
.end method

.method private dispatchMediaKeyWithWakeLockToAudioService(I)V
    .locals 10
    .param p1, "keycode"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v9, 0x1

    .line 631
    iget-boolean v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mSystemReady:Z

    if-eqz v2, :cond_0

    .line 632
    iget-object v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v0

    .line 633
    .local v0, "helper":Landroid/media/session/MediaSessionLegacyHelper;
    if-eqz v0, :cond_1

    .line 634
    new-instance v1, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 635
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move v7, p1

    move v8, v6

    .line 634
    invoke-direct/range {v1 .. v8}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 636
    .local v1, "event":Landroid/view/KeyEvent;
    invoke-virtual {v0, v1, v9}, Landroid/media/session/MediaSessionLegacyHelper;->sendMediaButtonEvent(Landroid/view/KeyEvent;Z)V

    .line 637
    invoke-static {v1, v9}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v1

    .line 638
    invoke-virtual {v0, v1, v9}, Landroid/media/session/MediaSessionLegacyHelper;->sendMediaButtonEvent(Landroid/view/KeyEvent;Z)V

    .line 630
    .end local v0    # "helper":Landroid/media/session/MediaSessionLegacyHelper;
    .end local v1    # "event":Landroid/view/KeyEvent;
    :cond_0
    :goto_0
    return-void

    .line 640
    .restart local v0    # "helper":Landroid/media/session/MediaSessionLegacyHelper;
    :cond_1
    sget-boolean v2, Lcom/android/server/policy/DeviceKeyHandler;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 641
    const-string/jumbo v2, "DeviceKeyHandler"

    const-string/jumbo v3, "MediaSessionLegacyHelper instance is null."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private enableProximitySensor()V
    .locals 6

    .prologue
    .line 371
    sget-boolean v2, Lcom/android/server/policy/DeviceKeyHandler;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 372
    const-string/jumbo v2, "DeviceKeyHandler"

    const-string/jumbo v3, "enableProximitySensor() called."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mProximitySensorEnabled:Z

    if-nez v2, :cond_1

    .line 377
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 379
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/android/server/policy/DeviceKeyHandler;->mProximityListener:Landroid/hardware/SensorEventListener;

    iget-object v4, p0, Lcom/android/server/policy/DeviceKeyHandler;->mProximitySensor:Landroid/hardware/Sensor;

    .line 380
    const/4 v5, 0x0

    .line 379
    invoke-virtual {v2, v3, v4, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 382
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mProximitySensorEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 384
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 370
    .end local v0    # "identity":J
    :cond_1
    return-void

    .line 383
    .restart local v0    # "identity":J
    :catchall_0
    move-exception v2

    .line 384
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 383
    throw v2
.end method

.method private getCameraId()Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 576
    iget-object v6, p0, Lcom/android/server/policy/DeviceKeyHandler;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v6}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v4

    .line 577
    .local v4, "ids":[Ljava/lang/String;
    const/4 v6, 0x0

    array-length v7, v4

    :goto_0
    if-ge v6, v7, :cond_1

    aget-object v3, v4, v6

    .line 579
    .local v3, "id":Ljava/lang/String;
    :try_start_0
    iget-object v8, p0, Lcom/android/server/policy/DeviceKeyHandler;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v8, v3}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    .line 580
    .local v0, "c":Landroid/hardware/camera2/CameraCharacteristics;
    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v8}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 581
    .local v2, "flashAvailable":Ljava/lang/Boolean;
    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v8}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 582
    .local v5, "lensFacing":Ljava/lang/Integer;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 583
    if-eqz v5, :cond_0

    .line 584
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    .line 585
    return-object v3

    .line 587
    .end local v0    # "c":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v2    # "flashAvailable":Ljava/lang/Boolean;
    .end local v5    # "lensFacing":Ljava/lang/Integer;
    :catch_0
    move-exception v1

    .line 588
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v6, "DeviceKeyHandler"

    const-string/jumbo v7, "Couldn\'t get torch mode characteristics."

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 589
    return-object v10

    .line 577
    .end local v1    # "e":Ljava/lang/NullPointerException;
    .restart local v0    # "c":Landroid/hardware/camera2/CameraCharacteristics;
    .restart local v2    # "flashAvailable":Ljava/lang/Boolean;
    .restart local v5    # "lensFacing":Ljava/lang/Integer;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 592
    .end local v0    # "c":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v2    # "flashAvailable":Ljava/lang/Boolean;
    .end local v3    # "id":Ljava/lang/String;
    .end local v5    # "lensFacing":Ljava/lang/Integer;
    :cond_1
    return-object v10
.end method

.method public static getOffset(II)I
    .locals 1
    .param p0, "num"    # I
    .param p1, "index"    # I

    .prologue
    .line 484
    const/4 v0, 0x1

    shl-int/2addr v0, p1

    and-int/2addr v0, p0

    shr-int/2addr v0, p1

    return v0
.end method

.method private isAWakeUpGesture(Ljava/lang/String;)Z
    .locals 1
    .param p1, "gesture"    # Ljava/lang/String;

    .prologue
    .line 435
    const-string/jumbo v0, "6"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 438
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 435
    :cond_1
    const-string/jumbo v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 440
    const/4 v0, 0x0

    return v0
.end method

.method private performVibration()V
    .locals 1

    .prologue
    .line 620
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/policy/DeviceKeyHandler;->performVibration(Z)V

    .line 619
    return-void
.end method

.method private performVibration(Z)V
    .locals 4
    .param p1, "success"    # Z

    .prologue
    .line 624
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    .line 625
    iget-object v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mVibrator:Landroid/os/Vibrator;

    if-eqz p1, :cond_1

    const-wide/16 v0, 0x4b

    .line 626
    :goto_0
    sget-object v3, Lcom/android/server/policy/DeviceKeyHandler;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    .line 625
    invoke-virtual {v2, v0, v1, v3}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V

    .line 623
    :cond_0
    return-void

    .line 625
    :cond_1
    const-wide/16 v0, 0x96

    goto :goto_0
.end method

.method private processKeyEvent()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 488
    const-string/jumbo v5, "/proc/touchpanel/coordinate"

    invoke-static {v5}, Lcom/android/server/policy/FileUtils;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 490
    .local v3, "value":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 491
    return-void

    .line 494
    :cond_0
    const/16 v5, 0x2c

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 495
    .local v0, "at":I
    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 497
    .local v1, "keyValue":Ljava/lang/String;
    const-string/jumbo v5, "6"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 499
    iget-boolean v4, p0, Lcom/android/server/policy/DeviceKeyHandler;->mStartCamera:Z

    if-eqz v4, :cond_1

    .line 500
    invoke-direct {p0, v1}, Lcom/android/server/policy/DeviceKeyHandler;->acquireGestureWakeLock(Ljava/lang/String;)V

    .line 501
    invoke-direct {p0}, Lcom/android/server/policy/DeviceKeyHandler;->performVibration()V

    .line 503
    const-class v4, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 502
    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 504
    .local v2, "service":Lcom/android/server/statusbar/StatusBarManagerInternal;
    const v4, 0x10000100

    invoke-interface {v2, v4}, Lcom/android/server/statusbar/StatusBarManagerInternal;->onCameraLaunchGestureDetected(I)V

    .line 487
    .end local v2    # "service":Lcom/android/server/statusbar/StatusBarManagerInternal;
    :cond_1
    :goto_0
    return-void

    .line 497
    :cond_2
    const-string/jumbo v5, "7"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 508
    iget-boolean v4, p0, Lcom/android/server/policy/DeviceKeyHandler;->mMusic_pause:Z

    if-eqz v4, :cond_1

    .line 509
    invoke-direct {p0, v1}, Lcom/android/server/policy/DeviceKeyHandler;->acquireGestureWakeLock(Ljava/lang/String;)V

    .line 510
    invoke-direct {p0}, Lcom/android/server/policy/DeviceKeyHandler;->performVibration()V

    .line 511
    const/16 v4, 0x55

    invoke-direct {p0, v4}, Lcom/android/server/policy/DeviceKeyHandler;->dispatchMediaKeyWithWakeLockToAudioService(I)V

    goto :goto_0

    .line 497
    :cond_3
    const-string/jumbo v5, "2"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 515
    iget-boolean v5, p0, Lcom/android/server/policy/DeviceKeyHandler;->mStartFlash:Z

    if-eqz v5, :cond_1

    .line 516
    invoke-direct {p0, v1}, Lcom/android/server/policy/DeviceKeyHandler;->acquireGestureWakeLock(Ljava/lang/String;)V

    .line 517
    iget-boolean v5, p0, Lcom/android/server/policy/DeviceKeyHandler;->mFlashlightEnabled:Z

    if-eqz v5, :cond_7

    :goto_1
    invoke-virtual {p0, v4}, Lcom/android/server/policy/DeviceKeyHandler;->setFlashlight(Z)Z

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/server/policy/DeviceKeyHandler;->performVibration(Z)V

    goto :goto_0

    .line 497
    :cond_4
    const-string/jumbo v4, "5"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 521
    iget-boolean v4, p0, Lcom/android/server/policy/DeviceKeyHandler;->mMusic_prev:Z

    if-eqz v4, :cond_1

    .line 522
    invoke-direct {p0, v1}, Lcom/android/server/policy/DeviceKeyHandler;->acquireGestureWakeLock(Ljava/lang/String;)V

    .line 523
    invoke-direct {p0}, Lcom/android/server/policy/DeviceKeyHandler;->performVibration()V

    .line 524
    const/16 v4, 0x58

    invoke-direct {p0, v4}, Lcom/android/server/policy/DeviceKeyHandler;->dispatchMediaKeyWithWakeLockToAudioService(I)V

    goto :goto_0

    .line 497
    :cond_5
    const-string/jumbo v4, "4"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 528
    iget-boolean v4, p0, Lcom/android/server/policy/DeviceKeyHandler;->mMusic_next:Z

    if-eqz v4, :cond_1

    .line 529
    invoke-direct {p0, v1}, Lcom/android/server/policy/DeviceKeyHandler;->acquireGestureWakeLock(Ljava/lang/String;)V

    .line 530
    invoke-direct {p0}, Lcom/android/server/policy/DeviceKeyHandler;->performVibration()V

    .line 531
    const/16 v4, 0x57

    invoke-direct {p0, v4}, Lcom/android/server/policy/DeviceKeyHandler;->dispatchMediaKeyWithWakeLockToAudioService(I)V

    goto :goto_0

    .line 497
    :cond_6
    const-string/jumbo v4, "1"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 535
    iget-boolean v4, p0, Lcom/android/server/policy/DeviceKeyHandler;->mDoubleScreenOn:Z

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/android/server/policy/DeviceKeyHandler;->disableDoubleTap()Z

    move-result v4

    if-nez v4, :cond_1

    .line 536
    invoke-direct {p0, v1}, Lcom/android/server/policy/DeviceKeyHandler;->acquireGestureWakeLock(Ljava/lang/String;)V

    .line 537
    invoke-direct {p0}, Lcom/android/server/policy/DeviceKeyHandler;->performVibration()V

    .line 538
    iget-object v4, p0, Lcom/android/server/policy/DeviceKeyHandler;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Landroid/os/PowerManager;->wakeUp(J)V

    goto/16 :goto_0

    .line 517
    :cond_7
    const/4 v4, 0x1

    goto :goto_1
.end method

.method private updateOemSettings()V
    .locals 8

    .prologue
    const/4 v6, -0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 239
    iget-object v3, p0, Lcom/android/server/policy/DeviceKeyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 241
    .local v2, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v3, "oem_acc_blackscreen_gestrue_enable"

    .line 240
    invoke-static {v2, v3, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    iput v3, p0, Lcom/android/server/policy/DeviceKeyHandler;->mBlackKeySettingState:I

    .line 244
    const-string/jumbo v3, "oem_acc_anti_misoperation_screen"

    .line 243
    invoke-static {v2, v3, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v4, :cond_3

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/android/server/policy/DeviceKeyHandler;->mPocketmodeEnabled:Z

    .line 247
    sget-boolean v3, Lcom/android/server/policy/DeviceKeyHandler;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 248
    const-string/jumbo v3, "DeviceKeyHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateH2OemSettings(): mBlackKeySettingState = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/policy/DeviceKeyHandler;->mBlackKeySettingState:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :cond_0
    iget v3, p0, Lcom/android/server/policy/DeviceKeyHandler;->mBlackKeySettingState:I

    const/4 v6, 0x7

    invoke-static {v3, v6}, Lcom/android/server/policy/DeviceKeyHandler;->getOffset(II)I

    move-result v3

    if-ne v3, v4, :cond_4

    move v3, v4

    :goto_1
    iput-boolean v3, p0, Lcom/android/server/policy/DeviceKeyHandler;->mDoubleScreenOn:Z

    .line 252
    iget v3, p0, Lcom/android/server/policy/DeviceKeyHandler;->mBlackKeySettingState:I

    const/4 v6, 0x6

    invoke-static {v3, v6}, Lcom/android/server/policy/DeviceKeyHandler;->getOffset(II)I

    move-result v3

    if-ne v3, v4, :cond_5

    move v3, v4

    :goto_2
    iput-boolean v3, p0, Lcom/android/server/policy/DeviceKeyHandler;->mStartCamera:Z

    .line 253
    iget v3, p0, Lcom/android/server/policy/DeviceKeyHandler;->mBlackKeySettingState:I

    const/4 v6, 0x5

    invoke-static {v3, v6}, Lcom/android/server/policy/DeviceKeyHandler;->getOffset(II)I

    move-result v3

    if-ne v3, v4, :cond_6

    move v3, v4

    :goto_3
    iput-boolean v3, p0, Lcom/android/server/policy/DeviceKeyHandler;->mMusic_control:Z

    .line 254
    iget v3, p0, Lcom/android/server/policy/DeviceKeyHandler;->mBlackKeySettingState:I

    const/4 v6, 0x4

    invoke-static {v3, v6}, Lcom/android/server/policy/DeviceKeyHandler;->getOffset(II)I

    move-result v3

    if-ne v3, v4, :cond_7

    move v3, v4

    :goto_4
    iput-boolean v3, p0, Lcom/android/server/policy/DeviceKeyHandler;->mMusic_prev:Z

    .line 255
    iget v3, p0, Lcom/android/server/policy/DeviceKeyHandler;->mBlackKeySettingState:I

    const/4 v6, 0x3

    invoke-static {v3, v6}, Lcom/android/server/policy/DeviceKeyHandler;->getOffset(II)I

    move-result v3

    if-ne v3, v4, :cond_8

    move v3, v4

    :goto_5
    iput-boolean v3, p0, Lcom/android/server/policy/DeviceKeyHandler;->mMusic_next:Z

    .line 256
    iget v3, p0, Lcom/android/server/policy/DeviceKeyHandler;->mBlackKeySettingState:I

    const/4 v6, 0x2

    invoke-static {v3, v6}, Lcom/android/server/policy/DeviceKeyHandler;->getOffset(II)I

    move-result v3

    if-ne v3, v4, :cond_9

    move v3, v4

    :goto_6
    iput-boolean v3, p0, Lcom/android/server/policy/DeviceKeyHandler;->mMusic_pause:Z

    .line 257
    iget v3, p0, Lcom/android/server/policy/DeviceKeyHandler;->mBlackKeySettingState:I

    invoke-static {v3, v4}, Lcom/android/server/policy/DeviceKeyHandler;->getOffset(II)I

    move-result v3

    if-ne v3, v4, :cond_a

    move v3, v4

    :goto_7
    iput-boolean v3, p0, Lcom/android/server/policy/DeviceKeyHandler;->mMusic_play:Z

    .line 258
    iget v3, p0, Lcom/android/server/policy/DeviceKeyHandler;->mBlackKeySettingState:I

    invoke-static {v3, v5}, Lcom/android/server/policy/DeviceKeyHandler;->getOffset(II)I

    move-result v3

    if-ne v3, v4, :cond_b

    move v3, v4

    :goto_8
    iput-boolean v3, p0, Lcom/android/server/policy/DeviceKeyHandler;->mStartFlash:Z

    .line 261
    iget-boolean v3, p0, Lcom/android/server/policy/DeviceKeyHandler;->mMusic_play:Z

    if-eqz v3, :cond_1

    .line 262
    iput-boolean v4, p0, Lcom/android/server/policy/DeviceKeyHandler;->mMusic_pause:Z

    .line 265
    :cond_1
    const-string/jumbo v3, "/proc/touchpanel/gesture_enable"

    iget v6, p0, Lcom/android/server/policy/DeviceKeyHandler;->mBlackKeySettingState:I

    invoke-static {v3, v6}, Lcom/android/server/policy/FileUtils;->writeIntLine(Ljava/lang/String;I)Z

    .line 267
    iget-boolean v3, p0, Lcom/android/server/policy/DeviceKeyHandler;->gesture_switch_exist:Z

    if-eqz v3, :cond_2

    .line 268
    iget v3, p0, Lcom/android/server/policy/DeviceKeyHandler;->mBlackKeySettingState:I

    if-eqz v3, :cond_c

    iget-boolean v3, p0, Lcom/android/server/policy/DeviceKeyHandler;->mListenerActive:Z

    if-nez v3, :cond_c

    .line 270
    iput-boolean v4, p0, Lcom/android/server/policy/DeviceKeyHandler;->mListenerActive:Z

    .line 271
    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.intent.action.SCREEN_ON"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 272
    .local v1, "mScreenOnFilter":Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/android/server/policy/DeviceKeyHandler;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/policy/DeviceKeyHandler;->mScreenStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 273
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 274
    .local v0, "mScreenOffFilter":Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/android/server/policy/DeviceKeyHandler;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/policy/DeviceKeyHandler;->mScreenStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 238
    .end local v0    # "mScreenOffFilter":Landroid/content/IntentFilter;
    .end local v1    # "mScreenOnFilter":Landroid/content/IntentFilter;
    :cond_2
    :goto_9
    return-void

    :cond_3
    move v3, v5

    .line 243
    goto/16 :goto_0

    :cond_4
    move v3, v5

    .line 251
    goto/16 :goto_1

    :cond_5
    move v3, v5

    .line 252
    goto/16 :goto_2

    :cond_6
    move v3, v5

    .line 253
    goto/16 :goto_3

    :cond_7
    move v3, v5

    .line 254
    goto :goto_4

    :cond_8
    move v3, v5

    .line 255
    goto :goto_5

    :cond_9
    move v3, v5

    .line 256
    goto :goto_6

    :cond_a
    move v3, v5

    .line 257
    goto :goto_7

    :cond_b
    move v3, v5

    .line 258
    goto :goto_8

    .line 275
    :cond_c
    iget v3, p0, Lcom/android/server/policy/DeviceKeyHandler;->mBlackKeySettingState:I

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/android/server/policy/DeviceKeyHandler;->mListenerActive:Z

    if-eqz v3, :cond_2

    .line 277
    iput-boolean v5, p0, Lcom/android/server/policy/DeviceKeyHandler;->mListenerActive:Z

    .line 278
    iget-object v3, p0, Lcom/android/server/policy/DeviceKeyHandler;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/policy/DeviceKeyHandler;->mScreenStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_9
.end method


# virtual methods
.method disableDoubleTap()Z
    .locals 1

    .prologue
    .line 649
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v0

    return v0
.end method

.method public handleKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 325
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    .line 326
    .local v3, "repeatCount":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    if-ne v6, v5, :cond_2

    move v0, v5

    .line 327
    .local v0, "actionUp":Z
    :goto_0
    if-eqz v0, :cond_0

    if-nez v3, :cond_0

    move v4, v5

    .line 328
    .local v4, "shouldHandleEvent":Z
    :cond_0
    move v1, v4

    .line 329
    .local v1, "handled":Z
    if-eqz v4, :cond_1

    .line 330
    iget-object v6, p0, Lcom/android/server/policy/DeviceKeyHandler;->mEventHandler:Lcom/android/server/policy/DeviceKeyHandler$EventHandler;

    invoke-virtual {v6, v5}, Lcom/android/server/policy/DeviceKeyHandler$EventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 331
    .local v2, "msg":Landroid/os/Message;
    iget-object v5, p0, Lcom/android/server/policy/DeviceKeyHandler;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v5, :cond_3

    .line 332
    invoke-direct {p0}, Lcom/android/server/policy/DeviceKeyHandler;->SensorProcessMessage()V

    .line 338
    .end local v2    # "msg":Landroid/os/Message;
    :cond_1
    :goto_1
    return v1

    .end local v0    # "actionUp":Z
    .end local v1    # "handled":Z
    .end local v4    # "shouldHandleEvent":Z
    :cond_2
    move v0, v4

    .line 326
    goto :goto_0

    .line 334
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
    .line 547
    sget-boolean v0, Lcom/android/server/policy/DeviceKeyHandler;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 548
    const-string/jumbo v0, "DeviceKeyHandler"

    const-string/jumbo v1, "registerCameraManagerCallbacks() called."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mTorchCallback:Landroid/hardware/camera2/CameraManager$TorchCallback;

    iget-object v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CameraManager;->registerTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;Landroid/os/Handler;)V

    .line 546
    return-void
.end method

.method public setFlashlight(Z)Z
    .locals 6
    .param p1, "enabled"    # Z

    .prologue
    const/4 v5, 0x0

    .line 554
    sget-boolean v2, Lcom/android/server/policy/DeviceKeyHandler;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 555
    const-string/jumbo v2, "DeviceKeyHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setTorchMode() called: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    :cond_0
    monitor-enter p0

    .line 559
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mFlashlightEnabled:Z

    if-eq v2, p1, :cond_2

    .line 560
    iput-boolean p1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mFlashlightEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 562
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/policy/DeviceKeyHandler;->getCameraId()Ljava/lang/String;

    move-result-object v0

    .line 563
    .local v0, "cameraId":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    if-eqz v0, :cond_1

    .end local v0    # "cameraId":Ljava/lang/String;
    :goto_0
    invoke-virtual {v2, v0, p1}, Landroid/hardware/camera2/CameraManager;->setTorchMode(Ljava/lang/String;Z)V
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 564
    const/4 v2, 0x1

    monitor-exit p0

    return v2

    .line 563
    .restart local v0    # "cameraId":Ljava/lang/String;
    :cond_1
    :try_start_2
    const-string/jumbo v0, "0"
    :try_end_2
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 565
    .end local v0    # "cameraId":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 566
    .local v1, "e":Landroid/hardware/camera2/CameraAccessException;
    :try_start_3
    const-string/jumbo v2, "DeviceKeyHandler"

    const-string/jumbo v3, "CameraAccessException: Couldn\'t set torch mode."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 567
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mFlashlightEnabled:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    .line 568
    return v5

    .end local v1    # "e":Landroid/hardware/camera2/CameraAccessException;
    :cond_2
    monitor-exit p0

    .line 572
    return v5

    .line 558
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public systemReady()V
    .locals 7

    .prologue
    .line 182
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/policy/DeviceKeyHandler;->mSystemReady:Z

    .line 185
    iget-object v3, p0, Lcom/android/server/policy/DeviceKeyHandler;->mObserver:Lcom/android/server/policy/DeviceKeyHandler$SettingsObserver;

    invoke-virtual {v3}, Lcom/android/server/policy/DeviceKeyHandler$SettingsObserver;->observe()V

    .line 188
    const/4 v2, 0x0

    .line 190
    .local v2, "info":Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v3, p0, Lcom/android/server/policy/DeviceKeyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 191
    const-string/jumbo v4, "com.netease.cloudmusic"

    const/4 v5, 0x0

    .line 190
    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 196
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    :goto_0
    if-eqz v2, :cond_0

    .line 198
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    .line 199
    const-string/jumbo v4, "com.netease.cloudmusic"

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 198
    invoke-interface {v3, v4, v5, v6}, Landroid/content/pm/IPackageManager;->setPackageStoppedState(Ljava/lang/String;ZI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 181
    :cond_0
    :goto_1
    return-void

    .line 192
    .restart local v2    # "info":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v1

    .line 193
    .local v1, "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    .line 194
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 200
    .end local v1    # "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    :catch_1
    move-exception v0

    .line 201
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method
