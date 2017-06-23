.class Lcom/android/server/policy/DeviceKeyHandler$1;
.super Ljava/lang/Object;
.source "DeviceKeyHandler.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/DeviceKeyHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/DeviceKeyHandler;


# direct methods
.method constructor <init>(Lcom/android/server/policy/DeviceKeyHandler;)V
    .locals 0

    .prologue
    .line 297
    iput-object p1, p0, Lcom/android/server/policy/DeviceKeyHandler$1;->this$0:Lcom/android/server/policy/DeviceKeyHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 320
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v0, 0x0

    .line 301
    # getter for: Lcom/android/server/policy/DeviceKeyHandler;->DEBUG:Z
    invoke-static {}, Lcom/android/server/policy/DeviceKeyHandler;->access$500()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 302
    const-string v1, "DeviceKeyHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mProximityListener.onSensorChanged(): values[0]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/DeviceKeyHandler$1;->this$0:Lcom/android/server/policy/DeviceKeyHandler;

    # getter for: Lcom/android/server/policy/DeviceKeyHandler;->mObject:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/policy/DeviceKeyHandler;->access$600(Lcom/android/server/policy/DeviceKeyHandler;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 307
    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/DeviceKeyHandler$1;->this$0:Lcom/android/server/policy/DeviceKeyHandler;

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    array-length v3, v3

    if-lez v3, :cond_1

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    iget-object v4, p0, Lcom/android/server/policy/DeviceKeyHandler$1;->this$0:Lcom/android/server/policy/DeviceKeyHandler;

    # getter for: Lcom/android/server/policy/DeviceKeyHandler;->mProximitySensor:Landroid/hardware/Sensor;
    invoke-static {v4}, Lcom/android/server/policy/DeviceKeyHandler;->access$800(Lcom/android/server/policy/DeviceKeyHandler;)Landroid/hardware/Sensor;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    const/4 v0, 0x1

    :cond_1
    # setter for: Lcom/android/server/policy/DeviceKeyHandler;->mProximitySensorActive:Z
    invoke-static {v2, v0}, Lcom/android/server/policy/DeviceKeyHandler;->access$702(Lcom/android/server/policy/DeviceKeyHandler;Z)Z

    .line 309
    # getter for: Lcom/android/server/policy/DeviceKeyHandler;->DEBUG:Z
    invoke-static {}, Lcom/android/server/policy/DeviceKeyHandler;->access$500()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 310
    const-string v0, "DeviceKeyHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mProximityListener.onSensorChanged(): active = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/policy/DeviceKeyHandler$1;->this$0:Lcom/android/server/policy/DeviceKeyHandler;

    # getter for: Lcom/android/server/policy/DeviceKeyHandler;->mProximitySensorActive:Z
    invoke-static {v3}, Lcom/android/server/policy/DeviceKeyHandler;->access$700(Lcom/android/server/policy/DeviceKeyHandler;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler$1;->this$0:Lcom/android/server/policy/DeviceKeyHandler;

    # getter for: Lcom/android/server/policy/DeviceKeyHandler;->mObject:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/policy/DeviceKeyHandler;->access$600(Lcom/android/server/policy/DeviceKeyHandler;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 315
    monitor-exit v1

    .line 316
    return-void

    .line 315
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
