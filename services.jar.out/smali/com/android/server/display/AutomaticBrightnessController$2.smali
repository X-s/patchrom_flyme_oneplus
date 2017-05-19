.class Lcom/android/server/display/AutomaticBrightnessController$2;
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
    .line 897
    iput-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 986
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 11
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 900
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z
    invoke-static {v1}, Lcom/android/server/display/AutomaticBrightnessController;->access$900(Lcom/android/server/display/AutomaticBrightnessController;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 901
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 902
    .local v2, "time":J
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v1, v8

    .line 905
    .local v0, "lux":F
    sget v1, Lcom/android/server/power/PowerManagerService;->sBrightnessBoost:I

    if-ne v1, v6, :cond_0

    .line 906
    sput v7, Lcom/android/server/power/PowerManagerService;->sBrightnessBoost:I

    .line 907
    const-string v1, "RampAnimator"

    const-string v4, "sBrightnessBoost == 2"

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mProximityPositive:Z
    invoke-static {v1}, Lcom/android/server/display/AutomaticBrightnessController;->access$1000(Lcom/android/server/display/AutomaticBrightnessController;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 911
    sget-boolean v1, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 912
    const-string v1, "AutomaticBrightnessController"

    const-string v4, "P-Sensor Changed "

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    .end local v0    # "lux":F
    .end local v2    # "time":J
    :cond_1
    :goto_0
    return-void

    .line 917
    .restart local v0    # "lux":F
    .restart local v2    # "time":J
    :cond_2
    sget-boolean v1, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG:Z

    if-eqz v1, :cond_3

    .line 918
    const-string v1, "AutomaticBrightnessController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Light-Sensor Changed lux: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "mAmbientState:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mAmbientState:I
    invoke-static {v5}, Lcom/android/server/display/AutomaticBrightnessController;->access$1100(Lcom/android/server/display/AutomaticBrightnessController;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    :cond_3
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mAmbientState:I
    invoke-static {v1}, Lcom/android/server/display/AutomaticBrightnessController;->access$1100(Lcom/android/server/display/AutomaticBrightnessController;)I

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxMin:F
    invoke-static {v1}, Lcom/android/server/display/AutomaticBrightnessController;->access$1200(Lcom/android/server/display/AutomaticBrightnessController;)F

    move-result v1

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxMax:F
    invoke-static {v1}, Lcom/android/server/display/AutomaticBrightnessController;->access$1300(Lcom/android/server/display/AutomaticBrightnessController;)F

    move-result v1

    cmpg-float v1, v0, v1

    if-ltz v1, :cond_1

    .line 924
    :cond_4
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mAmbientState:I
    invoke-static {v1}, Lcom/android/server/display/AutomaticBrightnessController;->access$1100(Lcom/android/server/display/AutomaticBrightnessController;)I

    move-result v1

    if-ne v1, v6, :cond_6

    .line 925
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mLastAmbientLuxMin:F
    invoke-static {v1}, Lcom/android/server/display/AutomaticBrightnessController;->access$1400(Lcom/android/server/display/AutomaticBrightnessController;)F

    move-result v1

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mLastAmbientLuxMax:F
    invoke-static {v1}, Lcom/android/server/display/AutomaticBrightnessController;->access$1500(Lcom/android/server/display/AutomaticBrightnessController;)F

    move-result v1

    cmpg-float v1, v0, v1

    if-gez v1, :cond_5

    .line 926
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->mAmbientState:I
    invoke-static {v1, v7}, Lcom/android/server/display/AutomaticBrightnessController;->access$1102(Lcom/android/server/display/AutomaticBrightnessController;I)I

    .line 927
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxConfig:[F
    invoke-static {}, Lcom/android/server/display/AutomaticBrightnessController;->access$1600()[F

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mLastAmbientLightZone:I
    invoke-static {v5}, Lcom/android/server/display/AutomaticBrightnessController;->access$1700(Lcom/android/server/display/AutomaticBrightnessController;)I

    move-result v5

    aget v4, v4, v5

    # invokes: Lcom/android/server/display/AutomaticBrightnessController;->handleLightSensorEvent(JF)V
    invoke-static {v1, v2, v3, v4}, Lcom/android/server/display/AutomaticBrightnessController;->access$1800(Lcom/android/server/display/AutomaticBrightnessController;JF)V

    .line 930
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->mAmbientState:I
    invoke-static {v1, v8}, Lcom/android/server/display/AutomaticBrightnessController;->access$1102(Lcom/android/server/display/AutomaticBrightnessController;I)I

    .line 931
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mLastAmbientLuxMin:F
    invoke-static {v4}, Lcom/android/server/display/AutomaticBrightnessController;->access$1400(Lcom/android/server/display/AutomaticBrightnessController;)F

    move-result v4

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxMin:F
    invoke-static {v1, v4}, Lcom/android/server/display/AutomaticBrightnessController;->access$1202(Lcom/android/server/display/AutomaticBrightnessController;F)F

    .line 932
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mLastAmbientLuxMax:F
    invoke-static {v4}, Lcom/android/server/display/AutomaticBrightnessController;->access$1500(Lcom/android/server/display/AutomaticBrightnessController;)F

    move-result v4

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxMax:F
    invoke-static {v1, v4}, Lcom/android/server/display/AutomaticBrightnessController;->access$1302(Lcom/android/server/display/AutomaticBrightnessController;F)F

    .line 933
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mLastAmbientLightZone:I
    invoke-static {v4}, Lcom/android/server/display/AutomaticBrightnessController;->access$1700(Lcom/android/server/display/AutomaticBrightnessController;)I

    move-result v4

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightZone:I
    invoke-static {v1, v4}, Lcom/android/server/display/AutomaticBrightnessController;->access$1902(Lcom/android/server/display/AutomaticBrightnessController;I)I

    goto/16 :goto_0

    .line 937
    :cond_5
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxMin:F
    invoke-static {v1}, Lcom/android/server/display/AutomaticBrightnessController;->access$1200(Lcom/android/server/display/AutomaticBrightnessController;)F

    move-result v1

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_6

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxMax:F
    invoke-static {v1}, Lcom/android/server/display/AutomaticBrightnessController;->access$1300(Lcom/android/server/display/AutomaticBrightnessController;)F

    move-result v1

    cmpg-float v1, v0, v1

    if-ltz v1, :cond_1

    .line 942
    :cond_6
    const/high16 v1, 0x41200000    # 10.0f

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_9

    .line 943
    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxConfig:[F
    invoke-static {}, Lcom/android/server/display/AutomaticBrightnessController;->access$1600()[F

    move-result-object v1

    aget v0, v1, v8

    .line 944
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxMinConfig:[F
    invoke-static {}, Lcom/android/server/display/AutomaticBrightnessController;->access$2000()[F

    move-result-object v4

    aget v4, v4, v8

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxMin:F
    invoke-static {v1, v4}, Lcom/android/server/display/AutomaticBrightnessController;->access$1202(Lcom/android/server/display/AutomaticBrightnessController;F)F

    .line 945
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    const/high16 v4, 0x41200000    # 10.0f

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxMax:F
    invoke-static {v1, v4}, Lcom/android/server/display/AutomaticBrightnessController;->access$1302(Lcom/android/server/display/AutomaticBrightnessController;F)F

    .line 946
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightZone:I
    invoke-static {v1, v8}, Lcom/android/server/display/AutomaticBrightnessController;->access$1902(Lcom/android/server/display/AutomaticBrightnessController;I)I

    .line 974
    :goto_1
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->mAmbientState:I
    invoke-static {v1, v6}, Lcom/android/server/display/AutomaticBrightnessController;->access$1102(Lcom/android/server/display/AutomaticBrightnessController;I)I

    .line 975
    sget-boolean v1, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG:Z

    if-nez v1, :cond_7

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->DEBUG_BACKLIGHT:Z
    invoke-static {}, Lcom/android/server/display/AutomaticBrightnessController;->access$2200()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 976
    :cond_7
    const-string v1, "AutomaticBrightnessController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Light-Sensor Changed new lux: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "mAmbientState:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mAmbientState:I
    invoke-static {v5}, Lcom/android/server/display/AutomaticBrightnessController;->access$1100(Lcom/android/server/display/AutomaticBrightnessController;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    :cond_8
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # invokes: Lcom/android/server/display/AutomaticBrightnessController;->handleLightSensorEvent(JF)V
    invoke-static {v1, v2, v3, v0}, Lcom/android/server/display/AutomaticBrightnessController;->access$1800(Lcom/android/server/display/AutomaticBrightnessController;JF)V

    goto/16 :goto_0

    .line 947
    :cond_9
    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxConfig:[F
    invoke-static {}, Lcom/android/server/display/AutomaticBrightnessController;->access$1600()[F

    move-result-object v1

    aget v1, v1, v6

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_a

    .line 948
    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxConfig:[F
    invoke-static {}, Lcom/android/server/display/AutomaticBrightnessController;->access$1600()[F

    move-result-object v1

    aget v0, v1, v6

    .line 949
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxMinConfig:[F
    invoke-static {}, Lcom/android/server/display/AutomaticBrightnessController;->access$2000()[F

    move-result-object v4

    aget v4, v4, v6

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxMin:F
    invoke-static {v1, v4}, Lcom/android/server/display/AutomaticBrightnessController;->access$1202(Lcom/android/server/display/AutomaticBrightnessController;F)F

    .line 950
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    const/high16 v4, 0x42dc0000    # 110.0f

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxMax:F
    invoke-static {v1, v4}, Lcom/android/server/display/AutomaticBrightnessController;->access$1302(Lcom/android/server/display/AutomaticBrightnessController;F)F

    .line 951
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightZone:I
    invoke-static {v1, v6}, Lcom/android/server/display/AutomaticBrightnessController;->access$1902(Lcom/android/server/display/AutomaticBrightnessController;I)I

    goto :goto_1

    .line 952
    :cond_a
    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxConfig:[F
    invoke-static {}, Lcom/android/server/display/AutomaticBrightnessController;->access$1600()[F

    move-result-object v1

    aget v1, v1, v7

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_b

    .line 953
    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxConfig:[F
    invoke-static {}, Lcom/android/server/display/AutomaticBrightnessController;->access$1600()[F

    move-result-object v1

    aget v0, v1, v7

    .line 954
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    const/high16 v4, 0x41200000    # 10.0f

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxMin:F
    invoke-static {v1, v4}, Lcom/android/server/display/AutomaticBrightnessController;->access$1202(Lcom/android/server/display/AutomaticBrightnessController;F)F

    .line 955
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxMaxConfig:[F
    invoke-static {}, Lcom/android/server/display/AutomaticBrightnessController;->access$2100()[F

    move-result-object v4

    aget v4, v4, v7

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxMax:F
    invoke-static {v1, v4}, Lcom/android/server/display/AutomaticBrightnessController;->access$1302(Lcom/android/server/display/AutomaticBrightnessController;F)F

    .line 956
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightZone:I
    invoke-static {v1, v7}, Lcom/android/server/display/AutomaticBrightnessController;->access$1902(Lcom/android/server/display/AutomaticBrightnessController;I)I

    goto/16 :goto_1

    .line 957
    :cond_b
    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxConfig:[F
    invoke-static {}, Lcom/android/server/display/AutomaticBrightnessController;->access$1600()[F

    move-result-object v1

    aget v1, v1, v9

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_c

    .line 958
    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxConfig:[F
    invoke-static {}, Lcom/android/server/display/AutomaticBrightnessController;->access$1600()[F

    move-result-object v1

    aget v0, v1, v9

    .line 959
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxMinConfig:[F
    invoke-static {}, Lcom/android/server/display/AutomaticBrightnessController;->access$2000()[F

    move-result-object v4

    aget v4, v4, v9

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxMin:F
    invoke-static {v1, v4}, Lcom/android/server/display/AutomaticBrightnessController;->access$1202(Lcom/android/server/display/AutomaticBrightnessController;F)F

    .line 960
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxMaxConfig:[F
    invoke-static {}, Lcom/android/server/display/AutomaticBrightnessController;->access$2100()[F

    move-result-object v4

    aget v4, v4, v9

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxMax:F
    invoke-static {v1, v4}, Lcom/android/server/display/AutomaticBrightnessController;->access$1302(Lcom/android/server/display/AutomaticBrightnessController;F)F

    .line 961
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightZone:I
    invoke-static {v1, v9}, Lcom/android/server/display/AutomaticBrightnessController;->access$1902(Lcom/android/server/display/AutomaticBrightnessController;I)I

    goto/16 :goto_1

    .line 962
    :cond_c
    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxConfig:[F
    invoke-static {}, Lcom/android/server/display/AutomaticBrightnessController;->access$1600()[F

    move-result-object v1

    aget v1, v1, v10

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_d

    .line 963
    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxConfig:[F
    invoke-static {}, Lcom/android/server/display/AutomaticBrightnessController;->access$1600()[F

    move-result-object v1

    aget v0, v1, v10

    .line 964
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxMinConfig:[F
    invoke-static {}, Lcom/android/server/display/AutomaticBrightnessController;->access$2000()[F

    move-result-object v4

    aget v4, v4, v10

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxMin:F
    invoke-static {v1, v4}, Lcom/android/server/display/AutomaticBrightnessController;->access$1202(Lcom/android/server/display/AutomaticBrightnessController;F)F

    .line 965
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxMaxConfig:[F
    invoke-static {}, Lcom/android/server/display/AutomaticBrightnessController;->access$2100()[F

    move-result-object v4

    aget v4, v4, v10

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxMax:F
    invoke-static {v1, v4}, Lcom/android/server/display/AutomaticBrightnessController;->access$1302(Lcom/android/server/display/AutomaticBrightnessController;F)F

    .line 966
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightZone:I
    invoke-static {v1, v10}, Lcom/android/server/display/AutomaticBrightnessController;->access$1902(Lcom/android/server/display/AutomaticBrightnessController;I)I

    goto/16 :goto_1

    .line 968
    :cond_d
    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxConfig:[F
    invoke-static {}, Lcom/android/server/display/AutomaticBrightnessController;->access$1600()[F

    move-result-object v1

    const/4 v4, 0x5

    aget v0, v1, v4

    .line 969
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxMinConfig:[F
    invoke-static {}, Lcom/android/server/display/AutomaticBrightnessController;->access$2000()[F

    move-result-object v4

    const/4 v5, 0x5

    aget v4, v4, v5

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxMin:F
    invoke-static {v1, v4}, Lcom/android/server/display/AutomaticBrightnessController;->access$1202(Lcom/android/server/display/AutomaticBrightnessController;F)F

    .line 970
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxMaxConfig:[F
    invoke-static {}, Lcom/android/server/display/AutomaticBrightnessController;->access$2100()[F

    move-result-object v4

    const/4 v5, 0x5

    aget v4, v4, v5

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxMax:F
    invoke-static {v1, v4}, Lcom/android/server/display/AutomaticBrightnessController;->access$1302(Lcom/android/server/display/AutomaticBrightnessController;F)F

    .line 971
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    const/4 v4, 0x5

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightZone:I
    invoke-static {v1, v4}, Lcom/android/server/display/AutomaticBrightnessController;->access$1902(Lcom/android/server/display/AutomaticBrightnessController;I)I

    goto/16 :goto_1
.end method
