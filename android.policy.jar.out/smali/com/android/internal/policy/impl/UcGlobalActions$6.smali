.class Lcom/android/internal/policy/impl/UcGlobalActions$6;
.super Lcom/android/internal/policy/impl/UcGlobalActions$SinglePressAction;
.source "UcGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/UcGlobalActions;->getLockdownAction()Lcom/android/internal/policy/impl/UcGlobalActions$Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/UcGlobalActions;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/UcGlobalActions;II)V
    .locals 0
    .param p2, "x0"    # I
    .param p3, "x1"    # I

    .prologue
    .line 610
    iput-object p1, p0, Lcom/android/internal/policy/impl/UcGlobalActions$6;->this$0:Lcom/android/internal/policy/impl/UcGlobalActions;

    invoke-direct {p0, p2, p3}, Lcom/android/internal/policy/impl/UcGlobalActions$SinglePressAction;-><init>(II)V

    return-void
.end method


# virtual methods
.method public onPress()V
    .locals 3

    .prologue
    .line 614
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/internal/policy/impl/UcGlobalActions$6;->this$0:Lcom/android/internal/policy/impl/UcGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/UcGlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/UcGlobalActions;->access$200(Lcom/android/internal/policy/impl/UcGlobalActions;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->requireCredentialEntry(I)V

    .line 616
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->lockNow(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 620
    :goto_0
    return-void

    .line 617
    :catch_0
    move-exception v0

    .line 618
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "UcGlobalActions"

    const-string v2, "Error while trying to lock device."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .prologue
    .line 629
    const/4 v0, 0x0

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    .prologue
    .line 624
    const/4 v0, 0x1

    return v0
.end method
