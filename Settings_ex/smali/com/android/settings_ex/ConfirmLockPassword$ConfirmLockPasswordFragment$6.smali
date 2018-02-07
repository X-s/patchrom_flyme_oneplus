.class Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$6;
.super Landroid/os/CountDownTimer;
.source "ConfirmLockPassword.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->handleAttemptLockout(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;JJ)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;
    .param p2, "$anonymous0"    # J
    .param p4, "$anonymous1"    # J

    .prologue
    .line 588
    iput-object p1, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$6;->this$1:Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 590
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .prologue
    .line 605
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$6;->this$1:Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-static {v0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->-wrap2(Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;)V

    .line 606
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$6;->this$1:Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;

    iget-object v0, v0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mErrorTextView:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 607
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$6;->this$1:Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-virtual {v0}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->isProfileChallenge()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 608
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$6;->this$1:Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;

    iget-object v1, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$6;->this$1:Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;

    iget-object v1, v1, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 609
    iget-object v2, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$6;->this$1:Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;

    iget v2, v2, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->mEffectiveUserId:I

    .line 608
    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentFailedPasswordAttempts(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->updateErrorMessage(I)V

    .line 611
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$6;->this$1:Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->-set1(Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;I)I

    .line 612
    invoke-static {}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->-get5()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 613
    const-string/jumbo v1, "confirm_lock_password_fragment.key_num_wrong_confirm_attempts"

    iget-object v2, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$6;->this$1:Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-static {v2}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->-get3(Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;)I

    move-result v2

    .line 612
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 604
    return-void
.end method

.method public onTick(J)V
    .locals 7
    .param p1, "millisUntilFinished"    # J

    .prologue
    .line 594
    iget-object v1, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$6;->this$1:Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-virtual {v1}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 595
    return-void

    .line 597
    :cond_0
    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    long-to-int v0, v2

    .line 598
    .local v0, "secondsCountdown":I
    iget-object v1, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$6;->this$1:Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;

    iget-object v2, p0, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment$6;->this$1:Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 600
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 599
    const v4, 0x7f0e09b5

    .line 598
    invoke-virtual {v2, v4, v3}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 600
    const-wide/16 v4, 0x0

    .line 598
    invoke-virtual {v1, v2, v4, v5}, Lcom/android/settings_ex/ConfirmLockPassword$ConfirmLockPasswordFragment;->showError(Ljava/lang/CharSequence;J)V

    .line 593
    return-void
.end method
