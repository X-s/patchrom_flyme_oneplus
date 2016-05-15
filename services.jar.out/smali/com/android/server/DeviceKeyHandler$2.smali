.class Lcom/android/server/DeviceKeyHandler$2;
.super Ljava/lang/Object;
.source "DeviceKeyHandler.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/DeviceKeyHandler;->SensorProcessMessage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DeviceKeyHandler;


# direct methods
.method constructor <init>(Lcom/android/server/DeviceKeyHandler;)V
    .locals 0

    .prologue
    .line 254
    iput-object p1, p0, Lcom/android/server/DeviceKeyHandler$2;->this$0:Lcom/android/server/DeviceKeyHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 274
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v3, 0x1

    .line 257
    iget-object v1, p0, Lcom/android/server/DeviceKeyHandler$2;->this$0:Lcom/android/server/DeviceKeyHandler;

    iget-object v1, v1, Lcom/android/server/DeviceKeyHandler;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 258
    iget-object v1, p0, Lcom/android/server/DeviceKeyHandler$2;->this$0:Lcom/android/server/DeviceKeyHandler;

    # getter for: Lcom/android/server/DeviceKeyHandler;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v1}, Lcom/android/server/DeviceKeyHandler;->access$600(Lcom/android/server/DeviceKeyHandler;)Landroid/hardware/SensorManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 259
    iget-object v1, p0, Lcom/android/server/DeviceKeyHandler$2;->this$0:Lcom/android/server/DeviceKeyHandler;

    # getter for: Lcom/android/server/DeviceKeyHandler;->mEventHandler:Lcom/android/server/DeviceKeyHandler$EventHandler;
    invoke-static {v1}, Lcom/android/server/DeviceKeyHandler;->access$300(Lcom/android/server/DeviceKeyHandler;)Lcom/android/server/DeviceKeyHandler$EventHandler;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/server/DeviceKeyHandler$EventHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 263
    :cond_1
    iget-object v1, p0, Lcom/android/server/DeviceKeyHandler$2;->this$0:Lcom/android/server/DeviceKeyHandler;

    # getter for: Lcom/android/server/DeviceKeyHandler;->mEventHandler:Lcom/android/server/DeviceKeyHandler$EventHandler;
    invoke-static {v1}, Lcom/android/server/DeviceKeyHandler;->access$300(Lcom/android/server/DeviceKeyHandler;)Lcom/android/server/DeviceKeyHandler$EventHandler;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/server/DeviceKeyHandler$EventHandler;->removeMessages(I)V

    .line 264
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v2, p0, Lcom/android/server/DeviceKeyHandler$2;->this$0:Lcom/android/server/DeviceKeyHandler;

    # getter for: Lcom/android/server/DeviceKeyHandler;->mProximitySensor:Landroid/hardware/Sensor;
    invoke-static {v2}, Lcom/android/server/DeviceKeyHandler;->access$400(Lcom/android/server/DeviceKeyHandler;)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v2

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 266
    const-string v1, "DeviceKeyHandler"

    const-string v2, "SensorProcessMessage : sensor value change"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-object v1, p0, Lcom/android/server/DeviceKeyHandler$2;->this$0:Lcom/android/server/DeviceKeyHandler;

    # getter for: Lcom/android/server/DeviceKeyHandler;->mEventHandler:Lcom/android/server/DeviceKeyHandler$EventHandler;
    invoke-static {v1}, Lcom/android/server/DeviceKeyHandler;->access$300(Lcom/android/server/DeviceKeyHandler;)Lcom/android/server/DeviceKeyHandler$EventHandler;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/server/DeviceKeyHandler$EventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 268
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/DeviceKeyHandler$2;->this$0:Lcom/android/server/DeviceKeyHandler;

    # getter for: Lcom/android/server/DeviceKeyHandler;->mEventHandler:Lcom/android/server/DeviceKeyHandler$EventHandler;
    invoke-static {v1}, Lcom/android/server/DeviceKeyHandler;->access$300(Lcom/android/server/DeviceKeyHandler;)Lcom/android/server/DeviceKeyHandler$EventHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/DeviceKeyHandler$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
