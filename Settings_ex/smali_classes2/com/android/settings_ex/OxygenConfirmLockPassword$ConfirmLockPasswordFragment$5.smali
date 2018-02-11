.class Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment$5;
.super Ljava/lang/Object;
.source "OxygenConfirmLockPassword.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->startDisappearAnimation(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;Landroid/content/Intent;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;
    .param p2, "val$intent"    # Landroid/content/Intent;

    .prologue
    .line 411
    iput-object p1, p0, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment$5;->this$1:Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;

    iput-object p2, p0, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment$5;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 415
    iget-object v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment$5;->this$1:Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-virtual {v0}, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment$5;->this$1:Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-virtual {v0}, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 416
    :cond_0
    return-void

    .line 419
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment$5;->this$1:Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-virtual {v0}, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment$5;->val$intent:Landroid/content/Intent;

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 420
    iget-object v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment$5;->this$1:Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-virtual {v0}, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 421
    iget-object v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment$5;->this$1:Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-virtual {v0}, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 422
    const v1, 0x7f05000b

    .line 423
    const v2, 0x7f05000c

    .line 421
    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 413
    return-void
.end method
