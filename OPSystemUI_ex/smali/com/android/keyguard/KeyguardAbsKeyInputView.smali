.class public abstract Lcom/android/keyguard/KeyguardAbsKeyInputView;
.super Landroid/widget/LinearLayout;
.source "KeyguardAbsKeyInputView.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityView;


# instance fields
.field bouncerFrameView:Landroid/view/View;

.field private mAnimation:Landroid/view/animation/Animation;

.field private mAnimation2:Landroid/view/animation/Animation;

.field private mAnimation3:Landroid/view/animation/Animation;

.field private mAnimation4:Landroid/view/animation/Animation;

.field private mAnimation5:Landroid/view/animation/Animation;

.field private mAnimation6:Landroid/view/animation/Animation;

.field private mAnimation7:Landroid/view/animation/Animation;

.field private mBouncerFrame:Landroid/graphics/drawable/Drawable;

.field protected mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field protected mEcaView:Landroid/view/View;

.field protected mEnableHaptics:Z

.field protected mFingerPrintUnlock:Lcom/android/keyguard/FingerprintUnlock;

.field protected mHandler:Landroid/os/Handler;

.field protected mIsPasswordCorrect:Z

.field mKeyguardMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

.field protected mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field protected mMaxCountdownTimes:I

.field private mPhoneLockedView:Landroid/widget/ImageView;

.field private mScreenDensity:F

.field protected mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

.field mShowMessageId:I

.field mShowMessageString:Ljava/lang/String;

.field mSpannableString:Landroid/text/SpannableString;

.field protected mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mMaxCountdownTimes:I

    .line 90
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mHandler:Landroid/os/Handler;

    .line 91
    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 92
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFingerprintUnlockInstance()Lcom/android/keyguard/FingerprintUnlock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mFingerPrintUnlock:Lcom/android/keyguard/FingerprintUnlock;

    .line 93
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardAbsKeyInputView;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardAbsKeyInputView;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mAnimation2:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardAbsKeyInputView;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardAbsKeyInputView;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mAnimation3:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardAbsKeyInputView;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardAbsKeyInputView;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mAnimation4:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/KeyguardAbsKeyInputView;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardAbsKeyInputView;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mAnimation5:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/keyguard/KeyguardAbsKeyInputView;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardAbsKeyInputView;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mAnimation6:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/keyguard/KeyguardAbsKeyInputView;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardAbsKeyInputView;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mAnimation7:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/keyguard/KeyguardAbsKeyInputView;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardAbsKeyInputView;

    .prologue
    .line 51
    iget v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mScreenDensity:F

    return v0
.end method

.method static synthetic access$700(Lcom/android/keyguard/KeyguardAbsKeyInputView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardAbsKeyInputView;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPhoneLockedView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public static setLayout(Landroid/view/View;II)V
    .locals 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 387
    new-instance v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 388
    .local v1, "margin":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    add-int/2addr v2, p1

    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    add-int/2addr v3, p2

    invoke-virtual {v1, p1, p2, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 389
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 390
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 391
    return-void
.end method


# virtual methods
.method public doHapticKeyClick()V
    .locals 2

    .prologue
    .line 436
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEnableHaptics:Z

    if-eqz v0, :cond_0

    .line 437
    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->performHapticFeedback(II)Z

    .line 441
    :cond_0
    return-void
.end method

.method protected abstract getPasswordText()Ljava/lang/String;
.end method

.method protected abstract getPasswordTextViewId()I
.end method

.method protected getRemainingCount()I
    .locals 2

    .prologue
    .line 404
    iget v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mMaxCountdownTimes:I

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method protected getWrongPasswordStringId()I
    .locals 1

    .prologue
    .line 157
    sget v0, Lcom/android/keyguard/R$string;->kg_wrong_password:I

    return v0
.end method

.method protected handleAttemptLockout(J)V
    .locals 9
    .param p1, "elapsedRealtimeDeadline"    # J

    .prologue
    const/4 v2, 0x0

    .line 340
    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->setPasswordEntryEnabled(Z)V

    .line 341
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 342
    .local v6, "elapsedRealtime":J
    sget v0, Lcom/android/keyguard/R$id;->keyguard_bouncer_frame:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 343
    sget v0, Lcom/android/keyguard/R$id;->keyguard_selector_fade_container:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 344
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPhoneLockedView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 345
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPhoneLockedView:Landroid/widget/ImageView;

    const/high16 v1, 0x430c0000    # 140.0f

    iget v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mScreenDensity:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const/high16 v2, 0x42fe0000    # 127.0f

    iget v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mScreenDensity:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v0, v1, v2}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->setLayout(Landroid/view/View;II)V

    .line 347
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mFingerPrintUnlock:Lcom/android/keyguard/FingerprintUnlock;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/FingerprintUnlock;->setBouncerOverTrial(Z)V

    .line 348
    new-instance v0, Lcom/android/keyguard/KeyguardAbsKeyInputView$19;

    sub-long v2, p1, v6

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/KeyguardAbsKeyInputView$19;-><init>(Lcom/android/keyguard/KeyguardAbsKeyInputView;JJ)V

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView$19;->start()Landroid/os/CountDownTimer;

    .line 383
    return-void
.end method

.method public hideBouncer(I)V
    .locals 3
    .param p1, "duration"    # I

    .prologue
    .line 451
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEcaView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v2, p1}, Lcom/android/keyguard/KeyguardSecurityViewHelper;->hideBouncer(Lcom/android/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    .line 453
    return-void
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 416
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 127
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 128
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 132
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 133
    new-instance v0, Lcom/android/keyguard/KeyguardMessageArea$Helper;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardMessageArea$Helper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    .line 134
    sget v0, Lcom/android/keyguard/R$id;->keyguard_selector_fade_container:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEcaView:Landroid/view/View;

    .line 135
    sget v0, Lcom/android/keyguard/R$id;->phone_locked_image:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPhoneLockedView:Landroid/widget/ImageView;

    .line 137
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$string;->kg_pin_instructions:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mShowMessageString:Ljava/lang/String;

    .line 138
    new-instance v0, Landroid/text/SpannableString;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mShowMessageString:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSpannableString:Landroid/text/SpannableString;

    .line 139
    sget v0, Lcom/android/keyguard/R$id;->keyguard_message_area:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardMessageArea;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mKeyguardMessageArea:Lcom/android/keyguard/KeyguardMessageArea;

    .line 144
    sget v0, Lcom/android/keyguard/R$id;->keyguard_bouncer_frame:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->bouncerFrameView:Landroid/view/View;

    .line 145
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->bouncerFrameView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->bouncerFrameView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    .line 148
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mScreenDensity:F

    .line 149
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 410
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 411
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 422
    return-void
.end method

.method public onResume(I)V
    .locals 0
    .param p1, "reason"    # I

    .prologue
    .line 426
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->reset()V

    .line 427
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    .line 106
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->resetPasswordText(Z)V

    .line 108
    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline()J

    move-result-wide v0

    .line 109
    .local v0, "deadline":J
    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->shouldLockout(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 110
    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->handleAttemptLockout(J)V

    .line 114
    :goto_0
    return-void

    .line 112
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->resetState()V

    goto :goto_0
.end method

.method protected abstract resetPasswordText(Z)V
.end method

.method protected abstract resetState()V
.end method

.method public setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/keyguard/KeyguardSecurityCallback;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 97
    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 1
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 101
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEnableHaptics:Z

    .line 102
    return-void
.end method

.method protected abstract setPasswordEntryEnabled(Z)V
.end method

.method protected shouldLockout(J)Z
    .locals 3
    .param p1, "deadline"    # J

    .prologue
    .line 118
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showBouncer(I)V
    .locals 3
    .param p1, "duration"    # I

    .prologue
    .line 445
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEcaView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v2, p1}, Lcom/android/keyguard/KeyguardSecurityViewHelper;->showBouncer(Lcom/android/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    .line 447
    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 1
    .param p1, "finishRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 457
    const/4 v0, 0x0

    return v0
.end method

.method protected verifyPasswordAndUnlock()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x64

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x0

    const/4 v10, 0x1

    .line 161
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getPasswordText()Ljava/lang/String;

    move-result-object v1

    .line 162
    .local v1, "entry":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/keyguard/R$anim;->keyguard_password_error_translate:I

    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    iput-object v5, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mAnimation:Landroid/view/animation/Animation;

    .line 163
    iget-object v5, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/keyguard/R$anim;->keyguard_password_error_translate_2:I

    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    iput-object v5, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mAnimation2:Landroid/view/animation/Animation;

    .line 164
    iget-object v5, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/keyguard/R$anim;->keyguard_password_error_translate_3:I

    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    iput-object v5, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mAnimation3:Landroid/view/animation/Animation;

    .line 165
    iget-object v5, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/keyguard/R$anim;->keyguard_password_error_translate_4:I

    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    iput-object v5, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mAnimation4:Landroid/view/animation/Animation;

    .line 166
    iget-object v5, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/keyguard/R$anim;->keyguard_password_error_translate_5:I

    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    iput-object v5, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mAnimation5:Landroid/view/animation/Animation;

    .line 167
    iget-object v5, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/keyguard/R$anim;->keyguard_password_error_translate_6:I

    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    iput-object v5, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mAnimation6:Landroid/view/animation/Animation;

    .line 168
    iget-object v5, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/keyguard/R$anim;->keyguard_password_error_translate_7:I

    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    iput-object v5, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mAnimation7:Landroid/view/animation/Animation;

    .line 169
    iget-object v5, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5, v1}, Lcom/android/internal/widget/LockPatternUtils;->checkPassword(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 170
    iput-boolean v10, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mIsPasswordCorrect:Z

    .line 171
    iget-object v5, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v5, v10}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(Z)V

    .line 172
    iget-object v5, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v5, v10}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 332
    :cond_0
    :goto_0
    return-void

    .line 174
    :cond_1
    iput-boolean v7, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mIsPasswordCorrect:Z

    .line 175
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v8, :cond_0

    .line 178
    iget-object v5, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v5, v7}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(Z)V

    .line 179
    iget-object v5, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts()I

    move-result v0

    .line 180
    .local v0, "attempts":I
    iget v5, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mMaxCountdownTimes:I

    if-gtz v5, :cond_2

    rem-int/lit8 v5, v0, 0x5

    if-nez v5, :cond_2

    .line 182
    iget-object v5, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline()J

    move-result-wide v2

    .line 183
    .local v2, "deadline":J
    invoke-virtual {p0, v2, v3}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->handleAttemptLockout(J)V

    .line 327
    .end local v2    # "deadline":J
    :goto_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "vibrator"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Vibrator;

    .line 328
    .local v4, "vib":Landroid/os/Vibrator;
    const-wide/16 v6, 0x3e8

    invoke-virtual {v4, v6, v7}, Landroid/os/Vibrator;->vibrate(J)V

    .line 329
    invoke-virtual {p0, v10}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->resetPasswordText(Z)V

    goto :goto_0

    .line 184
    .end local v4    # "vib":Landroid/os/Vibrator;
    :cond_2
    rem-int/lit8 v5, v0, 0x5

    if-ne v8, v5, :cond_3

    .line 185
    sget v5, Lcom/android/keyguard/R$string;->kg_wrong_pin_warning:I

    iput v5, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mShowMessageId:I

    .line 186
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getContext()Landroid/content/Context;

    move-result-object v5

    iget v6, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mShowMessageId:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mShowMessageString:Ljava/lang/String;

    .line 187
    iget-object v5, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mShowMessageString:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v5

    iput-object v5, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSpannableString:Landroid/text/SpannableString;

    .line 188
    iget-object v5, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSpannableString:Landroid/text/SpannableString;

    const-string v6, "sans-serif-light"

    invoke-static {v6, v7}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v6

    const/16 v7, 0x21

    invoke-virtual {v5, v6, v8, v9, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 192
    iget-object v5, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v6, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSpannableString:Landroid/text/SpannableString;

    invoke-interface {v5, v6, v10}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 193
    iget-object v5, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v6, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mAnimation:Landroid/view/animation/Animation;

    invoke-interface {v5, v6}, Lcom/android/keyguard/SecurityMessageDisplay;->startAnimation(Landroid/view/animation/Animation;)V

    .line 194
    iget-object v5, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/keyguard/KeyguardAbsKeyInputView$1;

    invoke-direct {v6, p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView$1;-><init>(Lcom/android/keyguard/KeyguardAbsKeyInputView;)V

    invoke-virtual {v5, v6, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 200
    iget-object v5, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/keyguard/KeyguardAbsKeyInputView$2;

    invoke-direct {v6, p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView$2;-><init>(Lcom/android/keyguard/KeyguardAbsKeyInputView;)V

    const-wide/16 v8, 0xc8

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 206
    iget-object v5, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/keyguard/KeyguardAbsKeyInputView$3;

    invoke-direct {v6, p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView$3;-><init>(Lcom/android/keyguard/KeyguardAbsKeyInputView;)V

    const-wide/16 v8, 0x12c

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 212
    iget-object v5, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/keyguard/KeyguardAbsKeyInputView$4;

    invoke-direct {v6, p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView$4;-><init>(Lcom/android/keyguard/KeyguardAbsKeyInputView;)V

    const-wide/16 v8, 0x190

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 218
    iget-object v5, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/keyguard/KeyguardAbsKeyInputView$5;

    invoke-direct {v6, p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView$5;-><init>(Lcom/android/keyguard/KeyguardAbsKeyInputView;)V

    const-wide/16 v8, 0x1f4

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 224
    iget-object v5, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/keyguard/KeyguardAbsKeyInputView$6;

    invoke-direct {v6, p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView$6;-><init>(Lcom/android/keyguard/KeyguardAbsKeyInputView;)V

    const-wide/16 v8, 0x258

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 234
    :cond_3
    rem-int/lit8 v5, v0, 0x5

    if-ne v9, v5, :cond_4

    .line 235
    sget v5, Lcom/android/keyguard/R$string;->kg_wrong_pin_warning_one:I

    iput v5, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mShowMessageId:I

    .line 236
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getContext()Landroid/content/Context;

    move-result-object v5

    iget v6, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mShowMessageId:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mShowMessageString:Ljava/lang/String;

    .line 237
    iget-object v5, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mShowMessageString:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v5

    iput-object v5, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSpannableString:Landroid/text/SpannableString;

    .line 238
    iget-object v5, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSpannableString:Landroid/text/SpannableString;

    const-string v6, "sans-serif-light"

    invoke-static {v6, v7}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v6

    const/16 v7, 0x21

    invoke-virtual {v5, v6, v8, v9, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 242
    iget-object v5, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v6, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSpannableString:Landroid/text/SpannableString;

    invoke-interface {v5, v6, v10}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 243
    iget-object v5, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v6, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mAnimation:Landroid/view/animation/Animation;

    invoke-interface {v5, v6}, Lcom/android/keyguard/SecurityMessageDisplay;->startAnimation(Landroid/view/animation/Animation;)V

    .line 244
    iget-object v5, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/keyguard/KeyguardAbsKeyInputView$7;

    invoke-direct {v6, p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView$7;-><init>(Lcom/android/keyguard/KeyguardAbsKeyInputView;)V

    invoke-virtual {v5, v6, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 250
    iget-object v5, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/keyguard/KeyguardAbsKeyInputView$8;

    invoke-direct {v6, p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView$8;-><init>(Lcom/android/keyguard/KeyguardAbsKeyInputView;)V

    const-wide/16 v8, 0xc8

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 256
    iget-object v5, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/keyguard/KeyguardAbsKeyInputView$9;

    invoke-direct {v6, p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView$9;-><init>(Lcom/android/keyguard/KeyguardAbsKeyInputView;)V

    const-wide/16 v8, 0x12c

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 262
    iget-object v5, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/keyguard/KeyguardAbsKeyInputView$10;

    invoke-direct {v6, p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView$10;-><init>(Lcom/android/keyguard/KeyguardAbsKeyInputView;)V

    const-wide/16 v8, 0x190

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 268
    iget-object v5, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/keyguard/KeyguardAbsKeyInputView$11;

    invoke-direct {v6, p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView$11;-><init>(Lcom/android/keyguard/KeyguardAbsKeyInputView;)V

    const-wide/16 v8, 0x1f4

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 274
    iget-object v5, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/keyguard/KeyguardAbsKeyInputView$12;

    invoke-direct {v6, p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView$12;-><init>(Lcom/android/keyguard/KeyguardAbsKeyInputView;)V

    const-wide/16 v8, 0x258

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 286
    :cond_4
    iget-object v5, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const/high16 v6, 0x41800000    # 16.0f

    invoke-interface {v5, v6}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessageSize(F)V

    .line 287
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getWrongPasswordStringId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mShowMessageString:Ljava/lang/String;

    .line 288
    iget-object v5, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v6, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mShowMessageString:Ljava/lang/String;

    invoke-interface {v5, v6, v10}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 289
    iget-object v5, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v6, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mAnimation:Landroid/view/animation/Animation;

    invoke-interface {v5, v6}, Lcom/android/keyguard/SecurityMessageDisplay;->startAnimation(Landroid/view/animation/Animation;)V

    .line 290
    iget-object v5, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/keyguard/KeyguardAbsKeyInputView$13;

    invoke-direct {v6, p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView$13;-><init>(Lcom/android/keyguard/KeyguardAbsKeyInputView;)V

    invoke-virtual {v5, v6, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 296
    iget-object v5, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/keyguard/KeyguardAbsKeyInputView$14;

    invoke-direct {v6, p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView$14;-><init>(Lcom/android/keyguard/KeyguardAbsKeyInputView;)V

    const-wide/16 v8, 0xc8

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 302
    iget-object v5, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/keyguard/KeyguardAbsKeyInputView$15;

    invoke-direct {v6, p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView$15;-><init>(Lcom/android/keyguard/KeyguardAbsKeyInputView;)V

    const-wide/16 v8, 0x12c

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 308
    iget-object v5, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/keyguard/KeyguardAbsKeyInputView$16;

    invoke-direct {v6, p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView$16;-><init>(Lcom/android/keyguard/KeyguardAbsKeyInputView;)V

    const-wide/16 v8, 0x190

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 314
    iget-object v5, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/keyguard/KeyguardAbsKeyInputView$17;

    invoke-direct {v6, p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView$17;-><init>(Lcom/android/keyguard/KeyguardAbsKeyInputView;)V

    const-wide/16 v8, 0x1f4

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 320
    iget-object v5, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/keyguard/KeyguardAbsKeyInputView$18;

    invoke-direct {v6, p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView$18;-><init>(Lcom/android/keyguard/KeyguardAbsKeyInputView;)V

    const-wide/16 v8, 0x258

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1
.end method
