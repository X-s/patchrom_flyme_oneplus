.class Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager$4;
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
    .line 301
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager$4;->this$0:Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    .line 304
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager$4;->this$0:Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;

    # getter for: Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBarWindowManager:Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->access$500(Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;)Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;->setKeyguardShowing(Z)V

    .line 305
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager$4;->this$0:Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;

    # getter for: Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBarWindowManager:Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->access$500(Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;)Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;->setKeyguardFadingAway(Z)V

    .line 306
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager$4;->this$0:Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;

    # getter for: Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->access$600(Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;)Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;->hide(Z)V

    .line 307
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager$4;->this$0:Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;

    # invokes: Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->updateStates()V
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->access$700(Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;)V

    .line 308
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager$4;->this$0:Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;

    # getter for: Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mScrimController:Lcom/android/systemui_ex/statusbar/phone/ScrimController;
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->access$800(Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;)Lcom/android/systemui_ex/statusbar/phone/ScrimController;

    move-result-object v1

    const-wide/16 v2, 0x64

    const-wide/16 v4, 0x12c

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->animateKeyguardFadingOut(JJLjava/lang/Runnable;)V

    .line 311
    return-void
.end method
