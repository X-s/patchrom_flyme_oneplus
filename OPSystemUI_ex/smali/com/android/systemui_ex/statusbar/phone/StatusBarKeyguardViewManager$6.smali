.class Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager$6;
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
    .line 327
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager$6;->this$0:Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 330
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager$6;->this$0:Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;

    # getter for: Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBarWindowManager:Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->access$500(Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;)Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;->setKeyguardFadingAway(Z)V

    .line 331
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager$6;->this$0:Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;

    # getter for: Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mPhoneStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->access$900(Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;)Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->finishKeyguardFadingAway()V

    .line 332
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager$6;->this$0:Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;

    # setter for: Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mIsKeyguardGoingAway:Z
    invoke-static {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->access$202(Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;Z)Z

    .line 333
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/view/WindowManagerGlobal;->trimMemory(I)V

    .line 335
    return-void
.end method
