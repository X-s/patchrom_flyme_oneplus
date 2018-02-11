.class Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment$5;
.super Landroid/os/CountDownTimer;
.source "OxygenConfirmLockPattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->handleAttemptLockout(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;JJ)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;
    .param p2, "$anonymous0"    # J
    .param p4, "$anonymous1"    # J

    .prologue
    .line 555
    iput-object p1, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment$5;->this$1:Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 557
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .prologue
    .line 569
    iget-object v0, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment$5;->this$1:Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;

    sget-object v1, Lcom/android/settings_ex/OxygenConfirmLockPattern$Stage;->NeedToUnlock:Lcom/android/settings_ex/OxygenConfirmLockPattern$Stage;

    invoke-static {v0, v1}, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->-wrap1(Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;Lcom/android/settings_ex/OxygenConfirmLockPattern$Stage;)V

    .line 568
    return-void
.end method

.method public onTick(J)V
    .locals 7
    .param p1, "millisUntilFinished"    # J

    .prologue
    .line 561
    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    long-to-int v0, v2

    .line 562
    .local v0, "secondsCountdown":I
    iget-object v1, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment$5;->this$1:Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;

    iget-object v1, v1, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->mErrorTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment$5;->this$1:Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 564
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 563
    const v4, 0x7f0e09e3

    .line 562
    invoke-virtual {v2, v4, v3}, Lcom/android/settings_ex/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 560
    return-void
.end method
