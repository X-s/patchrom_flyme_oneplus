.class public Lcom/android/server/policy/ui/OpGlobalActionIconReboot;
.super Lcom/android/server/policy/ui/OpGlobalActionIcon;
.source "OpGlobalActionIconReboot.java"


# static fields
.field protected static final ARC_LENGTH_END_1:I = 0x5a

.field protected static final ARC_LENGTH_END_2:I = 0x125

.field protected static final ARC_LENGTH_START_1:I = 0x125

.field protected static final ARC_LENGTH_START_2:I = 0x5a

.field protected static final ARC_SHIFT_POS_END_1:I = 0x10e

.field protected static final ARC_SHIFT_POS_END_2:I = 0x5a

.field protected static final ARC_SHIFT_POS_START_1:I = 0x0

.field protected static final ARC_SHIFT_POS_START_2:I = 0x0

.field protected static final ICON_SIZE:I = 0x54

.field public static final TAG:Ljava/lang/String; = "GlobalActionIconReboot"


# instance fields
.field private ARC_START_POS:I

.field private mTriangleAnimProgress:I

.field private mTrianglePaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(ILandroid/content/Context;)V
    .locals 2
    .param p1, "iconResId"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/ui/OpGlobalActionIcon;-><init>(ILandroid/content/Context;)V

    .line 25
    const/16 v0, 0x16

    iput v0, p0, Lcom/android/server/policy/ui/OpGlobalActionIconReboot;->ARC_START_POS:I

    .line 27
    iput v1, p0, Lcom/android/server/policy/ui/OpGlobalActionIconReboot;->mTriangleAnimProgress:I

    .line 40
    iput-boolean v1, p0, Lcom/android/server/policy/ui/OpGlobalActionIconReboot;->mIsAnimCircleDelayedByIcon:Z

    .line 41
    iput-boolean v1, p0, Lcom/android/server/policy/ui/OpGlobalActionIconReboot;->mIsArcFadeIn:Z

    .line 42
    invoke-direct {p0}, Lcom/android/server/policy/ui/OpGlobalActionIconReboot;->initTrianglePaint()V

    .line 43
    return-void
.end method

.method static synthetic access$002(Lcom/android/server/policy/ui/OpGlobalActionIconReboot;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/ui/OpGlobalActionIconReboot;
    .param p1, "x1"    # I

    .prologue
    .line 22
    iput p1, p0, Lcom/android/server/policy/ui/OpGlobalActionIconReboot;->mTriangleAnimProgress:I

    return p1
.end method

.method private initTrianglePaint()V
    .locals 2

    .prologue
    .line 47
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionIconReboot;->mTrianglePaint:Landroid/graphics/Paint;

    .line 48
    iget-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionIconReboot;->mTrianglePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 49
    iget-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionIconReboot;->mTrianglePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 50
    iget-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionIconReboot;->mTrianglePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41100000    # 9.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 51
    iget-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionIconReboot;->mTrianglePaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 52
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v11, 0x42de0000    # 111.0f

    const/high16 v10, 0x429c0000    # 78.0f

    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v9, 0x43040000    # 132.0f

    const/high16 v8, 0x42cc0000    # 102.0f

    .line 57
    invoke-virtual {p0}, Lcom/android/server/policy/ui/OpGlobalActionIconReboot;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 58
    .local v6, "bounds":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/RectF;

    iget v0, v6, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, 0x54

    int-to-float v0, v0

    iget v2, v6, Landroid/graphics/Rect;->top:I

    add-int/lit8 v2, v2, 0x54

    int-to-float v2, v2

    iget v3, v6, Landroid/graphics/Rect;->right:I

    add-int/lit8 v3, v3, -0x54

    int-to-float v3, v3

    iget v4, v6, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v4, v4, -0x54

    int-to-float v4, v4

    invoke-direct {v1, v0, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 63
    .local v1, "boundsF":Landroid/graphics/RectF;
    iget-boolean v0, p0, Lcom/android/server/policy/ui/OpGlobalActionIconReboot;->mIsAnimationStarted:Z

    if-nez v0, :cond_0

    .line 66
    iget v0, p0, Lcom/android/server/policy/ui/OpGlobalActionIconReboot;->ARC_START_POS:I

    int-to-float v2, v0

    const v3, 0x43928000    # 293.0f

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/policy/ui/OpGlobalActionIconReboot;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 69
    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    .line 70
    .local v7, "path":Landroid/graphics/Path;
    invoke-virtual {v7, v11, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 71
    invoke-virtual {v7, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 72
    invoke-virtual {v7, v9, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 73
    invoke-virtual {v7}, Landroid/graphics/Path;->close()V

    .line 74
    iget-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionIconReboot;->mTrianglePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 89
    .end local v7    # "path":Landroid/graphics/Path;
    :goto_0
    return-void

    .line 77
    :cond_0
    iget v0, p0, Lcom/android/server/policy/ui/OpGlobalActionIconReboot;->mTriangleAnimProgress:I

    const/16 v2, 0xc8

    if-ge v0, v2, :cond_1

    .line 79
    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    .line 80
    .restart local v7    # "path":Landroid/graphics/Path;
    const/high16 v0, 0x41a80000    # 21.0f

    iget v2, p0, Lcom/android/server/policy/ui/OpGlobalActionIconReboot;->mTriangleAnimProgress:I

    int-to-float v2, v2

    const/high16 v3, 0x43480000    # 200.0f

    div-float/2addr v2, v3

    div-float/2addr v2, v5

    mul-float/2addr v0, v2

    add-float/2addr v0, v11

    invoke-virtual {v7, v0, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 81
    const/high16 v0, 0x41c00000    # 24.0f

    iget v2, p0, Lcom/android/server/policy/ui/OpGlobalActionIconReboot;->mTriangleAnimProgress:I

    int-to-float v2, v2

    const/high16 v3, 0x43480000    # 200.0f

    div-float/2addr v2, v3

    div-float/2addr v2, v5

    mul-float/2addr v0, v2

    add-float/2addr v0, v10

    invoke-virtual {v7, v9, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 82
    invoke-virtual {v7, v9, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 83
    invoke-virtual {v7}, Landroid/graphics/Path;->close()V

    .line 84
    iget-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionIconReboot;->mTrianglePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 87
    .end local v7    # "path":Landroid/graphics/Path;
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/policy/ui/OpGlobalActionIconReboot;->drawCircle(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected drawCircle(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/android/server/policy/ui/OpGlobalActionIconReboot;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 93
    .local v6, "bounds":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/RectF;

    iget v0, v6, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, 0x54

    int-to-float v0, v0

    iget v2, v6, Landroid/graphics/Rect;->top:I

    add-int/lit8 v2, v2, 0x54

    int-to-float v2, v2

    iget v3, v6, Landroid/graphics/Rect;->right:I

    add-int/lit8 v3, v3, -0x54

    int-to-float v3, v3

    iget v4, v6, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v4, v4, -0x54

    int-to-float v4, v4

    invoke-direct {v1, v0, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 97
    .local v1, "boundsF":Landroid/graphics/RectF;
    iget v0, p0, Lcom/android/server/policy/ui/OpGlobalActionIconReboot;->ARC_START_POS:I

    iget v2, p0, Lcom/android/server/policy/ui/OpGlobalActionIconReboot;->mArcStartShiftValue:I

    add-int/2addr v0, v2

    iget v2, p0, Lcom/android/server/policy/ui/OpGlobalActionIconReboot;->mArcTurnAroundAnimPos:I

    add-int/2addr v0, v2

    rem-int/lit16 v0, v0, 0x168

    int-to-float v2, v0

    iget v0, p0, Lcom/android/server/policy/ui/OpGlobalActionIconReboot;->mArcLengthAnimValue:I

    int-to-float v3, v0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/policy/ui/OpGlobalActionIconReboot;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 99
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 124
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 129
    return-void
.end method

.method public startAnimateConfirmed()V
    .locals 4

    .prologue
    .line 103
    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 104
    .local v0, "mAnimator":Landroid/animation/ValueAnimator;
    new-instance v1, Lcom/android/server/policy/ui/OpGlobalActionIconReboot$1;

    invoke-direct {v1, p0}, Lcom/android/server/policy/ui/OpGlobalActionIconReboot$1;-><init>(Lcom/android/server/policy/ui/OpGlobalActionIconReboot;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 111
    const/high16 v1, 0x43480000    # 200.0f

    sget v2, Lcom/android/server/policy/ui/OpGlobalActionIconReboot;->ANIM_DURATION_SCALE:F

    mul-float/2addr v1, v2

    float-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 112
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 113
    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 115
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 118
    invoke-virtual {p0}, Lcom/android/server/policy/ui/OpGlobalActionIconReboot;->startCircleAnimation()V

    .line 119
    return-void

    .line 103
    nop

    :array_0
    .array-data 4
        0x0
        0xc8
    .end array-data
.end method
