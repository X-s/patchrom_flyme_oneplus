.class public Lcom/android/server/policy/DeviceKeyHandler;
.super Ljava/lang/Object;
.source "DeviceKeyHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/DeviceKeyHandler$1;,
        Lcom/android/server/policy/DeviceKeyHandler$2;,
        Lcom/android/server/policy/DeviceKeyHandler$3;,
        Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;,
        Lcom/android/server/policy/DeviceKeyHandler$EventHandler;,
        Lcom/android/server/policy/DeviceKeyHandler$SettingsObserver;
    }
.end annotation


# static fields
.field private static final ACTION_FRONT_CAMERA:Ljava/lang/String; = "FrontCamera"

.field private static final ACTION_OPEN_APP:Ljava/lang/String; = "OpenApp"

.field private static final ACTION_OPEN_CAMERA:Ljava/lang/String; = "OpenCamera"

.field private static final ACTION_OPEN_SHELF:Ljava/lang/String; = "OpenShelf"

.field private static final ACTION_OPEN_SHORTCUT:Ljava/lang/String; = "OpenShortcut"

.field private static final ACTION_OPEN_TORCH:Ljava/lang/String; = "OpenTorch"

.field private static final ACTION_TAKE_VIDEO:Ljava/lang/String; = "TakeVideo"

.field private static final BLACK_ENBALE_PATH:Ljava/lang/String; = "/proc/touchpanel/gesture_enable"

.field private static final BLACK_VALUE_PATH:Ljava/lang/String; = "/proc/touchpanel/coordinate"

.field private static final CAMERA_ID:Ljava/lang/String; = "0"

.field private static final DEBUG:Z

.field private static final GESTURE_DOUBLE_TAP:Ljava/lang/String; = "1"

.field private static final GESTURE_GTR_SCANCODE:Ljava/lang/String; = "4"

.field private static final GESTURE_LTR_SCANCODE:Ljava/lang/String; = "5"

.field private static final GESTURE_NEW_M_SCANCODE:Ljava/lang/String; = "12"

.field private static final GESTURE_NEW_O_SCANCODE:Ljava/lang/String; = "6"

.field private static final GESTURE_NEW_S_SCANCODE:Ljava/lang/String; = "14"

.field private static final GESTURE_NEW_V_SCANCODE:Ljava/lang/String; = "2"

.field private static final GESTURE_NEW_W_SCANCODE:Ljava/lang/String; = "13"

.field private static final GESTURE_SWIPE_DOWN_SCANCODE:Ljava/lang/String; = "7"

.field private static final GESTURE_SWITCH:Ljava/lang/String; = "/proc/touchpanel/gesture_switch"

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

.field private mActionInfo:Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;

.field private mActivityManager:Landroid/app/ActivityManager;

.field private mBlackEnableState:Z

.field private mBlackKeySettingState:I

.field private mCameraManager:Landroid/hardware/camera2/CameraManager;

.field private final mContext:Landroid/content/Context;

.field private mDoubleScreenOn:Z

.field private mEventHandler:Lcom/android/server/policy/DeviceKeyHandler$EventHandler;

.field private mFlashlightEnabled:Z

.field final mGestureMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

.field mLauncherApps:Landroid/content/pm/LauncherApps;

.field private mListenKeyguard:Z

.field private mMusic_control:Z

.field private mMusic_next:Z

.field private mMusic_pause:Z

.field private mMusic_play:Z

.field private mMusic_prev:Z

.field private final mObject:Ljava/lang/Object;

.field private mObserver:Lcom/android/server/policy/DeviceKeyHandler$SettingsObserver;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field mPartialGestureWakeLock:Landroid/os/PowerManager$WakeLock;

.field mPocketListener:Landroid/hardware/SensorEventListener;

.field private mPocketmodeEnabled:Z

.field private final mPowerManager:Landroid/os/PowerManager;

.field mProximityListener:Landroid/hardware/SensorEventListener;

.field private mProximitySensor:Landroid/hardware/Sensor;

.field private mProximitySensorActive:Z

.field private mProximitySensorEnabled:Z

.field mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mSensorEnabled:Z

.field private mSensorManager:Landroid/hardware/SensorManager;

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

.method static synthetic -get4(Lcom/android/server/policy/DeviceKeyHandler;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/policy/DeviceKeyHandler;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mObject:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/policy/DeviceKeyHandler;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mProximitySensorActive:Z

    return v0
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
    .line 81
    const-string/jumbo v0, "persist.sys.assert.panic"

    .line 82
    const/4 v1, 0x0

    .line 81
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/policy/DeviceKeyHandler;->DEBUG:Z

    .line 117
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 118
    const/4 v1, 0x4

    .line 117
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 119
    const/16 v1, 0xd

    .line 117
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/server/policy/DeviceKeyHandler;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mGestureMap:Ljava/util/HashMap;

    .line 135
    iput v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mBlackKeySettingState:I

    .line 136
    iput-boolean v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mBlackEnableState:Z

    .line 138
    iput-boolean v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mMusic_control:Z

    .line 139
    iput-boolean v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mMusic_prev:Z

    .line 140
    iput-boolean v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mMusic_next:Z

    .line 141
    iput-boolean v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mMusic_pause:Z

    .line 142
    iput-boolean v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mMusic_play:Z

    .line 143
    iput-boolean v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mDoubleScreenOn:Z

    .line 158
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mObject:Ljava/lang/Object;

    .line 164
    iput-boolean v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mProximitySensorEnabled:Z

    .line 165
    iput-boolean v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mProximitySensorActive:Z

    .line 168
    iput-boolean v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->gesture_switch_exist:Z

    .line 169
    iput-boolean v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mSensorEnabled:Z

    .line 171
    iput-boolean v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mListenKeyguard:Z

    .line 174
    iput-boolean v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mPocketmodeEnabled:Z

    .line 415
    new-instance v0, Lcom/android/server/policy/DeviceKeyHandler$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/DeviceKeyHandler$1;-><init>(Lcom/android/server/policy/DeviceKeyHandler;)V

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mPocketListener:Landroid/hardware/SensorEventListener;

    .line 460
    new-instance v0, Lcom/android/server/policy/DeviceKeyHandler$2;

    invoke-direct {v0, p0}, Lcom/android/server/policy/DeviceKeyHandler$2;-><init>(Lcom/android/server/policy/DeviceKeyHandler;)V

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mProximityListener:Landroid/hardware/SensorEventListener;

    .line 868
    new-instance v0, Lcom/android/server/policy/DeviceKeyHandler$3;

    invoke-direct {v0, p0}, Lcom/android/server/policy/DeviceKeyHandler$3;-><init>(Lcom/android/server/policy/DeviceKeyHandler;)V

    .line 867
    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mTorchCallback:Landroid/hardware/camera2/CameraManager$TorchCallback;

    .line 185
    iput-object p1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mContext:Landroid/content/Context;

    .line 186
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mPowerManager:Landroid/os/PowerManager;

    .line 187
    new-instance v0, Lcom/android/server/policy/DeviceKeyHandler$EventHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/DeviceKeyHandler$EventHandler;-><init>(Lcom/android/server/policy/DeviceKeyHandler;Lcom/android/server/policy/DeviceKeyHandler$EventHandler;)V

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mEventHandler:Lcom/android/server/policy/DeviceKeyHandler$EventHandler;

    .line 188
    const-string/jumbo v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mSensorManager:Landroid/hardware/SensorManager;

    .line 190
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mSensorManager:Landroid/hardware/SensorManager;

    const v1, 0x1fa2651

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mProximitySensor:Landroid/hardware/Sensor;

    .line 191
    const-string/jumbo v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mVibrator:Landroid/os/Vibrator;

    .line 192
    const-string/jumbo v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mActivityManager:Landroid/app/ActivityManager;

    .line 193
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 194
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mPowerManager:Landroid/os/PowerManager;

    .line 195
    const-string/jumbo v1, "ProximityWakeLock"

    .line 194
    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 196
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mPowerManager:Landroid/os/PowerManager;

    .line 197
    const-string/jumbo v1, "PartialGestureWakeLock"

    .line 196
    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mPartialGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 198
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mPowerManager:Landroid/os/PowerManager;

    .line 200
    const-string/jumbo v1, "AcquireCauseWakeUpGestureWakeLock"

    .line 199
    const v2, 0x10000001

    .line 198
    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mAcquireCauseWakeUpGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 202
    new-instance v0, Lcom/android/server/policy/DeviceKeyHandler$SettingsObserver;

    iget-object v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mEventHandler:Lcom/android/server/policy/DeviceKeyHandler$EventHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/DeviceKeyHandler$SettingsObserver;-><init>(Lcom/android/server/policy/DeviceKeyHandler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mObserver:Lcom/android/server/policy/DeviceKeyHandler$SettingsObserver;

    .line 204
    const-string/jumbo v0, "camera"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 205
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "DeviceKeyHandler"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mHandlerThread:Landroid/os/HandlerThread;

    .line 206
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 207
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mHandler:Landroid/os/Handler;

    .line 208
    invoke-virtual {p0}, Lcom/android/server/policy/DeviceKeyHandler;->registerCameraManagerCallbacks()V

    .line 210
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/proc/touchpanel/gesture_switch"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->gesture_switch_exist:Z

    .line 211
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "telecom"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mTelecomManager:Landroid/telecom/TelecomManager;

    .line 184
    return-void
.end method

.method private SensorProcessMessage()V
    .locals 6

    .prologue
    .line 526
    iget-object v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 527
    iget-object v3, p0, Lcom/android/server/policy/DeviceKeyHandler;->mObject:Ljava/lang/Object;

    monitor-enter v3

    .line 529
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->gesture_switch_exist:Z

    if-eqz v2, :cond_0

    .line 530
    iget-object v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mEventHandler:Lcom/android/server/policy/DeviceKeyHandler$EventHandler;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/server/policy/DeviceKeyHandler$EventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 531
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mEventHandler:Lcom/android/server/policy/DeviceKeyHandler$EventHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/policy/DeviceKeyHandler$EventHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "msg":Landroid/os/Message;
    :goto_0
    monitor-exit v3

    .line 550
    iget-object v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 525
    return-void

    .line 533
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/policy/DeviceKeyHandler;->enableProximitySensor()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 535
    :try_start_2
    iget-object v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mObject:Ljava/lang/Object;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 539
    :goto_1
    :try_start_3
    iget-boolean v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mProximitySensorActive:Z

    if-nez v2, :cond_2

    .line 540
    sget-boolean v2, Lcom/android/server/policy/DeviceKeyHandler;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 541
    const-string/jumbo v2, "DeviceKeyHandler"

    const-string/jumbo v4, "SensorProcessMessage(): sensor value change."

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    :cond_1
    iget-object v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mEventHandler:Lcom/android/server/policy/DeviceKeyHandler$EventHandler;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/server/policy/DeviceKeyHandler$EventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 544
    .restart local v1    # "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mEventHandler:Lcom/android/server/policy/DeviceKeyHandler$EventHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/policy/DeviceKeyHandler$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 546
    .end local v1    # "msg":Landroid/os/Message;
    :cond_2
    invoke-direct {p0}, Lcom/android/server/policy/DeviceKeyHandler;->disableProximitySensor()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 527
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 536
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

    .line 569
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mAcquireCauseWakeUpGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 570
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mAcquireCauseWakeUpGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    .line 569
    if-eqz v0, :cond_0

    .line 571
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mAcquireCauseWakeUpGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 573
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mPartialGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    .line 574
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mPartialGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    .line 573
    if-eqz v0, :cond_1

    .line 575
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mPartialGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 577
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/policy/DeviceKeyHandler;->isAWakeUpGesture(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 578
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mAcquireCauseWakeUpGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_2

    .line 579
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mAcquireCauseWakeUpGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 568
    :cond_2
    :goto_0
    return-void

    .line 582
    :cond_3
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mPartialGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_2

    .line 583
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mPartialGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    goto :goto_0
.end method

.method private disableProximitySensor()V
    .locals 4

    .prologue
    .line 509
    sget-boolean v2, Lcom/android/server/policy/DeviceKeyHandler;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 510
    const-string/jumbo v2, "DeviceKeyHandler"

    const-string/jumbo v3, "disableProximitySensor() called."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mProximitySensorEnabled:Z

    if-eqz v2, :cond_1

    .line 515
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 517
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/android/server/policy/DeviceKeyHandler;->mProximityListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 518
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mProximitySensorEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 520
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 508
    .end local v0    # "identity":J
    :cond_1
    return-void

    .line 519
    .restart local v0    # "identity":J
    :catchall_0
    move-exception v2

    .line 520
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 519
    throw v2
.end method

.method private dispatchMediaKeyWithWakeLockToAudioService(I)V
    .locals 10
    .param p1, "keycode"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v9, 0x1

    .line 903
    iget-boolean v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mSystemReady:Z

    if-eqz v2, :cond_0

    .line 904
    iget-object v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v0

    .line 905
    .local v0, "helper":Landroid/media/session/MediaSessionLegacyHelper;
    if-eqz v0, :cond_1

    .line 906
    new-instance v1, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 907
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move v7, p1

    move v8, v6

    .line 906
    invoke-direct/range {v1 .. v8}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 908
    .local v1, "event":Landroid/view/KeyEvent;
    invoke-virtual {v0, v1, v9}, Landroid/media/session/MediaSessionLegacyHelper;->sendMediaButtonEvent(Landroid/view/KeyEvent;Z)V

    .line 909
    invoke-static {v1, v9}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v1

    .line 910
    invoke-virtual {v0, v1, v9}, Landroid/media/session/MediaSessionLegacyHelper;->sendMediaButtonEvent(Landroid/view/KeyEvent;Z)V

    .line 902
    .end local v0    # "helper":Landroid/media/session/MediaSessionLegacyHelper;
    .end local v1    # "event":Landroid/view/KeyEvent;
    :cond_0
    :goto_0
    return-void

    .line 912
    .restart local v0    # "helper":Landroid/media/session/MediaSessionLegacyHelper;
    :cond_1
    sget-boolean v2, Lcom/android/server/policy/DeviceKeyHandler;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 913
    const-string/jumbo v2, "DeviceKeyHandler"

    const-string/jumbo v3, "MediaSessionLegacyHelper instance is null."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private enableProximitySensor()V
    .locals 6

    .prologue
    .line 490
    sget-boolean v2, Lcom/android/server/policy/DeviceKeyHandler;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 491
    const-string/jumbo v2, "DeviceKeyHandler"

    const-string/jumbo v3, "enableProximitySensor() called."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mProximitySensorEnabled:Z

    if-nez v2, :cond_1

    .line 496
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 498
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/android/server/policy/DeviceKeyHandler;->mProximityListener:Landroid/hardware/SensorEventListener;

    iget-object v4, p0, Lcom/android/server/policy/DeviceKeyHandler;->mProximitySensor:Landroid/hardware/Sensor;

    .line 499
    const/4 v5, 0x0

    .line 498
    invoke-virtual {v2, v3, v4, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 501
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mProximitySensorEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 503
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 489
    .end local v0    # "identity":J
    :cond_1
    return-void

    .line 502
    .restart local v0    # "identity":J
    :catchall_0
    move-exception v2

    .line 503
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 502
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

    .line 848
    iget-object v6, p0, Lcom/android/server/policy/DeviceKeyHandler;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v6}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v4

    .line 849
    .local v4, "ids":[Ljava/lang/String;
    const/4 v6, 0x0

    array-length v7, v4

    :goto_0
    if-ge v6, v7, :cond_1

    aget-object v3, v4, v6

    .line 851
    .local v3, "id":Ljava/lang/String;
    :try_start_0
    iget-object v8, p0, Lcom/android/server/policy/DeviceKeyHandler;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v8, v3}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    .line 852
    .local v0, "c":Landroid/hardware/camera2/CameraCharacteristics;
    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v8}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 853
    .local v2, "flashAvailable":Ljava/lang/Boolean;
    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v8}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 854
    .local v5, "lensFacing":Ljava/lang/Integer;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 855
    if-eqz v5, :cond_0

    .line 856
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    .line 857
    return-object v3

    .line 859
    .end local v0    # "c":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v2    # "flashAvailable":Ljava/lang/Boolean;
    .end local v5    # "lensFacing":Ljava/lang/Integer;
    :catch_0
    move-exception v1

    .line 860
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v6, "DeviceKeyHandler"

    const-string/jumbo v7, "Couldn\'t get torch mode characteristics."

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 861
    return-object v10

    .line 849
    .end local v1    # "e":Ljava/lang/NullPointerException;
    .restart local v0    # "c":Landroid/hardware/camera2/CameraCharacteristics;
    .restart local v2    # "flashAvailable":Ljava/lang/Boolean;
    .restart local v5    # "lensFacing":Ljava/lang/Integer;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 864
    .end local v0    # "c":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v2    # "flashAvailable":Ljava/lang/Boolean;
    .end local v3    # "id":Ljava/lang/String;
    .end local v5    # "lensFacing":Ljava/lang/Integer;
    :cond_1
    return-object v10
.end method

.method private getCameraType(Ljava/lang/String;)I
    .locals 2
    .param p1, "keyValue"    # Ljava/lang/String;

    .prologue
    .line 726
    const-string/jumbo v1, "OpenCamera"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 728
    const v0, 0x10000100

    .line 740
    .local v0, "param":I
    :goto_0
    return v0

    .line 726
    .end local v0    # "param":I
    :cond_0
    const-string/jumbo v1, "FrontCamera"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 731
    const v0, 0x10000200

    .line 732
    .restart local v0    # "param":I
    goto :goto_0

    .line 726
    .end local v0    # "param":I
    :cond_1
    const-string/jumbo v1, "TakeVideo"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 734
    const v0, 0x10000400

    .line 735
    .restart local v0    # "param":I
    goto :goto_0

    .line 737
    .end local v0    # "param":I
    :cond_2
    const v0, 0x10000100

    .line 738
    .restart local v0    # "param":I
    goto :goto_0
.end method

.method private getDefaultHomePackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 757
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "android.intent.category.HOME"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 758
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 759
    .local v1, "pm":Landroid/content/pm/PackageManager;
    if-nez v1, :cond_0

    .line 760
    const-string/jumbo v3, "DeviceKeyHandler"

    const-string/jumbo v4, "getDefaultHomePackageName: could not get package manager"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    const-string/jumbo v3, ""

    return-object v3

    .line 763
    :cond_0
    const/16 v3, 0x80

    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 764
    .local v2, "res":Landroid/content/pm/ResolveInfo;
    if-nez v2, :cond_1

    .line 765
    const-string/jumbo v3, "DeviceKeyHandler"

    const-string/jumbo v4, "getDefaultHomePackageName: could not get ResolveInfo"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    const-string/jumbo v3, ""

    return-object v3

    .line 768
    :cond_1
    const-string/jumbo v3, "DeviceKeyHandler"

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

    .line 769
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

.method public static getOffset(II)I
    .locals 1
    .param p0, "num"    # I
    .param p1, "index"    # I

    .prologue
    .line 608
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
    .line 554
    const-string/jumbo v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 562
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 554
    :cond_1
    const-string/jumbo v0, "OpenCamera"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "FrontCamera"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "TakeVideo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "OpenShelf"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "OpenApp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "OpenShortcut"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 564
    const/4 v0, 0x0

    return v0
.end method

.method private performVibration()V
    .locals 1

    .prologue
    .line 892
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/policy/DeviceKeyHandler;->performVibration(Z)V

    .line 891
    return-void
.end method

.method private performVibration(Z)V
    .locals 4
    .param p1, "success"    # Z

    .prologue
    .line 896
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    .line 897
    iget-object v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mVibrator:Landroid/os/Vibrator;

    if-eqz p1, :cond_1

    const-wide/16 v0, 0x4b

    .line 898
    :goto_0
    sget-object v3, Lcom/android/server/policy/DeviceKeyHandler;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    .line 897
    invoke-virtual {v2, v0, v1, v3}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V

    .line 895
    :cond_0
    return-void

    .line 897
    :cond_1
    const-wide/16 v0, 0x96

    goto :goto_0
.end method

.method private processKeyEvent()V
    .locals 12

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 612
    const-string/jumbo v9, "/proc/touchpanel/coordinate"

    invoke-static {v9}, Lcom/android/server/policy/FileUtils;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 614
    .local v6, "value":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 615
    return-void

    .line 618
    :cond_0
    const/16 v9, 0x2c

    invoke-virtual {v6, v9, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 619
    .local v2, "at":I
    invoke-virtual {v6, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 620
    .local v3, "keyValue":Ljava/lang/String;
    const-string/jumbo v9, "DeviceKeyHandler"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Receive gesture "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    const-string/jumbo v9, "7"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 623
    iget-boolean v9, p0, Lcom/android/server/policy/DeviceKeyHandler;->mMusic_pause:Z

    if-eqz v9, :cond_1

    .line 624
    invoke-direct {p0, v3}, Lcom/android/server/policy/DeviceKeyHandler;->acquireGestureWakeLock(Ljava/lang/String;)V

    .line 625
    invoke-direct {p0}, Lcom/android/server/policy/DeviceKeyHandler;->performVibration()V

    .line 626
    const/16 v9, 0x55

    invoke-direct {p0, v9}, Lcom/android/server/policy/DeviceKeyHandler;->dispatchMediaKeyWithWakeLockToAudioService(I)V

    .line 655
    :cond_1
    :goto_0
    iget-object v9, p0, Lcom/android/server/policy/DeviceKeyHandler;->mGestureMap:Ljava/util/HashMap;

    invoke-virtual {v9, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;

    .line 656
    .local v0, "actionInfo":Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;
    if-eqz v0, :cond_2

    .line 657
    const-string/jumbo v9, "DeviceKeyHandler"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Corresponding action is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    invoke-virtual {v0}, Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 659
    .local v1, "actionName":Ljava/lang/String;
    const-string/jumbo v9, "OpenTorch"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 661
    invoke-direct {p0, v1}, Lcom/android/server/policy/DeviceKeyHandler;->acquireGestureWakeLock(Ljava/lang/String;)V

    .line 662
    iget-boolean v9, p0, Lcom/android/server/policy/DeviceKeyHandler;->mFlashlightEnabled:Z

    if-eqz v9, :cond_c

    :goto_1
    invoke-virtual {p0, v7}, Lcom/android/server/policy/DeviceKeyHandler;->setFlashlight(Z)Z

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/server/policy/DeviceKeyHandler;->performVibration(Z)V

    .line 611
    .end local v1    # "actionName":Ljava/lang/String;
    :cond_2
    :goto_2
    return-void

    .line 621
    .end local v0    # "actionInfo":Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;
    :cond_3
    const-string/jumbo v9, "5"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 630
    iget-boolean v9, p0, Lcom/android/server/policy/DeviceKeyHandler;->mMusic_prev:Z

    if-eqz v9, :cond_1

    .line 631
    invoke-direct {p0, v3}, Lcom/android/server/policy/DeviceKeyHandler;->acquireGestureWakeLock(Ljava/lang/String;)V

    .line 632
    invoke-direct {p0}, Lcom/android/server/policy/DeviceKeyHandler;->performVibration()V

    .line 633
    const/16 v9, 0x58

    invoke-direct {p0, v9}, Lcom/android/server/policy/DeviceKeyHandler;->dispatchMediaKeyWithWakeLockToAudioService(I)V

    goto :goto_0

    .line 621
    :cond_4
    const-string/jumbo v9, "4"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 637
    iget-boolean v9, p0, Lcom/android/server/policy/DeviceKeyHandler;->mMusic_next:Z

    if-eqz v9, :cond_1

    .line 638
    invoke-direct {p0, v3}, Lcom/android/server/policy/DeviceKeyHandler;->acquireGestureWakeLock(Ljava/lang/String;)V

    .line 639
    invoke-direct {p0}, Lcom/android/server/policy/DeviceKeyHandler;->performVibration()V

    .line 640
    const/16 v9, 0x57

    invoke-direct {p0, v9}, Lcom/android/server/policy/DeviceKeyHandler;->dispatchMediaKeyWithWakeLockToAudioService(I)V

    goto :goto_0

    .line 621
    :cond_5
    const-string/jumbo v9, "1"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 644
    iget-boolean v9, p0, Lcom/android/server/policy/DeviceKeyHandler;->mDoubleScreenOn:Z

    if-eqz v9, :cond_1

    invoke-virtual {p0}, Lcom/android/server/policy/DeviceKeyHandler;->disableDoubleTap()Z

    move-result v9

    if-nez v9, :cond_1

    .line 645
    invoke-direct {p0, v3}, Lcom/android/server/policy/DeviceKeyHandler;->acquireGestureWakeLock(Ljava/lang/String;)V

    .line 646
    invoke-direct {p0}, Lcom/android/server/policy/DeviceKeyHandler;->performVibration()V

    .line 647
    iget-object v9, p0, Lcom/android/server/policy/DeviceKeyHandler;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Landroid/os/PowerManager;->wakeUp(J)V

    goto/16 :goto_0

    .line 659
    .restart local v0    # "actionInfo":Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;
    .restart local v1    # "actionName":Ljava/lang/String;
    :cond_6
    const-string/jumbo v9, "OpenCamera"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 667
    :cond_7
    invoke-direct {p0, v1}, Lcom/android/server/policy/DeviceKeyHandler;->acquireGestureWakeLock(Ljava/lang/String;)V

    .line 668
    invoke-direct {p0}, Lcom/android/server/policy/DeviceKeyHandler;->performVibration()V

    .line 670
    const-class v7, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 669
    invoke-static {v7}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 671
    .local v4, "service":Lcom/android/server/statusbar/StatusBarManagerInternal;
    invoke-direct {p0, v1}, Lcom/android/server/policy/DeviceKeyHandler;->getCameraType(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v4, v7}, Lcom/android/server/statusbar/StatusBarManagerInternal;->onCameraLaunchGestureDetected(I)V

    goto :goto_2

    .line 659
    .end local v4    # "service":Lcom/android/server/statusbar/StatusBarManagerInternal;
    :cond_8
    const-string/jumbo v9, "FrontCamera"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    const-string/jumbo v9, "TakeVideo"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    const-string/jumbo v9, "OpenShelf"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 676
    :cond_9
    :goto_3
    invoke-direct {p0, v1}, Lcom/android/server/policy/DeviceKeyHandler;->acquireGestureWakeLock(Ljava/lang/String;)V

    .line 677
    const/4 v5, 0x0

    .line 678
    .local v5, "success":Z
    iget-object v9, p0, Lcom/android/server/policy/DeviceKeyHandler;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v9, :cond_2

    .line 679
    iget-object v9, p0, Lcom/android/server/policy/DeviceKeyHandler;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v9, v7}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isSecure(I)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 682
    invoke-virtual {p0, v0, v8}, Lcom/android/server/policy/DeviceKeyHandler;->startWithKeyguardUnlocked(Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;Z)Z

    move-result v5

    .line 683
    .local v5, "success":Z
    if-eqz v5, :cond_a

    .line 684
    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mActionInfo:Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;

    .line 690
    :cond_a
    :goto_4
    if-eqz v5, :cond_2

    .line 691
    invoke-direct {p0}, Lcom/android/server/policy/DeviceKeyHandler;->performVibration()V

    .line 692
    iget-object v7, p0, Lcom/android/server/policy/DeviceKeyHandler;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    invoke-virtual {v7, v10, v11}, Landroid/os/PowerManager;->wakeUp(J)V

    .line 693
    iget-object v7, p0, Lcom/android/server/policy/DeviceKeyHandler;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v7, :cond_2

    .line 694
    iget-object v7, p0, Lcom/android/server/policy/DeviceKeyHandler;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v7, v8}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->forceDismiss(Z)V

    goto/16 :goto_2

    .line 659
    .end local v5    # "success":Z
    :cond_b
    const-string/jumbo v9, "OpenApp"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    const-string/jumbo v9, "OpenShortcut"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    goto :goto_3

    :cond_c
    move v7, v8

    .line 662
    goto/16 :goto_1

    .line 688
    .local v5, "success":Z
    :cond_d
    invoke-virtual {p0, v0, v7}, Lcom/android/server/policy/DeviceKeyHandler;->startWithKeyguardUnlocked(Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;Z)Z

    move-result v5

    .local v5, "success":Z
    goto :goto_4
.end method

.method private startApp(Ljava/lang/String;Z)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "test"    # Z

    .prologue
    const/4 v3, 0x1

    .line 773
    iget-object v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 774
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_1

    .line 775
    if-eqz p2, :cond_0

    .line 776
    return v3

    .line 778
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 779
    return v3

    .line 781
    :cond_1
    const-string/jumbo v1, "DeviceKeyHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "start app "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " failed because intent is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    const/4 v1, 0x0

    return v1
.end method

.method private startShelf(Z)Z
    .locals 4
    .param p1, "test"    # Z

    .prologue
    const/4 v3, 0x1

    .line 744
    if-eqz p1, :cond_0

    return v3

    .line 746
    :cond_0
    const-string/jumbo v1, "net.oneplus.h2launcher"

    iget-object v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/android/server/policy/DeviceKeyHandler;->getDefaultHomePackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 747
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "net.oneplus.h2launcher.action.OPEN_QUICK_PAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 751
    .local v0, "intent":Landroid/content/Intent;
    :goto_0
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 752
    iget-object v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 753
    return v3

    .line 749
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "net.oneplus.launcher.action.OPEN_QUICK_PAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v0    # "intent":Landroid/content/Intent;
    goto :goto_0
.end method

.method private startShortcut(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "shortcutId"    # Ljava/lang/String;
    .param p3, "test"    # Z

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 786
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mContext:Landroid/content/Context;

    .line 787
    const-string/jumbo v1, "launcherapps"

    .line 786
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mLauncherApps:Landroid/content/pm/LauncherApps;

    .line 788
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mLauncherApps:Landroid/content/pm/LauncherApps;

    if-eqz v0, :cond_1

    .line 789
    if-eqz p3, :cond_0

    .line 790
    new-instance v8, Landroid/content/pm/LauncherApps$ShortcutQuery;

    invoke-direct {v8}, Landroid/content/pm/LauncherApps$ShortcutQuery;-><init>()V

    .line 791
    .local v8, "query":Landroid/content/pm/LauncherApps$ShortcutQuery;
    invoke-virtual {v8, p1}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setPackage(Ljava/lang/String;)Landroid/content/pm/LauncherApps$ShortcutQuery;

    .line 792
    new-array v0, v10, [Ljava/lang/String;

    aput-object p2, v0, v9

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setShortcutIds(Ljava/util/List;)Landroid/content/pm/LauncherApps$ShortcutQuery;

    .line 794
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mLauncherApps:Landroid/content/pm/LauncherApps;

    sget-object v1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v0, v8, v1}, Landroid/content/pm/LauncherApps;->getShortcuts(Landroid/content/pm/LauncherApps$ShortcutQuery;Landroid/os/UserHandle;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_1

    .line 795
    return v10

    .line 796
    :catch_0
    move-exception v7

    .line 797
    .local v7, "ex":Ljava/lang/IllegalStateException;
    const-string/jumbo v0, "DeviceKeyHandler"

    const-string/jumbo v1, "get shortcuts failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    return v9

    .line 802
    .end local v7    # "ex":Ljava/lang/IllegalStateException;
    .end local v8    # "query":Landroid/content/pm/LauncherApps$ShortcutQuery;
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mLauncherApps:Landroid/content/pm/LauncherApps;

    sget-object v5, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/LauncherApps;->startShortcut(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 803
    return v10

    .line 804
    :catch_1
    move-exception v6

    .line 805
    .local v6, "ex":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v0, "DeviceKeyHandler"

    const-string/jumbo v1, "start shortcut failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    return v9

    .line 810
    .end local v6    # "ex":Landroid/content/ActivityNotFoundException;
    :cond_1
    const-string/jumbo v0, "DeviceKeyHandler"

    const-string/jumbo v1, "shortcut service is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    return v9
.end method

.method private updateOemSettings()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, -0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 355
    iget-object v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 357
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v2, "oem_acc_blackscreen_gestrue_enable"

    .line 356
    invoke-static {v1, v2, v4, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iput v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mBlackKeySettingState:I

    .line 360
    sget-boolean v2, Lcom/android/server/policy/DeviceKeyHandler;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 361
    const-string/jumbo v2, "DeviceKeyHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateH2OemSettings(): mBlackKeySettingState = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/policy/DeviceKeyHandler;->mBlackKeySettingState:I

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :cond_0
    iget v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mBlackKeySettingState:I

    const/4 v5, 0x7

    invoke-static {v2, v5}, Lcom/android/server/policy/DeviceKeyHandler;->getOffset(II)I

    move-result v2

    if-ne v2, v3, :cond_2

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mDoubleScreenOn:Z

    .line 365
    iget v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mBlackKeySettingState:I

    const/4 v5, 0x5

    invoke-static {v2, v5}, Lcom/android/server/policy/DeviceKeyHandler;->getOffset(II)I

    move-result v2

    if-ne v2, v3, :cond_3

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mMusic_control:Z

    .line 366
    iget v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mBlackKeySettingState:I

    const/4 v5, 0x4

    invoke-static {v2, v5}, Lcom/android/server/policy/DeviceKeyHandler;->getOffset(II)I

    move-result v2

    if-ne v2, v3, :cond_4

    move v2, v3

    :goto_2
    iput-boolean v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mMusic_prev:Z

    .line 367
    iget v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mBlackKeySettingState:I

    const/4 v5, 0x3

    invoke-static {v2, v5}, Lcom/android/server/policy/DeviceKeyHandler;->getOffset(II)I

    move-result v2

    if-ne v2, v3, :cond_5

    move v2, v3

    :goto_3
    iput-boolean v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mMusic_next:Z

    .line 368
    iget v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mBlackKeySettingState:I

    invoke-static {v2, v8}, Lcom/android/server/policy/DeviceKeyHandler;->getOffset(II)I

    move-result v2

    if-ne v2, v3, :cond_6

    move v2, v3

    :goto_4
    iput-boolean v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mMusic_pause:Z

    .line 369
    iget v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mBlackKeySettingState:I

    invoke-static {v2, v3}, Lcom/android/server/policy/DeviceKeyHandler;->getOffset(II)I

    move-result v2

    if-ne v2, v3, :cond_7

    move v2, v3

    :goto_5
    iput-boolean v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mMusic_play:Z

    .line 373
    iget-boolean v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mMusic_play:Z

    if-eqz v2, :cond_1

    .line 374
    iput-boolean v3, p0, Lcom/android/server/policy/DeviceKeyHandler;->mMusic_pause:Z

    .line 378
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/server/policy/DeviceKeyHandler;->makeGestureMap(Landroid/content/ContentResolver;)V

    .line 381
    new-array v0, v8, [B

    iget v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mBlackKeySettingState:I

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v4

    iget v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mBlackKeySettingState:I

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v3

    .line 382
    .local v0, "enableByte":[B
    const-string/jumbo v2, "/proc/touchpanel/gesture_enable"

    invoke-static {v2, v0}, Lcom/android/server/policy/FileUtils;->writeByteArray(Ljava/lang/String;[B)Z

    .line 385
    const-string/jumbo v2, "oem_acc_anti_misoperation_screen"

    .line 384
    invoke-static {v1, v2, v4, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v3, :cond_8

    :goto_6
    iput-boolean v3, p0, Lcom/android/server/policy/DeviceKeyHandler;->mPocketmodeEnabled:Z

    .line 354
    return-void

    .end local v0    # "enableByte":[B
    :cond_2
    move v2, v4

    .line 364
    goto :goto_0

    :cond_3
    move v2, v4

    .line 365
    goto :goto_1

    :cond_4
    move v2, v4

    .line 366
    goto :goto_2

    :cond_5
    move v2, v4

    .line 367
    goto :goto_3

    :cond_6
    move v2, v4

    .line 368
    goto :goto_4

    :cond_7
    move v2, v4

    .line 369
    goto :goto_5

    .restart local v0    # "enableByte":[B
    :cond_8
    move v3, v4

    .line 384
    goto :goto_6
.end method


# virtual methods
.method disableDoubleTap()Z
    .locals 1

    .prologue
    .line 921
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

    .line 444
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    .line 445
    .local v3, "repeatCount":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    if-ne v6, v5, :cond_2

    move v0, v5

    .line 446
    .local v0, "actionUp":Z
    :goto_0
    if-eqz v0, :cond_0

    if-nez v3, :cond_0

    move v4, v5

    .line 447
    .local v4, "shouldHandleEvent":Z
    :cond_0
    move v1, v4

    .line 448
    .local v1, "handled":Z
    if-eqz v4, :cond_1

    .line 449
    iget-object v6, p0, Lcom/android/server/policy/DeviceKeyHandler;->mEventHandler:Lcom/android/server/policy/DeviceKeyHandler$EventHandler;

    invoke-virtual {v6, v5}, Lcom/android/server/policy/DeviceKeyHandler$EventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 450
    .local v2, "msg":Landroid/os/Message;
    iget-object v5, p0, Lcom/android/server/policy/DeviceKeyHandler;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v5, :cond_3

    .line 451
    invoke-direct {p0}, Lcom/android/server/policy/DeviceKeyHandler;->SensorProcessMessage()V

    .line 457
    .end local v2    # "msg":Landroid/os/Message;
    :cond_1
    :goto_1
    return v1

    .end local v0    # "actionUp":Z
    .end local v1    # "handled":Z
    .end local v4    # "shouldHandleEvent":Z
    :cond_2
    move v0, v4

    .line 445
    goto :goto_0

    .line 453
    .restart local v0    # "actionUp":Z
    .restart local v1    # "handled":Z
    .restart local v2    # "msg":Landroid/os/Message;
    .restart local v4    # "shouldHandleEvent":Z
    :cond_3
    iget-object v5, p0, Lcom/android/server/policy/DeviceKeyHandler;->mEventHandler:Lcom/android/server/policy/DeviceKeyHandler$EventHandler;

    invoke-virtual {v5, v2}, Lcom/android/server/policy/DeviceKeyHandler$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1
.end method

.method makeGestureMap(Landroid/content/ContentResolver;)V
    .locals 7
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v6, -0x2

    .line 285
    const-string/jumbo v5, "oem_acc_blackscreen_gesture_o"

    .line 284
    invoke-static {p1, v5, v6}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 288
    .local v1, "gestureActionO":Ljava/lang/String;
    const-string/jumbo v5, "oem_acc_blackscreen_gesture_v"

    .line 287
    invoke-static {p1, v5, v6}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 291
    .local v3, "gestureActionV":Ljava/lang/String;
    const-string/jumbo v5, "oem_acc_blackscreen_gesture_s"

    .line 290
    invoke-static {p1, v5, v6}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 294
    .local v2, "gestureActionS":Ljava/lang/String;
    const-string/jumbo v5, "oem_acc_blackscreen_gesture_w"

    .line 293
    invoke-static {p1, v5, v6}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 297
    .local v4, "gestureActionW":Ljava/lang/String;
    const-string/jumbo v5, "oem_acc_blackscreen_gesture_m"

    .line 296
    invoke-static {p1, v5, v6}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 299
    .local v0, "gestureActionM":Ljava/lang/String;
    const-string/jumbo v5, "6"

    invoke-virtual {p0, v5, v1}, Lcom/android/server/policy/DeviceKeyHandler;->parseSettingData(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    const-string/jumbo v5, "2"

    invoke-virtual {p0, v5, v3}, Lcom/android/server/policy/DeviceKeyHandler;->parseSettingData(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    const-string/jumbo v5, "14"

    invoke-virtual {p0, v5, v2}, Lcom/android/server/policy/DeviceKeyHandler;->parseSettingData(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    const-string/jumbo v5, "13"

    invoke-virtual {p0, v5, v4}, Lcom/android/server/policy/DeviceKeyHandler;->parseSettingData(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    const-string/jumbo v5, "12"

    invoke-virtual {p0, v5, v0}, Lcom/android/server/policy/DeviceKeyHandler;->parseSettingData(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    return-void
.end method

.method public onKeyguardDone()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 407
    const-string/jumbo v0, "DeviceKeyHandler"

    const-string/jumbo v1, "receive keyguard done, process gesture action"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mActionInfo:Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mActionInfo:Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/policy/DeviceKeyHandler;->startWithKeyguardUnlocked(Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;Z)Z

    .line 410
    iput-object v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mActionInfo:Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;

    .line 406
    :cond_0
    return-void
.end method

.method onScreenTurnedOff()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 391
    iget-boolean v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->gesture_switch_exist:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mBlackKeySettingState:I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mSensorEnabled:Z

    if-eqz v0, :cond_1

    .line 396
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mActionInfo:Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;

    .line 390
    return-void

    .line 391
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mPocketmodeEnabled:Z

    if-eqz v0, :cond_0

    .line 392
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mSensorEnabled:Z

    .line 393
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mPocketListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mProximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_0
.end method

.method onScreenTurnedOn()V
    .locals 2

    .prologue
    .line 400
    iget-boolean v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mSensorEnabled:Z

    if-eqz v0, :cond_0

    .line 401
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mSensorEnabled:Z

    .line 402
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mPocketListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 399
    :cond_0
    return-void
.end method

.method parseSettingData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "gesture"    # Ljava/lang/String;
    .param p2, "settingsValue"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 307
    if-nez p2, :cond_0

    .line 308
    return-void

    .line 309
    :cond_0
    const/4 v3, 0x3

    new-array v1, v3, [Ljava/lang/String;

    .line 310
    .local v1, "parts":[Ljava/lang/String;
    const-string/jumbo v3, ":|;"

    invoke-virtual {p2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 311
    .local v2, "tmp":[Ljava/lang/String;
    array-length v3, v2

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 312
    new-instance v0, Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;

    invoke-direct {v0, p0, v5}, Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;-><init>(Lcom/android/server/policy/DeviceKeyHandler;Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;)V

    .line 313
    .local v0, "actionInfo":Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;
    aget-object v3, v1, v4

    invoke-virtual {v0, v3}, Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;->setActionName(Ljava/lang/String;)V

    .line 314
    const/4 v3, 0x1

    aget-object v3, v1, v3

    invoke-virtual {v0, v3}, Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;->setPackage(Ljava/lang/String;)V

    .line 315
    const/4 v3, 0x2

    aget-object v3, v1, v3

    invoke-virtual {v0, v3}, Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;->setShortcutId(Ljava/lang/String;)V

    .line 316
    iget-object v3, p0, Lcom/android/server/policy/DeviceKeyHandler;->mGestureMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    return-void
.end method

.method public registerCameraManagerCallbacks()V
    .locals 3

    .prologue
    .line 819
    sget-boolean v0, Lcom/android/server/policy/DeviceKeyHandler;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 820
    const-string/jumbo v0, "DeviceKeyHandler"

    const-string/jumbo v1, "registerCameraManagerCallbacks() called."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mTorchCallback:Landroid/hardware/camera2/CameraManager$TorchCallback;

    iget-object v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CameraManager;->registerTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;Landroid/os/Handler;)V

    .line 818
    return-void
.end method

.method public setFlashlight(Z)Z
    .locals 6
    .param p1, "enabled"    # Z

    .prologue
    const/4 v5, 0x0

    .line 826
    sget-boolean v2, Lcom/android/server/policy/DeviceKeyHandler;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 827
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

    .line 830
    :cond_0
    monitor-enter p0

    .line 831
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mFlashlightEnabled:Z

    if-eq v2, p1, :cond_2

    .line 832
    iput-boolean p1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mFlashlightEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 834
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/policy/DeviceKeyHandler;->getCameraId()Ljava/lang/String;

    move-result-object v0

    .line 835
    .local v0, "cameraId":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    if-eqz v0, :cond_1

    .end local v0    # "cameraId":Ljava/lang/String;
    :goto_0
    invoke-virtual {v2, v0, p1}, Landroid/hardware/camera2/CameraManager;->setTorchMode(Ljava/lang/String;Z)V
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 836
    const/4 v2, 0x1

    monitor-exit p0

    return v2

    .line 835
    .restart local v0    # "cameraId":Ljava/lang/String;
    :cond_1
    :try_start_2
    const-string/jumbo v0, "0"
    :try_end_2
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 837
    .end local v0    # "cameraId":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 838
    .local v1, "e":Landroid/hardware/camera2/CameraAccessException;
    :try_start_3
    const-string/jumbo v2, "DeviceKeyHandler"

    const-string/jumbo v3, "CameraAccessException: Couldn\'t set torch mode."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 839
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mFlashlightEnabled:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    .line 840
    return v5

    .end local v1    # "e":Landroid/hardware/camera2/CameraAccessException;
    :cond_2
    monitor-exit p0

    .line 844
    return v5

    .line 830
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method setKeyguardDelegate(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;)V
    .locals 0
    .param p1, "keyguard"    # Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .prologue
    .line 815
    iput-object p1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 814
    return-void
.end method

.method startWithKeyguardUnlocked(Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;Z)Z
    .locals 4
    .param p1, "actionInfo"    # Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;
    .param p2, "test"    # Z

    .prologue
    .line 712
    invoke-virtual {p1}, Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 713
    .local v0, "actionName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 714
    .local v1, "success":Z
    const-string/jumbo v2, "OpenShelf"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 715
    invoke-direct {p0, p2}, Lcom/android/server/policy/DeviceKeyHandler;->startShelf(Z)Z

    move-result v1

    .line 721
    .end local v1    # "success":Z
    :cond_0
    :goto_0
    return v1

    .line 716
    .restart local v1    # "success":Z
    :cond_1
    const-string/jumbo v2, "OpenApp"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 717
    invoke-virtual {p1}, Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/android/server/policy/DeviceKeyHandler;->startApp(Ljava/lang/String;Z)Z

    move-result v1

    .local v1, "success":Z
    goto :goto_0

    .line 718
    .local v1, "success":Z
    :cond_2
    const-string/jumbo v2, "OpenShortcut"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 719
    invoke-virtual {p1}, Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;->getShortcutId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3, p2}, Lcom/android/server/policy/DeviceKeyHandler;->startShortcut(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    .local v1, "success":Z
    goto :goto_0
.end method

.method public systemReady()V
    .locals 7

    .prologue
    .line 216
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/policy/DeviceKeyHandler;->mSystemReady:Z

    .line 219
    iget-object v3, p0, Lcom/android/server/policy/DeviceKeyHandler;->mObserver:Lcom/android/server/policy/DeviceKeyHandler$SettingsObserver;

    invoke-virtual {v3}, Lcom/android/server/policy/DeviceKeyHandler$SettingsObserver;->observe()V

    .line 222
    const/4 v2, 0x0

    .line 224
    .local v2, "info":Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v3, p0, Lcom/android/server/policy/DeviceKeyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 225
    const-string/jumbo v4, "com.netease.cloudmusic"

    const/4 v5, 0x0

    .line 224
    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 230
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    :goto_0
    if-eqz v2, :cond_0

    .line 232
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    .line 233
    const-string/jumbo v4, "com.netease.cloudmusic"

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 232
    invoke-interface {v3, v4, v5, v6}, Landroid/content/pm/IPackageManager;->setPackageStoppedState(Ljava/lang/String;ZI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 215
    :cond_0
    :goto_1
    return-void

    .line 226
    .restart local v2    # "info":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v1

    .line 227
    .local v1, "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    .line 228
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 234
    .end local v1    # "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    :catch_1
    move-exception v0

    .line 235
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method
