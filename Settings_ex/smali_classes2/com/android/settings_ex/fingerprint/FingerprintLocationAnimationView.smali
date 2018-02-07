.class public Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationView;
.super Landroid/view/View;
.source "FingerprintLocationAnimationView.java"

# interfaces
.implements Lcom/android/settings_ex/fingerprint/FingerprintFindSensorAnimation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationView$1;
    }
.end annotation


# static fields
.field private static final DELAY_BETWEEN_PHASE:J = 0x3e8L

.field private static final MAX_PULSE_ALPHA:F = 0.15f


# instance fields
.field private mAlphaAnimator:Landroid/animation/ValueAnimator;

.field private final mDotPaint:Landroid/graphics/Paint;

.field private final mDotRadius:I

.field private final mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private final mFractionCenterX:F

.field private final mFractionCenterY:F

.field private final mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private final mMaxPulseRadius:I

.field private final mPulsePaint:Landroid/graphics/Paint;

.field private mPulseRadius:F

.field private mRadiusAnimator:Landroid/animation/ValueAnimator;

.field private final mStartPhaseRunnable:Ljava/lang/Runnable;


# direct methods
.method static synthetic -get0(Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationView;)Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationView;->mPulsePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationView;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationView;->mStartPhaseRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationView;F)F
    .locals 0

    iput p1, p0, Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationView;->mPulseRadius:F

    return p1
.end method

.method static synthetic -set2(Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationView;->mRadiusAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationView;->startPhase()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const v4, 0x10c000e

    const/4 v3, 0x1

    .line 58
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationView;->mDotPaint:Landroid/graphics/Paint;

    .line 52
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationView;->mPulsePaint:Landroid/graphics/Paint;

    .line 179
    new-instance v1, Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationView$1;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationView$1;-><init>(Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationView;)V

    iput-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationView;->mStartPhaseRunnable:Ljava/lang/Runnable;

    .line 59
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0233

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationView;->mDotRadius:I

    .line 60
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0234

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationView;->mMaxPulseRadius:I

    .line 61
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 62
    const/high16 v2, 0x7f120000

    .line 61
    invoke-virtual {v1, v2, v3, v3}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationView;->mFractionCenterX:F

    .line 63
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 64
    const v2, 0x7f120001

    .line 63
    invoke-virtual {v1, v2, v3, v3}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationView;->mFractionCenterY:F

    .line 65
    invoke-static {p1}, Lcom/android/settings_ex/Utils;->getColorAccent(Landroid/content/Context;)I

    move-result v0

    .line 66
    .local v0, "colorAccent":I
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationView;->mDotPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 67
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationView;->mPulsePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 68
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationView;->mDotPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 69
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationView;->mPulsePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 70
    invoke-static {p1, v4}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationView;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 72
    invoke-static {p1, v4}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationView;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 57
    return-void
.end method

.method private drawDot(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationView;->getCenterX()F

    move-result v0

    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationView;->getCenterY()F

    move-result v1

    iget v2, p0, Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationView;->mDotRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationView;->mDotPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 82
    return-void
.end method

.method private drawPulse(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationView;->getCenterX()F

    move-result v0

    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationView;->getCenterY()F

    move-result v1

    iget v2, p0, Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationView;->mPulseRadius:F

    iget-object v3, p0, Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationView;->mPulsePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 86
    return-void
.end method

.method private getCenterX()F
    .locals 1

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    return v0
.end method

.method private getCenterY()F
    .locals 1

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    return v0
.end method

.method private startAlphaAnimation()V
    .locals 4

    .prologue
    .line 157
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationView;->mPulsePaint:Landroid/graphics/Paint;

    const/16 v2, 0x26

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 158
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 159
    .local v0, "animator":Landroid/animation/ValueAnimator;
    new-instance v1, Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationView$4;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationView$4;-><init>(Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 166
    new-instance v1, Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationView$5;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationView$5;-><init>(Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 172
    const-wide/16 v2, 0x2ee

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 173
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationView;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 174
    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 175
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 176
    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 156
    return-void

    .line 158
    :array_0
    .array-data 4
        0x3e19999a    # 0.15f
        0x0
    .end array-data
.end method

.method private startPhase()V
    .locals 0

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationView;->startRadiusAnimation()V

    .line 121
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationView;->startAlphaAnimation()V

    .line 119
    return-void
.end method

.method private startRadiusAnimation()V
    .locals 4

    .prologue
    .line 125
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v2, v1, v3

    iget v2, p0, Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationView;->mMaxPulseRadius:I

    int-to-float v2, v2

    const/4 v3, 0x1

    aput v2, v1, v3

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 126
    .local v0, "animator":Landroid/animation/ValueAnimator;
    new-instance v1, Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationView$2;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationView$2;-><init>(Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 133
    new-instance v1, Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationView$3;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationView$3;-><init>(Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 150
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 151
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationView;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 152
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 153
    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationView;->mRadiusAnimator:Landroid/animation/ValueAnimator;

    .line 124
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationView;->drawPulse(Landroid/graphics/Canvas;)V

    .line 79
    invoke-direct {p0, p1}, Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationView;->drawDot(Landroid/graphics/Canvas;)V

    .line 77
    return-void
.end method

.method public pauseAnimation()V
    .locals 0

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationView;->stopAnimation()V

    .line 115
    return-void
.end method

.method public startAnimation()V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationView;->startPhase()V

    .line 99
    return-void
.end method

.method public stopAnimation()V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationView;->mStartPhaseRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 106
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationView;->mRadiusAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationView;->mRadiusAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 110
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 104
    :cond_1
    return-void
.end method
