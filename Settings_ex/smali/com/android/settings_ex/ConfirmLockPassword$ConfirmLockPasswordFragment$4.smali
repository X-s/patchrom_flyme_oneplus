.class Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$4;
.super Ljava/lang/Object;
.source "ConfirmLockPassword.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->startCheckPassword(Ljava/lang/String;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$localEffectiveUserId:I

.field final synthetic val$pin:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;Landroid/content/Intent;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;
    .param p2, "val$intent"    # Landroid/content/Intent;
    .param p3, "val$pin"    # Ljava/lang/String;
    .param p4, "val$localEffectiveUserId"    # I

    .prologue
    .line 487
    iput-object p1, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$4;->this$1:Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;

    iput-object p2, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$4;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$4;->val$pin:Ljava/lang/String;

    iput p4, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$4;->val$localEffectiveUserId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChecked(ZI)V
    .locals 3
    .param p1, "matched"    # Z
    .param p2, "timeoutMs"    # I

    .prologue
    .line 490
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$4;->this$1:Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->-set2(Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 491
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$4;->this$1:Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-static {v0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->-wrap0(Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$4;->this$1:Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;

    iget-boolean v0, v0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mReturnCredentials:Z

    if-eqz v0, :cond_0

    .line 492
    iget-object v1, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$4;->val$intent:Landroid/content/Intent;

    const-string/jumbo v2, "type"

    .line 493
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$4;->this$1:Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-static {v0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->-get2(Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 492
    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 495
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$4;->val$intent:Landroid/content/Intent;

    .line 496
    const-string/jumbo v1, "password"

    iget-object v2, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$4;->val$pin:Ljava/lang/String;

    .line 495
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 498
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$4;->this$1:Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-static {v0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->-get0(Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;)Lcom/android/settings_ex/CredentialCheckResultTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$4;->val$intent:Landroid/content/Intent;

    .line 499
    iget v2, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$4;->val$localEffectiveUserId:I

    .line 498
    invoke-virtual {v0, p1, v1, p2, v2}, Lcom/android/settings_ex/CredentialCheckResultTracker;->setResult(ZLandroid/content/Intent;II)V

    .line 489
    return-void

    .line 494
    :cond_1
    const/4 v0, 0x3

    goto :goto_0
.end method
