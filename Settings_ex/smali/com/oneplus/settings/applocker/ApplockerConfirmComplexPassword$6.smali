.class Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword$6;
.super Landroid/os/CountDownTimer;
.source "ApplockerConfirmComplexPassword.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->handleAttemptLockout(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;JJ)V
    .locals 0
    .param p2, "x0"    # J
    .param p4, "x1"    # J

    .prologue
    .line 357
    iput-object p1, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword$6;->this$0:Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .prologue
    .line 369
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword$6;->this$0:Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;

    # invokes: Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->resetState()V
    invoke-static {v0}, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->access$600(Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;)V

    .line 370
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword$6;->this$0:Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;

    # getter for: Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->mErrorTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->access$300(Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 371
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword$6;->this$0:Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;

    # getter for: Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->mHeaderTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->access$800(Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword$6;->this$0:Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;

    iget-object v2, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword$6;->this$0:Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;

    # invokes: Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->getDefaultHeader()I
    invoke-static {v2}, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->access$700(Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 372
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword$6;->this$0:Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;

    iget-boolean v0, v0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->mHasFocus:Z

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword$6;->this$0:Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;

    iget-object v0, v0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->mFingerprintHelper:Lcom/android/settings_ex/fingerprint/FingerprintUiHelper;

    invoke-virtual {v0}, Lcom/android/settings_ex/fingerprint/FingerprintUiHelper;->startListening()V

    .line 374
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword$6;->this$0:Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;

    const/4 v1, 0x0

    iput v1, v0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->mNumWrongConfirmAttempts:I

    .line 376
    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 7
    .param p1, "millisUntilFinished"    # J

    .prologue
    .line 361
    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    long-to-int v0, v2

    .line 362
    .local v0, "secondsCountdown":I
    iget-object v1, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword$6;->this$0:Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;

    iget-object v2, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword$6;->this$0:Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;

    const v3, 0x7f0c0751

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    int-to-long v4, v0

    # invokes: Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->showError(Ljava/lang/CharSequence;J)V
    invoke-static {v1, v2, v4, v5}, Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;->access$500(Lcom/oneplus/settings/applocker/ApplockerConfirmComplexPassword;Ljava/lang/CharSequence;J)V

    .line 365
    return-void
.end method
