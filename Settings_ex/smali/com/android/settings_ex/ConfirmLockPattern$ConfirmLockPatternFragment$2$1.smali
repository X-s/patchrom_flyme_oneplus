.class Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$2$1;
.super Ljava/lang/Object;
.source "ConfirmLockPattern.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$2;->startVerifyPattern(Ljava/util/List;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$2;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$localEffectiveUserId:I


# direct methods
.method constructor <init>(Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$2;Landroid/content/Intent;I)V
    .locals 0
    .param p1, "this$2"    # Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$2;
    .param p2, "val$intent"    # Landroid/content/Intent;
    .param p3, "val$localEffectiveUserId"    # I

    .prologue
    .line 547
    iput-object p1, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$2$1;->this$2:Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$2;

    iput-object p2, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$2$1;->val$intent:Landroid/content/Intent;

    iput p3, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$2$1;->val$localEffectiveUserId:I

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

    .line 550
    iget-object v1, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$2$1;->this$2:Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$2;

    iget-object v1, v1, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$2;->this$1:Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-static {v1, v2}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->-set2(Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 551
    const/4 v0, 0x0

    .line 552
    .local v0, "matched":Z
    if-eqz p1, :cond_0

    .line 553
    const/4 v0, 0x1

    .line 554
    iget-object v1, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$2$1;->this$2:Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$2;

    iget-object v1, v1, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$2;->this$1:Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;

    iget-boolean v1, v1, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mReturnCredentials:Z

    if-eqz v1, :cond_0

    .line 555
    iget-object v1, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$2$1;->val$intent:Landroid/content/Intent;

    .line 556
    const-string/jumbo v2, "hw_auth_token"

    .line 555
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 560
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$2$1;->this$2:Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$2;

    iget-object v1, v1, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$2;->this$1:Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-static {v1}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->-get2(Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;)Lcom/android/settings_ex/CredentialCheckResultTracker;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$2$1;->val$intent:Landroid/content/Intent;

    .line 561
    iget v3, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$2$1;->val$localEffectiveUserId:I

    .line 560
    invoke-virtual {v1, v0, v2, p2, v3}, Lcom/android/settings_ex/CredentialCheckResultTracker;->setResult(ZLandroid/content/Intent;II)V

    .line 549
    return-void
.end method
