.class public Lcom/android/server/DeviceKeyHandler;
.super Ljava/lang/Object;
.source "DeviceKeyHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DeviceKeyHandler$EventHandler;,
        Lcom/android/server/DeviceKeyHandler$SettingsObserver;
    }
.end annotation


# static fields
.field private static BLACK_ENBALE_PATH:Ljava/lang/String; = null

.field private static BLACK_VALUE_PATH:Ljava/lang/String; = null

.field private static final DEBUG:Z = false

.field private static final GESTURE_CIRCLE_SCANCODE:Ljava/lang/String; = "6"

.field private static final GESTURE_GTR_SCANCODE:Ljava/lang/String; = "4"

.field private static final GESTURE_LTR_SCANCODE:Ljava/lang/String; = "5"

.field private static final GESTURE_SWIPE_DOWN_SCANCODE:Ljava/lang/String; = "7"

.field private static final GESTURE_V_SCANCODE:Ljava/lang/String; = "2"

.field private static final GESTURE_WAKELOCK_DURATION:I = 0xbb8

.field private static final KEY_DOUBLE_TAP:Ljava/lang/String; = "1"

.field private static final TAG:Ljava/lang/String; = "DeviceKeyHandler"


# instance fields
.field private mBlackEnabelState:Z

.field private mBlackEvent:Lcom/oem/os/IOemExInputCallBack$Stub;

.field private mBlackKeySettingState:I

.field private final mContext:Landroid/content/Context;

.field private mDoubleScreenOn:Z

.field private mEventHandler:Lcom/android/server/DeviceKeyHandler$EventHandler;

.field mGestureWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mMusic_control:Z

.field private mMusic_next:Z

.field private mMusic_paly:Z

.field private mMusic_pause:Z

.field private mMusic_prev:Z

.field private mObserver:Lcom/android/server/DeviceKeyHandler$SettingsObserver;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mProximitySensor:Landroid/hardware/Sensor;

.field mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mService:Lcom/oem/os/IOemExService;

.field private mStartCamera:Z

.field mStartCameraWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mStartFlash:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    const-string v0, "/proc/touchpanel/gesture_enable"

    sput-object v0, Lcom/android/server/DeviceKeyHandler;->BLACK_ENBALE_PATH:Ljava/lang/String;

    .line 78
    const-string v0, "/proc/touchpanel/coordinate"

    sput-object v0, Lcom/android/server/DeviceKeyHandler;->BLACK_VALUE_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput v0, p0, Lcom/android/server/DeviceKeyHandler;->mBlackKeySettingState:I

    .line 90
    iput-boolean v0, p0, Lcom/android/server/DeviceKeyHandler;->mBlackEnabelState:Z

    .line 92
    iput-boolean v2, p0, Lcom/android/server/DeviceKeyHandler;->mStartCamera:Z

    .line 93
    iput-boolean v2, p0, Lcom/android/server/DeviceKeyHandler;->mStartFlash:Z

    .line 94
    iput-boolean v2, p0, Lcom/android/server/DeviceKeyHandler;->mMusic_control:Z

    .line 95
    iput-boolean v2, p0, Lcom/android/server/DeviceKeyHandler;->mMusic_prev:Z

    .line 96
    iput-boolean v2, p0, Lcom/android/server/DeviceKeyHandler;->mMusic_next:Z

    .line 97
    iput-boolean v2, p0, Lcom/android/server/DeviceKeyHandler;->mMusic_pause:Z

    .line 98
    iput-boolean v2, p0, Lcom/android/server/DeviceKeyHandler;->mMusic_paly:Z

    .line 99
    iput-boolean v2, p0, Lcom/android/server/DeviceKeyHandler;->mDoubleScreenOn:Z

    .line 225
    new-instance v0, Lcom/android/server/DeviceKeyHandler$1;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceKeyHandler$1;-><init>(Lcom/android/server/DeviceKeyHandler;)V

    iput-object v0, p0, Lcom/android/server/DeviceKeyHandler;->mBlackEvent:Lcom/oem/os/IOemExInputCallBack$Stub;

    .line 115
    iput-object p1, p0, Lcom/android/server/DeviceKeyHandler;->mContext:Landroid/content/Context;

    .line 116
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/DeviceKeyHandler;->mPowerManager:Landroid/os/PowerManager;

    .line 117
    new-instance v0, Lcom/android/server/DeviceKeyHandler$EventHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/DeviceKeyHandler$EventHandler;-><init>(Lcom/android/server/DeviceKeyHandler;Lcom/android/server/DeviceKeyHandler$1;)V

    iput-object v0, p0, Lcom/android/server/DeviceKeyHandler;->mEventHandler:Lcom/android/server/DeviceKeyHandler$EventHandler;

    .line 118
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/server/DeviceKeyHandler;->mSensorManager:Landroid/hardware/SensorManager;

    .line 119
    iget-object v0, p0, Lcom/android/server/DeviceKeyHandler;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DeviceKeyHandler;->mProximitySensor:Landroid/hardware/Sensor;

    .line 120
    iget-object v0, p0, Lcom/android/server/DeviceKeyHandler;->mPowerManager:Landroid/os/PowerManager;

    const-string v1, "ProximityWakeLock"

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DeviceKeyHandler;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 122
    iget-object v0, p0, Lcom/android/server/DeviceKeyHandler;->mPowerManager:Landroid/os/PowerManager;

    const-string v1, "GestureWakeLock"

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DeviceKeyHandler;->mGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 125
    iget-object v0, p0, Lcom/android/server/DeviceKeyHandler;->mPowerManager:Landroid/os/PowerManager;

    const v1, 0x1000000a

    const-string v2, "StartCamera"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DeviceKeyHandler;->mStartCameraWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 129
    const-string v0, "OEMExService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/oem/os/IOemExService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oem/os/IOemExService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DeviceKeyHandler;->mService:Lcom/oem/os/IOemExService;

    .line 130
    new-instance v0, Lcom/android/server/DeviceKeyHandler$SettingsObserver;

    iget-object v1, p0, Lcom/android/server/DeviceKeyHandler;->mEventHandler:Lcom/android/server/DeviceKeyHandler$EventHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/DeviceKeyHandler$SettingsObserver;-><init>(Lcom/android/server/DeviceKeyHandler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/DeviceKeyHandler;->mObserver:Lcom/android/server/DeviceKeyHandler$SettingsObserver;

    .line 131
    return-void
.end method

.method private SensorProcessMessage()V
    .locals 4

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/server/DeviceKeyHandler;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 254
    iget-object v0, p0, Lcom/android/server/DeviceKeyHandler;->mSensorManager:Landroid/hardware/SensorManager;

    new-instance v1, Lcom/android/server/DeviceKeyHandler$2;

    invoke-direct {v1, p0}, Lcom/android/server/DeviceKeyHandler$2;-><init>(Lcom/android/server/DeviceKeyHandler;)V

    iget-object v2, p0, Lcom/android/server/DeviceKeyHandler;->mProximitySensor:Landroid/hardware/Sensor;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 278
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/DeviceKeyHandler;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/DeviceKeyHandler;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/server/DeviceKeyHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/DeviceKeyHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DeviceKeyHandler;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/server/DeviceKeyHandler;->updateOemSettings()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/DeviceKeyHandler;)Lcom/android/server/DeviceKeyHandler$EventHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/DeviceKeyHandler;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/server/DeviceKeyHandler;->mEventHandler:Lcom/android/server/DeviceKeyHandler$EventHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/DeviceKeyHandler;)Landroid/hardware/Sensor;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/DeviceKeyHandler;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/server/DeviceKeyHandler;->mProximitySensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/DeviceKeyHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DeviceKeyHandler;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/server/DeviceKeyHandler;->SensorProcessMessage()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/DeviceKeyHandler;)Landroid/hardware/SensorManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/DeviceKeyHandler;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/server/DeviceKeyHandler;->mSensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/DeviceKeyHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DeviceKeyHandler;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/server/DeviceKeyHandler;->processKeyEvent()V

    return-void
.end method

.method private dispatchMediaKeyWithWakeLockToAudioService(I)V
    .locals 9
    .param p1, "keycode"    # I

    .prologue
    const/4 v6, 0x0

    .line 405
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 406
    iget-object v2, p0, Lcom/android/server/DeviceKeyHandler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v0

    .line 407
    .local v0, "helper":Landroid/media/session/MediaSessionLegacyHelper;
    if-eqz v0, :cond_0

    .line 408
    new-instance v1, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move v7, p1

    move v8, v6

    invoke-direct/range {v1 .. v8}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 410
    .local v1, "event":Landroid/view/KeyEvent;
    invoke-virtual {v0, v1, v6}, Landroid/media/session/MediaSessionLegacyHelper;->sendMediaButtonEvent(Landroid/view/KeyEvent;Z)V

    .line 411
    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v1

    .line 412
    invoke-virtual {v0, v1, v6}, Landroid/media/session/MediaSessionLegacyHelper;->sendMediaButtonEvent(Landroid/view/KeyEvent;Z)V

    .line 418
    .end local v0    # "helper":Landroid/media/session/MediaSessionLegacyHelper;
    .end local v1    # "event":Landroid/view/KeyEvent;
    :cond_0
    return-void
.end method

.method private ensureKeyguardManager()V
    .locals 2

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/server/DeviceKeyHandler;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/android/server/DeviceKeyHandler;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/server/DeviceKeyHandler;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 309
    :cond_0
    return-void
.end method

.method public static getOffset(II)I
    .locals 1
    .param p0, "num"    # I
    .param p1, "index"    # I

    .prologue
    .line 301
    const/4 v0, 0x1

    shl-int/2addr v0, p1

    and-int/2addr v0, p0

    shr-int/2addr v0, p1

    return v0
.end method

.method private processKeyEvent()V
    .locals 15

    .prologue
    const/16 v14, 0x55

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 312
    sget-object v8, Lcom/android/server/DeviceKeyHandler;->BLACK_VALUE_PATH:Ljava/lang/String;

    invoke-static {v8}, Lcom/android/server/FileUtils;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 313
    .local v7, "value":Ljava/lang/String;
    if-eqz v7, :cond_0

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 402
    :cond_0
    :goto_0
    return-void

    .line 316
    :cond_1
    const/16 v8, 0x2c

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 317
    .local v1, "at":I
    invoke-virtual {v7, v9, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 318
    .local v5, "keyVaule":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/DeviceKeyHandler;->mGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v12, 0xfa0

    invoke-virtual {v8, v12, v13}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 319
    const/4 v8, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v11

    packed-switch v11, :pswitch_data_0

    :cond_2
    :goto_1
    :pswitch_0
    packed-switch v8, :pswitch_data_1

    goto :goto_0

    .line 321
    :pswitch_1
    iget-boolean v8, p0, Lcom/android/server/DeviceKeyHandler;->mStartCamera:Z

    if-eqz v8, :cond_0

    .line 324
    const/4 v6, 0x0

    .line 326
    .local v6, "obbIntent":Landroid/content/Intent;
    :try_start_0
    iget-object v8, p0, Lcom/android/server/DeviceKeyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const-string v9, "com.oneplus.camera"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 328
    .local v4, "info":Landroid/content/pm/PackageInfo;
    if-eqz v4, :cond_3

    .line 329
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    new-instance v9, Landroid/content/ComponentName;

    const-string v10, "com.oneplus.camera"

    const-string v11, "com.oneplus.camera.MainActivity"

    invoke-direct {v9, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 345
    .end local v4    # "info":Landroid/content/pm/PackageInfo;
    :cond_3
    :goto_2
    invoke-direct {p0}, Lcom/android/server/DeviceKeyHandler;->ensureKeyguardManager()V

    .line 346
    iget-object v8, p0, Lcom/android/server/DeviceKeyHandler;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v8}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v8

    if-nez v8, :cond_4

    iget-object v8, p0, Lcom/android/server/DeviceKeyHandler;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v8}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 348
    :cond_4
    const-string v0, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    .line 352
    .local v0, "action":Ljava/lang/String;
    :goto_3
    if-eqz v6, :cond_5

    .line 353
    invoke-virtual {v6, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 354
    invoke-direct {p0, v6}, Lcom/android/server/DeviceKeyHandler;->startActivitySafely(Landroid/content/Intent;)V

    .line 357
    :cond_5
    const-wide/16 v8, 0x3e8

    :try_start_1
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 362
    :goto_4
    iget-object v8, p0, Lcom/android/server/DeviceKeyHandler;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Landroid/os/PowerManager;->wakeUp(J)V

    goto :goto_0

    .line 319
    .end local v0    # "action":Ljava/lang/String;
    .end local v6    # "obbIntent":Landroid/content/Intent;
    :pswitch_2
    const-string v11, "6"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    move v8, v9

    goto :goto_1

    :pswitch_3
    const-string v11, "7"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    move v8, v10

    goto :goto_1

    :pswitch_4
    const-string v11, "2"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    const/4 v8, 0x2

    goto :goto_1

    :pswitch_5
    const-string v11, "5"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    const/4 v8, 0x3

    goto :goto_1

    :pswitch_6
    const-string v11, "4"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    const/4 v8, 0x4

    goto/16 :goto_1

    :pswitch_7
    const-string v11, "1"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    const/4 v8, 0x5

    goto/16 :goto_1

    .line 333
    .restart local v6    # "obbIntent":Landroid/content/Intent;
    :catch_0
    move-exception v2

    .line 338
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v8, "DeviceKeyHandler"

    const-string v9, "Could not get find package com.oneplus.camera"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    new-instance v9, Landroid/content/ComponentName;

    const-string v10, "com.android.camera2"

    const-string v11, "com.android.camera.CameraLauncher"

    invoke-direct {v9, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v6

    goto/16 :goto_2

    .line 350
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_6
    const-string v0, "android.media.action.STILL_IMAGE_CAMERA"

    .restart local v0    # "action":Ljava/lang/String;
    goto :goto_3

    .line 358
    :catch_1
    move-exception v2

    .line 360
    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_4

    .line 367
    .end local v0    # "action":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/InterruptedException;
    .end local v6    # "obbIntent":Landroid/content/Intent;
    :pswitch_8
    iget-boolean v8, p0, Lcom/android/server/DeviceKeyHandler;->mMusic_pause:Z

    if-eqz v8, :cond_0

    .line 368
    iget-boolean v8, p0, Lcom/android/server/DeviceKeyHandler;->mMusic_paly:Z

    if-eqz v8, :cond_7

    .line 369
    invoke-direct {p0, v14}, Lcom/android/server/DeviceKeyHandler;->dispatchMediaKeyWithWakeLockToAudioService(I)V

    .line 370
    iput-boolean v9, p0, Lcom/android/server/DeviceKeyHandler;->mMusic_paly:Z

    goto/16 :goto_0

    .line 372
    :cond_7
    invoke-direct {p0, v14}, Lcom/android/server/DeviceKeyHandler;->dispatchMediaKeyWithWakeLockToAudioService(I)V

    .line 373
    iput-boolean v10, p0, Lcom/android/server/DeviceKeyHandler;->mMusic_paly:Z

    goto/16 :goto_0

    .line 378
    :pswitch_9
    iget-boolean v8, p0, Lcom/android/server/DeviceKeyHandler;->mStartFlash:Z

    if-eqz v8, :cond_0

    .line 379
    new-instance v3, Landroid/content/Intent;

    const-string v8, "android.intent.action.OEM_FLASH_LIGHT_STATE"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 381
    .local v3, "flashlightIntent":Landroid/content/Intent;
    const/high16 v8, 0x10000000

    invoke-virtual {v3, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 382
    iget-object v8, p0, Lcom/android/server/DeviceKeyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 387
    .end local v3    # "flashlightIntent":Landroid/content/Intent;
    :pswitch_a
    iget-boolean v8, p0, Lcom/android/server/DeviceKeyHandler;->mMusic_prev:Z

    if-eqz v8, :cond_0

    .line 388
    const/16 v8, 0x58

    invoke-direct {p0, v8}, Lcom/android/server/DeviceKeyHandler;->dispatchMediaKeyWithWakeLockToAudioService(I)V

    goto/16 :goto_0

    .line 392
    :pswitch_b
    iget-boolean v8, p0, Lcom/android/server/DeviceKeyHandler;->mMusic_next:Z

    if-eqz v8, :cond_0

    .line 393
    const/16 v8, 0x57

    invoke-direct {p0, v8}, Lcom/android/server/DeviceKeyHandler;->dispatchMediaKeyWithWakeLockToAudioService(I)V

    goto/16 :goto_0

    .line 397
    :pswitch_c
    iget-boolean v8, p0, Lcom/android/server/DeviceKeyHandler;->mDoubleScreenOn:Z

    if-eqz v8, :cond_0

    .line 398
    iget-object v8, p0, Lcom/android/server/DeviceKeyHandler;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Landroid/os/PowerManager;->wakeUp(J)V

    goto/16 :goto_0

    .line 319
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

.method private startActivitySafely(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 421
    const/high16 v1, 0x34000000

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 426
    :try_start_0
    new-instance v0, Landroid/os/UserHandle;

    const/4 v1, -0x2

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 427
    .local v0, "user":Landroid/os/UserHandle;
    iget-object v1, p0, Lcom/android/server/DeviceKeyHandler;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 432
    .end local v0    # "user":Landroid/os/UserHandle;
    :goto_0
    return-void

    .line 428
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private updateOemSettings()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 189
    iget-object v2, p0, Lcom/android/server/DeviceKeyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 190
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string v2, "oem_acc_blackscreen_gestrue_enable"

    const/4 v5, -0x2

    invoke-static {v1, v2, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iput v2, p0, Lcom/android/server/DeviceKeyHandler;->mBlackKeySettingState:I

    .line 194
    const-string v2, "DeviceKeyHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " updateOemSettings  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/DeviceKeyHandler;->mBlackKeySettingState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget v2, p0, Lcom/android/server/DeviceKeyHandler;->mBlackKeySettingState:I

    const/4 v5, 0x7

    invoke-static {v2, v5}, Lcom/android/server/DeviceKeyHandler;->getOffset(II)I

    move-result v2

    if-ne v2, v3, :cond_1

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/server/DeviceKeyHandler;->mDoubleScreenOn:Z

    .line 197
    iget v2, p0, Lcom/android/server/DeviceKeyHandler;->mBlackKeySettingState:I

    const/4 v5, 0x6

    invoke-static {v2, v5}, Lcom/android/server/DeviceKeyHandler;->getOffset(II)I

    move-result v2

    if-ne v2, v3, :cond_2

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/android/server/DeviceKeyHandler;->mStartCamera:Z

    .line 198
    iget v2, p0, Lcom/android/server/DeviceKeyHandler;->mBlackKeySettingState:I

    const/4 v5, 0x5

    invoke-static {v2, v5}, Lcom/android/server/DeviceKeyHandler;->getOffset(II)I

    move-result v2

    if-ne v2, v3, :cond_3

    move v2, v3

    :goto_2
    iput-boolean v2, p0, Lcom/android/server/DeviceKeyHandler;->mMusic_control:Z

    .line 199
    iget v2, p0, Lcom/android/server/DeviceKeyHandler;->mBlackKeySettingState:I

    const/4 v5, 0x4

    invoke-static {v2, v5}, Lcom/android/server/DeviceKeyHandler;->getOffset(II)I

    move-result v2

    if-ne v2, v3, :cond_4

    move v2, v3

    :goto_3
    iput-boolean v2, p0, Lcom/android/server/DeviceKeyHandler;->mMusic_prev:Z

    .line 200
    iget v2, p0, Lcom/android/server/DeviceKeyHandler;->mBlackKeySettingState:I

    const/4 v5, 0x3

    invoke-static {v2, v5}, Lcom/android/server/DeviceKeyHandler;->getOffset(II)I

    move-result v2

    if-ne v2, v3, :cond_5

    move v2, v3

    :goto_4
    iput-boolean v2, p0, Lcom/android/server/DeviceKeyHandler;->mMusic_next:Z

    .line 202
    iget v2, p0, Lcom/android/server/DeviceKeyHandler;->mBlackKeySettingState:I

    invoke-static {v2, v3}, Lcom/android/server/DeviceKeyHandler;->getOffset(II)I

    move-result v2

    if-ne v2, v3, :cond_6

    move v2, v3

    :goto_5
    iput-boolean v2, p0, Lcom/android/server/DeviceKeyHandler;->mMusic_pause:Z

    .line 203
    iget v2, p0, Lcom/android/server/DeviceKeyHandler;->mBlackKeySettingState:I

    invoke-static {v2, v4}, Lcom/android/server/DeviceKeyHandler;->getOffset(II)I

    move-result v2

    if-ne v2, v3, :cond_7

    move v2, v3

    :goto_6
    iput-boolean v2, p0, Lcom/android/server/DeviceKeyHandler;->mStartFlash:Z

    .line 204
    sget-object v2, Lcom/android/server/DeviceKeyHandler;->BLACK_ENBALE_PATH:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/DeviceKeyHandler;->mBlackKeySettingState:I

    invoke-static {v2, v5}, Lcom/android/server/FileUtils;->writeIntLine(Ljava/lang/String;I)Z

    .line 206
    iget v2, p0, Lcom/android/server/DeviceKeyHandler;->mBlackKeySettingState:I

    if-nez v2, :cond_8

    .line 207
    iput-boolean v4, p0, Lcom/android/server/DeviceKeyHandler;->mBlackEnabelState:Z

    .line 209
    :try_start_0
    iget-object v2, p0, Lcom/android/server/DeviceKeyHandler;->mService:Lcom/oem/os/IOemExService;

    iget-object v3, p0, Lcom/android/server/DeviceKeyHandler;->mBlackEvent:Lcom/oem/os/IOemExInputCallBack$Stub;

    invoke-interface {v2, v3}, Lcom/oem/os/IOemExService;->unregisterInputEvent(Lcom/oem/os/IOemExInputCallBack;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    :cond_0
    :goto_7
    return-void

    :cond_1
    move v2, v4

    .line 196
    goto :goto_0

    :cond_2
    move v2, v4

    .line 197
    goto :goto_1

    :cond_3
    move v2, v4

    .line 198
    goto :goto_2

    :cond_4
    move v2, v4

    .line 199
    goto :goto_3

    :cond_5
    move v2, v4

    .line 200
    goto :goto_4

    :cond_6
    move v2, v4

    .line 202
    goto :goto_5

    :cond_7
    move v2, v4

    .line 203
    goto :goto_6

    .line 210
    :catch_0
    move-exception v0

    .line 212
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_7

    .line 214
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_8
    iget-boolean v2, p0, Lcom/android/server/DeviceKeyHandler;->mBlackEnabelState:Z

    if-nez v2, :cond_0

    .line 215
    iput-boolean v3, p0, Lcom/android/server/DeviceKeyHandler;->mBlackEnabelState:Z

    .line 217
    :try_start_1
    iget-object v2, p0, Lcom/android/server/DeviceKeyHandler;->mService:Lcom/oem/os/IOemExService;

    iget-object v3, p0, Lcom/android/server/DeviceKeyHandler;->mBlackEvent:Lcom/oem/os/IOemExInputCallBack$Stub;

    const/16 v4, 0x86

    invoke-interface {v2, v3, v4}, Lcom/oem/os/IOemExService;->registerInputEvent(Lcom/oem/os/IOemExInputCallBack;I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_7

    .line 218
    :catch_1
    move-exception v0

    .line 220
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_7
.end method


# virtual methods
.method public SystemReady()V
    .locals 7

    .prologue
    .line 134
    iget-object v3, p0, Lcom/android/server/DeviceKeyHandler;->mService:Lcom/oem/os/IOemExService;

    if-nez v3, :cond_0

    .line 135
    const-string v3, "OEMExService"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/oem/os/IOemExService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oem/os/IOemExService;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/DeviceKeyHandler;->mService:Lcom/oem/os/IOemExService;

    .line 138
    :cond_0
    iget-object v3, p0, Lcom/android/server/DeviceKeyHandler;->mObserver:Lcom/android/server/DeviceKeyHandler$SettingsObserver;

    invoke-virtual {v3}, Lcom/android/server/DeviceKeyHandler$SettingsObserver;->observe()V

    .line 141
    const/4 v2, 0x0

    .line 143
    .local v2, "info":Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v3, p0, Lcom/android/server/DeviceKeyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.netease.cloudmusic"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 150
    :goto_0
    if-eqz v2, :cond_1

    .line 152
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    const-string v4, "com.netease.cloudmusic"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v3, v4, v5, v6}, Landroid/content/pm/IPackageManager;->setPackageStoppedState(Ljava/lang/String;ZI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 160
    :cond_1
    :goto_1
    return-void

    .line 145
    :catch_0
    move-exception v1

    .line 147
    .local v1, "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    .line 148
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 154
    .end local v1    # "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v0

    .line 156
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method
