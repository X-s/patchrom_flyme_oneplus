.class Lcom/android/systemui_ex/doze/OPDozeService$TriggerSensor;
.super Landroid/hardware/TriggerEventListener;
.source "OPDozeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/doze/OPDozeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TriggerSensor"
.end annotation


# instance fields
.field private final mConfigured:Z

.field private final mDebugVibrate:Z

.field private mDisabled:Z

.field private mName:Ljava/lang/String;

.field private final mPulseReason:I

.field private mRegistered:Z

.field private mRequested:Z

.field private final mSensor:Landroid/hardware/Sensor;

.field final synthetic this$0:Lcom/android/systemui_ex/doze/OPDozeService;


# direct methods
.method private updateListener()V
    .locals 4

    .prologue
    .line 489
    const-string v1, "OPDozeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateListener: mRequested ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui_ex/doze/OPDozeService$TriggerSensor;->mRequested:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mDisabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui_ex/doze/OPDozeService$TriggerSensor;->mDisabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mRegistered = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui_ex/doze/OPDozeService$TriggerSensor;->mRegistered:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mConfigured = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui_ex/doze/OPDozeService$TriggerSensor;->mConfigured:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mSensor = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui_ex/doze/OPDozeService$TriggerSensor;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui_ex/doze/OPDozeService$TriggerSensor;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    iget-boolean v1, p0, Lcom/android/systemui_ex/doze/OPDozeService$TriggerSensor;->mConfigured:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui_ex/doze/OPDozeService$TriggerSensor;->mSensor:Landroid/hardware/Sensor;

    if-nez v1, :cond_1

    .line 500
    :cond_0
    :goto_0
    return-void

    .line 492
    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui_ex/doze/OPDozeService$TriggerSensor;->mRequested:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui_ex/doze/OPDozeService$TriggerSensor;->mDisabled:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui_ex/doze/OPDozeService$TriggerSensor;->mRegistered:Z

    if-nez v1, :cond_2

    .line 493
    iget-object v1, p0, Lcom/android/systemui_ex/doze/OPDozeService$TriggerSensor;->this$0:Lcom/android/systemui_ex/doze/OPDozeService;

    # getter for: Lcom/android/systemui_ex/doze/OPDozeService;->mSensors:Landroid/hardware/SensorManager;
    invoke-static {v1}, Lcom/android/systemui_ex/doze/OPDozeService;->access$1500(Lcom/android/systemui_ex/doze/OPDozeService;)Landroid/hardware/SensorManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui_ex/doze/OPDozeService$TriggerSensor;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v1, p0, v2}, Landroid/hardware/SensorManager;->requestTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui_ex/doze/OPDozeService$TriggerSensor;->mRegistered:Z

    .line 494
    iget-object v1, p0, Lcom/android/systemui_ex/doze/OPDozeService$TriggerSensor;->this$0:Lcom/android/systemui_ex/doze/OPDozeService;

    # getter for: Lcom/android/systemui_ex/doze/OPDozeService;->mTag:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/systemui_ex/doze/OPDozeService;->access$600(Lcom/android/systemui_ex/doze/OPDozeService;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestTriggerSensor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui_ex/doze/OPDozeService$TriggerSensor;->mRegistered:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 495
    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui_ex/doze/OPDozeService$TriggerSensor;->mRegistered:Z

    if-eqz v1, :cond_0

    .line 496
    iget-object v1, p0, Lcom/android/systemui_ex/doze/OPDozeService$TriggerSensor;->this$0:Lcom/android/systemui_ex/doze/OPDozeService;

    # getter for: Lcom/android/systemui_ex/doze/OPDozeService;->mSensors:Landroid/hardware/SensorManager;
    invoke-static {v1}, Lcom/android/systemui_ex/doze/OPDozeService;->access$1500(Lcom/android/systemui_ex/doze/OPDozeService;)Landroid/hardware/SensorManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui_ex/doze/OPDozeService$TriggerSensor;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v1, p0, v2}, Landroid/hardware/SensorManager;->cancelTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z

    move-result v0

    .line 497
    .local v0, "rt":Z
    iget-object v1, p0, Lcom/android/systemui_ex/doze/OPDozeService$TriggerSensor;->this$0:Lcom/android/systemui_ex/doze/OPDozeService;

    # getter for: Lcom/android/systemui_ex/doze/OPDozeService;->mTag:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/systemui_ex/doze/OPDozeService;->access$600(Lcom/android/systemui_ex/doze/OPDozeService;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelTriggerSensor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui_ex/doze/OPDozeService$TriggerSensor;->mRegistered:Z

    goto :goto_0
.end method


# virtual methods
.method public onTrigger(Landroid/hardware/TriggerEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/hardware/TriggerEvent;

    .prologue
    const/4 v3, 0x0

    .line 514
    iget-object v4, p0, Lcom/android/systemui_ex/doze/OPDozeService$TriggerSensor;->this$0:Lcom/android/systemui_ex/doze/OPDozeService;

    # getter for: Lcom/android/systemui_ex/doze/OPDozeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v4}, Lcom/android/systemui_ex/doze/OPDozeService;->access$500(Lcom/android/systemui_ex/doze/OPDozeService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 516
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui_ex/doze/OPDozeService$TriggerSensor;->this$0:Lcom/android/systemui_ex/doze/OPDozeService;

    # getter for: Lcom/android/systemui_ex/doze/OPDozeService;->mTag:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/systemui_ex/doze/OPDozeService;->access$600(Lcom/android/systemui_ex/doze/OPDozeService;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onTrigger: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    # invokes: Lcom/android/systemui_ex/doze/OPDozeService;->triggerEventToString(Landroid/hardware/TriggerEvent;)Ljava/lang/String;
    invoke-static {p1}, Lcom/android/systemui_ex/doze/OPDozeService;->access$1600(Landroid/hardware/TriggerEvent;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    iget-boolean v4, p0, Lcom/android/systemui_ex/doze/OPDozeService$TriggerSensor;->mDebugVibrate:Z

    if-eqz v4, :cond_0

    .line 518
    iget-object v4, p0, Lcom/android/systemui_ex/doze/OPDozeService$TriggerSensor;->this$0:Lcom/android/systemui_ex/doze/OPDozeService;

    # getter for: Lcom/android/systemui_ex/doze/OPDozeService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/systemui_ex/doze/OPDozeService;->access$1700(Lcom/android/systemui_ex/doze/OPDozeService;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "vibrator"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    .line 520
    .local v2, "v":Landroid/os/Vibrator;
    if-eqz v2, :cond_0

    .line 521
    const-wide/16 v4, 0x3e8

    new-instance v6, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v6}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v6

    const/16 v7, 0xd

    invoke-virtual {v6, v7}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v6

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V

    .line 527
    .end local v2    # "v":Landroid/os/Vibrator;
    :cond_0
    iget-object v4, p0, Lcom/android/systemui_ex/doze/OPDozeService$TriggerSensor;->this$0:Lcom/android/systemui_ex/doze/OPDozeService;

    iget v5, p0, Lcom/android/systemui_ex/doze/OPDozeService$TriggerSensor;->mPulseReason:I

    # invokes: Lcom/android/systemui_ex/doze/OPDozeService;->requestPulse(I)V
    invoke-static {v4, v5}, Lcom/android/systemui_ex/doze/OPDozeService;->access$700(Lcom/android/systemui_ex/doze/OPDozeService;I)V

    .line 528
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/systemui_ex/doze/OPDozeService$TriggerSensor;->mRegistered:Z

    .line 529
    invoke-direct {p0}, Lcom/android/systemui_ex/doze/OPDozeService$TriggerSensor;->updateListener()V

    .line 533
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/systemui_ex/doze/OPDozeService$TriggerSensor;->this$0:Lcom/android/systemui_ex/doze/OPDozeService;

    # getter for: Lcom/android/systemui_ex/doze/OPDozeService;->mNotificationPulseTime:J
    invoke-static {v6}, Lcom/android/systemui_ex/doze/OPDozeService;->access$1800(Lcom/android/systemui_ex/doze/OPDozeService;)J

    move-result-wide v6

    sub-long v0, v4, v6

    .line 535
    .local v0, "timeSinceNotification":J
    iget-object v4, p0, Lcom/android/systemui_ex/doze/OPDozeService$TriggerSensor;->this$0:Lcom/android/systemui_ex/doze/OPDozeService;

    # getter for: Lcom/android/systemui_ex/doze/OPDozeService;->mDozeParameters:Lcom/android/systemui_ex/statusbar/phone/DozeParameters;
    invoke-static {v4}, Lcom/android/systemui_ex/doze/OPDozeService;->access$1900(Lcom/android/systemui_ex/doze/OPDozeService;)Lcom/android/systemui_ex/statusbar/phone/DozeParameters;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui_ex/statusbar/phone/DozeParameters;->getPickupVibrationThreshold()I

    move-result v4

    int-to-long v4, v4

    cmp-long v4, v0, v4

    if-gez v4, :cond_1

    const/4 v3, 0x1

    .line 537
    .local v3, "withinVibrationThreshold":Z
    :cond_1
    if-eqz v3, :cond_3

    .line 538
    iget-object v4, p0, Lcom/android/systemui_ex/doze/OPDozeService$TriggerSensor;->this$0:Lcom/android/systemui_ex/doze/OPDozeService;

    # getter for: Lcom/android/systemui_ex/doze/OPDozeService;->mTag:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/systemui_ex/doze/OPDozeService;->access$600(Lcom/android/systemui_ex/doze/OPDozeService;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Not resetting schedule, recent notification"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    :goto_0
    iget-object v4, p0, Lcom/android/systemui_ex/doze/OPDozeService$TriggerSensor;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getType()I

    move-result v4

    const/16 v5, 0x19

    if-ne v4, v5, :cond_2

    .line 543
    invoke-static {v3}, Lcom/android/systemui_ex/doze/DozeLog;->tracePickupPulse(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 546
    :cond_2
    iget-object v4, p0, Lcom/android/systemui_ex/doze/OPDozeService$TriggerSensor;->this$0:Lcom/android/systemui_ex/doze/OPDozeService;

    # getter for: Lcom/android/systemui_ex/doze/OPDozeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v4}, Lcom/android/systemui_ex/doze/OPDozeService;->access$500(Lcom/android/systemui_ex/doze/OPDozeService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 548
    return-void

    .line 540
    :cond_3
    :try_start_1
    iget-object v4, p0, Lcom/android/systemui_ex/doze/OPDozeService$TriggerSensor;->this$0:Lcom/android/systemui_ex/doze/OPDozeService;

    # invokes: Lcom/android/systemui_ex/doze/OPDozeService;->resetNotificationResets()V
    invoke-static {v4}, Lcom/android/systemui_ex/doze/OPDozeService;->access$2000(Lcom/android/systemui_ex/doze/OPDozeService;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 546
    .end local v0    # "timeSinceNotification":J
    .end local v3    # "withinVibrationThreshold":Z
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/android/systemui_ex/doze/OPDozeService$TriggerSensor;->this$0:Lcom/android/systemui_ex/doze/OPDozeService;

    # getter for: Lcom/android/systemui_ex/doze/OPDozeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v5}, Lcom/android/systemui_ex/doze/OPDozeService;->access$500(Lcom/android/systemui_ex/doze/OPDozeService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v4
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 504
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{mRegistered="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/systemui_ex/doze/OPDozeService$TriggerSensor;->mRegistered:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRequested="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui_ex/doze/OPDozeService$TriggerSensor;->mRequested:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDisabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui_ex/doze/OPDozeService$TriggerSensor;->mDisabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mConfigured="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui_ex/doze/OPDozeService$TriggerSensor;->mConfigured:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDebugVibrate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui_ex/doze/OPDozeService$TriggerSensor;->mDebugVibrate:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSensor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui_ex/doze/OPDozeService$TriggerSensor;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
