.class Lcom/android/server/policy/DeviceKeyHandler$2;
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
    .line 275
    iput-object p1, p0, Lcom/android/server/policy/DeviceKeyHandler$2;->this$0:Lcom/android/server/policy/DeviceKeyHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 291
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v1, 0x0

    .line 279
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v2, v1

    .line 280
    .local v0, "distance":F
    float-to-double v2, v0

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_0

    const/high16 v2, 0x40000000    # 2.0f

    cmpg-float v2, v0, v2

    if-gez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/policy/DeviceKeyHandler$2;->this$0:Lcom/android/server/policy/DeviceKeyHandler;

    # getter for: Lcom/android/server/policy/DeviceKeyHandler;->mProximitySensor:Landroid/hardware/Sensor;
    invoke-static {v2}, Lcom/android/server/policy/DeviceKeyHandler;->access$300(Lcom/android/server/policy/DeviceKeyHandler;)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v2

    cmpg-float v2, v0, v2

    if-gez v2, :cond_0

    const/4 v1, 0x1

    .line 282
    .local v1, "sensorNear":Z
    :cond_0
    if-eqz v1, :cond_1

    .line 283
    const-string v2, "/proc/touchpanel/gesture_switch"

    const/16 v3, 0x32

    invoke-static {v2, v3}, Lcom/android/server/policy/FileUtils;->writeIntLine(Ljava/lang/String;I)Z

    .line 287
    :goto_0
    return-void

    .line 285
    :cond_1
    const-string v2, "/proc/touchpanel/gesture_switch"

    const/16 v3, 0x31

    invoke-static {v2, v3}, Lcom/android/server/policy/FileUtils;->writeIntLine(Ljava/lang/String;I)Z

    goto :goto_0
.end method
