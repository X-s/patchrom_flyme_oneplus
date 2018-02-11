.class Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment$4;
.super Ljava/lang/Object;
.source "ConfirmLockComplexPassword.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment;->startVerifyPassword(Ljava/lang/String;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$localUserId:I


# direct methods
.method constructor <init>(Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment;Landroid/content/Intent;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment;
    .param p2, "val$intent"    # Landroid/content/Intent;
    .param p3, "val$localUserId"    # I

    .prologue
    .line 499
    iput-object p1, p0, Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment$4;->this$1:Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment;

    iput-object p2, p0, Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment$4;->val$intent:Landroid/content/Intent;

    iput p3, p0, Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment$4;->val$localUserId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVerified([BI)V
    .locals 4
    .param p1, "token"    # [B
    .param p2, "timeoutMs"    # I

    .prologue
    const/4 v2, 0x0

    .line 502
    iget-object v1, p0, Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment$4;->this$1:Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment;

    invoke-static {v1, v2}, Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment;->-set2(Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 503
    const/4 v0, 0x0

    .line 504
    .local v0, "matched":Z
    if-eqz p1, :cond_0

    .line 505
    const/4 v0, 0x1

    .line 506
    iget-object v1, p0, Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment$4;->this$1:Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment;

    iget-boolean v1, v1, Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment;->mReturnCredentials:Z

    if-eqz v1, :cond_0

    .line 507
    iget-object v1, p0, Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment$4;->val$intent:Landroid/content/Intent;

    .line 508
    const-string/jumbo v2, "hw_auth_token"

    .line 507
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 512
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment$4;->this$1:Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment;

    invoke-static {v1}, Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment;->-get0(Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment;)Lcom/android/settings_ex/CredentialCheckResultTracker;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment$4;->val$intent:Landroid/content/Intent;

    .line 513
    iget v3, p0, Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment$4;->val$localUserId:I

    .line 512
    invoke-virtual {v1, v0, v2, p2, v3}, Lcom/android/settings_ex/CredentialCheckResultTracker;->setResult(ZLandroid/content/Intent;II)V

    .line 501
    return-void
.end method
