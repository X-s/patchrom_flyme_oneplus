.class Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment$6;
.super Ljava/lang/Object;
.source "ConfirmLockComplexPassword.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment;->startDisappearAnimation(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment;Landroid/content/Intent;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment;
    .param p2, "val$intent"    # Landroid/content/Intent;

    .prologue
    .line 557
    iput-object p1, p0, Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment$6;->this$1:Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment;

    iput-object p2, p0, Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment$6;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 561
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment$6;->this$1:Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment;

    invoke-virtual {v0}, Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment$6;->this$1:Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment;

    invoke-virtual {v0}, Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 562
    :cond_0
    return-void

    .line 565
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment$6;->this$1:Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment;

    invoke-virtual {v0}, Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment$6;->val$intent:Landroid/content/Intent;

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 566
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment$6;->this$1:Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment;

    invoke-virtual {v0}, Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 567
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment$6;->this$1:Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment;

    invoke-virtual {v0}, Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 568
    const v1, 0x7f05000b

    .line 569
    const v2, 0x7f05000c

    .line 567
    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 559
    return-void
.end method
