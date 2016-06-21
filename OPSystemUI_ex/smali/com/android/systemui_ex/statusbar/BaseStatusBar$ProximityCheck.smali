.class Lcom/android/systemui_ex/statusbar/BaseStatusBar$ProximityCheck;
.super Ljava/lang/Object;
.source "BaseStatusBar.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/statusbar/BaseStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProximityCheck"
.end annotation


# instance fields
.field private mMaxRange:F

.field private mRegistered:Z

.field private final mTag:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/systemui_ex/statusbar/BaseStatusBar;


# direct methods
.method private constructor <init>(Lcom/android/systemui_ex/statusbar/BaseStatusBar;)V
    .locals 1

    .prologue
    .line 475
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$ProximityCheck;->this$0:Lcom/android/systemui_ex/statusbar/BaseStatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 482
    const-class v0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$ProximityCheck;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$ProximityCheck;->mTag:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui_ex/statusbar/BaseStatusBar;Lcom/android/systemui_ex/statusbar/BaseStatusBar$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui_ex/statusbar/BaseStatusBar;
    .param p2, "x1"    # Lcom/android/systemui_ex/statusbar/BaseStatusBar$1;

    .prologue
    .line 475
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/statusbar/BaseStatusBar$ProximityCheck;-><init>(Lcom/android/systemui_ex/statusbar/BaseStatusBar;)V

    return-void
.end method

.method private finishWithResult(I)V
    .locals 2
    .param p1, "result"    # I

    .prologue
    .line 526
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$ProximityCheck;->mRegistered:Z

    if-eqz v0, :cond_1

    .line 527
    sget-boolean v0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$ProximityCheck;->mTag:Ljava/lang/String;

    const-string v1, "unregister p sensor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$ProximityCheck;->this$0:Lcom/android/systemui_ex/statusbar/BaseStatusBar;

    # getter for: Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mSensors:Landroid/hardware/SensorManager;
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->access$700(Lcom/android/systemui_ex/statusbar/BaseStatusBar;)Landroid/hardware/SensorManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 529
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$ProximityCheck;->mRegistered:Z

    .line 531
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/systemui_ex/statusbar/BaseStatusBar$ProximityCheck;->onProximityResult(I)V

    .line 532
    return-void
.end method


# virtual methods
.method public check()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 499
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$ProximityCheck;->mRegistered:Z

    if-eqz v0, :cond_0

    .line 511
    :goto_0
    return-void

    .line 500
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$ProximityCheck;->this$0:Lcom/android/systemui_ex/statusbar/BaseStatusBar;

    # getter for: Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mSensors:Landroid/hardware/SensorManager;
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->access$700(Lcom/android/systemui_ex/statusbar/BaseStatusBar;)Landroid/hardware/SensorManager;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    .line 501
    .local v2, "sensor":Landroid/hardware/Sensor;
    if-nez v2, :cond_2

    .line 502
    sget-boolean v0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$ProximityCheck;->mTag:Ljava/lang/String;

    const-string v1, "No sensor found"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    :cond_1
    invoke-direct {p0, v4}, Lcom/android/systemui_ex/statusbar/BaseStatusBar$ProximityCheck;->finishWithResult(I)V

    goto :goto_0

    .line 506
    :cond_2
    sget-boolean v0, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$ProximityCheck;->mTag:Ljava/lang/String;

    const-string v1, "Register P sensor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    :cond_3
    invoke-virtual {v2}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v0

    iput v0, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$ProximityCheck;->mMaxRange:F

    .line 509
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$ProximityCheck;->mRegistered:Z

    .line 510
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$ProximityCheck;->this$0:Lcom/android/systemui_ex/statusbar/BaseStatusBar;

    # getter for: Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mSensors:Landroid/hardware/SensorManager;
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->access$700(Lcom/android/systemui_ex/statusbar/BaseStatusBar;)Landroid/hardware/SensorManager;

    move-result-object v0

    const/4 v3, 0x3

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$ProximityCheck;->this$0:Lcom/android/systemui_ex/statusbar/BaseStatusBar;

    iget-object v5, v1, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;IILandroid/os/Handler;)Z

    goto :goto_0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 537
    return-void
.end method

.method public onProximityResult(I)V
    .locals 6
    .param p1, "result"    # I

    .prologue
    const/4 v0, 0x1

    .line 488
    if-ne p1, v0, :cond_2

    .line 489
    .local v0, "isNear":Z
    :goto_0
    sget-boolean v2, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$ProximityCheck;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onProximityResult:isNear="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    :cond_0
    if-nez v0, :cond_1

    .line 492
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$ProximityCheck;->this$0:Lcom/android/systemui_ex/statusbar/BaseStatusBar;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    # setter for: Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mLastOnTime:J
    invoke-static {v2, v4, v5}, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->access$602(Lcom/android/systemui_ex/statusbar/BaseStatusBar;J)J

    .line 493
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$ProximityCheck;->this$0:Lcom/android/systemui_ex/statusbar/BaseStatusBar;

    iget-object v2, v2, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mPowerManager:Landroid/os/PowerManager;

    const v3, 0x1000001a

    const-string v4, "HighPriorityNotification"

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    .line 494
    .local v1, "wakeLock":Landroid/os/PowerManager$WakeLock;
    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 496
    .end local v1    # "wakeLock":Landroid/os/PowerManager$WakeLock;
    :cond_1
    return-void

    .line 488
    .end local v0    # "isNear":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 515
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    array-length v2, v2

    if-nez v2, :cond_1

    .line 516
    sget-boolean v1, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$ProximityCheck;->mTag:Ljava/lang/String;

    const-string v2, "Event has no values!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/systemui_ex/statusbar/BaseStatusBar$ProximityCheck;->finishWithResult(I)V

    .line 523
    :goto_0
    return-void

    .line 519
    :cond_1
    sget-boolean v2, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$ProximityCheck;->mTag:Ljava/lang/String;

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

    iget v4, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$ProximityCheck;->mMaxRange:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    :cond_2
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v0

    iget v3, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$ProximityCheck;->mMaxRange:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    move v0, v1

    .line 521
    .local v0, "isNear":Z
    :cond_3
    if-eqz v0, :cond_4

    :goto_1
    invoke-direct {p0, v1}, Lcom/android/systemui_ex/statusbar/BaseStatusBar$ProximityCheck;->finishWithResult(I)V

    goto :goto_0

    :cond_4
    const/4 v1, 0x2

    goto :goto_1
.end method
