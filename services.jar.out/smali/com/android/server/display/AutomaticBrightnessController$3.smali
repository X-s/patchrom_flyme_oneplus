.class Lcom/android/server/display/AutomaticBrightnessController$3;
.super Ljava/lang/Object;
.source "AutomaticBrightnessController.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/AutomaticBrightnessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/AutomaticBrightnessController;


# direct methods
.method constructor <init>(Lcom/android/server/display/AutomaticBrightnessController;)V
    .locals 0

    .prologue
    .line 989
    iput-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController$3;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 1007
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v4, 0x0

    .line 992
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 993
    .local v2, "time":J
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v1, v4

    .line 994
    .local v0, "distance":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_1

    .line 995
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController$3;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    const/4 v4, 0x1

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->mProximityPositive:Z
    invoke-static {v1, v4}, Lcom/android/server/display/AutomaticBrightnessController;->access$1002(Lcom/android/server/display/AutomaticBrightnessController;Z)Z

    .line 999
    :goto_0
    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->DEBUG_BACKLIGHT:Z
    invoke-static {}, Lcom/android/server/display/AutomaticBrightnessController;->access$2200()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1000
    const-string v1, "AutomaticBrightnessController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mProximityPositive : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController$3;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mProximityPositive:Z
    invoke-static {v5}, Lcom/android/server/display/AutomaticBrightnessController;->access$1000(Lcom/android/server/display/AutomaticBrightnessController;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    :cond_0
    return-void

    .line 997
    :cond_1
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController$3;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->mProximityPositive:Z
    invoke-static {v1, v4}, Lcom/android/server/display/AutomaticBrightnessController;->access$1002(Lcom/android/server/display/AutomaticBrightnessController;Z)Z

    goto :goto_0
.end method
