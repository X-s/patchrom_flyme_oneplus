.class public Lcom/android/server/GestureLauncherService;
.super Lcom/android/server/SystemService;
.source "GestureLauncherService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/GestureLauncherService$MultiTapHandler;,
        Lcom/android/server/GestureLauncherService$GestureEventListener;
    }
.end annotation


# static fields
.field private static final CAMERA_POWER_DOUBLE_TAP_MAX_TIME_MS:J = 0x190L

.field private static final CAMERA_POWER_DOUBLE_TAP_MIN_TIME_MS:J = 0x78L

.field private static final DBG:Z = false

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

.field private final mGestureListener:Lcom/android/server/GestureLauncherService$GestureEventListener;

.field private mHandler:Lcom/android/server/GestureLauncherService$MultiTapHandler;

.field private mLastPowerDown:J

.field private mPowerKeyCnt:I

.field private mRegistered:Z

.field private final mSettingObserver:Landroid/database/ContentObserver;

.field private mUserId:I

.field private final mUserReceiver:Landroid/content/BroadcastReceiver;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v2, 0x0

    .line 118
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 65
    new-instance v0, Lcom/android/server/GestureLauncherService$GestureEventListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/GestureLauncherService$GestureEventListener;-><init>(Lcom/android/server/GestureLauncherService;Lcom/android/server/GestureLauncherService$1;)V

    iput-object v0, p0, Lcom/android/server/GestureLauncherService;->mGestureListener:Lcom/android/server/GestureLauncherService$GestureEventListener;

    .line 77
    iput-wide v2, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureOnTimeMs:J

    .line 80
    iput-wide v2, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureLastEventTime:J

    .line 87
    iput-wide v2, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureSensor1LastOnTimeMs:J

    .line 97
    iput-wide v2, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureSensor2LastOnTimeMs:J

    .line 103
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchLastEventExtra:I

    .line 342
    new-instance v0, Lcom/android/server/GestureLauncherService$1;

    invoke-direct {v0, p0}, Lcom/android/server/GestureLauncherService$1;-><init>(Lcom/android/server/GestureLauncherService;)V

    iput-object v0, p0, Lcom/android/server/GestureLauncherService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    .line 355
    new-instance v0, Lcom/android/server/GestureLauncherService$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/GestureLauncherService$2;-><init>(Lcom/android/server/GestureLauncherService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/GestureLauncherService;->mSettingObserver:Landroid/database/ContentObserver;

    .line 119
    iput-object p1, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    .line 120
    new-instance v0, Lcom/android/server/GestureLauncherService$MultiTapHandler;

    invoke-direct {v0, p0}, Lcom/android/server/GestureLauncherService$MultiTapHandler;-><init>(Lcom/android/server/GestureLauncherService;)V

    iput-object v0, p0, Lcom/android/server/GestureLauncherService;->mHandler:Lcom/android/server/GestureLauncherService$MultiTapHandler;

    .line 121
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/GestureLauncherService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/GestureLauncherService;

    .prologue
    .line 53
    iget v0, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/GestureLauncherService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/GestureLauncherService;

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureOnTimeMs:J

    return-wide v0
.end method

.method static synthetic access$102(Lcom/android/server/GestureLauncherService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/GestureLauncherService;
    .param p1, "x1"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/GestureLauncherService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/GestureLauncherService;

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureLastEventTime:J

    return-wide v0
.end method

.method static synthetic access$1102(Lcom/android/server/GestureLauncherService;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/GestureLauncherService;
    .param p1, "x1"    # J

    .prologue
    .line 53
    iput-wide p1, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureLastEventTime:J

    return-wide p1
.end method

.method static synthetic access$1200(Lcom/android/server/GestureLauncherService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/GestureLauncherService;

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureSensor1LastOnTimeMs:J

    return-wide v0
.end method

.method static synthetic access$1202(Lcom/android/server/GestureLauncherService;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/GestureLauncherService;
    .param p1, "x1"    # J

    .prologue
    .line 53
    iput-wide p1, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureSensor1LastOnTimeMs:J

    return-wide p1
.end method

.method static synthetic access$1300(Lcom/android/server/GestureLauncherService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/GestureLauncherService;

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureSensor2LastOnTimeMs:J

    return-wide v0
.end method

.method static synthetic access$1302(Lcom/android/server/GestureLauncherService;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/GestureLauncherService;
    .param p1, "x1"    # J

    .prologue
    .line 53
    iput-wide p1, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureSensor2LastOnTimeMs:J

    return-wide p1
.end method

.method static synthetic access$1400(Lcom/android/server/GestureLauncherService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/GestureLauncherService;

    .prologue
    .line 53
    iget v0, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchLastEventExtra:I

    return v0
.end method

.method static synthetic access$1402(Lcom/android/server/GestureLauncherService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/GestureLauncherService;
    .param p1, "x1"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchLastEventExtra:I

    return p1
.end method

.method static synthetic access$1502(Lcom/android/server/GestureLauncherService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/GestureLauncherService;
    .param p1, "x1"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/android/server/GestureLauncherService;->mPowerKeyCnt:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/GestureLauncherService;)Landroid/database/ContentObserver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/GestureLauncherService;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mSettingObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/GestureLauncherService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/GestureLauncherService;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/GestureLauncherService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/GestureLauncherService;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/server/GestureLauncherService;->registerContentObservers()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/GestureLauncherService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/GestureLauncherService;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/server/GestureLauncherService;->updateCameraRegistered()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/GestureLauncherService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/GestureLauncherService;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/server/GestureLauncherService;->updateCameraDoubleTapPowerEnabled()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/GestureLauncherService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/GestureLauncherService;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/android/server/GestureLauncherService;->mRegistered:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/GestureLauncherService;)Landroid/hardware/Sensor;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/GestureLauncherService;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchSensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/GestureLauncherService;ZI)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/GestureLauncherService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/android/server/GestureLauncherService;->handleCameraLaunchGesture(ZI)Z

    move-result v0

    return v0
.end method

.method private getPhoneUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 461
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x50a0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 463
    .local v0, "number":Ljava/lang/String;
    const-string v1, "tel"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method private handleCameraLaunchGesture(ZI)Z
    .locals 6
    .param p1, "useWakelock"    # Z
    .param p2, "source"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 320
    iget-object v4, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "user_setup_complete"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_0

    move v1, v3

    .line 322
    .local v1, "userSetupComplete":Z
    :goto_0
    if-nez v1, :cond_1

    .line 339
    :goto_1
    return v2

    .end local v1    # "userSetupComplete":Z
    :cond_0
    move v1, v2

    .line 320
    goto :goto_0

    .line 332
    .restart local v1    # "userSetupComplete":Z
    :cond_1
    if-eqz p1, :cond_2

    .line 334
    iget-object v2, p0, Lcom/android/server/GestureLauncherService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 336
    :cond_2
    const-class v2, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 338
    .local v0, "service":Lcom/android/server/statusbar/StatusBarManagerInternal;
    invoke-interface {v0, p2}, Lcom/android/server/statusbar/StatusBarManagerInternal;->onCameraLaunchGestureDetected(I)V

    move v2, v3

    .line 339
    goto :goto_1
.end method

.method public static isCameraDoubleTapPowerEnabled(Landroid/content/res/Resources;)Z
    .locals 1
    .param p0, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 252
    const v0, 0x11200b1

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

    .line 236
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/GestureLauncherService;->isCameraDoubleTapPowerEnabled(Landroid/content/res/Resources;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "camera_double_tap_power_gesture_disabled"

    invoke-static {v1, v2, v0, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isCameraLaunchEnabled(Landroid/content/res/Resources;)Z
    .locals 5
    .param p0, "resources"    # Landroid/content/res/Resources;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 245
    const v3, 0x10e00a4

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    move v0, v1

    .line 247
    .local v0, "configSet":Z
    :goto_0
    if-eqz v0, :cond_1

    const-string v3, "gesture.disable_camera_launch"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_1

    :goto_1
    return v1

    .end local v0    # "configSet":Z
    :cond_0
    move v0, v2

    .line 245
    goto :goto_0

    .restart local v0    # "configSet":Z
    :cond_1
    move v1, v2

    .line 247
    goto :goto_1
.end method

.method public static isCameraLaunchSettingEnabled(Landroid/content/Context;I)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .prologue
    const/4 v0, 0x0

    .line 230
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/GestureLauncherService;->isCameraLaunchEnabled(Landroid/content/res/Resources;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "camera_gesture_disabled"

    invoke-static {v1, v2, v0, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isEmergencyAffordanceNeeded()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 475
    iget-object v1, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "emergency_affordance_needed"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isGestureLauncherEnabled(Landroid/content/res/Resources;)Z
    .locals 1
    .param p0, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 260
    invoke-static {p0}, Lcom/android/server/GestureLauncherService;->isCameraLaunchEnabled(Landroid/content/res/Resources;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/server/GestureLauncherService;->isCameraDoubleTapPowerEnabled(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private performEmergencyCall(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 467
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_EMERGENCY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 468
    .local v0, "intent":Landroid/content/Intent;
    invoke-direct {p0, p1}, Lcom/android/server/GestureLauncherService;->getPhoneUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 469
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 470
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 471
    const/4 v1, 0x1

    return v1
.end method

.method private registerCameraLaunchGesture(Landroid/content/res/Resources;)V
    .locals 8
    .param p1, "resources"    # Landroid/content/res/Resources;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 192
    iget-boolean v4, p0, Lcom/android/server/GestureLauncherService;->mRegistered:Z

    if-eqz v4, :cond_1

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureOnTimeMs:J

    .line 196
    iget-wide v4, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureOnTimeMs:J

    iput-wide v4, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureLastEventTime:J

    .line 197
    iget-object v4, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    const-string v5, "sensor"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager;

    .line 199
    .local v2, "sensorManager":Landroid/hardware/SensorManager;
    const v4, 0x10e00a4

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 201
    .local v0, "cameraLaunchGestureId":I
    const/4 v4, -0x1

    if-eq v0, v4, :cond_0

    .line 202
    iput-boolean v6, p0, Lcom/android/server/GestureLauncherService;->mRegistered:Z

    .line 203
    const v4, 0x1040052

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 205
    .local v3, "sensorName":Ljava/lang/String;
    invoke-virtual {v2, v0, v7}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchSensor:Landroid/hardware/Sensor;

    .line 212
    iget-object v4, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchSensor:Landroid/hardware/Sensor;

    if-eqz v4, :cond_0

    .line 213
    iget-object v4, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchSensor:Landroid/hardware/Sensor;

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getStringType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 214
    iget-object v4, p0, Lcom/android/server/GestureLauncherService;->mGestureListener:Lcom/android/server/GestureLauncherService$GestureEventListener;

    iget-object v5, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchSensor:Landroid/hardware/Sensor;

    invoke-virtual {v2, v4, v5, v6}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/GestureLauncherService;->mRegistered:Z

    goto :goto_0

    .line 217
    :cond_2
    const-string v4, "Wrong configuration. Sensor type and sensor string type don\'t match: %s in resources, %s in the sensor."

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v6

    iget-object v6, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchSensor:Landroid/hardware/Sensor;

    invoke-virtual {v6}, Landroid/hardware/Sensor;->getStringType()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 220
    .local v1, "message":Ljava/lang/String;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private registerContentObservers()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 149
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "camera_gesture_disabled"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/GestureLauncherService;->mSettingObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 152
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "camera_double_tap_power_gesture_disabled"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/GestureLauncherService;->mSettingObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 155
    return-void
.end method

.method private unregisterCameraLaunchGesture()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    .line 174
    iget-boolean v1, p0, Lcom/android/server/GestureLauncherService;->mRegistered:Z

    if-eqz v1, :cond_0

    .line 175
    iput-boolean v4, p0, Lcom/android/server/GestureLauncherService;->mRegistered:Z

    .line 176
    iput-wide v2, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureOnTimeMs:J

    .line 177
    iput-wide v2, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureLastEventTime:J

    .line 178
    iput-wide v2, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureSensor1LastOnTimeMs:J

    .line 179
    iput-wide v2, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureSensor2LastOnTimeMs:J

    .line 180
    iput v4, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchLastEventExtra:I

    .line 182
    iget-object v1, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    const-string v2, "sensor"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 184
    .local v0, "sensorManager":Landroid/hardware/SensorManager;
    iget-object v1, p0, Lcom/android/server/GestureLauncherService;->mGestureListener:Lcom/android/server/GestureLauncherService$GestureEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 186
    .end local v0    # "sensorManager":Landroid/hardware/SensorManager;
    :cond_0
    return-void
.end method

.method private updateCameraDoubleTapPowerEnabled()V
    .locals 3

    .prologue
    .line 167
    iget-object v1, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    invoke-static {v1, v2}, Lcom/android/server/GestureLauncherService;->isCameraDoubleTapPowerSettingEnabled(Landroid/content/Context;I)Z

    move-result v0

    .line 168
    .local v0, "enabled":Z
    monitor-enter p0

    .line 169
    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/GestureLauncherService;->mCameraDoubleTapPowerEnabled:Z

    .line 170
    monitor-exit p0

    .line 171
    return-void

    .line 170
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateCameraRegistered()V
    .locals 3

    .prologue
    .line 158
    iget-object v1, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 159
    .local v0, "resources":Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    invoke-static {v1, v2}, Lcom/android/server/GestureLauncherService;->isCameraLaunchSettingEnabled(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 160
    invoke-direct {p0, v0}, Lcom/android/server/GestureLauncherService;->registerCameraLaunchGesture(Landroid/content/res/Resources;)V

    .line 164
    :goto_0
    return-void

    .line 162
    :cond_0
    invoke-direct {p0}, Lcom/android/server/GestureLauncherService;->unregisterCameraLaunchGesture()V

    goto :goto_0
.end method


# virtual methods
.method public interceptPowerKeyDown(Landroid/view/KeyEvent;Z)Z
    .locals 10
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "interactive"    # Z

    .prologue
    .line 264
    const/4 v4, 0x0

    .line 265
    .local v4, "launched":Z
    const/4 v2, 0x0

    .line 267
    .local v2, "intercept":Z
    const/4 v3, 0x0

    .line 269
    .local v3, "launchEmergency":Z
    monitor-enter p0

    .line 270
    :try_start_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/server/GestureLauncherService;->mLastPowerDown:J

    sub-long v0, v6, v8

    .line 273
    .local v0, "doubleTapInterval":J
    invoke-direct {p0}, Lcom/android/server/GestureLauncherService;->isEmergencyAffordanceNeeded()Z

    move-result v6

    if-eqz v6, :cond_4

    const-wide/16 v6, 0x190

    cmp-long v6, v0, v6

    if-gez v6, :cond_4

    const-wide/16 v6, 0x78

    cmp-long v6, v0, v6

    if-lez v6, :cond_4

    .line 276
    iget v6, p0, Lcom/android/server/GestureLauncherService;->mPowerKeyCnt:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/server/GestureLauncherService;->mPowerKeyCnt:I

    .line 278
    iget-object v6, p0, Lcom/android/server/GestureLauncherService;->mHandler:Lcom/android/server/GestureLauncherService$MultiTapHandler;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/server/GestureLauncherService$MultiTapHandler;->removeMessages(I)V

    .line 279
    iget-object v6, p0, Lcom/android/server/GestureLauncherService;->mHandler:Lcom/android/server/GestureLauncherService$MultiTapHandler;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/server/GestureLauncherService$MultiTapHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 280
    .local v5, "msg":Landroid/os/Message;
    iget-object v6, p0, Lcom/android/server/GestureLauncherService;->mHandler:Lcom/android/server/GestureLauncherService$MultiTapHandler;

    const-wide/16 v8, 0x190

    invoke-virtual {v6, v5, v8, v9}, Lcom/android/server/GestureLauncherService$MultiTapHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 282
    iget v6, p0, Lcom/android/server/GestureLauncherService;->mPowerKeyCnt:I

    const/4 v7, 0x2

    if-lt v6, v7, :cond_0

    .line 284
    const/4 v3, 0x1

    .line 285
    move v2, p2

    .line 295
    .end local v5    # "msg":Landroid/os/Message;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/GestureLauncherService;->mLastPowerDown:J

    .line 296
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 297
    if-eqz v4, :cond_1

    .line 298
    const-string v6, "GestureLauncherService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Power button double tap gesture detected, launching camera. Interval="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct {p0, v6, v7}, Lcom/android/server/GestureLauncherService;->handleCameraLaunchGesture(ZI)Z

    move-result v4

    .line 302
    if-eqz v4, :cond_1

    .line 303
    iget-object v6, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    const/16 v7, 0xff

    long-to-int v8, v0

    invoke-static {v6, v7, v8}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 308
    :cond_1
    if-eqz v3, :cond_2

    iget v6, p0, Lcom/android/server/GestureLauncherService;->mPowerKeyCnt:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    .line 309
    invoke-virtual {p0}, Lcom/android/server/GestureLauncherService;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/GestureLauncherService;->performEmergencyCall(Landroid/content/Context;)Z

    .line 312
    :cond_2
    iget-object v6, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    const-string v7, "power_double_tap_interval"

    long-to-int v8, v0

    invoke-static {v6, v7, v8}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 313
    if-eqz v2, :cond_5

    if-nez v4, :cond_3

    if-eqz v3, :cond_5

    :cond_3
    const/4 v6, 0x1

    :goto_1
    return v6

    .line 289
    :cond_4
    :try_start_1
    iget-boolean v6, p0, Lcom/android/server/GestureLauncherService;->mCameraDoubleTapPowerEnabled:Z

    if-eqz v6, :cond_0

    const-wide/16 v6, 0x190

    cmp-long v6, v0, v6

    if-gez v6, :cond_0

    const-wide/16 v6, 0x78

    cmp-long v6, v0, v6

    if-lez v6, :cond_0

    .line 292
    const/4 v4, 0x1

    .line 293
    move v2, p2

    goto :goto_0

    .line 296
    .end local v0    # "doubleTapInterval":J
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 313
    .restart local v0    # "doubleTapInterval":J
    :cond_5
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public onBootPhase(I)V
    .locals 6
    .param p1, "phase"    # I

    .prologue
    .line 128
    const/16 v2, 0x258

    if-ne p1, v2, :cond_0

    .line 129
    iget-object v2, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 130
    .local v1, "resources":Landroid/content/res/Resources;
    invoke-static {v1}, Lcom/android/server/GestureLauncherService;->isGestureLauncherEnabled(Landroid/content/res/Resources;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 146
    .end local v1    # "resources":Landroid/content/res/Resources;
    :cond_0
    :goto_0
    return-void

    .line 135
    .restart local v1    # "resources":Landroid/content/res/Resources;
    :cond_1
    iget-object v2, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 137
    .local v0, "powerManager":Landroid/os/PowerManager;
    const/4 v2, 0x1

    const-string v3, "GestureLauncherService"

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/GestureLauncherService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 139
    invoke-direct {p0}, Lcom/android/server/GestureLauncherService;->updateCameraRegistered()V

    .line 140
    invoke-direct {p0}, Lcom/android/server/GestureLauncherService;->updateCameraDoubleTapPowerEnabled()V

    .line 142
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    iput v2, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    .line 143
    iget-object v2, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/GestureLauncherService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.USER_SWITCHED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 144
    invoke-direct {p0}, Lcom/android/server/GestureLauncherService;->registerContentObservers()V

    goto :goto_0
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 124
    const-class v0, Lcom/android/server/GestureLauncherService;

    invoke-static {v0, p0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 125
    return-void
.end method
