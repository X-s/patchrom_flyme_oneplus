.class Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment$4;
.super Ljava/lang/Object;
.source "OxygenConfirmLockPattern.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->startDisappearAnimation(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;Landroid/content/Intent;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;
    .param p2, "val$intent"    # Landroid/content/Intent;

    .prologue
    .line 376
    iput-object p1, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment$4;->this$1:Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;

    iput-object p2, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment$4;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 380
    iget-object v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment$4;->this$1:Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-virtual {v0}, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment$4;->this$1:Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-virtual {v0}, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 381
    :cond_0
    return-void

    .line 384
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment$4;->this$1:Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-virtual {v0}, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment$4;->val$intent:Landroid/content/Intent;

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 385
    iget-object v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment$4;->this$1:Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-virtual {v0}, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 386
    iget-object v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment$4;->this$1:Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-virtual {v0}, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 387
    const v1, 0x7f05000b

    .line 388
    const v2, 0x7f05000c

    .line 386
    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 378
    return-void
.end method
