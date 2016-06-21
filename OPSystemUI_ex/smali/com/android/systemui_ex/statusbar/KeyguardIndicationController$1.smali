.class Lcom/android/systemui_ex/statusbar/KeyguardIndicationController$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardIndicationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;)V
    .locals 0

    .prologue
    .line 214
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController$1;->this$0:Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefreshBatteryInfo(Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V
    .locals 7
    .param p1, "status"    # Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    .prologue
    const/4 v2, 0x0

    .line 218
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isPluggedIn()Z

    move-result v3

    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController$1;->this$0:Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;

    # getter for: Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->mPowerPluggedIn:Z
    invoke-static {v4}, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->access$000(Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;)Z

    move-result v4

    if-ne v3, v4, :cond_1

    iget v3, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->level:I

    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController$1;->this$0:Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;

    # getter for: Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->mBatteryLevel:I
    invoke-static {v4}, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->access$100(Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;)I

    move-result v4

    if-ne v3, v4, :cond_1

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isCharged()Z

    move-result v3

    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController$1;->this$0:Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;

    # getter for: Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->mPowerCharged:Z
    invoke-static {v4}, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->access$200(Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;)Z

    move-result v4

    if-ne v3, v4, :cond_1

    .line 250
    :cond_0
    :goto_0
    return-void

    .line 223
    :cond_1
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController$1;->this$0:Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;

    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController$1;->this$0:Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;

    # getter for: Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->mPowerPluggedIn:Z
    invoke-static {v4}, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->access$000(Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;)Z

    move-result v4

    # setter for: Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->mLastPowerPluggedIn:Z
    invoke-static {v3, v4}, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->access$302(Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;Z)Z

    .line 225
    iget v3, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->status:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    iget v3, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->status:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_4

    :cond_2
    const/4 v0, 0x1

    .line 228
    .local v0, "isChargingOrFull":Z
    :goto_1
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController$1;->this$0:Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isPluggedIn()Z

    move-result v4

    # setter for: Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->mPowerPluggedIn:Z
    invoke-static {v3, v4}, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->access$002(Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;Z)Z

    .line 230
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController$1;->this$0:Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isCharged()Z

    move-result v4

    # setter for: Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->mPowerCharged:Z
    invoke-static {v3, v4}, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->access$202(Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;Z)Z

    .line 232
    iget v1, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->level:I

    .line 233
    .local v1, "level":I
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController$1;->this$0:Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;

    # setter for: Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->mBatteryLevel:I
    invoke-static {v3, v1}, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->access$102(Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;I)I

    .line 235
    const-string v3, "KeyguardIndicationController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onRefreshBatteryInfo: plugged = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController$1;->this$0:Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;

    # getter for: Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->mPowerPluggedIn:Z
    invoke-static {v5}, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->access$000(Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", last plugged = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController$1;->this$0:Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;

    # getter for: Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->mLastPowerPluggedIn:Z
    invoke-static {v5}, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->access$300(Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", charged = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController$1;->this$0:Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;

    # getter for: Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->mPowerCharged:Z
    invoke-static {v5}, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->access$200(Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", Level = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController$1;->this$0:Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;

    # getter for: Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->mVisible:Z
    invoke-static {v3}, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->access$400(Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 238
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController$1;->this$0:Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;

    # getter for: Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->mKeyguardChargeAnimationView:Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;
    invoke-static {v3}, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->access$500(Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;)Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 240
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController$1;->this$0:Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;

    # getter for: Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->mKeyguardChargeAnimationView:Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;
    invoke-static {v3}, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->access$500(Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;)Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController$1;->this$0:Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;

    # getter for: Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->mPowerPluggedIn:Z
    invoke-static {v4}, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->access$000(Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;)Z

    move-result v4

    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController$1;->this$0:Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;

    # getter for: Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->mBatteryLevel:I
    invoke-static {v5}, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->access$100(Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;)I

    move-result v5

    iget-object v6, p0, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController$1;->this$0:Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;

    # invokes: Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->computePowerIndication()Ljava/lang/String;
    invoke-static {v6}, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->access$600(Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->setPluggedState(ZILjava/lang/String;)V

    .line 242
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController$1;->this$0:Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;

    # getter for: Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->mPowerPluggedIn:Z
    invoke-static {v3}, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->access$000(Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController$1;->this$0:Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;

    # getter for: Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->mLastPowerPluggedIn:Z
    invoke-static {v3}, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->access$300(Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 243
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController$1;->this$0:Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;

    # invokes: Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->startChargingAnimation()V
    invoke-static {v2}, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->access$700(Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;)V

    .line 249
    :cond_3
    :goto_2
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController$1;->this$0:Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;

    # invokes: Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->updateIndication()V
    invoke-static {v2}, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->access$800(Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;)V

    goto/16 :goto_0

    .end local v0    # "isChargingOrFull":Z
    .end local v1    # "level":I
    :cond_4
    move v0, v2

    .line 225
    goto/16 :goto_1

    .line 244
    .restart local v0    # "isChargingOrFull":Z
    .restart local v1    # "level":I
    :cond_5
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController$1;->this$0:Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;

    # getter for: Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->mPowerPluggedIn:Z
    invoke-static {v3}, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->access$000(Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController$1;->this$0:Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;

    # getter for: Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->mLastPowerPluggedIn:Z
    invoke-static {v3}, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->access$300(Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 245
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController$1;->this$0:Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;

    # getter for: Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->mKeyguardChargeAnimationView:Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;
    invoke-static {v3}, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->access$500(Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;)Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->doChargingTextAnimation(Z)V

    goto :goto_2
.end method

.method public onScreenTurnedOn()V
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController$1;->this$0:Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;

    # getter for: Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->mVisible:Z
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->access$400(Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController$1;->this$0:Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;

    # getter for: Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->mPowerPluggedIn:Z
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->access$000(Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController$1;->this$0:Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;

    # invokes: Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->updateIndication()V
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->access$800(Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;)V

    .line 257
    :cond_0
    return-void
.end method
