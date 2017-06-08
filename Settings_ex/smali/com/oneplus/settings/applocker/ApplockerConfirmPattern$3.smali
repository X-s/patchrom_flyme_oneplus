.class Lcom/oneplus/settings/applocker/ApplockerConfirmPattern$3;
.super Landroid/os/CountDownTimer;
.source "ApplockerConfirmPattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->handleAttemptLockout(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;JJ)V
    .locals 0
    .param p2, "x0"    # J
    .param p4, "x1"    # J

    .prologue
    .line 343
    iput-object p1, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern$3;->this$0:Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .prologue
    .line 355
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern$3;->this$0:Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;

    iget-boolean v0, v0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->mHasFocus:Z

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern$3;->this$0:Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;

    iget-object v0, v0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->mFingerprintHelper:Lcom/android/settings_ex/fingerprint/FingerprintUiHelper;

    invoke-virtual {v0}, Lcom/android/settings_ex/fingerprint/FingerprintUiHelper;->startListening()V

    .line 357
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern$3;->this$0:Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;

    const/4 v1, 0x0

    iput v1, v0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->mNumWrongConfirmAttempts:I

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern$3;->this$0:Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;

    sget-object v1, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern$Stage;->NeedToUnlock:Lcom/oneplus/settings/applocker/ApplockerConfirmPattern$Stage;

    # invokes: Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->updateStage(Lcom/oneplus/settings/applocker/ApplockerConfirmPattern$Stage;)V
    invoke-static {v0, v1}, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->access$600(Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;Lcom/oneplus/settings/applocker/ApplockerConfirmPattern$Stage;)V

    .line 360
    return-void
.end method

.method public onTick(J)V
    .locals 7
    .param p1, "millisUntilFinished"    # J

    .prologue
    .line 347
    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    long-to-int v0, v2

    .line 348
    .local v0, "secondsCountdown":I
    iget-object v1, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern$3;->this$0:Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;

    # getter for: Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->mHeaderTextView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->access$500(Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern$3;->this$0:Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;

    invoke-virtual {v2}, Lcom/oneplus/settings/applocker/ApplockerConfirmPattern;->getResources()Landroid/content/res/Resources;

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

    .line 351
    return-void
.end method
