.class public Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;
.super Lcom/android/settings_ex/fingerprint/FingerprintEnrollBase;
.source "FingerprintEnrollEnrolling.java"

# interfaces
.implements Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar$Listener;
.implements Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView$OnOPFingerComfirmListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$1;,
        Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$2;,
        Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$3;,
        Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$4;,
        Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$5;,
        Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$6;,
        Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$7;,
        Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$ErrorDialog;,
        Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$IconTouchDialog;,
        Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$KeyLockMode;
    }
.end annotation


# static fields
.field private static final FINISH_DELAY:I = 0xfa

.field private static final HINT_TIMEOUT_DURATION:I = 0x9c4

.field private static final ICON_TOUCH_COUNT_SHOW_UNTIL_DIALOG_SHOWN:I = 0x3

.field private static final ICON_TOUCH_DURATION_UNTIL_DIALOG_SHOWN:J = 0x1f4L

.field private static final PROGRESS_BAR_MAX:I = 0x2710

.field private static final TAG:Ljava/lang/String; = "FingerprintEnrollEnrolling"

.field static final TAG_SIDECAR:Ljava/lang/String; = "sidecar"


# instance fields
.field private mAnimationCancelled:Z

.field private mConfirmCompleted:Z

.field private mCurrentProgress:I

.field private final mDelayedFinishRunnable:Ljava/lang/Runnable;

.field private mEnrollSuccessCount:I

.field private mErrorText:Landroid/widget/TextView;

.field private mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

.field private mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private mFingerprintAnimator:Landroid/widget/ImageView;

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private mHandler:Landroid/os/Handler;

.field private mHasInputCompleted:Z

.field private final mIconAnimationCallback:Landroid/graphics/drawable/Animatable2$AnimationCallback;

.field private mIconAnimationDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

.field private mIconTouchCount:I

.field private mIndicatorBackgroundActivatedColor:I

.field private mIndicatorBackgroundRestingColor:I

.field private mLaunchingFinish:Z

.field private mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private mOPFingerPrintEnrollView:Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;

.field private mOnBackPress:Z

.field private mProgressAnim:Landroid/animation/ObjectAnimator;

.field private final mProgressAnimationListener:Landroid/animation/Animator$AnimatorListener;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mRepeatMessage:Landroid/widget/TextView;

.field private mRestoring:Z

.field private mScreenNavBarEnabled:Z

.field private final mShowDialogRunnable:Ljava/lang/Runnable;

.field private mSidecar:Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;

.field private mStartMessage:Landroid/widget/TextView;

.field private final mTouchAgainRunnable:Ljava/lang/Runnable;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWakeLockUseRunnable:Ljava/lang/Runnable;


# direct methods
.method static synthetic -get0(Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mAnimationCancelled:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mDelayedFinishRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;)I
    .locals 1

    iget v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mIndicatorBackgroundActivatedColor:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;)I
    .locals 1

    iget v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mIndicatorBackgroundRestingColor:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;)Landroid/view/animation/Interpolator;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;)Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mOPFingerPrintEnrollView:Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->clearError()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;[B)V
    .locals 0
    .param p1, "token"    # [B

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->launchFinish([B)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->releaseWakeLock()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "error"    # Ljava/lang/CharSequence;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->showError(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->showIconTouchDialog()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 66
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollBase;-><init>()V

    .line 110
    iput-boolean v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mHasInputCompleted:Z

    .line 111
    iput-boolean v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mConfirmCompleted:Z

    .line 112
    iput-boolean v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mOnBackPress:Z

    .line 115
    iput-boolean v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mScreenNavBarEnabled:Z

    .line 116
    iput v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mCurrentProgress:I

    .line 117
    iput v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mEnrollSuccessCount:I

    .line 195
    new-instance v0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$1;-><init>(Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mHandler:Landroid/os/Handler;

    .line 385
    new-instance v0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$2;-><init>(Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;)V

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mWakeLockUseRunnable:Ljava/lang/Runnable;

    .line 635
    new-instance v0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$3;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$3;-><init>(Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;)V

    .line 634
    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mProgressAnimationListener:Landroid/animation/Animator$AnimatorListener;

    .line 655
    new-instance v0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$4;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$4;-><init>(Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;)V

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mDelayedFinishRunnable:Ljava/lang/Runnable;

    .line 663
    new-instance v0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$5;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$5;-><init>(Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;)V

    .line 662
    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mIconAnimationCallback:Landroid/graphics/drawable/Animatable2$AnimationCallback;

    .line 681
    new-instance v0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$6;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$6;-><init>(Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;)V

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mShowDialogRunnable:Ljava/lang/Runnable;

    .line 688
    new-instance v0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$7;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$7;-><init>(Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;)V

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mTouchAgainRunnable:Ljava/lang/Runnable;

    .line 66
    return-void
.end method

.method private acquireWakeLock()V
    .locals 3

    .prologue
    .line 283
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    .line 284
    const-string/jumbo v1, "power"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 285
    .local v0, "pm":Landroid/os/PowerManager;
    const-string/jumbo v1, "FingerprintEnrollEnrolling"

    const/16 v2, 0x1a

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 286
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 282
    .end local v0    # "pm":Landroid/os/PowerManager;
    :cond_0
    return-void
.end method

.method private animateFlash()V
    .locals 5

    .prologue
    .line 476
    const/4 v2, 0x2

    new-array v2, v2, [I

    iget v3, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mIndicatorBackgroundRestingColor:I

    const/4 v4, 0x0

    aput v3, v2, v4

    .line 477
    iget v3, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mIndicatorBackgroundActivatedColor:I

    const/4 v4, 0x1

    aput v3, v2, v4

    .line 476
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofArgb([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 479
    .local v0, "anim":Landroid/animation/ValueAnimator;
    new-instance v1, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$9;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$9;-><init>(Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;)V

    .line 486
    .local v1, "listener":Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 487
    new-instance v2, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$10;

    invoke-direct {v2, p0, v1}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$10;-><init>(Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 498
    iget-object v2, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 499
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 500
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 475
    return-void
.end method

.method private animateProgress(I)V
    .locals 6
    .param p1, "progress"    # I

    .prologue
    .line 463
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mProgressAnim:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_0

    .line 464
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mProgressAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 466
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mProgressBar:Landroid/widget/ProgressBar;

    const-string/jumbo v2, "progress"

    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 467
    iget-object v4, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v4}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v4

    const/4 v5, 0x0

    aput v4, v3, v5

    const/4 v4, 0x1

    aput p1, v3, v4

    .line 466
    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 468
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mProgressAnimationListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 469
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 470
    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 471
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 472
    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mProgressAnim:Landroid/animation/ObjectAnimator;

    .line 462
    return-void
.end method

.method private clearError()V
    .locals 4

    .prologue
    .line 617
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 618
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 619
    const/4 v1, 0x0

    .line 618
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 620
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 621
    const v2, 0x7f0f0239

    .line 620
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    .line 618
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 622
    const-wide/16 v2, 0x64

    .line 618
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 623
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    .line 618
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 624
    new-instance v1, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$11;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$11;-><init>(Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;)V

    .line 618
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 616
    :cond_0
    return-void
.end method

.method private getHeadView()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->getLayout()Lcom/android/setupwizardlib/GlifLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/setupwizardlib/GlifLayout;->getHeaderTextView()Landroid/widget/TextView;

    move-result-object v0

    .line 193
    .local v0, "layoutTitle":Landroid/widget/TextView;
    return-object v0
.end method

.method private getProgress(II)I
    .locals 3
    .param p1, "steps"    # I
    .param p2, "remaining"    # I

    .prologue
    const/4 v2, 0x0

    .line 579
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 580
    return v2

    .line 582
    :cond_0
    add-int/lit8 v1, p1, 0x1

    sub-int/2addr v1, p2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 583
    .local v0, "progress":I
    mul-int/lit16 v1, v0, 0x2710

    add-int/lit8 v2, p1, 0x1

    div-int/2addr v1, v2

    return v1
.end method

.method private initFingerPrintEnrollView()V
    .locals 3

    .prologue
    .line 178
    const v0, 0x7f11015e

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mOPFingerPrintEnrollView:Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;

    .line 179
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "zhuyang--mStartMessage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mStartMessage:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 180
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "zhuyang--mRepeatMessage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mRepeatMessage:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mOPFingerPrintEnrollView:Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;

    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->getHeadView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->setTitleView(Landroid/widget/TextView;)V

    .line 182
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mOPFingerPrintEnrollView:Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;

    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mStartMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->setSubTitleView(Landroid/widget/TextView;)V

    .line 183
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mOPFingerPrintEnrollView:Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->hideHeaderView()V

    .line 184
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mOPFingerPrintEnrollView:Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;

    invoke-virtual {v0, p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->setOnOPFingerComfirmListener(Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView$OnOPFingerComfirmListener;)V

    .line 186
    const v0, 0x10c000f

    .line 185
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    .line 188
    const v0, 0x10c000e

    .line 187
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 177
    return-void
.end method

.method private launchFinish([B)V
    .locals 3
    .param p1, "token"    # [B

    .prologue
    .line 504
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->getFinishIntent()Landroid/content/Intent;

    move-result-object v0

    .line 505
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 506
    const-string/jumbo v1, "hw_auth_token"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 507
    iget v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mUserId:I

    const/16 v2, -0x2710

    if-eq v1, v2, :cond_0

    .line 508
    const-string/jumbo v1, "android.intent.extra.USER_ID"

    iget v2, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mUserId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 510
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->startActivity(Landroid/content/Intent;)V

    .line 511
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->finish()V

    .line 503
    return-void
.end method

.method private releaseWakeLock()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 292
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 294
    iput-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 291
    :cond_0
    return-void
.end method

.method private setFingerprintEnrolling(Z)V
    .locals 5
    .param p1, "enrolling"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 251
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 253
    const-string/jumbo v4, "oem_acc_fingerprint_enrolling"

    .line 251
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    move v0, v1

    .line 254
    .local v0, "isEnrolling":Z
    :goto_0
    if-eq p1, v0, :cond_0

    .line 256
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 257
    const-string/jumbo v4, "oem_acc_fingerprint_enrolling"

    .line 258
    if-eqz p1, :cond_2

    .line 255
    :goto_1
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 250
    :cond_0
    return-void

    .end local v0    # "isEnrolling":Z
    :cond_1
    move v0, v2

    .line 251
    goto :goto_0

    .restart local v0    # "isEnrolling":Z
    :cond_2
    move v1, v2

    .line 258
    goto :goto_1
.end method

.method private showError(Ljava/lang/CharSequence;)V
    .locals 5
    .param p1, "error"    # Ljava/lang/CharSequence;

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 597
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 598
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 599
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 600
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 601
    const v2, 0x7f0f0238

    .line 600
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 602
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 603
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 606
    const-wide/16 v2, 0xc8

    .line 603
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 607
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 603
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 596
    :goto_0
    return-void

    .line 610
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 611
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setAlpha(F)V

    .line 612
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTranslationY(F)V

    goto :goto_0
.end method

.method private showErrorDialog(Ljava/lang/CharSequence;I)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/CharSequence;
    .param p2, "msgId"    # I

    .prologue
    .line 587
    invoke-static {p1, p2}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$ErrorDialog;->newInstance(Ljava/lang/CharSequence;I)Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$ErrorDialog;

    move-result-object v0

    .line 588
    .local v0, "dlg":Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$ErrorDialog;
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-class v2, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$ErrorDialog;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$ErrorDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 586
    return-void
.end method

.method private showIconTouchDialog()V
    .locals 3

    .prologue
    .line 592
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mIconTouchCount:I

    .line 593
    new-instance v0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$IconTouchDialog;

    invoke-direct {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$IconTouchDialog;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$IconTouchDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 591
    return-void
.end method

.method private showScreenNavBar(Z)V
    .locals 3
    .param p1, "hide"    # Z

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 218
    const-string/jumbo v2, "buttons_show_on_screen_navkeys"

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 217
    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 216
    return-void

    .line 218
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private startIconAnimation()V
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mIconAnimationDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    .line 424
    return-void
.end method

.method private stopIconAnimation()V
    .locals 1

    .prologue
    .line 429
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mAnimationCancelled:Z

    .line 430
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mIconAnimationDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    .line 428
    return-void
.end method

.method private updateDescription()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 519
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mSidecar:Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;

    invoke-virtual {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->getEnrollmentSteps()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 520
    const v0, 0x7f0e05f3

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->setHeaderText(I)V

    .line 521
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mStartMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 522
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mRepeatMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 518
    :goto_0
    return-void

    .line 524
    :cond_0
    const v0, 0x7f0e05f5

    .line 525
    const/4 v1, 0x1

    .line 524
    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->setHeaderText(IZ)V

    .line 526
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mStartMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 527
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mRepeatMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateProgress(Z)V
    .locals 11
    .param p1, "animate"    # Z

    .prologue
    const/16 v10, 0x64

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 339
    iget-object v3, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mSidecar:Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;

    invoke-virtual {v3}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->getEnrollmentSteps()I

    move-result v0

    .line 340
    .local v0, "enrollSteps":I
    iget-object v3, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mSidecar:Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;

    invoke-virtual {v3}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->getEnrollmentRemaining()I

    move-result v1

    .line 341
    .local v1, "enrollStepsRemaining":I
    const-string/jumbo v3, "FingerprintEnrollEnrolling"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "oneplus--enrollSteps:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    const-string/jumbo v3, "FingerprintEnrollEnrolling"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "oneplus--enrollStepsRemaining:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    add-int/lit8 v3, v0, 0x1

    sub-int/2addr v3, v1

    mul-int/lit8 v3, v3, 0x64

    add-int/lit8 v4, v0, 0x1

    div-int v2, v3, v4

    .line 344
    .local v2, "progress":I
    iget v3, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mCurrentProgress:I

    if-le v2, v3, :cond_3

    const/16 v3, 0x13

    if-gt v1, v3, :cond_3

    .line 345
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->clearError()V

    .line 346
    iput v2, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mCurrentProgress:I

    .line 347
    iget v3, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mEnrollSuccessCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mEnrollSuccessCount:I

    .line 349
    iget-object v3, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mOPFingerPrintEnrollView:Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;

    iget v4, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mEnrollSuccessCount:I

    invoke-virtual {v3, v4, v2, v9}, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->doRecognition(IIZ)V

    .line 354
    :goto_0
    iget v3, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mEnrollSuccessCount:I

    const/16 v4, 0xa

    if-ne v3, v4, :cond_4

    .line 355
    iget-object v3, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mOPFingerPrintEnrollView:Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;

    invoke-virtual {v3}, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->setTipsContinueContent()V

    .line 356
    iget-object v3, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$8;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$8;-><init>(Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;)V

    .line 360
    const-wide/16 v6, 0x12c

    .line 356
    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 367
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mTouchAgainRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 368
    iget-object v3, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mTouchAgainRunnable:Ljava/lang/Runnable;

    const-wide/16 v6, 0x9c4

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 372
    if-lt v2, v10, :cond_1

    .line 373
    iput-boolean v9, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mHasInputCompleted:Z

    .line 374
    iget-object v3, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mTouchAgainRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 376
    iget-object v3, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mDelayedFinishRunnable:Ljava/lang/Runnable;

    const-wide/16 v6, 0xfa

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 379
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 382
    :cond_2
    :goto_2
    iget-object v3, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mWakeLockUseRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 383
    iget-object v3, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mWakeLockUseRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "screen_off_timeout"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 338
    return-void

    .line 351
    :cond_3
    iput v2, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mCurrentProgress:I

    .line 352
    iget-object v3, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mOPFingerPrintEnrollView:Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;

    iget v4, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mEnrollSuccessCount:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4, v2, v8}, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->doRecognition(IIZ)V

    goto :goto_0

    .line 361
    :cond_4
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    if-nez v1, :cond_0

    .line 362
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v4, "oneplus--setTipsCompletedContent"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 380
    :cond_5
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->acquireWakeLock()V

    goto :goto_2
.end method


# virtual methods
.method public disEnableHomeKey()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 243
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mLaunchingFinish:Z

    .line 244
    invoke-direct {p0, v1}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->setFingerprintEnrolling(Z)V

    .line 245
    iget-boolean v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mScreenNavBarEnabled:Z

    if-eqz v0, :cond_0

    .line 246
    invoke-direct {p0, v1}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->showScreenNavBar(Z)V

    .line 240
    :cond_0
    return-void
.end method

.method public enableHomeKey()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 227
    iget-boolean v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mLaunchingFinish:Z

    if-eqz v0, :cond_1

    .line 228
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->setFingerprintEnrolling(Z)V

    .line 232
    :goto_0
    iget-boolean v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mScreenNavBarEnabled:Z

    if-eqz v0, :cond_0

    .line 233
    invoke-direct {p0, v1}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->showScreenNavBar(Z)V

    .line 224
    :cond_0
    return-void

    .line 230
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->setFingerprintEnrolling(Z)V

    goto :goto_0
.end method

.method protected getFinishIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 515
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFinish;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 700
    const/16 v0, 0xf0

    return v0
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 452
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mOnBackPress:Z

    .line 453
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mSidecar:Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;

    if-eqz v0, :cond_0

    .line 454
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mSidecar:Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->setListener(Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar$Listener;)V

    .line 455
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mSidecar:Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;

    invoke-virtual {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->cancelEnrollment()Z

    .line 456
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mSidecar:Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 457
    iput-object v2, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mSidecar:Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;

    .line 459
    :cond_0
    invoke-super {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollBase;->onBackPressed()V

    .line 451
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 130
    invoke-super {p0, p1}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollBase;->onCreate(Landroid/os/Bundle;)V

    .line 131
    const v0, 0x7f04007d

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->setContentView(I)V

    .line 132
    const v0, 0x7f0e05f3

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->setHeaderText(I)V

    .line 133
    const v0, 0x7f11015a

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mStartMessage:Landroid/widget/TextView;

    .line 134
    const v0, 0x7f11015b

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mRepeatMessage:Landroid/widget/TextView;

    .line 135
    const v0, 0x7f11015d

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    .line 136
    const v0, 0x7f11017b

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mProgressBar:Landroid/widget/ProgressBar;

    .line 142
    const v0, 0x10c000d

    .line 141
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 144
    const v0, 0x10c000e

    .line 143
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 146
    const v0, 0x10c000f

    .line 145
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    .line 167
    const v0, 0x7f0b032a

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->getColor(I)I

    move-result v0

    .line 166
    iput v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mIndicatorBackgroundRestingColor:I

    .line 169
    const v0, 0x7f0b03bb

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->getColor(I)I

    move-result v0

    .line 168
    iput v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mIndicatorBackgroundActivatedColor:I

    .line 170
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mRestoring:Z

    .line 172
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->initFingerPrintEnrollView()V

    .line 129
    return-void

    .line 170
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 333
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->enableHomeKey()V

    .line 334
    invoke-super {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollBase;->onDestroy()V

    .line 331
    return-void
.end method

.method public onEnrollmentError(ILjava/lang/CharSequence;)V
    .locals 3
    .param p1, "errMsgId"    # I
    .param p2, "errString"    # Ljava/lang/CharSequence;

    .prologue
    .line 540
    packed-switch p1, :pswitch_data_0

    .line 548
    const v0, 0x7f0e0603

    .line 551
    .local v0, "msgId":I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->showErrorDialog(Ljava/lang/CharSequence;I)V

    .line 554
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mTouchAgainRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 538
    return-void

    .line 544
    .end local v0    # "msgId":I
    :pswitch_0
    const v0, 0x7f0e0602

    .line 545
    .restart local v0    # "msgId":I
    goto :goto_0

    .line 540
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public onEnrollmentHelp(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "helpString"    # Ljava/lang/CharSequence;

    .prologue
    .line 534
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 533
    return-void
.end method

.method public onEnrollmentProgressChange(II)V
    .locals 1
    .param p1, "steps"    # I
    .param p2, "remaining"    # I

    .prologue
    .line 559
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->updateProgress(Z)V

    .line 558
    return-void
.end method

.method public onEnterAnimationComplete()V
    .locals 1

    .prologue
    .line 418
    invoke-super {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollBase;->onEnterAnimationComplete()V

    .line 419
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mAnimationCancelled:Z

    .line 417
    return-void
.end method

.method public onOPFingerComfirmClick()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 276
    iput-boolean v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mConfirmCompleted:Z

    .line 277
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->setResult(I)V

    .line 278
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->finish()V

    .line 274
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x1

    .line 265
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 266
    iput-boolean v2, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mOnBackPress:Z

    .line 267
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->finish()V

    .line 268
    return v2

    .line 270
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 301
    invoke-super {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollBase;->onPause()V

    .line 302
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_1

    .line 303
    iput v2, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mCurrentProgress:I

    .line 304
    iput v2, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mEnrollSuccessCount:I

    .line 305
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->enableHomeKey()V

    .line 306
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->releaseWakeLock()V

    .line 307
    iget-boolean v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mConfirmCompleted:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mOnBackPress:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mHasInputCompleted:Z

    :goto_0
    if-nez v0, :cond_0

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mOPFingerPrintEnrollView:Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->hideWarningTips()V

    .line 313
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mTouchAgainRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 314
    iput-boolean v2, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mConfirmCompleted:Z

    .line 315
    iput-boolean v2, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mOnBackPress:Z

    .line 316
    iput-boolean v2, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mHasInputCompleted:Z

    .line 318
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->setResult(I)V

    .line 320
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->finish()V

    .line 299
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 307
    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 206
    invoke-super {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollBase;->onResume()V

    .line 207
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->disEnableHomeKey()V

    .line 208
    iget-boolean v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mConfirmCompleted:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mOnBackPress:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mHasInputCompleted:Z

    :goto_0
    if-nez v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mOPFingerPrintEnrollView:Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->resetWithoutAnimation()V

    .line 211
    :cond_0
    iput-boolean v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mHasInputCompleted:Z

    .line 212
    iput-boolean v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mConfirmCompleted:Z

    .line 213
    iput-boolean v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mOnBackPress:Z

    .line 204
    return-void

    .line 208
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 400
    invoke-super {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollBase;->onStart()V

    .line 401
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v1, "sidecar"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mSidecar:Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;

    .line 402
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mSidecar:Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;

    if-nez v0, :cond_0

    .line 403
    new-instance v0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;

    invoke-direct {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mSidecar:Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;

    .line 404
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mSidecar:Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;

    const-string/jumbo v2, "sidecar"

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 406
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mSidecar:Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->setListener(Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar$Listener;)V

    .line 399
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 435
    invoke-super {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollBase;->onStop()V

    .line 436
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mSidecar:Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mSidecar:Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->setListener(Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar$Listener;)V

    .line 441
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_2

    .line 442
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mSidecar:Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;

    if-eqz v0, :cond_1

    .line 443
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mSidecar:Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;

    invoke-virtual {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->cancelEnrollment()Z

    .line 444
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mSidecar:Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 446
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->finish()V

    .line 434
    :cond_2
    return-void
.end method
