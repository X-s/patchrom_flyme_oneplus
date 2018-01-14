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
    .param p1, "this$0"    # Lcom/android/server/policy/DeviceKeyHandler;

    .prologue
    .line 304
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
    .line 319
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v1, 0x0

    .line 308
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v2, v1

    .line 310
    .local v0, "distance":F
    const v2, 0x3dcccccd    # 0.1f

    cmpl-float v2, v0, v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    .line 311
    .local v1, "sensorNear":Z
    :cond_0
    if-eqz v1, :cond_1

    .line 312
    const-string/jumbo v2, "/proc/touchpanel/gesture_switch"

    const/16 v3, 0x32

    invoke-static {v2, v3}, Lcom/android/server/policy/FileUtils;->writeIntLine(Ljava/lang/String;I)Z

    .line 307
    :goto_0
    return-void

    .line 314
    :cond_1
    const-string/jumbo v2, "/proc/touchpanel/gesture_switch"

    const/16 v3, 0x31

    invoke-static {v2, v3}, Lcom/android/server/policy/FileUtils;->writeIntLine(Ljava/lang/String;I)Z

    goto :goto_0
.end method
