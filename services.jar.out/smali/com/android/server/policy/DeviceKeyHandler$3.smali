.class Lcom/android/server/policy/DeviceKeyHandler$3;
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
    .param p1, "this$0"    # Lcom/android/server/policy/DeviceKeyHandler;

    .prologue
    .line 341
    iput-object p1, p0, Lcom/android/server/policy/DeviceKeyHandler$3;->this$0:Lcom/android/server/policy/DeviceKeyHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 366
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v1, 0x0

    .line 345
    invoke-static {}, Lcom/android/server/policy/DeviceKeyHandler;->-get0()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 346
    const-string/jumbo v2, "DeviceKeyHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mProximityListener.onSensorChanged(): values[0]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :cond_0
    iget-object v2, p0, Lcom/android/server/policy/DeviceKeyHandler$3;->this$0:Lcom/android/server/policy/DeviceKeyHandler;

    invoke-static {v2}, Lcom/android/server/policy/DeviceKeyHandler;->-get4(Lcom/android/server/policy/DeviceKeyHandler;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 350
    :try_start_0
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x0

    aget v0, v3, v4

    .line 354
    .local v0, "distance":F
    iget-object v3, p0, Lcom/android/server/policy/DeviceKeyHandler$3;->this$0:Lcom/android/server/policy/DeviceKeyHandler;

    const v4, 0x3dcccccd    # 0.1f

    cmpl-float v4, v0, v4

    if-lez v4, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-static {v3, v1}, Lcom/android/server/policy/DeviceKeyHandler;->-set1(Lcom/android/server/policy/DeviceKeyHandler;Z)Z

    .line 356
    invoke-static {}, Lcom/android/server/policy/DeviceKeyHandler;->-get0()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 357
    const-string/jumbo v1, "DeviceKeyHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mProximityListener.onSensorChanged(): active = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 358
    iget-object v4, p0, Lcom/android/server/policy/DeviceKeyHandler$3;->this$0:Lcom/android/server/policy/DeviceKeyHandler;

    invoke-static {v4}, Lcom/android/server/policy/DeviceKeyHandler;->-get7(Lcom/android/server/policy/DeviceKeyHandler;)Z

    move-result v4

    .line 357
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    :cond_2
    iget-object v1, p0, Lcom/android/server/policy/DeviceKeyHandler$3;->this$0:Lcom/android/server/policy/DeviceKeyHandler;

    invoke-static {v1}, Lcom/android/server/policy/DeviceKeyHandler;->-get4(Lcom/android/server/policy/DeviceKeyHandler;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 344
    return-void

    .line 349
    .end local v0    # "distance":F
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
