.class Lcom/android/systemui_ex/keyguard/KeyguardViewMediator$5;
.super Ljava/lang/Object;
.source "KeyguardViewMediator.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 1377
    iput-object p1, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1384
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mWM:Landroid/view/IWindowManager;
    invoke-static {v1}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->access$3300(Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;)Landroid/view/IWindowManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;
    invoke-static {v2}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->access$1600(Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;)Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->shouldDisableWindowAnimationsForUnlock()Z

    move-result v2

    iget-object v3, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;
    invoke-static {v3}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->access$1600(Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;)Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->isGoingToNotificationShade()Z

    move-result v3

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/view/IWindowManager;->keyguardGoingAway(ZZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1391
    :goto_0
    return-void

    .line 1388
    :catch_0
    move-exception v0

    .line 1389
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyguardViewMediator"

    const-string v2, "Error while calling WindowManager"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
