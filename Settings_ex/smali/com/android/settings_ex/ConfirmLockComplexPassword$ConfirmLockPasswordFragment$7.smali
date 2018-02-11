.class Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment$7;
.super Landroid/os/CountDownTimer;
.source "ConfirmLockComplexPassword.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment;->handleAttemptLockout(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment;JJ)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment;
    .param p2, "$anonymous0"    # J
    .param p4, "$anonymous1"    # J

    .prologue
    .line 649
    iput-object p1, p0, Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment$7;->this$1:Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 651
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .prologue
    .line 673
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment$7;->this$1:Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment;

    invoke-static {v0}, Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment;->-wrap3(Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment;)V

    .line 676
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment$7;->this$1:Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment;

    invoke-virtual {v0}, Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment;->isProfileChallenge()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 677
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment$7;->this$1:Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment;

    iget-object v1, p0, Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment$7;->this$1:Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment;

    iget-object v1, v1, Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 678
    iget-object v2, p0, Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment$7;->this$1:Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment;

    iget v2, v2, Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment;->mEffectiveUserId:I

    .line 677
    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentFailedPasswordAttempts(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment;->updateErrorMessage(I)V

    .line 681
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment$7;->this$1:Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment;

    invoke-static {v0}, Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment;->-get5(Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment;)Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->setEnabled(Z)V

    .line 682
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment$7;->this$1:Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment;

    invoke-static {v0}, Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment;->-get2(Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment$7;->this$1:Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment;

    invoke-static {v1}, Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment;->-wrap1(Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 683
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment$7;->this$1:Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment;->-set1(Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment;I)I

    .line 684
    invoke-static {}, Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment;->-get6()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 685
    const-string/jumbo v1, "confirm_lock_password_fragment.key_num_wrong_confirm_attempts"

    iget-object v2, p0, Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment$7;->this$1:Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment;

    invoke-static {v2}, Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment;->-get4(Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment;)I

    move-result v2

    .line 684
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 672
    return-void
.end method

.method public onTick(J)V
    .locals 7
    .param p1, "millisUntilFinished"    # J

    .prologue
    .line 655
    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    long-to-int v0, v2

    .line 657
    .local v0, "secondsCountdown":I
    iget-object v1, p0, Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment$7;->this$1:Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment;

    invoke-virtual {v1}, Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 658
    return-void

    .line 660
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment$7;->this$1:Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment;

    invoke-static {v1}, Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment;->-get2(Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment;)Landroid/widget/TextView;

    move-result-object v1

    .line 661
    iget-object v2, p0, Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment$7;->this$1:Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 663
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 662
    const v4, 0x7f0e09e3

    .line 661
    invoke-virtual {v2, v4, v3}, Lcom/android/settings_ex/ConfirmLockComplexPassword$ConfirmLockPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 660
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 654
    return-void
.end method
