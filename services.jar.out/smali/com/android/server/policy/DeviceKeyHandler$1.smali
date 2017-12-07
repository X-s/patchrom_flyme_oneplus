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
    .param p1, "this$0"    # Lcom/android/server/policy/DeviceKeyHandler;

    .prologue
    .line 415
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
    .line 438
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 419
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x0

    aget v0, v2, v3

    .line 421
    .local v0, "distance":F
    const v2, 0x3dcccccd    # 0.1f

    cmpl-float v2, v0, v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    .line 423
    .local v1, "sensorNear":Z
    :goto_0
    iget-object v2, p0, Lcom/android/server/policy/DeviceKeyHandler$1;->this$0:Lcom/android/server/policy/DeviceKeyHandler;

    invoke-static {v2}, Lcom/android/server/policy/DeviceKeyHandler;->-get4(Lcom/android/server/policy/DeviceKeyHandler;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/server/policy/DeviceKeyHandler$1$1;

    invoke-direct {v3, p0, v1}, Lcom/android/server/policy/DeviceKeyHandler$1$1;-><init>(Lcom/android/server/policy/DeviceKeyHandler$1;Z)V

    .line 434
    const-wide/16 v4, 0x28

    .line 423
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 418
    return-void

    .line 421
    .end local v1    # "sensorNear":Z
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "sensorNear":Z
    goto :goto_0
.end method
