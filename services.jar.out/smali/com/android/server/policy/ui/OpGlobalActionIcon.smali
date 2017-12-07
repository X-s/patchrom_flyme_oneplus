.class public Lcom/android/server/policy/ui/OpGlobalActionIcon;
.super Landroid/graphics/drawable/Drawable;
.source "OpGlobalActionIcon.java"


# static fields
.field public static ANIM_DURATION_SCALE:F = 0.0f

.field protected static final ARC_LENGTH_END_1:I = 0x2d

.field protected static final ARC_LENGTH_END_2:I = 0x10e

.field protected static final ARC_LENGTH_START_1:I = 0x10e

.field protected static final ARC_LENGTH_START_2:I = 0x2d

.field public static ARC_ROTATE_DEGREE:I = 0x0

.field public static ARC_SHIFT_DURATION:J = 0x0L

.field protected static final ARC_SHIFT_POS_END_1:I = 0x13b

.field protected static final ARC_SHIFT_POS_END_2:I = 0x2d

.field protected static final ARC_SHIFT_POS_START_1:I = 0x0

.field protected static final ARC_SHIFT_POS_START_2:I = 0x0

.field public static final CIRCLE_ANIM_DELAYED_BY_ICON:J = 0x64L

.field protected static final DBG:Z = false

.field protected static final ICON_SIZE:I = 0x4b

.field protected static final PAINT_COLOR:I = -0x1

.field protected static final PAINT_STROKE_WIDTH:I = 0x9

.field private static final TAG:Ljava/lang/String; = "OpGlobalActionIcon"


# instance fields
.field protected ARC_START_POS:I

.field protected mArcLengthAnimValue:I

.field protected mArcRotateValueTemp:I

.field protected mArcStartAnimValue:I

.field protected mArcStartShiftValue:I

.field protected mArcStartValueTemp:I

.field protected mArcTurnAroundAnimPos:I

.field protected mCircleAlpha:I

.field protected mContext:Landroid/content/Context;

.field protected mIconAnimProgress:I

.field private mIconResId:I

.field protected mIsAnimCircleDelayedByIcon:Z

.field protected mIsAnimationStarted:Z

.field protected mIsArcFadeIn:Z

.field protected mPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lcom/android/server/policy/ui/OpGlobalActionIcon;->ANIM_DURATION_SCALE:F

    .line 29
    const-wide/16 v0, 0x258

    sput-wide v0, Lcom/android/server/policy/ui/OpGlobalActionIcon;->ARC_SHIFT_DURATION:J

    .line 30
    const/16 v0, 0xf0

    sput v0, Lcom/android/server/policy/ui/OpGlobalActionIcon;->ARC_ROTATE_DEGREE:I

    .line 25
    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;)V
    .locals 3
    .param p1, "iconResId"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 43
    iput v1, p0, Lcom/android/server/policy/ui/OpGlobalActionIcon;->mIconAnimProgress:I

    .line 50
    const/16 v0, 0x13b

    iput v0, p0, Lcom/android/server/policy/ui/OpGlobalActionIcon;->ARC_START_POS:I

    .line 51
    iput-boolean v2, p0, Lcom/android/server/policy/ui/OpGlobalActionIcon;->mIsAnimCircleDelayedByIcon:Z

    .line 52
    iput-boolean v1, p0, Lcom/android/server/policy/ui/OpGlobalActionIcon;->mIsAnimationStarted:Z

    .line 53
    iput-boolean v2, p0, Lcom/android/server/policy/ui/OpGlobalActionIcon;->mIsArcFadeIn:Z

    .line 54
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/server/policy/ui/OpGlobalActionIcon;->mCircleAlpha:I

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionIcon;->mContext:Landroid/content/Context;

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/policy/ui/OpGlobalActionIcon;->mIconResId:I

    .line 60
    iput p1, p0, Lcom/android/server/policy/ui/OpGlobalActionIcon;->mIconResId:I

    .line 61
    iput-object p2, p0, Lcom/android/server/policy/ui/OpGlobalActionIcon;->mContext:Landroid/content/Context;

    .line 62
    invoke-direct {p0}, Lcom/android/server/policy/ui/OpGlobalActionIcon;->initPaint()V

    .line 59
    return-void
.end method

.method private initPaint()V
    .locals 2

    .prologue
    .line 66
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionIcon;->mPaint:Landroid/graphics/Paint;

    .line 67
    iget-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionIcon;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 68
    iget-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionIcon;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 69
    iget-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionIcon;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41100000    # 9.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 70
    iget-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionIcon;->mPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 65
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    const/4 v5, 0x0

    const/high16 v7, 0x43480000    # 200.0f

    const/high16 v6, 0x42c00000    # 96.0f

    .line 76
    iget-object v3, p0, Lcom/android/server/policy/ui/OpGlobalActionIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Lcom/android/server/policy/ui/OpGlobalActionIcon;->mIconResId:I

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 77
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget v3, p0, Lcom/android/server/policy/ui/OpGlobalActionIcon;->mIconAnimProgress:I

    int-to-float v3, v3

    div-float/2addr v3, v7

    mul-float/2addr v3, v6

    float-to-int v3, v3

    rsub-int/lit8 v1, v3, 0x60

    .line 78
    .local v1, "iconScaledX":I
    iget v3, p0, Lcom/android/server/policy/ui/OpGlobalActionIcon;->mIconAnimProgress:I

    int-to-float v3, v3

    div-float/2addr v3, v7

    mul-float/2addr v3, v6

    float-to-int v3, v3

    rsub-int/lit8 v2, v3, 0x60

    .line 79
    .local v2, "iconScaledY":I
    if-gtz v1, :cond_0

    if-lez v2, :cond_1

    .line 80
    :cond_0
    invoke-static {v0, v1, v2, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 81
    iget v4, p0, Lcom/android/server/policy/ui/OpGlobalActionIcon;->mIconAnimProgress:I

    int-to-float v4, v4

    div-float/2addr v4, v7

    mul-float/2addr v4, v6

    div-float/2addr v4, v8

    float-to-int v4, v4

    add-int/lit8 v4, v4, 0x3c

    int-to-float v4, v4

    .line 82
    iget v5, p0, Lcom/android/server/policy/ui/OpGlobalActionIcon;->mIconAnimProgress:I

    int-to-float v5, v5

    div-float/2addr v5, v7

    mul-float/2addr v5, v6

    div-float/2addr v5, v8

    float-to-int v5, v5

    add-int/lit8 v5, v5, 0x3c

    int-to-float v5, v5

    const/4 v6, 0x0

    .line 80
    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 85
    :cond_1
    iget-boolean v3, p0, Lcom/android/server/policy/ui/OpGlobalActionIcon;->mIsAnimationStarted:Z

    if-eqz v3, :cond_2

    .line 87
    invoke-virtual {p0, p1}, Lcom/android/server/policy/ui/OpGlobalActionIcon;->drawCircle(Landroid/graphics/Canvas;)V

    .line 74
    :cond_2
    return-void
.end method

.method protected drawCircle(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionIcon;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/server/policy/ui/OpGlobalActionIcon;->mCircleAlpha:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 93
    invoke-virtual {p0}, Lcom/android/server/policy/ui/OpGlobalActionIcon;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 94
    .local v6, "bounds":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/RectF;

    iget v0, v6, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, 0x4b

    int-to-float v0, v0

    .line 95
    iget v2, v6, Landroid/graphics/Rect;->top:I

    add-int/lit8 v2, v2, 0x4b

    int-to-float v2, v2

    .line 96
    iget v3, v6, Landroid/graphics/Rect;->right:I

    add-int/lit8 v3, v3, -0x4b

    int-to-float v3, v3

    .line 97
    iget v4, v6, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v4, v4, -0x4b

    int-to-float v4, v4

    .line 94
    invoke-direct {v1, v0, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 98
    .local v1, "boundsF":Landroid/graphics/RectF;
    iget v0, p0, Lcom/android/server/policy/ui/OpGlobalActionIcon;->ARC_START_POS:I

    iget v2, p0, Lcom/android/server/policy/ui/OpGlobalActionIcon;->mArcStartShiftValue:I

    add-int/2addr v0, v2

    iget v2, p0, Lcom/android/server/policy/ui/OpGlobalActionIcon;->mArcTurnAroundAnimPos:I

    add-int/2addr v0, v2

    rem-int/lit16 v0, v0, 0x168

    int-to-float v2, v0

    iget v0, p0, Lcom/android/server/policy/ui/OpGlobalActionIcon;->mArcLengthAnimValue:I

    int-to-float v3, v0

    iget-object v5, p0, Lcom/android/server/policy/ui/OpGlobalActionIcon;->mPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 91
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 381
    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 372
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 376
    return-void
.end method

.method public startAnimateConfirmed()V
    .locals 4

    .prologue
    .line 103
    const/4 v1, 0x0

    const/16 v2, 0xc8

    filled-new-array {v1, v2}, [I

    move-result-object v1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 104
    .local v0, "mAnimator":Landroid/animation/ValueAnimator;
    new-instance v1, Lcom/android/server/policy/ui/OpGlobalActionIcon$1;

    invoke-direct {v1, p0}, Lcom/android/server/policy/ui/OpGlobalActionIcon$1;-><init>(Lcom/android/server/policy/ui/OpGlobalActionIcon;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 112
    sget v1, Lcom/android/server/policy/ui/OpGlobalActionIcon;->ANIM_DURATION_SCALE:F

    const/high16 v2, 0x43480000    # 200.0f

    mul-float/2addr v1, v2

    float-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 113
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 114
    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 117
    new-instance v1, Lcom/android/server/policy/ui/OpGlobalActionIcon$2;

    invoke-direct {v1, p0}, Lcom/android/server/policy/ui/OpGlobalActionIcon$2;-><init>(Lcom/android/server/policy/ui/OpGlobalActionIcon;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 136
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 101
    return-void
.end method

.method protected startCircleAnimation()V
    .locals 15

    .prologue
    const/16 v14, 0x10e

    const/16 v8, 0x2d

    const-wide/16 v12, 0x64

    const/4 v9, 0x0

    const-wide/16 v10, 0x190

    .line 142
    const/16 v6, 0x13b

    filled-new-array {v9, v6}, [I

    move-result-object v6

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v4

    .line 143
    .local v4, "circleAnimStartAnimator_1":Landroid/animation/ValueAnimator;
    new-instance v6, Lcom/android/server/policy/ui/OpGlobalActionIcon$3;

    invoke-direct {v6, p0}, Lcom/android/server/policy/ui/OpGlobalActionIcon$3;-><init>(Lcom/android/server/policy/ui/OpGlobalActionIcon;)V

    invoke-virtual {v4, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 151
    sget-wide v6, Lcom/android/server/policy/ui/OpGlobalActionIcon;->ARC_SHIFT_DURATION:J

    long-to-float v6, v6

    sget v7, Lcom/android/server/policy/ui/OpGlobalActionIcon;->ANIM_DURATION_SCALE:F

    mul-float/2addr v6, v7

    float-to-long v6, v6

    invoke-virtual {v4, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 152
    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v4, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 153
    iget-boolean v6, p0, Lcom/android/server/policy/ui/OpGlobalActionIcon;->mIsAnimationStarted:Z

    if-nez v6, :cond_0

    .line 154
    invoke-virtual {v4, v10, v11}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 158
    :cond_0
    iget-boolean v6, p0, Lcom/android/server/policy/ui/OpGlobalActionIcon;->mIsAnimCircleDelayedByIcon:Z

    if-eqz v6, :cond_1

    .line 159
    invoke-virtual {v4, v12, v13}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 160
    :cond_1
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    .line 163
    filled-new-array {v9, v8}, [I

    move-result-object v6

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v5

    .line 164
    .local v5, "circleAnimStartAnimator_2":Landroid/animation/ValueAnimator;
    new-instance v6, Lcom/android/server/policy/ui/OpGlobalActionIcon$4;

    invoke-direct {v6, p0}, Lcom/android/server/policy/ui/OpGlobalActionIcon$4;-><init>(Lcom/android/server/policy/ui/OpGlobalActionIcon;)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 173
    sget-wide v6, Lcom/android/server/policy/ui/OpGlobalActionIcon;->ARC_SHIFT_DURATION:J

    long-to-float v6, v6

    sget v7, Lcom/android/server/policy/ui/OpGlobalActionIcon;->ANIM_DURATION_SCALE:F

    mul-float/2addr v6, v7

    float-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 174
    new-instance v6, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 175
    iget-boolean v6, p0, Lcom/android/server/policy/ui/OpGlobalActionIcon;->mIsAnimationStarted:Z

    if-nez v6, :cond_2

    .line 176
    invoke-virtual {v5, v10, v11}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 182
    :cond_2
    new-instance v6, Lcom/android/server/policy/ui/OpGlobalActionIcon$5;

    invoke-direct {v6, p0, v5}, Lcom/android/server/policy/ui/OpGlobalActionIcon$5;-><init>(Lcom/android/server/policy/ui/OpGlobalActionIcon;Landroid/animation/ValueAnimator;)V

    invoke-virtual {v4, v6}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 202
    new-instance v6, Lcom/android/server/policy/ui/OpGlobalActionIcon$6;

    invoke-direct {v6, p0, v4}, Lcom/android/server/policy/ui/OpGlobalActionIcon$6;-><init>(Lcom/android/server/policy/ui/OpGlobalActionIcon;Landroid/animation/ValueAnimator;)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 225
    filled-new-array {v14, v8}, [I

    move-result-object v6

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 226
    .local v1, "circleAnimLengthAnimator_1":Landroid/animation/ValueAnimator;
    new-instance v6, Lcom/android/server/policy/ui/OpGlobalActionIcon$7;

    invoke-direct {v6, p0}, Lcom/android/server/policy/ui/OpGlobalActionIcon$7;-><init>(Lcom/android/server/policy/ui/OpGlobalActionIcon;)V

    invoke-virtual {v1, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 234
    sget-wide v6, Lcom/android/server/policy/ui/OpGlobalActionIcon;->ARC_SHIFT_DURATION:J

    long-to-float v6, v6

    sget v7, Lcom/android/server/policy/ui/OpGlobalActionIcon;->ANIM_DURATION_SCALE:F

    mul-float/2addr v6, v7

    float-to-long v6, v6

    invoke-virtual {v1, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 235
    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 236
    iget-boolean v6, p0, Lcom/android/server/policy/ui/OpGlobalActionIcon;->mIsAnimationStarted:Z

    if-nez v6, :cond_3

    .line 237
    invoke-virtual {v1, v10, v11}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 241
    :cond_3
    iget-boolean v6, p0, Lcom/android/server/policy/ui/OpGlobalActionIcon;->mIsAnimCircleDelayedByIcon:Z

    if-eqz v6, :cond_4

    .line 242
    invoke-virtual {v1, v12, v13}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 243
    :cond_4
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 246
    filled-new-array {v8, v14}, [I

    move-result-object v6

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 247
    .local v2, "circleAnimLengthAnimator_2":Landroid/animation/ValueAnimator;
    new-instance v6, Lcom/android/server/policy/ui/OpGlobalActionIcon$8;

    invoke-direct {v6, p0}, Lcom/android/server/policy/ui/OpGlobalActionIcon$8;-><init>(Lcom/android/server/policy/ui/OpGlobalActionIcon;)V

    invoke-virtual {v2, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 256
    sget-wide v6, Lcom/android/server/policy/ui/OpGlobalActionIcon;->ARC_SHIFT_DURATION:J

    long-to-float v6, v6

    sget v7, Lcom/android/server/policy/ui/OpGlobalActionIcon;->ANIM_DURATION_SCALE:F

    mul-float/2addr v6, v7

    float-to-long v6, v6

    invoke-virtual {v2, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 257
    new-instance v6, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 258
    iget-boolean v6, p0, Lcom/android/server/policy/ui/OpGlobalActionIcon;->mIsAnimationStarted:Z

    if-nez v6, :cond_5

    .line 259
    invoke-virtual {v2, v10, v11}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 263
    :cond_5
    iget-boolean v6, p0, Lcom/android/server/policy/ui/OpGlobalActionIcon;->mIsAnimCircleDelayedByIcon:Z

    if-eqz v6, :cond_6

    .line 264
    invoke-virtual {v2, v12, v13}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 267
    :cond_6
    new-instance v6, Lcom/android/server/policy/ui/OpGlobalActionIcon$9;

    invoke-direct {v6, p0, v2}, Lcom/android/server/policy/ui/OpGlobalActionIcon$9;-><init>(Lcom/android/server/policy/ui/OpGlobalActionIcon;Landroid/animation/ValueAnimator;)V

    invoke-virtual {v4, v6}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 286
    new-instance v6, Lcom/android/server/policy/ui/OpGlobalActionIcon$10;

    invoke-direct {v6, p0, v1}, Lcom/android/server/policy/ui/OpGlobalActionIcon$10;-><init>(Lcom/android/server/policy/ui/OpGlobalActionIcon;Landroid/animation/ValueAnimator;)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 308
    const/4 v6, 0x2

    new-array v6, v6, [I

    aput v9, v6, v9

    sget v7, Lcom/android/server/policy/ui/OpGlobalActionIcon;->ARC_ROTATE_DEGREE:I

    const/4 v8, 0x1

    aput v7, v6, v8

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 309
    .local v3, "circleAnimRotateAnimator":Landroid/animation/ValueAnimator;
    new-instance v6, Lcom/android/server/policy/ui/OpGlobalActionIcon$11;

    invoke-direct {v6, p0}, Lcom/android/server/policy/ui/OpGlobalActionIcon$11;-><init>(Lcom/android/server/policy/ui/OpGlobalActionIcon;)V

    invoke-virtual {v3, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 318
    new-instance v6, Lcom/android/server/policy/ui/OpGlobalActionIcon$12;

    invoke-direct {v6, p0, v3}, Lcom/android/server/policy/ui/OpGlobalActionIcon$12;-><init>(Lcom/android/server/policy/ui/OpGlobalActionIcon;Landroid/animation/ValueAnimator;)V

    invoke-virtual {v3, v6}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 337
    sget v6, Lcom/android/server/policy/ui/OpGlobalActionIcon;->ANIM_DURATION_SCALE:F

    const/high16 v7, 0x447a0000    # 1000.0f

    mul-float/2addr v6, v7

    float-to-long v6, v6

    invoke-virtual {v3, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 338
    new-instance v6, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v6}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v3, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 339
    const/4 v6, -0x1

    invoke-virtual {v3, v6}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 340
    invoke-virtual {v3, v10, v11}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 343
    iget-boolean v6, p0, Lcom/android/server/policy/ui/OpGlobalActionIcon;->mIsAnimCircleDelayedByIcon:Z

    if-eqz v6, :cond_7

    .line 344
    invoke-virtual {v3, v12, v13}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 345
    :cond_7
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    .line 347
    iget-boolean v6, p0, Lcom/android/server/policy/ui/OpGlobalActionIcon;->mIsArcFadeIn:Z

    if-eqz v6, :cond_9

    .line 350
    const/16 v6, 0xff

    filled-new-array {v9, v6}, [I

    move-result-object v6

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 351
    .local v0, "circleAlphaAnimator":Landroid/animation/ValueAnimator;
    new-instance v6, Lcom/android/server/policy/ui/OpGlobalActionIcon$13;

    invoke-direct {v6, p0}, Lcom/android/server/policy/ui/OpGlobalActionIcon$13;-><init>(Lcom/android/server/policy/ui/OpGlobalActionIcon;)V

    invoke-virtual {v0, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 360
    sget v6, Lcom/android/server/policy/ui/OpGlobalActionIcon;->ANIM_DURATION_SCALE:F

    const/high16 v7, 0x43480000    # 200.0f

    mul-float/2addr v6, v7

    float-to-long v6, v6

    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 361
    new-instance v6, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v6}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 362
    invoke-virtual {v0, v10, v11}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 365
    iget-boolean v6, p0, Lcom/android/server/policy/ui/OpGlobalActionIcon;->mIsAnimCircleDelayedByIcon:Z

    if-eqz v6, :cond_8

    .line 366
    invoke-virtual {v0, v12, v13}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 367
    :cond_8
    iget-boolean v6, p0, Lcom/android/server/policy/ui/OpGlobalActionIcon;->mIsAnimCircleDelayedByIcon:Z

    if-eqz v6, :cond_9

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 139
    .end local v0    # "circleAlphaAnimator":Landroid/animation/ValueAnimator;
    :cond_9
    return-void
.end method
