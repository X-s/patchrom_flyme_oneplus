.class Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$4$1;
.super Ljava/lang/Object;
.source "ConfirmLockPattern.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$4;->startVerifyPattern(Ljava/util/List;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$4;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$localEffectiveUserId:I

.field final synthetic val$pattern:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$4;Landroid/content/Intent;Ljava/util/List;I)V
    .locals 0

    .prologue
    .line 445
    iput-object p1, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$4$1;->this$1:Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$4;

    iput-object p2, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$4$1;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$4$1;->val$pattern:Ljava/util/List;

    iput p4, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$4$1;->val$localEffectiveUserId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVerified([BI)V
    .locals 6
    .param p1, "token"    # [B
    .param p2, "timeoutMs"    # I

    .prologue
    .line 448
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$4$1;->this$1:Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$4;

    iget-object v0, v0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$0:Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mPendingLockCheck:Landroid/os/AsyncTask;
    invoke-static {v0, v1}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->access$202(Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 449
    const/4 v2, 0x0

    .line 450
    .local v2, "matched":Z
    if-eqz p1, :cond_0

    .line 451
    const/4 v2, 0x1

    .line 452
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$4$1;->val$intent:Landroid/content/Intent;

    const-string v1, "hw_auth_token"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 456
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$4$1;->this$1:Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$4;

    iget-object v1, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$4$1;->val$pattern:Ljava/util/List;

    iget-object v3, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$4$1;->val$intent:Landroid/content/Intent;

    iget v5, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$4$1;->val$localEffectiveUserId:I

    move v4, p2

    # invokes: Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$4;->onPatternChecked(Ljava/util/List;ZLandroid/content/Intent;II)V
    invoke-static/range {v0 .. v5}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$4;->access$500(Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$4;Ljava/util/List;ZLandroid/content/Intent;II)V

    .line 458
    return-void
.end method
