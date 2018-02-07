.class Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment$6;
.super Landroid/os/CountDownTimer;
.source "OxygenConfirmLockPassword.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->handleAttemptLockout(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;JJ)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;
    .param p2, "$anonymous0"    # J
    .param p4, "$anonymous1"    # J

    .prologue
    .line 469
    iput-object p1, p0, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment$6;->this$1:Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 471
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .prologue
    .line 483
    iget-object v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment$6;->this$1:Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-static {v0}, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->-wrap2(Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;)V

    .line 484
    iget-object v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment$6;->this$1:Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;

    iget-object v0, v0, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->mErrorTextView:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 485
    iget-object v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment$6;->this$1:Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-virtual {v0}, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->isProfileChallenge()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 486
    iget-object v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment$6;->this$1:Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;

    iget-object v1, p0, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment$6;->this$1:Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;

    iget-object v1, v1, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 487
    iget-object v2, p0, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment$6;->this$1:Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;

    iget v2, v2, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->mEffectiveUserId:I

    .line 486
    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentFailedPasswordAttempts(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->updateErrorMessage(I)V

    .line 482
    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 7
    .param p1, "millisUntilFinished"    # J

    .prologue
    .line 475
    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    long-to-int v0, v2

    .line 476
    .local v0, "secondsCountdown":I
    iget-object v1, p0, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment$6;->this$1:Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;

    iget-object v2, p0, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment$6;->this$1:Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 478
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 477
    const v4, 0x7f0e09b5

    .line 476
    invoke-virtual {v2, v4, v3}, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 478
    const-wide/16 v4, 0x0

    .line 476
    invoke-virtual {v1, v2, v4, v5}, Lcom/android/settings_ex/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->showError(Ljava/lang/CharSequence;J)V

    .line 474
    return-void
.end method
