.class Lcom/oneplus/settings/applocker/ApplockerConfirmPassword$7;
.super Landroid/os/CountDownTimer;
.source "ApplockerConfirmPassword.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->handleAttemptLockout(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;JJ)V
    .locals 0
    .param p2, "x0"    # J
    .param p4, "x1"    # J

    .prologue
    .line 308
    iput-object p1, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword$7;->this$0:Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .prologue
    .line 320
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword$7;->this$0:Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;

    # getter for: Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->mPasswordTextViewForPin:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;
    invoke-static {v0}, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->access$100(Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;)Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->setEnabled(Z)V

    .line 321
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword$7;->this$0:Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;

    # getter for: Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->mHeaderTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->access$400(Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword$7;->this$0:Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;

    # invokes: Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->getDefaultHeader()I
    invoke-static {v1}, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->access$500(Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 322
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword$7;->this$0:Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;

    iget-boolean v0, v0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->mHasFocus:Z

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword$7;->this$0:Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;

    iget-object v0, v0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->mFingerprintHelper:Lcom/android/settings_ex/fingerprint/FingerprintUiHelper;

    invoke-virtual {v0}, Lcom/android/settings_ex/fingerprint/FingerprintUiHelper;->startListening()V

    .line 324
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword$7;->this$0:Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;

    const/4 v1, 0x0

    iput v1, v0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->mNumWrongConfirmAttempts:I

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword$7;->this$0:Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;

    # invokes: Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->handleNext()V
    invoke-static {v0}, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->access$300(Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;)V

    .line 328
    return-void
.end method

.method public onTick(J)V
    .locals 7
    .param p1, "millisUntilFinished"    # J

    .prologue
    .line 312
    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    long-to-int v0, v2

    .line 313
    .local v0, "secondsCountdown":I
    iget-object v1, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword$7;->this$0:Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;

    # getter for: Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->mHeaderTextView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->access$400(Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword$7;->this$0:Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;

    invoke-virtual {v2}, Lcom/oneplus/settings/applocker/ApplockerConfirmPassword;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f130000

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 316
    return-void
.end method
