.class Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$5;
.super Landroid/os/CountDownTimer;
.source "ConfirmLockPattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->handleAttemptLockout(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;JJ)V
    .locals 0
    .param p2, "x0"    # J
    .param p4, "x1"    # J

    .prologue
    .line 526
    iput-object p1, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$5;->this$0:Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .prologue
    .line 542
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$5;->this$0:Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mNumWrongConfirmAttempts:I
    invoke-static {v0, v1}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->access$902(Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;I)I

    .line 543
    # getter for: Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mPreferences:Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->access$1000()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "confirm_lock_password_fragment.key_num_wrong_confirm_attempts"

    iget-object v2, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$5;->this$0:Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;

    # getter for: Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mNumWrongConfirmAttempts:I
    invoke-static {v2}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->access$900(Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 545
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$5;->this$0:Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;

    sget-object v1, Lcom/android/settings_ex/ConfirmLockPattern$Stage;->NeedToUnlock:Lcom/android/settings_ex/ConfirmLockPattern$Stage;

    # invokes: Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->updateStage(Lcom/android/settings_ex/ConfirmLockPattern$Stage;)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->access$1200(Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;Lcom/android/settings_ex/ConfirmLockPattern$Stage;)V

    .line 546
    return-void
.end method

.method public onTick(J)V
    .locals 7
    .param p1, "millisUntilFinished"    # J

    .prologue
    .line 530
    iget-object v1, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$5;->this$0:Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;

    # getter for: Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderTextView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->access$1400(Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0c0263

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 531
    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    long-to-int v0, v2

    .line 532
    .local v0, "secondsCountdown":I
    iget-object v1, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$5;->this$0:Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-virtual {v1}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 538
    :goto_0
    return-void

    .line 535
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$5;->this$0:Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;

    # getter for: Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mErrorTextView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->access$1500(Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$5;->this$0:Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;

    const v3, 0x7f0c0264

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
