.class Lcom/oneplus/gallery/editor/PreviewDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "PreviewDrawable.java"


# static fields
.field private static final DURATION_FLIP_ANIMATION:J = 0xc8L

.field private static final DURATION_ROTATE_ANIMATION:J = 0xc8L

.field private static final INTERPOLATOR_FLIP:Landroid/animation/TimeInterpolator;

.field private static final INTERPOLATOR_ROTATE:Landroid/animation/TimeInterpolator;

.field private static final INTERVAL_ANIMATE:J = 0xaL


# instance fields
.field private final m_AnimationRunnable:Ljava/lang/Runnable;

.field private m_ColorFilter:Landroid/graphics/ColorFilter;

.field private m_CurrentOrientation:I

.field private m_FlipXAnimationStartTime:J

.field private m_FlipXProgress:F

.field private m_FlipYAnimationStartTime:J

.field private m_FlipYProgress:F

.field private m_IsAnimating:Z

.field private final m_Matrix:Landroid/graphics/Matrix;

.field private m_OverlayBitmap:Landroid/graphics/Bitmap;

.field private final m_Paint:Landroid/graphics/Paint;

.field private m_PreviewBitmap:Landroid/graphics/Bitmap;

.field private m_RotateAnimationStartTime:J

.field private m_RotateEndAction:Ljava/lang/Runnable;

.field private final m_SourceBitmapBounds:Landroid/graphics/Rect;

.field private m_StartOrientation:I

.field private final m_TargetBitmapBounds:Landroid/graphics/RectF;

.field private m_TargetFlipX:Z

.field private m_TargetFlipY:Z

.field private m_TargetOrientation:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 24
    sput-object v0, Lcom/oneplus/gallery/editor/PreviewDrawable;->INTERPOLATOR_FLIP:Landroid/animation/TimeInterpolator;

    .line 25
    sput-object v0, Lcom/oneplus/gallery/editor/PreviewDrawable;->INTERPOLATOR_ROTATE:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    .line 62
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 29
    new-instance v0, Lcom/oneplus/gallery/editor/PreviewDrawable$1;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/editor/PreviewDrawable$1;-><init>(Lcom/oneplus/gallery/editor/PreviewDrawable;)V

    iput-object v0, p0, Lcom/oneplus/gallery/editor/PreviewDrawable;->m_AnimationRunnable:Ljava/lang/Runnable;

    .line 40
    iput v2, p0, Lcom/oneplus/gallery/editor/PreviewDrawable;->m_FlipXProgress:F

    .line 42
    iput v2, p0, Lcom/oneplus/gallery/editor/PreviewDrawable;->m_FlipYProgress:F

    .line 44
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/editor/PreviewDrawable;->m_Matrix:Landroid/graphics/Matrix;

    .line 46
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/editor/PreviewDrawable;->m_Paint:Landroid/graphics/Paint;

    .line 50
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/editor/PreviewDrawable;->m_SourceBitmapBounds:Landroid/graphics/Rect;

    .line 52
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/editor/PreviewDrawable;->m_TargetBitmapBounds:Landroid/graphics/RectF;

    .line 63
    iget-object v0, p0, Lcom/oneplus/gallery/editor/PreviewDrawable;->m_Paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 64
    iget-object v0, p0, Lcom/oneplus/gallery/editor/PreviewDrawable;->m_Paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 65
    iget-object v0, p0, Lcom/oneplus/gallery/editor/PreviewDrawable;->m_Paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/gallery/editor/PreviewDrawable;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/editor/PreviewDrawable;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/oneplus/gallery/editor/PreviewDrawable;->animate()V

    return-void
.end method

.method private animate()V
    .locals 12

    .prologue
    .line 73
    iget-boolean v5, p0, Lcom/oneplus/gallery/editor/PreviewDrawable;->m_IsAnimating:Z

    if-nez v5, :cond_0

    .line 153
    :goto_0
    return-void

    .line 77
    :cond_0
    const/4 v0, 0x0

    .line 78
    .local v0, "continueAnimation":Z
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 79
    .local v6, "time":J
    iget-wide v8, p0, Lcom/oneplus/gallery/editor/PreviewDrawable;->m_RotateAnimationStartTime:J

    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-lez v5, :cond_4

    .line 81
    iget-wide v8, p0, Lcom/oneplus/gallery/editor/PreviewDrawable;->m_RotateAnimationStartTime:J

    sub-long v2, v6, v8

    .line 82
    .local v2, "duration":J
    const-wide/16 v8, 0xc8

    cmp-long v5, v2, v8

    if-gez v5, :cond_a

    .line 84
    long-to-float v5, v2

    const/high16 v8, 0x43480000    # 200.0f

    div-float v4, v5, v8

    .line 85
    .local v4, "progress":F
    sget-object v5, Lcom/oneplus/gallery/editor/PreviewDrawable;->INTERPOLATOR_ROTATE:Landroid/animation/TimeInterpolator;

    if-eqz v5, :cond_1

    .line 86
    sget-object v5, Lcom/oneplus/gallery/editor/PreviewDrawable;->INTERPOLATOR_ROTATE:Landroid/animation/TimeInterpolator;

    invoke-interface {v5, v4}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v4

    .line 87
    :cond_1
    iget v5, p0, Lcom/oneplus/gallery/editor/PreviewDrawable;->m_TargetOrientation:I

    iget v8, p0, Lcom/oneplus/gallery/editor/PreviewDrawable;->m_StartOrientation:I

    sub-int v1, v5, v8

    .line 88
    .local v1, "orientationDiff":I
    const/16 v5, 0xb4

    if-le v1, v5, :cond_9

    .line 89
    add-int/lit16 v1, v1, -0x168

    .line 92
    :cond_2
    :goto_1
    iget v5, p0, Lcom/oneplus/gallery/editor/PreviewDrawable;->m_StartOrientation:I

    int-to-float v5, v5

    int-to-float v8, v1

    mul-float/2addr v8, v4

    add-float/2addr v5, v8

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, p0, Lcom/oneplus/gallery/editor/PreviewDrawable;->m_CurrentOrientation:I

    .line 93
    iget v5, p0, Lcom/oneplus/gallery/editor/PreviewDrawable;->m_CurrentOrientation:I

    if-gez v5, :cond_3

    .line 94
    iget v5, p0, Lcom/oneplus/gallery/editor/PreviewDrawable;->m_CurrentOrientation:I

    add-int/lit16 v5, v5, 0x168

    iput v5, p0, Lcom/oneplus/gallery/editor/PreviewDrawable;->m_CurrentOrientation:I

    .line 95
    :cond_3
    const/4 v0, 0x1

    .line 110
    .end local v1    # "orientationDiff":I
    .end local v2    # "duration":J
    .end local v4    # "progress":F
    :cond_4
    :goto_2
    iget-wide v8, p0, Lcom/oneplus/gallery/editor/PreviewDrawable;->m_FlipXAnimationStartTime:J

    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-lez v5, :cond_6

    .line 112
    iget-wide v8, p0, Lcom/oneplus/gallery/editor/PreviewDrawable;->m_FlipXAnimationStartTime:J

    sub-long v2, v6, v8

    .line 113
    .restart local v2    # "duration":J
    const-wide/16 v8, 0xc8

    cmp-long v5, v2, v8

    if-gez v5, :cond_b

    .line 115
    long-to-float v5, v2

    const/high16 v8, 0x43480000    # 200.0f

    div-float/2addr v5, v8

    iput v5, p0, Lcom/oneplus/gallery/editor/PreviewDrawable;->m_FlipXProgress:F

    .line 116
    sget-object v5, Lcom/oneplus/gallery/editor/PreviewDrawable;->INTERPOLATOR_FLIP:Landroid/animation/TimeInterpolator;

    if-eqz v5, :cond_5

    .line 117
    sget-object v5, Lcom/oneplus/gallery/editor/PreviewDrawable;->INTERPOLATOR_FLIP:Landroid/animation/TimeInterpolator;

    iget v8, p0, Lcom/oneplus/gallery/editor/PreviewDrawable;->m_FlipXProgress:F

    invoke-interface {v5, v8}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v5

    iput v5, p0, Lcom/oneplus/gallery/editor/PreviewDrawable;->m_FlipXProgress:F

    .line 118
    :cond_5
    const/4 v0, 0x1

    .line 128
    .end local v2    # "duration":J
    :cond_6
    :goto_3
    iget-wide v8, p0, Lcom/oneplus/gallery/editor/PreviewDrawable;->m_FlipYAnimationStartTime:J

    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-lez v5, :cond_8

    .line 130
    iget-wide v8, p0, Lcom/oneplus/gallery/editor/PreviewDrawable;->m_FlipYAnimationStartTime:J

    sub-long v2, v6, v8

    .line 131
    .restart local v2    # "duration":J
    const-wide/16 v8, 0xc8

    cmp-long v5, v2, v8

    if-gez v5, :cond_c

    .line 133
    long-to-float v5, v2

    const/high16 v8, 0x43480000    # 200.0f

    div-float/2addr v5, v8

    iput v5, p0, Lcom/oneplus/gallery/editor/PreviewDrawable;->m_FlipYProgress:F

    .line 134
    sget-object v5, Lcom/oneplus/gallery/editor/PreviewDrawable;->INTERPOLATOR_FLIP:Landroid/animation/TimeInterpolator;

    if-eqz v5, :cond_7

    .line 135
    sget-object v5, Lcom/oneplus/gallery/editor/PreviewDrawable;->INTERPOLATOR_FLIP:Landroid/animation/TimeInterpolator;

    iget v8, p0, Lcom/oneplus/gallery/editor/PreviewDrawable;->m_FlipYProgress:F

    invoke-interface {v5, v8}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v5

    iput v5, p0, Lcom/oneplus/gallery/editor/PreviewDrawable;->m_FlipYProgress:F

    .line 136
    :cond_7
    const/4 v0, 0x1

    .line 146
    .end local v2    # "duration":J
    :cond_8
    :goto_4
    if-eqz v0, :cond_d

    .line 147
    iget-object v5, p0, Lcom/oneplus/gallery/editor/PreviewDrawable;->m_AnimationRunnable:Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0xa

    add-long/2addr v8, v10

    invoke-virtual {p0, v5, v8, v9}, Lcom/oneplus/gallery/editor/PreviewDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 152
    :goto_5
    invoke-virtual {p0}, Lcom/oneplus/gallery/editor/PreviewDrawable;->invalidateSelf()V

    goto/16 :goto_0

    .line 90
    .restart local v1    # "orientationDiff":I
    .restart local v2    # "duration":J
    .restart local v4    # "progress":F
    :cond_9
    const/16 v5, -0xb4

    if-ge v1, v5, :cond_2

    .line 91
    add-int/lit16 v1, v1, 0x168

    goto :goto_1

    .line 99
    .end local v1    # "orientationDiff":I
    .end local v4    # "progress":F
    :cond_a
    iget v5, p0, Lcom/oneplus/gallery/editor/PreviewDrawable;->m_TargetOrientation:I

    iput v5, p0, Lcom/oneplus/gallery/editor/PreviewDrawable;->m_CurrentOrientation:I

    .line 100
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/oneplus/gallery/editor/PreviewDrawable;->m_RotateAnimationStartTime:J

    .line 101
    iget-object v5, p0, Lcom/oneplus/gallery/editor/PreviewDrawable;->m_RotateEndAction:Ljava/lang/Runnable;

    if-eqz v5, :cond_4

    .line 103
    iget-object v5, p0, Lcom/oneplus/gallery/editor/PreviewDrawable;->m_RotateEndAction:Ljava/lang/Runnable;

    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    .line 104
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/oneplus/gallery/editor/PreviewDrawable;->m_RotateEndAction:Ljava/lang/Runnable;

    goto :goto_2

    .line 122
    :cond_b
    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, p0, Lcom/oneplus/gallery/editor/PreviewDrawable;->m_FlipXProgress:F

    .line 123
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/oneplus/gallery/editor/PreviewDrawable;->m_FlipXAnimationStartTime:J

    goto :goto_3

    .line 140
    :cond_c
    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, p0, Lcom/oneplus/gallery/editor/PreviewDrawable;->m_FlipYProgress:F

    .line 141
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/oneplus/gallery/editor/PreviewDrawable;->m_FlipYAnimationStartTime:J

    goto :goto_4

    .line 149
    .end local v2    # "duration":J
    :cond_d
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/oneplus/gallery/editor/PreviewDrawable;->m_IsAnimating:Z

    goto :goto_5
.end method

.method private startAnimation()V
    .locals 6

    .prologue
    .line 440
    iget-boolean v0, p0, Lcom/oneplus/gallery/editor/PreviewDrawable;->m_IsAnimating:Z

    if-nez v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/oneplus/gallery/editor/PreviewDrawable;->m_AnimationRunnable:Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0xa

    add-long/2addr v2, v4

    invoke-virtual {p0, v0, v2, v3}, Lcom/oneplus/gallery/editor/PreviewDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 443
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/gallery/editor/PreviewDrawable;->m_IsAnimating:Z

    .line 445
    :cond_0
    return-void
.end method

.method private stopAnimation()V
    .locals 1

    .prologue
    .line 451
    iget-boolean v0, p0, Lcom/oneplus/gallery/editor/PreviewDrawable;->m_IsAnimating:Z

    if-eqz v0, :cond_0

    .line 454
    iget-object v0, p0, Lcom/oneplus/gallery/editor/PreviewDrawable;->m_AnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/editor/PreviewDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 455
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/gallery/editor/PreviewDrawable;->m_IsAnimating:Z

    .line 458
    iget-object v0, p0, Lcom/oneplus/gallery/editor/PreviewDrawable;->m_RotateEndAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/oneplus/gallery/editor/PreviewDrawable;->m_RotateEndAction:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 461
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/gallery/editor/PreviewDrawable;->m_RotateEndAction:Ljava/lang/Runnable;

    .line 464
    :cond_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 36
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/editor/PreviewDrawable;->m_PreviewBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v30, v0

    if-nez v30, :cond_0

    .line 240
    :goto_0
    return-void

    .line 165
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery/editor/PreviewDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 166
    .local v6, "bounds":Landroid/graphics/Rect;
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery/editor/PreviewDrawable;->getIntrinsicWidth()I

    move-result v13

    .line 167
    .local v13, "previewWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery/editor/PreviewDrawable;->getIntrinsicHeight()I

    move-result v12

    .line 168
    .local v12, "previewHeight":I
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v30

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    int-to-float v0, v13

    move/from16 v31, v0

    div-float v17, v30, v31

    .line 169
    .local v17, "ratioX":F
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v30

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    int-to-float v0, v12

    move/from16 v31, v0

    div-float v18, v30, v31

    .line 170
    .local v18, "ratioY":F
    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(FF)F

    move-result v16

    .line 171
    .local v16, "ratio":F
    int-to-float v0, v13

    move/from16 v30, v0

    mul-float v30, v30, v16

    move/from16 v0, v30

    float-to-int v13, v0

    .line 172
    int-to-float v0, v12

    move/from16 v30, v0

    mul-float v30, v30, v16

    move/from16 v0, v30

    float-to-int v12, v0

    .line 175
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/gallery/editor/PreviewDrawable;->m_CurrentOrientation:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-double v0, v0

    move-wide/from16 v30, v0

    const-wide v32, 0x4066800000000000L    # 180.0

    div-double v30, v30, v32

    const-wide v32, 0x400921fb54442d18L    # Math.PI

    mul-double v14, v30, v32

    .line 176
    .local v14, "rad":D
    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v30

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->abs(D)D

    move-result-wide v24

    .line 177
    .local v24, "sin":D
    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v30

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    .line 180
    .local v10, "cos":D
    sub-double v30, v24, v10

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->abs(D)D

    move-result-wide v30

    const-wide v32, 0x3f50624dd2f1a9fcL    # 0.001

    cmpl-double v30, v30, v32

    if-lez v30, :cond_2

    .line 182
    int-to-double v0, v13

    move-wide/from16 v30, v0

    mul-double v30, v30, v10

    int-to-double v0, v12

    move-wide/from16 v32, v0

    mul-double v32, v32, v24

    sub-double v30, v30, v32

    mul-double v32, v10, v10

    mul-double v34, v24, v24

    sub-double v32, v32, v34

    div-double v30, v30, v32

    move-wide/from16 v0, v30

    double-to-float v0, v0

    move/from16 v28, v0

    .line 183
    .local v28, "targetBitmapWidth":F
    int-to-double v0, v13

    move-wide/from16 v30, v0

    mul-double v30, v30, v24

    int-to-double v0, v12

    move-wide/from16 v32, v0

    mul-double v32, v32, v10

    sub-double v30, v30, v32

    mul-double v32, v24, v24

    mul-double v34, v10, v10

    sub-double v32, v32, v34

    div-double v30, v30, v32

    move-wide/from16 v0, v30

    double-to-float v0, v0

    move/from16 v23, v0

    .line 193
    .local v23, "targetBitmapHeight":F
    :goto_1
    iget v0, v6, Landroid/graphics/Rect;->left:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    sub-float v31, v31, v28

    const/high16 v32, 0x40000000    # 2.0f

    div-float v31, v31, v32

    add-float v30, v30, v31

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v26, v0

    .line 194
    .local v26, "targetBitmapLeft":I
    iget v0, v6, Landroid/graphics/Rect;->top:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    sub-float v31, v31, v23

    const/high16 v32, 0x40000000    # 2.0f

    div-float v31, v31, v32

    add-float v30, v30, v31

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v27, v0

    .line 197
    .local v27, "targetBitmapTop":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v19

    .line 201
    .local v19, "saveCount":I
    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v30, v0

    const/high16 v31, 0x40000000    # 2.0f

    div-float v31, v28, v31

    add-float v7, v30, v31

    .line 202
    .local v7, "centerX":F
    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v30, v0

    const/high16 v31, 0x40000000    # 2.0f

    div-float v31, v23, v31

    add-float v8, v30, v31

    .line 205
    .local v8, "centerY":F
    const/high16 v30, 0x3f800000    # 1.0f

    :try_start_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/gallery/editor/PreviewDrawable;->m_FlipXProgress:F

    move/from16 v31, v0

    sub-float v30, v30, v31

    invoke-static/range {v30 .. v30}, Ljava/lang/Math;->abs(F)F

    move-result v30

    move/from16 v0, v30

    float-to-double v0, v0

    move-wide/from16 v30, v0

    const-wide v32, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v30, v30, v32

    if-gez v30, :cond_4

    .line 206
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oneplus/gallery/editor/PreviewDrawable;->m_TargetFlipX:Z

    move/from16 v30, v0

    if-eqz v30, :cond_3

    const/16 v30, -0x1

    :goto_2
    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v20, v0

    .line 211
    .local v20, "scaleX":F
    :goto_3
    const/high16 v30, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/gallery/editor/PreviewDrawable;->m_FlipYProgress:F

    move/from16 v31, v0

    sub-float v30, v30, v31

    invoke-static/range {v30 .. v30}, Ljava/lang/Math;->abs(F)F

    move-result v30

    move/from16 v0, v30

    float-to-double v0, v0

    move-wide/from16 v30, v0

    const-wide v32, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v30, v30, v32

    if-gez v30, :cond_7

    .line 212
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oneplus/gallery/editor/PreviewDrawable;->m_TargetFlipY:Z

    move/from16 v30, v0

    if-eqz v30, :cond_6

    const/16 v30, -0x1

    :goto_4
    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v21, v0

    .line 217
    .local v21, "scaleY":F
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/editor/PreviewDrawable;->m_Matrix:Landroid/graphics/Matrix;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/graphics/Matrix;->reset()V

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/editor/PreviewDrawable;->m_Matrix:Landroid/graphics/Matrix;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2, v7, v8}, Landroid/graphics/Matrix;->preScale(FFFF)Z

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/editor/PreviewDrawable;->m_Matrix:Landroid/graphics/Matrix;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/gallery/editor/PreviewDrawable;->m_CurrentOrientation:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move-object/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v0, v1, v7, v8}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/editor/PreviewDrawable;->m_Matrix:Landroid/graphics/Matrix;

    move-object/from16 v30, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/editor/PreviewDrawable;->m_SourceBitmapBounds:Landroid/graphics/Rect;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    const/16 v32, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/editor/PreviewDrawable;->m_PreviewBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/editor/PreviewDrawable;->m_PreviewBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v34

    invoke-virtual/range {v30 .. v34}, Landroid/graphics/Rect;->set(IIII)V

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/editor/PreviewDrawable;->m_TargetBitmapBounds:Landroid/graphics/RectF;

    move-object/from16 v30, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v31, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v32, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v33, v0

    add-float v33, v33, v28

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v34, v0

    add-float v34, v34, v23

    invoke-virtual/range {v30 .. v34}, Landroid/graphics/RectF;->set(FFFF)V

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/editor/PreviewDrawable;->m_Paint:Landroid/graphics/Paint;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/editor/PreviewDrawable;->m_ColorFilter:Landroid/graphics/ColorFilter;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/editor/PreviewDrawable;->m_PreviewBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/editor/PreviewDrawable;->m_SourceBitmapBounds:Landroid/graphics/Rect;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/editor/PreviewDrawable;->m_TargetBitmapBounds:Landroid/graphics/RectF;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/editor/PreviewDrawable;->m_Paint:Landroid/graphics/Paint;

    move-object/from16 v33, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    move-object/from16 v3, v32

    move-object/from16 v4, v33

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/editor/PreviewDrawable;->m_Paint:Landroid/graphics/Paint;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/editor/PreviewDrawable;->m_OverlayBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v30, v0

    if-eqz v30, :cond_1

    .line 232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/editor/PreviewDrawable;->m_SourceBitmapBounds:Landroid/graphics/Rect;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    const/16 v32, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/editor/PreviewDrawable;->m_OverlayBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/editor/PreviewDrawable;->m_OverlayBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v34

    invoke-virtual/range {v30 .. v34}, Landroid/graphics/Rect;->set(IIII)V

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/editor/PreviewDrawable;->m_OverlayBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/editor/PreviewDrawable;->m_SourceBitmapBounds:Landroid/graphics/Rect;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/editor/PreviewDrawable;->m_TargetBitmapBounds:Landroid/graphics/RectF;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/editor/PreviewDrawable;->m_Paint:Landroid/graphics/Paint;

    move-object/from16 v33, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    move-object/from16 v3, v32

    move-object/from16 v4, v33

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    :cond_1
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_0

    .line 187
    .end local v7    # "centerX":F
    .end local v8    # "centerY":F
    .end local v19    # "saveCount":I
    .end local v20    # "scaleX":F
    .end local v21    # "scaleY":F
    .end local v23    # "targetBitmapHeight":F
    .end local v26    # "targetBitmapLeft":I
    .end local v27    # "targetBitmapTop":I
    .end local v28    # "targetBitmapWidth":F
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/editor/PreviewDrawable;->m_PreviewBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v30

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/editor/PreviewDrawable;->m_PreviewBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    div-float v22, v30, v31

    .line 188
    .local v22, "sideRatio":F
    int-to-float v0, v13

    move/from16 v30, v0

    const/high16 v31, 0x3f800000    # 1.0f

    add-float v31, v31, v22

    div-float v9, v30, v31

    .line 189
    .local v9, "h":F
    mul-float v29, v9, v22

    .line 190
    .local v29, "w":F
    mul-float v30, v29, v29

    mul-float v31, v29, v29

    add-float v30, v30, v31

    move/from16 v0, v30

    float-to-double v0, v0

    move-wide/from16 v30, v0

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v30

    move-wide/from16 v0, v30

    double-to-float v0, v0

    move/from16 v28, v0

    .line 191
    .restart local v28    # "targetBitmapWidth":F
    mul-float v30, v9, v9

    mul-float v31, v9, v9

    add-float v30, v30, v31

    move/from16 v0, v30

    float-to-double v0, v0

    move-wide/from16 v30, v0

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v30

    move-wide/from16 v0, v30

    double-to-float v0, v0

    move/from16 v23, v0

    .restart local v23    # "targetBitmapHeight":F
    goto/16 :goto_1

    .line 206
    .end local v9    # "h":F
    .end local v22    # "sideRatio":F
    .end local v29    # "w":F
    .restart local v7    # "centerX":F
    .restart local v8    # "centerY":F
    .restart local v19    # "saveCount":I
    .restart local v26    # "targetBitmapLeft":I
    .restart local v27    # "targetBitmapTop":I
    :cond_3
    const/16 v30, 0x1

    goto/16 :goto_2

    .line 207
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oneplus/gallery/editor/PreviewDrawable;->m_TargetFlipX:Z

    move/from16 v30, v0

    if-eqz v30, :cond_5

    .line 208
    const/high16 v30, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/gallery/editor/PreviewDrawable;->m_FlipXProgress:F

    move/from16 v31, v0

    sub-float v30, v30, v31

    const/high16 v31, 0x40000000    # 2.0f

    mul-float v30, v30, v31

    const/high16 v31, 0x3f800000    # 1.0f

    sub-float v20, v30, v31

    .restart local v20    # "scaleX":F
    goto/16 :goto_3

    .line 210
    .end local v20    # "scaleX":F
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/gallery/editor/PreviewDrawable;->m_FlipXProgress:F

    move/from16 v30, v0

    const/high16 v31, 0x40000000    # 2.0f

    mul-float v30, v30, v31

    const/high16 v31, 0x3f800000    # 1.0f

    sub-float v20, v30, v31

    .restart local v20    # "scaleX":F
    goto/16 :goto_3

    .line 212
    :cond_6
    const/16 v30, 0x1

    goto/16 :goto_4

    .line 213
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oneplus/gallery/editor/PreviewDrawable;->m_TargetFlipY:Z

    move/from16 v30, v0

    if-eqz v30, :cond_8

    .line 214
    const/high16 v30, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/gallery/editor/PreviewDrawable;->m_FlipYProgress:F

    move/from16 v31, v0

    sub-float v30, v30, v31

    const/high16 v31, 0x40000000    # 2.0f

    mul-float v30, v30, v31

    const/high16 v31, 0x3f800000    # 1.0f

    sub-float v21, v30, v31

    .restart local v21    # "scaleY":F
    goto/16 :goto_5

    .line 216
    .end local v21    # "scaleY":F
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/gallery/editor/PreviewDrawable;->m_FlipYProgress:F

    move/from16 v30, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/high16 v31, 0x40000000    # 2.0f

    mul-float v30, v30, v31

    const/high16 v31, 0x3f800000    # 1.0f

    sub-float v21, v30, v31

    .restart local v21    # "scaleY":F
    goto/16 :goto_5

    .line 238
    .end local v20    # "scaleX":F
    .end local v21    # "scaleY":F
    :catchall_0
    move-exception v30

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    throw v30
.end method

.method public flipX(ZZLjava/lang/Runnable;)V
    .locals 2
    .param p1, "flip"    # Z
    .param p2, "animate"    # Z
    .param p3, "endAction"    # Ljava/lang/Runnable;

    .prologue
    .line 251
    iget-boolean v0, p0, Lcom/oneplus/gallery/editor/PreviewDrawable;->m_TargetFlipX:Z

    if-ne v0, p1, :cond_0

    .line 267
    :goto_0
    return-void

    .line 253
    :cond_0
    if-eqz p2, :cond_1

    .line 255
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oneplus/gallery/editor/PreviewDrawable;->m_FlipXAnimationStartTime:J

    .line 256
    iput-boolean p1, p0, Lcom/oneplus/gallery/editor/PreviewDrawable;->m_TargetFlipX:Z

    .line 257
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/gallery/editor/PreviewDrawable;->m_FlipXProgress:F

    .line 258
    invoke-direct {p0}, Lcom/oneplus/gallery/editor/PreviewDrawable;->startAnimation()V

    goto :goto_0

    .line 262
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/gallery/editor/PreviewDrawable;->stopAnimation()V

    .line 263
    iput-boolean p1, p0, Lcom/oneplus/gallery/editor/PreviewDrawable;->m_TargetFlipX:Z

    .line 264
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/oneplus/gallery/editor/PreviewDrawable;->m_FlipXProgress:F

    .line 265
    invoke-virtual {p0}, Lcom/oneplus/gallery/editor/PreviewDrawable;->invalidateSelf()V

    goto :goto_0
.end method

.method public flipY(ZZLjava/lang/Runnable;)V
    .locals 2
    .param p1, "flip"    # Z
    .param p2, "animate"    # Z
    .param p3, "endAction"    # Ljava/lang/Runnable;

    .prologue
    .line 278
    iget-boolean v0, p0, Lcom/oneplus/gallery/editor/PreviewDrawable;->m_TargetFlipY:Z

    if-ne v0, p1, :cond_0

    .line 294
    :goto_0
    return-void

    .line 280
    :cond_0
    if-eqz p2, :cond_1

    .line 282
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oneplus/gallery/editor/PreviewDrawable;->m_FlipYAnimationStartTime:J

    .line 283
    iput-boolean p1, p0, Lcom/oneplus/gallery/editor/PreviewDrawable;->m_TargetFlipY:Z

    .line 284
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/gallery/editor/PreviewDrawable;->m_FlipYProgress:F

    .line 285
    invoke-direct {p0}, Lcom/oneplus/gallery/editor/PreviewDrawable;->startAnimation()V

    goto :goto_0

    .line 289
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/gallery/editor/PreviewDrawable;->stopAnimation()V

    .line 290
    iput-boolean p1, p0, Lcom/oneplus/gallery/editor/PreviewDrawable;->m_TargetFlipY:Z

    .line 291
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/oneplus/gallery/editor/PreviewDrawable;->m_FlipYProgress:F

    .line 292
    invoke-virtual {p0}, Lcom/oneplus/gallery/editor/PreviewDrawable;->invalidateSelf()V

    goto :goto_0
.end method

.method public getIntrinsicHeight()I
    .locals 8

    .prologue
    .line 301
    iget-object v2, p0, Lcom/oneplus/gallery/editor/PreviewDrawable;->m_PreviewBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_0

    .line 302
    const/4 v2, 0x0

    .line 314
    :goto_0
    return v2

    .line 303
    :cond_0
    iget v2, p0, Lcom/oneplus/gallery/editor/PreviewDrawable;->m_CurrentOrientation:I

    sparse-switch v2, :sswitch_data_0

    .line 313
    iget v2, p0, Lcom/oneplus/gallery/editor/PreviewDrawable;->m_CurrentOrientation:I

    int-to-double v2, v2

    const-wide v4, 0x4066800000000000L    # 180.0

    div-double/2addr v2, v4

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double v0, v2, v4

    .line 314
    .local v0, "rad":D
    iget-object v2, p0, Lcom/oneplus/gallery/editor/PreviewDrawable;->m_PreviewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-double v2, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    iget-object v4, p0, Lcom/oneplus/gallery/editor/PreviewDrawable;->m_PreviewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-double v4, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    goto :goto_0

    .line 307
    .end local v0    # "rad":D
    :sswitch_0
    iget-object v2, p0, Lcom/oneplus/gallery/editor/PreviewDrawable;->m_PreviewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    goto :goto_0

    .line 310
    :sswitch_1
    iget-object v2, p0, Lcom/oneplus/gallery/editor/PreviewDrawable;->m_PreviewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    goto :goto_0

    .line 303
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_0
        0x10e -> :sswitch_1
    .end sparse-switch
.end method

.method public getIntrinsicWidth()I
    .locals 8

    .prologue
    .line 324
    iget-object v2, p0, Lcom/oneplus/gallery/editor/PreviewDrawable;->m_PreviewBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_0

    .line 325
    const/4 v2, 0x0

    .line 337
    :goto_0
    return v2

    .line 326
    :cond_0
    iget v2, p0, Lcom/oneplus/gallery/editor/PreviewDrawable;->m_CurrentOrientation:I

    sparse-switch v2, :sswitch_data_0

    .line 336
    iget v2, p0, Lcom/oneplus/gallery/editor/PreviewDrawable;->m_CurrentOrientation:I

    int-to-double v2, v2

    const-wide v4, 0x4066800000000000L    # 180.0

    div-double/2addr v2, v4

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double v0, v2, v4

    .line 337
    .local v0, "rad":D
    iget-object v2, p0, Lcom/oneplus/gallery/editor/PreviewDrawable;->m_PreviewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-double v2, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    iget-object v4, p0, Lcom/oneplus/gallery/editor/PreviewDrawable;->m_PreviewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-double v4, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    goto :goto_0

    .line 330
    .end local v0    # "rad":D
    :sswitch_0
    iget-object v2, p0, Lcom/oneplus/gallery/editor/PreviewDrawable;->m_PreviewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    goto :goto_0

    .line 333
    :sswitch_1
    iget-object v2, p0, Lcom/oneplus/gallery/editor/PreviewDrawable;->m_PreviewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    goto :goto_0

    .line 326
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_0
        0x10e -> :sswitch_1
    .end sparse-switch
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 347
    const/4 v0, -0x3

    return v0
.end method

.method public rotateTo(IZ)V
    .locals 2
    .param p1, "orientation"    # I
    .param p2, "animate"    # Z

    .prologue
    .line 358
    rem-int/lit16 p1, p1, 0x168

    .line 359
    if-gez p1, :cond_0

    .line 360
    add-int/lit16 p1, p1, 0x168

    .line 361
    :cond_0
    iget v0, p0, Lcom/oneplus/gallery/editor/PreviewDrawable;->m_TargetOrientation:I

    if-ne p1, v0, :cond_1

    iget v0, p0, Lcom/oneplus/gallery/editor/PreviewDrawable;->m_CurrentOrientation:I

    if-ne p1, v0, :cond_1

    .line 378
    :goto_0
    return-void

    .line 363
    :cond_1
    if-eqz p2, :cond_2

    .line 365
    iget v0, p0, Lcom/oneplus/gallery/editor/PreviewDrawable;->m_CurrentOrientation:I

    iput v0, p0, Lcom/oneplus/gallery/editor/PreviewDrawable;->m_StartOrientation:I

    .line 366
    iput p1, p0, Lcom/oneplus/gallery/editor/PreviewDrawable;->m_TargetOrientation:I

    .line 367
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oneplus/gallery/editor/PreviewDrawable;->m_RotateAnimationStartTime:J

    .line 368
    invoke-direct {p0}, Lcom/oneplus/gallery/editor/PreviewDrawable;->startAnimation()V

    goto :goto_0

    .line 372
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/gallery/editor/PreviewDrawable;->stopAnimation()V

    .line 373
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oneplus/gallery/editor/PreviewDrawable;->m_RotateAnimationStartTime:J

    .line 374
    iput p1, p0, Lcom/oneplus/gallery/editor/PreviewDrawable;->m_TargetOrientation:I

    .line 375
    iput p1, p0, Lcom/oneplus/gallery/editor/PreviewDrawable;->m_CurrentOrientation:I

    .line 376
    invoke-virtual {p0}, Lcom/oneplus/gallery/editor/PreviewDrawable;->invalidateSelf()V

    goto :goto_0
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 385
    iget-object v0, p0, Lcom/oneplus/gallery/editor/PreviewDrawable;->m_Paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 386
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 403
    if-nez p1, :cond_0

    .line 405
    iput-object v4, p0, Lcom/oneplus/gallery/editor/PreviewDrawable;->m_PreviewBitmap:Landroid/graphics/Bitmap;

    .line 419
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/gallery/editor/PreviewDrawable;->invalidateSelf()V

    .line 420
    return-void

    .line 409
    :cond_0
    iget-object v1, p0, Lcom/oneplus/gallery/editor/PreviewDrawable;->m_PreviewBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/gallery/editor/PreviewDrawable;->m_PreviewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/oneplus/gallery/editor/PreviewDrawable;->m_PreviewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 412
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/gallery/editor/PreviewDrawable;->m_PreviewBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 415
    :cond_2
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/oneplus/gallery/editor/PreviewDrawable;->m_PreviewBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 416
    .local v0, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v0, p1, v3, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 393
    iput-object p1, p0, Lcom/oneplus/gallery/editor/PreviewDrawable;->m_ColorFilter:Landroid/graphics/ColorFilter;

    .line 394
    return-void
.end method

.method public setOverlay(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 429
    iget-object v0, p0, Lcom/oneplus/gallery/editor/PreviewDrawable;->m_OverlayBitmap:Landroid/graphics/Bitmap;

    if-eq v0, p1, :cond_0

    .line 431
    iput-object p1, p0, Lcom/oneplus/gallery/editor/PreviewDrawable;->m_OverlayBitmap:Landroid/graphics/Bitmap;

    .line 432
    invoke-virtual {p0}, Lcom/oneplus/gallery/editor/PreviewDrawable;->invalidateSelf()V

    .line 434
    :cond_0
    return-void
.end method
