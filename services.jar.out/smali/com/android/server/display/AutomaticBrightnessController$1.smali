.class Lcom/android/server/display/AutomaticBrightnessController$1;
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
    .line 933
    iput-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 1013
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 11
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 936
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v3}, Lcom/android/server/display/AutomaticBrightnessController;->-get10(Lcom/android/server/display/AutomaticBrightnessController;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 937
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 938
    .local v4, "time":J
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v3, v8

    .line 941
    .local v2, "lux":F
    sget v3, Lcom/android/server/power/PowerManagerService;->sBrightnessBoost:I

    if-ne v3, v9, :cond_0

    .line 942
    sput v10, Lcom/android/server/power/PowerManagerService;->sBrightnessBoost:I

    .line 943
    const-string/jumbo v3, "RampAnimator"

    const-string/jumbo v6, "sBrightnessBoost == 2"

    invoke-static {v3, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    :cond_0
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v3}, Lcom/android/server/display/AutomaticBrightnessController;->-get13(Lcom/android/server/display/AutomaticBrightnessController;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 947
    sget-boolean v3, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 948
    const-string/jumbo v3, "AutomaticBrightnessController"

    const-string/jumbo v6, "P-Sensor Changed "

    invoke-static {v3, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    :cond_1
    return-void

    .line 952
    :cond_2
    sget-boolean v3, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG:Z

    if-eqz v3, :cond_3

    .line 953
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

    .line 954
    iget-object v7, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v7}, Lcom/android/server/display/AutomaticBrightnessController;->-get3(Lcom/android/server/display/AutomaticBrightnessController;)I

    move-result v7

    .line 953
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    :cond_3
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v3}, Lcom/android/server/display/AutomaticBrightnessController;->-get3(Lcom/android/server/display/AutomaticBrightnessController;)I

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v3}, Lcom/android/server/display/AutomaticBrightnessController;->-get2(Lcom/android/server/display/AutomaticBrightnessController;)F

    move-result v3

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_4

    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v3}, Lcom/android/server/display/AutomaticBrightnessController;->-get1(Lcom/android/server/display/AutomaticBrightnessController;)F

    move-result v3

    cmpg-float v3, v2, v3

    if-gez v3, :cond_4

    .line 956
    return-void

    .line 959
    :cond_4
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v3}, Lcom/android/server/display/AutomaticBrightnessController;->-get3(Lcom/android/server/display/AutomaticBrightnessController;)I

    move-result v3

    if-ne v3, v9, :cond_6

    .line 960
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v3}, Lcom/android/server/display/AutomaticBrightnessController;->-get7(Lcom/android/server/display/AutomaticBrightnessController;)F

    move-result v3

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_5

    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v3}, Lcom/android/server/display/AutomaticBrightnessController;->-get6(Lcom/android/server/display/AutomaticBrightnessController;)F

    move-result v3

    cmpg-float v3, v2, v3

    if-gez v3, :cond_5

    .line 961
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v3, v10}, Lcom/android/server/display/AutomaticBrightnessController;->-set3(Lcom/android/server/display/AutomaticBrightnessController;I)I

    .line 962
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    .line 964
    invoke-static {}, Lcom/android/server/display/AutomaticBrightnessController;->-get18()Lcom/android/server/display/BrightnessControllerUtility;

    sget-object v6, Lcom/android/server/display/BrightnessControllerUtility;->mAmbientLuxConfig:[F

    iget-object v7, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v7}, Lcom/android/server/display/AutomaticBrightnessController;->-get5(Lcom/android/server/display/AutomaticBrightnessController;)I

    move-result v7

    aget v6, v6, v7

    .line 962
    invoke-static {v3, v4, v5, v6}, Lcom/android/server/display/AutomaticBrightnessController;->-wrap1(Lcom/android/server/display/AutomaticBrightnessController;JF)V

    .line 966
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v3, v8}, Lcom/android/server/display/AutomaticBrightnessController;->-set3(Lcom/android/server/display/AutomaticBrightnessController;I)I

    .line 967
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v6}, Lcom/android/server/display/AutomaticBrightnessController;->-get7(Lcom/android/server/display/AutomaticBrightnessController;)F

    move-result v6

    invoke-static {v3, v6}, Lcom/android/server/display/AutomaticBrightnessController;->-set2(Lcom/android/server/display/AutomaticBrightnessController;F)F

    .line 968
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v6}, Lcom/android/server/display/AutomaticBrightnessController;->-get6(Lcom/android/server/display/AutomaticBrightnessController;)F

    move-result v6

    invoke-static {v3, v6}, Lcom/android/server/display/AutomaticBrightnessController;->-set1(Lcom/android/server/display/AutomaticBrightnessController;F)F

    .line 969
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v6}, Lcom/android/server/display/AutomaticBrightnessController;->-get5(Lcom/android/server/display/AutomaticBrightnessController;)I

    move-result v6

    invoke-static {v3, v6}, Lcom/android/server/display/AutomaticBrightnessController;->-set0(Lcom/android/server/display/AutomaticBrightnessController;I)I

    .line 970
    return-void

    .line 973
    :cond_5
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v3}, Lcom/android/server/display/AutomaticBrightnessController;->-get2(Lcom/android/server/display/AutomaticBrightnessController;)F

    move-result v3

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_6

    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v3}, Lcom/android/server/display/AutomaticBrightnessController;->-get1(Lcom/android/server/display/AutomaticBrightnessController;)F

    move-result v3

    cmpg-float v3, v2, v3

    if-gez v3, :cond_6

    .line 974
    return-void

    .line 978
    :cond_6
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {}, Lcom/android/server/display/AutomaticBrightnessController;->-get18()Lcom/android/server/display/BrightnessControllerUtility;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v7}, Lcom/android/server/display/AutomaticBrightnessController;->-get8(Lcom/android/server/display/AutomaticBrightnessController;)F

    move-result v7

    invoke-virtual {v6, v2, v7}, Lcom/android/server/display/BrightnessControllerUtility;->calculateRate(FF)I

    move-result v6

    invoke-static {v3, v6}, Lcom/android/server/display/AutomaticBrightnessController;->-set6(Lcom/android/server/display/AutomaticBrightnessController;I)I

    .line 979
    sget-boolean v3, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG:Z

    if-nez v3, :cond_7

    invoke-static {}, Lcom/android/server/display/AutomaticBrightnessController;->-get0()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 980
    :cond_7
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

    iget-object v7, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v7}, Lcom/android/server/display/AutomaticBrightnessController;->-get8(Lcom/android/server/display/AutomaticBrightnessController;)F

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 981
    const-string/jumbo v7, " ,mScreenAutoRate="

    .line 980
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 981
    iget-object v7, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v7}, Lcom/android/server/display/AutomaticBrightnessController;->-get16(Lcom/android/server/display/AutomaticBrightnessController;)I

    move-result v7

    .line 980
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    :cond_8
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v3, v2}, Lcom/android/server/display/AutomaticBrightnessController;->-set4(Lcom/android/server/display/AutomaticBrightnessController;F)F

    .line 984
    const/4 v0, 0x0

    .line 985
    .local v0, "elemNdx":I
    invoke-static {}, Lcom/android/server/display/AutomaticBrightnessController;->-get18()Lcom/android/server/display/BrightnessControllerUtility;

    sget v1, Lcom/android/server/display/BrightnessControllerUtility;->BRIGHTNESS_LEVELS:I

    .line 986
    .local v1, "elementLen":I
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_9

    .line 987
    invoke-static {}, Lcom/android/server/display/AutomaticBrightnessController;->-get18()Lcom/android/server/display/BrightnessControllerUtility;

    sget-object v3, Lcom/android/server/display/BrightnessControllerUtility;->mAmbientLuxConfig:[F

    aget v3, v3, v0

    cmpg-float v3, v2, v3

    if-gtz v3, :cond_d

    .line 988
    invoke-static {}, Lcom/android/server/display/AutomaticBrightnessController;->-get18()Lcom/android/server/display/BrightnessControllerUtility;

    sget-object v3, Lcom/android/server/display/BrightnessControllerUtility;->mAmbientLuxConfig:[F

    aget v2, v3, v0

    .line 989
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {}, Lcom/android/server/display/AutomaticBrightnessController;->-get18()Lcom/android/server/display/BrightnessControllerUtility;

    sget-object v6, Lcom/android/server/display/BrightnessControllerUtility;->mAmbientLuxMinConfig:[F

    aget v6, v6, v0

    invoke-static {v3, v6}, Lcom/android/server/display/AutomaticBrightnessController;->-set2(Lcom/android/server/display/AutomaticBrightnessController;F)F

    .line 990
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {}, Lcom/android/server/display/AutomaticBrightnessController;->-get18()Lcom/android/server/display/BrightnessControllerUtility;

    sget-object v6, Lcom/android/server/display/BrightnessControllerUtility;->mAmbientLuxMaxConfig:[F

    aget v6, v6, v0

    invoke-static {v3, v6}, Lcom/android/server/display/AutomaticBrightnessController;->-set1(Lcom/android/server/display/AutomaticBrightnessController;F)F

    .line 991
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v3, v0}, Lcom/android/server/display/AutomaticBrightnessController;->-set0(Lcom/android/server/display/AutomaticBrightnessController;I)I

    .line 1003
    :cond_9
    :goto_1
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v3, v9}, Lcom/android/server/display/AutomaticBrightnessController;->-set3(Lcom/android/server/display/AutomaticBrightnessController;I)I

    .line 1004
    sget-boolean v3, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG:Z

    if-nez v3, :cond_a

    invoke-static {}, Lcom/android/server/display/AutomaticBrightnessController;->-get0()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1005
    :cond_a
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

    .line 1006
    iget-object v7, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v7}, Lcom/android/server/display/AutomaticBrightnessController;->-get3(Lcom/android/server/display/AutomaticBrightnessController;)I

    move-result v7

    .line 1005
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    :cond_b
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v3, v4, v5, v2}, Lcom/android/server/display/AutomaticBrightnessController;->-wrap1(Lcom/android/server/display/AutomaticBrightnessController;JF)V

    .line 935
    .end local v0    # "elemNdx":I
    .end local v1    # "elementLen":I
    .end local v2    # "lux":F
    .end local v4    # "time":J
    :cond_c
    return-void

    .line 994
    .restart local v0    # "elemNdx":I
    .restart local v1    # "elementLen":I
    .restart local v2    # "lux":F
    .restart local v4    # "time":J
    :cond_d
    invoke-static {}, Lcom/android/server/display/AutomaticBrightnessController;->-get18()Lcom/android/server/display/BrightnessControllerUtility;

    sget-object v3, Lcom/android/server/display/BrightnessControllerUtility;->mAmbientLuxConfig:[F

    add-int/lit8 v6, v1, -0x1

    aget v3, v3, v6

    cmpl-float v3, v2, v3

    if-lez v3, :cond_e

    .line 995
    invoke-static {}, Lcom/android/server/display/AutomaticBrightnessController;->-get18()Lcom/android/server/display/BrightnessControllerUtility;

    sget-object v3, Lcom/android/server/display/BrightnessControllerUtility;->mAmbientLuxConfig:[F

    add-int/lit8 v6, v1, -0x1

    aget v2, v3, v6

    .line 996
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {}, Lcom/android/server/display/AutomaticBrightnessController;->-get18()Lcom/android/server/display/BrightnessControllerUtility;

    sget-object v6, Lcom/android/server/display/BrightnessControllerUtility;->mAmbientLuxMinConfig:[F

    add-int/lit8 v7, v1, -0x1

    aget v6, v6, v7

    invoke-static {v3, v6}, Lcom/android/server/display/AutomaticBrightnessController;->-set2(Lcom/android/server/display/AutomaticBrightnessController;F)F

    .line 997
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {}, Lcom/android/server/display/AutomaticBrightnessController;->-get18()Lcom/android/server/display/BrightnessControllerUtility;

    sget-object v6, Lcom/android/server/display/BrightnessControllerUtility;->mAmbientLuxMaxConfig:[F

    add-int/lit8 v7, v1, -0x1

    aget v6, v6, v7

    invoke-static {v3, v6}, Lcom/android/server/display/AutomaticBrightnessController;->-set1(Lcom/android/server/display/AutomaticBrightnessController;F)F

    .line 998
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    add-int/lit8 v6, v1, -0x1

    invoke-static {v3, v6}, Lcom/android/server/display/AutomaticBrightnessController;->-set0(Lcom/android/server/display/AutomaticBrightnessController;I)I

    goto :goto_1

    .line 986
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method
