.class Lcom/android/server/display/DisplayPowerController$8;
.super Ljava/lang/Object;
.source "DisplayPowerController.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayPowerController;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0

    .prologue
    .line 1250
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$8;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 1281
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v4, 0x0

    .line 1253
    iget-object v5, p0, Lcom/android/server/display/DisplayPowerController$8;->this$0:Lcom/android/server/display/DisplayPowerController;

    # getter for: Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z
    invoke-static {v5}, Lcom/android/server/display/DisplayPowerController;->access$800(Lcom/android/server/display/DisplayPowerController;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1254
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 1255
    .local v2, "time":J
    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v5, v4

    .line 1256
    .local v0, "distance":F
    const/4 v5, 0x0

    cmpl-float v5, v0, v5

    if-ltz v5, :cond_3

    iget-object v5, p0, Lcom/android/server/display/DisplayPowerController$8;->this$0:Lcom/android/server/display/DisplayPowerController;

    # getter for: Lcom/android/server/display/DisplayPowerController;->mProximityThreshold:F
    invoke-static {v5}, Lcom/android/server/display/DisplayPowerController;->access$900(Lcom/android/server/display/DisplayPowerController;)F

    move-result v5

    cmpg-float v5, v0, v5

    if-gez v5, :cond_3

    const/4 v1, 0x1

    .line 1260
    .local v1, "positive":Z
    :goto_0
    sget-boolean v5, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    if-eqz v5, :cond_0

    .line 1261
    const-string v5, "DisplayPowerController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "P-Sensor Changed: distance = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", positive = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1267
    :cond_0
    iget-object v5, p0, Lcom/android/server/display/DisplayPowerController$8;->this$0:Lcom/android/server/display/DisplayPowerController;

    # setter for: Lcom/android/server/display/DisplayPowerController;->mRealPositive:Z
    invoke-static {v5, v1}, Lcom/android/server/display/DisplayPowerController;->access$1002(Lcom/android/server/display/DisplayPowerController;Z)Z

    .line 1270
    if-nez v1, :cond_1

    .line 1271
    iget-object v5, p0, Lcom/android/server/display/DisplayPowerController$8;->this$0:Lcom/android/server/display/DisplayPowerController;

    # setter for: Lcom/android/server/display/DisplayPowerController;->mSimulatePositive:Z
    invoke-static {v5, v4}, Lcom/android/server/display/DisplayPowerController;->access$1102(Lcom/android/server/display/DisplayPowerController;Z)Z

    .line 1274
    :cond_1
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController$8;->this$0:Lcom/android/server/display/DisplayPowerController;

    # invokes: Lcom/android/server/display/DisplayPowerController;->handleProximitySensorEvent(JZ)V
    invoke-static {v4, v2, v3, v1}, Lcom/android/server/display/DisplayPowerController;->access$1200(Lcom/android/server/display/DisplayPowerController;JZ)V

    .line 1276
    .end local v0    # "distance":F
    .end local v1    # "positive":Z
    .end local v2    # "time":J
    :cond_2
    return-void

    .restart local v0    # "distance":F
    .restart local v2    # "time":J
    :cond_3
    move v1, v4

    .line 1256
    goto :goto_0
.end method
