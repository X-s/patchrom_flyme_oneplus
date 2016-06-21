.class public Lcom/android/systemui_ex/statusbar/phone/ScrimController;
.super Ljava/lang/Object;
.source "ScrimController.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field private mAnimateChange:Z

.field private mAnimateKeyguardFadingOut:Z

.field private mAnimationDelay:J

.field private mAnimationStarted:Z

.field private mBackDropView:Lcom/android/systemui_ex/statusbar/BackDropView;

.field private mBackdropBack:Landroid/widget/ImageView;

.field private mBouncerShowing:Z

.field private mCurrentBehindAlpha:F

.field private mCurrentInFrontAlpha:F

.field private mDarkenWhileDragging:Z

.field private mDozeBehindAlpha:F

.field private mDozeInFrontAlpha:F

.field private mDozing:Z

.field private mDurationOverride:J

.field private mExpanding:Z

.field private mFraction:F

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private mKeyguardShowing:Z

.field private final mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private mOnAnimationFinished:Ljava/lang/Runnable;

.field private final mScrimBehind:Lcom/android/systemui_ex/statusbar/ScrimView;

.field private final mScrimInFront:Lcom/android/systemui_ex/statusbar/ScrimView;

.field private mScrimSrcEnabled:Z

.field private final mUnlockMethodCache:Lcom/android/systemui_ex/statusbar/phone/UnlockMethodCache;

.field private mUpdatePending:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui_ex/statusbar/ScrimView;Lcom/android/systemui_ex/statusbar/ScrimView;Z)V
    .locals 4
    .param p1, "scrimBehind"    # Lcom/android/systemui_ex/statusbar/ScrimView;
    .param p2, "scrimInFront"    # Lcom/android/systemui_ex/statusbar/ScrimView;
    .param p3, "scrimSrcEnabled"    # Z

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->mDurationOverride:J

    .line 64
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 75
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui_ex/statusbar/ScrimView;

    .line 76
    iput-object p2, p0, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui_ex/statusbar/ScrimView;

    .line 77
    invoke-virtual {p1}, Lcom/android/systemui_ex/statusbar/ScrimView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 78
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/phone/UnlockMethodCache;->getInstance(Landroid/content/Context;)Lcom/android/systemui_ex/statusbar/phone/UnlockMethodCache;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->mUnlockMethodCache:Lcom/android/systemui_ex/statusbar/phone/UnlockMethodCache;

    .line 79
    const v1, 0x10c000e

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 81
    iput-boolean p3, p0, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->mScrimSrcEnabled:Z

    .line 82
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui_ex/statusbar/phone/ScrimController;Landroid/view/View;F)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/ScrimController;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # F

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->setCurrentScrimAlpha(Landroid/view/View;F)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui_ex/statusbar/phone/ScrimController;Lcom/android/systemui_ex/statusbar/ScrimView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/ScrimController;
    .param p1, "x1"    # Lcom/android/systemui_ex/statusbar/ScrimView;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->updateScrimColor(Lcom/android/systemui_ex/statusbar/ScrimView;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui_ex/statusbar/phone/ScrimController;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/ScrimController;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->mOnAnimationFinished:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/systemui_ex/statusbar/phone/ScrimController;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/ScrimController;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->mOnAnimationFinished:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/systemui_ex/statusbar/phone/ScrimController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/ScrimController;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->updateScrimBehindDrawingMode()V

    return-void
.end method

.method private getCurrentScrimAlpha(Landroid/view/View;)F
    .locals 1
    .param p1, "scrim"    # Landroid/view/View;

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui_ex/statusbar/ScrimView;

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->mCurrentBehindAlpha:F

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->mCurrentInFrontAlpha:F

    goto :goto_0
.end method

.method private getDozeAlpha(Landroid/view/View;)F
    .locals 1
    .param p1, "scrim"    # Landroid/view/View;

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui_ex/statusbar/ScrimView;

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->mDozeBehindAlpha:F

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->mDozeInFrontAlpha:F

    goto :goto_0
.end method

.method private getInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 292
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->mAnimateKeyguardFadingOut:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->mInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_0
.end method

.method private scheduleUpdate()V
    .locals 1

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->mUpdatePending:Z

    if-eqz v0, :cond_0

    .line 159
    :goto_0
    return-void

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui_ex/statusbar/ScrimView;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/ScrimView;->invalidate()V

    .line 157
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui_ex/statusbar/ScrimView;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/ScrimView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 158
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->mUpdatePending:Z

    goto :goto_0
.end method

.method private setCurrentScrimAlpha(Landroid/view/View;F)V
    .locals 1
    .param p1, "scrim"    # Landroid/view/View;
    .param p2, "alpha"    # F

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui_ex/statusbar/ScrimView;

    if-ne p1, v0, :cond_0

    .line 248
    iput p2, p0, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->mCurrentBehindAlpha:F

    .line 252
    :goto_0
    return-void

    .line 250
    :cond_0
    iput p2, p0, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->mCurrentInFrontAlpha:F

    goto :goto_0
.end method

.method private setScrimBehindColor(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui_ex/statusbar/ScrimView;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->setScrimColor(Lcom/android/systemui_ex/statusbar/ScrimView;F)V

    .line 211
    return-void
.end method

.method private setScrimColor(Lcom/android/systemui_ex/statusbar/ScrimView;F)V
    .locals 3
    .param p1, "scrim"    # Lcom/android/systemui_ex/statusbar/ScrimView;
    .param p2, "alpha"    # F

    .prologue
    const v2, 0x7f0f002b

    .line 225
    invoke-virtual {p1, v2}, Lcom/android/systemui_ex/statusbar/ScrimView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 226
    .local v0, "runningAnim":Ljava/lang/Object;
    instance-of v1, v0, Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    .line 227
    check-cast v0, Landroid/animation/ValueAnimator;

    .end local v0    # "runningAnim":Ljava/lang/Object;
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 228
    const/4 v1, 0x0

    invoke-virtual {p1, v2, v1}, Lcom/android/systemui_ex/statusbar/ScrimView;->setTag(ILjava/lang/Object;)V

    .line 230
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->mAnimateChange:Z

    if-eqz v1, :cond_1

    .line 231
    invoke-direct {p0, p1, p2}, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->startScrimAnimation(Lcom/android/systemui_ex/statusbar/ScrimView;F)V

    .line 236
    :goto_0
    return-void

    .line 233
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->setCurrentScrimAlpha(Landroid/view/View;F)V

    .line 234
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->updateScrimColor(Lcom/android/systemui_ex/statusbar/ScrimView;)V

    goto :goto_0
.end method

.method private setScrimInFrontColor(F)V
    .locals 3
    .param p1, "alpha"    # F

    .prologue
    const/4 v0, 0x0

    .line 214
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui_ex/statusbar/ScrimView;

    invoke-direct {p0, v1, p1}, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->setScrimColor(Lcom/android/systemui_ex/statusbar/ScrimView;F)V

    .line 215
    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-nez v1, :cond_0

    .line 216
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui_ex/statusbar/ScrimView;

    invoke-virtual {v1, v0}, Lcom/android/systemui_ex/statusbar/ScrimView;->setClickable(Z)V

    .line 222
    :goto_0
    return-void

    .line 220
    :cond_0
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui_ex/statusbar/ScrimView;

    iget-boolean v2, p0, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->mDozing:Z

    if-nez v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {v1, v0}, Lcom/android/systemui_ex/statusbar/ScrimView;->setClickable(Z)V

    goto :goto_0
.end method

.method private startScrimAnimation(Lcom/android/systemui_ex/statusbar/ScrimView;F)V
    .locals 7
    .param p1, "scrim"    # Lcom/android/systemui_ex/statusbar/ScrimView;
    .param p2, "target"    # F

    .prologue
    const/4 v6, 0x1

    .line 263
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->getCurrentScrimAlpha(Landroid/view/View;)F

    move-result v1

    .line 264
    .local v1, "current":F
    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v1, v2, v3

    aput p2, v2, v6

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 265
    .local v0, "anim":Landroid/animation/ValueAnimator;
    new-instance v2, Lcom/android/systemui_ex/statusbar/phone/ScrimController$1;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui_ex/statusbar/phone/ScrimController$1;-><init>(Lcom/android/systemui_ex/statusbar/phone/ScrimController;Lcom/android/systemui_ex/statusbar/ScrimView;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 273
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 274
    iget-wide v2, p0, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->mAnimationDelay:J

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 275
    iget-wide v2, p0, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->mDurationOverride:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->mDurationOverride:J

    :goto_0
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 276
    new-instance v2, Lcom/android/systemui_ex/statusbar/phone/ScrimController$2;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui_ex/statusbar/phone/ScrimController$2;-><init>(Lcom/android/systemui_ex/statusbar/phone/ScrimController;Lcom/android/systemui_ex/statusbar/ScrimView;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 286
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 287
    const v2, 0x7f0f002b

    invoke-virtual {p1, v2, v0}, Lcom/android/systemui_ex/statusbar/ScrimView;->setTag(ILjava/lang/Object;)V

    .line 288
    iput-boolean v6, p0, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->mAnimationStarted:Z

    .line 289
    return-void

    .line 275
    :cond_0
    const-wide/16 v2, 0xdc

    goto :goto_0
.end method

.method private updateScrimBehindDrawingMode()V
    .locals 2

    .prologue
    .line 329
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->mBackDropView:Lcom/android/systemui_ex/statusbar/BackDropView;

    invoke-virtual {v1}, Lcom/android/systemui_ex/statusbar/BackDropView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->mScrimSrcEnabled:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 330
    .local v0, "asSrc":Z
    :goto_0
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui_ex/statusbar/ScrimView;

    invoke-virtual {v1, v0}, Lcom/android/systemui_ex/statusbar/ScrimView;->setDrawAsSrc(Z)V

    .line 331
    return-void

    .line 329
    .end local v0    # "asSrc":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateScrimColor(Lcom/android/systemui_ex/statusbar/ScrimView;)V
    .locals 7
    .param p1, "scrim"    # Lcom/android/systemui_ex/statusbar/ScrimView;

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    .line 255
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->getCurrentScrimAlpha(Landroid/view/View;)F

    move-result v1

    .line 256
    .local v1, "alpha1":F
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->getDozeAlpha(Landroid/view/View;)F

    move-result v2

    .line 257
    .local v2, "alpha2":F
    sub-float v3, v5, v1

    sub-float v4, v5, v2

    mul-float/2addr v3, v4

    sub-float v0, v5, v3

    .line 259
    .local v0, "alpha":F
    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v3, v0

    float-to-int v3, v3

    invoke-static {v3, v6, v6, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/android/systemui_ex/statusbar/ScrimView;->setScrimColor(I)V

    .line 260
    return-void
.end method

.method private updateScrimKeyguard()V
    .locals 9

    .prologue
    const v8, 0x3f333333    # 0.7f

    const v5, 0x3c23d70a    # 0.01f

    const-wide v6, 0x3fe99999a0000000L    # 0.800000011920929

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 175
    iget-boolean v2, p0, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->mExpanding:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->mDarkenWhileDragging:Z

    if-eqz v2, :cond_0

    .line 176
    iget v2, p0, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->mFraction:F

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 177
    .local v0, "behindFraction":F
    sub-float v1, v4, v0

    .line 178
    .local v1, "fraction":F
    float-to-double v2, v1

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v1, v2

    .line 179
    float-to-double v2, v0

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v0, v2

    .line 180
    mul-float v2, v1, v8

    invoke-direct {p0, v2}, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->setScrimInFrontColor(F)V

    .line 181
    const v2, 0x3dcccccd    # 0.1f

    mul-float/2addr v2, v0

    invoke-direct {p0, v2}, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->setScrimBehindColor(F)V

    .line 194
    .end local v0    # "behindFraction":F
    .end local v1    # "fraction":F
    :goto_0
    return-void

    .line 182
    :cond_0
    iget-boolean v2, p0, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->mBouncerShowing:Z

    if-eqz v2, :cond_1

    .line 184
    invoke-direct {p0, v5}, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->setScrimInFrontColor(F)V

    .line 186
    invoke-direct {p0, v8}, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->setScrimBehindColor(F)V

    goto :goto_0

    .line 188
    :cond_1
    iget v2, p0, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->mFraction:F

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 189
    .restart local v1    # "fraction":F
    invoke-direct {p0, v3}, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->setScrimInFrontColor(F)V

    .line 190
    const v2, 0x3db851ec    # 0.09f

    mul-float/2addr v2, v1

    add-float/2addr v2, v5

    invoke-direct {p0, v2}, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->setScrimBehindColor(F)V

    goto :goto_0
.end method

.method private updateScrimNormal()V
    .locals 12

    .prologue
    const/4 v4, 0x0

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    .line 197
    iget v0, p0, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->mFraction:F

    .line 199
    .local v0, "frac":F
    const v2, 0x3f99999a    # 1.2f

    mul-float/2addr v2, v0

    const v3, 0x3e4ccccd    # 0.2f

    sub-float v0, v2, v3

    .line 200
    cmpg-float v2, v0, v4

    if-gtz v2, :cond_0

    .line 201
    invoke-direct {p0, v4}, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->setScrimBehindColor(F)V

    .line 207
    :goto_0
    return-void

    .line 204
    :cond_0
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    const-wide v4, 0x400921fa00000000L    # 3.141590118408203

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v6, v0

    float-to-double v6, v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    sub-double v4, v10, v4

    mul-double/2addr v2, v4

    sub-double v2, v10, v2

    double-to-float v1, v2

    .line 205
    .local v1, "k":F
    const v2, 0x3f1eb852    # 0.62f

    mul-float/2addr v2, v1

    invoke-direct {p0, v2}, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->setScrimBehindColor(F)V

    goto :goto_0
.end method

.method private updateScrims()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 162
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->mAnimateKeyguardFadingOut:Z

    if-eqz v0, :cond_0

    .line 163
    invoke-direct {p0, v1}, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->setScrimInFrontColor(F)V

    .line 164
    invoke-direct {p0, v1}, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->setScrimBehindColor(F)V

    .line 171
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->mAnimateChange:Z

    .line 172
    return-void

    .line 165
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->mKeyguardShowing:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->mBouncerShowing:Z

    if-nez v0, :cond_1

    .line 166
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->updateScrimNormal()V

    .line 167
    invoke-direct {p0, v1}, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->setScrimInFrontColor(F)V

    goto :goto_0

    .line 169
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->updateScrimKeyguard()V

    goto :goto_0
.end method


# virtual methods
.method public animateGoingToFullShade(JJ)V
    .locals 1
    .param p1, "delay"    # J
    .param p3, "duration"    # J

    .prologue
    .line 123
    iput-wide p3, p0, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->mDurationOverride:J

    .line 124
    iput-wide p1, p0, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->mAnimationDelay:J

    .line 125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->mAnimateChange:Z

    .line 126
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->scheduleUpdate()V

    .line 127
    return-void
.end method

.method public animateKeyguardFadingOut(JJLjava/lang/Runnable;)V
    .locals 1
    .param p1, "delay"    # J
    .param p3, "duration"    # J
    .param p5, "onAnimationFinished"    # Ljava/lang/Runnable;

    .prologue
    const/4 v0, 0x1

    .line 113
    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->mAnimateKeyguardFadingOut:Z

    .line 114
    iput-wide p3, p0, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->mDurationOverride:J

    .line 115
    iput-wide p1, p0, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->mAnimationDelay:J

    .line 117
    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->mAnimateChange:Z

    .line 118
    iput-object p5, p0, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->mOnAnimationFinished:Ljava/lang/Runnable;

    .line 119
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->scheduleUpdate()V

    .line 120
    return-void
.end method

.method public getDozeBehindAlpha()F
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->mDozeBehindAlpha:F

    return v0
.end method

.method public getDozeInFrontAlpha()F
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->mDozeInFrontAlpha:F

    return v0
.end method

.method public onExpandingFinished()V
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->mExpanding:Z

    .line 97
    return-void
.end method

.method public onPreDraw()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 297
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui_ex/statusbar/ScrimView;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/ScrimView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 298
    iput-boolean v2, p0, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->mUpdatePending:Z

    .line 299
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->updateScrims()V

    .line 300
    iput-boolean v2, p0, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->mAnimateKeyguardFadingOut:Z

    .line 301
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->mDurationOverride:J

    .line 302
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->mAnimationDelay:J

    .line 305
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->mAnimationStarted:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->mOnAnimationFinished:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->mOnAnimationFinished:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 307
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->mOnAnimationFinished:Ljava/lang/Runnable;

    .line 309
    :cond_0
    iput-boolean v2, p0, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->mAnimationStarted:Z

    .line 310
    const/4 v0, 0x1

    return v0
.end method

.method public onTrackingStarted()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 91
    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->mExpanding:Z

    .line 92
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->mUnlockMethodCache:Lcom/android/systemui_ex/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v1}, Lcom/android/systemui_ex/statusbar/phone/UnlockMethodCache;->isCurrentlyInsecure()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->mDarkenWhileDragging:Z

    .line 93
    return-void

    .line 92
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBackDropBackView(Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "backDropBackView"    # Landroid/widget/ImageView;

    .prologue
    .line 325
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->mBackdropBack:Landroid/widget/ImageView;

    .line 326
    return-void
.end method

.method public setBackDropView(Lcom/android/systemui_ex/statusbar/BackDropView;)V
    .locals 2
    .param p1, "backDropView"    # Lcom/android/systemui_ex/statusbar/BackDropView;

    .prologue
    .line 314
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->mBackDropView:Lcom/android/systemui_ex/statusbar/BackDropView;

    .line 315
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->mBackDropView:Lcom/android/systemui_ex/statusbar/BackDropView;

    new-instance v1, Lcom/android/systemui_ex/statusbar/phone/ScrimController$3;

    invoke-direct {v1, p0}, Lcom/android/systemui_ex/statusbar/phone/ScrimController$3;-><init>(Lcom/android/systemui_ex/statusbar/phone/ScrimController;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/BackDropView;->setOnVisibilityChangedRunnable(Ljava/lang/Runnable;)V

    .line 321
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->updateScrimBehindDrawingMode()V

    .line 322
    return-void
.end method

.method public setBouncerShowing(Z)V
    .locals 1
    .param p1, "showing"    # Z

    .prologue
    .line 107
    iput-boolean p1, p0, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->mBouncerShowing:Z

    .line 108
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->mExpanding:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->mAnimateChange:Z

    .line 109
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->scheduleUpdate()V

    .line 110
    return-void

    .line 108
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDozeBehindAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 140
    iput p1, p0, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->mDozeBehindAlpha:F

    .line 141
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui_ex/statusbar/ScrimView;

    invoke-direct {p0, v0}, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->updateScrimColor(Lcom/android/systemui_ex/statusbar/ScrimView;)V

    .line 142
    return-void
.end method

.method public setDozeInFrontAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 135
    iput p1, p0, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->mDozeInFrontAlpha:F

    .line 136
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui_ex/statusbar/ScrimView;

    invoke-direct {p0, v0}, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->updateScrimColor(Lcom/android/systemui_ex/statusbar/ScrimView;)V

    .line 137
    return-void
.end method

.method public setDozing(Z)V
    .locals 0
    .param p1, "dozing"    # Z

    .prologue
    .line 130
    iput-boolean p1, p0, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->mDozing:Z

    .line 131
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->scheduleUpdate()V

    .line 132
    return-void
.end method

.method public setKeyguardShowing(Z)V
    .locals 0
    .param p1, "showing"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->mKeyguardShowing:Z

    .line 87
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->scheduleUpdate()V

    .line 88
    return-void
.end method

.method public setPanelExpansion(F)V
    .locals 1
    .param p1, "fraction"    # F

    .prologue
    .line 100
    iget v0, p0, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->mFraction:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 101
    iput p1, p0, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->mFraction:F

    .line 102
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->scheduleUpdate()V

    .line 104
    :cond_0
    return-void
.end method
