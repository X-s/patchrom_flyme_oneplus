.class Lcom/android/systemui_ex/doze/OPDozeService$OnePlusProximityCheck;
.super Ljava/lang/Object;
.source "OPDozeService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/doze/OPDozeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnePlusProximityCheck"
.end annotation


# instance fields
.field private mCurrentState:I

.field private mMaxRange:F

.field private mRegistered:Z

.field final synthetic this$0:Lcom/android/systemui_ex/doze/OPDozeService;


# direct methods
.method private constructor <init>(Lcom/android/systemui_ex/doze/OPDozeService;)V
    .locals 0

    .prologue
    .line 551
    iput-object p1, p0, Lcom/android/systemui_ex/doze/OPDozeService$OnePlusProximityCheck;->this$0:Lcom/android/systemui_ex/doze/OPDozeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui_ex/doze/OPDozeService;Lcom/android/systemui_ex/doze/OPDozeService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui_ex/doze/OPDozeService;
    .param p2, "x1"    # Lcom/android/systemui_ex/doze/OPDozeService$1;

    .prologue
    .line 551
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/doze/OPDozeService$OnePlusProximityCheck;-><init>(Lcom/android/systemui_ex/doze/OPDozeService;)V

    return-void
.end method

.method private finishWithResult(I)V
    .locals 3
    .param p1, "result"    # I

    .prologue
    .line 616
    const-string v0, "OPDozeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finishWithResult = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    iget v0, p0, Lcom/android/systemui_ex/doze/OPDozeService$OnePlusProximityCheck;->mCurrentState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 619
    iget-object v0, p0, Lcom/android/systemui_ex/doze/OPDozeService$OnePlusProximityCheck;->this$0:Lcom/android/systemui_ex/doze/OPDozeService;

    const/4 v1, 0x4

    # invokes: Lcom/android/systemui_ex/doze/OPDozeService;->requestPulse(I)V
    invoke-static {v0, v1}, Lcom/android/systemui_ex/doze/OPDozeService;->access$700(Lcom/android/systemui_ex/doze/OPDozeService;I)V

    .line 621
    :cond_0
    iput p1, p0, Lcom/android/systemui_ex/doze/OPDozeService$OnePlusProximityCheck;->mCurrentState:I

    .line 622
    return-void
.end method


# virtual methods
.method public check()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 566
    iget-object v0, p0, Lcom/android/systemui_ex/doze/OPDozeService$OnePlusProximityCheck;->this$0:Lcom/android/systemui_ex/doze/OPDozeService;

    # getter for: Lcom/android/systemui_ex/doze/OPDozeService;->mSensors:Landroid/hardware/SensorManager;
    invoke-static {v0}, Lcom/android/systemui_ex/doze/OPDozeService;->access$1500(Lcom/android/systemui_ex/doze/OPDozeService;)Landroid/hardware/SensorManager;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    .line 567
    .local v2, "sensor":Landroid/hardware/Sensor;
    if-nez v2, :cond_0

    .line 568
    iget-object v0, p0, Lcom/android/systemui_ex/doze/OPDozeService$OnePlusProximityCheck;->this$0:Lcom/android/systemui_ex/doze/OPDozeService;

    # getter for: Lcom/android/systemui_ex/doze/OPDozeService;->mTag:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/systemui_ex/doze/OPDozeService;->access$600(Lcom/android/systemui_ex/doze/OPDozeService;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "No sensor found"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    invoke-direct {p0, v4}, Lcom/android/systemui_ex/doze/OPDozeService$OnePlusProximityCheck;->finishWithResult(I)V

    .line 577
    :goto_0
    return-void

    .line 572
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/doze/OPDozeService$OnePlusProximityCheck;->this$0:Lcom/android/systemui_ex/doze/OPDozeService;

    # getter for: Lcom/android/systemui_ex/doze/OPDozeService;->mTag:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/systemui_ex/doze/OPDozeService;->access$600(Lcom/android/systemui_ex/doze/OPDozeService;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Register P Sensor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    invoke-virtual {v2}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v0

    iput v0, p0, Lcom/android/systemui_ex/doze/OPDozeService$OnePlusProximityCheck;->mMaxRange:F

    .line 574
    iget-object v0, p0, Lcom/android/systemui_ex/doze/OPDozeService$OnePlusProximityCheck;->this$0:Lcom/android/systemui_ex/doze/OPDozeService;

    # getter for: Lcom/android/systemui_ex/doze/OPDozeService;->mSensors:Landroid/hardware/SensorManager;
    invoke-static {v0}, Lcom/android/systemui_ex/doze/OPDozeService;->access$1500(Lcom/android/systemui_ex/doze/OPDozeService;)Landroid/hardware/SensorManager;

    move-result-object v0

    const/4 v3, 0x3

    iget-object v1, p0, Lcom/android/systemui_ex/doze/OPDozeService$OnePlusProximityCheck;->this$0:Lcom/android/systemui_ex/doze/OPDozeService;

    # getter for: Lcom/android/systemui_ex/doze/OPDozeService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/systemui_ex/doze/OPDozeService;->access$2100(Lcom/android/systemui_ex/doze/OPDozeService;)Landroid/os/Handler;

    move-result-object v5

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;IILandroid/os/Handler;)Z

    .line 575
    iget-object v0, p0, Lcom/android/systemui_ex/doze/OPDozeService$OnePlusProximityCheck;->this$0:Lcom/android/systemui_ex/doze/OPDozeService;

    # getter for: Lcom/android/systemui_ex/doze/OPDozeService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui_ex/doze/OPDozeService;->access$2100(Lcom/android/systemui_ex/doze/OPDozeService;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v4, 0x1f4

    invoke-virtual {v0, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 576
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui_ex/doze/OPDozeService$OnePlusProximityCheck;->mRegistered:Z

    goto :goto_0
.end method

.method public isCovered()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 625
    iget v1, p0, Lcom/android/systemui_ex/doze/OPDozeService$OnePlusProximityCheck;->mCurrentState:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRegistered()Z
    .locals 1

    .prologue
    .line 629
    iget-boolean v0, p0, Lcom/android/systemui_ex/doze/OPDozeService$OnePlusProximityCheck;->mRegistered:Z

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 613
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 600
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    array-length v2, v2

    if-nez v2, :cond_0

    .line 601
    iget-object v1, p0, Lcom/android/systemui_ex/doze/OPDozeService$OnePlusProximityCheck;->this$0:Lcom/android/systemui_ex/doze/OPDozeService;

    # getter for: Lcom/android/systemui_ex/doze/OPDozeService;->mTag:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/systemui_ex/doze/OPDozeService;->access$600(Lcom/android/systemui_ex/doze/OPDozeService;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Event has no values!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    invoke-direct {p0, v0}, Lcom/android/systemui_ex/doze/OPDozeService$OnePlusProximityCheck;->finishWithResult(I)V

    .line 608
    :goto_0
    return-void

    .line 604
    :cond_0
    iget-object v2, p0, Lcom/android/systemui_ex/doze/OPDozeService$OnePlusProximityCheck;->this$0:Lcom/android/systemui_ex/doze/OPDozeService;

    # getter for: Lcom/android/systemui_ex/doze/OPDozeService;->mTag:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/systemui_ex/doze/OPDozeService;->access$600(Lcom/android/systemui_ex/doze/OPDozeService;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Event: value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " max="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui_ex/doze/OPDozeService$OnePlusProximityCheck;->mMaxRange:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v0

    iget v3, p0, Lcom/android/systemui_ex/doze/OPDozeService$OnePlusProximityCheck;->mMaxRange:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    move v0, v1

    .line 606
    .local v0, "isNear":Z
    :cond_1
    if-eqz v0, :cond_2

    :goto_1
    invoke-direct {p0, v1}, Lcom/android/systemui_ex/doze/OPDozeService$OnePlusProximityCheck;->finishWithResult(I)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    goto :goto_1
.end method

.method public release()V
    .locals 2

    .prologue
    .line 580
    iget-object v0, p0, Lcom/android/systemui_ex/doze/OPDozeService$OnePlusProximityCheck;->this$0:Lcom/android/systemui_ex/doze/OPDozeService;

    # getter for: Lcom/android/systemui_ex/doze/OPDozeService;->mSensors:Landroid/hardware/SensorManager;
    invoke-static {v0}, Lcom/android/systemui_ex/doze/OPDozeService;->access$1500(Lcom/android/systemui_ex/doze/OPDozeService;)Landroid/hardware/SensorManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 581
    iget-object v0, p0, Lcom/android/systemui_ex/doze/OPDozeService$OnePlusProximityCheck;->this$0:Lcom/android/systemui_ex/doze/OPDozeService;

    # getter for: Lcom/android/systemui_ex/doze/OPDozeService;->mTag:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/systemui_ex/doze/OPDozeService;->access$600(Lcom/android/systemui_ex/doze/OPDozeService;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unregister P Sensor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    iget-object v0, p0, Lcom/android/systemui_ex/doze/OPDozeService$OnePlusProximityCheck;->this$0:Lcom/android/systemui_ex/doze/OPDozeService;

    # getter for: Lcom/android/systemui_ex/doze/OPDozeService;->mSensors:Landroid/hardware/SensorManager;
    invoke-static {v0}, Lcom/android/systemui_ex/doze/OPDozeService;->access$1500(Lcom/android/systemui_ex/doze/OPDozeService;)Landroid/hardware/SensorManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 583
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui_ex/doze/OPDozeService$OnePlusProximityCheck;->mRegistered:Z

    .line 585
    :cond_0
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 594
    iget-object v0, p0, Lcom/android/systemui_ex/doze/OPDozeService$OnePlusProximityCheck;->this$0:Lcom/android/systemui_ex/doze/OPDozeService;

    # getter for: Lcom/android/systemui_ex/doze/OPDozeService;->mTag:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/systemui_ex/doze/OPDozeService;->access$600(Lcom/android/systemui_ex/doze/OPDozeService;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "No event received before timeout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui_ex/doze/OPDozeService$OnePlusProximityCheck;->finishWithResult(I)V

    .line 596
    return-void
.end method
