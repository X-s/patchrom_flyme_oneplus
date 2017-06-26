.class public Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;
.super Lcom/android/settings_ex/fingerprint/FingerprintEnrollBase;
.source "FingerprintEnrollEnrolling.java"

# interfaces
.implements Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$IconTouchDialog;
    }
.end annotation


# static fields
.field private static final FINISH_DELAY:I = 0xfa

.field private static final HINT_TIMEOUT_DURATION:I = 0x9c4

.field private static final ICON_TOUCH_COUNT_SHOW_UNTIL_DIALOG_SHOWN:I = 0x3

.field private static final ICON_TOUCH_DURATION_UNTIL_DIALOG_SHOWN:J = 0x1f4L

.field private static final PROGRESS_BAR_MAX:I = 0x2710

.field private static final TAG_SIDECAR:Ljava/lang/String; = "sidecar"


# instance fields
.field private mAnimationCancelled:Z

.field private final mDelayedFinishRunnable:Ljava/lang/Runnable;

.field private mErrorText:Landroid/widget/TextView;

.field private mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

.field private mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private mFingerprintAnimator:Landroid/widget/ImageView;

.field private final mIconAnimationCallback:Landroid/graphics/drawable/Animatable2$AnimationCallback;

.field private mIconAnimationDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

.field private mIconTouchCount:I

.field private mIndicatorBackgroundActivatedColor:I

.field private mIndicatorBackgroundRestingColor:I

.field private mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private mProgressAnim:Landroid/animation/ObjectAnimator;

.field private final mProgressAnimationListener:Landroid/animation/Animator$AnimatorListener;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mRepeatMessage:Landroid/widget/TextView;

.field private mRestoring:Z

.field private final mShowDialogRunnable:Ljava/lang/Runnable;

.field private mSidecar:Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;

.field private mStartMessage:Landroid/widget/TextView;

.field private final mTouchAgainRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollBase;-><init>()V

    .line 323
    new-instance v0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$5;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$5;-><init>(Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;)V

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mProgressAnimationListener:Landroid/animation/Animator$AnimatorListener;

    .line 344
    new-instance v0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$6;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$6;-><init>(Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;)V

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mDelayedFinishRunnable:Ljava/lang/Runnable;

    .line 351
    new-instance v0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$7;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$7;-><init>(Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;)V

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mIconAnimationCallback:Landroid/graphics/drawable/Animatable2$AnimationCallback;

    .line 369
    new-instance v0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$8;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$8;-><init>(Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;)V

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mShowDialogRunnable:Ljava/lang/Runnable;

    .line 376
    new-instance v0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$9;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$9;-><init>(Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;)V

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mTouchAgainRunnable:Ljava/lang/Runnable;

    .line 383
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;

    .prologue
    .line 47
    iget v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mIconTouchCount:I

    return v0
.end method

.method static synthetic access$008(Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;

    .prologue
    .line 47
    iget v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mIconTouchCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mIconTouchCount:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->showIconTouchDialog()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;[B)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;
    .param p1, "x1"    # [B

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->launchFinish([B)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mAnimationCancelled:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->startIconAnimation()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;Ljava/lang/CharSequence;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->showError(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mShowDialogRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mFingerprintAnimator:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;

    .prologue
    .line 47
    iget v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mIndicatorBackgroundActivatedColor:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;

    .prologue
    .line 47
    iget v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mIndicatorBackgroundRestingColor:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;)Landroid/view/animation/Interpolator;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mDelayedFinishRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private animateFlash()V
    .locals 5

    .prologue
    .line 188
    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mIndicatorBackgroundRestingColor:I

    aput v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mIndicatorBackgroundActivatedColor:I

    aput v4, v2, v3

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofArgb([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 190
    .local v0, "anim":Landroid/animation/ValueAnimator;
    new-instance v1, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$2;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$2;-><init>(Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;)V

    .line 198
    .local v1, "listener":Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 199
    new-instance v2, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$3;

    invoke-direct {v2, p0, v1}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$3;-><init>(Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 210
    iget-object v2, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 211
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 212
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 213
    return-void
.end method

.method private animateProgress(I)V
    .locals 6
    .param p1, "progress"    # I

    .prologue
    .line 175
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mProgressAnim:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_0

    .line 176
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mProgressAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 178
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mProgressBar:Landroid/widget/ProgressBar;

    const-string v2, "progress"

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v5}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v5

    aput v5, v3, v4

    const/4 v4, 0x1

    aput p1, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 180
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mProgressAnimationListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 181
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 182
    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 183
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 184
    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mProgressAnim:Landroid/animation/ObjectAnimator;

    .line 185
    return-void
.end method

.method private clearError()V
    .locals 4

    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->getResources()Landroid/content/res/Resources;

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

    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$4;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$4;-><init>(Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 321
    :cond_0
    return-void
.end method

.method private getProgress(II)I
    .locals 3
    .param p1, "steps"    # I
    .param p2, "remaining"    # I

    .prologue
    const/4 v1, 0x0

    .line 273
    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    .line 277
    :goto_0
    return v1

    .line 276
    :cond_0
    add-int/lit8 v2, p1, 0x1

    sub-int/2addr v2, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 277
    .local v0, "progress":I
    mul-int/lit16 v1, v0, 0x2710

    add-int/lit8 v2, p1, 0x1

    div-int/2addr v1, v2

    goto :goto_0
.end method

.method private launchFinish([B)V
    .locals 2
    .param p1, "token"    # [B

    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->getFinishIntent()Landroid/content/Intent;

    move-result-object v0

    .line 217
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 218
    const-string v1, "hw_auth_token"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 219
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->startActivity(Landroid/content/Intent;)V

    .line 220
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->finish()V

    .line 221
    return-void
.end method

.method private showError(Ljava/lang/CharSequence;)V
    .locals 5
    .param p1, "error"    # Ljava/lang/CharSequence;

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 286
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 288
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 289
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00a8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 291
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 292
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 303
    :goto_0
    return-void

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 300
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setAlpha(F)V

    .line 301
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTranslationY(F)V

    goto :goto_0
.end method

.method private showIconTouchDialog()V
    .locals 3

    .prologue
    .line 281
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mIconTouchCount:I

    .line 282
    new-instance v0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$IconTouchDialog;

    invoke-direct {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$IconTouchDialog;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$IconTouchDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 283
    return-void
.end method

.method private startIconAnimation()V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mIconAnimationDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    .line 157
    return-void
.end method

.method private stopIconAnimation()V
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mAnimationCancelled:Z

    .line 161
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mIconAnimationDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    .line 162
    return-void
.end method

.method private updateDescription()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 228
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mSidecar:Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;

    invoke-virtual {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->getEnrollmentSteps()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 229
    const v0, 0x7f0c03fc

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->setHeaderText(I)V

    .line 230
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mStartMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 231
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mRepeatMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 238
    :goto_0
    return-void

    .line 233
    :cond_0
    const v0, 0x7f0c03fe

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->setHeaderText(IZ)V

    .line 235
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mStartMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 236
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mRepeatMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateProgress(Z)V
    .locals 3
    .param p1, "animate"    # Z

    .prologue
    .line 263
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mSidecar:Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;

    invoke-virtual {v1}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->getEnrollmentSteps()I

    move-result v1

    iget-object v2, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mSidecar:Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;

    invoke-virtual {v2}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->getEnrollmentRemaining()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->getProgress(II)I

    move-result v0

    .line 265
    .local v0, "progress":I
    if-eqz p1, :cond_0

    .line 266
    invoke-direct {p0, v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->animateProgress(I)V

    .line 270
    :goto_0
    return-void

    .line 268
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0
.end method


# virtual methods
.method protected getFinishIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 224
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFinish;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 91
    invoke-super {p0, p1}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollBase;->onCreate(Landroid/os/Bundle;)V

    .line 92
    const v0, 0x7f04005c

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->setContentView(I)V

    .line 93
    const v0, 0x7f0c03fc

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->setHeaderText(I)V

    .line 94
    const v0, 0x7f1200b2

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mStartMessage:Landroid/widget/TextView;

    .line 95
    const v0, 0x7f1200b3

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mRepeatMessage:Landroid/widget/TextView;

    .line 96
    const v0, 0x7f1200b4

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    .line 97
    const v0, 0x7f1200b6

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mProgressBar:Landroid/widget/ProgressBar;

    .line 98
    const v0, 0x7f1200b5

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mFingerprintAnimator:Landroid/widget/ImageView;

    .line 99
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mFingerprintAnimator:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mIconAnimationDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 100
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mIconAnimationDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mIconAnimationCallback:Landroid/graphics/drawable/Animatable2$AnimationCallback;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->registerAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)V

    .line 101
    const v0, 0x10c000d

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 103
    const v0, 0x10c000e

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 105
    const v0, 0x10c000f

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    .line 107
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mFingerprintAnimator:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$1;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$1;-><init>(Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 125
    const v0, 0x7f0e003a

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mIndicatorBackgroundRestingColor:I

    .line 127
    const v0, 0x7f0e007d

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mIndicatorBackgroundActivatedColor:I

    .line 129
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mRestoring:Z

    .line 130
    return-void

    .line 129
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onEnrollmentError(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "errString"    # Ljava/lang/CharSequence;

    .prologue
    .line 248
    invoke-direct {p0, p1}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->showError(Ljava/lang/CharSequence;)V

    .line 249
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->stopIconAnimation()V

    .line 250
    return-void
.end method

.method public onEnrollmentHelp(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "helpString"    # Ljava/lang/CharSequence;

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    return-void
.end method

.method public onEnrollmentProgressChange(II)V
    .locals 4
    .param p1, "steps"    # I
    .param p2, "remaining"    # I

    .prologue
    .line 254
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->updateProgress(Z)V

    .line 255
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->updateDescription()V

    .line 256
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->clearError()V

    .line 257
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->animateFlash()V

    .line 258
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mTouchAgainRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 259
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mTouchAgainRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x9c4

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 260
    return-void
.end method

.method public onEnterAnimationComplete()V
    .locals 1

    .prologue
    .line 150
    invoke-super {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollBase;->onEnterAnimationComplete()V

    .line 151
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mAnimationCancelled:Z

    .line 152
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->startIconAnimation()V

    .line 153
    return-void
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 134
    invoke-super {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollBase;->onStart()V

    .line 135
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "sidecar"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mSidecar:Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;

    .line 136
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mSidecar:Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;

    if-nez v0, :cond_0

    .line 137
    new-instance v0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;

    invoke-direct {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mSidecar:Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;

    .line 138
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mSidecar:Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;

    const-string v2, "sidecar"

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mSidecar:Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->setListener(Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar$Listener;)V

    .line 141
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->updateProgress(Z)V

    .line 142
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->updateDescription()V

    .line 143
    iget-boolean v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mRestoring:Z

    if-eqz v0, :cond_1

    .line 144
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->startIconAnimation()V

    .line 146
    :cond_1
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 166
    invoke-super {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollBase;->onStop()V

    .line 167
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->mSidecar:Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->setListener(Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar$Listener;)V

    .line 168
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->stopIconAnimation()V

    .line 169
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->finish()V

    .line 172
    :cond_0
    return-void
.end method
