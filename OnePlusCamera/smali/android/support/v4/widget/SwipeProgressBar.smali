.class final Landroid/support/v4/widget/SwipeProgressBar;
.super Ljava/lang/Object;
.source "SwipeProgressBar.java"


# static fields
.field private static final ANIMATION_DURATION_MS:I = 0x7d0

.field private static final COLOR1:I = -0x4d000000

.field private static final COLOR2:I = -0x80000000

.field private static final COLOR3:I = 0x4d000000

.field private static final COLOR4:I = 0x1a000000

.field private static final FINISH_ANIMATION_DURATION_MS:I = 0x3e8

.field private static final INTERPOLATOR:Landroid/view/animation/Interpolator;


# instance fields
.field private mBounds:Landroid/graphics/Rect;

.field private final mClipRect:Landroid/graphics/RectF;

.field private mColor1:I

.field private mColor2:I

.field private mColor3:I

.field private mColor4:I

.field private mFinishTime:J

.field private final mPaint:Landroid/graphics/Paint;

.field private mParent:Landroid/view/View;

.field private mRunning:Z

.field private mStartTime:J

.field private mTriggerPercentage:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    invoke-static {}, Landroid/support/v4/widget/BakedBezierInterpolator;->getInstance()Landroid/support/v4/widget/BakedBezierInterpolator;

    move-result-object v0

    sput-object v0, Landroid/support/v4/widget/SwipeProgressBar;->INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mPaint:Landroid/graphics/Paint;

    .line 54
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mClipRect:Landroid/graphics/RectF;

    .line 67
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;

    .line 70
    iput-object p1, p0, Landroid/support/v4/widget/SwipeProgressBar;->mParent:Landroid/view/View;

    const/high16 v0, -0x4d000000

    .line 71
    iput v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mColor1:I

    const/high16 v0, -0x80000000

    .line 72
    iput v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mColor2:I

    const/high16 v0, 0x4d000000    # 1.34217728E8f

    .line 73
    iput v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mColor3:I

    const/high16 v0, 0x1a000000

    .line 74
    iput v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mColor4:I

    .line 75
    return-void
.end method

.method private drawCircle(Landroid/graphics/Canvas;FFIF)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 257
    iget-object v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 258
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 259
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 260
    sget-object v0, Landroid/support/v4/widget/SwipeProgressBar;->INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-interface {v0, p5}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    .line 261
    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    .line 262
    iget-object v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v1, p2, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 263
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 264
    return-void
.end method

.method private drawTrigger(Landroid/graphics/Canvas;II)V
    .locals 4

    .prologue
    .line 243
    iget-object v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Landroid/support/v4/widget/SwipeProgressBar;->mColor1:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 244
    int-to-float v0, p2

    int-to-float v1, p3

    int-to-float v2, p2

    iget v3, p0, Landroid/support/v4/widget/SwipeProgressBar;->mTriggerPercentage:F

    mul-float/2addr v2, v3

    iget-object v3, p0, Landroid/support/v4/widget/SwipeProgressBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 245
    return-void
.end method


# virtual methods
.method draw(Landroid/graphics/Canvas;)V
    .locals 18

    .prologue
    .line 138
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 139
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    .line 140
    div-int/lit8 v10, v4, 0x2

    .line 141
    div-int/lit8 v11, v5, 0x2

    .line 142
    const/4 v2, 0x0

    .line 143
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v8

    .line 144
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 146
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/support/v4/widget/SwipeProgressBar;->mRunning:Z

    if-eqz v3, :cond_8

    .line 147
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    .line 148
    move-object/from16 v0, p0

    iget-wide v12, v0, Landroid/support/v4/widget/SwipeProgressBar;->mStartTime:J

    sub-long v12, v6, v12

    const-wide/16 v14, 0x7d0

    rem-long/2addr v12, v14

    .line 149
    move-object/from16 v0, p0

    iget-wide v14, v0, Landroid/support/v4/widget/SwipeProgressBar;->mStartTime:J

    sub-long v14, v6, v14

    const-wide/16 v16, 0x7d0

    div-long v14, v14, v16

    .line 150
    long-to-float v3, v12

    const/high16 v9, 0x41a00000    # 20.0f

    div-float v12, v3, v9

    .line 154
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/support/v4/widget/SwipeProgressBar;->mRunning:Z

    if-eqz v3, :cond_a

    move v9, v2

    :goto_0
    const-wide/16 v2, 0x0

    .line 180
    cmp-long v2, v14, v2

    if-nez v2, :cond_d

    .line 181
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v4/widget/SwipeProgressBar;->mColor1:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    :goto_1
    const/4 v2, 0x0

    .line 200
    cmpl-float v2, v12, v2

    if-ltz v2, :cond_1

    const/high16 v2, 0x41c80000    # 25.0f

    cmpg-float v2, v12, v2

    if-gtz v2, :cond_1

    const/high16 v2, 0x41c80000    # 25.0f

    .line 201
    add-float/2addr v2, v12

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    const/high16 v3, 0x42c80000    # 100.0f

    div-float v7, v2, v3

    .line 202
    int-to-float v4, v10

    int-to-float v5, v11

    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v4/widget/SwipeProgressBar;->mColor1:I

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Landroid/support/v4/widget/SwipeProgressBar;->drawCircle(Landroid/graphics/Canvas;FFIF)V

    :cond_1
    const/4 v2, 0x0

    .line 204
    cmpl-float v2, v12, v2

    if-ltz v2, :cond_2

    const/high16 v2, 0x42480000    # 50.0f

    cmpg-float v2, v12, v2

    if-gtz v2, :cond_2

    const/high16 v2, 0x40000000    # 2.0f

    .line 205
    mul-float/2addr v2, v12

    const/high16 v3, 0x42c80000    # 100.0f

    div-float v7, v2, v3

    .line 206
    int-to-float v4, v10

    int-to-float v5, v11

    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v4/widget/SwipeProgressBar;->mColor2:I

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Landroid/support/v4/widget/SwipeProgressBar;->drawCircle(Landroid/graphics/Canvas;FFIF)V

    :cond_2
    const/high16 v2, 0x41c80000    # 25.0f

    .line 208
    cmpl-float v2, v12, v2

    if-ltz v2, :cond_3

    const/high16 v2, 0x42960000    # 75.0f

    cmpg-float v2, v12, v2

    if-gtz v2, :cond_3

    const/high16 v2, 0x41c80000    # 25.0f

    .line 209
    sub-float v2, v12, v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    const/high16 v3, 0x42c80000    # 100.0f

    div-float v7, v2, v3

    .line 210
    int-to-float v4, v10

    int-to-float v5, v11

    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v4/widget/SwipeProgressBar;->mColor3:I

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Landroid/support/v4/widget/SwipeProgressBar;->drawCircle(Landroid/graphics/Canvas;FFIF)V

    :cond_3
    const/high16 v2, 0x42480000    # 50.0f

    .line 212
    cmpl-float v2, v12, v2

    if-ltz v2, :cond_4

    const/high16 v2, 0x42c80000    # 100.0f

    cmpg-float v2, v12, v2

    if-gtz v2, :cond_4

    const/high16 v2, 0x42480000    # 50.0f

    .line 213
    sub-float v2, v12, v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    const/high16 v3, 0x42c80000    # 100.0f

    div-float v7, v2, v3

    .line 214
    int-to-float v4, v10

    int-to-float v5, v11

    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v4/widget/SwipeProgressBar;->mColor4:I

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Landroid/support/v4/widget/SwipeProgressBar;->drawCircle(Landroid/graphics/Canvas;FFIF)V

    :cond_4
    const/high16 v2, 0x42960000    # 75.0f

    .line 216
    cmpl-float v2, v12, v2

    if-ltz v2, :cond_5

    const/high16 v2, 0x42c80000    # 100.0f

    cmpg-float v2, v12, v2

    if-gtz v2, :cond_5

    const/high16 v2, 0x42960000    # 75.0f

    .line 217
    sub-float v2, v12, v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    const/high16 v3, 0x42c80000    # 100.0f

    div-float v7, v2, v3

    .line 218
    int-to-float v4, v10

    int-to-float v5, v11

    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v4/widget/SwipeProgressBar;->mColor1:I

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Landroid/support/v4/widget/SwipeProgressBar;->drawCircle(Landroid/graphics/Canvas;FFIF)V

    .line 220
    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v4/widget/SwipeProgressBar;->mTriggerPercentage:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_6

    if-nez v9, :cond_11

    :cond_6
    move v2, v8

    .line 231
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v4/widget/SwipeProgressBar;->mParent:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    invoke-static {v3, v4, v5, v6, v7}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;IIII)V

    move v8, v2

    .line 239
    :cond_7
    :goto_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 240
    return-void

    .line 146
    :cond_8
    move-object/from16 v0, p0

    iget-wide v6, v0, Landroid/support/v4/widget/SwipeProgressBar;->mFinishTime:J

    const-wide/16 v12, 0x0

    cmp-long v3, v6, v12

    if-gtz v3, :cond_9

    const/4 v3, 0x1

    :goto_4
    if-eqz v3, :cond_0

    .line 235
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v4/widget/SwipeProgressBar;->mTriggerPercentage:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_7

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v4/widget/SwipeProgressBar;->mTriggerPercentage:F

    float-to-double v2, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_7

    .line 236
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v10, v11}, Landroid/support/v4/widget/SwipeProgressBar;->drawTrigger(Landroid/graphics/Canvas;II)V

    goto :goto_3

    .line 146
    :cond_9
    const/4 v3, 0x0

    goto :goto_4

    .line 157
    :cond_a
    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/support/v4/widget/SwipeProgressBar;->mFinishTime:J

    sub-long v2, v6, v2

    const-wide/16 v16, 0x3e8

    cmp-long v2, v2, v16

    if-gez v2, :cond_b

    const/4 v2, 0x1

    :goto_5
    if-nez v2, :cond_c

    const-wide/16 v2, 0x0

    .line 158
    move-object/from16 v0, p0

    iput-wide v2, v0, Landroid/support/v4/widget/SwipeProgressBar;->mFinishTime:J

    .line 159
    return-void

    .line 157
    :cond_b
    const/4 v2, 0x0

    goto :goto_5

    .line 165
    :cond_c
    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/support/v4/widget/SwipeProgressBar;->mFinishTime:J

    sub-long v2, v6, v2

    const-wide/16 v6, 0x3e8

    rem-long/2addr v2, v6

    .line 166
    long-to-float v2, v2

    const/high16 v3, 0x41200000    # 10.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x42c80000    # 100.0f

    .line 167
    div-float/2addr v2, v3

    .line 169
    div-int/lit8 v3, v4, 0x2

    int-to-float v3, v3

    sget-object v4, Landroid/support/v4/widget/SwipeProgressBar;->INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-interface {v4, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    mul-float/2addr v2, v3

    .line 170
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v4/widget/SwipeProgressBar;->mClipRect:Landroid/graphics/RectF;

    int-to-float v4, v10

    sub-float/2addr v4, v2

    const/4 v6, 0x0

    int-to-float v7, v10

    add-float/2addr v2, v7

    int-to-float v5, v5

    invoke-virtual {v3, v4, v6, v2, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 171
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/SwipeProgressBar;->mClipRect:Landroid/graphics/RectF;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    .line 176
    const/4 v2, 0x1

    move v9, v2

    goto/16 :goto_0

    :cond_d
    const/4 v2, 0x0

    .line 183
    cmpl-float v2, v12, v2

    if-ltz v2, :cond_e

    const/high16 v2, 0x41c80000    # 25.0f

    cmpg-float v2, v12, v2

    if-gez v2, :cond_e

    .line 184
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v4/widget/SwipeProgressBar;->mColor4:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    goto/16 :goto_1

    :cond_e
    const/high16 v2, 0x41c80000    # 25.0f

    .line 185
    cmpl-float v2, v12, v2

    if-ltz v2, :cond_f

    const/high16 v2, 0x42480000    # 50.0f

    cmpg-float v2, v12, v2

    if-gez v2, :cond_f

    .line 186
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v4/widget/SwipeProgressBar;->mColor1:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    goto/16 :goto_1

    :cond_f
    const/high16 v2, 0x42480000    # 50.0f

    .line 187
    cmpl-float v2, v12, v2

    if-ltz v2, :cond_10

    const/high16 v2, 0x42960000    # 75.0f

    cmpg-float v2, v12, v2

    if-gez v2, :cond_10

    .line 188
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v4/widget/SwipeProgressBar;->mColor2:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    goto/16 :goto_1

    .line 190
    :cond_10
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v4/widget/SwipeProgressBar;->mColor3:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    goto/16 :goto_1

    .line 225
    :cond_11
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 226
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 227
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 228
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v10, v11}, Landroid/support/v4/widget/SwipeProgressBar;->drawTrigger(Landroid/graphics/Canvas;II)V

    goto/16 :goto_2
.end method

.method isRunning()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 134
    iget-boolean v2, p0, Landroid/support/v4/widget/SwipeProgressBar;->mRunning:Z

    if-eqz v2, :cond_1

    :goto_0
    move v0, v1

    :cond_0
    return v0

    :cond_1
    iget-wide v2, p0, Landroid/support/v4/widget/SwipeProgressBar;->mFinishTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_2

    move v2, v1

    :goto_1
    if-nez v2, :cond_0

    goto :goto_0

    :cond_2
    move v2, v0

    goto :goto_1
.end method

.method setBounds(IIII)V
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->left:I

    .line 271
    iget-object v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;

    iput p2, v0, Landroid/graphics/Rect;->top:I

    .line 272
    iget-object v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;

    iput p3, v0, Landroid/graphics/Rect;->right:I

    .line 273
    iget-object v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;

    iput p4, v0, Landroid/graphics/Rect;->bottom:I

    .line 274
    return-void
.end method

.method setColorScheme(IIII)V
    .locals 0

    .prologue
    .line 88
    iput p1, p0, Landroid/support/v4/widget/SwipeProgressBar;->mColor1:I

    .line 89
    iput p2, p0, Landroid/support/v4/widget/SwipeProgressBar;->mColor2:I

    .line 90
    iput p3, p0, Landroid/support/v4/widget/SwipeProgressBar;->mColor3:I

    .line 91
    iput p4, p0, Landroid/support/v4/widget/SwipeProgressBar;->mColor4:I

    .line 92
    return-void
.end method

.method setTriggerPercentage(F)V
    .locals 5

    .prologue
    .line 100
    iput p1, p0, Landroid/support/v4/widget/SwipeProgressBar;->mTriggerPercentage:F

    const-wide/16 v0, 0x0

    .line 101
    iput-wide v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mStartTime:J

    .line 102
    iget-object v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mParent:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0, v1, v2, v3, v4}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;IIII)V

    .line 104
    return-void
.end method

.method start()V
    .locals 2

    .prologue
    .line 110
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mRunning:Z

    if-eqz v0, :cond_0

    .line 116
    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    .line 111
    iput v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mTriggerPercentage:F

    .line 112
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mStartTime:J

    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mRunning:Z

    .line 114
    iget-object v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    goto :goto_0
.end method

.method stop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 122
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mRunning:Z

    if-nez v0, :cond_0

    .line 128
    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    .line 123
    iput v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mTriggerPercentage:F

    .line 124
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mFinishTime:J

    .line 125
    iput-boolean v2, p0, Landroid/support/v4/widget/SwipeProgressBar;->mRunning:Z

    .line 126
    iget-object v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    goto :goto_0
.end method
