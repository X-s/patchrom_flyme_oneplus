.class public Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;
.super Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollBase;
.source "FingerprintEnrollEnrolling.java"

# interfaces
.implements Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollSidecar$Listener;
.implements Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView$OnOPFingerComfirmListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling$1;,
        Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling$2;,
        Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling$3;,
        Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling$4;,
        Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling$5;,
        Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling$KeyLockMode;
    }
.end annotation


# static fields
.field private static final FINISH_DELAY:I = 0xfa

.field private static final HINT_TIMEOUT_DURATION:I = 0x9c4

.field private static final ICON_TOUCH_COUNT_SHOW_UNTIL_DIALOG_SHOWN:I = 0x3

.field private static final ICON_TOUCH_DURATION_UNTIL_DIALOG_SHOWN:J = 0x1f4L

.field private static final PROGRESS_BAR_MAX:I = 0x2710

.field private static final TAG:Ljava/lang/String; = "OPFingerPrintInputFragments"

.field public static final TAG_SIDECAR:Ljava/lang/String; = "sidecar"


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

.field private mLaunchingFinish:Z

.field private mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private mOPFingerPrintEnrollView:Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;

.field private mOnBackPress:Z

.field private mRestoring:Z

.field private mScreenNavBarEnabled:Z

.field private final mShowDialogRunnable:Ljava/lang/Runnable;

.field private mSidecar:Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollSidecar;

.field private final mTouchAgainRunnable:Ljava/lang/Runnable;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWakeLockUseRunnable:Ljava/lang/Runnable;


# direct methods
.method static synthetic -get0(Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;)Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->mOPFingerPrintEnrollView:Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->clearError()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;[B)V
    .locals 0
    .param p1, "token"    # [B

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->launchFinish([B)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->releaseWakeLock()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "error"    # Ljava/lang/CharSequence;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->showError(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 48
    invoke-direct {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollBase;-><init>()V

    .line 84
    iput-boolean v2, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->mHasInputCompleted:Z

    .line 85
    iput-boolean v2, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->mConfirmCompleted:Z

    .line 86
    iput-boolean v2, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->mOnBackPress:Z

    .line 89
    iput-boolean v2, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->mScreenNavBarEnabled:Z

    .line 261
    new-instance v0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling$1;-><init>(Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->mHandler:Landroid/os/Handler;

    .line 308
    iput v2, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->mCurrentProgress:I

    .line 309
    iput v2, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->mEnrollSuccessCount:I

    .line 359
    new-instance v0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling$2;-><init>(Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;)V

    iput-object v0, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->mWakeLockUseRunnable:Ljava/lang/Runnable;

    .line 420
    new-instance v0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling$3;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling$3;-><init>(Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;)V

    iput-object v0, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->mDelayedFinishRunnable:Ljava/lang/Runnable;

    .line 427
    new-instance v0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling$4;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling$4;-><init>(Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;)V

    iput-object v0, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->mShowDialogRunnable:Ljava/lang/Runnable;

    .line 433
    new-instance v0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling$5;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling$5;-><init>(Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;)V

    iput-object v0, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->mTouchAgainRunnable:Ljava/lang/Runnable;

    .line 48
    return-void
.end method

.method private acquireWakeLock()V
    .locals 3

    .prologue
    .line 462
    iget-object v1, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    .line 463
    const-string/jumbo v1, "power"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 464
    .local v0, "pm":Landroid/os/PowerManager;
    const-string/jumbo v1, "OPFingerPrintInputFragments"

    const/16 v2, 0x1a

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 465
    iget-object v1, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 461
    .end local v0    # "pm":Landroid/os/PowerManager;
    :cond_0
    return-void
.end method

.method private clearError()V
    .locals 4

    .prologue
    .line 401
    iget-object v0, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->mOPFingerPrintEnrollView:Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->getWarningTipsView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->mOPFingerPrintEnrollView:Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->getWarningTipsView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 403
    const/4 v1, 0x0

    .line 402
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 405
    invoke-virtual {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 407
    const v2, 0x7f0f0239

    .line 405
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    .line 402
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 408
    const-wide/16 v2, 0x64

    .line 402
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 409
    iget-object v1, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    .line 402
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 410
    new-instance v1, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling$7;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling$7;-><init>(Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;)V

    .line 402
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 400
    :cond_0
    return-void
.end method

.method private getProgress(II)I
    .locals 3
    .param p1, "steps"    # I
    .param p2, "remaining"    # I

    .prologue
    const/4 v2, 0x0

    .line 372
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 373
    return v2

    .line 375
    :cond_0
    add-int/lit8 v1, p1, 0x1

    sub-int/2addr v1, p2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 376
    .local v0, "progress":I
    mul-int/lit16 v1, v0, 0x2710

    add-int/lit8 v2, p1, 0x1

    div-int/2addr v1, v2

    return v1
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 121
    const v0, 0x7f11015e

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;

    iput-object v0, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->mOPFingerPrintEnrollView:Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;

    .line 122
    iget-object v0, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->mOPFingerPrintEnrollView:Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;

    invoke-virtual {v0, p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->setOnOPFingerComfirmListener(Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView$OnOPFingerComfirmListener;)V

    .line 124
    const v0, 0x10c000f

    .line 123
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    .line 126
    const v0, 0x10c000e

    .line 125
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 120
    return-void
.end method

.method private launchFinish([B)V
    .locals 3
    .param p1, "token"    # [B

    .prologue
    .line 270
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->mLaunchingFinish:Z

    .line 271
    invoke-virtual {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->getFinishIntent()Landroid/content/Intent;

    move-result-object v0

    .line 272
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 273
    const-string/jumbo v1, "hw_auth_token"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 274
    iget v1, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->mUserId:I

    const/16 v2, -0x2710

    if-eq v1, v2, :cond_0

    .line 275
    const-string/jumbo v1, "android.intent.extra.USER_ID"

    iget v2, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->mUserId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 277
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->startActivity(Landroid/content/Intent;)V

    .line 278
    invoke-virtual {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->finish()V

    .line 269
    return-void
.end method

.method private releaseWakeLock()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 471
    iget-object v0, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 472
    iget-object v0, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 473
    iput-object v1, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 470
    :cond_0
    return-void
.end method

.method private setFingerprintEnrolling(Z)V
    .locals 5
    .param p1, "enrolling"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 181
    invoke-virtual {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 182
    const-string/jumbo v4, "oem_acc_fingerprint_enrolling"

    .line 181
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    move v0, v1

    .line 183
    .local v0, "isEnrolling":Z
    :goto_0
    if-eq p1, v0, :cond_0

    .line 184
    invoke-virtual {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 185
    const-string/jumbo v4, "oem_acc_fingerprint_enrolling"

    if-eqz p1, :cond_2

    .line 184
    :goto_1
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 180
    :cond_0
    return-void

    .end local v0    # "isEnrolling":Z
    :cond_1
    move v0, v2

    .line 181
    goto :goto_0

    .restart local v0    # "isEnrolling":Z
    :cond_2
    move v1, v2

    .line 185
    goto :goto_1
.end method

.method private showError(Ljava/lang/CharSequence;)V
    .locals 5
    .param p1, "error"    # Ljava/lang/CharSequence;

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 380
    iget-object v1, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->mOPFingerPrintEnrollView:Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;

    invoke-virtual {v1}, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->getWarningTipsView()Landroid/widget/TextView;

    move-result-object v0

    .line 381
    .local v0, "mErrorText":Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 382
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 383
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 384
    invoke-virtual {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 385
    const v2, 0x7f0f0238

    .line 384
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 386
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 387
    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 390
    const-wide/16 v2, 0xc8

    .line 387
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 391
    iget-object v2, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 387
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 379
    :goto_0
    return-void

    .line 394
    :cond_0
    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 395
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setAlpha(F)V

    .line 396
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTranslationY(F)V

    goto :goto_0
.end method

.method private showScreenNavBar(Z)V
    .locals 3
    .param p1, "hide"    # Z

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 151
    const-string/jumbo v2, "buttons_show_on_screen_navkeys"

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 150
    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 149
    return-void

    .line 151
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private updateProgress(Z)V
    .locals 11
    .param p1, "animate"    # Z

    .prologue
    const/16 v10, 0x64

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 312
    iget-object v3, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->mSidecar:Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollSidecar;

    invoke-virtual {v3}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollSidecar;->getEnrollmentSteps()I

    move-result v0

    .line 313
    .local v0, "enrollSteps":I
    iget-object v3, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->mSidecar:Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollSidecar;

    invoke-virtual {v3}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollSidecar;->getEnrollmentRemaining()I

    move-result v1

    .line 314
    .local v1, "enrollStepsRemaining":I
    const-string/jumbo v3, "OPFingerPrintInputFragments"

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

    .line 315
    const-string/jumbo v3, "OPFingerPrintInputFragments"

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

    .line 316
    add-int/lit8 v3, v0, 0x1

    sub-int/2addr v3, v1

    mul-int/lit8 v3, v3, 0x64

    add-int/lit8 v4, v0, 0x1

    div-int v2, v3, v4

    .line 317
    .local v2, "progress":I
    iget v3, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->mCurrentProgress:I

    if-le v2, v3, :cond_3

    const/16 v3, 0x13

    if-gt v1, v3, :cond_3

    .line 318
    invoke-direct {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->clearError()V

    .line 319
    iput v2, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->mCurrentProgress:I

    .line 320
    iget v3, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->mEnrollSuccessCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->mEnrollSuccessCount:I

    .line 322
    iget-object v3, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->mOPFingerPrintEnrollView:Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;

    iget v4, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->mEnrollSuccessCount:I

    invoke-virtual {v3, v4, v2, v9}, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->doRecognition(IIZ)V

    .line 327
    :goto_0
    iget v3, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->mEnrollSuccessCount:I

    const/16 v4, 0xa

    if-ne v3, v4, :cond_4

    .line 328
    iget-object v3, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->mOPFingerPrintEnrollView:Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;

    invoke-virtual {v3}, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->setTipsContinueContent()V

    .line 329
    iget-object v3, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling$6;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling$6;-><init>(Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;)V

    .line 333
    const-wide/16 v6, 0x12c

    .line 329
    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 340
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->mTouchAgainRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 341
    iget-object v3, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->mTouchAgainRunnable:Ljava/lang/Runnable;

    const-wide/16 v6, 0x9c4

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 345
    if-lt v2, v10, :cond_1

    .line 346
    iput-boolean v9, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->mHasInputCompleted:Z

    .line 347
    iget-object v3, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->mTouchAgainRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 349
    iget-object v3, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->mDelayedFinishRunnable:Ljava/lang/Runnable;

    const-wide/16 v6, 0xfa

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 352
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 355
    :cond_2
    :goto_2
    iget-object v3, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->mWakeLockUseRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 356
    iget-object v3, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->mWakeLockUseRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "screen_off_timeout"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 311
    return-void

    .line 324
    :cond_3
    iput v2, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->mCurrentProgress:I

    .line 325
    iget-object v3, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->mOPFingerPrintEnrollView:Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;

    iget v4, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->mEnrollSuccessCount:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4, v2, v8}, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->doRecognition(IIZ)V

    goto :goto_0

    .line 334
    :cond_4
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    if-nez v1, :cond_0

    .line 335
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v4, "oneplus--setTipsCompletedContent"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 353
    :cond_5
    invoke-direct {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->acquireWakeLock()V

    goto :goto_2
.end method


# virtual methods
.method public disEnableHomeKey()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 173
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->mLaunchingFinish:Z

    .line 174
    invoke-direct {p0, v1}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->setFingerprintEnrolling(Z)V

    .line 175
    iget-boolean v0, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->mScreenNavBarEnabled:Z

    if-eqz v0, :cond_0

    .line 176
    invoke-direct {p0, v1}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->showScreenNavBar(Z)V

    .line 171
    :cond_0
    return-void
.end method

.method public enableHomeKey()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 158
    iget-boolean v0, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->mLaunchingFinish:Z

    if-eqz v0, :cond_1

    .line 159
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->setFingerprintEnrolling(Z)V

    .line 163
    :goto_0
    iget-boolean v0, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->mScreenNavBarEnabled:Z

    if-eqz v0, :cond_0

    .line 164
    invoke-direct {p0, v1}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->showScreenNavBar(Z)V

    .line 156
    :cond_0
    return-void

    .line 161
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->setFingerprintEnrolling(Z)V

    goto :goto_0
.end method

.method protected getFinishIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 282
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollFinish;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 478
    const/16 v0, 0x270f

    return v0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->mOnBackPress:Z

    .line 146
    invoke-super {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollBase;->onBackPressed()V

    .line 143
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 102
    invoke-super {p0, p1}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollBase;->onCreate(Landroid/os/Bundle;)V

    .line 103
    invoke-virtual {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    const v1, 0x7f10037f

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->setTheme(I)V

    .line 110
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 111
    .local v0, "intent":Landroid/content/Intent;
    const v1, 0x7f0400dc

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->setContentView(I)V

    .line 112
    invoke-direct {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->initView()V

    .line 113
    invoke-virtual {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 114
    const-string/jumbo v4, "buttons_show_on_screen_navkeys"

    .line 113
    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_2

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->mScreenNavBarEnabled:Z

    .line 115
    if-eqz p1, :cond_3

    :goto_2
    iput-boolean v2, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->mRestoring:Z

    .line 117
    const-string/jumbo v1, "fingerprint"

    .line 116
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v1, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 101
    return-void

    .line 105
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/settings/utils/OPUtils;->isAndroidModeOn(Landroid/content/ContentResolver;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 106
    const v1, 0x7f100384

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->setTheme(I)V

    goto :goto_0

    .line 108
    :cond_1
    const v1, 0x7f1003ff

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->setTheme(I)V

    goto :goto_0

    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_2
    move v1, v3

    .line 114
    goto :goto_1

    :cond_3
    move v2, v3

    .line 115
    goto :goto_2
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 235
    invoke-virtual {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->enableHomeKey()V

    .line 236
    invoke-super {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollBase;->onDestroy()V

    .line 233
    return-void
.end method

.method public onEnrollmentError(ILjava/lang/CharSequence;)V
    .locals 3
    .param p1, "errMsgId"    # I
    .param p2, "errString"    # Ljava/lang/CharSequence;

    .prologue
    .line 293
    const-string/jumbo v0, "OPFingerPrintInputFragments"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "oneplus--fingerprintenroll--onEnrollmentError--errMsgId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    const-string/jumbo v0, "OPFingerPrintInputFragments"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "oneplus--fingerprintenroll--onEnrollmentError--errString:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iget-object v0, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->mTouchAgainRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 298
    const v0, 0x7f0e03c8

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->showError(Ljava/lang/CharSequence;)V

    .line 292
    return-void
.end method

.method public onEnrollmentHelp(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "helpString"    # Ljava/lang/CharSequence;

    .prologue
    .line 288
    iget-object v0, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->mOPFingerPrintEnrollView:Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;

    invoke-virtual {v0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->showWarningTips(Ljava/lang/CharSequence;)V

    .line 287
    return-void
.end method

.method public onEnrollmentProgressChange(II)V
    .locals 1
    .param p1, "steps"    # I
    .param p2, "remaining"    # I

    .prologue
    .line 304
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->updateProgress(Z)V

    .line 303
    return-void
.end method

.method public onEnterAnimationComplete()V
    .locals 0

    .prologue
    .line 242
    invoke-super {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollBase;->onEnterAnimationComplete()V

    .line 241
    return-void
.end method

.method public onOPFingerComfirmClick()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 455
    iput-boolean v0, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->mConfirmCompleted:Z

    .line 456
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->setResult(I)V

    .line 457
    invoke-virtual {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->finish()V

    .line 453
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x1

    .line 444
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 445
    iput-boolean v2, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->mOnBackPress:Z

    .line 446
    invoke-virtual {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->finish()V

    .line 447
    return v2

    .line 449
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 204
    invoke-super {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollBase;->onPause()V

    .line 205
    invoke-virtual {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_1

    .line 206
    iput v2, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->mCurrentProgress:I

    .line 207
    iput v2, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->mEnrollSuccessCount:I

    .line 208
    invoke-virtual {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->enableHomeKey()V

    .line 209
    invoke-direct {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->releaseWakeLock()V

    .line 210
    iget-boolean v0, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->mConfirmCompleted:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->mOnBackPress:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->mHasInputCompleted:Z

    :goto_0
    if-nez v0, :cond_0

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->mOPFingerPrintEnrollView:Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->hideWarningTips()V

    .line 216
    iget-object v0, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->mTouchAgainRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 217
    iput-boolean v2, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->mConfirmCompleted:Z

    .line 218
    iput-boolean v2, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->mOnBackPress:Z

    .line 219
    iput-boolean v2, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->mHasInputCompleted:Z

    .line 221
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->setResult(I)V

    .line 223
    invoke-virtual {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->finish()V

    .line 202
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 210
    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 132
    invoke-super {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollBase;->onResume()V

    .line 133
    invoke-virtual {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->disEnableHomeKey()V

    .line 134
    iget-boolean v0, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->mConfirmCompleted:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->mOnBackPress:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->mHasInputCompleted:Z

    :goto_0
    if-nez v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->mOPFingerPrintEnrollView:Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->resetWithoutAnimation()V

    .line 137
    :cond_0
    iput-boolean v1, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->mHasInputCompleted:Z

    .line 138
    iput-boolean v1, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->mConfirmCompleted:Z

    .line 139
    iput-boolean v1, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->mOnBackPress:Z

    .line 130
    return-void

    .line 134
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
    .line 191
    invoke-super {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollBase;->onStart()V

    .line 192
    invoke-virtual {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v1, "sidecar"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollSidecar;

    iput-object v0, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->mSidecar:Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollSidecar;

    .line 193
    iget-object v0, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->mSidecar:Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollSidecar;

    if-nez v0, :cond_0

    .line 194
    new-instance v0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollSidecar;

    invoke-direct {v0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollSidecar;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->mSidecar:Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollSidecar;

    .line 195
    invoke-virtual {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->mSidecar:Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollSidecar;

    const-string/jumbo v2, "sidecar"

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->mSidecar:Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollSidecar;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollSidecar;->setListener(Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollSidecar$Listener;)V

    .line 190
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 247
    invoke-super {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollBase;->onStop()V

    .line 248
    iget-object v0, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->mSidecar:Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollSidecar;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->mSidecar:Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollSidecar;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollSidecar;->setListener(Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollSidecar$Listener;)V

    .line 251
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_1

    .line 252
    iget-object v0, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->mSidecar:Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollSidecar;

    if-eqz v0, :cond_1

    .line 253
    iget-object v0, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->mSidecar:Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollSidecar;

    invoke-virtual {v0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollSidecar;->cancelEnrollment()Z

    .line 254
    invoke-virtual {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->mSidecar:Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollSidecar;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 246
    :cond_1
    return-void
.end method
