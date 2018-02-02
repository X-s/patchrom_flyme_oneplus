.class public Lcom/oneplus/widget/ImageViewer;
.super Landroid/view/View;
.source "ImageViewer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/widget/ImageViewer$1;,
        Lcom/oneplus/widget/ImageViewer$2;,
        Lcom/oneplus/widget/ImageViewer$GestureCallback;,
        Lcom/oneplus/widget/ImageViewer$ImageBoundsType;,
        Lcom/oneplus/widget/ImageViewer$StateCallback;
    }
.end annotation


# static fields
.field private static final AUTO_SCROLLING_ACCELERATION_BOUNCING:F = 80000.0f

.field private static final AUTO_SCROLLING_ACCELERATION_DEFAULT:F = 14000.0f

.field private static final BOUNCING_RATIO:F = 0.5f

.field private static final DEBUG_FRAME_COLOR_ADJUSTED_BOUNDS:I = -0x10000

.field private static final DEBUG_FRAME_COLOR_CURRENT_BOUNDS:I = -0xff0100

.field private static final DEBUG_FRAME_COLOR_TARGET_BOUNDS:I = -0x100

.field private static final DEBUG_FRAME_WIDTH:F = 6.0f

.field protected static final DRAW_DEBUG_FRAMES:Z = false

.field private static final DURATION_IMAGE_BOUNDS_ANIMATION:J = 0x15eL

.field public static final GESTURE_FLAG_ALL:I = 0x7fffffff

.field public static final GESTURE_FLAG_DOUBLE_TAP:I = 0x1

.field public static final GESTURE_FLAG_SCALE:I = 0x8

.field public static final GESTURE_FLAG_SCROLL:I = 0x2

.field public static final GESTURE_FLAG_SCROLL_BY_MULTI_TOUCH:I = 0x4

.field private static final IMAGE_BOUNDS_ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final MIN_AUTO_SCROLLING_SPEED_VALUE:F = 10.0f

.field protected static final PRINT_DEBUG_LOGS:Z = false

.field private static final SCALING_SPEED_RATIO:F = 1.0f


# instance fields
.field protected final TAG:Ljava/lang/String;

.field private final m_AdjustedUserImageBounds:Landroid/graphics/Rect;

.field private final m_AnimateImageBoundsRunnable:Ljava/lang/Runnable;

.field private final m_AutoScrollingRunnable:Ljava/lang/Runnable;

.field private m_AutoScrollingSpeedX:F

.field private m_AutoScrollingSpeedXRatio:F

.field private m_AutoScrollingSpeedY:F

.field private m_AutoScrollingSpeedYRatio:F

.field private final m_CurrentImageBounds:Landroid/graphics/Rect;

.field private m_DebugFramePaint:Landroid/graphics/Paint;

.field private m_DisabledGestureFlags:I

.field private m_FitToView:Z

.field private final m_GestureCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/widget/ImageViewer$GestureCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final m_GestureDetector:Landroid/view/GestureDetector;

.field private m_ImageBoundsAnimationStartTime:J

.field private m_ImageBoundsType:Lcom/oneplus/widget/ImageViewer$ImageBoundsType;

.field private m_ImageDrawable:Landroid/graphics/drawable/Drawable;

.field private m_ImageHeight:I

.field private m_ImageWidth:I

.field private m_IsAutoScrollingBouncingBottom:Z

.field private m_IsAutoScrollingBouncingLeft:Z

.field private m_IsAutoScrollingBouncingRight:Z

.field private m_IsAutoScrollingBouncingTop:Z

.field private m_IsAutoScrollingScheduled:Z

.field private m_IsAutoScrollingX:Z

.field private m_IsAutoScrollingY:Z

.field private m_IsBouncingEnabled:Z

.field private m_IsImageBoundsAnimationEnabled:Z

.field private m_IsImageBoundsAnimationScheduled:Z

.field private m_IsMovingByUser:Z

.field private m_IsScalingByUser:Z

.field private m_IsTouchEventCancelled:Z

.field private m_LastAutoScrollingTime:J

.field private m_MaxRatio:F

.field private m_OnTouchListener:Landroid/view/View$OnTouchListener;

.field private m_OverlayDrawable:Landroid/graphics/drawable/Drawable;

.field private final m_ScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private final m_SourceImageBounds:Landroid/graphics/Rect;

.field private final m_StateCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/widget/ImageViewer$StateCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final m_TargetImageBounds:Landroid/graphics/Rect;


# direct methods
.method static synthetic -set0(Lcom/oneplus/widget/ImageViewer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/widget/ImageViewer;->m_IsAutoScrollingScheduled:Z

    return p1
.end method

.method static synthetic -set1(Lcom/oneplus/widget/ImageViewer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/widget/ImageViewer;->m_IsImageBoundsAnimationScheduled:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/oneplus/widget/ImageViewer;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/widget/ImageViewer;->animateImageBounds()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/oneplus/widget/ImageViewer;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/widget/ImageViewer;->autoScrolling()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 69
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/oneplus/widget/ImageViewer;->IMAGE_BOUNDS_ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 349
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    invoke-virtual {p0}, Lcom/oneplus/widget/ImageViewer;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/widget/ImageViewer;->TAG:Ljava/lang/String;

    .line 82
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/widget/ImageViewer;->m_AdjustedUserImageBounds:Landroid/graphics/Rect;

    .line 87
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/widget/ImageViewer;->m_CurrentImageBounds:Landroid/graphics/Rect;

    .line 90
    iput-boolean v2, p0, Lcom/oneplus/widget/ImageViewer;->m_FitToView:Z

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/widget/ImageViewer;->m_GestureCallbacks:Ljava/util/List;

    .line 94
    sget-object v0, Lcom/oneplus/widget/ImageViewer$ImageBoundsType;->FIT_TO_VIEW:Lcom/oneplus/widget/ImageViewer$ImageBoundsType;

    iput-object v0, p0, Lcom/oneplus/widget/ImageViewer;->m_ImageBoundsType:Lcom/oneplus/widget/ImageViewer$ImageBoundsType;

    .line 105
    iput-boolean v1, p0, Lcom/oneplus/widget/ImageViewer;->m_IsBouncingEnabled:Z

    .line 106
    iput-boolean v1, p0, Lcom/oneplus/widget/ImageViewer;->m_IsImageBoundsAnimationEnabled:Z

    .line 112
    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Lcom/oneplus/widget/ImageViewer;->m_MaxRatio:F

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/widget/ImageViewer;->m_StateCallbacks:Ljava/util/List;

    .line 117
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/widget/ImageViewer;->m_SourceImageBounds:Landroid/graphics/Rect;

    .line 118
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/widget/ImageViewer;->m_TargetImageBounds:Landroid/graphics/Rect;

    .line 122
    new-instance v0, Lcom/oneplus/widget/ImageViewer$1;

    invoke-direct {v0, p0}, Lcom/oneplus/widget/ImageViewer$1;-><init>(Lcom/oneplus/widget/ImageViewer;)V

    iput-object v0, p0, Lcom/oneplus/widget/ImageViewer;->m_AnimateImageBoundsRunnable:Ljava/lang/Runnable;

    .line 131
    new-instance v0, Lcom/oneplus/widget/ImageViewer$2;

    invoke-direct {v0, p0}, Lcom/oneplus/widget/ImageViewer$2;-><init>(Lcom/oneplus/widget/ImageViewer;)V

    iput-object v0, p0, Lcom/oneplus/widget/ImageViewer;->m_AutoScrollingRunnable:Ljava/lang/Runnable;

    .line 352
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/oneplus/widget/ImageViewer$3;

    invoke-direct {v1, p0}, Lcom/oneplus/widget/ImageViewer$3;-><init>(Lcom/oneplus/widget/ImageViewer;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/oneplus/widget/ImageViewer;->m_GestureDetector:Landroid/view/GestureDetector;

    .line 388
    iget-object v0, p0, Lcom/oneplus/widget/ImageViewer;->m_GestureDetector:Landroid/view/GestureDetector;

    new-instance v1, Lcom/oneplus/widget/ImageViewer$4;

    invoke-direct {v1, p0}, Lcom/oneplus/widget/ImageViewer$4;-><init>(Lcom/oneplus/widget/ImageViewer;)V

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 409
    new-instance v0, Landroid/view/ScaleGestureDetector;

    new-instance v1, Lcom/oneplus/widget/ImageViewer$5;

    invoke-direct {v1, p0}, Lcom/oneplus/widget/ImageViewer$5;-><init>(Lcom/oneplus/widget/ImageViewer;)V

    invoke-direct {v0, p1, v1}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/oneplus/widget/ImageViewer;->m_ScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 444
    iget-object v0, p0, Lcom/oneplus/widget/ImageViewer;->m_ScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, v2}, Landroid/view/ScaleGestureDetector;->setQuickScaleEnabled(Z)V

    .line 346
    return-void
.end method

.method private animateImageBounds()V
    .locals 14

    .prologue
    const-wide/16 v6, 0x15e

    const-wide/16 v12, 0x0

    .line 472
    iget-wide v2, p0, Lcom/oneplus/widget/ImageViewer;->m_ImageBoundsAnimationStartTime:J

    cmp-long v1, v2, v12

    if-gtz v1, :cond_0

    .line 473
    return-void

    .line 476
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v10, p0, Lcom/oneplus/widget/ImageViewer;->m_ImageBoundsAnimationStartTime:J

    sub-long v4, v2, v10

    .line 477
    .local v4, "duration":J
    cmp-long v1, v4, v6

    if-ltz v1, :cond_3

    const/4 v0, 0x1

    .line 478
    .local v0, "completed":Z
    :goto_0
    if-nez v0, :cond_1

    .line 480
    sget-object v1, Lcom/oneplus/widget/ImageViewer;->IMAGE_BOUNDS_ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    long-to-float v2, v4

    const/high16 v3, 0x43af0000    # 350.0f

    div-float/2addr v2, v3

    invoke-interface {v1, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v8

    .line 481
    .local v8, "progress":F
    iget-object v1, p0, Lcom/oneplus/widget/ImageViewer;->m_CurrentImageBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/oneplus/widget/ImageViewer;->m_SourceImageBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oneplus/widget/ImageViewer;->m_TargetImageBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v9, p0, Lcom/oneplus/widget/ImageViewer;->m_SourceImageBounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v9

    int-to-float v3, v3

    mul-float/2addr v3, v8

    add-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 482
    iget-object v1, p0, Lcom/oneplus/widget/ImageViewer;->m_CurrentImageBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/oneplus/widget/ImageViewer;->m_SourceImageBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oneplus/widget/ImageViewer;->m_TargetImageBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v9, p0, Lcom/oneplus/widget/ImageViewer;->m_SourceImageBounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v9

    int-to-float v3, v3

    mul-float/2addr v3, v8

    add-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 483
    iget-object v1, p0, Lcom/oneplus/widget/ImageViewer;->m_CurrentImageBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/oneplus/widget/ImageViewer;->m_SourceImageBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oneplus/widget/ImageViewer;->m_TargetImageBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v9, p0, Lcom/oneplus/widget/ImageViewer;->m_SourceImageBounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v9

    int-to-float v3, v3

    mul-float/2addr v3, v8

    add-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 484
    iget-object v1, p0, Lcom/oneplus/widget/ImageViewer;->m_CurrentImageBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/oneplus/widget/ImageViewer;->m_SourceImageBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oneplus/widget/ImageViewer;->m_TargetImageBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v9, p0, Lcom/oneplus/widget/ImageViewer;->m_SourceImageBounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v9

    int-to-float v3, v3

    mul-float/2addr v3, v8

    add-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 485
    iget-object v1, p0, Lcom/oneplus/widget/ImageViewer;->m_CurrentImageBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v1}, Lcom/oneplus/widget/ImageViewer;->changeCurrentImageBounds(Landroid/graphics/Rect;)V

    .line 486
    iget-wide v2, p0, Lcom/oneplus/widget/ImageViewer;->m_ImageBoundsAnimationStartTime:J

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/oneplus/widget/ImageViewer;->onImageBoundsAnimate(JJJF)V

    .line 487
    iget-object v1, p0, Lcom/oneplus/widget/ImageViewer;->m_CurrentImageBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/oneplus/widget/ImageViewer;->m_TargetImageBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 491
    const/4 v0, 0x1

    .line 500
    .end local v0    # "completed":Z
    .end local v8    # "progress":F
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 504
    iput-wide v12, p0, Lcom/oneplus/widget/ImageViewer;->m_ImageBoundsAnimationStartTime:J

    .line 505
    iget-object v1, p0, Lcom/oneplus/widget/ImageViewer;->m_CurrentImageBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/oneplus/widget/ImageViewer;->m_TargetImageBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 506
    invoke-virtual {p0}, Lcom/oneplus/widget/ImageViewer;->onImageBoundsAnimationCompleted()V

    .line 508
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/widget/ImageViewer;->invalidate()V

    .line 469
    return-void

    .line 477
    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 493
    .restart local v0    # "completed":Z
    .restart local v8    # "progress":F
    :cond_4
    invoke-direct {p0}, Lcom/oneplus/widget/ImageViewer;->scheduleImageBoundsAnimation()Z

    move-result v1

    if-nez v1, :cond_1

    .line 497
    const/4 v0, 0x1

    .local v0, "completed":Z
    goto :goto_1
.end method

.method private autoScrolling()V
    .locals 18

    .prologue
    .line 516
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/oneplus/widget/ImageViewer;->m_LastAutoScrollingTime:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-lez v14, :cond_d

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/oneplus/widget/ImageViewer;->m_IsAutoScrollingX:Z

    if-nez v14, :cond_0

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/oneplus/widget/ImageViewer;->m_IsAutoScrollingY:Z

    if-eqz v14, :cond_d

    .line 520
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/widget/ImageViewer;->getPaddingLeft()I

    move-result v11

    .line 521
    .local v11, "viewLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/widget/ImageViewer;->getPaddingTop()I

    move-result v13

    .line 522
    .local v13, "viewTop":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/widget/ImageViewer;->getWidth()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/widget/ImageViewer;->getPaddingRight()I

    move-result v15

    sub-int v12, v14, v15

    .line 523
    .local v12, "viewRight":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/widget/ImageViewer;->getHeight()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/widget/ImageViewer;->getPaddingBottom()I

    move-result v15

    sub-int v10, v14, v15

    .line 526
    .local v10, "viewBottom":I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 527
    .local v4, "currentTime":J
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/oneplus/widget/ImageViewer;->m_LastAutoScrollingTime:J

    sub-long v6, v4, v14

    .line 528
    .local v6, "durationMillis":J
    long-to-float v14, v6

    const/high16 v15, 0x447a0000    # 1000.0f

    div-float v3, v14, v15

    .line 533
    .local v3, "durationSeconds":F
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/oneplus/widget/ImageViewer;->m_IsAutoScrollingX:Z

    if-nez v14, :cond_1

    .line 534
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/oneplus/widget/ImageViewer;->m_AutoScrollingSpeedX:F

    .line 535
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/oneplus/widget/ImageViewer;->m_IsAutoScrollingY:Z

    if-nez v14, :cond_2

    .line 536
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/oneplus/widget/ImageViewer;->m_AutoScrollingSpeedY:F

    .line 539
    :cond_2
    const/4 v8, 0x0

    .line 540
    .local v8, "offsetX":F
    const/4 v9, 0x0

    .line 541
    .local v9, "offsetY":F
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/oneplus/widget/ImageViewer;->m_IsAutoScrollingX:Z

    if-eqz v14, :cond_4

    .line 543
    const/4 v2, 0x0

    .line 544
    .local v2, "acceleration":F
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/oneplus/widget/ImageViewer;->m_IsAutoScrollingBouncingLeft:Z

    if-eqz v14, :cond_f

    .line 546
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/widget/ImageViewer;->m_TargetImageBounds:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/widget/ImageViewer;->m_AdjustedUserImageBounds:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->left:I

    if-le v14, v15, :cond_e

    .line 548
    const v2, -0x3863c000    # -80000.0f

    .line 549
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/widget/ImageViewer;->m_TargetImageBounds:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->left:I

    add-int v15, v11, v12

    div-int/lit8 v15, v15, 0x2

    if-lt v14, v15, :cond_3

    move-object/from16 v0, p0

    iget v14, v0, Lcom/oneplus/widget/ImageViewer;->m_AutoScrollingSpeedX:F

    const/4 v15, 0x0

    cmpl-float v14, v14, v15

    if-lez v14, :cond_3

    .line 553
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/oneplus/widget/ImageViewer;->m_AutoScrollingSpeedX:F

    .line 600
    :cond_3
    :goto_0
    move-object/from16 v0, p0

    iget v14, v0, Lcom/oneplus/widget/ImageViewer;->m_AutoScrollingSpeedX:F

    mul-float/2addr v14, v3

    const/high16 v15, 0x3f000000    # 0.5f

    mul-float/2addr v15, v2

    mul-float/2addr v15, v3

    mul-float/2addr v15, v3

    add-float v8, v14, v15

    .line 603
    move-object/from16 v0, p0

    iget v14, v0, Lcom/oneplus/widget/ImageViewer;->m_AutoScrollingSpeedX:F

    mul-float v15, v2, v3

    add-float/2addr v14, v15

    move-object/from16 v0, p0

    iput v14, v0, Lcom/oneplus/widget/ImageViewer;->m_AutoScrollingSpeedX:F

    .line 604
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/oneplus/widget/ImageViewer;->m_IsAutoScrollingBouncingLeft:Z

    if-nez v14, :cond_4

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/oneplus/widget/ImageViewer;->m_IsAutoScrollingBouncingRight:Z

    if-eqz v14, :cond_14

    .line 620
    .end local v2    # "acceleration":F
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/oneplus/widget/ImageViewer;->m_IsAutoScrollingY:Z

    if-eqz v14, :cond_6

    .line 622
    const/4 v2, 0x0

    .line 623
    .restart local v2    # "acceleration":F
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/oneplus/widget/ImageViewer;->m_IsAutoScrollingBouncingTop:Z

    if-eqz v14, :cond_17

    .line 625
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/widget/ImageViewer;->m_TargetImageBounds:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/widget/ImageViewer;->m_AdjustedUserImageBounds:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->top:I

    if-le v14, v15, :cond_16

    .line 627
    const v2, -0x3863c000    # -80000.0f

    .line 628
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/widget/ImageViewer;->m_TargetImageBounds:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->top:I

    add-int v15, v13, v10

    div-int/lit8 v15, v15, 0x2

    if-lt v14, v15, :cond_5

    move-object/from16 v0, p0

    iget v14, v0, Lcom/oneplus/widget/ImageViewer;->m_AutoScrollingSpeedY:F

    const/4 v15, 0x0

    cmpl-float v14, v14, v15

    if-lez v14, :cond_5

    .line 632
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/oneplus/widget/ImageViewer;->m_AutoScrollingSpeedY:F

    .line 680
    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget v14, v0, Lcom/oneplus/widget/ImageViewer;->m_AutoScrollingSpeedY:F

    mul-float/2addr v14, v3

    const/high16 v15, 0x3f000000    # 0.5f

    mul-float/2addr v15, v2

    mul-float/2addr v15, v3

    mul-float/2addr v15, v3

    add-float v9, v14, v15

    .line 683
    move-object/from16 v0, p0

    iget v14, v0, Lcom/oneplus/widget/ImageViewer;->m_AutoScrollingSpeedY:F

    mul-float v15, v2, v3

    add-float/2addr v14, v15

    move-object/from16 v0, p0

    iput v14, v0, Lcom/oneplus/widget/ImageViewer;->m_AutoScrollingSpeedY:F

    .line 684
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/oneplus/widget/ImageViewer;->m_IsAutoScrollingBouncingTop:Z

    if-nez v14, :cond_6

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/oneplus/widget/ImageViewer;->m_IsAutoScrollingBouncingBottom:Z

    if-eqz v14, :cond_1c

    .line 702
    .end local v2    # "acceleration":F
    :cond_6
    :goto_3
    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/oneplus/widget/ImageViewer;->m_LastAutoScrollingTime:J

    .line 703
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/widget/ImageViewer;->m_TargetImageBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/widget/ImageViewer;->m_CurrentImageBounds:Landroid/graphics/Rect;

    invoke-virtual {v14, v15}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 704
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/widget/ImageViewer;->m_TargetImageBounds:Landroid/graphics/Rect;

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v15

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v16

    invoke-virtual/range {v14 .. v16}, Landroid/graphics/Rect;->offset(II)V

    .line 705
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/oneplus/widget/ImageViewer;->m_IsAutoScrollingBouncingLeft:Z

    if-eqz v14, :cond_1e

    .line 707
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/widget/ImageViewer;->m_TargetImageBounds:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/widget/ImageViewer;->m_AdjustedUserImageBounds:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->left:I

    if-gt v14, v15, :cond_7

    .line 709
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/widget/ImageViewer;->m_TargetImageBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/widget/ImageViewer;->m_AdjustedUserImageBounds:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/widget/ImageViewer;->m_TargetImageBounds:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/graphics/Rect;->offset(II)V

    .line 710
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/oneplus/widget/ImageViewer;->m_IsAutoScrollingX:Z

    .line 725
    :cond_7
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/oneplus/widget/ImageViewer;->m_IsAutoScrollingBouncingTop:Z

    if-eqz v14, :cond_1f

    .line 727
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/widget/ImageViewer;->m_TargetImageBounds:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/widget/ImageViewer;->m_AdjustedUserImageBounds:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->top:I

    if-gt v14, v15, :cond_8

    .line 729
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/widget/ImageViewer;->m_TargetImageBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/widget/ImageViewer;->m_AdjustedUserImageBounds:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/widget/ImageViewer;->m_TargetImageBounds:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v0, v15}, Landroid/graphics/Rect;->offset(II)V

    .line 730
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/oneplus/widget/ImageViewer;->m_IsAutoScrollingY:Z

    .line 747
    :cond_8
    :goto_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/widget/ImageViewer;->m_TargetImageBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/widget/ImageViewer;->m_AdjustedUserImageBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/oneplus/widget/ImageViewer;->calculateAdjustedUserImageBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 748
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/oneplus/widget/ImageViewer;->m_IsAutoScrollingBouncingLeft:Z

    if-nez v14, :cond_9

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/oneplus/widget/ImageViewer;->m_IsAutoScrollingBouncingRight:Z

    if-eqz v14, :cond_20

    .line 755
    :cond_9
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/oneplus/widget/ImageViewer;->m_IsAutoScrollingBouncingTop:Z

    if-nez v14, :cond_a

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/oneplus/widget/ImageViewer;->m_IsAutoScrollingBouncingBottom:Z

    if-eqz v14, :cond_22

    .line 764
    :cond_a
    :goto_7
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/widget/ImageViewer;->scheduleAutoScrolling()Z

    move-result v14

    if-nez v14, :cond_b

    .line 766
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/oneplus/widget/ImageViewer;->m_IsAutoScrollingX:Z

    .line 767
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/oneplus/widget/ImageViewer;->m_IsAutoScrollingY:Z

    .line 771
    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/widget/ImageViewer;->moveImageBoundsByUser()V

    .line 772
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/oneplus/widget/ImageViewer;->m_IsAutoScrollingX:Z

    if-nez v14, :cond_c

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/oneplus/widget/ImageViewer;->m_IsAutoScrollingY:Z

    if-eqz v14, :cond_24

    .line 513
    :cond_c
    :goto_8
    return-void

    .line 517
    .end local v3    # "durationSeconds":F
    .end local v4    # "currentTime":J
    .end local v6    # "durationMillis":J
    .end local v8    # "offsetX":F
    .end local v9    # "offsetY":F
    .end local v10    # "viewBottom":I
    .end local v11    # "viewLeft":I
    .end local v12    # "viewRight":I
    .end local v13    # "viewTop":I
    :cond_d
    return-void

    .line 562
    .restart local v2    # "acceleration":F
    .restart local v3    # "durationSeconds":F
    .restart local v4    # "currentTime":J
    .restart local v6    # "durationMillis":J
    .restart local v8    # "offsetX":F
    .restart local v9    # "offsetY":F
    .restart local v10    # "viewBottom":I
    .restart local v11    # "viewLeft":I
    .restart local v12    # "viewRight":I
    .restart local v13    # "viewTop":I
    :cond_e
    const/4 v8, 0x0

    .line 563
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/oneplus/widget/ImageViewer;->m_IsAutoScrollingBouncingLeft:Z

    .line 564
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/oneplus/widget/ImageViewer;->m_IsAutoScrollingX:Z

    goto/16 :goto_0

    .line 567
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/oneplus/widget/ImageViewer;->m_IsAutoScrollingBouncingRight:Z

    if-eqz v14, :cond_11

    .line 569
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/widget/ImageViewer;->m_TargetImageBounds:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/widget/ImageViewer;->m_AdjustedUserImageBounds:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->right:I

    if-ge v14, v15, :cond_10

    .line 571
    const v2, 0x479c4000    # 80000.0f

    .line 572
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/widget/ImageViewer;->m_TargetImageBounds:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->right:I

    add-int v15, v11, v12

    div-int/lit8 v15, v15, 0x2

    if-gt v14, v15, :cond_3

    move-object/from16 v0, p0

    iget v14, v0, Lcom/oneplus/widget/ImageViewer;->m_AutoScrollingSpeedX:F

    const/4 v15, 0x0

    cmpg-float v14, v14, v15

    if-gez v14, :cond_3

    .line 576
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/oneplus/widget/ImageViewer;->m_AutoScrollingSpeedX:F

    goto/16 :goto_0

    .line 585
    :cond_10
    const/4 v8, 0x0

    .line 586
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/oneplus/widget/ImageViewer;->m_IsAutoScrollingBouncingRight:Z

    .line 587
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/oneplus/widget/ImageViewer;->m_IsAutoScrollingX:Z

    goto/16 :goto_0

    .line 590
    :cond_11
    move-object/from16 v0, p0

    iget v14, v0, Lcom/oneplus/widget/ImageViewer;->m_AutoScrollingSpeedX:F

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    const/high16 v15, 0x41200000    # 10.0f

    cmpg-float v14, v14, v15

    if-gez v14, :cond_12

    .line 594
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/oneplus/widget/ImageViewer;->m_IsAutoScrollingX:Z

    goto/16 :goto_0

    .line 596
    :cond_12
    move-object/from16 v0, p0

    iget v14, v0, Lcom/oneplus/widget/ImageViewer;->m_AutoScrollingSpeedX:F

    const/4 v15, 0x0

    cmpl-float v14, v14, v15

    if-lez v14, :cond_13

    .line 597
    move-object/from16 v0, p0

    iget v14, v0, Lcom/oneplus/widget/ImageViewer;->m_AutoScrollingSpeedXRatio:F

    const v15, -0x39a54000    # -14000.0f

    mul-float v2, v15, v14

    goto/16 :goto_0

    .line 599
    :cond_13
    move-object/from16 v0, p0

    iget v14, v0, Lcom/oneplus/widget/ImageViewer;->m_AutoScrollingSpeedXRatio:F

    const v15, 0x465ac000    # 14000.0f

    mul-float v2, v15, v14

    goto/16 :goto_0

    .line 606
    :cond_14
    const/4 v14, 0x0

    cmpg-float v14, v2, v14

    if-gez v14, :cond_15

    move-object/from16 v0, p0

    iget v14, v0, Lcom/oneplus/widget/ImageViewer;->m_AutoScrollingSpeedX:F

    const/4 v15, 0x0

    cmpg-float v14, v14, v15

    if-gtz v14, :cond_15

    .line 608
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/oneplus/widget/ImageViewer;->m_IsAutoScrollingX:Z

    .line 609
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/oneplus/widget/ImageViewer;->m_AutoScrollingSpeedX:F

    goto/16 :goto_1

    .line 611
    :cond_15
    const/4 v14, 0x0

    cmpl-float v14, v2, v14

    if-lez v14, :cond_4

    move-object/from16 v0, p0

    iget v14, v0, Lcom/oneplus/widget/ImageViewer;->m_AutoScrollingSpeedX:F

    const/4 v15, 0x0

    cmpl-float v14, v14, v15

    if-ltz v14, :cond_4

    .line 613
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/oneplus/widget/ImageViewer;->m_IsAutoScrollingX:Z

    .line 614
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/oneplus/widget/ImageViewer;->m_AutoScrollingSpeedX:F

    goto/16 :goto_1

    .line 641
    :cond_16
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/widget/ImageViewer;->m_AdjustedUserImageBounds:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/widget/ImageViewer;->m_CurrentImageBounds:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->top:I

    sub-int/2addr v14, v15

    int-to-float v9, v14

    .line 642
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/oneplus/widget/ImageViewer;->m_AutoScrollingSpeedY:F

    .line 643
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/oneplus/widget/ImageViewer;->m_IsAutoScrollingBouncingTop:Z

    .line 644
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/oneplus/widget/ImageViewer;->m_IsAutoScrollingY:Z

    goto/16 :goto_2

    .line 647
    :cond_17
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/oneplus/widget/ImageViewer;->m_IsAutoScrollingBouncingBottom:Z

    if-eqz v14, :cond_19

    .line 649
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/widget/ImageViewer;->m_TargetImageBounds:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/widget/ImageViewer;->m_AdjustedUserImageBounds:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->bottom:I

    if-ge v14, v15, :cond_18

    .line 651
    const v2, 0x479c4000    # 80000.0f

    .line 652
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/widget/ImageViewer;->m_TargetImageBounds:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->bottom:I

    add-int v15, v13, v10

    div-int/lit8 v15, v15, 0x2

    if-gt v14, v15, :cond_5

    move-object/from16 v0, p0

    iget v14, v0, Lcom/oneplus/widget/ImageViewer;->m_AutoScrollingSpeedY:F

    const/4 v15, 0x0

    cmpg-float v14, v14, v15

    if-gez v14, :cond_5

    .line 656
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/oneplus/widget/ImageViewer;->m_AutoScrollingSpeedY:F

    goto/16 :goto_2

    .line 665
    :cond_18
    const/4 v9, 0x0

    .line 666
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/oneplus/widget/ImageViewer;->m_IsAutoScrollingBouncingBottom:Z

    .line 667
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/oneplus/widget/ImageViewer;->m_IsAutoScrollingY:Z

    goto/16 :goto_2

    .line 670
    :cond_19
    move-object/from16 v0, p0

    iget v14, v0, Lcom/oneplus/widget/ImageViewer;->m_AutoScrollingSpeedY:F

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    const/high16 v15, 0x41200000    # 10.0f

    cmpg-float v14, v14, v15

    if-gez v14, :cond_1a

    .line 674
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/oneplus/widget/ImageViewer;->m_IsAutoScrollingY:Z

    goto/16 :goto_2

    .line 676
    :cond_1a
    move-object/from16 v0, p0

    iget v14, v0, Lcom/oneplus/widget/ImageViewer;->m_AutoScrollingSpeedY:F

    const/4 v15, 0x0

    cmpl-float v14, v14, v15

    if-lez v14, :cond_1b

    .line 677
    move-object/from16 v0, p0

    iget v14, v0, Lcom/oneplus/widget/ImageViewer;->m_AutoScrollingSpeedYRatio:F

    const v15, -0x39a54000    # -14000.0f

    mul-float v2, v15, v14

    goto/16 :goto_2

    .line 679
    :cond_1b
    move-object/from16 v0, p0

    iget v14, v0, Lcom/oneplus/widget/ImageViewer;->m_AutoScrollingSpeedYRatio:F

    const v15, 0x465ac000    # 14000.0f

    mul-float v2, v15, v14

    goto/16 :goto_2

    .line 686
    :cond_1c
    const/4 v14, 0x0

    cmpg-float v14, v2, v14

    if-gez v14, :cond_1d

    move-object/from16 v0, p0

    iget v14, v0, Lcom/oneplus/widget/ImageViewer;->m_AutoScrollingSpeedY:F

    const/4 v15, 0x0

    cmpg-float v14, v14, v15

    if-gtz v14, :cond_1d

    .line 688
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/oneplus/widget/ImageViewer;->m_IsAutoScrollingY:Z

    .line 689
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/oneplus/widget/ImageViewer;->m_AutoScrollingSpeedY:F

    goto/16 :goto_3

    .line 691
    :cond_1d
    const/4 v14, 0x0

    cmpl-float v14, v2, v14

    if-lez v14, :cond_6

    move-object/from16 v0, p0

    iget v14, v0, Lcom/oneplus/widget/ImageViewer;->m_AutoScrollingSpeedY:F

    const/4 v15, 0x0

    cmpl-float v14, v14, v15

    if-ltz v14, :cond_6

    .line 693
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/oneplus/widget/ImageViewer;->m_IsAutoScrollingY:Z

    .line 694
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/oneplus/widget/ImageViewer;->m_AutoScrollingSpeedY:F

    goto/16 :goto_3

    .line 715
    .end local v2    # "acceleration":F
    :cond_1e
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/oneplus/widget/ImageViewer;->m_IsAutoScrollingBouncingRight:Z

    if-eqz v14, :cond_7

    .line 717
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/widget/ImageViewer;->m_TargetImageBounds:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/widget/ImageViewer;->m_AdjustedUserImageBounds:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->right:I

    if-lt v14, v15, :cond_7

    .line 719
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/widget/ImageViewer;->m_TargetImageBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/widget/ImageViewer;->m_AdjustedUserImageBounds:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/widget/ImageViewer;->m_TargetImageBounds:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/graphics/Rect;->offset(II)V

    .line 720
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/oneplus/widget/ImageViewer;->m_IsAutoScrollingX:Z

    goto/16 :goto_4

    .line 735
    :cond_1f
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/oneplus/widget/ImageViewer;->m_IsAutoScrollingBouncingBottom:Z

    if-eqz v14, :cond_8

    .line 737
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/widget/ImageViewer;->m_TargetImageBounds:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/widget/ImageViewer;->m_AdjustedUserImageBounds:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->bottom:I

    if-lt v14, v15, :cond_8

    .line 739
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/widget/ImageViewer;->m_TargetImageBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/widget/ImageViewer;->m_AdjustedUserImageBounds:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/widget/ImageViewer;->m_TargetImageBounds:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v0, v15}, Landroid/graphics/Rect;->offset(II)V

    .line 740
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/oneplus/widget/ImageViewer;->m_IsAutoScrollingY:Z

    goto/16 :goto_5

    .line 750
    :cond_20
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/widget/ImageViewer;->m_TargetImageBounds:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/widget/ImageViewer;->m_AdjustedUserImageBounds:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->left:I

    if-le v14, v15, :cond_21

    .line 751
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/oneplus/widget/ImageViewer;->m_IsAutoScrollingBouncingLeft:Z

    goto/16 :goto_6

    .line 752
    :cond_21
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/widget/ImageViewer;->m_TargetImageBounds:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/widget/ImageViewer;->m_AdjustedUserImageBounds:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->right:I

    if-ge v14, v15, :cond_9

    .line 753
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/oneplus/widget/ImageViewer;->m_IsAutoScrollingBouncingRight:Z

    goto/16 :goto_6

    .line 757
    :cond_22
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/widget/ImageViewer;->m_TargetImageBounds:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/widget/ImageViewer;->m_AdjustedUserImageBounds:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->top:I

    if-le v14, v15, :cond_23

    .line 758
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/oneplus/widget/ImageViewer;->m_IsAutoScrollingBouncingTop:Z

    goto/16 :goto_7

    .line 759
    :cond_23
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/widget/ImageViewer;->m_TargetImageBounds:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/widget/ImageViewer;->m_AdjustedUserImageBounds:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->bottom:I

    if-ge v14, v15, :cond_a

    .line 760
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/oneplus/widget/ImageViewer;->m_IsAutoScrollingBouncingBottom:Z

    goto/16 :goto_7

    .line 776
    :cond_24
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/oneplus/widget/ImageViewer;->m_AutoScrollingSpeedX:F

    .line 777
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/oneplus/widget/ImageViewer;->m_AutoScrollingSpeedY:F

    .line 778
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/oneplus/widget/ImageViewer;->m_IsAutoScrollingX:Z

    .line 779
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/oneplus/widget/ImageViewer;->m_IsAutoScrollingY:Z

    .line 780
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/oneplus/widget/ImageViewer;->m_LastAutoScrollingTime:J

    .line 781
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/widget/ImageViewer;->m_SourceImageBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/widget/ImageViewer;->m_CurrentImageBounds:Landroid/graphics/Rect;

    invoke-virtual {v14, v15}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 782
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/widget/ImageViewer;->m_TargetImageBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/widget/ImageViewer;->m_AdjustedUserImageBounds:Landroid/graphics/Rect;

    invoke-virtual {v14, v15}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 783
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/widget/ImageViewer;->onImageAutoScrollingCompleted()V

    .line 784
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/widget/ImageViewer;->startImageBoundsAnimation()V

    goto/16 :goto_8
.end method

.method private calculateAdjustedUserImageBounds(IILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 7
    .param p1, "viewWidth"    # I
    .param p2, "viewHeight"    # I
    .param p3, "currentBounds"    # Landroid/graphics/Rect;
    .param p4, "result"    # Landroid/graphics/Rect;

    .prologue
    const/high16 v1, 0x40000000    # 2.0f

    .line 796
    int-to-float v0, p1

    div-float v3, v0, v1

    int-to-float v0, p2

    div-float v4, v0, v1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/oneplus/widget/ImageViewer;->calculateAdjustedUserImageBounds(IIFFLandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 794
    return-void
.end method

.method private calculateAdjustedUserImageBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "currentBounds"    # Landroid/graphics/Rect;
    .param p2, "result"    # Landroid/graphics/Rect;

    .prologue
    .line 792
    invoke-virtual {p0}, Lcom/oneplus/widget/ImageViewer;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/oneplus/widget/ImageViewer;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/oneplus/widget/ImageViewer;->calculateAdjustedUserImageBounds(IILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 790
    return-void
.end method

.method private calculateFitToViewBounds(IIII)Landroid/graphics/Rect;
    .locals 6
    .param p1, "imageWidth"    # I
    .param p2, "imageHeight"    # I
    .param p3, "viewWidth"    # I
    .param p4, "viewHeight"    # I

    .prologue
    .line 913
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .local v5, "bounds":Landroid/graphics/Rect;
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 914
    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/widget/ImageViewer;->calculateFitToViewBounds(IIIILandroid/graphics/Rect;)V

    .line 915
    return-object v5
.end method

.method private changeCurrentImageBounds(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 1123
    iget v0, p1, Landroid/graphics/Rect;->left:I

    if-gez v0, :cond_0

    .line 1124
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 1130
    :cond_0
    iget-object v0, p0, Lcom/oneplus/widget/ImageViewer;->m_CurrentImageBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1131
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/oneplus/widget/ImageViewer;->onImageBoundsChanged(IIII)V

    .line 1121
    return-void
.end method

.method private changeImageBoundsType(Lcom/oneplus/widget/ImageViewer$ImageBoundsType;)V
    .locals 2
    .param p1, "type"    # Lcom/oneplus/widget/ImageViewer$ImageBoundsType;

    .prologue
    .line 1138
    iget-object v1, p0, Lcom/oneplus/widget/ImageViewer;->m_ImageBoundsType:Lcom/oneplus/widget/ImageViewer$ImageBoundsType;

    if-ne v1, p1, :cond_0

    .line 1139
    return-void

    .line 1142
    :cond_0
    iget-object v0, p0, Lcom/oneplus/widget/ImageViewer;->m_ImageBoundsType:Lcom/oneplus/widget/ImageViewer$ImageBoundsType;

    .line 1143
    .local v0, "oldType":Lcom/oneplus/widget/ImageViewer$ImageBoundsType;
    iput-object p1, p0, Lcom/oneplus/widget/ImageViewer;->m_ImageBoundsType:Lcom/oneplus/widget/ImageViewer$ImageBoundsType;

    .line 1144
    invoke-virtual {p0, v0, p1}, Lcom/oneplus/widget/ImageViewer;->onImageBoundsTypeChanged(Lcom/oneplus/widget/ImageViewer$ImageBoundsType;Lcom/oneplus/widget/ImageViewer$ImageBoundsType;)V

    .line 1136
    return-void
.end method

.method private completeUserMoving()Z
    .locals 11

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/4 v4, 0x0

    const/4 v10, 0x1

    .line 1252
    iget-boolean v0, p0, Lcom/oneplus/widget/ImageViewer;->m_IsMovingByUser:Z

    if-nez v0, :cond_0

    .line 1253
    return v4

    .line 1256
    :cond_0
    iput-boolean v4, p0, Lcom/oneplus/widget/ImageViewer;->m_IsMovingByUser:Z

    .line 1257
    iput-boolean v4, p0, Lcom/oneplus/widget/ImageViewer;->m_IsScalingByUser:Z

    .line 1260
    iget-object v0, p0, Lcom/oneplus/widget/ImageViewer;->m_ImageBoundsType:Lcom/oneplus/widget/ImageViewer$ImageBoundsType;

    sget-object v3, Lcom/oneplus/widget/ImageViewer$ImageBoundsType;->FIT_TO_VIEW:Lcom/oneplus/widget/ImageViewer$ImageBoundsType;

    if-ne v0, v3, :cond_1

    .line 1264
    invoke-virtual {p0}, Lcom/oneplus/widget/ImageViewer;->onUserImageMovingCompleted()V

    .line 1265
    invoke-direct {p0, v4, v10}, Lcom/oneplus/widget/ImageViewer;->refreshImageBounds(ZZ)V

    .line 1266
    return v10

    .line 1270
    :cond_1
    iget-wide v4, p0, Lcom/oneplus/widget/ImageViewer;->m_LastAutoScrollingTime:J

    const-wide/16 v8, 0x0

    cmp-long v0, v4, v8

    if-lez v0, :cond_2

    .line 1274
    invoke-virtual {p0}, Lcom/oneplus/widget/ImageViewer;->onUserImageMovingCompleted()V

    .line 1275
    return v10

    .line 1279
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/widget/ImageViewer;->getWidth()I

    move-result v1

    .line 1280
    .local v1, "viewWidth":I
    invoke-virtual {p0}, Lcom/oneplus/widget/ImageViewer;->getHeight()I

    move-result v2

    .line 1281
    .local v2, "viewHeight":I
    iget v0, p0, Lcom/oneplus/widget/ImageViewer;->m_ImageWidth:I

    iget v3, p0, Lcom/oneplus/widget/ImageViewer;->m_ImageHeight:I

    invoke-direct {p0, v0, v3, v1, v2}, Lcom/oneplus/widget/ImageViewer;->calculateFitToViewBounds(IIII)Landroid/graphics/Rect;

    move-result-object v7

    .line 1282
    .local v7, "fitToViewBounds":Landroid/graphics/Rect;
    int-to-float v0, v1

    div-float v3, v0, v6

    int-to-float v0, v2

    div-float v4, v0, v6

    iget-object v5, p0, Lcom/oneplus/widget/ImageViewer;->m_CurrentImageBounds:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/oneplus/widget/ImageViewer;->m_AdjustedUserImageBounds:Landroid/graphics/Rect;

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/oneplus/widget/ImageViewer;->calculateAdjustedUserImageBounds(IIFFLandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1283
    iget-object v0, p0, Lcom/oneplus/widget/ImageViewer;->m_TargetImageBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/oneplus/widget/ImageViewer;->m_AdjustedUserImageBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1284
    iget-object v0, p0, Lcom/oneplus/widget/ImageViewer;->m_TargetImageBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v7}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1288
    invoke-virtual {p0, v10}, Lcom/oneplus/widget/ImageViewer;->fitImageToView(Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1289
    return v10

    .line 1297
    :cond_3
    invoke-virtual {p0}, Lcom/oneplus/widget/ImageViewer;->onUserImageMovingCompleted()V

    .line 1300
    invoke-direct {p0}, Lcom/oneplus/widget/ImageViewer;->startImageBoundsAnimation()V

    .line 1303
    return v10
.end method

.method private getDisplayedImageCenter(Landroid/graphics/Rect;[II)V
    .locals 8
    .param p1, "imageBounds"    # Landroid/graphics/Rect;
    .param p2, "dst"    # [I
    .param p3, "dstIndex"    # I

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    .line 1453
    invoke-virtual {p0}, Lcom/oneplus/widget/ImageViewer;->getPaddingLeft()I

    move-result v5

    int-to-float v2, v5

    .line 1454
    .local v2, "left":F
    invoke-virtual {p0}, Lcom/oneplus/widget/ImageViewer;->getPaddingTop()I

    move-result v5

    int-to-float v4, v5

    .line 1455
    .local v4, "top":F
    invoke-virtual {p0}, Lcom/oneplus/widget/ImageViewer;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/oneplus/widget/ImageViewer;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v3, v5

    .line 1456
    .local v3, "right":F
    invoke-virtual {p0}, Lcom/oneplus/widget/ImageViewer;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Lcom/oneplus/widget/ImageViewer;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v0, v5

    .line 1457
    .local v0, "bottom":F
    add-int/lit8 v1, p3, 0x1

    .end local p3    # "dstIndex":I
    .local v1, "dstIndex":I
    add-float v5, v2, v3

    div-float/2addr v5, v7

    iget v6, p1, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    aput v5, p2, p3

    .line 1458
    add-float v5, v4, v0

    div-float/2addr v5, v7

    iget v6, p1, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    aput v5, p2, v1

    .line 1451
    return-void
.end method

.method private getImageScaleRatio(Landroid/graphics/Rect;)F
    .locals 4
    .param p1, "imageBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 1538
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1539
    const/4 v2, 0x0

    return v2

    .line 1540
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/oneplus/widget/ImageViewer;->m_ImageWidth:I

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 1541
    .local v0, "ratioX":F
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/oneplus/widget/ImageViewer;->m_ImageHeight:I

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 1542
    .local v1, "ratioY":F
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v2

    return v2
.end method

.method private moveImageBoundsByUser()V
    .locals 2

    .prologue
    .line 1730
    iget-object v0, p0, Lcom/oneplus/widget/ImageViewer;->m_SourceImageBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/oneplus/widget/ImageViewer;->m_TargetImageBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1731
    iget-object v0, p0, Lcom/oneplus/widget/ImageViewer;->m_TargetImageBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/oneplus/widget/ImageViewer;->changeCurrentImageBounds(Landroid/graphics/Rect;)V

    .line 1728
    return-void
.end method

.method private refreshImageBounds(ZZ)V
    .locals 13
    .param p1, "checkImageSize"    # Z
    .param p2, "animate"    # Z

    .prologue
    .line 2308
    iget-object v0, p0, Lcom/oneplus/widget/ImageViewer;->m_ImageDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 2309
    return-void

    .line 2310
    :cond_0
    iget-object v0, p0, Lcom/oneplus/widget/ImageViewer;->m_ImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 2311
    .local v1, "imageWidth":I
    iget-object v0, p0, Lcom/oneplus/widget/ImageViewer;->m_ImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 2312
    .local v2, "imageHeight":I
    iget v9, p0, Lcom/oneplus/widget/ImageViewer;->m_ImageWidth:I

    .line 2313
    .local v9, "prevImageWidth":I
    iget v8, p0, Lcom/oneplus/widget/ImageViewer;->m_ImageHeight:I

    .line 2314
    .local v8, "prevImageHeight":I
    iget v0, p0, Lcom/oneplus/widget/ImageViewer;->m_ImageWidth:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/oneplus/widget/ImageViewer;->m_ImageHeight:I

    if-ne v0, v2, :cond_1

    .line 2316
    if-eqz p1, :cond_2

    .line 2318
    invoke-virtual {p0}, Lcom/oneplus/widget/ImageViewer;->invalidate()V

    .line 2319
    return-void

    .line 2324
    :cond_1
    iput v1, p0, Lcom/oneplus/widget/ImageViewer;->m_ImageWidth:I

    .line 2325
    iput v2, p0, Lcom/oneplus/widget/ImageViewer;->m_ImageHeight:I

    .line 2326
    invoke-virtual {p0, v1, v2}, Lcom/oneplus/widget/ImageViewer;->onIntrinsicImageSizeChanged(II)V

    .line 2330
    :cond_2
    iget-object v0, p0, Lcom/oneplus/widget/ImageViewer;->m_ImageBoundsType:Lcom/oneplus/widget/ImageViewer$ImageBoundsType;

    sget-object v3, Lcom/oneplus/widget/ImageViewer$ImageBoundsType;->FIT_TO_VIEW:Lcom/oneplus/widget/ImageViewer$ImageBoundsType;

    if-ne v0, v3, :cond_6

    .line 2332
    invoke-virtual {p0}, Lcom/oneplus/widget/ImageViewer;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/oneplus/widget/ImageViewer;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/oneplus/widget/ImageViewer;->m_TargetImageBounds:Landroid/graphics/Rect;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/widget/ImageViewer;->calculateFitToViewBounds(IIIILandroid/graphics/Rect;)V

    .line 2333
    iget-object v0, p0, Lcom/oneplus/widget/ImageViewer;->m_TargetImageBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/oneplus/widget/ImageViewer;->m_AdjustedUserImageBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v3}, Lcom/oneplus/widget/ImageViewer;->calculateAdjustedUserImageBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 2334
    iget-object v0, p0, Lcom/oneplus/widget/ImageViewer;->m_TargetImageBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/oneplus/widget/ImageViewer;->m_AdjustedUserImageBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2336
    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/oneplus/widget/ImageViewer;->m_CurrentImageBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2346
    :cond_3
    invoke-virtual {p0}, Lcom/oneplus/widget/ImageViewer;->cancelImageBoundsAnimation()V

    .line 2347
    iget-object v0, p0, Lcom/oneplus/widget/ImageViewer;->m_TargetImageBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/oneplus/widget/ImageViewer;->changeCurrentImageBounds(Landroid/graphics/Rect;)V

    .line 2349
    :goto_0
    return-void

    .line 2340
    :cond_4
    invoke-direct {p0}, Lcom/oneplus/widget/ImageViewer;->startImageBoundsAnimation()V

    goto :goto_0

    .line 2353
    :cond_5
    iget-object v0, p0, Lcom/oneplus/widget/ImageViewer;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "refreshImageBounds() - Fit-to-view is not supported"

    invoke-static {v0, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2354
    sget-object v0, Lcom/oneplus/widget/ImageViewer$ImageBoundsType;->USER:Lcom/oneplus/widget/ImageViewer$ImageBoundsType;

    invoke-direct {p0, v0}, Lcom/oneplus/widget/ImageViewer;->changeImageBoundsType(Lcom/oneplus/widget/ImageViewer$ImageBoundsType;)V

    .line 2359
    :cond_6
    iget-object v0, p0, Lcom/oneplus/widget/ImageViewer;->m_TargetImageBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    .line 2360
    .local v6, "prevCenterX":I
    iget-object v0, p0, Lcom/oneplus/widget/ImageViewer;->m_TargetImageBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v7

    .line 2361
    .local v7, "prevCenterY":I
    if-lez v9, :cond_8

    iget-object v0, p0, Lcom/oneplus/widget/ImageViewer;->m_TargetImageBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    int-to-float v3, v9

    div-float v11, v0, v3

    .line 2362
    .local v11, "ratioX":F
    :goto_1
    if-lez v8, :cond_9

    iget-object v0, p0, Lcom/oneplus/widget/ImageViewer;->m_TargetImageBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    int-to-float v3, v8

    div-float v12, v0, v3

    .line 2363
    .local v12, "ratioY":F
    :goto_2
    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v10

    .line 2364
    .local v10, "ratio":F
    const/4 v0, 0x0

    cmpg-float v0, v10, v0

    if-gtz v0, :cond_a

    .line 2365
    const/high16 v10, 0x3f800000    # 1.0f

    .line 2368
    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/oneplus/widget/ImageViewer;->m_TargetImageBounds:Landroid/graphics/Rect;

    const/4 v3, 0x0

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 2369
    iget-object v0, p0, Lcom/oneplus/widget/ImageViewer;->m_TargetImageBounds:Landroid/graphics/Rect;

    const/4 v3, 0x0

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 2370
    iget-object v0, p0, Lcom/oneplus/widget/ImageViewer;->m_TargetImageBounds:Landroid/graphics/Rect;

    int-to-float v3, v1

    mul-float/2addr v3, v10

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 2371
    iget-object v0, p0, Lcom/oneplus/widget/ImageViewer;->m_TargetImageBounds:Landroid/graphics/Rect;

    int-to-float v3, v2

    mul-float/2addr v3, v10

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 2372
    iget-object v0, p0, Lcom/oneplus/widget/ImageViewer;->m_CurrentImageBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2373
    iget-object v0, p0, Lcom/oneplus/widget/ImageViewer;->m_TargetImageBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/oneplus/widget/ImageViewer;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lcom/oneplus/widget/ImageViewer;->m_TargetImageBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/oneplus/widget/ImageViewer;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    iget-object v5, p0, Lcom/oneplus/widget/ImageViewer;->m_TargetImageBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 2376
    :goto_4
    iget-object v0, p0, Lcom/oneplus/widget/ImageViewer;->m_TargetImageBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/oneplus/widget/ImageViewer;->m_AdjustedUserImageBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v3}, Lcom/oneplus/widget/ImageViewer;->calculateAdjustedUserImageBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 2379
    iget-boolean v0, p0, Lcom/oneplus/widget/ImageViewer;->m_IsMovingByUser:Z

    if-eqz v0, :cond_c

    .line 2383
    invoke-direct {p0}, Lcom/oneplus/widget/ImageViewer;->moveImageBoundsByUser()V

    .line 2305
    :goto_5
    return-void

    .line 2361
    .end local v10    # "ratio":F
    .end local v11    # "ratioX":F
    .end local v12    # "ratioY":F
    :cond_8
    const/high16 v11, 0x3f800000    # 1.0f

    .restart local v11    # "ratioX":F
    goto :goto_1

    .line 2362
    :cond_9
    const/high16 v12, 0x3f800000    # 1.0f

    goto :goto_2

    .line 2366
    .restart local v10    # "ratio":F
    .restart local v12    # "ratioY":F
    :cond_a
    iget v0, p0, Lcom/oneplus/widget/ImageViewer;->m_MaxRatio:F

    cmpl-float v0, v10, v0

    if-lez v0, :cond_7

    .line 2367
    iget v10, p0, Lcom/oneplus/widget/ImageViewer;->m_MaxRatio:F

    goto :goto_3

    .line 2375
    :cond_b
    iget-object v0, p0, Lcom/oneplus/widget/ImageViewer;->m_TargetImageBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/oneplus/widget/ImageViewer;->m_TargetImageBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    sub-int v3, v6, v3

    iget-object v4, p0, Lcom/oneplus/widget/ImageViewer;->m_TargetImageBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    sub-int v4, v7, v4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_4

    .line 2387
    :cond_c
    iget-object v0, p0, Lcom/oneplus/widget/ImageViewer;->m_TargetImageBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/oneplus/widget/ImageViewer;->m_AdjustedUserImageBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2388
    if-eqz p2, :cond_d

    .line 2392
    invoke-virtual {p0}, Lcom/oneplus/widget/ImageViewer;->cancelImageAutoScrolling()V

    .line 2393
    invoke-direct {p0}, Lcom/oneplus/widget/ImageViewer;->startImageBoundsAnimation()V

    goto :goto_5

    .line 2399
    :cond_d
    invoke-virtual {p0}, Lcom/oneplus/widget/ImageViewer;->cancelImageBoundsAnimation()V

    .line 2400
    invoke-virtual {p0}, Lcom/oneplus/widget/ImageViewer;->cancelImageAutoScrolling()V

    .line 2401
    iget-object v0, p0, Lcom/oneplus/widget/ImageViewer;->m_TargetImageBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/oneplus/widget/ImageViewer;->changeCurrentImageBounds(Landroid/graphics/Rect;)V

    goto :goto_5
.end method

.method private scheduleAutoScrolling()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2430
    iget-boolean v1, p0, Lcom/oneplus/widget/ImageViewer;->m_IsAutoScrollingScheduled:Z

    if-eqz v1, :cond_0

    .line 2431
    return v2

    .line 2432
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/widget/ImageViewer;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 2433
    .local v0, "handler":Landroid/os/Handler;
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/oneplus/widget/ImageViewer;->m_AutoScrollingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2435
    iput-boolean v2, p0, Lcom/oneplus/widget/ImageViewer;->m_IsAutoScrollingScheduled:Z

    .line 2436
    return v2

    .line 2438
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private scheduleImageBoundsAnimation()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2445
    iget-boolean v1, p0, Lcom/oneplus/widget/ImageViewer;->m_IsImageBoundsAnimationScheduled:Z

    if-eqz v1, :cond_0

    .line 2446
    return v2

    .line 2447
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/widget/ImageViewer;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 2448
    .local v0, "handler":Landroid/os/Handler;
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/oneplus/widget/ImageViewer;->m_AnimateImageBoundsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2450
    iput-boolean v2, p0, Lcom/oneplus/widget/ImageViewer;->m_IsImageBoundsAnimationScheduled:Z

    .line 2451
    return v2

    .line 2453
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private startImageAutoScrolling()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 2637
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/oneplus/widget/ImageViewer;->m_LastAutoScrollingTime:J

    .line 2638
    iget v1, p0, Lcom/oneplus/widget/ImageViewer;->m_AutoScrollingSpeedX:F

    iget v4, p0, Lcom/oneplus/widget/ImageViewer;->m_AutoScrollingSpeedX:F

    mul-float/2addr v1, v4

    iget v4, p0, Lcom/oneplus/widget/ImageViewer;->m_AutoScrollingSpeedY:F

    iget v5, p0, Lcom/oneplus/widget/ImageViewer;->m_AutoScrollingSpeedY:F

    mul-float/2addr v4, v5

    add-float/2addr v1, v4

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v0, v4

    .line 2639
    .local v0, "speed":F
    iget v1, p0, Lcom/oneplus/widget/ImageViewer;->m_AutoScrollingSpeedX:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr v1, v0

    iput v1, p0, Lcom/oneplus/widget/ImageViewer;->m_AutoScrollingSpeedXRatio:F

    .line 2640
    iget v1, p0, Lcom/oneplus/widget/ImageViewer;->m_AutoScrollingSpeedY:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr v1, v0

    iput v1, p0, Lcom/oneplus/widget/ImageViewer;->m_AutoScrollingSpeedYRatio:F

    .line 2641
    iget v1, p0, Lcom/oneplus/widget/ImageViewer;->m_AutoScrollingSpeedX:F

    cmpl-float v1, v1, v6

    if-eqz v1, :cond_3

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/oneplus/widget/ImageViewer;->m_IsAutoScrollingX:Z

    .line 2642
    iget v1, p0, Lcom/oneplus/widget/ImageViewer;->m_AutoScrollingSpeedY:F

    cmpl-float v1, v1, v6

    if-eqz v1, :cond_4

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/oneplus/widget/ImageViewer;->m_IsAutoScrollingY:Z

    .line 2645
    iget-boolean v1, p0, Lcom/oneplus/widget/ImageViewer;->m_IsAutoScrollingBouncingLeft:Z

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/oneplus/widget/ImageViewer;->m_AutoScrollingSpeedX:F

    cmpl-float v1, v1, v6

    if-lez v1, :cond_5

    .line 2646
    iput v6, p0, Lcom/oneplus/widget/ImageViewer;->m_AutoScrollingSpeedX:F

    .line 2649
    :cond_0
    :goto_2
    iget-boolean v1, p0, Lcom/oneplus/widget/ImageViewer;->m_IsAutoScrollingBouncingTop:Z

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/oneplus/widget/ImageViewer;->m_AutoScrollingSpeedY:F

    cmpl-float v1, v1, v6

    if-lez v1, :cond_6

    .line 2650
    iput v6, p0, Lcom/oneplus/widget/ImageViewer;->m_AutoScrollingSpeedY:F

    .line 2655
    :cond_1
    :goto_3
    iget-boolean v1, p0, Lcom/oneplus/widget/ImageViewer;->m_IsAutoScrollingX:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/oneplus/widget/ImageViewer;->m_IsAutoScrollingY:Z

    if-eqz v1, :cond_7

    .line 2666
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/widget/ImageViewer;->cancelImageBoundsAnimation()V

    .line 2667
    invoke-direct {p0}, Lcom/oneplus/widget/ImageViewer;->autoScrolling()V

    .line 2668
    invoke-virtual {p0}, Lcom/oneplus/widget/ImageViewer;->onImageAutoScrollingStarted()V

    .line 2669
    return v2

    :cond_3
    move v1, v3

    .line 2641
    goto :goto_0

    :cond_4
    move v1, v3

    .line 2642
    goto :goto_1

    .line 2647
    :cond_5
    iget-boolean v1, p0, Lcom/oneplus/widget/ImageViewer;->m_IsAutoScrollingBouncingRight:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/oneplus/widget/ImageViewer;->m_AutoScrollingSpeedX:F

    cmpg-float v1, v1, v6

    if-gez v1, :cond_0

    .line 2648
    iput v6, p0, Lcom/oneplus/widget/ImageViewer;->m_AutoScrollingSpeedX:F

    goto :goto_2

    .line 2651
    :cond_6
    iget-boolean v1, p0, Lcom/oneplus/widget/ImageViewer;->m_IsAutoScrollingBouncingBottom:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/oneplus/widget/ImageViewer;->m_AutoScrollingSpeedY:F

    cmpg-float v1, v1, v6

    if-gez v1, :cond_1

    .line 2652
    iput v6, p0, Lcom/oneplus/widget/ImageViewer;->m_AutoScrollingSpeedY:F

    goto :goto_3

    .line 2659
    :cond_7
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/oneplus/widget/ImageViewer;->m_LastAutoScrollingTime:J

    .line 2660
    return v3
.end method

.method private startImageBoundsAnimation()V
    .locals 4

    .prologue
    .line 2676
    iget-boolean v0, p0, Lcom/oneplus/widget/ImageViewer;->m_IsImageBoundsAnimationEnabled:Z

    if-nez v0, :cond_0

    .line 2678
    invoke-virtual {p0}, Lcom/oneplus/widget/ImageViewer;->cancelImageBoundsAnimation()V

    .line 2679
    iget-object v0, p0, Lcom/oneplus/widget/ImageViewer;->m_TargetImageBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/oneplus/widget/ImageViewer;->changeCurrentImageBounds(Landroid/graphics/Rect;)V

    .line 2680
    return-void

    .line 2682
    :cond_0
    iget-object v0, p0, Lcom/oneplus/widget/ImageViewer;->m_TargetImageBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/oneplus/widget/ImageViewer;->m_CurrentImageBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2683
    return-void

    .line 2686
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oneplus/widget/ImageViewer;->m_ImageBoundsAnimationStartTime:J

    .line 2687
    iget-object v0, p0, Lcom/oneplus/widget/ImageViewer;->m_SourceImageBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/oneplus/widget/ImageViewer;->m_CurrentImageBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2688
    invoke-direct {p0}, Lcom/oneplus/widget/ImageViewer;->animateImageBounds()V

    .line 2689
    iget-object v0, p0, Lcom/oneplus/widget/ImageViewer;->m_TargetImageBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/oneplus/widget/ImageViewer;->m_TargetImageBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/oneplus/widget/ImageViewer;->m_TargetImageBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/oneplus/widget/ImageViewer;->m_TargetImageBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/oneplus/widget/ImageViewer;->onImageBoundsAnimationStarted(IIII)V

    .line 2674
    return-void
.end method

.method private startUserMoving()V
    .locals 1

    .prologue
    .line 2697
    iget-boolean v0, p0, Lcom/oneplus/widget/ImageViewer;->m_IsMovingByUser:Z

    if-eqz v0, :cond_0

    .line 2698
    return-void

    .line 2701
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/widget/ImageViewer;->m_IsMovingByUser:Z

    .line 2706
    invoke-virtual {p0}, Lcom/oneplus/widget/ImageViewer;->cancelImageAutoScrolling()V

    .line 2709
    invoke-virtual {p0}, Lcom/oneplus/widget/ImageViewer;->cancelImageBoundsAnimation()V

    .line 2712
    invoke-virtual {p0}, Lcom/oneplus/widget/ImageViewer;->onUserImageMovingStarted()V

    .line 2694
    return-void
.end method


# virtual methods
.method public addGestureCallback(Lcom/oneplus/widget/ImageViewer$GestureCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/oneplus/widget/ImageViewer$GestureCallback;

    .prologue
    .line 454
    iget-object v0, p0, Lcom/oneplus/widget/ImageViewer;->m_GestureCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 452
    return-void
.end method

.method public addStateCallback(Lcom/oneplus/widget/ImageViewer$StateCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/oneplus/widget/ImageViewer$StateCallback;

    .prologue
    .line 464
    iget-object v0, p0, Lcom/oneplus/widget/ImageViewer;->m_StateCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 462
    return-void
.end method

.method protected calculateAdjustedUserImageBounds(IIFFLandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 21
    .param p1, "viewWidth"    # I
    .param p2, "viewHeight"    # I
    .param p3, "focusX"    # F
    .param p4, "focusY"    # F
    .param p5, "currentBounds"    # Landroid/graphics/Rect;
    .param p6, "result"    # Landroid/graphics/Rect;

    .prologue
    .line 815
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/widget/ImageViewer;->getPaddingLeft()I

    move-result v11

    .line 816
    .local v11, "marginLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/widget/ImageViewer;->getPaddingTop()I

    move-result v13

    .line 817
    .local v13, "marginTop":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/widget/ImageViewer;->getPaddingRight()I

    move-result v2

    sub-int v12, p1, v2

    .line 818
    .local v12, "marginRight":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/widget/ImageViewer;->getPaddingBottom()I

    move-result v2

    sub-int v10, p2, v2

    .line 819
    .local v10, "marginBottom":I
    sub-int v20, v12, v11

    .line 820
    .local v20, "visibleViewWidth":I
    sub-int v19, v10, v13

    .line 821
    .local v19, "visibleViewHeight":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/oneplus/widget/ImageViewer;->m_IsMovingByUser:Z

    if-nez v2, :cond_0

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v2

    move/from16 v0, v20

    if-lt v0, v2, :cond_0

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    move-result v2

    move/from16 v0, v19

    if-lt v0, v2, :cond_0

    .line 823
    move-object/from16 v0, p0

    iget v3, v0, Lcom/oneplus/widget/ImageViewer;->m_ImageWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/oneplus/widget/ImageViewer;->m_ImageHeight:I

    move-object/from16 v2, p0

    move/from16 v5, p1

    move/from16 v6, p2

    move-object/from16 v7, p6

    invoke-virtual/range {v2 .. v7}, Lcom/oneplus/widget/ImageViewer;->calculateFitToViewBounds(IIIILandroid/graphics/Rect;)V

    .line 824
    return-void

    .line 826
    :cond_0
    move/from16 p1, v20

    .line 827
    move/from16 p2, v19

    .line 830
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v9

    .line 831
    .local v9, "currentWidth":I
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    move-result v8

    .line 832
    .local v8, "currentHeight":I
    move-object/from16 v0, p5

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float v2, p3, v2

    int-to-float v3, v9

    div-float v17, v2, v3

    .line 833
    .local v17, "normFocusX":F
    move-object/from16 v0, p5

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    sub-float v2, p4, v2

    int-to-float v3, v8

    div-float v18, v2, v3

    .line 836
    .local v18, "normFocusY":F
    move-object/from16 v0, p6

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 837
    move-object/from16 v0, p0

    iget v2, v0, Lcom/oneplus/widget/ImageViewer;->m_ImageWidth:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/oneplus/widget/ImageViewer;->m_MaxRatio:F

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v14

    .line 838
    .local v14, "maxWidth":I
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-le v2, v14, :cond_1

    .line 840
    const/4 v2, 0x0

    move-object/from16 v0, p6

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 841
    const/4 v2, 0x0

    move-object/from16 v0, p6

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 842
    move-object/from16 v0, p6

    iput v14, v0, Landroid/graphics/Rect;->right:I

    .line 843
    move-object/from16 v0, p0

    iget v2, v0, Lcom/oneplus/widget/ImageViewer;->m_ImageHeight:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/oneplus/widget/ImageViewer;->m_MaxRatio:F

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    move-object/from16 v0, p6

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 844
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    mul-float v15, v2, v17

    .line 845
    .local v15, "newFocusX":F
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float v16, v2, v18

    .line 846
    .local v16, "newFocusY":F
    sub-float v2, p3, v15

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    sub-float v3, p4, v16

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    move-object/from16 v0, p6

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 850
    .end local v15    # "newFocusX":F
    .end local v16    # "newFocusY":F
    :cond_1
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Rect;->width()I

    move-result v2

    move/from16 v0, v20

    if-lt v0, v2, :cond_4

    .line 852
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    mul-float v15, v2, v17

    .line 853
    .restart local v15    # "newFocusX":F
    move-object/from16 v0, p6

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-float v3, p3, v15

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int/2addr v2, v3

    move-object/from16 v0, p6

    iget v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p6

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 861
    .end local v15    # "newFocusX":F
    :cond_2
    :goto_0
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Rect;->height()I

    move-result v2

    move/from16 v0, v19

    if-lt v0, v2, :cond_6

    .line 863
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float v16, v2, v18

    .line 864
    .restart local v16    # "newFocusY":F
    move-object/from16 v0, p6

    iget v2, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p6

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-float v4, p4, v16

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    add-int/2addr v3, v4

    move-object/from16 v0, p6

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 809
    .end local v16    # "newFocusY":F
    :cond_3
    :goto_1
    return-void

    .line 855
    :cond_4
    move-object/from16 v0, p6

    iget v2, v0, Landroid/graphics/Rect;->left:I

    if-le v2, v11, :cond_5

    .line 856
    move-object/from16 v0, p6

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int v2, v11, v2

    const/4 v3, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    .line 857
    :cond_5
    move-object/from16 v0, p6

    iget v2, v0, Landroid/graphics/Rect;->right:I

    if-ge v2, v12, :cond_2

    .line 858
    move-object/from16 v0, p6

    iget v2, v0, Landroid/graphics/Rect;->right:I

    sub-int v2, v12, v2

    const/4 v3, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    .line 866
    :cond_6
    move-object/from16 v0, p6

    iget v2, v0, Landroid/graphics/Rect;->top:I

    if-le v2, v13, :cond_7

    .line 867
    move-object/from16 v0, p6

    iget v2, v0, Landroid/graphics/Rect;->top:I

    sub-int v2, v13, v2

    const/4 v3, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_1

    .line 868
    :cond_7
    move-object/from16 v0, p6

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    if-ge v2, v10, :cond_3

    .line 869
    move-object/from16 v0, p6

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v2, v10, v2

    const/4 v3, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_1
.end method

.method protected calculateFitToViewBounds(IIIILandroid/graphics/Rect;)V
    .locals 12
    .param p1, "imageWidth"    # I
    .param p2, "imageHeight"    # I
    .param p3, "viewWidth"    # I
    .param p4, "viewHeight"    # I
    .param p5, "result"    # Landroid/graphics/Rect;

    .prologue
    .line 887
    invoke-virtual {p0}, Lcom/oneplus/widget/ImageViewer;->getPaddingLeft()I

    move-result v3

    .line 888
    .local v3, "paddingLeft":I
    invoke-virtual {p0}, Lcom/oneplus/widget/ImageViewer;->getPaddingTop()I

    move-result v5

    .line 889
    .local v5, "paddingTop":I
    invoke-virtual {p0}, Lcom/oneplus/widget/ImageViewer;->getPaddingRight()I

    move-result v4

    .line 890
    .local v4, "paddingRight":I
    invoke-virtual {p0}, Lcom/oneplus/widget/ImageViewer;->getPaddingBottom()I

    move-result v2

    .line 891
    .local v2, "paddingBottom":I
    add-int v10, v3, v4

    sub-int/2addr p3, v10

    .line 892
    add-int v10, v5, v2

    sub-int p4, p4, v10

    .line 893
    if-lez p3, :cond_0

    if-gtz p4, :cond_1

    .line 895
    :cond_0
    move-object/from16 v0, p5

    invoke-virtual {v0, v3, v5, v3, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 896
    return-void

    .line 893
    :cond_1
    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 900
    int-to-float v10, p3

    int-to-float v11, p1

    div-float v7, v10, v11

    .line 901
    .local v7, "ratioX":F
    move/from16 v0, p4

    int-to-float v10, v0

    int-to-float v11, p2

    div-float v8, v10, v11

    .line 902
    .local v8, "ratioY":F
    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 903
    .local v6, "ratio":F
    int-to-float v10, p1

    mul-float/2addr v10, v6

    float-to-int p1, v10

    .line 904
    int-to-float v10, p2

    mul-float/2addr v10, v6

    float-to-int p2, v10

    .line 907
    sub-int v10, p3, p1

    div-int/lit8 v10, v10, 0x2

    add-int v1, v3, v10

    .line 908
    .local v1, "left":I
    sub-int v10, p4, p2

    div-int/lit8 v10, v10, 0x2

    add-int v9, v5, v10

    .line 909
    .local v9, "top":I
    add-int v10, v1, p1

    add-int v11, v9, p2

    move-object/from16 v0, p5

    invoke-virtual {v0, v1, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 884
    return-void
.end method

.method protected calculateMovingUserImageBounds(IIFFLandroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 17
    .param p1, "distanceX"    # I
    .param p2, "distanceY"    # I
    .param p3, "focusX"    # F
    .param p4, "focusY"    # F
    .param p5, "currentBounds"    # Landroid/graphics/Rect;
    .param p6, "preventMovingOnSmallSide"    # Z
    .param p7, "result"    # Landroid/graphics/Rect;
    .param p8, "adjustedResult"    # Landroid/graphics/Rect;

    .prologue
    .line 951
    move-object/from16 v0, p7

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 952
    move-object/from16 v0, p7

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 955
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/widget/ImageViewer;->getWidth()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/widget/ImageViewer;->getHeight()I

    move-result v5

    move-object/from16 v3, p0

    move/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v3 .. v9}, Lcom/oneplus/widget/ImageViewer;->calculateAdjustedUserImageBounds(IIFFLandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 956
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/oneplus/widget/ImageViewer;->m_IsBouncingEnabled:Z

    if-eqz v3, :cond_6

    .line 958
    const/4 v10, 0x0

    .line 959
    .local v10, "hasBouncing":Z
    move-object/from16 v0, p7

    iget v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p8

    iget v4, v0, Landroid/graphics/Rect;->left:I

    if-le v3, v4, :cond_4

    .line 961
    const/4 v10, 0x1

    .line 969
    move/from16 v0, p1

    int-to-float v3, v0

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    float-to-int v0, v3

    move/from16 p1, v0

    .line 983
    :cond_0
    :goto_0
    move-object/from16 v0, p7

    iget v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p8

    iget v4, v0, Landroid/graphics/Rect;->top:I

    if-le v3, v4, :cond_5

    .line 985
    const/4 v10, 0x1

    .line 993
    move/from16 v0, p2

    int-to-float v3, v0

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    float-to-int v0, v3

    move/from16 p2, v0

    .line 1007
    :cond_1
    :goto_1
    if-eqz v10, :cond_2

    .line 1009
    move-object/from16 v0, p7

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1010
    move-object/from16 v0, p7

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 1017
    .end local v10    # "hasBouncing":Z
    :cond_2
    :goto_2
    if-eqz p6, :cond_3

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/oneplus/widget/ImageViewer;->m_IsScalingByUser:Z

    if-eqz v3, :cond_7

    .line 945
    :cond_3
    :goto_3
    return-void

    .line 971
    .restart local v10    # "hasBouncing":Z
    :cond_4
    move-object/from16 v0, p7

    iget v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p8

    iget v4, v0, Landroid/graphics/Rect;->right:I

    if-ge v3, v4, :cond_0

    .line 973
    const/4 v10, 0x1

    .line 981
    move/from16 v0, p1

    int-to-float v3, v0

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    float-to-int v0, v3

    move/from16 p1, v0

    goto :goto_0

    .line 995
    :cond_5
    move-object/from16 v0, p7

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p8

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    if-ge v3, v4, :cond_1

    .line 997
    const/4 v10, 0x1

    .line 1005
    move/from16 v0, p2

    int-to-float v3, v0

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    float-to-int v0, v3

    move/from16 p2, v0

    goto :goto_1

    .line 1014
    .end local v10    # "hasBouncing":Z
    :cond_6
    invoke-virtual/range {p7 .. p8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_2

    .line 1019
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/widget/ImageViewer;->getPaddingLeft()I

    move-result v12

    .line 1020
    .local v12, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/widget/ImageViewer;->getPaddingTop()I

    move-result v14

    .line 1021
    .local v14, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/widget/ImageViewer;->getPaddingRight()I

    move-result v13

    .line 1022
    .local v13, "paddingRight":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/widget/ImageViewer;->getPaddingBottom()I

    move-result v11

    .line 1023
    .local v11, "paddingBottom":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/widget/ImageViewer;->getWidth()I

    move-result v3

    sub-int/2addr v3, v12

    sub-int v16, v3, v13

    .line 1024
    .local v16, "viewWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/widget/ImageViewer;->getHeight()I

    move-result v3

    sub-int/2addr v3, v14

    sub-int v15, v3, v11

    .line 1025
    .local v15, "viewHeight":I
    invoke-virtual/range {p7 .. p7}, Landroid/graphics/Rect;->width()I

    move-result v3

    move/from16 v0, v16

    if-gt v3, v0, :cond_8

    .line 1026
    move-object/from16 v0, p8

    iget v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p7

    iget v4, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p7

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 1027
    :cond_8
    invoke-virtual/range {p7 .. p7}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-gt v3, v15, :cond_3

    .line 1028
    move-object/from16 v0, p7

    iget v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p8

    iget v4, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p7

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_3
.end method

.method protected calculateMovingUserImageBounds(IILandroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 9
    .param p1, "distanceX"    # I
    .param p2, "distanceY"    # I
    .param p3, "currentBounds"    # Landroid/graphics/Rect;
    .param p4, "preventMovingOnSmallSide"    # Z
    .param p5, "result"    # Landroid/graphics/Rect;
    .param p6, "adjustedResult"    # Landroid/graphics/Rect;

    .prologue
    .line 930
    invoke-virtual {p0}, Lcom/oneplus/widget/ImageViewer;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/oneplus/widget/ImageViewer;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v4, v0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/oneplus/widget/ImageViewer;->calculateMovingUserImageBounds(IIFFLandroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 928
    return-void
.end method

.method protected calculateScalingUserImageBounds(FFFLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 14
    .param p1, "focusX"    # F
    .param p2, "focusY"    # F
    .param p3, "scaleFactor"    # F
    .param p4, "currentBounds"    # Landroid/graphics/Rect;
    .param p5, "result"    # Landroid/graphics/Rect;
    .param p6, "adjustedResult"    # Landroid/graphics/Rect;

    .prologue
    .line 1051
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->width()I

    move-result v9

    .line 1052
    .local v9, "currentWidth":I
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    move-result v8

    .line 1053
    .local v8, "currentHeight":I
    move-object/from16 v0, p4

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    sub-float v1, p1, v1

    int-to-float v2, v9

    div-float v12, v1, v2

    .line 1054
    .local v12, "normFocusX":F
    move-object/from16 v0, p4

    iget v1, v0, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    sub-float v1, p2, v1

    int-to-float v2, v8

    div-float v13, v1, v2

    .line 1057
    .local v13, "normFocusY":F
    const/4 v1, 0x0

    move-object/from16 v0, p5

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 1058
    const/4 v1, 0x0

    move-object/from16 v0, p5

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 1059
    int-to-float v1, v9

    mul-float v1, v1, p3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    move-object/from16 v0, p5

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 1060
    int-to-float v1, v8

    mul-float v1, v1, p3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    move-object/from16 v0, p5

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 1061
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    mul-float v10, v1, v12

    .line 1062
    .local v10, "newFocusX":F
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    mul-float v11, v1, v13

    .line 1063
    .local v11, "newFocusY":F
    sub-float v1, p1, v10

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    sub-float v2, p2, v11

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    move-object/from16 v0, p5

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 1064
    invoke-virtual {p0}, Lcom/oneplus/widget/ImageViewer;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/oneplus/widget/ImageViewer;->getHeight()I

    move-result v3

    move-object v1, p0

    move v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/oneplus/widget/ImageViewer;->calculateAdjustedUserImageBounds(IIFFLandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1045
    return-void
.end method

.method protected cancelImageAutoScrolling()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1076
    iget-wide v0, p0, Lcom/oneplus/widget/ImageViewer;->m_LastAutoScrollingTime:J

    cmp-long v0, v0, v4

    if-gtz v0, :cond_0

    .line 1077
    return-void

    .line 1080
    :cond_0
    iput v2, p0, Lcom/oneplus/widget/ImageViewer;->m_AutoScrollingSpeedX:F

    .line 1081
    iput v2, p0, Lcom/oneplus/widget/ImageViewer;->m_AutoScrollingSpeedY:F

    .line 1082
    iput-boolean v3, p0, Lcom/oneplus/widget/ImageViewer;->m_IsAutoScrollingX:Z

    .line 1083
    iput-boolean v3, p0, Lcom/oneplus/widget/ImageViewer;->m_IsAutoScrollingY:Z

    .line 1084
    iput-wide v4, p0, Lcom/oneplus/widget/ImageViewer;->m_LastAutoScrollingTime:J

    .line 1085
    invoke-virtual {p0}, Lcom/oneplus/widget/ImageViewer;->onImageAutoScrollingCompleted()V

    .line 1074
    return-void
.end method

.method protected cancelImageBoundsAnimation()V
    .locals 2

    .prologue
    .line 1094
    iget-boolean v1, p0, Lcom/oneplus/widget/ImageViewer;->m_IsImageBoundsAnimationScheduled:Z

    if-nez v1, :cond_0

    .line 1095
    return-void

    .line 1098
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/widget/ImageViewer;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 1099
    .local v0, "handler":Landroid/os/Handler;
    if-eqz v0, :cond_1

    .line 1100
    iget-object v1, p0, Lcom/oneplus/widget/ImageViewer;->m_AnimateImageBoundsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1101
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oneplus/widget/ImageViewer;->m_IsImageBoundsAnimationScheduled:Z

    .line 1102
    invoke-virtual {p0}, Lcom/oneplus/widget/ImageViewer;->onImageBoundsAnimationCompleted()V

    .line 1092
    return-void
.end method

.method public cancelUserImageMoving()V
    .locals 1

    .prologue
    .line 1111
    iget-boolean v0, p0, Lcom/oneplus/widget/ImageViewer;->m_IsMovingByUser:Z

    if-nez v0, :cond_0

    .line 1112
    return-void

    .line 1115
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/widget/ImageViewer;->m_IsTouchEventCancelled:Z

    .line 1116
    invoke-direct {p0}, Lcom/oneplus/widget/ImageViewer;->completeUserMoving()Z

    .line 1109
    return-void
.end method

.method public changeToOriginalImageSize()Z
    .locals 1

    .prologue
    .line 1154
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/widget/ImageViewer;->changeToOriginalImageSize(Z)Z

    move-result v0

    return v0
.end method

.method public changeToOriginalImageSize(IIZ)Z
    .locals 12
    .param p1, "focusX"    # I
    .param p2, "focusY"    # I
    .param p3, "animate"    # Z

    .prologue
    .line 1179
    iget-boolean v0, p0, Lcom/oneplus/widget/ImageViewer;->m_FitToView:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/widget/ImageViewer;->m_IsMovingByUser:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/oneplus/widget/ImageViewer;->m_MaxRatio:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v3

    if-gez v0, :cond_1

    .line 1180
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 1183
    :cond_1
    iget v0, p0, Lcom/oneplus/widget/ImageViewer;->m_ImageWidth:I

    if-lez v0, :cond_2

    iget v0, p0, Lcom/oneplus/widget/ImageViewer;->m_ImageHeight:I

    if-gtz v0, :cond_3

    .line 1184
    :cond_2
    const/4 v0, 0x0

    return v0

    .line 1185
    :cond_3
    invoke-virtual {p0}, Lcom/oneplus/widget/ImageViewer;->getWidth()I

    move-result v1

    .line 1186
    .local v1, "viewWidth":I
    invoke-virtual {p0}, Lcom/oneplus/widget/ImageViewer;->getHeight()I

    move-result v2

    .line 1187
    .local v2, "viewHeight":I
    iget v0, p0, Lcom/oneplus/widget/ImageViewer;->m_ImageWidth:I

    iget v3, p0, Lcom/oneplus/widget/ImageViewer;->m_ImageHeight:I

    invoke-direct {p0, v0, v3, v1, v2}, Lcom/oneplus/widget/ImageViewer;->calculateFitToViewBounds(IIII)Landroid/graphics/Rect;

    move-result-object v7

    .line 1188
    .local v7, "fitToViewBounds":Landroid/graphics/Rect;
    iget v0, p0, Lcom/oneplus/widget/ImageViewer;->m_ImageWidth:I

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-le v0, v3, :cond_4

    iget v0, p0, Lcom/oneplus/widget/ImageViewer;->m_ImageHeight:I

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-gt v0, v3, :cond_5

    .line 1189
    :cond_4
    const/4 v0, 0x0

    return v0

    .line 1192
    :cond_5
    invoke-virtual {p0}, Lcom/oneplus/widget/ImageViewer;->cancelImageAutoScrolling()V

    .line 1197
    iget-object v0, p0, Lcom/oneplus/widget/ImageViewer;->m_CurrentImageBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1199
    const/high16 v10, 0x3f000000    # 0.5f

    .line 1200
    .local v10, "normFocusX":F
    const/high16 v11, 0x3f000000    # 0.5f

    .line 1209
    .local v11, "normFocusY":F
    :goto_0
    iget-object v0, p0, Lcom/oneplus/widget/ImageViewer;->m_TargetImageBounds:Landroid/graphics/Rect;

    const/4 v3, 0x0

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 1210
    iget-object v0, p0, Lcom/oneplus/widget/ImageViewer;->m_TargetImageBounds:Landroid/graphics/Rect;

    const/4 v3, 0x0

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 1211
    iget-object v0, p0, Lcom/oneplus/widget/ImageViewer;->m_TargetImageBounds:Landroid/graphics/Rect;

    iget v3, p0, Lcom/oneplus/widget/ImageViewer;->m_ImageWidth:I

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 1212
    iget-object v0, p0, Lcom/oneplus/widget/ImageViewer;->m_TargetImageBounds:Landroid/graphics/Rect;

    iget v3, p0, Lcom/oneplus/widget/ImageViewer;->m_ImageHeight:I

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 1213
    iget-object v0, p0, Lcom/oneplus/widget/ImageViewer;->m_TargetImageBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v3, p0, Lcom/oneplus/widget/ImageViewer;->m_ImageWidth:I

    int-to-float v3, v3

    mul-float/2addr v3, v10

    add-float v8, v0, v3

    .line 1214
    .local v8, "newFocusX":F
    iget-object v0, p0, Lcom/oneplus/widget/ImageViewer;->m_TargetImageBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iget v3, p0, Lcom/oneplus/widget/ImageViewer;->m_ImageHeight:I

    int-to-float v3, v3

    mul-float/2addr v3, v11

    add-float v9, v0, v3

    .line 1215
    .local v9, "newFocusY":F
    iget-object v0, p0, Lcom/oneplus/widget/ImageViewer;->m_TargetImageBounds:Landroid/graphics/Rect;

    int-to-float v3, p1

    sub-float/2addr v3, v8

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v4, p2

    sub-float/2addr v4, v9

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 1216
    int-to-float v3, p1

    int-to-float v4, p2

    iget-object v5, p0, Lcom/oneplus/widget/ImageViewer;->m_TargetImageBounds:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/oneplus/widget/ImageViewer;->m_TargetImageBounds:Landroid/graphics/Rect;

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/oneplus/widget/ImageViewer;->calculateAdjustedUserImageBounds(IIFFLandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1217
    iget-object v0, p0, Lcom/oneplus/widget/ImageViewer;->m_TargetImageBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v7}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1218
    const/4 v0, 0x0

    return v0

    .line 1204
    .end local v8    # "newFocusX":F
    .end local v9    # "newFocusY":F
    .end local v10    # "normFocusX":F
    .end local v11    # "normFocusY":F
    :cond_6
    iget-object v0, p0, Lcom/oneplus/widget/ImageViewer;->m_CurrentImageBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int v0, p1, v0

    int-to-float v0, v0

    iget-object v3, p0, Lcom/oneplus/widget/ImageViewer;->m_CurrentImageBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float v10, v0, v3

    .line 1205
    .restart local v10    # "normFocusX":F
    iget-object v0, p0, Lcom/oneplus/widget/ImageViewer;->m_CurrentImageBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int v0, p2, v0

    int-to-float v0, v0

    iget-object v3, p0, Lcom/oneplus/widget/ImageViewer;->m_CurrentImageBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float v11, v0, v3

    .restart local v11    # "normFocusY":F
    goto :goto_0

    .line 1223
    .restart local v8    # "newFocusX":F
    .restart local v9    # "newFocusY":F
    :cond_7
    sget-object v0, Lcom/oneplus/widget/ImageViewer$ImageBoundsType;->USER:Lcom/oneplus/widget/ImageViewer$ImageBoundsType;

    invoke-direct {p0, v0}, Lcom/oneplus/widget/ImageViewer;->changeImageBoundsType(Lcom/oneplus/widget/ImageViewer$ImageBoundsType;)V

    .line 1226
    if-eqz p3, :cond_8

    .line 1227
    invoke-direct {p0}, Lcom/oneplus/widget/ImageViewer;->startImageBoundsAnimation()V

    .line 1235
    :goto_1
    const/4 v0, 0x1

    return v0

    .line 1230
    :cond_8
    invoke-virtual {p0}, Lcom/oneplus/widget/ImageViewer;->cancelImageBoundsAnimation()V

    .line 1231
    iget-object v0, p0, Lcom/oneplus/widget/ImageViewer;->m_TargetImageBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/oneplus/widget/ImageViewer;->changeCurrentImageBounds(Landroid/graphics/Rect;)V

    goto :goto_1
.end method

.method public changeToOriginalImageSize(Z)Z
    .locals 2
    .param p1, "animate"    # Z

    .prologue
    .line 1165
    invoke-virtual {p0}, Lcom/oneplus/widget/ImageViewer;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/oneplus/widget/ImageViewer;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v0, v1, p1}, Lcom/oneplus/widget/ImageViewer;->changeToOriginalImageSize(IIZ)Z

    move-result v0

    return v0
.end method

.method public changeToUserImageBounds()V
    .locals 1

    .prologue
    .line 1244
    sget-object v0, Lcom/oneplus/widget/ImageViewer$ImageBoundsType;->USER:Lcom/oneplus/widget/ImageViewer$ImageBoundsType;

    invoke-direct {p0, v0}, Lcom/oneplus/widget/ImageViewer;->changeImageBoundsType(Lcom/oneplus/widget/ImageViewer$ImageBoundsType;)V

    .line 1242
    return-void
.end method

.method public disableGestures(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 1320
    iget v0, p0, Lcom/oneplus/widget/ImageViewer;->m_DisabledGestureFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/oneplus/widget/ImageViewer;->m_DisabledGestureFlags:I

    .line 1318
    return-void
.end method

.method public enableGestures(I)V
    .locals 2
    .param p1, "flags"    # I

    .prologue
    .line 1337
    iget v0, p0, Lcom/oneplus/widget/ImageViewer;->m_DisabledGestureFlags:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oneplus/widget/ImageViewer;->m_DisabledGestureFlags:I

    .line 1335
    return-void
.end method

.method public fitImageToView()Z
    .locals 1

    .prologue
    .line 1347
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/widget/ImageViewer;->fitImageToView(Z)Z

    move-result v0

    return v0
.end method

.method public fitImageToView(Z)Z
    .locals 4
    .param p1, "animate"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1359
    iget-object v2, p0, Lcom/oneplus/widget/ImageViewer;->m_ImageBoundsType:Lcom/oneplus/widget/ImageViewer$ImageBoundsType;

    sget-object v3, Lcom/oneplus/widget/ImageViewer$ImageBoundsType;->FIT_TO_VIEW:Lcom/oneplus/widget/ImageViewer$ImageBoundsType;

    if-ne v2, v3, :cond_0

    .line 1360
    return v0

    .line 1365
    :cond_0
    sget-object v2, Lcom/oneplus/widget/ImageViewer$ImageBoundsType;->FIT_TO_VIEW:Lcom/oneplus/widget/ImageViewer$ImageBoundsType;

    invoke-direct {p0, v2}, Lcom/oneplus/widget/ImageViewer;->changeImageBoundsType(Lcom/oneplus/widget/ImageViewer$ImageBoundsType;)V

    .line 1368
    invoke-direct {p0}, Lcom/oneplus/widget/ImageViewer;->completeUserMoving()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1369
    invoke-direct {p0, v1, p1}, Lcom/oneplus/widget/ImageViewer;->refreshImageBounds(ZZ)V

    .line 1372
    :cond_1
    iget-object v2, p0, Lcom/oneplus/widget/ImageViewer;->m_ImageBoundsType:Lcom/oneplus/widget/ImageViewer$ImageBoundsType;

    sget-object v3, Lcom/oneplus/widget/ImageViewer$ImageBoundsType;->FIT_TO_VIEW:Lcom/oneplus/widget/ImageViewer$ImageBoundsType;

    if-ne v2, v3, :cond_2

    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public getAdjustedImageScaleRatio()F
    .locals 1

    .prologue
    .line 1382
    iget-object v0, p0, Lcom/oneplus/widget/ImageViewer;->m_AdjustedUserImageBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/oneplus/widget/ImageViewer;->getImageScaleRatio(Landroid/graphics/Rect;)F

    move-result v0

    return v0
.end method

.method public getAdjustedUserImageBounds()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 1392
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1393
    .local v0, "result":Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Lcom/oneplus/widget/ImageViewer;->getAdjustedUserImageBounds(Landroid/graphics/Rect;)V

    .line 1394
    return-object v0
.end method

.method public getAdjustedUserImageBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "result"    # Landroid/graphics/Rect;

    .prologue
    .line 1404
    iget-object v0, p0, Lcom/oneplus/widget/ImageViewer;->m_AdjustedUserImageBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1402
    return-void
.end method

.method public getDisplayedAdjustedUserImageCenter([I)V
    .locals 1
    .param p1, "dst"    # [I

    .prologue
    .line 1414
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/widget/ImageViewer;->getDisplayedAdjustedUserImageCenter([II)V

    .line 1412
    return-void
.end method

.method public getDisplayedAdjustedUserImageCenter([II)V
    .locals 1
    .param p1, "dst"    # [I
    .param p2, "dstIndex"    # I

    .prologue
    .line 1425
    iget-object v0, p0, Lcom/oneplus/widget/ImageViewer;->m_AdjustedUserImageBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v0, p1, p2}, Lcom/oneplus/widget/ImageViewer;->getDisplayedImageCenter(Landroid/graphics/Rect;[II)V

    .line 1423
    return-void
.end method

.method public getDisplayedImageCenter([I)V
    .locals 1
    .param p1, "dst"    # [I

    .prologue
    .line 1435
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/widget/ImageViewer;->getDisplayedImageCenter([II)V

    .line 1433
    return-void
.end method

.method public getDisplayedImageCenter([II)V
    .locals 1
    .param p1, "dst"    # [I
    .param p2, "dstIndex"    # I

    .prologue
    .line 1446
    iget-object v0, p0, Lcom/oneplus/widget/ImageViewer;->m_CurrentImageBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v0, p1, p2}, Lcom/oneplus/widget/ImageViewer;->getDisplayedImageCenter(Landroid/graphics/Rect;[II)V

    .line 1444
    return-void
.end method

.method public getDisplayedTargetImageCenter([I)V
    .locals 1
    .param p1, "dst"    # [I

    .prologue
    .line 1468
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/widget/ImageViewer;->getDisplayedTargetImageCenter([II)V

    .line 1466
    return-void
.end method

.method public getDisplayedTargetImageCenter([II)V
    .locals 1
    .param p1, "dst"    # [I
    .param p2, "dstIndex"    # I

    .prologue
    .line 1479
    iget-object v0, p0, Lcom/oneplus/widget/ImageViewer;->m_TargetImageBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v0, p1, p2}, Lcom/oneplus/widget/ImageViewer;->getDisplayedImageCenter(Landroid/graphics/Rect;[II)V

    .line 1477
    return-void
.end method

.method public getImageBounds()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 1489
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1490
    .local v0, "result":Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Lcom/oneplus/widget/ImageViewer;->getImageBounds(Landroid/graphics/Rect;)V

    .line 1491
    return-object v0
.end method

.method public getImageBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "result"    # Landroid/graphics/Rect;

    .prologue
    .line 1501
    iget-object v0, p0, Lcom/oneplus/widget/ImageViewer;->m_CurrentImageBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1499
    return-void
.end method

.method public getImageBoundsType()Lcom/oneplus/widget/ImageViewer$ImageBoundsType;
    .locals 1

    .prologue
    .line 1511
    iget-object v0, p0, Lcom/oneplus/widget/ImageViewer;->m_ImageBoundsType:Lcom/oneplus/widget/ImageViewer$ImageBoundsType;

    return-object v0
.end method

.method public getImageDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1521
    iget-object v0, p0, Lcom/oneplus/widget/ImageViewer;->m_ImageDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getImageScaleRatio()F
    .locals 1

    .prologue
    .line 1531
    iget-object v0, p0, Lcom/oneplus/widget/ImageViewer;->m_CurrentImageBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/oneplus/widget/ImageViewer;->getImageScaleRatio(Landroid/graphics/Rect;)F

    move-result v0

    return v0
.end method

.method public getIntrinsicImageHeight()I
    .locals 1

    .prologue
    .line 1552
    iget v0, p0, Lcom/oneplus/widget/ImageViewer;->m_ImageHeight:I

    return v0
.end method

.method public getIntrinsicImageWidth()I
    .locals 1

    .prologue
    .line 1562
    iget v0, p0, Lcom/oneplus/widget/ImageViewer;->m_ImageWidth:I

    return v0
.end method

.method public getLocationOnImage([FFF)Z
    .locals 1
    .param p1, "result"    # [F
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 1575
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/oneplus/widget/ImageViewer;->getLocationOnImage([FIFF)Z

    move-result v0

    return v0
.end method

.method public getLocationOnImage([FIFF)Z
    .locals 4
    .param p1, "result"    # [F
    .param p2, "resultIndex"    # I
    .param p3, "x"    # F
    .param p4, "y"    # F

    .prologue
    .line 1589
    iget-object v1, p0, Lcom/oneplus/widget/ImageViewer;->m_CurrentImageBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    sub-float/2addr p3, v1

    .line 1590
    iget-object v1, p0, Lcom/oneplus/widget/ImageViewer;->m_CurrentImageBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    sub-float/2addr p4, v1

    .line 1591
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "resultIndex":I
    .local v0, "resultIndex":I
    aput p3, p1, p2

    .line 1592
    aput p4, p1, v0

    .line 1593
    iget-object v1, p0, Lcom/oneplus/widget/ImageViewer;->m_CurrentImageBounds:Landroid/graphics/Rect;

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    return v1
.end method

.method public getMaxImageScaleRatio()F
    .locals 1

    .prologue
    .line 1603
    iget v0, p0, Lcom/oneplus/widget/ImageViewer;->m_MaxRatio:F

    return v0
.end method

.method public getOverlayDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1613
    iget-object v0, p0, Lcom/oneplus/widget/ImageViewer;->m_OverlayDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getTargetImageBounds()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 1623
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1624
    .local v0, "result":Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Lcom/oneplus/widget/ImageViewer;->getTargetImageBounds(Landroid/graphics/Rect;)V

    .line 1625
    return-object v0
.end method

.method public getTargetImageBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "result"    # Landroid/graphics/Rect;

    .prologue
    .line 1635
    iget-object v0, p0, Lcom/oneplus/widget/ImageViewer;->m_TargetImageBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1633
    return-void
.end method

.method public getTargetImageScaleRatio()F
    .locals 1

    .prologue
    .line 1645
    iget-object v0, p0, Lcom/oneplus/widget/ImageViewer;->m_TargetImageBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/oneplus/widget/ImageViewer;->getImageScaleRatio(Landroid/graphics/Rect;)F

    move-result v0

    return v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1653
    iget-object v0, p0, Lcom/oneplus/widget/ImageViewer;->m_ImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 1654
    return-void

    .line 1655
    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/oneplus/widget/ImageViewer;->refreshImageBounds(ZZ)V

    .line 1651
    return-void
.end method

.method public isFitToViewOnly()Z
    .locals 1

    .prologue
    .line 1665
    iget-boolean v0, p0, Lcom/oneplus/widget/ImageViewer;->m_FitToView:Z

    return v0
.end method

.method public isGestureEnabled(I)Z
    .locals 2
    .param p1, "flags"    # I

    .prologue
    const/4 v0, 0x0

    .line 1683
    iget v1, p0, Lcom/oneplus/widget/ImageViewer;->m_DisabledGestureFlags:I

    and-int/2addr v1, p1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isImageAutoScrolling()Z
    .locals 4

    .prologue
    .line 1693
    iget-wide v0, p0, Lcom/oneplus/widget/ImageViewer;->m_LastAutoScrollingTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isImageBoundsAnimating()Z
    .locals 4

    .prologue
    .line 1703
    iget-wide v0, p0, Lcom/oneplus/widget/ImageViewer;->m_ImageBoundsAnimationStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isImageBoundsAnimationEnabled()Z
    .locals 1

    .prologue
    .line 1713
    iget-boolean v0, p0, Lcom/oneplus/widget/ImageViewer;->m_IsImageBoundsAnimationEnabled:Z

    return v0
.end method

.method public isImageMovingByUser()Z
    .locals 1

    .prologue
    .line 1723
    iget-boolean v0, p0, Lcom/oneplus/widget/ImageViewer;->m_IsMovingByUser:Z

    return v0
.end method

.method protected moveImage(Landroid/graphics/Rect;Z)Z
    .locals 6
    .param p1, "imageBounds"    # Landroid/graphics/Rect;
    .param p2, "animate"    # Z

    .prologue
    const/4 v5, 0x0

    .line 1760
    if-eqz p1, :cond_0

    iget-boolean v1, p0, Lcom/oneplus/widget/ImageViewer;->m_IsMovingByUser:Z

    if-eqz v1, :cond_1

    .line 1761
    :cond_0
    return v5

    .line 1762
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/widget/ImageViewer;->cancelImageAutoScrolling()V

    .line 1763
    invoke-virtual {p0}, Lcom/oneplus/widget/ImageViewer;->cancelImageBoundsAnimation()V

    .line 1764
    iget-object v1, p0, Lcom/oneplus/widget/ImageViewer;->m_ImageBoundsType:Lcom/oneplus/widget/ImageViewer$ImageBoundsType;

    sget-object v2, Lcom/oneplus/widget/ImageViewer$ImageBoundsType;->FIT_TO_VIEW:Lcom/oneplus/widget/ImageViewer$ImageBoundsType;

    if-ne v1, v2, :cond_3

    .line 1766
    iget v1, p0, Lcom/oneplus/widget/ImageViewer;->m_ImageWidth:I

    iget v2, p0, Lcom/oneplus/widget/ImageViewer;->m_ImageHeight:I

    invoke-virtual {p0}, Lcom/oneplus/widget/ImageViewer;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/oneplus/widget/ImageViewer;->getHeight()I

    move-result v4

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/oneplus/widget/ImageViewer;->calculateFitToViewBounds(IIII)Landroid/graphics/Rect;

    move-result-object v0

    .line 1767
    .local v0, "fitToViewBounds":Landroid/graphics/Rect;
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1769
    iget-boolean v1, p0, Lcom/oneplus/widget/ImageViewer;->m_FitToView:Z

    if-eqz v1, :cond_2

    .line 1770
    return v5

    .line 1773
    :cond_2
    sget-object v1, Lcom/oneplus/widget/ImageViewer$ImageBoundsType;->USER:Lcom/oneplus/widget/ImageViewer$ImageBoundsType;

    invoke-direct {p0, v1}, Lcom/oneplus/widget/ImageViewer;->changeImageBoundsType(Lcom/oneplus/widget/ImageViewer$ImageBoundsType;)V

    .line 1776
    .end local v0    # "fitToViewBounds":Landroid/graphics/Rect;
    :cond_3
    iget-object v1, p0, Lcom/oneplus/widget/ImageViewer;->m_AdjustedUserImageBounds:Landroid/graphics/Rect;

    invoke-direct {p0, p1, v1}, Lcom/oneplus/widget/ImageViewer;->calculateAdjustedUserImageBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1777
    iget-object v1, p0, Lcom/oneplus/widget/ImageViewer;->m_TargetImageBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/oneplus/widget/ImageViewer;->m_AdjustedUserImageBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1778
    if-eqz p2, :cond_4

    .line 1779
    invoke-direct {p0}, Lcom/oneplus/widget/ImageViewer;->startImageBoundsAnimation()V

    .line 1782
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 1781
    :cond_4
    iget-object v1, p0, Lcom/oneplus/widget/ImageViewer;->m_TargetImageBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v1}, Lcom/oneplus/widget/ImageViewer;->changeCurrentImageBounds(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method protected onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1793
    iget-object v1, p0, Lcom/oneplus/widget/ImageViewer;->m_GestureCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1795
    iget-object v1, p0, Lcom/oneplus/widget/ImageViewer;->m_GestureCallbacks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/widget/ImageViewer$GestureCallback;

    invoke-virtual {v1, p0, p1}, Lcom/oneplus/widget/ImageViewer$GestureCallback;->onDoubleTap(Lcom/oneplus/widget/ImageViewer;Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1796
    return v3

    .line 1793
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1798
    :cond_1
    invoke-virtual {p0, v3}, Lcom/oneplus/widget/ImageViewer;->isGestureEnabled(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1799
    return v2

    .line 1800
    :cond_2
    iget-object v1, p0, Lcom/oneplus/widget/ImageViewer;->m_ImageBoundsType:Lcom/oneplus/widget/ImageViewer$ImageBoundsType;

    sget-object v2, Lcom/oneplus/widget/ImageViewer$ImageBoundsType;->FIT_TO_VIEW:Lcom/oneplus/widget/ImageViewer$ImageBoundsType;

    if-ne v1, v2, :cond_3

    .line 1801
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/oneplus/widget/ImageViewer;->changeToOriginalImageSize(IIZ)Z

    .line 1804
    :goto_1
    return v3

    .line 1803
    :cond_3
    invoke-virtual {p0, v3}, Lcom/oneplus/widget/ImageViewer;->fitImageToView(Z)Z

    goto :goto_1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1813
    iget-object v0, p0, Lcom/oneplus/widget/ImageViewer;->m_ImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/widget/ImageViewer;->m_CurrentImageBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1814
    :cond_0
    return-void

    .line 1817
    :cond_1
    iget-object v0, p0, Lcom/oneplus/widget/ImageViewer;->m_ImageDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/oneplus/widget/ImageViewer;->m_CurrentImageBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1818
    iget-object v0, p0, Lcom/oneplus/widget/ImageViewer;->m_ImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1821
    iget-object v0, p0, Lcom/oneplus/widget/ImageViewer;->m_OverlayDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 1823
    iget-object v0, p0, Lcom/oneplus/widget/ImageViewer;->m_OverlayDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/oneplus/widget/ImageViewer;->m_CurrentImageBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1824
    iget-object v0, p0, Lcom/oneplus/widget/ImageViewer;->m_OverlayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1810
    :cond_2
    return-void
.end method

.method protected onDrawDebugFrames(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1840
    iget-object v0, p0, Lcom/oneplus/widget/ImageViewer;->m_DebugFramePaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 1842
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oneplus/widget/ImageViewer;->m_DebugFramePaint:Landroid/graphics/Paint;

    .line 1843
    iget-object v0, p0, Lcom/oneplus/widget/ImageViewer;->m_DebugFramePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1844
    iget-object v0, p0, Lcom/oneplus/widget/ImageViewer;->m_DebugFramePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1845
    iget-object v0, p0, Lcom/oneplus/widget/ImageViewer;->m_DebugFramePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1849
    :cond_0
    iget-object v0, p0, Lcom/oneplus/widget/ImageViewer;->m_DebugFramePaint:Landroid/graphics/Paint;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1850
    iget-object v0, p0, Lcom/oneplus/widget/ImageViewer;->m_AdjustedUserImageBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/oneplus/widget/ImageViewer;->m_DebugFramePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1853
    iget-object v0, p0, Lcom/oneplus/widget/ImageViewer;->m_DebugFramePaint:Landroid/graphics/Paint;

    const/16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1854
    iget-object v0, p0, Lcom/oneplus/widget/ImageViewer;->m_TargetImageBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/oneplus/widget/ImageViewer;->m_DebugFramePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1857
    iget-object v0, p0, Lcom/oneplus/widget/ImageViewer;->m_DebugFramePaint:Landroid/graphics/Paint;

    const v1, -0xff0100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1858
    iget-object v0, p0, Lcom/oneplus/widget/ImageViewer;->m_CurrentImageBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/oneplus/widget/ImageViewer;->m_DebugFramePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1837
    return-void
.end method

.method protected onGestureFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FFZ)Z
    .locals 14
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F
    .param p5, "preventScrollingOnSmallSize"    # Z

    .prologue
    .line 1874
    iget-object v1, p0, Lcom/oneplus/widget/ImageViewer;->m_GestureCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v7, v1, -0x1

    .local v7, "i":I
    :goto_0
    if-ltz v7, :cond_1

    .line 1876
    iget-object v1, p0, Lcom/oneplus/widget/ImageViewer;->m_GestureCallbacks:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/widget/ImageViewer$GestureCallback;

    move-object v2, p0

    move-object v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/oneplus/widget/ImageViewer$GestureCallback;->onFling(Lcom/oneplus/widget/ImageViewer;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1877
    const/4 v1, 0x1

    return v1

    .line 1874
    :cond_0
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 1881
    :cond_1
    iget-boolean v1, p0, Lcom/oneplus/widget/ImageViewer;->m_IsMovingByUser:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oneplus/widget/ImageViewer;->m_CurrentImageBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1882
    :cond_2
    const/4 v1, 0x0

    return v1

    .line 1883
    :cond_3
    iget-object v1, p0, Lcom/oneplus/widget/ImageViewer;->m_CurrentImageBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/oneplus/widget/ImageViewer;->m_AdjustedUserImageBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-le v1, v2, :cond_4

    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Lcom/oneplus/widget/ImageViewer;->m_IsAutoScrollingBouncingLeft:Z

    .line 1884
    iget-object v1, p0, Lcom/oneplus/widget/ImageViewer;->m_CurrentImageBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/oneplus/widget/ImageViewer;->m_AdjustedUserImageBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-le v1, v2, :cond_5

    const/4 v1, 0x1

    :goto_2
    iput-boolean v1, p0, Lcom/oneplus/widget/ImageViewer;->m_IsAutoScrollingBouncingTop:Z

    .line 1885
    iget-object v1, p0, Lcom/oneplus/widget/ImageViewer;->m_CurrentImageBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/oneplus/widget/ImageViewer;->m_AdjustedUserImageBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    if-ge v1, v2, :cond_6

    const/4 v1, 0x1

    :goto_3
    iput-boolean v1, p0, Lcom/oneplus/widget/ImageViewer;->m_IsAutoScrollingBouncingRight:Z

    .line 1886
    iget-object v1, p0, Lcom/oneplus/widget/ImageViewer;->m_CurrentImageBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/oneplus/widget/ImageViewer;->m_AdjustedUserImageBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-ge v1, v2, :cond_7

    const/4 v1, 0x1

    :goto_4
    iput-boolean v1, p0, Lcom/oneplus/widget/ImageViewer;->m_IsAutoScrollingBouncingBottom:Z

    .line 1896
    iget-boolean v1, p0, Lcom/oneplus/widget/ImageViewer;->m_IsAutoScrollingBouncingLeft:Z

    if-eqz v1, :cond_8

    .line 1897
    iget-boolean v1, p0, Lcom/oneplus/widget/ImageViewer;->m_IsAutoScrollingBouncingTop:Z

    .line 1896
    if-eqz v1, :cond_8

    .line 1898
    iget-boolean v1, p0, Lcom/oneplus/widget/ImageViewer;->m_IsAutoScrollingBouncingRight:Z

    .line 1896
    if-eqz v1, :cond_8

    .line 1899
    iget-boolean v1, p0, Lcom/oneplus/widget/ImageViewer;->m_IsAutoScrollingBouncingBottom:Z

    .line 1896
    if-eqz v1, :cond_8

    .line 1901
    const/4 v1, 0x0

    return v1

    .line 1883
    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    .line 1884
    :cond_5
    const/4 v1, 0x0

    goto :goto_2

    .line 1885
    :cond_6
    const/4 v1, 0x0

    goto :goto_3

    .line 1886
    :cond_7
    const/4 v1, 0x0

    goto :goto_4

    .line 1908
    :cond_8
    invoke-direct {p0}, Lcom/oneplus/widget/ImageViewer;->startUserMoving()V

    .line 1911
    invoke-virtual {p0}, Lcom/oneplus/widget/ImageViewer;->getPaddingLeft()I

    move-result v9

    .line 1912
    .local v9, "paddingLeft":I
    invoke-virtual {p0}, Lcom/oneplus/widget/ImageViewer;->getPaddingTop()I

    move-result v11

    .line 1913
    .local v11, "paddingTop":I
    invoke-virtual {p0}, Lcom/oneplus/widget/ImageViewer;->getPaddingRight()I

    move-result v10

    .line 1914
    .local v10, "paddingRight":I
    invoke-virtual {p0}, Lcom/oneplus/widget/ImageViewer;->getPaddingBottom()I

    move-result v8

    .line 1915
    .local v8, "paddingBottom":I
    invoke-virtual {p0}, Lcom/oneplus/widget/ImageViewer;->getWidth()I

    move-result v1

    sub-int/2addr v1, v9

    sub-int v13, v1, v10

    .line 1916
    .local v13, "viewWidth":I
    invoke-virtual {p0}, Lcom/oneplus/widget/ImageViewer;->getHeight()I

    move-result v1

    sub-int/2addr v1, v11

    sub-int v12, v1, v8

    .line 1917
    .local v12, "viewHeight":I
    if-eqz p5, :cond_9

    iget-object v1, p0, Lcom/oneplus/widget/ImageViewer;->m_CurrentImageBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-gt v1, v13, :cond_9

    .line 1918
    const/4 v1, 0x0

    iput v1, p0, Lcom/oneplus/widget/ImageViewer;->m_AutoScrollingSpeedX:F

    .line 1921
    .end local p3    # "velocityX":F
    :goto_5
    if-eqz p5, :cond_c

    iget-object v1, p0, Lcom/oneplus/widget/ImageViewer;->m_CurrentImageBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-gt v1, v12, :cond_c

    .line 1922
    const/4 v1, 0x0

    iput v1, p0, Lcom/oneplus/widget/ImageViewer;->m_AutoScrollingSpeedY:F

    .line 1927
    .end local p4    # "velocityY":F
    :goto_6
    invoke-direct {p0}, Lcom/oneplus/widget/ImageViewer;->startImageAutoScrolling()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1928
    const/4 v1, 0x1

    return v1

    .line 1920
    .restart local p3    # "velocityX":F
    .restart local p4    # "velocityY":F
    :cond_9
    iget-boolean v1, p0, Lcom/oneplus/widget/ImageViewer;->m_IsAutoScrollingBouncingLeft:Z

    if-nez v1, :cond_a

    iget-boolean v1, p0, Lcom/oneplus/widget/ImageViewer;->m_IsAutoScrollingBouncingRight:Z

    if-eqz v1, :cond_b

    :cond_a
    const/high16 v1, 0x3f000000    # 0.5f

    mul-float p3, p3, v1

    .end local p3    # "velocityX":F
    :cond_b
    move/from16 v0, p3

    iput v0, p0, Lcom/oneplus/widget/ImageViewer;->m_AutoScrollingSpeedX:F

    goto :goto_5

    .line 1924
    :cond_c
    iget-boolean v1, p0, Lcom/oneplus/widget/ImageViewer;->m_IsAutoScrollingBouncingTop:Z

    if-nez v1, :cond_d

    iget-boolean v1, p0, Lcom/oneplus/widget/ImageViewer;->m_IsAutoScrollingBouncingBottom:Z

    if-eqz v1, :cond_e

    :cond_d
    const/high16 v1, 0x3f000000    # 0.5f

    mul-float p4, p4, v1

    .end local p4    # "velocityY":F
    :cond_e
    move/from16 v0, p4

    iput v0, p0, Lcom/oneplus/widget/ImageViewer;->m_AutoScrollingSpeedY:F

    goto :goto_6

    .line 1931
    :cond_f
    invoke-direct {p0}, Lcom/oneplus/widget/ImageViewer;->completeUserMoving()Z

    .line 1932
    const/4 v1, 0x0

    return v1
.end method

.method protected onGestureScale(FFFFF)Z
    .locals 12
    .param p1, "scaleFactor"    # F
    .param p2, "focusX"    # F
    .param p3, "focusY"    # F
    .param p4, "distanceX"    # F
    .param p5, "distanceY"    # F

    .prologue
    .line 1948
    iget-object v0, p0, Lcom/oneplus/widget/ImageViewer;->m_GestureCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v10, v0, -0x1

    .local v10, "i":I
    :goto_0
    if-ltz v10, :cond_1

    .line 1950
    iget-object v0, p0, Lcom/oneplus/widget/ImageViewer;->m_GestureCallbacks:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/widget/ImageViewer$GestureCallback;

    move-object v1, p0

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/widget/ImageViewer$GestureCallback;->onScale(Lcom/oneplus/widget/ImageViewer;FFFF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1951
    const/4 v0, 0x1

    return v0

    .line 1948
    :cond_0
    add-int/lit8 v10, v10, -0x1

    goto :goto_0

    .line 1955
    :cond_1
    iget-boolean v0, p0, Lcom/oneplus/widget/ImageViewer;->m_IsMovingByUser:Z

    if-nez v0, :cond_2

    .line 1956
    const/4 v0, 0x0

    return v0

    .line 1957
    :cond_2
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/oneplus/widget/ImageViewer;->isGestureEnabled(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1958
    const/4 v0, 0x0

    return v0

    .line 1961
    :cond_3
    iget-object v0, p0, Lcom/oneplus/widget/ImageViewer;->m_ScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->getPreviousSpan()F

    move-result v11

    .line 1962
    .local v11, "prevSpan":F
    iget-object v0, p0, Lcom/oneplus/widget/ImageViewer;->m_ScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v9

    .line 1970
    .local v9, "currentSpan":F
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/oneplus/widget/ImageViewer;->isGestureEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1971
    invoke-static/range {p4 .. p4}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static/range {p5 .. p5}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget-object v5, p0, Lcom/oneplus/widget/ImageViewer;->m_CurrentImageBounds:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/oneplus/widget/ImageViewer;->m_TargetImageBounds:Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/oneplus/widget/ImageViewer;->m_AdjustedUserImageBounds:Landroid/graphics/Rect;

    const/4 v6, 0x1

    move-object v0, p0

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v8}, Lcom/oneplus/widget/ImageViewer;->calculateMovingUserImageBounds(IIFFLandroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1974
    :goto_1
    const/high16 v0, 0x3f800000    # 1.0f

    mul-float v3, p1, v0

    iget-object v4, p0, Lcom/oneplus/widget/ImageViewer;->m_TargetImageBounds:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/oneplus/widget/ImageViewer;->m_TargetImageBounds:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/oneplus/widget/ImageViewer;->m_AdjustedUserImageBounds:Landroid/graphics/Rect;

    move-object v0, p0

    move v1, p2

    move v2, p3

    invoke-virtual/range {v0 .. v6}, Lcom/oneplus/widget/ImageViewer;->calculateScalingUserImageBounds(FFFLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1979
    sget-object v0, Lcom/oneplus/widget/ImageViewer$ImageBoundsType;->USER:Lcom/oneplus/widget/ImageViewer$ImageBoundsType;

    invoke-direct {p0, v0}, Lcom/oneplus/widget/ImageViewer;->changeImageBoundsType(Lcom/oneplus/widget/ImageViewer$ImageBoundsType;)V

    .line 1980
    invoke-direct {p0}, Lcom/oneplus/widget/ImageViewer;->moveImageBoundsByUser()V

    .line 1983
    const/4 v0, 0x1

    return v0

    .line 1973
    :cond_4
    iget-object v0, p0, Lcom/oneplus/widget/ImageViewer;->m_TargetImageBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/oneplus/widget/ImageViewer;->m_CurrentImageBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_1
.end method

.method protected onGestureScaleBegin()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1994
    iget-object v1, p0, Lcom/oneplus/widget/ImageViewer;->m_GestureCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1996
    iget-object v1, p0, Lcom/oneplus/widget/ImageViewer;->m_GestureCallbacks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/widget/ImageViewer$GestureCallback;

    invoke-virtual {v1, p0}, Lcom/oneplus/widget/ImageViewer$GestureCallback;->onScaleBegin(Lcom/oneplus/widget/ImageViewer;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1997
    return v2

    .line 1994
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2001
    :cond_1
    iget-object v1, p0, Lcom/oneplus/widget/ImageViewer;->m_CurrentImageBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/oneplus/widget/ImageViewer;->m_FitToView:Z

    if-eqz v1, :cond_3

    .line 2002
    :cond_2
    return v3

    .line 2008
    :cond_3
    iput-boolean v2, p0, Lcom/oneplus/widget/ImageViewer;->m_IsScalingByUser:Z

    .line 2011
    invoke-direct {p0}, Lcom/oneplus/widget/ImageViewer;->startUserMoving()V

    .line 2014
    return v2
.end method

.method protected onGestureScaleEnd()V
    .locals 2

    .prologue
    .line 2024
    iget-object v1, p0, Lcom/oneplus/widget/ImageViewer;->m_GestureCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 2025
    iget-object v1, p0, Lcom/oneplus/widget/ImageViewer;->m_GestureCallbacks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/widget/ImageViewer$GestureCallback;

    invoke-virtual {v1, p0}, Lcom/oneplus/widget/ImageViewer$GestureCallback;->onScaleEnd(Lcom/oneplus/widget/ImageViewer;)V

    .line 2024
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2021
    :cond_0
    return-void
.end method

.method protected onGestureScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 9
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 2043
    iget-object v0, p0, Lcom/oneplus/widget/ImageViewer;->m_GestureCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v7, v0, -0x1

    .local v7, "i":I
    :goto_0
    if-ltz v7, :cond_1

    .line 2045
    iget-object v0, p0, Lcom/oneplus/widget/ImageViewer;->m_GestureCallbacks:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/widget/ImageViewer$GestureCallback;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/widget/ImageViewer$GestureCallback;->onScroll(Lcom/oneplus/widget/ImageViewer;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2046
    return v8

    .line 2043
    :cond_0
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 2050
    :cond_1
    iget-object v0, p0, Lcom/oneplus/widget/ImageViewer;->m_CurrentImageBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/widget/ImageViewer;->m_ImageBoundsType:Lcom/oneplus/widget/ImageViewer$ImageBoundsType;

    sget-object v1, Lcom/oneplus/widget/ImageViewer$ImageBoundsType;->FIT_TO_VIEW:Lcom/oneplus/widget/ImageViewer$ImageBoundsType;

    if-ne v0, v1, :cond_3

    .line 2051
    :cond_2
    return v6

    .line 2052
    :cond_3
    iget-boolean v0, p0, Lcom/oneplus/widget/ImageViewer;->m_IsScalingByUser:Z

    if-eqz v0, :cond_4

    .line 2053
    return v6

    .line 2054
    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v8, :cond_5

    .line 2056
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/oneplus/widget/ImageViewer;->isGestureEnabled(I)Z

    move-result v0

    if-nez v0, :cond_6

    .line 2057
    return v6

    .line 2061
    :cond_5
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/oneplus/widget/ImageViewer;->isGestureEnabled(I)Z

    move-result v0

    if-nez v0, :cond_6

    .line 2062
    return v6

    .line 2066
    :cond_6
    invoke-direct {p0}, Lcom/oneplus/widget/ImageViewer;->startUserMoving()V

    .line 2067
    neg-float v0, p3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    neg-float v0, p4

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget-object v3, p0, Lcom/oneplus/widget/ImageViewer;->m_CurrentImageBounds:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/oneplus/widget/ImageViewer;->m_TargetImageBounds:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/oneplus/widget/ImageViewer;->m_AdjustedUserImageBounds:Landroid/graphics/Rect;

    move-object v0, p0

    move v4, v8

    invoke-virtual/range {v0 .. v6}, Lcom/oneplus/widget/ImageViewer;->calculateMovingUserImageBounds(IILandroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 2068
    invoke-direct {p0}, Lcom/oneplus/widget/ImageViewer;->moveImageBoundsByUser()V

    .line 2071
    return v8
.end method

.method protected onImageAutoScrollingCompleted()V
    .locals 2

    .prologue
    .line 2080
    iget-object v1, p0, Lcom/oneplus/widget/ImageViewer;->m_StateCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 2081
    iget-object v1, p0, Lcom/oneplus/widget/ImageViewer;->m_StateCallbacks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/widget/ImageViewer$StateCallback;

    invoke-virtual {v1, p0}, Lcom/oneplus/widget/ImageViewer$StateCallback;->onImageAutoScrollingCompleted(Lcom/oneplus/widget/ImageViewer;)V

    .line 2080
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2078
    :cond_0
    return-void
.end method

.method protected onImageAutoScrollingStarted()V
    .locals 2

    .prologue
    .line 2090
    iget-object v1, p0, Lcom/oneplus/widget/ImageViewer;->m_StateCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 2091
    iget-object v1, p0, Lcom/oneplus/widget/ImageViewer;->m_StateCallbacks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/widget/ImageViewer$StateCallback;

    invoke-virtual {v1, p0}, Lcom/oneplus/widget/ImageViewer$StateCallback;->onImageAutoScrollingStarted(Lcom/oneplus/widget/ImageViewer;)V

    .line 2090
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2088
    :cond_0
    return-void
.end method

.method protected onImageBoundsAnimate(JJJF)V
    .locals 0
    .param p1, "startTime"    # J
    .param p3, "elapsedTime"    # J
    .param p5, "duration"    # J
    .param p7, "progress"    # F

    .prologue
    .line 2102
    return-void
.end method

.method protected onImageBoundsAnimationCompleted()V
    .locals 2

    .prologue
    .line 2111
    iget-object v1, p0, Lcom/oneplus/widget/ImageViewer;->m_StateCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 2112
    iget-object v1, p0, Lcom/oneplus/widget/ImageViewer;->m_StateCallbacks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/widget/ImageViewer$StateCallback;

    invoke-virtual {v1, p0}, Lcom/oneplus/widget/ImageViewer$StateCallback;->onImageBoundsAnimationCompleted(Lcom/oneplus/widget/ImageViewer;)V

    .line 2111
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2109
    :cond_0
    return-void
.end method

.method protected onImageBoundsAnimationStarted(IIII)V
    .locals 7
    .param p1, "targetLeft"    # I
    .param p2, "targetTop"    # I
    .param p3, "targetRight"    # I
    .param p4, "targetBottom"    # I

    .prologue
    .line 2125
    iget-object v0, p0, Lcom/oneplus/widget/ImageViewer;->m_StateCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v6, v0, -0x1

    .local v6, "i":I
    :goto_0
    if-ltz v6, :cond_0

    .line 2126
    iget-object v0, p0, Lcom/oneplus/widget/ImageViewer;->m_StateCallbacks:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/widget/ImageViewer$StateCallback;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/widget/ImageViewer$StateCallback;->onImageBoundsAnimationStarted(Lcom/oneplus/widget/ImageViewer;IIII)V

    .line 2125
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 2123
    :cond_0
    return-void
.end method

.method protected onImageBoundsChanged(IIII)V
    .locals 7
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 2139
    iget-object v0, p0, Lcom/oneplus/widget/ImageViewer;->m_StateCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v6, v0, -0x1

    .local v6, "i":I
    :goto_0
    if-ltz v6, :cond_0

    .line 2140
    iget-object v0, p0, Lcom/oneplus/widget/ImageViewer;->m_StateCallbacks:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/widget/ImageViewer$StateCallback;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/widget/ImageViewer$StateCallback;->onImageBoundsChanged(Lcom/oneplus/widget/ImageViewer;IIII)V

    .line 2139
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 2141
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/widget/ImageViewer;->invalidate()V

    .line 2137
    return-void
.end method

.method protected onImageBoundsTypeChanged(Lcom/oneplus/widget/ImageViewer$ImageBoundsType;Lcom/oneplus/widget/ImageViewer$ImageBoundsType;)V
    .locals 2
    .param p1, "prevType"    # Lcom/oneplus/widget/ImageViewer$ImageBoundsType;
    .param p2, "type"    # Lcom/oneplus/widget/ImageViewer$ImageBoundsType;

    .prologue
    .line 2152
    iget-object v1, p0, Lcom/oneplus/widget/ImageViewer;->m_StateCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 2153
    iget-object v1, p0, Lcom/oneplus/widget/ImageViewer;->m_StateCallbacks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/widget/ImageViewer$StateCallback;

    invoke-virtual {v1, p0, p1, p2}, Lcom/oneplus/widget/ImageViewer$StateCallback;->onImageBoundsTypeChanged(Lcom/oneplus/widget/ImageViewer;Lcom/oneplus/widget/ImageViewer$ImageBoundsType;Lcom/oneplus/widget/ImageViewer$ImageBoundsType;)V

    .line 2152
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2150
    :cond_0
    return-void
.end method

.method protected onIntrinsicImageSizeChanged(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 2162
    return-void
.end method

.method protected onLongPress(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 2172
    iget-object v1, p0, Lcom/oneplus/widget/ImageViewer;->m_GestureCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 2174
    iget-object v1, p0, Lcom/oneplus/widget/ImageViewer;->m_GestureCallbacks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/widget/ImageViewer$GestureCallback;

    invoke-virtual {v1, p0, p1}, Lcom/oneplus/widget/ImageViewer$GestureCallback;->onLongPress(Lcom/oneplus/widget/ImageViewer;Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2175
    return-void

    .line 2172
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2170
    :cond_1
    return-void
.end method

.method protected onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 2187
    iget-object v1, p0, Lcom/oneplus/widget/ImageViewer;->m_GestureCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 2189
    iget-object v1, p0, Lcom/oneplus/widget/ImageViewer;->m_GestureCallbacks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/widget/ImageViewer$GestureCallback;

    invoke-virtual {v1, p0, p1}, Lcom/oneplus/widget/ImageViewer$GestureCallback;->onSingleTapConfirmed(Lcom/oneplus/widget/ImageViewer;Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2190
    const/4 v1, 0x1

    return v1

    .line 2187
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2192
    :cond_1
    return v2
.end method

.method protected onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 2203
    iget-object v1, p0, Lcom/oneplus/widget/ImageViewer;->m_GestureCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 2205
    iget-object v1, p0, Lcom/oneplus/widget/ImageViewer;->m_GestureCallbacks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/widget/ImageViewer$GestureCallback;

    invoke-virtual {v1, p0, p1}, Lcom/oneplus/widget/ImageViewer$GestureCallback;->onSingleTapUp(Lcom/oneplus/widget/ImageViewer;Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2206
    const/4 v1, 0x1

    return v1

    .line 2203
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2208
    :cond_1
    return v2
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/4 v0, 0x0

    .line 2220
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 2223
    invoke-direct {p0, v0, v0}, Lcom/oneplus/widget/ImageViewer;->refreshImageBounds(ZZ)V

    .line 2214
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2232
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2257
    :pswitch_0
    iget-boolean v0, p0, Lcom/oneplus/widget/ImageViewer;->m_IsTouchEventCancelled:Z

    if-nez v0, :cond_0

    .line 2259
    iget-object v0, p0, Lcom/oneplus/widget/ImageViewer;->m_GestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2260
    iget-object v0, p0, Lcom/oneplus/widget/ImageViewer;->m_ScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2266
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/oneplus/widget/ImageViewer;->m_OnTouchListener:Landroid/view/View$OnTouchListener;

    if-eqz v0, :cond_1

    .line 2267
    iget-object v0, p0, Lcom/oneplus/widget/ImageViewer;->m_OnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-interface {v0, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 2270
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 2238
    :pswitch_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/widget/ImageViewer;->m_IsTouchEventCancelled:Z

    .line 2239
    invoke-virtual {p0}, Lcom/oneplus/widget/ImageViewer;->cancelImageBoundsAnimation()V

    .line 2240
    iget-object v0, p0, Lcom/oneplus/widget/ImageViewer;->m_GestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2241
    iget-object v0, p0, Lcom/oneplus/widget/ImageViewer;->m_ScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 2250
    :pswitch_2
    iget-object v0, p0, Lcom/oneplus/widget/ImageViewer;->m_GestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2251
    iget-object v0, p0, Lcom/oneplus/widget/ImageViewer;->m_ScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2252
    invoke-direct {p0}, Lcom/oneplus/widget/ImageViewer;->completeUserMoving()Z

    goto :goto_0

    .line 2232
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onUserImageMovingCompleted()V
    .locals 2

    .prologue
    .line 2279
    iget-object v1, p0, Lcom/oneplus/widget/ImageViewer;->m_StateCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 2280
    iget-object v1, p0, Lcom/oneplus/widget/ImageViewer;->m_StateCallbacks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/widget/ImageViewer$StateCallback;

    invoke-virtual {v1, p0}, Lcom/oneplus/widget/ImageViewer$StateCallback;->onUserImageMovingCompleted(Lcom/oneplus/widget/ImageViewer;)V

    .line 2279
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2277
    :cond_0
    return-void
.end method

.method protected onUserImageMovingStarted()V
    .locals 2

    .prologue
    .line 2289
    iget-object v1, p0, Lcom/oneplus/widget/ImageViewer;->m_StateCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 2290
    iget-object v1, p0, Lcom/oneplus/widget/ImageViewer;->m_StateCallbacks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/widget/ImageViewer$StateCallback;

    invoke-virtual {v1, p0}, Lcom/oneplus/widget/ImageViewer$StateCallback;->onUserImageMovingStarted(Lcom/oneplus/widget/ImageViewer;)V

    .line 2289
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2287
    :cond_0
    return-void
.end method

.method protected refreshImageBounds(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .prologue
    .line 2300
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/oneplus/widget/ImageViewer;->refreshImageBounds(ZZ)V

    .line 2298
    return-void
.end method

.method public removeGestureCallback(Lcom/oneplus/widget/ImageViewer$GestureCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/oneplus/widget/ImageViewer$GestureCallback;

    .prologue
    .line 2413
    iget-object v0, p0, Lcom/oneplus/widget/ImageViewer;->m_GestureCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2411
    return-void
.end method

.method public removeStateCallback(Lcom/oneplus/widget/ImageViewer$StateCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/oneplus/widget/ImageViewer$StateCallback;

    .prologue
    .line 2423
    iget-object v0, p0, Lcom/oneplus/widget/ImageViewer;->m_StateCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2421
    return-void
.end method

.method public setFitToViewOnly(Z)V
    .locals 1
    .param p1, "fitToViewOnly"    # Z

    .prologue
    .line 2463
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/widget/ImageViewer;->setFitToViewOnly(ZZ)V

    .line 2461
    return-void
.end method

.method public setFitToViewOnly(ZZ)V
    .locals 1
    .param p1, "fitToViewOnly"    # Z
    .param p2, "animate"    # Z

    .prologue
    .line 2474
    iget-boolean v0, p0, Lcom/oneplus/widget/ImageViewer;->m_FitToView:Z

    if-ne v0, p1, :cond_0

    .line 2475
    return-void

    .line 2476
    :cond_0
    iput-boolean p1, p0, Lcom/oneplus/widget/ImageViewer;->m_FitToView:Z

    .line 2477
    if-eqz p1, :cond_1

    .line 2478
    invoke-virtual {p0, p2}, Lcom/oneplus/widget/ImageViewer;->fitImageToView(Z)Z

    .line 2472
    :goto_0
    return-void

    .line 2480
    :cond_1
    invoke-virtual {p0, p2}, Lcom/oneplus/widget/ImageViewer;->refreshImageBounds(Z)V

    goto :goto_0
.end method

.method public setImageBoundsAnimationEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 2490
    iget-boolean v0, p0, Lcom/oneplus/widget/ImageViewer;->m_IsImageBoundsAnimationEnabled:Z

    if-ne v0, p1, :cond_0

    .line 2491
    return-void

    .line 2492
    :cond_0
    iput-boolean p1, p0, Lcom/oneplus/widget/ImageViewer;->m_IsImageBoundsAnimationEnabled:Z

    .line 2488
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 2502
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/widget/ImageViewer;->setImageDrawable(Landroid/graphics/drawable/Drawable;Z)V

    .line 2500
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;Z)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "animate"    # Z

    .prologue
    const/4 v1, 0x0

    .line 2514
    iget-object v0, p0, Lcom/oneplus/widget/ImageViewer;->m_ImageDrawable:Landroid/graphics/drawable/Drawable;

    if-ne v0, p1, :cond_0

    .line 2515
    return-void

    .line 2518
    :cond_0
    iget-object v0, p0, Lcom/oneplus/widget/ImageViewer;->m_ImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 2519
    iget-object v0, p0, Lcom/oneplus/widget/ImageViewer;->m_ImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2525
    :cond_1
    iput-object p1, p0, Lcom/oneplus/widget/ImageViewer;->m_ImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 2528
    if-nez p1, :cond_2

    .line 2530
    invoke-direct {p0}, Lcom/oneplus/widget/ImageViewer;->completeUserMoving()Z

    .line 2531
    invoke-virtual {p0}, Lcom/oneplus/widget/ImageViewer;->cancelImageBoundsAnimation()V

    .line 2532
    iget-object v0, p0, Lcom/oneplus/widget/ImageViewer;->m_SourceImageBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 2533
    iget-object v0, p0, Lcom/oneplus/widget/ImageViewer;->m_TargetImageBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 2534
    iget-object v0, p0, Lcom/oneplus/widget/ImageViewer;->m_TargetImageBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/oneplus/widget/ImageViewer;->changeCurrentImageBounds(Landroid/graphics/Rect;)V

    .line 2535
    return-void

    .line 2539
    :cond_2
    if-eqz p1, :cond_3

    .line 2540
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2543
    :cond_3
    if-nez p2, :cond_4

    .line 2548
    :cond_4
    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Lcom/oneplus/widget/ImageViewer;->refreshImageBounds(ZZ)V

    .line 2511
    return-void
.end method

.method public setMaxImageRatio(F)V
    .locals 3
    .param p1, "ratio"    # F

    .prologue
    .line 2558
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 2559
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2560
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid image ratio : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2561
    :cond_1
    iput p1, p0, Lcom/oneplus/widget/ImageViewer;->m_MaxRatio:F

    .line 2562
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/oneplus/widget/ImageViewer;->refreshImageBounds(ZZ)V

    .line 2556
    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0
    .param p1, "l"    # Landroid/view/View$OnTouchListener;

    .prologue
    .line 2570
    iput-object p1, p0, Lcom/oneplus/widget/ImageViewer;->m_OnTouchListener:Landroid/view/View$OnTouchListener;

    .line 2568
    return-void
.end method

.method public setOverlayDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 2580
    iget-object v0, p0, Lcom/oneplus/widget/ImageViewer;->m_OverlayDrawable:Landroid/graphics/drawable/Drawable;

    if-ne v0, p1, :cond_0

    .line 2581
    return-void

    .line 2582
    :cond_0
    iput-object p1, p0, Lcom/oneplus/widget/ImageViewer;->m_OverlayDrawable:Landroid/graphics/drawable/Drawable;

    .line 2583
    invoke-virtual {p0}, Lcom/oneplus/widget/ImageViewer;->invalidate()V

    .line 2578
    return-void
.end method

.method public setPadding(IIII)V
    .locals 6
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 2591
    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/widget/ImageViewer;->setPadding(IIIIZ)V

    .line 2589
    return-void
.end method

.method public setPadding(IIIIZ)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I
    .param p5, "animate"    # Z

    .prologue
    .line 2605
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setPadding(IIII)V

    .line 2606
    const/4 v0, 0x0

    invoke-direct {p0, v0, p5}, Lcom/oneplus/widget/ImageViewer;->refreshImageBounds(ZZ)V

    .line 2603
    return-void
.end method

.method public setPaddingRelative(IIII)V
    .locals 6
    .param p1, "start"    # I
    .param p2, "top"    # I
    .param p3, "end"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 2614
    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/widget/ImageViewer;->setPaddingRelative(IIIIZ)V

    .line 2612
    return-void
.end method

.method public setPaddingRelative(IIIIZ)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "top"    # I
    .param p3, "end"    # I
    .param p4, "bottom"    # I
    .param p5, "animate"    # Z

    .prologue
    .line 2628
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 2629
    const/4 v0, 0x0

    invoke-direct {p0, v0, p5}, Lcom/oneplus/widget/ImageViewer;->refreshImageBounds(ZZ)V

    .line 2626
    return-void
.end method
