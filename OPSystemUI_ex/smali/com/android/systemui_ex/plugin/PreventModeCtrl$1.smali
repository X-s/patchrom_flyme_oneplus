.class Lcom/android/systemui_ex/plugin/PreventModeCtrl$1;
.super Ljava/lang/Object;
.source "PreventModeCtrl.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/plugin/PreventModeCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/plugin/PreventModeCtrl;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/plugin/PreventModeCtrl;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/systemui_ex/plugin/PreventModeCtrl$1;->this$0:Lcom/android/systemui_ex/plugin/PreventModeCtrl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private finishWithResult(I)V
    .locals 3
    .param p1, "result"    # I

    .prologue
    .line 154
    const-string v0, "PreventModeCtrl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finishWithResult: result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui_ex/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 156
    iget-object v0, p0, Lcom/android/systemui_ex/plugin/PreventModeCtrl$1;->this$0:Lcom/android/systemui_ex/plugin/PreventModeCtrl;

    # invokes: Lcom/android/systemui_ex/plugin/PreventModeCtrl;->startRootAnimation()V
    invoke-static {v0}, Lcom/android/systemui_ex/plugin/PreventModeCtrl;->access$300(Lcom/android/systemui_ex/plugin/PreventModeCtrl;)V

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    # getter for: Lcom/android/systemui_ex/plugin/PreventModeCtrl;->mPreventModeActive:Z
    invoke-static {}, Lcom/android/systemui_ex/plugin/PreventModeCtrl;->access$400()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 158
    iget-object v0, p0, Lcom/android/systemui_ex/plugin/PreventModeCtrl$1;->this$0:Lcom/android/systemui_ex/plugin/PreventModeCtrl;

    iget-object v0, v0, Lcom/android/systemui_ex/plugin/PreventModeCtrl;->mPMView:Lcom/android/systemui_ex/plugin/PreventModeView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/plugin/PreventModeView;->setVisibility(I)V

    .line 159
    iget-object v0, p0, Lcom/android/systemui_ex/plugin/PreventModeCtrl$1;->this$0:Lcom/android/systemui_ex/plugin/PreventModeCtrl;

    # invokes: Lcom/android/systemui_ex/plugin/PreventModeCtrl;->disableProximitySensorInternal()V
    invoke-static {v0}, Lcom/android/systemui_ex/plugin/PreventModeCtrl;->access$500(Lcom/android/systemui_ex/plugin/PreventModeCtrl;)V

    goto :goto_0

    .line 160
    :cond_2
    if-nez p1, :cond_0

    .line 161
    iget-object v0, p0, Lcom/android/systemui_ex/plugin/PreventModeCtrl$1;->this$0:Lcom/android/systemui_ex/plugin/PreventModeCtrl;

    # invokes: Lcom/android/systemui_ex/plugin/PreventModeCtrl;->disableProximitySensorInternal()V
    invoke-static {v0}, Lcom/android/systemui_ex/plugin/PreventModeCtrl;->access$500(Lcom/android/systemui_ex/plugin/PreventModeCtrl;)V

    goto :goto_0
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 151
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 7
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 135
    iget-object v2, p0, Lcom/android/systemui_ex/plugin/PreventModeCtrl$1;->this$0:Lcom/android/systemui_ex/plugin/PreventModeCtrl;

    # getter for: Lcom/android/systemui_ex/plugin/PreventModeCtrl;->mObject:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/systemui_ex/plugin/PreventModeCtrl;->access$100(Lcom/android/systemui_ex/plugin/PreventModeCtrl;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 136
    :try_start_0
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    array-length v3, v3

    if-nez v3, :cond_0

    .line 137
    const-string v1, "PreventModeCtrl"

    const-string v3, "Event has no values!"

    invoke-static {v1, v3}, Lcom/android/systemui_ex/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/systemui_ex/plugin/PreventModeCtrl$1;->finishWithResult(I)V

    .line 145
    :goto_0
    monitor-exit v2

    .line 146
    return-void

    .line 141
    :cond_0
    const-string v3, "PreventModeCtrl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Event: value="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " max="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui_ex/plugin/PreventModeCtrl$1;->this$0:Lcom/android/systemui_ex/plugin/PreventModeCtrl;

    # getter for: Lcom/android/systemui_ex/plugin/PreventModeCtrl;->mProximitySensor:Landroid/hardware/Sensor;
    invoke-static {v5}, Lcom/android/systemui_ex/plugin/PreventModeCtrl;->access$200(Lcom/android/systemui_ex/plugin/PreventModeCtrl;)Landroid/hardware/Sensor;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui_ex/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    iget-object v4, p0, Lcom/android/systemui_ex/plugin/PreventModeCtrl$1;->this$0:Lcom/android/systemui_ex/plugin/PreventModeCtrl;

    # getter for: Lcom/android/systemui_ex/plugin/PreventModeCtrl;->mProximitySensor:Landroid/hardware/Sensor;
    invoke-static {v4}, Lcom/android/systemui_ex/plugin/PreventModeCtrl;->access$200(Lcom/android/systemui_ex/plugin/PreventModeCtrl;)Landroid/hardware/Sensor;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    move v0, v1

    .line 143
    .local v0, "isNear":Z
    :cond_1
    if-eqz v0, :cond_2

    :goto_1
    invoke-direct {p0, v1}, Lcom/android/systemui_ex/plugin/PreventModeCtrl$1;->finishWithResult(I)V

    goto :goto_0

    .line 145
    .end local v0    # "isNear":Z
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 143
    .restart local v0    # "isNear":Z
    :cond_2
    const/4 v1, 0x2

    goto :goto_1
.end method
