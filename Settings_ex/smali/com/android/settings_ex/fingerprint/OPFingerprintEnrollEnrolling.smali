.class public Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;
.super Lcom/android/settings_ex/fingerprint/FingerprintEnrollBase;
.source "OPFingerprintEnrollEnrolling.java"

# interfaces
.implements Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar$Listener;
.implements Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView$OnOPFingerComfirmListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling$KeyLockMode;
    }
.end annotation


# static fields
.field private static final FINISH_DELAY:I = 0xfa

.field private static final HINT_TIMEOUT_DURATION:I = 0x9c4

.field private static final ICON_TOUCH_COUNT_SHOW_UNTIL_DIALOG_SHOWN:I = 0x3

.field private static final ICON_TOUCH_DURATION_UNTIL_DIALOG_SHOWN:J = 0x1f4L

.field private static final PROGRESS_BAR_MAX:I = 0x2710

.field private static final TAG:Ljava/lang/String; = "OPFingerPrintInputFragments"

.field private static final TAG_SIDECAR:Ljava/lang/String; = "sidecar"


# instance fields
.field private mAnimationCancelled:Z

.field private mConfirmCompleted:Z

.field private mCurrentProgress:I

.field private final mDelayedFinishRunnable:Ljava/lang/Runnable;

.field private mEnrollSuccessCount:I

.field private mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private mHandler:Landroid/os/Handler;

.field private mHasInputCompleted:Z

.field private mIconAnimationDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

.field private mIconTouchCount:I

.field private mIndicatorBackgroundActivatedColor:I

.field private mIndicatorBackgroundRestingColor:I

.field private mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private mOPFingerPrintEnrollView:Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;

.field private mOnBackPress:Z

.field private mRestoring:Z

.field private final mShowDialogRunnable:Ljava/lang/Runnable;

.field private mSidecar:Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;

.field private final mTouchAgainRunnable:Ljava/lang/Runnable;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWakeLockUseRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 61
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollBase;-><init>()V

    .line 97
    iput-boolean v2, p0, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;->mHasInputCompleted:Z

    .line 98
    iput-boolean v2, p0, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;->mConfirmCompleted:Z

    .line 99
    iput-boolean v2, p0, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;->mOnBackPress:Z

    .line 213
    new-instance v0, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling$1;-><init>(Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;->mHandler:Landroid/os/Handler;

    .line 250
    iput v2, p0, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;->mCurrentProgress:I

    .line 251
    iput v2, p0, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;->mEnrollSuccessCount:I

    .line 296
    new-instance v0, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling$3;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling$3;-><init>(Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;)V

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;->mWakeLockUseRunnable:Ljava/lang/Runnable;

    .line 357
    new-instance v0, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling$5;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling$5;-><init>(Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;)V

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;->mDelayedFinishRunnable:Ljava/lang/Runnable;

    .line 364
    new-instance v0, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling$6;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling$6;-><init>(Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;)V

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;->mShowDialogRunnable:Ljava/lang/Runnable;

    .line 370
    new-instance v0, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling$7;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling$7;-><init>(Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;)V

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;->mTouchAgainRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;)Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;->mOPFingerPrintEnrollView:Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;->releaseWakeLock()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;[B)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;
    .param p1, "x1"    # [B

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;->launchFinish([B)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;Ljava/lang/CharSequence;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;->showError(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private acquireWakeLock()V
    .locals 3

    .prologue
    .line 397
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    .line 398
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 399
    .local v0, "pm":Landroid/os/PowerManager;
    const/16 v1, 0x1a

    const-string v2, "OPFingerPrintInputFragments"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 400
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 402
    .end local v0    # "pm":Landroid/os/PowerManager;
    :cond_0
    return-void
.end method

.method private clearError()V
    .locals 4

    .prologue
    .line 338
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;->mOPFingerPrintEnrollView:Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->getWarningTipsView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;->mOPFingerPrintEnrollView:Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->getWarningTipsView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00a9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling$4;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling$4;-><init>(Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 354
    :cond_0
    return-void
.end method

.method private getProgress(II)I
    .locals 3
    .param p1, "steps"    # I
    .param p2, "remaining"    # I

    .prologue
    const/4 v1, 0x0

    .line 309
    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    .line 313
    :goto_0
    return v1

    .line 312
    :cond_0
    add-int/lit8 v2, p1, 0x1

    sub-int/2addr v2, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 313
    .local v0, "progress":I
    mul-int/lit16 v1, v0, 0x2710

    add-int/lit8 v2, p1, 0x1

    div-int/2addr v1, v2

    goto :goto_0
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 125
    const v0, 0x7f12012a

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;->mOPFingerPrintEnrollView:Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;

    .line 126
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;->mOPFingerPrintEnrollView:Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;

    invoke-virtual {v0, p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->setOnOPFingerComfirmListener(Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView$OnOPFingerComfirmListener;)V

    .line 127
    const v0, 0x10c000f

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    .line 129
    const v0, 0x10c000e

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 131
    return-void
.end method

.method private launchFinish([B)V
    .locals 2
    .param p1, "token"    # [B

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;->getFinishIntent()Landroid/content/Intent;

    move-result-object v0

    .line 223
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 224
    const-string v1, "hw_auth_token"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 225
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;->startActivity(Landroid/content/Intent;)V

    .line 226
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;->finish()V

    .line 227
    return-void
.end method

.method private releaseWakeLock()V
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 408
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 410
    :cond_0
    return-void
.end method

.method private showError(Ljava/lang/CharSequence;)V
    .locals 5
    .param p1, "error"    # Ljava/lang/CharSequence;

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 317
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;->mOPFingerPrintEnrollView:Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;

    invoke-virtual {v1}, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->getWarningTipsView()Landroid/widget/TextView;

    move-result-object v0

    .line 318
    .local v0, "mErrorText":Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 320
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 321
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00a8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 323
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 324
    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 335
    :goto_0
    return-void

    .line 331
    :cond_0
    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 332
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setAlpha(F)V

    .line 333
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTranslationY(F)V

    goto :goto_0
.end method

.method private updateProgress(Z)V
    .locals 10
    .param p1, "animate"    # Z

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 254
    iget-object v3, p0, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;->mSidecar:Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;

    invoke-virtual {v3}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->getEnrollmentSteps()I

    move-result v0

    .line 255
    .local v0, "enrollSteps":I
    iget-object v3, p0, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;->mSidecar:Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;

    invoke-virtual {v3}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->getEnrollmentRemaining()I

    move-result v1

    .line 256
    .local v1, "enrollStepsRemaining":I
    const-string v3, "OPFingerPrintInputFragments"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "zhuyang--enrollSteps:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    const-string v3, "OPFingerPrintInputFragments"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "zhuyang--enrollStepsRemaining:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    add-int/lit8 v3, v0, 0x1

    sub-int/2addr v3, v1

    mul-int/lit8 v3, v3, 0x64

    add-int/lit8 v4, v0, 0x1

    div-int v2, v3, v4

    .line 259
    .local v2, "progress":I
    iget v3, p0, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;->mCurrentProgress:I

    if-le v2, v3, :cond_4

    const/16 v3, 0x13

    if-gt v1, v3, :cond_4

    .line 260
    iput v2, p0, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;->mCurrentProgress:I

    .line 261
    iget v3, p0, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;->mEnrollSuccessCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;->mEnrollSuccessCount:I

    .line 263
    iget-object v3, p0, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;->mOPFingerPrintEnrollView:Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;

    iget v4, p0, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;->mEnrollSuccessCount:I

    invoke-virtual {v3, v4, v2, v9}, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->doRecognition(IIZ)V

    .line 268
    :goto_0
    iget v3, p0, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;->mEnrollSuccessCount:I

    const/16 v4, 0xd

    if-ne v3, v4, :cond_5

    .line 269
    iget-object v3, p0, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;->mOPFingerPrintEnrollView:Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;

    invoke-virtual {v3}, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->setTipsContinueContent()V

    .line 270
    iget-object v3, p0, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling$2;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling$2;-><init>(Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;)V

    const-wide/16 v6, 0x12c

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 278
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;->mTouchAgainRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 279
    iget-object v3, p0, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;->mTouchAgainRunnable:Ljava/lang/Runnable;

    const-wide/16 v6, 0x9c4

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 283
    const/16 v3, 0x64

    if-lt v2, v3, :cond_1

    .line 284
    iput-boolean v9, p0, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;->mHasInputCompleted:Z

    .line 285
    iget-object v3, p0, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;->mTouchAgainRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 286
    iget-object v3, p0, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;->mOPFingerPrintEnrollView:Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;

    invoke-virtual {v3}, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->revealWithoutAnimation()V

    .line 289
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-nez v3, :cond_3

    .line 290
    :cond_2
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;->acquireWakeLock()V

    .line 292
    :cond_3
    iget-object v3, p0, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;->mWakeLockUseRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 293
    iget-object v3, p0, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;->mWakeLockUseRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "screen_off_timeout"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 294
    return-void

    .line 265
    :cond_4
    iput v2, p0, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;->mCurrentProgress:I

    .line 266
    iget-object v3, p0, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;->mOPFingerPrintEnrollView:Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;

    iget v4, p0, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;->mEnrollSuccessCount:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4, v2, v8}, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->doRecognition(IIZ)V

    goto :goto_0

    .line 275
    :cond_5
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    if-nez v1, :cond_0

    .line 276
    iget-object v3, p0, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;->mOPFingerPrintEnrollView:Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;

    invoke-virtual {v3}, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->setTipsCompletedContent()V

    goto :goto_1
.end method


# virtual methods
.method public disEnableHomeKey()V
    .locals 3

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_acc_key_lock_mode"

    sget-object v2, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling$KeyLockMode;->HOME:Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling$KeyLockMode;

    invoke-virtual {v2}, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling$KeyLockMode;->ordinal()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 165
    return-void
.end method

.method public enableHomeKey()V
    .locals 3

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_acc_key_lock_mode"

    sget-object v2, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling$KeyLockMode;->NORMAL:Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling$KeyLockMode;

    invoke-virtual {v2}, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling$KeyLockMode;->ordinal()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 158
    return-void
.end method

.method protected getFinishIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 230
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFinish;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;->mOnBackPress:Z

    .line 150
    invoke-super {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollBase;->onBackPressed()V

    .line 151
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x1

    .line 113
    invoke-super {p0, p1}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollBase;->onCreate(Landroid/os/Bundle;)V

    .line 114
    const v1, 0x7f0d006a

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;->setTheme(I)V

    .line 115
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 116
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const v2, 0x7f0c00f7

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(I)V

    .line 117
    const v1, 0x7f040098

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;->setContentView(I)V

    .line 118
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;->initView()V

    .line 119
    if-eqz p1, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;->mRestoring:Z

    .line 120
    const-string v0, "fingerprint"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 122
    return-void

    .line 119
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onEnrollmentError(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "errString"    # Ljava/lang/CharSequence;

    .prologue
    .line 241
    invoke-direct {p0, p1}, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;->showError(Ljava/lang/CharSequence;)V

    .line 242
    return-void
.end method

.method public onEnrollmentHelp(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "helpString"    # Ljava/lang/CharSequence;

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;->mOPFingerPrintEnrollView:Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;

    invoke-virtual {v0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->showWarningTips(Ljava/lang/CharSequence;)V

    .line 237
    return-void
.end method

.method public onEnrollmentProgressChange(II)V
    .locals 1
    .param p1, "steps"    # I
    .param p2, "remaining"    # I

    .prologue
    .line 246
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;->updateProgress(Z)V

    .line 247
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;->clearError()V

    .line 248
    return-void
.end method

.method public onEnterAnimationComplete()V
    .locals 0

    .prologue
    .line 204
    invoke-super {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollBase;->onEnterAnimationComplete()V

    .line 205
    return-void
.end method

.method public onOPFingerComfirmClick()V
    .locals 1

    .prologue
    .line 391
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;->mConfirmCompleted:Z

    .line 392
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;->finish()V

    .line 393
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 380
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    if-ne v1, v2, :cond_0

    .line 381
    iput-boolean v0, p0, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;->mOnBackPress:Z

    .line 382
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;->finish()V

    .line 385
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 182
    invoke-super {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollBase;->onPause()V

    .line 183
    iput v2, p0, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;->mCurrentProgress:I

    .line 184
    iput v2, p0, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;->mEnrollSuccessCount:I

    .line 185
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;->enableHomeKey()V

    .line 186
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;->releaseWakeLock()V

    .line 187
    iget-boolean v0, p0, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;->mConfirmCompleted:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;->mOnBackPress:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;->mHasInputCompleted:Z

    if-nez v0, :cond_1

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;->mOPFingerPrintEnrollView:Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->resetWithoutAnimation()V

    .line 190
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;->mOPFingerPrintEnrollView:Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->hideWarningTips()V

    .line 191
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;->mTouchAgainRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 192
    iput-boolean v2, p0, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;->mConfirmCompleted:Z

    .line 193
    iput-boolean v2, p0, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;->mOnBackPress:Z

    .line 194
    iput-boolean v2, p0, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;->mHasInputCompleted:Z

    .line 195
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;->finish()V

    .line 200
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 136
    invoke-super {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollBase;->onResume()V

    .line 137
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;->disEnableHomeKey()V

    .line 138
    iget-boolean v0, p0, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;->mConfirmCompleted:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;->mOnBackPress:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;->mHasInputCompleted:Z

    if-nez v0, :cond_1

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;->mOPFingerPrintEnrollView:Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->resetWithoutAnimation()V

    .line 141
    :cond_1
    iput-boolean v1, p0, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;->mHasInputCompleted:Z

    .line 142
    iput-boolean v1, p0, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;->mConfirmCompleted:Z

    .line 143
    iput-boolean v1, p0, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;->mOnBackPress:Z

    .line 144
    return-void
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 169
    invoke-super {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollBase;->onStart()V

    .line 170
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "sidecar"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;->mSidecar:Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;

    .line 171
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;->mSidecar:Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;

    if-nez v0, :cond_0

    .line 172
    new-instance v0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;

    invoke-direct {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;->mSidecar:Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;

    .line 173
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;->mSidecar:Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;

    const-string v2, "sidecar"

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;->mSidecar:Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->setListener(Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar$Listener;)V

    .line 177
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 209
    invoke-super {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollBase;->onStop()V

    .line 210
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;->mSidecar:Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->setListener(Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar$Listener;)V

    .line 211
    return-void
.end method
