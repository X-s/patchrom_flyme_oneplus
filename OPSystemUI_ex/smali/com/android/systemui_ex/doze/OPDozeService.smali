.class public Lcom/android/systemui_ex/doze/OPDozeService;
.super Landroid/service/dreams/DreamService;
.source "OPDozeService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui_ex/doze/OPDozeService$OnePlusProximityCheck;,
        Lcom/android/systemui_ex/doze/OPDozeService$TriggerSensor;
    }
.end annotation


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mBroadcastReceiverRegistered:Z

.field private mCarMode:Z

.field private final mContext:Landroid/content/Context;

.field private mDisplayStateSupported:Z

.field private final mDozeParameters:Lcom/android/systemui_ex/statusbar/phone/DozeParameters;

.field private mDreaming:Z

.field private mEarliestPulseDueToLight:J

.field private final mHandler:Landroid/os/Handler;

.field private mHost:Lcom/android/systemui_ex/doze/DozeHost;

.field private final mHostCallback:Lcom/android/systemui_ex/doze/DozeHost$Callback;

.field private mNotificationLightOn:Z

.field private mNotificationPulseTime:J

.field private mOneProximity:Lcom/android/systemui_ex/doze/OPDozeService$OnePlusProximityCheck;

.field private mPickupSensor:Lcom/android/systemui_ex/doze/OPDozeService$TriggerSensor;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPowerSaveActive:Z

.field private mPulsing:Z

.field private mScheduleResetsRemaining:I

.field private mSensors:Landroid/hardware/SensorManager;

.field private mSigMotionSensor:Lcom/android/systemui_ex/doze/OPDozeService$TriggerSensor;

.field private final mTag:Ljava/lang/String;

.field private mUiModeManager:Landroid/app/UiModeManager;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 98
    invoke-direct {p0}, Landroid/service/dreams/DreamService;-><init>()V

    .line 72
    const-string v0, "OPDozeService.%08x"

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/doze/OPDozeService;->mTag:Ljava/lang/String;

    .line 73
    iput-object p0, p0, Lcom/android/systemui_ex/doze/OPDozeService;->mContext:Landroid/content/Context;

    .line 74
    new-instance v0, Lcom/android/systemui_ex/statusbar/phone/DozeParameters;

    iget-object v1, p0, Lcom/android/systemui_ex/doze/OPDozeService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/DozeParameters;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui_ex/doze/OPDozeService;->mDozeParameters:Lcom/android/systemui_ex/statusbar/phone/DozeParameters;

    .line 75
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui_ex/doze/OPDozeService;->mHandler:Landroid/os/Handler;

    .line 398
    new-instance v0, Lcom/android/systemui_ex/doze/OPDozeService$3;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/doze/OPDozeService$3;-><init>(Lcom/android/systemui_ex/doze/OPDozeService;)V

    iput-object v0, p0, Lcom/android/systemui_ex/doze/OPDozeService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 423
    new-instance v0, Lcom/android/systemui_ex/doze/OPDozeService$4;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/doze/OPDozeService$4;-><init>(Lcom/android/systemui_ex/doze/OPDozeService;)V

    iput-object v0, p0, Lcom/android/systemui_ex/doze/OPDozeService;->mHostCallback:Lcom/android/systemui_ex/doze/DozeHost$Callback;

    .line 99
    iget-object v0, p0, Lcom/android/systemui_ex/doze/OPDozeService;->mTag:Ljava/lang/String;

    const-string v1, "new DozeService()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-virtual {p0, v4}, Lcom/android/systemui_ex/doze/OPDozeService;->setDebug(Z)V

    .line 101
    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui_ex/doze/OPDozeService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/doze/OPDozeService;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/android/systemui_ex/doze/OPDozeService;->mDreaming:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/systemui_ex/doze/OPDozeService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/doze/OPDozeService;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/android/systemui_ex/doze/OPDozeService;->mCarMode:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/systemui_ex/doze/OPDozeService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/doze/OPDozeService;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/android/systemui_ex/doze/OPDozeService;->mCarMode:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/systemui_ex/doze/OPDozeService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/doze/OPDozeService;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/systemui_ex/doze/OPDozeService;->finishForCarMode()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui_ex/doze/OPDozeService;J)V
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/doze/OPDozeService;
    .param p1, "x1"    # J

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/android/systemui_ex/doze/OPDozeService;->updateNotificationPulse(J)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/systemui_ex/doze/OPDozeService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/doze/OPDozeService;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/android/systemui_ex/doze/OPDozeService;->mPowerSaveActive:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/android/systemui_ex/doze/OPDozeService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/doze/OPDozeService;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/android/systemui_ex/doze/OPDozeService;->mPowerSaveActive:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/systemui_ex/doze/OPDozeService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/doze/OPDozeService;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/systemui_ex/doze/OPDozeService;->finishToSavePower()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/systemui_ex/doze/OPDozeService;)Landroid/hardware/SensorManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/doze/OPDozeService;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/systemui_ex/doze/OPDozeService;->mSensors:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic access$1600(Landroid/hardware/TriggerEvent;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/TriggerEvent;

    .prologue
    .line 52
    invoke-static {p0}, Lcom/android/systemui_ex/doze/OPDozeService;->triggerEventToString(Landroid/hardware/TriggerEvent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/systemui_ex/doze/OPDozeService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/doze/OPDozeService;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/systemui_ex/doze/OPDozeService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/systemui_ex/doze/OPDozeService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/systemui_ex/doze/OPDozeService;

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/android/systemui_ex/doze/OPDozeService;->mNotificationPulseTime:J

    return-wide v0
.end method

.method static synthetic access$1900(Lcom/android/systemui_ex/doze/OPDozeService;)Lcom/android/systemui_ex/statusbar/phone/DozeParameters;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/doze/OPDozeService;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/systemui_ex/doze/OPDozeService;->mDozeParameters:Lcom/android/systemui_ex/statusbar/phone/DozeParameters;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui_ex/doze/OPDozeService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/doze/OPDozeService;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/android/systemui_ex/doze/OPDozeService;->mPulsing:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/systemui_ex/doze/OPDozeService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/doze/OPDozeService;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/systemui_ex/doze/OPDozeService;->resetNotificationResets()V

    return-void
.end method

.method static synthetic access$202(Lcom/android/systemui_ex/doze/OPDozeService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/doze/OPDozeService;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/android/systemui_ex/doze/OPDozeService;->mPulsing:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/systemui_ex/doze/OPDozeService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/doze/OPDozeService;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/systemui_ex/doze/OPDozeService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui_ex/doze/OPDozeService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/doze/OPDozeService;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/systemui_ex/doze/OPDozeService;->turnDisplayOn()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui_ex/doze/OPDozeService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/doze/OPDozeService;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/systemui_ex/doze/OPDozeService;->turnDisplayOff()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui_ex/doze/OPDozeService;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/doze/OPDozeService;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/systemui_ex/doze/OPDozeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui_ex/doze/OPDozeService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/doze/OPDozeService;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/systemui_ex/doze/OPDozeService;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui_ex/doze/OPDozeService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/doze/OPDozeService;
    .param p1, "x1"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/doze/OPDozeService;->requestPulse(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui_ex/doze/OPDozeService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/doze/OPDozeService;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/android/systemui_ex/doze/OPDozeService;->mNotificationLightOn:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/systemui_ex/doze/OPDozeService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/doze/OPDozeService;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/doze/OPDozeService;->rescheduleNotificationPulse(Z)V

    return-void
.end method

.method private continuePulsing(I)V
    .locals 2
    .param p1, "reason"    # I

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/systemui_ex/doze/OPDozeService;->mHost:Lcom/android/systemui_ex/doze/DozeHost;

    new-instance v1, Lcom/android/systemui_ex/doze/OPDozeService$2;

    invoke-direct {v1, p0}, Lcom/android/systemui_ex/doze/OPDozeService$2;-><init>(Lcom/android/systemui_ex/doze/OPDozeService;)V

    invoke-interface {v0, v1, p1}, Lcom/android/systemui_ex/doze/DozeHost;->pulseWhileDozing(Lcom/android/systemui_ex/doze/DozeHost$PulseCallback;I)V

    .line 253
    return-void
.end method

.method private finishForCarMode()V
    .locals 2

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/systemui_ex/doze/OPDozeService;->mTag:Ljava/lang/String;

    const-string v1, "Exiting ambient mode, not allowed in car mode"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    invoke-virtual {p0}, Lcom/android/systemui_ex/doze/OPDozeService;->finish()V

    .line 273
    return-void
.end method

.method private finishToSavePower()V
    .locals 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/systemui_ex/doze/OPDozeService;->mTag:Ljava/lang/String;

    const-string v1, "Exiting ambient mode due to low power battery saver"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    invoke-virtual {p0}, Lcom/android/systemui_ex/doze/OPDozeService;->finish()V

    .line 268
    return-void
.end method

.method private listenForNotifications(Z)V
    .locals 2
    .param p1, "listen"    # Z

    .prologue
    .line 298
    if-eqz p1, :cond_0

    .line 299
    invoke-direct {p0}, Lcom/android/systemui_ex/doze/OPDozeService;->resetNotificationResets()V

    .line 300
    iget-object v0, p0, Lcom/android/systemui_ex/doze/OPDozeService;->mHost:Lcom/android/systemui_ex/doze/DozeHost;

    iget-object v1, p0, Lcom/android/systemui_ex/doze/OPDozeService;->mHostCallback:Lcom/android/systemui_ex/doze/DozeHost$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui_ex/doze/DozeHost;->addCallback(Lcom/android/systemui_ex/doze/DozeHost$Callback;)V

    .line 304
    :goto_0
    return-void

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/doze/OPDozeService;->mHost:Lcom/android/systemui_ex/doze/DozeHost;

    iget-object v1, p0, Lcom/android/systemui_ex/doze/OPDozeService;->mHostCallback:Lcom/android/systemui_ex/doze/DozeHost$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui_ex/doze/DozeHost;->removeCallback(Lcom/android/systemui_ex/doze/DozeHost$Callback;)V

    goto :goto_0
.end method

.method private listenForPulseSignals(Z)V
    .locals 3
    .param p1, "listen"    # Z

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/systemui_ex/doze/OPDozeService;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "listenForPulseSignals: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/doze/OPDozeService;->listenForNotifications(Z)V

    .line 279
    return-void
.end method

.method private notificationPulseIntent(J)Landroid/app/PendingIntent;
    .locals 5
    .param p1, "instance"    # J

    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/systemui_ex/doze/OPDozeService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.systemui.doze.notification_pulse"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui_ex/doze/OPDozeService;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "instance"

    invoke-virtual {v2, v3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x8000000

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private requestPulse(I)V
    .locals 3
    .param p1, "reason"    # I

    .prologue
    .line 221
    const-string v0, "OPDozeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestPulseL: mHost = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui_ex/doze/OPDozeService;->mHost:Lcom/android/systemui_ex/doze/DozeHost;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mDreaming = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui_ex/doze/OPDozeService;->mDreaming:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mPulsing = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui_ex/doze/OPDozeService;->mPulsing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v0, p0, Lcom/android/systemui_ex/doze/OPDozeService;->mHost:Lcom/android/systemui_ex/doze/DozeHost;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui_ex/doze/OPDozeService;->mDreaming:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui_ex/doze/OPDozeService;->mPulsing:Z

    if-nez v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/android/systemui_ex/doze/OPDozeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 227
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui_ex/doze/OPDozeService;->mPulsing:Z

    .line 228
    invoke-static {}, Lcom/android/systemui_ex/plugin/LSState;->getInstance()Lcom/android/systemui_ex/plugin/LSState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui_ex/plugin/LSState;->onDozePulsing()V

    .line 229
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/doze/OPDozeService;->continuePulsing(I)V

    .line 231
    :cond_0
    return-void
.end method

.method private rescheduleNotificationPulse(Z)V
    .locals 13
    .param p1, "predicate"    # Z

    .prologue
    .line 354
    iget-object v10, p0, Lcom/android/systemui_ex/doze/OPDozeService;->mTag:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "rescheduleNotificationPulse predicate="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    const-wide/16 v10, 0x0

    invoke-direct {p0, v10, v11}, Lcom/android/systemui_ex/doze/OPDozeService;->notificationPulseIntent(J)Landroid/app/PendingIntent;

    move-result-object v4

    .line 356
    .local v4, "notificationPulseIntent":Landroid/app/PendingIntent;
    iget-object v10, p0, Lcom/android/systemui_ex/doze/OPDozeService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v10, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 358
    if-nez p1, :cond_0

    .line 359
    iget-object v10, p0, Lcom/android/systemui_ex/doze/OPDozeService;->mTag:Ljava/lang/String;

    const-string v11, "  don\'t reschedule: predicate is false"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    :goto_0
    return-void

    .line 362
    :cond_0
    iget-object v10, p0, Lcom/android/systemui_ex/doze/OPDozeService;->mDozeParameters:Lcom/android/systemui_ex/statusbar/phone/DozeParameters;

    invoke-virtual {v10}, Lcom/android/systemui_ex/statusbar/phone/DozeParameters;->getPulseSchedule()Lcom/android/systemui_ex/statusbar/phone/DozeParameters$PulseSchedule;

    move-result-object v5

    .line 363
    .local v5, "schedule":Lcom/android/systemui_ex/statusbar/phone/DozeParameters$PulseSchedule;
    if-nez v5, :cond_1

    .line 364
    iget-object v10, p0, Lcom/android/systemui_ex/doze/OPDozeService;->mTag:Ljava/lang/String;

    const-string v11, "  don\'t reschedule: schedule is null"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 367
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 368
    .local v6, "now":J
    iget-wide v10, p0, Lcom/android/systemui_ex/doze/OPDozeService;->mNotificationPulseTime:J

    invoke-virtual {v5, v6, v7, v10, v11}, Lcom/android/systemui_ex/statusbar/phone/DozeParameters$PulseSchedule;->getNextTime(JJ)J

    move-result-wide v8

    .line 369
    .local v8, "time":J
    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-gtz v10, :cond_2

    .line 370
    iget-object v10, p0, Lcom/android/systemui_ex/doze/OPDozeService;->mTag:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "  don\'t reschedule: time is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 373
    :cond_2
    sub-long v0, v8, v6

    .line 374
    .local v0, "delta":J
    const-wide/16 v10, 0x0

    cmp-long v10, v0, v10

    if-gtz v10, :cond_3

    .line 375
    iget-object v10, p0, Lcom/android/systemui_ex/doze/OPDozeService;->mTag:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "  don\'t reschedule: delta is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 378
    :cond_3
    iget-wide v10, p0, Lcom/android/systemui_ex/doze/OPDozeService;->mNotificationPulseTime:J

    sub-long v2, v8, v10

    .line 379
    .local v2, "instance":J
    iget-object v10, p0, Lcom/android/systemui_ex/doze/OPDozeService;->mTag:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Scheduling pulse "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " in "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "ms for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    new-instance v12, Ljava/util/Date;

    invoke-direct {v12, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    iget-object v10, p0, Lcom/android/systemui_ex/doze/OPDozeService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v11, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/systemui_ex/doze/OPDozeService;->notificationPulseIntent(J)Landroid/app/PendingIntent;

    move-result-object v12

    invoke-virtual {v10, v11, v8, v9, v12}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_0
.end method

.method private resetNotificationResets()V
    .locals 2

    .prologue
    .line 307
    iget-object v0, p0, Lcom/android/systemui_ex/doze/OPDozeService;->mTag:Ljava/lang/String;

    const-string v1, "resetNotificationResets"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iget-object v0, p0, Lcom/android/systemui_ex/doze/OPDozeService;->mDozeParameters:Lcom/android/systemui_ex/statusbar/phone/DozeParameters;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/DozeParameters;->getPulseScheduleResets()I

    move-result v0

    iput v0, p0, Lcom/android/systemui_ex/doze/OPDozeService;->mScheduleResetsRemaining:I

    .line 309
    return-void
.end method

.method private static triggerEventToString(Landroid/hardware/TriggerEvent;)Ljava/lang/String;
    .locals 7
    .param p0, "event"    # Landroid/hardware/TriggerEvent;

    .prologue
    const/16 v6, 0x2c

    .line 386
    if-nez p0, :cond_0

    const/4 v2, 0x0

    .line 395
    :goto_0
    return-object v2

    .line 387
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "TriggerEvent["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Landroid/hardware/TriggerEvent;->timestamp:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/TriggerEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 390
    .local v1, "sb":Ljava/lang/StringBuilder;
    iget-object v2, p0, Landroid/hardware/TriggerEvent;->values:[F

    if-eqz v2, :cond_1

    .line 391
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Landroid/hardware/TriggerEvent;->values:[F

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 392
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/TriggerEvent;->values:[F

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 391
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 395
    .end local v0    # "i":I
    :cond_1
    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private turnDisplayOff()V
    .locals 2

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/systemui_ex/doze/OPDozeService;->mTag:Ljava/lang/String;

    const-string v1, "Display off"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/doze/OPDozeService;->setDozeScreenState(I)V

    .line 258
    return-void
.end method

.method private turnDisplayOn()V
    .locals 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/systemui_ex/doze/OPDozeService;->mTag:Ljava/lang/String;

    const-string v1, "Display on"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget-boolean v0, p0, Lcom/android/systemui_ex/doze/OPDozeService;->mDisplayStateSupported:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/doze/OPDozeService;->setDozeScreenState(I)V

    .line 263
    return-void

    .line 262
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private updateNotificationPulse(J)V
    .locals 5
    .param p1, "notificationTimeMs"    # J

    .prologue
    .line 318
    iget-object v2, p0, Lcom/android/systemui_ex/doze/OPDozeService;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateNotificationPulse notificationTimeMs="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    iget-object v2, p0, Lcom/android/systemui_ex/doze/OPDozeService;->mDozeParameters:Lcom/android/systemui_ex/statusbar/phone/DozeParameters;

    invoke-virtual {v2}, Lcom/android/systemui_ex/statusbar/phone/DozeParameters;->getPulseOnNotifications()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/systemui_ex/plugin/LSState;->getInstance()Lcom/android/systemui_ex/plugin/LSState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui_ex/plugin/LSState;->getPhoneStatusBar()Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->isDoNotDisturbModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 321
    :cond_0
    iget-object v2, p0, Lcom/android/systemui_ex/doze/OPDozeService;->mTag:Ljava/lang/String;

    const-string v3, "DoNotDisturb Mode Enabled"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    :goto_0
    return-void

    .line 325
    :cond_1
    iget-object v2, p0, Lcom/android/systemui_ex/doze/OPDozeService;->mOneProximity:Lcom/android/systemui_ex/doze/OPDozeService$OnePlusProximityCheck;

    invoke-virtual {v2}, Lcom/android/systemui_ex/doze/OPDozeService$OnePlusProximityCheck;->isCovered()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 326
    iget-object v2, p0, Lcom/android/systemui_ex/doze/OPDozeService;->mTag:Ljava/lang/String;

    const-string v3, "Proximity Sensor ward covered, don\'t pulse"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 331
    :cond_2
    iget-object v2, p0, Lcom/android/systemui_ex/doze/OPDozeService;->mDozeParameters:Lcom/android/systemui_ex/statusbar/phone/DozeParameters;

    invoke-virtual {v2}, Lcom/android/systemui_ex/statusbar/phone/DozeParameters;->getPulseInVisibleDuration()I

    move-result v2

    int-to-long v0, v2

    .line 333
    .local v0, "pulseDuration":J
    iget-wide v2, p0, Lcom/android/systemui_ex/doze/OPDozeService;->mNotificationPulseTime:J

    sub-long v2, p1, v2

    cmp-long v2, v2, v0

    if-gez v2, :cond_3

    .line 334
    iget-object v2, p0, Lcom/android/systemui_ex/doze/OPDozeService;->mTag:Ljava/lang/String;

    const-string v3, "Recently updated, not resetting schedule"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 338
    :cond_3
    iput-wide p1, p0, Lcom/android/systemui_ex/doze/OPDozeService;->mNotificationPulseTime:J

    .line 339
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/systemui_ex/doze/OPDozeService;->requestPulse(I)V

    goto :goto_0
.end method


# virtual methods
.method protected dumpOnHandler(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 105
    invoke-super {p0, p1, p2, p3}, Landroid/service/dreams/DreamService;->dumpOnHandler(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 106
    const-string v0, "  mDreaming: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui_ex/doze/OPDozeService;->mDreaming:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 107
    const-string v0, "  mPulsing: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui_ex/doze/OPDozeService;->mPulsing:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 108
    const-string v0, "  mWakeLock: held="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui_ex/doze/OPDozeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 109
    const-string v0, "  mHost: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui_ex/doze/OPDozeService;->mHost:Lcom/android/systemui_ex/doze/DozeHost;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 110
    const-string v0, "  mBroadcastReceiverRegistered: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui_ex/doze/OPDozeService;->mBroadcastReceiverRegistered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 111
    const-string v0, "  mSigMotionSensor: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui_ex/doze/OPDozeService;->mSigMotionSensor:Lcom/android/systemui_ex/doze/OPDozeService$TriggerSensor;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 112
    const-string v0, "  mPickupSensor:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui_ex/doze/OPDozeService;->mPickupSensor:Lcom/android/systemui_ex/doze/OPDozeService$TriggerSensor;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 113
    const-string v0, "  mDisplayStateSupported: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui_ex/doze/OPDozeService;->mDisplayStateSupported:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 114
    const-string v0, "  mNotificationLightOn: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui_ex/doze/OPDozeService;->mNotificationLightOn:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 115
    const-string v0, "  mPowerSaveActive: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui_ex/doze/OPDozeService;->mPowerSaveActive:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 116
    const-string v0, "  mCarMode: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui_ex/doze/OPDozeService;->mCarMode:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 117
    const-string v0, "  mNotificationPulseTime: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/systemui_ex/doze/OPDozeService;->mNotificationPulseTime:J

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 118
    const-string v0, "  mScheduleResetsRemaining: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui_ex/doze/OPDozeService;->mScheduleResetsRemaining:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 119
    iget-object v0, p0, Lcom/android/systemui_ex/doze/OPDozeService;->mDozeParameters:Lcom/android/systemui_ex/statusbar/phone/DozeParameters;

    invoke-virtual {v0, p2}, Lcom/android/systemui_ex/statusbar/phone/DozeParameters;->dump(Ljava/io/PrintWriter;)V

    .line 120
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/systemui_ex/doze/OPDozeService;->mTag:Ljava/lang/String;

    const-string v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-super {p0}, Landroid/service/dreams/DreamService;->onAttachedToWindow()V

    .line 152
    return-void
.end method

.method public onCreate()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 124
    iget-object v1, p0, Lcom/android/systemui_ex/doze/OPDozeService;->mTag:Ljava/lang/String;

    const-string v4, "onCreate"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-super {p0}, Landroid/service/dreams/DreamService;->onCreate()V

    .line 127
    invoke-virtual {p0}, Lcom/android/systemui_ex/doze/OPDozeService;->getApplication()Landroid/app/Application;

    move-result-object v1

    instance-of v1, v1, Lcom/android/systemui_ex/SystemUIApplication;

    if-eqz v1, :cond_0

    .line 128
    invoke-virtual {p0}, Lcom/android/systemui_ex/doze/OPDozeService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/systemui_ex/SystemUIApplication;

    .line 129
    .local v0, "app":Lcom/android/systemui_ex/SystemUIApplication;
    const-class v1, Lcom/android/systemui_ex/doze/DozeHost;

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/SystemUIApplication;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui_ex/doze/DozeHost;

    iput-object v1, p0, Lcom/android/systemui_ex/doze/OPDozeService;->mHost:Lcom/android/systemui_ex/doze/DozeHost;

    .line 131
    .end local v0    # "app":Lcom/android/systemui_ex/SystemUIApplication;
    :cond_0
    iget-object v1, p0, Lcom/android/systemui_ex/doze/OPDozeService;->mHost:Lcom/android/systemui_ex/doze/DozeHost;

    if-nez v1, :cond_1

    const-string v1, "OPDozeService"

    const-string v4, "No doze service host found."

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_1
    invoke-virtual {p0, v5}, Lcom/android/systemui_ex/doze/OPDozeService;->setWindowless(Z)V

    .line 135
    iget-object v1, p0, Lcom/android/systemui_ex/doze/OPDozeService;->mContext:Landroid/content/Context;

    const-string v4, "sensor"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lcom/android/systemui_ex/doze/OPDozeService;->mSensors:Landroid/hardware/SensorManager;

    .line 136
    iget-object v1, p0, Lcom/android/systemui_ex/doze/OPDozeService;->mContext:Landroid/content/Context;

    const-string v4, "power"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/systemui_ex/doze/OPDozeService;->mPowerManager:Landroid/os/PowerManager;

    .line 137
    iget-object v1, p0, Lcom/android/systemui_ex/doze/OPDozeService;->mPowerManager:Landroid/os/PowerManager;

    iget-object v4, p0, Lcom/android/systemui_ex/doze/OPDozeService;->mTag:Ljava/lang/String;

    invoke-virtual {v1, v5, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui_ex/doze/OPDozeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 138
    iget-object v1, p0, Lcom/android/systemui_ex/doze/OPDozeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 139
    iget-object v1, p0, Lcom/android/systemui_ex/doze/OPDozeService;->mContext:Landroid/content/Context;

    const-string v4, "alarm"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Lcom/android/systemui_ex/doze/OPDozeService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 140
    iget-object v1, p0, Lcom/android/systemui_ex/doze/OPDozeService;->mDozeParameters:Lcom/android/systemui_ex/statusbar/phone/DozeParameters;

    invoke-virtual {v1}, Lcom/android/systemui_ex/statusbar/phone/DozeParameters;->getDisplayStateSupported()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui_ex/doze/OPDozeService;->mDisplayStateSupported:Z

    .line 141
    iget-object v1, p0, Lcom/android/systemui_ex/doze/OPDozeService;->mContext:Landroid/content/Context;

    const-string v4, "uimode"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/UiModeManager;

    iput-object v1, p0, Lcom/android/systemui_ex/doze/OPDozeService;->mUiModeManager:Landroid/app/UiModeManager;

    .line 142
    invoke-direct {p0}, Lcom/android/systemui_ex/doze/OPDozeService;->turnDisplayOff()V

    .line 144
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 145
    .local v2, "start":J
    new-instance v1, Lcom/android/systemui_ex/doze/OPDozeService$OnePlusProximityCheck;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v4}, Lcom/android/systemui_ex/doze/OPDozeService$OnePlusProximityCheck;-><init>(Lcom/android/systemui_ex/doze/OPDozeService;Lcom/android/systemui_ex/doze/OPDozeService$1;)V

    iput-object v1, p0, Lcom/android/systemui_ex/doze/OPDozeService;->mOneProximity:Lcom/android/systemui_ex/doze/OPDozeService$OnePlusProximityCheck;

    .line 146
    return-void
.end method

.method public onDreamingStarted()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 156
    invoke-super {p0}, Landroid/service/dreams/DreamService;->onDreamingStarted()V

    .line 158
    iget-object v0, p0, Lcom/android/systemui_ex/doze/OPDozeService;->mHost:Lcom/android/systemui_ex/doze/DozeHost;

    if-nez v0, :cond_0

    .line 159
    invoke-virtual {p0}, Lcom/android/systemui_ex/doze/OPDozeService;->finish()V

    .line 198
    :goto_0
    return-void

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/doze/OPDozeService;->mHost:Lcom/android/systemui_ex/doze/DozeHost;

    invoke-interface {v0}, Lcom/android/systemui_ex/doze/DozeHost;->isPowerSaveActive()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui_ex/doze/OPDozeService;->mPowerSaveActive:Z

    .line 164
    iget-object v0, p0, Lcom/android/systemui_ex/doze/OPDozeService;->mUiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {v0}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/systemui_ex/doze/OPDozeService;->mCarMode:Z

    .line 165
    iget-object v0, p0, Lcom/android/systemui_ex/doze/OPDozeService;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDreamingStarted canDoze="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/systemui_ex/doze/OPDozeService;->canDoze()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mPowerSaveActive="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui_ex/doze/OPDozeService;->mPowerSaveActive:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mCarMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui_ex/doze/OPDozeService;->mCarMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-boolean v0, p0, Lcom/android/systemui_ex/doze/OPDozeService;->mPowerSaveActive:Z

    if-eqz v0, :cond_2

    .line 168
    invoke-direct {p0}, Lcom/android/systemui_ex/doze/OPDozeService;->finishToSavePower()V

    goto :goto_0

    .line 164
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 171
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui_ex/doze/OPDozeService;->mCarMode:Z

    if-eqz v0, :cond_3

    .line 172
    invoke-direct {p0}, Lcom/android/systemui_ex/doze/OPDozeService;->finishForCarMode()V

    goto :goto_0

    .line 175
    :cond_3
    iget-object v0, p0, Lcom/android/systemui_ex/doze/OPDozeService;->mOneProximity:Lcom/android/systemui_ex/doze/OPDozeService$OnePlusProximityCheck;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui_ex/doze/OPDozeService;->mOneProximity:Lcom/android/systemui_ex/doze/OPDozeService$OnePlusProximityCheck;

    invoke-virtual {v0}, Lcom/android/systemui_ex/doze/OPDozeService$OnePlusProximityCheck;->isRegistered()Z

    move-result v0

    if-nez v0, :cond_4

    .line 176
    iget-object v0, p0, Lcom/android/systemui_ex/doze/OPDozeService;->mOneProximity:Lcom/android/systemui_ex/doze/OPDozeService$OnePlusProximityCheck;

    invoke-virtual {v0}, Lcom/android/systemui_ex/doze/OPDozeService$OnePlusProximityCheck;->check()V

    .line 179
    :cond_4
    iput-boolean v1, p0, Lcom/android/systemui_ex/doze/OPDozeService;->mDreaming:Z

    .line 180
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x2710

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/systemui_ex/doze/OPDozeService;->mEarliestPulseDueToLight:J

    .line 181
    invoke-direct {p0, v1}, Lcom/android/systemui_ex/doze/OPDozeService;->listenForPulseSignals(Z)V

    .line 186
    iget-object v0, p0, Lcom/android/systemui_ex/doze/OPDozeService;->mHost:Lcom/android/systemui_ex/doze/DozeHost;

    new-instance v1, Lcom/android/systemui_ex/doze/OPDozeService$1;

    invoke-direct {v1, p0}, Lcom/android/systemui_ex/doze/OPDozeService$1;-><init>(Lcom/android/systemui_ex/doze/OPDozeService;)V

    invoke-interface {v0, v1}, Lcom/android/systemui_ex/doze/DozeHost;->startDozing(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method

.method public onDreamingStopped()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 202
    iget-object v0, p0, Lcom/android/systemui_ex/doze/OPDozeService;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDreamingStopped isDozing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui_ex/doze/OPDozeService;->isDozing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    invoke-super {p0}, Landroid/service/dreams/DreamService;->onDreamingStopped()V

    .line 205
    iget-object v0, p0, Lcom/android/systemui_ex/doze/OPDozeService;->mHost:Lcom/android/systemui_ex/doze/DozeHost;

    if-nez v0, :cond_0

    .line 218
    :goto_0
    return-void

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/doze/OPDozeService;->mOneProximity:Lcom/android/systemui_ex/doze/OPDozeService$OnePlusProximityCheck;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui_ex/doze/OPDozeService;->mOneProximity:Lcom/android/systemui_ex/doze/OPDozeService$OnePlusProximityCheck;

    invoke-virtual {v0}, Lcom/android/systemui_ex/doze/OPDozeService$OnePlusProximityCheck;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 210
    iget-object v0, p0, Lcom/android/systemui_ex/doze/OPDozeService;->mOneProximity:Lcom/android/systemui_ex/doze/OPDozeService$OnePlusProximityCheck;

    invoke-virtual {v0}, Lcom/android/systemui_ex/doze/OPDozeService$OnePlusProximityCheck;->release()V

    .line 213
    :cond_1
    iput-boolean v3, p0, Lcom/android/systemui_ex/doze/OPDozeService;->mDreaming:Z

    .line 214
    invoke-direct {p0, v3}, Lcom/android/systemui_ex/doze/OPDozeService;->listenForPulseSignals(Z)V

    .line 217
    iget-object v0, p0, Lcom/android/systemui_ex/doze/OPDozeService;->mHost:Lcom/android/systemui_ex/doze/DozeHost;

    invoke-interface {v0}, Lcom/android/systemui_ex/doze/DozeHost;->stopDozing()V

    goto :goto_0
.end method
