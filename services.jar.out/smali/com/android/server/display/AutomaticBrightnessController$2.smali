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
    .param p1, "this$0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    .line 1025
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
    .line 1157
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 14
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 1028
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v3}, Lcom/android/server/display/AutomaticBrightnessController;->-get13(Lcom/android/server/display/AutomaticBrightnessController;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 1029
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 1030
    .local v4, "time":J
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v3, v11

    .line 1031
    .local v2, "lux":F
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v2, v3

    if-nez v3, :cond_0

    .line 1032
    const/4 v2, 0x0

    .line 1033
    :cond_0
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v3}, Lcom/android/server/display/AutomaticBrightnessController;->-get5(Lcom/android/server/display/AutomaticBrightnessController;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1034
    const-string/jumbo v6, "lux-display"

    float-to-int v7, v2

    .line 1033
    invoke-static {v3, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1038
    sget v3, Lcom/android/server/power/PowerManagerService;->sBrightnessBoost:I

    if-ne v3, v12, :cond_1

    .line 1039
    sput v13, Lcom/android/server/power/PowerManagerService;->sBrightnessBoost:I

    .line 1040
    const-string/jumbo v3, "RampAnimator"

    const-string/jumbo v6, "sBrightnessBoost == 2"

    invoke-static {v3, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    :cond_1
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v3}, Lcom/android/server/display/AutomaticBrightnessController;->-get16(Lcom/android/server/display/AutomaticBrightnessController;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1044
    sget-boolean v3, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 1045
    const-string/jumbo v3, "AutomaticBrightnessController"

    const-string/jumbo v6, "P-Sensor Changed "

    invoke-static {v3, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    :cond_2
    return-void

    .line 1049
    :cond_3
    sget-boolean v3, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG:Z

    if-eqz v3, :cond_4

    .line 1050
    const-string/jumbo v3, "AutomaticBrightnessController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Light-Sensor Changed lux: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "mAmbientState:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1051
    iget-object v7, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v7}, Lcom/android/server/display/AutomaticBrightnessController;->-get4(Lcom/android/server/display/AutomaticBrightnessController;)I

    move-result v7

    .line 1050
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1051
    const-string/jumbo v7, " mAmbientLuxMin: "

    .line 1050
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1051
    iget-object v7, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v7}, Lcom/android/server/display/AutomaticBrightnessController;->-get3(Lcom/android/server/display/AutomaticBrightnessController;)F

    move-result v7

    .line 1050
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1051
    const-string/jumbo v7, " mAmbientLuxMax: "

    .line 1050
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1051
    iget-object v7, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v7}, Lcom/android/server/display/AutomaticBrightnessController;->-get2(Lcom/android/server/display/AutomaticBrightnessController;)F

    move-result v7

    .line 1050
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    :cond_4
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v3}, Lcom/android/server/display/AutomaticBrightnessController;->-get6(Lcom/android/server/display/AutomaticBrightnessController;)Z

    move-result v3

    if-eqz v3, :cond_9

    cmpl-float v3, v2, v10

    if-nez v3, :cond_9

    .line 1053
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v3, v11}, Lcom/android/server/display/AutomaticBrightnessController;->-set4(Lcom/android/server/display/AutomaticBrightnessController;Z)Z

    .line 1054
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v3}, Lcom/android/server/display/AutomaticBrightnessController;->-get1(Lcom/android/server/display/AutomaticBrightnessController;)Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 1055
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v3}, Lcom/android/server/display/AutomaticBrightnessController;->-get1(Lcom/android/server/display/AutomaticBrightnessController;)Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    move-result-object v3

    invoke-virtual {v3, v11}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getTime(I)J

    move-result-wide v6

    sub-long v6, v4, v6

    const-wide/16 v8, 0x64

    cmp-long v3, v6, v8

    if-gez v3, :cond_7

    .line 1056
    sget-boolean v3, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG:Z

    if-eqz v3, :cond_5

    .line 1057
    const-string/jumbo v3, "AutomaticBrightnessController"

    const-string/jumbo v6, "onSensorChanged: first lux  is illegal"

    invoke-static {v3, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    :cond_5
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v3}, Lcom/android/server/display/AutomaticBrightnessController;->-get22(Lcom/android/server/display/AutomaticBrightnessController;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1087
    cmpl-float v3, v2, v10

    if-eqz v3, :cond_b

    .line 1088
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v3}, Lcom/android/server/display/AutomaticBrightnessController;->-wrap3(Lcom/android/server/display/AutomaticBrightnessController;)V

    .line 1089
    sget-boolean v3, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG:Z

    if-eqz v3, :cond_6

    .line 1090
    const-string/jumbo v3, "AutomaticBrightnessController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "received 0lux at"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v7}, Lcom/android/server/display/AutomaticBrightnessController;->-get21(Lcom/android/server/display/AutomaticBrightnessController;)J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "now received lux="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    :cond_6
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v3}, Lcom/android/server/display/AutomaticBrightnessController;->-get4(Lcom/android/server/display/AutomaticBrightnessController;)I

    move-result v3

    if-nez v3, :cond_c

    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v3}, Lcom/android/server/display/AutomaticBrightnessController;->-get3(Lcom/android/server/display/AutomaticBrightnessController;)F

    move-result v3

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_c

    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v3}, Lcom/android/server/display/AutomaticBrightnessController;->-get2(Lcom/android/server/display/AutomaticBrightnessController;)F

    move-result v3

    cmpg-float v3, v2, v3

    if-gez v3, :cond_c

    .line 1100
    return-void

    .line 1060
    :cond_7
    cmpl-float v3, v2, v10

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v3}, Lcom/android/server/display/AutomaticBrightnessController;->-get3(Lcom/android/server/display/AutomaticBrightnessController;)F

    move-result v3

    cmpl-float v3, v3, v10

    if-eqz v3, :cond_5

    sget v3, Lcom/android/server/power/PowerManagerService;->sBrightnessBoost:I

    if-eq v3, v13, :cond_5

    .line 1061
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v3}, Lcom/android/server/display/AutomaticBrightnessController;->-get22(Lcom/android/server/display/AutomaticBrightnessController;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 1062
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v3, v4, v5}, Lcom/android/server/display/AutomaticBrightnessController;->-set8(Lcom/android/server/display/AutomaticBrightnessController;J)J

    .line 1063
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v3, v12}, Lcom/android/server/display/AutomaticBrightnessController;->-set9(Lcom/android/server/display/AutomaticBrightnessController;Z)Z

    .line 1064
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v3}, Lcom/android/server/display/AutomaticBrightnessController;->-wrap2(Lcom/android/server/display/AutomaticBrightnessController;)V

    .line 1065
    sget-boolean v3, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG:Z

    if-eqz v3, :cond_8

    .line 1066
    const-string/jumbo v3, "AutomaticBrightnessController"

    const-string/jumbo v6, "onSensorChanged: first received lux = 0"

    invoke-static {v3, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    :cond_8
    return-void

    .line 1073
    :cond_9
    cmpl-float v3, v2, v10

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v3}, Lcom/android/server/display/AutomaticBrightnessController;->-get3(Lcom/android/server/display/AutomaticBrightnessController;)F

    move-result v3

    cmpl-float v3, v3, v10

    if-eqz v3, :cond_5

    sget v3, Lcom/android/server/power/PowerManagerService;->sBrightnessBoost:I

    if-eq v3, v13, :cond_5

    .line 1074
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v3}, Lcom/android/server/display/AutomaticBrightnessController;->-get22(Lcom/android/server/display/AutomaticBrightnessController;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 1075
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v3, v4, v5}, Lcom/android/server/display/AutomaticBrightnessController;->-set8(Lcom/android/server/display/AutomaticBrightnessController;J)J

    .line 1076
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v3, v12}, Lcom/android/server/display/AutomaticBrightnessController;->-set9(Lcom/android/server/display/AutomaticBrightnessController;Z)Z

    .line 1077
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v3}, Lcom/android/server/display/AutomaticBrightnessController;->-wrap2(Lcom/android/server/display/AutomaticBrightnessController;)V

    .line 1078
    sget-boolean v3, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG:Z

    if-eqz v3, :cond_a

    .line 1079
    const-string/jumbo v3, "AutomaticBrightnessController"

    const-string/jumbo v6, "onSensorChanged: first received lux = 0"

    invoke-static {v3, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    :cond_a
    return-void

    .line 1094
    :cond_b
    const-string/jumbo v3, "AutomaticBrightnessController"

    const-string/jumbo v6, "it will not go here"

    invoke-static {v3, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    return-void

    .line 1103
    :cond_c
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v3}, Lcom/android/server/display/AutomaticBrightnessController;->-get4(Lcom/android/server/display/AutomaticBrightnessController;)I

    move-result v3

    if-ne v3, v12, :cond_e

    .line 1104
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v3}, Lcom/android/server/display/AutomaticBrightnessController;->-get10(Lcom/android/server/display/AutomaticBrightnessController;)F

    move-result v3

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_d

    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v3}, Lcom/android/server/display/AutomaticBrightnessController;->-get9(Lcom/android/server/display/AutomaticBrightnessController;)F

    move-result v3

    cmpg-float v3, v2, v3

    if-gez v3, :cond_d

    .line 1105
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v3, v13}, Lcom/android/server/display/AutomaticBrightnessController;->-set3(Lcom/android/server/display/AutomaticBrightnessController;I)I

    .line 1106
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    .line 1108
    invoke-static {}, Lcom/android/server/display/AutomaticBrightnessController;->-get23()Lcom/android/server/display/BrightnessControllerUtility;

    sget-object v6, Lcom/android/server/display/BrightnessControllerUtility;->mAmbientLuxConfig:[F

    iget-object v7, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v7}, Lcom/android/server/display/AutomaticBrightnessController;->-get8(Lcom/android/server/display/AutomaticBrightnessController;)I

    move-result v7

    aget v6, v6, v7

    .line 1106
    invoke-static {v3, v4, v5, v6}, Lcom/android/server/display/AutomaticBrightnessController;->-wrap1(Lcom/android/server/display/AutomaticBrightnessController;JF)V

    .line 1110
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v3, v11}, Lcom/android/server/display/AutomaticBrightnessController;->-set3(Lcom/android/server/display/AutomaticBrightnessController;I)I

    .line 1111
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v6}, Lcom/android/server/display/AutomaticBrightnessController;->-get10(Lcom/android/server/display/AutomaticBrightnessController;)F

    move-result v6

    invoke-static {v3, v6}, Lcom/android/server/display/AutomaticBrightnessController;->-set2(Lcom/android/server/display/AutomaticBrightnessController;F)F

    .line 1112
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v6}, Lcom/android/server/display/AutomaticBrightnessController;->-get9(Lcom/android/server/display/AutomaticBrightnessController;)F

    move-result v6

    invoke-static {v3, v6}, Lcom/android/server/display/AutomaticBrightnessController;->-set1(Lcom/android/server/display/AutomaticBrightnessController;F)F

    .line 1113
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v6}, Lcom/android/server/display/AutomaticBrightnessController;->-get8(Lcom/android/server/display/AutomaticBrightnessController;)I

    move-result v6

    invoke-static {v3, v6}, Lcom/android/server/display/AutomaticBrightnessController;->-set0(Lcom/android/server/display/AutomaticBrightnessController;I)I

    .line 1114
    return-void

    .line 1117
    :cond_d
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v3}, Lcom/android/server/display/AutomaticBrightnessController;->-get3(Lcom/android/server/display/AutomaticBrightnessController;)F

    move-result v3

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_e

    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v3}, Lcom/android/server/display/AutomaticBrightnessController;->-get2(Lcom/android/server/display/AutomaticBrightnessController;)F

    move-result v3

    cmpg-float v3, v2, v3

    if-gez v3, :cond_e

    .line 1118
    return-void

    .line 1122
    :cond_e
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {}, Lcom/android/server/display/AutomaticBrightnessController;->-get23()Lcom/android/server/display/BrightnessControllerUtility;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v7}, Lcom/android/server/display/AutomaticBrightnessController;->-get11(Lcom/android/server/display/AutomaticBrightnessController;)F

    move-result v7

    invoke-virtual {v6, v2, v7}, Lcom/android/server/display/BrightnessControllerUtility;->calculateRate(FF)I

    move-result v6

    invoke-static {v3, v6}, Lcom/android/server/display/AutomaticBrightnessController;->-set7(Lcom/android/server/display/AutomaticBrightnessController;I)I

    .line 1123
    sget-boolean v3, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG:Z

    if-nez v3, :cond_f

    invoke-static {}, Lcom/android/server/display/AutomaticBrightnessController;->-get0()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1124
    :cond_f
    const-string/jumbo v3, "AutomaticBrightnessController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "lux="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " ,mLastObservedLux="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v7}, Lcom/android/server/display/AutomaticBrightnessController;->-get11(Lcom/android/server/display/AutomaticBrightnessController;)F

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1125
    const-string/jumbo v7, " ,mScreenAutoRate="

    .line 1124
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1125
    iget-object v7, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v7}, Lcom/android/server/display/AutomaticBrightnessController;->-get19(Lcom/android/server/display/AutomaticBrightnessController;)I

    move-result v7

    .line 1124
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    :cond_10
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v3, v2}, Lcom/android/server/display/AutomaticBrightnessController;->-set5(Lcom/android/server/display/AutomaticBrightnessController;F)F

    .line 1128
    const/4 v0, 0x0

    .line 1129
    .local v0, "elemNdx":I
    invoke-static {}, Lcom/android/server/display/AutomaticBrightnessController;->-get23()Lcom/android/server/display/BrightnessControllerUtility;

    sget v1, Lcom/android/server/display/BrightnessControllerUtility;->BRIGHTNESS_LEVELS:I

    .line 1130
    .local v1, "elementLen":I
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_11

    .line 1131
    invoke-static {}, Lcom/android/server/display/AutomaticBrightnessController;->-get23()Lcom/android/server/display/BrightnessControllerUtility;

    sget-object v3, Lcom/android/server/display/BrightnessControllerUtility;->mAmbientLuxConfig:[F

    aget v3, v3, v0

    cmpg-float v3, v2, v3

    if-gtz v3, :cond_15

    .line 1132
    invoke-static {}, Lcom/android/server/display/AutomaticBrightnessController;->-get23()Lcom/android/server/display/BrightnessControllerUtility;

    sget-object v3, Lcom/android/server/display/BrightnessControllerUtility;->mAmbientLuxConfig:[F

    aget v2, v3, v0

    .line 1133
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {}, Lcom/android/server/display/AutomaticBrightnessController;->-get23()Lcom/android/server/display/BrightnessControllerUtility;

    sget-object v6, Lcom/android/server/display/BrightnessControllerUtility;->mAmbientLuxMinConfig:[F

    aget v6, v6, v0

    invoke-static {v3, v6}, Lcom/android/server/display/AutomaticBrightnessController;->-set2(Lcom/android/server/display/AutomaticBrightnessController;F)F

    .line 1134
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {}, Lcom/android/server/display/AutomaticBrightnessController;->-get23()Lcom/android/server/display/BrightnessControllerUtility;

    sget-object v6, Lcom/android/server/display/BrightnessControllerUtility;->mAmbientLuxMaxConfig:[F

    aget v6, v6, v0

    invoke-static {v3, v6}, Lcom/android/server/display/AutomaticBrightnessController;->-set1(Lcom/android/server/display/AutomaticBrightnessController;F)F

    .line 1135
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v3, v0}, Lcom/android/server/display/AutomaticBrightnessController;->-set0(Lcom/android/server/display/AutomaticBrightnessController;I)I

    .line 1147
    :cond_11
    :goto_1
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v3, v12}, Lcom/android/server/display/AutomaticBrightnessController;->-set3(Lcom/android/server/display/AutomaticBrightnessController;I)I

    .line 1148
    sget-boolean v3, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG:Z

    if-nez v3, :cond_12

    invoke-static {}, Lcom/android/server/display/AutomaticBrightnessController;->-get0()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 1149
    :cond_12
    const-string/jumbo v3, "AutomaticBrightnessController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Light-Sensor Changed new lux: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "mAmbientState:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1150
    iget-object v7, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v7}, Lcom/android/server/display/AutomaticBrightnessController;->-get4(Lcom/android/server/display/AutomaticBrightnessController;)I

    move-result v7

    .line 1149
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    :cond_13
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v3, v4, v5, v2}, Lcom/android/server/display/AutomaticBrightnessController;->-wrap1(Lcom/android/server/display/AutomaticBrightnessController;JF)V

    .line 1027
    .end local v0    # "elemNdx":I
    .end local v1    # "elementLen":I
    .end local v2    # "lux":F
    .end local v4    # "time":J
    :cond_14
    return-void

    .line 1138
    .restart local v0    # "elemNdx":I
    .restart local v1    # "elementLen":I
    .restart local v2    # "lux":F
    .restart local v4    # "time":J
    :cond_15
    invoke-static {}, Lcom/android/server/display/AutomaticBrightnessController;->-get23()Lcom/android/server/display/BrightnessControllerUtility;

    sget-object v3, Lcom/android/server/display/BrightnessControllerUtility;->mAmbientLuxConfig:[F

    add-int/lit8 v6, v1, -0x1

    aget v3, v3, v6

    cmpl-float v3, v2, v3

    if-lez v3, :cond_16

    .line 1139
    invoke-static {}, Lcom/android/server/display/AutomaticBrightnessController;->-get23()Lcom/android/server/display/BrightnessControllerUtility;

    sget-object v3, Lcom/android/server/display/BrightnessControllerUtility;->mAmbientLuxConfig:[F

    add-int/lit8 v6, v1, -0x1

    aget v2, v3, v6

    .line 1140
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {}, Lcom/android/server/display/AutomaticBrightnessController;->-get23()Lcom/android/server/display/BrightnessControllerUtility;

    sget-object v6, Lcom/android/server/display/BrightnessControllerUtility;->mAmbientLuxMinConfig:[F

    add-int/lit8 v7, v1, -0x1

    aget v6, v6, v7

    invoke-static {v3, v6}, Lcom/android/server/display/AutomaticBrightnessController;->-set2(Lcom/android/server/display/AutomaticBrightnessController;F)F

    .line 1141
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {}, Lcom/android/server/display/AutomaticBrightnessController;->-get23()Lcom/android/server/display/BrightnessControllerUtility;

    sget-object v6, Lcom/android/server/display/BrightnessControllerUtility;->mAmbientLuxMaxConfig:[F

    add-int/lit8 v7, v1, -0x1

    aget v6, v6, v7

    invoke-static {v3, v6}, Lcom/android/server/display/AutomaticBrightnessController;->-set1(Lcom/android/server/display/AutomaticBrightnessController;F)F

    .line 1142
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    add-int/lit8 v6, v1, -0x1

    invoke-static {v3, v6}, Lcom/android/server/display/AutomaticBrightnessController;->-set0(Lcom/android/server/display/AutomaticBrightnessController;I)I

    goto :goto_1

    .line 1130
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method
