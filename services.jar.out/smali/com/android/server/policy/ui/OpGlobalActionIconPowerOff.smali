.class public Lcom/android/server/policy/ui/OpGlobalActionIconPowerOff;
.super Lcom/android/server/policy/ui/OpGlobalActionIcon;
.source "OpGlobalActionIconPowerOff.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OpGlobalActionIcon"


# instance fields
.field private mLineAnimProgress:I


# direct methods
.method public constructor <init>(ILandroid/content/Context;)V
    .locals 1
    .param p1, "iconResId"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/ui/OpGlobalActionIcon;-><init>(ILandroid/content/Context;)V

    .line 20
    iput v0, p0, Lcom/android/server/policy/ui/OpGlobalActionIconPowerOff;->mLineAnimProgress:I

    .line 24
    iput-boolean v0, p0, Lcom/android/server/policy/ui/OpGlobalActionIconPowerOff;->mIsAnimCircleDelayedByIcon:Z

    .line 25
    iput-boolean v0, p0, Lcom/android/server/policy/ui/OpGlobalActionIconPowerOff;->mIsArcFadeIn:Z

    .line 26
    return-void
.end method

.method static synthetic access$002(Lcom/android/server/policy/ui/OpGlobalActionIconPowerOff;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/ui/OpGlobalActionIconPowerOff;
    .param p1, "x1"    # I

    .prologue
    .line 17
    iput p1, p0, Lcom/android/server/policy/ui/OpGlobalActionIconPowerOff;->mLineAnimProgress:I

    return p1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v6, 0x43fa0000    # 500.0f

    const/high16 v5, 0x41d80000    # 27.0f

    .line 31
    invoke-virtual {p0}, Lcom/android/server/policy/ui/OpGlobalActionIconPowerOff;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    .line 32
    .local v8, "bounds":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/RectF;

    iget v0, v8, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, 0x51

    int-to-float v0, v0

    iget v2, v8, Landroid/graphics/Rect;->top:I

    add-int/lit8 v2, v2, 0x51

    int-to-float v2, v2

    iget v3, v8, Landroid/graphics/Rect;->right:I

    add-int/lit8 v3, v3, -0x51

    int-to-float v3, v3

    iget v4, v8, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v4, v4, -0x51

    int-to-float v4, v4

    invoke-direct {v1, v0, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 38
    .local v1, "boundsF":Landroid/graphics/RectF;
    iget-boolean v0, p0, Lcom/android/server/policy/ui/OpGlobalActionIconPowerOff;->mIsAnimationStarted:Z

    if-nez v0, :cond_0

    .line 40
    const v2, 0x439d8000    # 315.0f

    const/high16 v3, 0x43870000    # 270.0f

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/policy/ui/OpGlobalActionIconPowerOff;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 41
    invoke-virtual {v8}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v3, v0

    const/high16 v4, 0x42980000    # 76.0f

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v5, v0

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    int-to-float v6, v0

    iget-object v7, p0, Lcom/android/server/policy/ui/OpGlobalActionIconPowerOff;->mPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 55
    :goto_0
    return-void

    .line 45
    :cond_0
    iget v0, p0, Lcom/android/server/policy/ui/OpGlobalActionIconPowerOff;->mLineAnimProgress:I

    const/16 v2, 0x1f4

    if-ge v0, v2, :cond_1

    iget v0, p0, Lcom/android/server/policy/ui/OpGlobalActionIconPowerOff;->mLineAnimProgress:I

    int-to-float v0, v0

    div-float/2addr v0, v6

    mul-float/2addr v0, v5

    const/high16 v2, 0x41d00000    # 26.0f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    .line 47
    invoke-virtual {v8}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v3, v0

    const/high16 v0, 0x42a20000    # 81.0f

    iget v2, p0, Lcom/android/server/policy/ui/OpGlobalActionIconPowerOff;->mLineAnimProgress:I

    int-to-float v2, v2

    div-float/2addr v2, v6

    mul-float/2addr v2, v5

    add-float v4, v0, v2

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v5, v0

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    int-to-float v6, v0

    iget-object v7, p0, Lcom/android/server/policy/ui/OpGlobalActionIconPowerOff;->mPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 53
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/policy/ui/OpGlobalActionIconPowerOff;->drawCircle(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 59
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 63
    return-void
.end method

.method public startAnimateConfirmed()V
    .locals 4

    .prologue
    .line 72
    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 73
    .local v0, "mAnimator":Landroid/animation/ValueAnimator;
    new-instance v1, Lcom/android/server/policy/ui/OpGlobalActionIconPowerOff$1;

    invoke-direct {v1, p0}, Lcom/android/server/policy/ui/OpGlobalActionIconPowerOff$1;-><init>(Lcom/android/server/policy/ui/OpGlobalActionIconPowerOff;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 80
    const/high16 v1, 0x43fa0000    # 500.0f

    sget v2, Lcom/android/server/policy/ui/OpGlobalActionIconPowerOff;->ANIM_DURATION_SCALE:F

    mul-float/2addr v1, v2

    float-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 81
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 82
    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 84
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 87
    invoke-virtual {p0}, Lcom/android/server/policy/ui/OpGlobalActionIconPowerOff;->startCircleAnimation()V

    .line 88
    return-void

    .line 72
    nop

    :array_0
    .array-data 4
        0x0
        0x1f4
    .end array-data
.end method
