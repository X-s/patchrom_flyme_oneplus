.class Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$2$2;
.super Ljava/lang/Object;
.source "ConfirmLockPattern.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$2;->startCheckPattern(Ljava/util/List;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$2;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$localEffectiveUserId:I

.field final synthetic val$pattern:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$2;Landroid/content/Intent;Ljava/util/List;I)V
    .locals 0
    .param p1, "this$2"    # Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$2;
    .param p2, "val$intent"    # Landroid/content/Intent;
    .param p4, "val$localEffectiveUserId"    # I

    .prologue
    .line 587
    .local p3, "val$pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    iput-object p1, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$2$2;->this$2:Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$2;

    iput-object p2, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$2$2;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$2$2;->val$pattern:Ljava/util/List;

    iput p4, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$2$2;->val$localEffectiveUserId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChecked(ZI)V
    .locals 3
    .param p1, "matched"    # Z
    .param p2, "timeoutMs"    # I

    .prologue
    .line 590
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$2$2;->this$2:Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$2;

    iget-object v0, v0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$2;->this$1:Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->-set2(Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 591
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$2$2;->this$2:Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$2;

    invoke-static {v0}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$2;->-wrap0(Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$2;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$2$2;->this$2:Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$2;

    iget-object v0, v0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$2;->this$1:Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;

    iget-boolean v0, v0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mReturnCredentials:Z

    if-eqz v0, :cond_0

    .line 592
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$2$2;->val$intent:Landroid/content/Intent;

    const-string/jumbo v1, "type"

    .line 593
    const/4 v2, 0x2

    .line 592
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 594
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$2$2;->val$intent:Landroid/content/Intent;

    const-string/jumbo v1, "password"

    .line 595
    iget-object v2, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$2$2;->val$pattern:Ljava/util/List;

    invoke-static {v2}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 594
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 597
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$2$2;->this$2:Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$2;

    iget-object v0, v0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$2;->this$1:Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-static {v0}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->-get2(Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;)Lcom/android/settings_ex/CredentialCheckResultTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$2$2;->val$intent:Landroid/content/Intent;

    .line 598
    iget v2, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$2$2;->val$localEffectiveUserId:I

    .line 597
    invoke-virtual {v0, p1, v1, p2, v2}, Lcom/android/settings_ex/CredentialCheckResultTracker;->setResult(ZLandroid/content/Intent;II)V

    .line 589
    return-void
.end method
