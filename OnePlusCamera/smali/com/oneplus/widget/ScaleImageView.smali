.class public Lcom/oneplus/widget/ScaleImageView;
.super Landroid/view/View;
.source "ScaleImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/widget/ScaleImageView$8;,
        Lcom/oneplus/widget/ScaleImageView$GestureCallback;,
        Lcom/oneplus/widget/ScaleImageView$StateCallback;,
        Lcom/oneplus/widget/ScaleImageView$BoundsType;
    }
.end annotation


# static fields
.field private static final ACCELERATION_SCROLL_IMAGE:F = 0.04f

.field public static final DEFAULT_MAX_IMAGE_SCALE_RATIO:F = 2.0f

.field public static final DEFAULT_MIN_IMAGE_SCALE_RATIO:F = 0.6f

.field private static final DURATION_ANIMATION_MIN:J = 0x64L

.field private static final DURATION_SCALE_ANIMATION:J = 0xfaL

.field private static final DURATION_SET_BOUNDS_ANIMATION:J = 0xc8L

.field private static final LOG_ENABLED:Z = false

.field private static final MSG_SCROLL_IMAGE:I = 0x2711

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private m_BoundsAnimator:Landroid/animation/ValueAnimator;

.field private m_DoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

.field private m_GestureCallback:Lcom/oneplus/widget/ScaleImageView$GestureCallback;

.field private m_GestureDetector:Landroid/view/GestureDetector;

.field private m_GestureListener:Landroid/view/GestureDetector$OnGestureListener;

.field private final m_Handler:Landroid/os/Handler;

.field private m_ImageAdjustedBounds:Landroid/graphics/Rect;

.field private m_ImageBounds:Landroid/graphics/Rect;

.field private m_ImageBoundsType:Lcom/oneplus/widget/ScaleImageView$BoundsType;

.field private m_ImageDrawable:Landroid/graphics/drawable/Drawable;

.field private m_ImageFitScreenLongSideBounds:Landroid/graphics/Rect;

.field private m_ImageFitScreenShortSideBounds:Landroid/graphics/Rect;

.field private m_ImageHeight:I

.field private m_ImageOriginalSizeBounds:Landroid/graphics/Rect;

.field private m_ImageWidth:I

.field private m_IsBoundsChangeEnabled:Z

.field private m_IsCustomizedSizeUsed:Z

.field private m_IsDoubleTapTriggered:Z

.field private m_IsScaleTriggered:Z

.field private m_IsScrollTriggered:Z

.field private m_IsSetBoundsAfterSetDrawable:Z

.field private m_MaxImageScaleRatio:F

.field private m_MaxImageScaledHeight:I

.field private m_MaxImageScaledWidth:I

.field private m_MinImageScaleRatio:F

.field private m_MinImageScaledHeight:I

.field private m_MinImageScaledWidth:I

.field private m_ScaleAnimator:Landroid/animation/ValueAnimator;

.field private m_ScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private m_ScaleGestureListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

.field private m_StateCallback:Lcom/oneplus/widget/ScaleImageView$StateCallback;

.field private m_TempBounds:Landroid/graphics/Rect;

.field private m_TempScaleBounds:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/oneplus/widget/ScaleImageView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/widget/ScaleImageView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 244
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageAdjustedBounds:Landroid/graphics/Rect;

    .line 44
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBounds:Landroid/graphics/Rect;

    .line 45
    sget-object v0, Lcom/oneplus/widget/ScaleImageView$BoundsType;->FIT_SHORT_SIDE:Lcom/oneplus/widget/ScaleImageView$BoundsType;

    iput-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBoundsType:Lcom/oneplus/widget/ScaleImageView$BoundsType;

    .line 46
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageFitScreenShortSideBounds:Landroid/graphics/Rect;

    .line 47
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageFitScreenLongSideBounds:Landroid/graphics/Rect;

    .line 50
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageOriginalSizeBounds:Landroid/graphics/Rect;

    .line 60
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_MaxImageScaleRatio:F

    .line 63
    const v0, 0x3f19999a    # 0.6f

    iput v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_MinImageScaleRatio:F

    .line 67
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_TempBounds:Landroid/graphics/Rect;

    .line 68
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_TempScaleBounds:Landroid/graphics/Rect;

    .line 125
    new-instance v0, Lcom/oneplus/widget/ScaleImageView$1;

    invoke-direct {v0, p0}, Lcom/oneplus/widget/ScaleImageView$1;-><init>(Lcom/oneplus/widget/ScaleImageView;)V

    iput-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_Handler:Landroid/os/Handler;

    .line 137
    new-instance v0, Lcom/oneplus/widget/ScaleImageView$2;

    invoke-direct {v0, p0}, Lcom/oneplus/widget/ScaleImageView$2;-><init>(Lcom/oneplus/widget/ScaleImageView;)V

    iput-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_DoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    .line 168
    new-instance v0, Lcom/oneplus/widget/ScaleImageView$3;

    invoke-direct {v0, p0}, Lcom/oneplus/widget/ScaleImageView$3;-><init>(Lcom/oneplus/widget/ScaleImageView;)V

    iput-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_GestureListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 205
    new-instance v0, Lcom/oneplus/widget/ScaleImageView$4;

    invoke-direct {v0, p0}, Lcom/oneplus/widget/ScaleImageView$4;-><init>(Lcom/oneplus/widget/ScaleImageView;)V

    iput-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ScaleGestureListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    .line 246
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/oneplus/widget/ScaleImageView;->m_GestureListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_GestureDetector:Landroid/view/GestureDetector;

    .line 247
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_GestureDetector:Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/oneplus/widget/ScaleImageView;->m_DoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 248
    new-instance v0, Landroid/view/ScaleGestureDetector;

    iget-object v1, p0, Lcom/oneplus/widget/ScaleImageView;->m_ScaleGestureListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-direct {v0, p1, v1}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 249
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/widget/ScaleImageView;Landroid/os/Message;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/widget/ScaleImageView;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/oneplus/widget/ScaleImageView;->handleMessage(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/oneplus/widget/ScaleImageView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/oneplus/widget/ScaleImageView;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/widget/ScaleImageView;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageAdjustedBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/oneplus/widget/ScaleImageView;Landroid/graphics/Rect;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/widget/ScaleImageView;
    .param p1, "x1"    # Landroid/graphics/Rect;
    .param p2, "x2"    # Z

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/oneplus/widget/ScaleImageView;->setImageBounds(Landroid/graphics/Rect;Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/oneplus/widget/ScaleImageView;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/widget/ScaleImageView;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_TempBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/oneplus/widget/ScaleImageView;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/widget/ScaleImageView;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/oneplus/widget/ScaleImageView;->updateImageBounds()V

    return-void
.end method

.method static synthetic access$1400(Lcom/oneplus/widget/ScaleImageView;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/widget/ScaleImageView;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/oneplus/widget/ScaleImageView;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/widget/ScaleImageView;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_TempScaleBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/oneplus/widget/ScaleImageView;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/widget/ScaleImageView;

    .prologue
    .line 25
    iget v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_MaxImageScaledWidth:I

    return v0
.end method

.method static synthetic access$1700(Lcom/oneplus/widget/ScaleImageView;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/widget/ScaleImageView;

    .prologue
    .line 25
    iget v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_MaxImageScaledHeight:I

    return v0
.end method

.method static synthetic access$1800(Lcom/oneplus/widget/ScaleImageView;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/widget/ScaleImageView;

    .prologue
    .line 25
    iget v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_MinImageScaledWidth:I

    return v0
.end method

.method static synthetic access$1900(Lcom/oneplus/widget/ScaleImageView;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/widget/ScaleImageView;

    .prologue
    .line 25
    iget v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_MinImageScaledHeight:I

    return v0
.end method

.method static synthetic access$200(Lcom/oneplus/widget/ScaleImageView;)Lcom/oneplus/widget/ScaleImageView$GestureCallback;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/widget/ScaleImageView;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_GestureCallback:Lcom/oneplus/widget/ScaleImageView$GestureCallback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/widget/ScaleImageView;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/widget/ScaleImageView;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/oneplus/widget/ScaleImageView;->onGestureDoubleTap(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/oneplus/widget/ScaleImageView;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/widget/ScaleImageView;
    .param p1, "x1"    # Landroid/view/MotionEvent;
    .param p2, "x2"    # Landroid/view/MotionEvent;
    .param p3, "x3"    # F
    .param p4, "x4"    # F

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/widget/ScaleImageView;->onGestureScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/oneplus/widget/ScaleImageView;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/widget/ScaleImageView;
    .param p1, "x1"    # Landroid/view/MotionEvent;
    .param p2, "x2"    # Landroid/view/MotionEvent;
    .param p3, "x3"    # F
    .param p4, "x4"    # F

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/widget/ScaleImageView;->onGestureFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/oneplus/widget/ScaleImageView;FFF)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/widget/ScaleImageView;
    .param p1, "x1"    # F
    .param p2, "x2"    # F
    .param p3, "x3"    # F

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/widget/ScaleImageView;->onGestureScale(FFF)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/oneplus/widget/ScaleImageView;)Lcom/oneplus/widget/ScaleImageView$BoundsType;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/widget/ScaleImageView;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBoundsType:Lcom/oneplus/widget/ScaleImageView$BoundsType;

    return-object v0
.end method

.method static synthetic access$800(Lcom/oneplus/widget/ScaleImageView;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/widget/ScaleImageView;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$900(Lcom/oneplus/widget/ScaleImageView;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/widget/ScaleImageView;
    .param p1, "x1"    # Landroid/graphics/Rect;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/oneplus/widget/ScaleImageView;->calculateAdjustedImageBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method private calculateAdjustedImageBounds(IIII)Landroid/graphics/Rect;
    .locals 7
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    const/4 v6, 0x0

    .line 263
    sub-int v3, p3, p1

    .line 264
    .local v3, "width":I
    sub-int v0, p4, p2

    .line 265
    .local v0, "height":I
    invoke-virtual {p0}, Lcom/oneplus/widget/ScaleImageView;->getWidth()I

    move-result v2

    .line 266
    .local v2, "viewWidth":I
    invoke-virtual {p0}, Lcom/oneplus/widget/ScaleImageView;->getHeight()I

    move-result v1

    .line 267
    .local v1, "viewHeight":I
    if-eqz v3, :cond_0

    if-nez v0, :cond_1

    .line 268
    :cond_0
    const/4 v4, 0x0

    .line 316
    :goto_0
    return-object v4

    .line 271
    :cond_1
    iget-object v4, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageAdjustedBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 274
    if-ge v3, v2, :cond_3

    if-ge v0, v1, :cond_3

    .line 275
    iget-object v4, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageAdjustedBounds:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageFitScreenShortSideBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 316
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageAdjustedBounds:Landroid/graphics/Rect;

    goto :goto_0

    .line 278
    :cond_3
    if-ge v3, v2, :cond_5

    .line 280
    iget-object v4, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageAdjustedBounds:Landroid/graphics/Rect;

    sub-int v5, v2, v3

    div-int/lit8 v5, v5, 0x2

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 281
    iget-object v4, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageAdjustedBounds:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageAdjustedBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v3

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 296
    :cond_4
    :goto_2
    if-ge v0, v1, :cond_7

    .line 298
    iget-object v4, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageAdjustedBounds:Landroid/graphics/Rect;

    sub-int v5, v1, v0

    div-int/lit8 v5, v5, 0x2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 299
    iget-object v4, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageAdjustedBounds:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageAdjustedBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v0

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 285
    :cond_5
    iget-object v4, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageAdjustedBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    if-lez v4, :cond_6

    .line 287
    iget-object v4, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageAdjustedBounds:Landroid/graphics/Rect;

    iput v6, v4, Landroid/graphics/Rect;->left:I

    .line 288
    iget-object v4, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageAdjustedBounds:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageAdjustedBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v3

    iput v5, v4, Landroid/graphics/Rect;->right:I

    goto :goto_2

    .line 290
    :cond_6
    iget-object v4, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageAdjustedBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    if-ge v4, v2, :cond_4

    .line 292
    iget-object v4, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageAdjustedBounds:Landroid/graphics/Rect;

    iput v2, v4, Landroid/graphics/Rect;->right:I

    .line 293
    iget-object v4, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageAdjustedBounds:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageAdjustedBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v3

    iput v5, v4, Landroid/graphics/Rect;->left:I

    goto :goto_2

    .line 303
    :cond_7
    iget-object v4, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageAdjustedBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-lez v4, :cond_8

    .line 305
    iget-object v4, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageAdjustedBounds:Landroid/graphics/Rect;

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 306
    iget-object v4, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageAdjustedBounds:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageAdjustedBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v0

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 308
    :cond_8
    iget-object v4, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageAdjustedBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    if-ge v4, v1, :cond_2

    .line 310
    iget-object v4, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageAdjustedBounds:Landroid/graphics/Rect;

    iput v1, v4, Landroid/graphics/Rect;->bottom:I

    .line 311
    iget-object v4, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageAdjustedBounds:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageAdjustedBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v0

    iput v5, v4, Landroid/graphics/Rect;->top:I

    goto :goto_1
.end method

.method private calculateAdjustedImageBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 4
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 256
    if-nez p1, :cond_0

    .line 257
    const/4 v0, 0x0

    .line 258
    :goto_0
    return-object v0

    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/oneplus/widget/ScaleImageView;->calculateAdjustedImageBounds(IIII)Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0
.end method

.method private calculateFitScreenImageBounds(IIII)V
    .locals 7
    .param p1, "imageWidth"    # I
    .param p2, "imageHeight"    # I
    .param p3, "viewWidth"    # I
    .param p4, "viewHeight"    # I

    .prologue
    const/high16 v1, 0x40000000    # 2.0f

    .line 323
    int-to-float v0, p3

    div-float v5, v0, v1

    int-to-float v0, p4

    div-float v6, v0, v1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/oneplus/widget/ScaleImageView;->calculateFitScreenImageBounds(IIIIFF)V

    .line 324
    return-void
.end method

.method private calculateFitScreenImageBounds(IIIIFF)V
    .locals 16
    .param p1, "imageWidth"    # I
    .param p2, "imageHeight"    # I
    .param p3, "viewWidth"    # I
    .param p4, "viewHeight"    # I
    .param p5, "pivotX"    # F
    .param p6, "pivotY"    # F

    .prologue
    .line 328
    if-lez p1, :cond_0

    if-lez p2, :cond_0

    if-lez p3, :cond_0

    if-gtz p4, :cond_1

    .line 371
    :cond_0
    :goto_0
    return-void

    .line 332
    :cond_1
    move/from16 v0, p1

    int-to-float v11, v0

    move/from16 v0, p3

    int-to-float v12, v0

    div-float v10, v11, v12

    .line 333
    .local v10, "widthRatio":F
    move/from16 v0, p2

    int-to-float v11, v0

    move/from16 v0, p4

    int-to-float v12, v0

    div-float v6, v11, v12

    .line 338
    .local v6, "heightRatio":F
    cmpl-float v11, v10, v6

    if-ltz v11, :cond_2

    .line 340
    move/from16 v0, p1

    int-to-float v11, v0

    div-float v4, v11, v10

    .line 341
    .local v4, "adjustedFitShortSideWidth":F
    move/from16 v0, p2

    int-to-float v11, v0

    div-float v3, v11, v10

    .line 342
    .local v3, "adjustedFitShortSideHeight":F
    move/from16 v0, p1

    int-to-float v11, v0

    div-float v2, v11, v6

    .line 343
    .local v2, "adjustedFitLongSideWidth":F
    move/from16 v0, p2

    int-to-float v11, v0

    div-float v1, v11, v6

    .line 354
    .local v1, "adjustedFitLongSideHeight":F
    :goto_1
    div-int/lit8 v11, p3, 0x2

    int-to-float v11, v11

    const/high16 v12, 0x40000000    # 2.0f

    div-float v12, v4, v12

    sub-float v7, v11, v12

    .line 355
    .local v7, "left":F
    div-int/lit8 v11, p4, 0x2

    int-to-float v11, v11

    const/high16 v12, 0x40000000    # 2.0f

    div-float v12, v3, v12

    sub-float v9, v11, v12

    .line 356
    .local v9, "top":F
    add-float v8, v7, v4

    .line 357
    .local v8, "right":F
    add-float v5, v9, v3

    .line 358
    .local v5, "bottom":F
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oneplus/widget/ScaleImageView;->m_ImageFitScreenShortSideBounds:Landroid/graphics/Rect;

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v12

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v13

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v14

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v15

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/graphics/Rect;->set(IIII)V

    .line 361
    move/from16 v0, p3

    int-to-float v11, v0

    div-float v11, p5, v11

    mul-float/2addr v11, v2

    sub-float v7, p5, v11

    .line 362
    move/from16 v0, p4

    int-to-float v11, v0

    div-float v11, p6, v11

    mul-float/2addr v11, v1

    sub-float v9, p6, v11

    .line 363
    add-float v8, v7, v2

    .line 364
    add-float v5, v9, v1

    .line 365
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oneplus/widget/ScaleImageView;->m_ImageFitScreenLongSideBounds:Landroid/graphics/Rect;

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v12

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v13

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v14

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v15

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/graphics/Rect;->set(IIII)V

    .line 368
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/widget/ScaleImageView;->updateMaxMinImageScaledSize()V

    .line 370
    sget-object v11, Lcom/oneplus/widget/ScaleImageView;->TAG:Ljava/lang/String;

    const-string v12, "calculateFitScreenImageBounds() - Short: "

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/widget/ScaleImageView;->m_ImageFitScreenShortSideBounds:Landroid/graphics/Rect;

    const-string v14, ", long: "

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/widget/ScaleImageView;->m_ImageFitScreenLongSideBounds:Landroid/graphics/Rect;

    invoke-static {v11, v12, v13, v14, v15}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 347
    .end local v1    # "adjustedFitLongSideHeight":F
    .end local v2    # "adjustedFitLongSideWidth":F
    .end local v3    # "adjustedFitShortSideHeight":F
    .end local v4    # "adjustedFitShortSideWidth":F
    .end local v5    # "bottom":F
    .end local v7    # "left":F
    .end local v8    # "right":F
    .end local v9    # "top":F
    :cond_2
    move/from16 v0, p1

    int-to-float v11, v0

    div-float v4, v11, v6

    .line 348
    .restart local v4    # "adjustedFitShortSideWidth":F
    move/from16 v0, p2

    int-to-float v11, v0

    div-float v3, v11, v6

    .line 349
    .restart local v3    # "adjustedFitShortSideHeight":F
    move/from16 v0, p1

    int-to-float v11, v0

    div-float v2, v11, v10

    .line 350
    .restart local v2    # "adjustedFitLongSideWidth":F
    move/from16 v0, p2

    int-to-float v11, v0

    div-float v1, v11, v10

    .restart local v1    # "adjustedFitLongSideHeight":F
    goto/16 :goto_1
.end method

.method private calculateOriginalSizeImageBounds(II)V
    .locals 2
    .param p1, "viewWidth"    # I
    .param p2, "viewHeight"    # I

    .prologue
    .line 377
    div-int/lit8 v0, p1, 0x2

    int-to-float v0, v0

    div-int/lit8 v1, p2, 0x2

    int-to-float v1, v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/oneplus/widget/ScaleImageView;->calculateOriginalSizeImageBounds(IIFF)V

    .line 378
    return-void
.end method

.method private calculateOriginalSizeImageBounds(IIFF)V
    .locals 11
    .param p1, "viewWidth"    # I
    .param p2, "viewHeight"    # I
    .param p3, "pivotX"    # F
    .param p4, "pivotY"    # F

    .prologue
    .line 382
    iget v6, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageWidth:I

    if-lez v6, :cond_0

    iget v6, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageHeight:I

    if-lez v6, :cond_0

    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    .line 398
    :cond_0
    :goto_0
    return-void

    .line 386
    :cond_1
    iget v6, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageWidth:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBounds:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    div-float v5, v6, v7

    .line 387
    .local v5, "widthRatio":F
    iget v6, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageHeight:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBounds:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    div-float v1, v6, v7

    .line 390
    .local v1, "heightRatio":F
    iget-object v6, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    sub-float v6, p3, v6

    mul-float/2addr v6, v5

    sub-float v2, p3, v6

    .line 391
    .local v2, "left":F
    iget-object v6, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    sub-float v6, p4, v6

    mul-float/2addr v6, v1

    sub-float v4, p4, v6

    .line 392
    .local v4, "top":F
    iget v6, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageWidth:I

    int-to-float v6, v6

    add-float v3, v2, v6

    .line 393
    .local v3, "right":F
    iget v6, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageHeight:I

    int-to-float v6, v6

    add-float v0, v4, v6

    .line 394
    .local v0, "bottom":F
    iget-object v6, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageOriginalSizeBounds:Landroid/graphics/Rect;

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v8

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v9

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v10

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 395
    iget-object v6, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageOriginalSizeBounds:Landroid/graphics/Rect;

    invoke-direct {p0, p1, p2, v6}, Lcom/oneplus/widget/ScaleImageView;->moveToVisibleArea(IILandroid/graphics/Rect;)V

    .line 397
    sget-object v6, Lcom/oneplus/widget/ScaleImageView;->TAG:Ljava/lang/String;

    const-string v7, "calculateOriginalSizeImageBounds() - Original: "

    iget-object v8, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageOriginalSizeBounds:Landroid/graphics/Rect;

    invoke-static {v6, v7, v8}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private handleMessage(Landroid/os/Message;)Z
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 432
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    move v1, v8

    .line 446
    :goto_0
    return v1

    .line 435
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .line 436
    .local v0, "params":[Ljava/lang/Object;
    aget-object v1, v0, v8

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 437
    .local v2, "prevVelocityX":F
    aget-object v1, v0, v7

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 438
    .local v3, "prevVelocityY":F
    const/4 v1, 0x2

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 439
    .local v4, "prevScrollTimeMillis":J
    const/4 v1, 0x3

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .local v6, "keepScrolling":Z
    move-object v1, p0

    .line 440
    invoke-direct/range {v1 .. v6}, Lcom/oneplus/widget/ScaleImageView;->scrollImage(FFJZ)V

    move v1, v7

    .line 446
    goto :goto_0

    .line 432
    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
    .end packed-switch
.end method

.method private moveToVisibleArea(IILandroid/graphics/Rect;)V
    .locals 4
    .param p1, "viewWidth"    # I
    .param p2, "viewHeight"    # I
    .param p3, "bounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v3, 0x0

    .line 493
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 494
    .local v1, "width":I
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 495
    .local v0, "height":I
    if-ge v1, p1, :cond_2

    .line 497
    sub-int v2, p1, v1

    div-int/lit8 v2, v2, 0x2

    iput v2, p3, Landroid/graphics/Rect;->left:I

    .line 498
    iget v2, p3, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v1

    iput v2, p3, Landroid/graphics/Rect;->right:I

    .line 504
    :cond_0
    :goto_0
    if-ge v0, p2, :cond_4

    .line 506
    sub-int v2, p2, v0

    div-int/lit8 v2, v2, 0x2

    iput v2, p3, Landroid/graphics/Rect;->top:I

    .line 507
    iget v2, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v0

    iput v2, p3, Landroid/graphics/Rect;->bottom:I

    .line 513
    :cond_1
    :goto_1
    return-void

    .line 500
    :cond_2
    iget v2, p3, Landroid/graphics/Rect;->left:I

    if-lez v2, :cond_3

    .line 501
    iget v2, p3, Landroid/graphics/Rect;->left:I

    neg-int v2, v2

    invoke-virtual {p3, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    .line 502
    :cond_3
    iget v2, p3, Landroid/graphics/Rect;->right:I

    if-ge v2, p1, :cond_0

    .line 503
    iget v2, p3, Landroid/graphics/Rect;->right:I

    sub-int v2, p1, v2

    invoke-virtual {p3, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    .line 509
    :cond_4
    iget v2, p3, Landroid/graphics/Rect;->top:I

    if-lez v2, :cond_5

    .line 510
    iget v2, p3, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    invoke-virtual {p3, v3, v2}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_1

    .line 511
    :cond_5
    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    if-ge v2, p2, :cond_1

    .line 512
    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    sub-int v2, p2, v2

    invoke-virtual {p3, v3, v2}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_1
.end method

.method private offsetImageBounds(II)V
    .locals 6
    .param p1, "offsetX"    # I
    .param p2, "offsetY"    # I

    .prologue
    .line 519
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int v1, v0, p1

    .line 520
    .local v1, "newLeft":I
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int v2, v0, p2

    .line 521
    .local v2, "newTop":I
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    add-int v3, v1, v0

    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    add-int v4, v2, v0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/widget/ScaleImageView;->setImageBounds(IIIIZ)V

    .line 522
    return-void
.end method

.method private onGestureDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x1

    .line 547
    iput-boolean v7, p0, Lcom/oneplus/widget/ScaleImageView;->m_IsDoubleTapTriggered:Z

    .line 548
    sget-object v0, Lcom/oneplus/widget/ScaleImageView$8;->$SwitchMap$com$oneplus$widget$ScaleImageView$BoundsType:[I

    iget-object v1, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBoundsType:Lcom/oneplus/widget/ScaleImageView$BoundsType;

    invoke-virtual {v1}, Lcom/oneplus/widget/ScaleImageView$BoundsType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 573
    :cond_0
    :goto_0
    return v7

    .line 553
    :pswitch_0
    iget v1, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageWidth:I

    iget v2, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageHeight:I

    invoke-virtual {p0}, Lcom/oneplus/widget/ScaleImageView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/oneplus/widget/ScaleImageView;->getHeight()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/oneplus/widget/ScaleImageView;->calculateFitScreenImageBounds(IIIIFF)V

    .line 554
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageFitScreenShortSideBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget v1, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageWidth:I

    if-ge v0, v1, :cond_0

    .line 556
    invoke-virtual {p0}, Lcom/oneplus/widget/ScaleImageView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/oneplus/widget/ScaleImageView;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/oneplus/widget/ScaleImageView;->calculateOriginalSizeImageBounds(IIFF)V

    .line 557
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageOriginalSizeBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v7}, Lcom/oneplus/widget/ScaleImageView;->setImageBounds(Landroid/graphics/Rect;Z)V

    goto :goto_0

    .line 561
    :pswitch_1
    invoke-virtual {p0}, Lcom/oneplus/widget/ScaleImageView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/oneplus/widget/ScaleImageView;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/oneplus/widget/ScaleImageView;->calculateOriginalSizeImageBounds(IIFF)V

    .line 562
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageOriginalSizeBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v7}, Lcom/oneplus/widget/ScaleImageView;->setImageBounds(Landroid/graphics/Rect;Z)V

    goto :goto_0

    .line 565
    :pswitch_2
    iget v1, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageWidth:I

    iget v2, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageHeight:I

    invoke-virtual {p0}, Lcom/oneplus/widget/ScaleImageView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/oneplus/widget/ScaleImageView;->getHeight()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/oneplus/widget/ScaleImageView;->calculateFitScreenImageBounds(IIIIFF)V

    .line 566
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageFitScreenShortSideBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v7}, Lcom/oneplus/widget/ScaleImageView;->setImageBounds(Landroid/graphics/Rect;Z)V

    goto :goto_0

    .line 569
    :pswitch_3
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageFitScreenShortSideBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v7}, Lcom/oneplus/widget/ScaleImageView;->setImageBounds(Landroid/graphics/Rect;Z)V

    goto :goto_0

    .line 548
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private onGestureFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 8
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/4 v5, 0x1

    const/high16 v2, 0x447a0000    # 1000.0f

    .line 580
    sget-object v0, Lcom/oneplus/widget/ScaleImageView$8;->$SwitchMap$com$oneplus$widget$ScaleImageView$BoundsType:[I

    iget-object v1, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBoundsType:Lcom/oneplus/widget/ScaleImageView$BoundsType;

    invoke-virtual {v1}, Lcom/oneplus/widget/ScaleImageView$BoundsType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 585
    div-float v1, p3, v2

    div-float v2, p4, v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const-wide/16 v6, 0xa

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/oneplus/widget/ScaleImageView;->sendMessageScrollImage(FFJZJ)V

    .line 588
    :goto_0
    return v5

    .line 583
    :pswitch_0
    const/4 v5, 0x0

    goto :goto_0

    .line 580
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private onGestureScale(FFF)Z
    .locals 2
    .param p1, "factor"    # F
    .param p2, "pivotX"    # F
    .param p3, "pivotY"    # F

    .prologue
    const/4 v1, 0x1

    .line 595
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_GestureCallback:Lcom/oneplus/widget/ScaleImageView$GestureCallback;

    if-eqz v0, :cond_0

    .line 597
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_GestureCallback:Lcom/oneplus/widget/ScaleImageView$GestureCallback;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/oneplus/widget/ScaleImageView$GestureCallback;->onScale(Lcom/oneplus/widget/ScaleImageView;FFF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 604
    :goto_0
    return v1

    .line 600
    :cond_0
    iput-boolean v1, p0, Lcom/oneplus/widget/ScaleImageView;->m_IsScaleTriggered:Z

    .line 603
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/widget/ScaleImageView;->setImageScaleBy(FFFZ)V

    goto :goto_0
.end method

.method private onGestureScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 12
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 611
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_GestureCallback:Lcom/oneplus/widget/ScaleImageView$GestureCallback;

    if-eqz v0, :cond_0

    .line 613
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_GestureCallback:Lcom/oneplus/widget/ScaleImageView$GestureCallback;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move/from16 v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/widget/ScaleImageView$GestureCallback;->onScroll(Lcom/oneplus/widget/ScaleImageView;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 614
    const/4 v0, 0x1

    .line 633
    :goto_0
    return v0

    .line 616
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_IsScrollTriggered:Z

    .line 617
    sget-object v0, Lcom/oneplus/widget/ScaleImageView$8;->$SwitchMap$com$oneplus$widget$ScaleImageView$BoundsType:[I

    iget-object v1, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBoundsType:Lcom/oneplus/widget/ScaleImageView$BoundsType;

    invoke-virtual {v1}, Lcom/oneplus/widget/ScaleImageView$BoundsType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 623
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int v11, v0, v1

    .line 624
    .local v11, "width":I
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int v7, v0, v1

    .line 625
    .local v7, "height":I
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    sub-float/2addr v0, p3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 626
    .local v8, "left":I
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    sub-float v0, v0, p4

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v10

    .line 627
    .local v10, "top":I
    add-int v9, v8, v11

    .line 628
    .local v9, "right":I
    add-int v6, v10, v7

    .line 629
    .local v6, "bottom":I
    invoke-direct {p0, v8, v10, v9, v6}, Lcom/oneplus/widget/ScaleImageView;->calculateAdjustedImageBounds(IIII)Landroid/graphics/Rect;

    .line 630
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageAdjustedBounds:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/oneplus/widget/ScaleImageView;->setImageBounds(Landroid/graphics/Rect;Z)V

    .line 633
    const/4 v0, 0x1

    goto :goto_0

    .line 620
    .end local v6    # "bottom":I
    .end local v7    # "height":I
    .end local v8    # "left":I
    .end local v9    # "right":I
    .end local v10    # "top":I
    .end local v11    # "width":I
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 617
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private resetDrawable()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 479
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 481
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 482
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 483
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;

    if-eqz v0, :cond_0

    .line 484
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;

    invoke-virtual {v0, v2}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->setHighQualityBitmapEnabled(Z)V

    .line 485
    :cond_0
    iput-object v3, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 487
    :cond_1
    return-void
.end method

.method private scrollImage(FFJZ)V
    .locals 31
    .param p1, "prevVelocityX"    # F
    .param p2, "prevVelocityY"    # F
    .param p3, "prevScrollTimeMillis"    # J
    .param p5, "keepScrolling"    # Z

    .prologue
    .line 723
    const/4 v4, 0x0

    cmpl-float v4, p1, v4

    if-nez v4, :cond_1

    const/4 v4, 0x0

    cmpl-float v4, p2, v4

    if-nez v4, :cond_1

    .line 754
    :cond_0
    :goto_0
    return-void

    .line 729
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 730
    .local v7, "nowTimeMillis":J
    sub-long v20, v7, p3

    .line 731
    .local v20, "timeDiffMillis":J
    move-wide/from16 v0, v20

    long-to-float v4, v0

    mul-float v4, v4, p1

    float-to-double v10, v4

    const/4 v4, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->signum(F)F

    move-result v9

    neg-float v9, v9

    mul-float/2addr v4, v9

    const v9, 0x3d23d70a    # 0.04f

    mul-float/2addr v4, v9

    float-to-double v0, v4

    move-wide/from16 v24, v0

    move-wide/from16 v0, v20

    long-to-double v0, v0

    move-wide/from16 v26, v0

    const-wide/high16 v28, 0x4000000000000000L    # 2.0

    invoke-static/range {v26 .. v29}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v26

    mul-double v24, v24, v26

    add-double v14, v10, v24

    .line 732
    .local v14, "diffX":D
    move-wide/from16 v0, v20

    long-to-float v4, v0

    mul-float v4, v4, p2

    float-to-double v10, v4

    const/4 v4, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->signum(F)F

    move-result v9

    neg-float v9, v9

    mul-float/2addr v4, v9

    const v9, 0x3d23d70a    # 0.04f

    mul-float/2addr v4, v9

    float-to-double v0, v4

    move-wide/from16 v24, v0

    move-wide/from16 v0, v20

    long-to-double v0, v0

    move-wide/from16 v26, v0

    const-wide/high16 v28, 0x4000000000000000L    # 2.0

    invoke-static/range {v26 .. v29}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v26

    mul-double v24, v24, v26

    add-double v16, v10, v24

    .line 733
    .local v16, "diffY":D
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    sub-int v23, v4, v9

    .line 734
    .local v23, "width":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    sub-int v13, v4, v9

    .line 735
    .local v13, "height":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-double v10, v4

    add-double/2addr v10, v14

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    long-to-int v0, v10

    move/from16 v18, v0

    .line 736
    .local v18, "left":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-double v10, v4

    add-double v10, v10, v16

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    long-to-int v0, v10

    move/from16 v22, v0

    .line 737
    .local v22, "top":I
    add-int v19, v18, v23

    .line 738
    .local v19, "right":I
    add-int v12, v22, v13

    .line 739
    .local v12, "bottom":I
    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v22

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3, v12}, Lcom/oneplus/widget/ScaleImageView;->calculateAdjustedImageBounds(IIII)Landroid/graphics/Rect;

    .line 740
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/widget/ScaleImageView;->m_ImageAdjustedBounds:Landroid/graphics/Rect;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v9}, Lcom/oneplus/widget/ScaleImageView;->setImageBounds(Landroid/graphics/Rect;Z)V

    .line 743
    if-eqz p5, :cond_0

    .line 745
    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->signum(F)F

    move-result v4

    neg-float v4, v4

    const v9, 0x3d23d70a    # 0.04f

    mul-float/2addr v4, v9

    move-wide/from16 v0, v20

    long-to-float v9, v0

    mul-float/2addr v4, v9

    add-float v5, p1, v4

    .line 746
    .local v5, "vX":F
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->signum(F)F

    move-result v4

    neg-float v4, v4

    const v9, 0x3d23d70a    # 0.04f

    mul-float/2addr v4, v9

    move-wide/from16 v0, v20

    long-to-float v9, v0

    mul-float/2addr v4, v9

    add-float v6, p2, v4

    .line 748
    .local v6, "vY":F
    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->signum(F)F

    move-result v4

    invoke-static {v5}, Ljava/lang/Math;->signum(F)F

    move-result v9

    cmpl-float v4, v4, v9

    if-eqz v4, :cond_2

    .line 749
    const/4 v5, 0x0

    .line 750
    :cond_2
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->signum(F)F

    move-result v4

    invoke-static {v6}, Ljava/lang/Math;->signum(F)F

    move-result v9

    cmpl-float v4, v4, v9

    if-eqz v4, :cond_3

    .line 751
    const/4 v6, 0x0

    .line 752
    :cond_3
    const-wide/16 v10, 0xa

    move-object/from16 v4, p0

    move/from16 v9, p5

    invoke-direct/range {v4 .. v11}, Lcom/oneplus/widget/ScaleImageView;->sendMessageScrollImage(FFJZJ)V

    goto/16 :goto_0
.end method

.method private sendMessageScrollImage(FFJZJ)V
    .locals 7
    .param p1, "vX"    # F
    .param p2, "vY"    # F
    .param p3, "timeMillis"    # J
    .param p5, "keepScrolling"    # Z
    .param p6, "delayMillis"    # J

    .prologue
    const/16 v6, 0x2711

    const/4 v5, 0x0

    .line 760
    iget-object v1, p0, Lcom/oneplus/widget/ScaleImageView;->m_Handler:Landroid/os/Handler;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v6, v5, v5, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 761
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/oneplus/widget/ScaleImageView;->m_Handler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 762
    iget-object v1, p0, Lcom/oneplus/widget/ScaleImageView;->m_Handler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p6, p7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 763
    return-void
.end method

.method private setImageBounds(IIIIZ)V
    .locals 8
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I
    .param p5, "animation"    # Z

    .prologue
    const/4 v1, 0x1

    .line 803
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBounds:Landroid/graphics/Rect;

    if-nez v0, :cond_1

    .line 887
    :cond_0
    :goto_0
    return-void

    .line 805
    :cond_1
    iget-boolean v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_IsBoundsChangeEnabled:Z

    if-nez v0, :cond_2

    .line 807
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageFitScreenShortSideBounds:Landroid/graphics/Rect;

    iget p1, v0, Landroid/graphics/Rect;->left:I

    .line 808
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageFitScreenShortSideBounds:Landroid/graphics/Rect;

    iget p2, v0, Landroid/graphics/Rect;->top:I

    .line 809
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageFitScreenShortSideBounds:Landroid/graphics/Rect;

    iget p3, v0, Landroid/graphics/Rect;->right:I

    .line 810
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageFitScreenShortSideBounds:Landroid/graphics/Rect;

    iget p4, v0, Landroid/graphics/Rect;->bottom:I

    .line 812
    :cond_2
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    if-ne v0, p1, :cond_3

    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-ne v0, p2, :cond_3

    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    if-ne v0, p3, :cond_3

    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-ne v0, p4, :cond_3

    .line 814
    iget-boolean v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_IsSetBoundsAfterSetDrawable:Z

    if-nez v0, :cond_0

    .line 816
    invoke-direct {p0}, Lcom/oneplus/widget/ScaleImageView;->updateImageBounds()V

    .line 817
    iput-boolean v1, p0, Lcom/oneplus/widget/ScaleImageView;->m_IsSetBoundsAfterSetDrawable:Z

    goto :goto_0

    .line 823
    :cond_3
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_BoundsAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_4

    .line 824
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_BoundsAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 827
    :cond_4
    if-eqz p5, :cond_5

    .line 829
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_TempBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 830
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int v0, p1, v0

    int-to-float v2, v0

    .line 831
    .local v2, "leftDistance":F
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int v0, p2, v0

    int-to-float v3, v0

    .line 832
    .local v3, "topDistance":F
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    sub-int v0, p3, v0

    int-to-float v4, v0

    .line 833
    .local v4, "rightDistance":F
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v0, p4, v0

    int-to-float v5, v0

    .line 834
    .local v5, "bottomDistance":F
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v6, 0xc8

    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_BoundsAnimator:Landroid/animation/ValueAnimator;

    .line 835
    iget-object v6, p0, Lcom/oneplus/widget/ScaleImageView;->m_BoundsAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/oneplus/widget/ScaleImageView$5;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/widget/ScaleImageView$5;-><init>(Lcom/oneplus/widget/ScaleImageView;FFFF)V

    invoke-virtual {v6, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 851
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_BoundsAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oneplus/widget/ScaleImageView$6;

    invoke-direct {v1, p0}, Lcom/oneplus/widget/ScaleImageView$6;-><init>(Lcom/oneplus/widget/ScaleImageView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 875
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_BoundsAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 876
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;

    if-eqz v0, :cond_0

    .line 877
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->setHighQualityBitmapEnabled(Z)V

    goto/16 :goto_0

    .line 882
    .end local v2    # "leftDistance":F
    .end local v3    # "topDistance":F
    .end local v4    # "rightDistance":F
    .end local v5    # "bottomDistance":F
    :cond_5
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 883
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;

    if-eqz v0, :cond_6

    .line 884
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;

    invoke-virtual {v0, v1}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->setHighQualityBitmapEnabled(Z)V

    .line 885
    :cond_6
    invoke-direct {p0}, Lcom/oneplus/widget/ScaleImageView;->updateImageBounds()V

    goto/16 :goto_0

    .line 834
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private setImageBounds(Landroid/graphics/Rect;Z)V
    .locals 6
    .param p1, "newBounds"    # Landroid/graphics/Rect;
    .param p2, "animation"    # Z

    .prologue
    .line 796
    if-nez p1, :cond_0

    .line 799
    :goto_0
    return-void

    .line 798
    :cond_0
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    move-object v0, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/widget/ScaleImageView;->setImageBounds(IIIIZ)V

    goto :goto_0
.end method

.method private setImageScaleBy(FFFZ)V
    .locals 8
    .param p1, "factor"    # F
    .param p2, "pivotX"    # F
    .param p3, "pivotY"    # F
    .param p4, "animation"    # Z

    .prologue
    .line 964
    iget-boolean v5, p0, Lcom/oneplus/widget/ScaleImageView;->m_IsBoundsChangeEnabled:Z

    if-nez v5, :cond_0

    .line 1031
    :goto_0
    return-void

    .line 968
    :cond_0
    if-eqz p4, :cond_3

    .line 970
    iget-object v5, p0, Lcom/oneplus/widget/ScaleImageView;->m_ScaleAnimator:Landroid/animation/ValueAnimator;

    if-eqz v5, :cond_1

    .line 971
    iget-object v5, p0, Lcom/oneplus/widget/ScaleImageView;->m_ScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->cancel()V

    .line 972
    :cond_1
    iget-object v5, p0, Lcom/oneplus/widget/ScaleImageView;->m_TempScaleBounds:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBounds:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 973
    const/high16 v5, 0x437a0000    # 250.0f

    mul-float/2addr v5, p1

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    int-to-long v2, v5

    .line 974
    .local v2, "duration":J
    const-wide/16 v6, 0x64

    cmp-long v5, v2, v6

    if-gez v5, :cond_2

    .line 975
    const-wide/16 v2, 0x64

    .line 976
    :cond_2
    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    aput v7, v5, v6

    const/4 v6, 0x1

    aput p1, v5, v6

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v5

    iput-object v5, p0, Lcom/oneplus/widget/ScaleImageView;->m_ScaleAnimator:Landroid/animation/ValueAnimator;

    .line 977
    iget-object v5, p0, Lcom/oneplus/widget/ScaleImageView;->m_ScaleAnimator:Landroid/animation/ValueAnimator;

    new-instance v6, Lcom/oneplus/widget/ScaleImageView$7;

    invoke-direct {v6, p0, p2, p3}, Lcom/oneplus/widget/ScaleImageView$7;-><init>(Lcom/oneplus/widget/ScaleImageView;FF)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1009
    iget-object v5, p0, Lcom/oneplus/widget/ScaleImageView;->m_ScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 1014
    .end local v2    # "duration":J
    :cond_3
    iget-object v5, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, p1

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 1015
    .local v4, "scaledWidth":I
    iget-object v5, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, p1

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 1016
    .local v1, "scaledHeight":I
    move v0, p1

    .line 1017
    .local v0, "adjustedFactor":F
    iget v5, p0, Lcom/oneplus/widget/ScaleImageView;->m_MaxImageScaledWidth:I

    if-ge v4, v5, :cond_4

    iget v5, p0, Lcom/oneplus/widget/ScaleImageView;->m_MaxImageScaledHeight:I

    if-lt v1, v5, :cond_5

    .line 1019
    :cond_4
    iget v5, p0, Lcom/oneplus/widget/ScaleImageView;->m_MaxImageScaledWidth:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    div-float v0, v5, v6

    .line 1020
    iget v4, p0, Lcom/oneplus/widget/ScaleImageView;->m_MaxImageScaledWidth:I

    .line 1021
    iget v1, p0, Lcom/oneplus/widget/ScaleImageView;->m_MaxImageScaledHeight:I

    .line 1025
    :cond_5
    iget-object v5, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBounds:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    sub-float v6, p2, v6

    mul-float/2addr v6, v0

    sub-float v6, p2, v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 1026
    iget-object v5, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBounds:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    sub-float v6, p3, v6

    mul-float/2addr v6, v0

    sub-float v6, p3, v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 1027
    iget-object v5, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBounds:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v4

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 1028
    iget-object v5, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBounds:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v1

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 1029
    invoke-direct {p0}, Lcom/oneplus/widget/ScaleImageView;->updateImageBounds()V

    goto/16 :goto_0
.end method

.method private updateImageBounds()V
    .locals 6

    .prologue
    .line 1052
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 1066
    :cond_0
    :goto_0
    return-void

    .line 1058
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/widget/ScaleImageView;->updateImageBoundsType()V

    .line 1061
    invoke-virtual {p0}, Lcom/oneplus/widget/ScaleImageView;->invalidate()V

    .line 1064
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_StateCallback:Lcom/oneplus/widget/ScaleImageView$StateCallback;

    if-eqz v0, :cond_0

    .line 1065
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_StateCallback:Lcom/oneplus/widget/ScaleImageView$StateCallback;

    iget-object v1, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBounds:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBounds:Landroid/graphics/Rect;

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBounds:Landroid/graphics/Rect;

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBounds:Landroid/graphics/Rect;

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/widget/ScaleImageView$StateCallback;->onBoundsChanged(Lcom/oneplus/widget/ScaleImageView;IIII)V

    goto :goto_0
.end method

.method private updateImageBoundsType()V
    .locals 4

    .prologue
    .line 1074
    iget-object v2, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageFitScreenShortSideBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1075
    sget-object v1, Lcom/oneplus/widget/ScaleImageView$BoundsType;->FIT_SHORT_SIDE:Lcom/oneplus/widget/ScaleImageView$BoundsType;

    .line 1084
    .local v1, "type":Lcom/oneplus/widget/ScaleImageView$BoundsType;
    :goto_0
    iget-object v2, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBoundsType:Lcom/oneplus/widget/ScaleImageView$BoundsType;

    if-ne v2, v1, :cond_4

    .line 1096
    :cond_0
    :goto_1
    return-void

    .line 1076
    .end local v1    # "type":Lcom/oneplus/widget/ScaleImageView$BoundsType;
    :cond_1
    iget-object v2, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageFitScreenLongSideBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1077
    sget-object v1, Lcom/oneplus/widget/ScaleImageView$BoundsType;->FIT_LONG_SIDE:Lcom/oneplus/widget/ScaleImageView$BoundsType;

    .restart local v1    # "type":Lcom/oneplus/widget/ScaleImageView$BoundsType;
    goto :goto_0

    .line 1078
    .end local v1    # "type":Lcom/oneplus/widget/ScaleImageView$BoundsType;
    :cond_2
    iget-object v2, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget v3, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageWidth:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget v3, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageHeight:I

    if-ne v2, v3, :cond_3

    .line 1079
    sget-object v1, Lcom/oneplus/widget/ScaleImageView$BoundsType;->ORIGINAL_SIZE:Lcom/oneplus/widget/ScaleImageView$BoundsType;

    .restart local v1    # "type":Lcom/oneplus/widget/ScaleImageView$BoundsType;
    goto :goto_0

    .line 1081
    .end local v1    # "type":Lcom/oneplus/widget/ScaleImageView$BoundsType;
    :cond_3
    sget-object v1, Lcom/oneplus/widget/ScaleImageView$BoundsType;->CUSTOMIZED_BOUNDS:Lcom/oneplus/widget/ScaleImageView$BoundsType;

    .restart local v1    # "type":Lcom/oneplus/widget/ScaleImageView$BoundsType;
    goto :goto_0

    .line 1090
    :cond_4
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBoundsType:Lcom/oneplus/widget/ScaleImageView$BoundsType;

    .line 1091
    .local v0, "oldType":Lcom/oneplus/widget/ScaleImageView$BoundsType;
    iput-object v1, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBoundsType:Lcom/oneplus/widget/ScaleImageView$BoundsType;

    .line 1094
    iget-object v2, p0, Lcom/oneplus/widget/ScaleImageView;->m_StateCallback:Lcom/oneplus/widget/ScaleImageView$StateCallback;

    if-eqz v2, :cond_0

    .line 1095
    iget-object v2, p0, Lcom/oneplus/widget/ScaleImageView;->m_StateCallback:Lcom/oneplus/widget/ScaleImageView$StateCallback;

    invoke-virtual {v2, p0, v0, v1}, Lcom/oneplus/widget/ScaleImageView$StateCallback;->onBoundsTypeChanged(Lcom/oneplus/widget/ScaleImageView;Lcom/oneplus/widget/ScaleImageView$BoundsType;Lcom/oneplus/widget/ScaleImageView$BoundsType;)V

    goto :goto_1
.end method

.method private updateImageSize(IIZ)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 1103
    if-nez p3, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_IsCustomizedSizeUsed:Z

    if-eqz v0, :cond_0

    .line 1115
    :goto_0
    return-void

    .line 1107
    :cond_0
    if-eqz p3, :cond_1

    .line 1108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_IsCustomizedSizeUsed:Z

    .line 1111
    :cond_1
    iput p1, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageWidth:I

    .line 1112
    iput p2, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageHeight:I

    .line 1113
    invoke-virtual {p0}, Lcom/oneplus/widget/ScaleImageView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/oneplus/widget/ScaleImageView;->getHeight()I

    move-result v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/oneplus/widget/ScaleImageView;->calculateFitScreenImageBounds(IIII)V

    .line 1114
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageFitScreenShortSideBounds:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/oneplus/widget/ScaleImageView;->setImageBounds(Landroid/graphics/Rect;Z)V

    goto :goto_0
.end method

.method private updateMaxMinImageScaledSize()V
    .locals 4

    .prologue
    .line 1121
    iget v2, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/oneplus/widget/ScaleImageView;->m_MaxImageScaleRatio:F

    mul-float v1, v2, v3

    .line 1122
    .local v1, "maxWidth":F
    iget v2, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageHeight:I

    int-to-float v2, v2

    iget v3, p0, Lcom/oneplus/widget/ScaleImageView;->m_MaxImageScaleRatio:F

    mul-float v0, v2, v3

    .line 1123
    .local v0, "maxHeight":F
    iget-object v2, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageFitScreenShortSideBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v2, v1

    if-lez v2, :cond_0

    .line 1125
    iget-object v2, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageFitScreenShortSideBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v1, v2

    .line 1126
    iget-object v2, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageFitScreenShortSideBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v0, v2

    .line 1128
    :cond_0
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Lcom/oneplus/widget/ScaleImageView;->m_MaxImageScaledWidth:I

    .line 1129
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Lcom/oneplus/widget/ScaleImageView;->m_MaxImageScaledHeight:I

    .line 1130
    iget v2, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/oneplus/widget/ScaleImageView;->m_MinImageScaleRatio:F

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Lcom/oneplus/widget/ScaleImageView;->m_MinImageScaledWidth:I

    .line 1131
    iget v2, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageHeight:I

    int-to-float v2, v2

    iget v3, p0, Lcom/oneplus/widget/ScaleImageView;->m_MinImageScaleRatio:F

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Lcom/oneplus/widget/ScaleImageView;->m_MinImageScaledHeight:I

    .line 1132
    return-void
.end method


# virtual methods
.method public getFitToScreenLongSideBounds()Landroid/graphics/Rect;
    .locals 2

    .prologue
    .line 404
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageFitScreenLongSideBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public getFitToScreenShortSideBounds()Landroid/graphics/Rect;
    .locals 2

    .prologue
    .line 411
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageFitScreenShortSideBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public getImageBounds()Landroid/graphics/Rect;
    .locals 2

    .prologue
    .line 418
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public getImageBoundsType()Lcom/oneplus/widget/ScaleImageView$BoundsType;
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBoundsType:Lcom/oneplus/widget/ScaleImageView$BoundsType;

    return-object v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 455
    invoke-super {p0, p1}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 460
    invoke-virtual {p0, p1}, Lcom/oneplus/widget/ScaleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 461
    return-void
.end method

.method public isStretchedImage()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 467
    iget-object v1, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageFitScreenShortSideBounds:Landroid/graphics/Rect;

    if-nez v1, :cond_1

    .line 472
    :cond_0
    :goto_0
    return v0

    .line 469
    :cond_1
    iget-object v1, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageFitScreenShortSideBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget v2, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageWidth:I

    if-lt v1, v2, :cond_0

    .line 470
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 530
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 532
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 535
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 538
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 540
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 5
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/4 v4, 0x0

    .line 641
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 644
    iget v2, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageWidth:I

    iget v3, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageHeight:I

    invoke-direct {p0, v2, v3, p1, p2}, Lcom/oneplus/widget/ScaleImageView;->calculateFitScreenImageBounds(IIII)V

    .line 647
    sget-object v2, Lcom/oneplus/widget/ScaleImageView$8;->$SwitchMap$com$oneplus$widget$ScaleImageView$BoundsType:[I

    iget-object v3, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBoundsType:Lcom/oneplus/widget/ScaleImageView$BoundsType;

    invoke-virtual {v3}, Lcom/oneplus/widget/ScaleImageView$BoundsType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 674
    :goto_0
    return-void

    .line 652
    :pswitch_0
    sub-int v2, p1, p3

    div-int/lit8 v0, v2, 0x2

    .line 653
    .local v0, "offsetX":I
    sub-int v2, p2, p4

    div-int/lit8 v1, v2, 0x2

    .line 654
    .local v1, "offsetY":I
    iget-object v2, p0, Lcom/oneplus/widget/ScaleImageView;->m_ScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v2}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v2

    if-nez v2, :cond_0

    .line 656
    invoke-direct {p0, v0, v1}, Lcom/oneplus/widget/ScaleImageView;->offsetImageBounds(II)V

    .line 657
    iget-object v2, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v2}, Lcom/oneplus/widget/ScaleImageView;->calculateAdjustedImageBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 658
    iget-object v2, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageAdjustedBounds:Landroid/graphics/Rect;

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/oneplus/widget/ScaleImageView;->setImageBounds(Landroid/graphics/Rect;Z)V

    goto :goto_0

    .line 661
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/oneplus/widget/ScaleImageView;->offsetImageBounds(II)V

    goto :goto_0

    .line 664
    .end local v0    # "offsetX":I
    .end local v1    # "offsetY":I
    :pswitch_1
    iget-object v2, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageFitScreenLongSideBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v2, v4}, Lcom/oneplus/widget/ScaleImageView;->setImageBounds(Landroid/graphics/Rect;Z)V

    goto :goto_0

    .line 667
    :pswitch_2
    iget-object v2, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageFitScreenShortSideBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v2, v4}, Lcom/oneplus/widget/ScaleImageView;->setImageBounds(Landroid/graphics/Rect;Z)V

    goto :goto_0

    .line 670
    :pswitch_3
    invoke-direct {p0, p1, p2}, Lcom/oneplus/widget/ScaleImageView;->calculateOriginalSizeImageBounds(II)V

    .line 671
    iget-object v2, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageOriginalSizeBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v2, v4}, Lcom/oneplus/widget/ScaleImageView;->setImageBounds(Landroid/graphics/Rect;Z)V

    goto :goto_0

    .line 647
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 682
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 710
    :cond_0
    :goto_0
    :pswitch_0
    iget-object v3, p0, Lcom/oneplus/widget/ScaleImageView;->m_ScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v3, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 711
    .local v0, "result":Z
    iget-boolean v3, p0, Lcom/oneplus/widget/ScaleImageView;->m_IsScaleTriggered:Z

    if-nez v3, :cond_1

    .line 712
    iget-object v3, p0, Lcom/oneplus/widget/ScaleImageView;->m_GestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v3, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 715
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz v0, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    return v1

    .line 685
    .end local v0    # "result":Z
    :pswitch_1
    iget-object v3, p0, Lcom/oneplus/widget/ScaleImageView;->m_GestureCallback:Lcom/oneplus/widget/ScaleImageView$GestureCallback;

    if-eqz v3, :cond_4

    .line 686
    iget-object v3, p0, Lcom/oneplus/widget/ScaleImageView;->m_GestureCallback:Lcom/oneplus/widget/ScaleImageView$GestureCallback;

    invoke-virtual {v3, p0, p1}, Lcom/oneplus/widget/ScaleImageView$GestureCallback;->onGestureStart(Lcom/oneplus/widget/ScaleImageView;Landroid/view/MotionEvent;)V

    .line 688
    :cond_4
    iput-boolean v1, p0, Lcom/oneplus/widget/ScaleImageView;->m_IsScaleTriggered:Z

    .line 689
    iput-boolean v1, p0, Lcom/oneplus/widget/ScaleImageView;->m_IsScrollTriggered:Z

    .line 690
    iget-boolean v3, p0, Lcom/oneplus/widget/ScaleImageView;->m_IsDoubleTapTriggered:Z

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/oneplus/widget/ScaleImageView;->m_BoundsAnimator:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_5

    .line 691
    iget-object v3, p0, Lcom/oneplus/widget/ScaleImageView;->m_BoundsAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    .line 692
    :cond_5
    iput-boolean v1, p0, Lcom/oneplus/widget/ScaleImageView;->m_IsDoubleTapTriggered:Z

    .line 693
    iget-object v3, p0, Lcom/oneplus/widget/ScaleImageView;->m_Handler:Landroid/os/Handler;

    const/16 v4, 0x2711

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 698
    :pswitch_2
    iget-object v3, p0, Lcom/oneplus/widget/ScaleImageView;->m_GestureCallback:Lcom/oneplus/widget/ScaleImageView$GestureCallback;

    if-eqz v3, :cond_6

    .line 699
    iget-object v3, p0, Lcom/oneplus/widget/ScaleImageView;->m_GestureCallback:Lcom/oneplus/widget/ScaleImageView$GestureCallback;

    invoke-virtual {v3, p0}, Lcom/oneplus/widget/ScaleImageView$GestureCallback;->onGestureEnd(Lcom/oneplus/widget/ScaleImageView;)V

    .line 701
    :cond_6
    iget-boolean v3, p0, Lcom/oneplus/widget/ScaleImageView;->m_IsScrollTriggered:Z

    if-eqz v3, :cond_0

    .line 703
    iget-object v3, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v3}, Lcom/oneplus/widget/ScaleImageView;->calculateAdjustedImageBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 704
    iget-object v3, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageAdjustedBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v3, v2}, Lcom/oneplus/widget/ScaleImageView;->setImageBounds(Landroid/graphics/Rect;Z)V

    goto :goto_0

    .line 682
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setImageBounds(Lcom/oneplus/widget/ScaleImageView$BoundsType;)V
    .locals 4
    .param p1, "type"    # Lcom/oneplus/widget/ScaleImageView$BoundsType;

    .prologue
    .line 770
    const/4 v0, 0x0

    .line 771
    .local v0, "newBounds":Landroid/graphics/Rect;
    sget-object v1, Lcom/oneplus/widget/ScaleImageView$8;->$SwitchMap$com$oneplus$widget$ScaleImageView$BoundsType:[I

    invoke-virtual {p1}, Lcom/oneplus/widget/ScaleImageView$BoundsType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 784
    sget-object v1, Lcom/oneplus/widget/ScaleImageView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setImageBounds() - Bounds type is not supported to set image bounds: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    :cond_0
    :goto_0
    return-void

    .line 774
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageFitScreenLongSideBounds:Landroid/graphics/Rect;

    .line 791
    :goto_1
    if-eqz v0, :cond_0

    .line 792
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/oneplus/widget/ScaleImageView;->setImageBounds(Landroid/graphics/Rect;Z)V

    goto :goto_0

    .line 777
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageFitScreenShortSideBounds:Landroid/graphics/Rect;

    .line 778
    goto :goto_1

    .line 780
    :pswitch_2
    invoke-virtual {p0}, Lcom/oneplus/widget/ScaleImageView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/oneplus/widget/ScaleImageView;->getHeight()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/oneplus/widget/ScaleImageView;->calculateOriginalSizeImageBounds(II)V

    .line 781
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageOriginalSizeBounds:Landroid/graphics/Rect;

    .line 782
    goto :goto_1

    .line 771
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setImageBoundsChangeEnabled(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 893
    iput-boolean p1, p0, Lcom/oneplus/widget/ScaleImageView;->m_IsBoundsChangeEnabled:Z

    .line 894
    if-nez p1, :cond_0

    .line 895
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageFitScreenShortSideBounds:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/oneplus/widget/ScaleImageView;->setImageBounds(Landroid/graphics/Rect;Z)V

    .line 896
    :cond_0
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 903
    if-nez p1, :cond_0

    .line 905
    invoke-direct {p0}, Lcom/oneplus/widget/ScaleImageView;->resetDrawable()V

    .line 926
    :goto_0
    return-void

    .line 910
    :cond_0
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    .line 912
    invoke-direct {p0}, Lcom/oneplus/widget/ScaleImageView;->resetDrawable()V

    .line 913
    iput-object p1, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 914
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 915
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 916
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;

    if-eqz v0, :cond_1

    .line 917
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;

    invoke-virtual {v0, v1}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->setHighQualityBitmapEnabled(Z)V

    .line 921
    :cond_1
    iput-boolean v2, p0, Lcom/oneplus/widget/ScaleImageView;->m_IsSetBoundsAfterSetDrawable:Z

    .line 922
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-direct {p0, v0, v1, v2}, Lcom/oneplus/widget/ScaleImageView;->updateImageSize(IIZ)V

    .line 925
    invoke-virtual {p0}, Lcom/oneplus/widget/ScaleImageView;->invalidate()V

    goto :goto_0
.end method

.method public setImageScaleRatio(FF)V
    .locals 2
    .param p1, "minRatio"    # F
    .param p2, "maxRatio"    # F

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 938
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 939
    const p1, 0x3f19999a    # 0.6f

    .line 940
    :cond_0
    cmpl-float v0, p1, v1

    if-lez v0, :cond_1

    .line 941
    const/high16 p1, 0x3f800000    # 1.0f

    .line 942
    :cond_1
    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p2, v0

    if-nez v0, :cond_2

    .line 943
    const/high16 p2, 0x40000000    # 2.0f

    .line 944
    :cond_2
    cmpg-float v0, p2, v1

    if-gez v0, :cond_3

    .line 945
    const/high16 p2, 0x3f800000    # 1.0f

    .line 946
    :cond_3
    iput p2, p0, Lcom/oneplus/widget/ScaleImageView;->m_MaxImageScaleRatio:F

    .line 947
    iput p1, p0, Lcom/oneplus/widget/ScaleImageView;->m_MinImageScaleRatio:F

    .line 948
    invoke-direct {p0}, Lcom/oneplus/widget/ScaleImageView;->updateMaxMinImageScaledSize()V

    .line 949
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageFitScreenShortSideBounds:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/oneplus/widget/ScaleImageView;->setImageBounds(Landroid/graphics/Rect;Z)V

    .line 950
    return-void
.end method

.method public setImageSize(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 956
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/widget/ScaleImageView;->updateImageSize(IIZ)V

    .line 957
    return-void
.end method

.method public setOnGestureCallback(Lcom/oneplus/widget/ScaleImageView$GestureCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/oneplus/widget/ScaleImageView$GestureCallback;

    .prologue
    .line 1037
    iput-object p1, p0, Lcom/oneplus/widget/ScaleImageView;->m_GestureCallback:Lcom/oneplus/widget/ScaleImageView$GestureCallback;

    .line 1038
    return-void
.end method

.method public setOnStateChangedCallback(Lcom/oneplus/widget/ScaleImageView$StateCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/oneplus/widget/ScaleImageView$StateCallback;

    .prologue
    .line 1044
    iput-object p1, p0, Lcom/oneplus/widget/ScaleImageView;->m_StateCallback:Lcom/oneplus/widget/ScaleImageView$StateCallback;

    .line 1045
    return-void
.end method
