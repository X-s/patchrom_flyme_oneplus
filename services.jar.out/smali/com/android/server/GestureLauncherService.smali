.class public Lcom/android/server/GestureLauncherService;
.super Lcom/android/server/SystemService;
.source "GestureLauncherService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/GestureLauncherService$1;,
        Lcom/android/server/GestureLauncherService$2;,
        Lcom/android/server/GestureLauncherService$GestureEventListener;,
        Lcom/android/server/GestureLauncherService$MultiTapHandler;
    }
.end annotation


# static fields
.field private static final CAMERA_POWER_DOUBLE_TAP_MAX_TIME_MS:J = 0x190L

.field private static final DBG:Z = false

.field private static final EMERGENCY_CALL_POWER_KEY_TAP_INTERVAL:J = 0x190L

.field private static final MSG_MULTI_TAP_TIMEOUT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "GestureLauncherService"


# instance fields
.field private mCameraDoubleTapPowerEnabled:Z

.field private mCameraGestureLastEventTime:J

.field private mCameraGestureOnTimeMs:J

.field private mCameraGestureSensor1LastOnTimeMs:J

.field private mCameraGestureSensor2LastOnTimeMs:J

.field private mCameraLaunchLastEventExtra:I

.field private mCameraLaunchSensor:Landroid/hardware/Sensor;

.field private mContext:Landroid/content/Context;

.field private mDuration:J

.field private mEmergencyNumber:Ljava/lang/String;

.field private final mGestureListener:Lcom/android/server/GestureLauncherService$GestureEventListener;

.field private mHandler:Lcom/android/server/GestureLauncherService$MultiTapHandler;

.field private mHits:[J

.field private mIsEmergencyOnPowerKeyTapEnabled:Z

.field private mLastPowerDown:J

.field private mPowerKeyCnt:I

.field private mRegistered:Z

.field private final mSettingObserver:Landroid/database/ContentObserver;

.field private mUserId:I

.field private final mUserReceiver:Landroid/content/BroadcastReceiver;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static synthetic -get0(Lcom/android/server/GestureLauncherService;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureLastEventTime:J

    return-wide v0
.end method

.method static synthetic -get1(Lcom/android/server/GestureLauncherService;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureOnTimeMs:J

    return-wide v0
.end method

.method static synthetic -get2(Lcom/android/server/GestureLauncherService;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureSensor1LastOnTimeMs:J

    return-wide v0
.end method

.method static synthetic -get3(Lcom/android/server/GestureLauncherService;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureSensor2LastOnTimeMs:J

    return-wide v0
.end method

.method static synthetic -get4(Lcom/android/server/GestureLauncherService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchLastEventExtra:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/server/GestureLauncherService;)Landroid/hardware/Sensor;
    .locals 1

    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchSensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/GestureLauncherService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/GestureLauncherService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/GestureLauncherService;->mRegistered:Z

    return v0
.end method

.method static synthetic -get8(Lcom/android/server/GestureLauncherService;)Landroid/database/ContentObserver;
    .locals 1

    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mSettingObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/GestureLauncherService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/server/GestureLauncherService;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureLastEventTime:J

    return-wide p1
.end method

.method static synthetic -set1(Lcom/android/server/GestureLauncherService;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureSensor1LastOnTimeMs:J

    return-wide p1
.end method

.method static synthetic -set2(Lcom/android/server/GestureLauncherService;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureSensor2LastOnTimeMs:J

    return-wide p1
.end method

.method static synthetic -set3(Lcom/android/server/GestureLauncherService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchLastEventExtra:I

    return p1
.end method

.method static synthetic -set4(Lcom/android/server/GestureLauncherService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/GestureLauncherService;->mPowerKeyCnt:I

    return p1
.end method

.method static synthetic -set5(Lcom/android/server/GestureLauncherService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/GestureLauncherService;ZI)Z
    .locals 1
    .param p1, "useWakelock"    # Z
    .param p2, "source"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/GestureLauncherService;->handleCameraLaunchGesture(ZI)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/GestureLauncherService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/GestureLauncherService;->registerContentObservers()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/GestureLauncherService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/GestureLauncherService;->updateCameraDoubleTapPowerEnabled()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/GestureLauncherService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/GestureLauncherService;->updateCameraRegistered()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v2, 0x0

    .line 139
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 71
    new-instance v0, Lcom/android/server/GestureLauncherService$GestureEventListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/GestureLauncherService$GestureEventListener;-><init>(Lcom/android/server/GestureLauncherService;Lcom/android/server/GestureLauncherService$GestureEventListener;)V

    iput-object v0, p0, Lcom/android/server/GestureLauncherService;->mGestureListener:Lcom/android/server/GestureLauncherService$GestureEventListener;

    .line 83
    iput-wide v2, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureOnTimeMs:J

    .line 86
    iput-wide v2, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureLastEventTime:J

    .line 93
    iput-wide v2, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureSensor1LastOnTimeMs:J

    .line 103
    iput-wide v2, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureSensor2LastOnTimeMs:J

    .line 109
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchLastEventExtra:I

    .line 410
    new-instance v0, Lcom/android/server/GestureLauncherService$1;

    invoke-direct {v0, p0}, Lcom/android/server/GestureLauncherService$1;-><init>(Lcom/android/server/GestureLauncherService;)V

    iput-object v0, p0, Lcom/android/server/GestureLauncherService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    .line 423
    new-instance v0, Lcom/android/server/GestureLauncherService$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/GestureLauncherService$2;-><init>(Lcom/android/server/GestureLauncherService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/GestureLauncherService;->mSettingObserver:Landroid/database/ContentObserver;

    .line 140
    iput-object p1, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    .line 141
    new-instance v0, Lcom/android/server/GestureLauncherService$MultiTapHandler;

    invoke-direct {v0, p0}, Lcom/android/server/GestureLauncherService$MultiTapHandler;-><init>(Lcom/android/server/GestureLauncherService;)V

    iput-object v0, p0, Lcom/android/server/GestureLauncherService;->mHandler:Lcom/android/server/GestureLauncherService$MultiTapHandler;

    .line 138
    return-void
.end method

.method private getPhoneUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 529
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 530
    const v2, 0x50a0001

    .line 529
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 531
    .local v0, "number":Ljava/lang/String;
    const-string/jumbo v1, "tel"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method private handleCameraLaunchGesture(ZI)Z
    .locals 7
    .param p1, "useWakelock"    # Z
    .param p2, "source"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 388
    iget-object v4, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 389
    const-string/jumbo v5, "user_setup_complete"

    const/4 v6, -0x2

    .line 388
    invoke-static {v4, v5, v3, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-eqz v4, :cond_0

    move v1, v2

    .line 390
    .local v1, "userSetupComplete":Z
    :goto_0
    if-nez v1, :cond_1

    .line 394
    return v3

    .end local v1    # "userSetupComplete":Z
    :cond_0
    move v1, v3

    .line 388
    goto :goto_0

    .line 400
    .restart local v1    # "userSetupComplete":Z
    :cond_1
    if-eqz p1, :cond_2

    .line 402
    iget-object v3, p0, Lcom/android/server/GestureLauncherService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 405
    :cond_2
    const-class v3, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 404
    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 406
    .local v0, "service":Lcom/android/server/statusbar/StatusBarManagerInternal;
    invoke-interface {v0, p2}, Lcom/android/server/statusbar/StatusBarManagerInternal;->onCameraLaunchGestureDetected(I)V

    .line 407
    return v2
.end method

.method public static isCameraDoubleTapPowerEnabled(Landroid/content/res/Resources;)Z
    .locals 1
    .param p0, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 274
    const v0, 0x11200ae

    .line 273
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public static isCameraDoubleTapPowerSettingEnabled(Landroid/content/Context;I)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .prologue
    const/4 v0, 0x0

    .line 257
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/GestureLauncherService;->isCameraDoubleTapPowerEnabled(Landroid/content/res/Resources;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 258
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 259
    const-string/jumbo v2, "camera_double_tap_power_gesture_disabled"

    .line 258
    invoke-static {v1, v2, v0, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 257
    :cond_0
    return v0
.end method

.method public static isCameraLaunchEnabled(Landroid/content/res/Resources;)Z
    .locals 5
    .param p0, "resources"    # Landroid/content/res/Resources;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 267
    const v3, 0x10e00a4

    .line 266
    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 267
    const/4 v4, -0x1

    .line 266
    if-eq v3, v4, :cond_1

    move v0, v2

    .line 268
    .local v0, "configSet":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 269
    const-string/jumbo v3, "gesture.disable_camera_launch"

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 268
    :cond_0
    :goto_1
    return v1

    .end local v0    # "configSet":Z
    :cond_1
    move v0, v1

    .line 266
    goto :goto_0

    .restart local v0    # "configSet":Z
    :cond_2
    move v1, v2

    .line 269
    goto :goto_1
.end method

.method public static isCameraLaunchSettingEnabled(Landroid/content/Context;I)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .prologue
    const/4 v0, 0x0

    .line 251
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/GestureLauncherService;->isCameraLaunchEnabled(Landroid/content/res/Resources;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 252
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 253
    const-string/jumbo v2, "camera_gesture_disabled"

    .line 252
    invoke-static {v1, v2, v0, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 251
    :cond_0
    return v0
.end method

.method private isEmergencyAffordanceNeeded()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 543
    iget-object v1, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 544
    const-string/jumbo v2, "emergency_affordance_needed"

    .line 543
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isEmergencyOnpowerButtonTapEnabled(Landroid/content/res/Resources;)Z
    .locals 2
    .param p0, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 279
    const-string/jumbo v0, "persist.sys.ecall_pwr_key_press"

    const/4 v1, 0x0

    .line 278
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 281
    const v0, 0x11200cf

    .line 280
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 278
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isGestureLauncherEnabled(Landroid/content/res/Resources;)Z
    .locals 1
    .param p0, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 288
    invoke-static {p0}, Lcom/android/server/GestureLauncherService;->isCameraLaunchEnabled(Landroid/content/res/Resources;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/server/GestureLauncherService;->isCameraDoubleTapPowerEnabled(Landroid/content/res/Resources;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 289
    invoke-static {p0}, Lcom/android/server/GestureLauncherService;->isEmergencyOnpowerButtonTapEnabled(Landroid/content/res/Resources;)Z

    move-result v0

    .line 288
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private performEmergencyCall(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 535
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.CALL_EMERGENCY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 536
    .local v0, "intent":Landroid/content/Intent;
    invoke-direct {p0, p1}, Lcom/android/server/GestureLauncherService;->getPhoneUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 537
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 538
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 539
    const/4 v1, 0x1

    return v1
.end method

.method private registerCameraLaunchGesture(Landroid/content/res/Resources;)V
    .locals 8
    .param p1, "resources"    # Landroid/content/res/Resources;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 213
    iget-boolean v4, p0, Lcom/android/server/GestureLauncherService;->mRegistered:Z

    if-eqz v4, :cond_0

    .line 214
    return-void

    .line 216
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureOnTimeMs:J

    .line 217
    iget-wide v4, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureOnTimeMs:J

    iput-wide v4, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureLastEventTime:J

    .line 218
    iget-object v4, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    .line 219
    const-string/jumbo v5, "sensor"

    .line 218
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager;

    .line 221
    .local v2, "sensorManager":Landroid/hardware/SensorManager;
    const v4, 0x10e00a4

    .line 220
    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 222
    .local v0, "cameraLaunchGestureId":I
    const/4 v4, -0x1

    if-eq v0, v4, :cond_1

    .line 223
    iput-boolean v6, p0, Lcom/android/server/GestureLauncherService;->mRegistered:Z

    .line 225
    const v4, 0x104006c

    .line 224
    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 226
    .local v3, "sensorName":Ljava/lang/String;
    invoke-virtual {v2, v0, v7}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchSensor:Landroid/hardware/Sensor;

    .line 233
    iget-object v4, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchSensor:Landroid/hardware/Sensor;

    if-eqz v4, :cond_1

    .line 234
    iget-object v4, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchSensor:Landroid/hardware/Sensor;

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getStringType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 235
    iget-object v4, p0, Lcom/android/server/GestureLauncherService;->mGestureListener:Lcom/android/server/GestureLauncherService$GestureEventListener;

    .line 236
    iget-object v5, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchSensor:Landroid/hardware/Sensor;

    .line 235
    invoke-virtual {v2, v4, v5, v6}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/GestureLauncherService;->mRegistered:Z

    .line 212
    .end local v3    # "sensorName":Ljava/lang/String;
    :cond_1
    return-void

    .line 238
    .restart local v3    # "sensorName":Ljava/lang/String;
    :cond_2
    const-string/jumbo v4, "Wrong configuration. Sensor type and sensor string type don\'t match: %s in resources, %s in the sensor."

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 240
    aput-object v3, v5, v6

    iget-object v6, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchSensor:Landroid/hardware/Sensor;

    invoke-virtual {v6}, Landroid/hardware/Sensor;->getStringType()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    .line 238
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 241
    .local v1, "message":Ljava/lang/String;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private registerContentObservers()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 170
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 171
    const-string/jumbo v1, "camera_gesture_disabled"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 172
    iget-object v2, p0, Lcom/android/server/GestureLauncherService;->mSettingObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    .line 170
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 173
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 174
    const-string/jumbo v1, "camera_double_tap_power_gesture_disabled"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 175
    iget-object v2, p0, Lcom/android/server/GestureLauncherService;->mSettingObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    .line 173
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 169
    return-void
.end method

.method private unregisterCameraLaunchGesture()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    .line 195
    iget-boolean v1, p0, Lcom/android/server/GestureLauncherService;->mRegistered:Z

    if-eqz v1, :cond_0

    .line 196
    iput-boolean v4, p0, Lcom/android/server/GestureLauncherService;->mRegistered:Z

    .line 197
    iput-wide v2, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureOnTimeMs:J

    .line 198
    iput-wide v2, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureLastEventTime:J

    .line 199
    iput-wide v2, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureSensor1LastOnTimeMs:J

    .line 200
    iput-wide v2, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureSensor2LastOnTimeMs:J

    .line 201
    iput v4, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchLastEventExtra:I

    .line 203
    iget-object v1, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    .line 204
    const-string/jumbo v2, "sensor"

    .line 203
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 205
    .local v0, "sensorManager":Landroid/hardware/SensorManager;
    iget-object v1, p0, Lcom/android/server/GestureLauncherService;->mGestureListener:Lcom/android/server/GestureLauncherService$GestureEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 194
    .end local v0    # "sensorManager":Landroid/hardware/SensorManager;
    :cond_0
    return-void
.end method

.method private updateCameraDoubleTapPowerEnabled()V
    .locals 3

    .prologue
    .line 188
    iget-object v1, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    invoke-static {v1, v2}, Lcom/android/server/GestureLauncherService;->isCameraDoubleTapPowerSettingEnabled(Landroid/content/Context;I)Z

    move-result v0

    .line 189
    .local v0, "enabled":Z
    monitor-enter p0

    .line 190
    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/GestureLauncherService;->mCameraDoubleTapPowerEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 187
    return-void

    .line 189
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private updateCameraRegistered()V
    .locals 3

    .prologue
    .line 179
    iget-object v1, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 180
    .local v0, "resources":Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    invoke-static {v1, v2}, Lcom/android/server/GestureLauncherService;->isCameraLaunchSettingEnabled(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 181
    invoke-direct {p0, v0}, Lcom/android/server/GestureLauncherService;->registerCameraLaunchGesture(Landroid/content/res/Resources;)V

    .line 178
    :goto_0
    return-void

    .line 183
    :cond_0
    invoke-direct {p0}, Lcom/android/server/GestureLauncherService;->unregisterCameraLaunchGesture()V

    goto :goto_0
.end method

.method private updateEmergencyCallTapPowerEnabled()V
    .locals 6

    .prologue
    .line 293
    iget-object v2, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 295
    .local v1, "resources":Landroid/content/res/Resources;
    invoke-static {v1}, Lcom/android/server/GestureLauncherService;->isEmergencyOnpowerButtonTapEnabled(Landroid/content/res/Resources;)Z

    move-result v2

    .line 294
    iput-boolean v2, p0, Lcom/android/server/GestureLauncherService;->mIsEmergencyOnPowerKeyTapEnabled:Z

    .line 297
    const v2, 0x104007a

    .line 296
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/GestureLauncherService;->mEmergencyNumber:Ljava/lang/String;

    .line 299
    const v2, 0x10e00b3

    .line 298
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 300
    .local v0, "hits":I
    int-to-long v2, v0

    const-wide/16 v4, 0x190

    mul-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/GestureLauncherService;->mDuration:J

    .line 301
    new-array v2, v0, [J

    iput-object v2, p0, Lcom/android/server/GestureLauncherService;->mHits:[J

    .line 302
    const-string/jumbo v2, "GestureLauncherService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Gesture launcher mEmergencyNumber = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 303
    iget-object v4, p0, Lcom/android/server/GestureLauncherService;->mEmergencyNumber:Ljava/lang/String;

    .line 302
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 303
    const-string/jumbo v4, " hits = "

    .line 302
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    return-void
.end method


# virtual methods
.method public interceptPowerKeyDown(Landroid/view/KeyEvent;ZLandroid/util/MutableBoolean;)Z
    .locals 16
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "interactive"    # Z
    .param p3, "outLaunched"    # Landroid/util/MutableBoolean;

    .prologue
    .line 308
    const/4 v8, 0x0

    .line 309
    .local v8, "launched":Z
    const/4 v6, 0x0

    .line 311
    .local v6, "intercept":Z
    const/4 v7, 0x0

    .line 313
    .local v7, "launchEmergency":Z
    monitor-enter p0

    .line 314
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/server/GestureLauncherService;->mLastPowerDown:J

    sub-long v2, v10, v12

    .line 318
    .local v2, "doubleTapInterval":J
    invoke-direct/range {p0 .. p0}, Lcom/android/server/GestureLauncherService;->isEmergencyAffordanceNeeded()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 319
    const-wide/16 v10, 0x190

    cmp-long v10, v2, v10

    if-gez v10, :cond_4

    .line 320
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/GestureLauncherService;->mPowerKeyCnt:I

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/server/GestureLauncherService;->mPowerKeyCnt:I

    .line 322
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/GestureLauncherService;->mHandler:Lcom/android/server/GestureLauncherService$MultiTapHandler;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/server/GestureLauncherService$MultiTapHandler;->removeMessages(I)V

    .line 323
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/GestureLauncherService;->mHandler:Lcom/android/server/GestureLauncherService$MultiTapHandler;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/server/GestureLauncherService$MultiTapHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    .line 324
    .local v9, "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/GestureLauncherService;->mHandler:Lcom/android/server/GestureLauncherService$MultiTapHandler;

    const-wide/16 v12, 0x190

    invoke-virtual {v10, v9, v12, v13}, Lcom/android/server/GestureLauncherService$MultiTapHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 326
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/GestureLauncherService;->mPowerKeyCnt:I

    const/4 v11, 0x2

    if-lt v10, v11, :cond_0

    .line 328
    const/4 v7, 0x1

    .line 329
    move/from16 v6, p2

    .line 350
    .end local v6    # "intercept":Z
    .end local v9    # "msg":Landroid/os/Message;
    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v10

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/android/server/GestureLauncherService;->mLastPowerDown:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 352
    if-eqz v8, :cond_2

    .line 353
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/android/server/GestureLauncherService;->mIsEmergencyOnPowerKeyTapEnabled:Z

    if-eqz v10, :cond_1

    .line 354
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/GestureLauncherService;->mEmergencyNumber:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 361
    :cond_1
    const-string/jumbo v10, "GestureLauncherService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Power button double tap gesture detected, launching camera. Interval="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 362
    const-string/jumbo v12, "ms"

    .line 361
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    const/4 v10, 0x0

    .line 364
    const/4 v11, 0x1

    .line 363
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/android/server/GestureLauncherService;->handleCameraLaunchGesture(ZI)Z

    move-result v8

    .line 365
    .local v8, "launched":Z
    if-eqz v8, :cond_2

    .line 366
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    .line 368
    long-to-int v11, v2

    .line 367
    const/16 v12, 0xff

    .line 366
    invoke-static {v10, v12, v11}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 373
    .end local v8    # "launched":Z
    :cond_2
    :goto_1
    if-eqz v7, :cond_3

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/GestureLauncherService;->mPowerKeyCnt:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_3

    .line 374
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/GestureLauncherService;->getContext()Landroid/content/Context;

    move-result-object v10

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/server/GestureLauncherService;->performEmergencyCall(Landroid/content/Context;)Z

    .line 377
    :cond_3
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    const-string/jumbo v11, "power_double_tap_interval"

    long-to-int v12, v2

    invoke-static {v10, v11, v12}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 379
    move-object/from16 v0, p3

    iput-boolean v8, v0, Landroid/util/MutableBoolean;->value:Z

    .line 381
    if-eqz v6, :cond_9

    if-nez v8, :cond_8

    .end local v7    # "launchEmergency":Z
    :goto_2
    return v7

    .line 333
    .restart local v6    # "intercept":Z
    .restart local v7    # "launchEmergency":Z
    .local v8, "launched":Z
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/android/server/GestureLauncherService;->mIsEmergencyOnPowerKeyTapEnabled:Z

    if-eqz v10, :cond_6

    .line 334
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/GestureLauncherService;->mHits:[J

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/GestureLauncherService;->mHits:[J

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/GestureLauncherService;->mHits:[J

    array-length v12, v12

    add-int/lit8 v12, v12, -0x1

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-static {v10, v13, v11, v14, v12}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 335
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/GestureLauncherService;->mHits:[J

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/GestureLauncherService;->mHits:[J

    array-length v11, v11

    add-int/lit8 v11, v11, -0x1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    aput-wide v12, v10, v11

    .line 336
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/GestureLauncherService;->mHits:[J

    array-length v10, v10

    if-ge v4, v10, :cond_5

    .line 337
    const-string/jumbo v10, "GestureLauncherService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "mHits["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "] = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/GestureLauncherService;->mHits:[J

    aget-wide v12, v12, v4

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "ms"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 339
    :cond_5
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/GestureLauncherService;->mHits:[J

    const/4 v11, 0x0

    aget-wide v10, v10, v11

    .line 340
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/server/GestureLauncherService;->mDuration:J

    sub-long/2addr v12, v14

    .line 339
    cmp-long v10, v10, v12

    if-ltz v10, :cond_0

    .line 341
    const/4 v8, 0x1

    .line 342
    move/from16 v6, p2

    .line 343
    .local v6, "intercept":Z
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/GestureLauncherService;->mHits:[J

    const-wide/16 v12, 0x0

    invoke-static {v10, v12, v13}, Ljava/util/Arrays;->fill([JJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 313
    .end local v2    # "doubleTapInterval":J
    .end local v4    # "i":I
    .end local v6    # "intercept":Z
    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10

    .line 345
    .restart local v2    # "doubleTapInterval":J
    .local v6, "intercept":Z
    :cond_6
    :try_start_2
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/android/server/GestureLauncherService;->mCameraDoubleTapPowerEnabled:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v10, :cond_0

    .line 346
    const-wide/16 v10, 0x190

    cmp-long v10, v2, v10

    if-gez v10, :cond_0

    .line 347
    const/4 v8, 0x1

    .line 348
    move/from16 v6, p2

    .local v6, "intercept":Z
    goto/16 :goto_0

    .line 355
    .end local v6    # "intercept":Z
    :cond_7
    const-string/jumbo v10, "GestureLauncherService"

    const-string/jumbo v11, "Power button Triple tap gesture detected, launching Emergency Call"

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v10, "android.intent.action.CALL_PRIVILEGED"

    .line 357
    const-string/jumbo v11, "tel"

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/GestureLauncherService;->mEmergencyNumber:Ljava/lang/String;

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 356
    invoke-direct {v5, v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 358
    .local v5, "intent":Landroid/content/Intent;
    const/high16 v10, 0x10000000

    invoke-virtual {v5, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 359
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/GestureLauncherService;->getContext()Landroid/content/Context;

    move-result-object v10

    sget-object v11, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v10, v5, v11}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_1

    .line 381
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v8    # "launched":Z
    :cond_8
    const/4 v7, 0x1

    goto/16 :goto_2

    :cond_9
    const/4 v7, 0x0

    goto/16 :goto_2
.end method

.method public onBootPhase(I)V
    .locals 6
    .param p1, "phase"    # I

    .prologue
    .line 149
    const/16 v2, 0x258

    if-ne p1, v2, :cond_1

    .line 150
    iget-object v2, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 151
    .local v1, "resources":Landroid/content/res/Resources;
    invoke-static {v1}, Lcom/android/server/GestureLauncherService;->isGestureLauncherEnabled(Landroid/content/res/Resources;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 153
    return-void

    .line 156
    :cond_0
    iget-object v2, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    .line 157
    const-string/jumbo v3, "power"

    .line 156
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 159
    .local v0, "powerManager":Landroid/os/PowerManager;
    const-string/jumbo v2, "GestureLauncherService"

    .line 158
    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/GestureLauncherService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 160
    invoke-direct {p0}, Lcom/android/server/GestureLauncherService;->updateCameraRegistered()V

    .line 161
    invoke-direct {p0}, Lcom/android/server/GestureLauncherService;->updateCameraDoubleTapPowerEnabled()V

    .line 162
    invoke-direct {p0}, Lcom/android/server/GestureLauncherService;->updateEmergencyCallTapPowerEnabled()V

    .line 163
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    iput v2, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    .line 164
    iget-object v2, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/GestureLauncherService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string/jumbo v5, "android.intent.action.USER_SWITCHED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 165
    invoke-direct {p0}, Lcom/android/server/GestureLauncherService;->registerContentObservers()V

    .line 148
    .end local v0    # "powerManager":Landroid/os/PowerManager;
    .end local v1    # "resources":Landroid/content/res/Resources;
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 145
    const-class v0, Lcom/android/server/GestureLauncherService;

    invoke-static {v0, p0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 144
    return-void
.end method
