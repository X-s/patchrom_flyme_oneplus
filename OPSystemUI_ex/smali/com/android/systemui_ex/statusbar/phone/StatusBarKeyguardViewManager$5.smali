.class Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager$5;
.super Ljava/lang/Object;
.source "StatusBarKeyguardViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->hide(JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;)V
    .locals 0

    .prologue
    .line 312
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager$5;->this$0:Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 315
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager$5;->this$0:Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;

    # getter for: Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mPhoneStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->access$900(Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;)Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->hideKeyguard()Z

    .line 316
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager$5;->this$0:Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;

    # getter for: Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBarWindowManager:Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->access$500(Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;)Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;->setKeyguardFadingAway(Z)V

    .line 317
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager$5;->this$0:Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;

    # getter for: Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->access$1000(Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;)Lcom/android/keyguard/ViewMediatorCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/keyguard/ViewMediatorCallback;->keyguardGone()V

    .line 318
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager$5;->this$0:Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;

    # invokes: Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->executeAfterKeyguardGoneAction()V
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->access$1100(Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;)V

    .line 319
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager$5;->this$0:Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;

    # setter for: Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mIsKeyguardGoingAway:Z
    invoke-static {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->access$202(Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;Z)Z

    .line 320
    return-void
.end method
