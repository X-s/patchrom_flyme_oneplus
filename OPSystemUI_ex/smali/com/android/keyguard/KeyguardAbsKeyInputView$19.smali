.class Lcom/android/keyguard/KeyguardAbsKeyInputView$19;
.super Landroid/os/CountDownTimer;
.source "KeyguardAbsKeyInputView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardAbsKeyInputView;->handleAttemptLockout(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardAbsKeyInputView;JJ)V
    .locals 0
    .param p2, "x0"    # J
    .param p4, "x1"    # J

    .prologue
    .line 348
    iput-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$19;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 367
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$19;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$19;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->kg_pin_instructions:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mShowMessageString:Ljava/lang/String;

    .line 368
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$19;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-interface {v0, v1}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessageSize(F)V

    .line 369
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$19;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$19;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mShowMessageString:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 374
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$19;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->resetState()V

    .line 375
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$19;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mKeyguardMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    const/high16 v1, 0x42ac0000    # 86.0f

    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$19;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    # getter for: Lcom/android/keyguard/KeyguardAbsKeyInputView;->mScreenDensity:F
    invoke-static {v2}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->access$600(Lcom/android/keyguard/KeyguardAbsKeyInputView;)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v3, v1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->setLayout(Landroid/view/View;II)V

    .line 376
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$19;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    # getter for: Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPhoneLockedView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->access$700(Lcom/android/keyguard/KeyguardAbsKeyInputView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 377
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$19;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    sget v1, Lcom/android/keyguard/R$id;->keyguard_bouncer_frame:I

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 378
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$19;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    sget v1, Lcom/android/keyguard/R$id;->keyguard_selector_fade_container:I

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 380
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$19;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mFingerPrintUnlock:Lcom/android/keyguard/FingerprintUnlock;

    invoke-virtual {v0, v3}, Lcom/android/keyguard/FingerprintUnlock;->setBouncerOverTrial(Z)V

    .line 381
    return-void
.end method

.method public onTick(J)V
    .locals 7
    .param p1, "millisUntilFinished"    # J

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 352
    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    long-to-int v0, v2

    .line 353
    .local v0, "secondsRemaining":I
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$19;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const/high16 v2, 0x41900000    # 18.0f

    invoke-interface {v1, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessageSize(F)V

    .line 354
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$19;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    sget v2, Lcom/android/keyguard/R$string;->kg_too_many_failed_attempts_countdown:I

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-interface {v1, v2, v6, v3}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ[Ljava/lang/Object;)V

    .line 362
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$19;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mKeyguardMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    const/high16 v2, 0x432c0000    # 172.0f

    iget-object v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$19;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    # getter for: Lcom/android/keyguard/KeyguardAbsKeyInputView;->mScreenDensity:F
    invoke-static {v3}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->access$600(Lcom/android/keyguard/KeyguardAbsKeyInputView;)F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v1, v5, v2}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->setLayout(Landroid/view/View;II)V

    .line 363
    return-void
.end method
