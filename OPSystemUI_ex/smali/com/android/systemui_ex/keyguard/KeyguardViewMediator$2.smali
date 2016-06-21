.class Lcom/android/systemui_ex/keyguard/KeyguardViewMediator$2;
.super Ljava/lang/Object;
.source "KeyguardViewMediator.java"

# interfaces
.implements Lcom/android/keyguard/ViewMediatorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;)V
    .locals 0

    .prologue
    .line 465
    iput-object p1, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isInputRestricted()Z
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->isInputRestricted()Z

    move-result v0

    return v0
.end method

.method public keyguardDone(Z)V
    .locals 2
    .param p1, "authenticated"    # Z

    .prologue
    .line 472
    iget-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z
    invoke-static {v0}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->access$1400(Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->keyguardDone(ZZ)V

    .line 475
    :cond_0
    return-void
.end method

.method public keyguardDoneDrawing()V
    .locals 2

    .prologue
    .line 478
    iget-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->access$1500(Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 479
    return-void
.end method

.method public keyguardDonePending()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 493
    iget-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    # setter for: Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z
    invoke-static {v0, v1}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->access$1402(Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;Z)Z

    .line 494
    iget-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    # setter for: Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mHideAnimationRun:Z
    invoke-static {v0, v1}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->access$1702(Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;Z)Z

    .line 495
    iget-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;
    invoke-static {v0}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->access$1600(Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;)Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->startPreHideAnimation(Ljava/lang/Runnable;)V

    .line 496
    iget-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->access$1500(Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x14

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 498
    return-void
.end method

.method public keyguardGone()V
    .locals 1

    .prologue
    .line 502
    iget-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mKeyguardDisplayManager:Lcom/android/keyguard/KeyguardDisplayManager;
    invoke-static {v0}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->access$1800(Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;)Lcom/android/keyguard/KeyguardDisplayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardDisplayManager;->hide()V

    .line 503
    return-void
.end method

.method public onUserActivityTimeoutChanged()V
    .locals 1

    .prologue
    .line 488
    iget-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;
    invoke-static {v0}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->access$1600(Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;)Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->updateUserActivityTimeout()V

    .line 489
    return-void
.end method

.method public playTrustedSound()V
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->playTrustedSound()V
    invoke-static {v0}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->access$1900(Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;)V

    .line 522
    return-void
.end method

.method public readyForKeyguardDone()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 507
    iget-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z
    invoke-static {v0}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->access$1400(Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    invoke-virtual {v0, v1, v1}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->keyguardDone(ZZ)V

    .line 512
    :cond_0
    return-void
.end method

.method public resetKeyguard()V
    .locals 1

    .prologue
    .line 516
    iget-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->resetStateLocked()V
    invoke-static {v0}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->access$200(Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;)V

    .line 517
    return-void
.end method

.method public setNeedsInput(Z)V
    .locals 1
    .param p1, "needsInput"    # Z

    .prologue
    .line 483
    iget-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;
    invoke-static {v0}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->access$1600(Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;)Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->setNeedsInput(Z)V

    .line 484
    return-void
.end method

.method public userActivity()V
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->userActivity()V

    .line 469
    return-void
.end method
