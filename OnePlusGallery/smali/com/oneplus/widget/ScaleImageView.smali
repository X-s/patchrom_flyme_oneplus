.class public Lcom/oneplus/widget/ScaleImageView;
.super Landroid/view/View;
.source "ScaleImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/widget/ScaleImageView$AdjustImageBoundsInfo;,
        Lcom/oneplus/widget/ScaleImageView$AnimatedPaddingInfo;,
        Lcom/oneplus/widget/ScaleImageView$BoundsType;,
        Lcom/oneplus/widget/ScaleImageView$GestureCallback;,
        Lcom/oneplus/widget/ScaleImageView$StateCallback;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$oneplus$widget$ScaleImageView$BoundsType:[I = null

.field private static final ACCELERATION_SCROLL_IMAGE:F = 0.016f

.field public static final DEFAULT_MAX_IMAGE_SCALE_RATIO:F = 4.0f

.field public static final DEFAULT_MIN_IMAGE_SCALE_RATIO:F = 0.6f

.field private static final DURATION_ANIMATION_MIN:J = 0x64L

.field private static final DURATION_SCALE_ANIMATION:J = 0xfaL

.field private static final DURATION_SET_BOUNDS_ANIMATION:J = 0x190L

.field private static final FIT_LONG_SIDE_SHORT_TO_SCREEN_RATIO:F = 0.4218f

.field public static final FLAGS_GROUP:Lcom/oneplus/base/BitFlagsGroup;

.field public static final FLAG_GESTURE_DOUBLE_TAP_SCALE:I

.field public static final FLAG_GESTURE_MULTIPLE_FINGERS_SCALE:I

.field public static final FLAG_GESTURE_MULTIPLE_FINGERS_SCROLL:I

.field public static final FLAG_GESTURE_ONE_FINGER_SCROLL:I

.field public static final FLAG_KEEP_CURRENT_BOUNDS:I

.field private static final IMAGE_BOUNDS_EDGE_LIMITATION_RATIO:F = 0.1f

.field private static final LOG_ENABLED:Z = false

.field private static final MSG_SCROLL_IMAGE:I = 0x2711

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private m_BoundsAnimator:Landroid/animation/ValueAnimator;

.field private m_DoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

.field private m_GestureCallback:Lcom/oneplus/widget/ScaleImageView$GestureCallback;

.field private m_GestureDetector:Landroid/view/GestureDetector;

.field private m_GestureDisableFlags:I

.field private m_GestureListener:Landroid/view/GestureDetector$OnGestureListener;

.field private final m_Handler:Landroid/os/Handler;

.field private m_ImageAdjustedBounds:Landroid/graphics/Rect;

.field private m_ImageBounds:Landroid/graphics/Rect;

.field private m_ImageBoundsFixed:Landroid/graphics/Rect;

.field private m_ImageBoundsType:Lcom/oneplus/widget/ScaleImageView$BoundsType;

.field private m_ImageDrawable:Landroid/graphics/drawable/Drawable;

.field private m_ImageFitMinimumBounds:Landroid/graphics/Rect;

.field private m_ImageFitScreenLongSideBounds:Landroid/graphics/Rect;

.field private m_ImageFitScreenShortSideBounds:Landroid/graphics/Rect;

.field private m_ImageHeight:I

.field private m_ImageMinimumBounds:Landroid/graphics/Rect;

.field private m_ImageOriginalSizeBounds:Landroid/graphics/Rect;

.field private m_ImagePaddingBottom:I

.field private m_ImagePaddingLeft:I

.field private m_ImagePaddingRight:I

.field private m_ImagePaddingTop:I

.field private m_ImageWidth:I

.field private m_IsAnimating:Z

.field private m_IsBoundsChangeEnabled:Z

.field private m_IsDoubleTapTriggered:Z

.field private m_IsFlingTriggered:Z

.field private m_IsGestureCanceled:Z

.field private m_IsScaleTriggered:Z

.field private m_IsScrollTriggered:Z

.field private m_MaxImageLeft:I

.field private m_MaxImageScaleRatio:F

.field private m_MaxImageScaledHeight:I

.field private m_MaxImageScaledWidth:I

.field private m_MaxImageTop:I

.field private m_MinImageBottom:I

.field private m_MinImageRight:I

.field private m_MinImageScaleRatio:F

.field private m_MinImageScaledHeight:I

.field private m_MinImageScaledWidth:I

.field private m_OuterTouchListener:Landroid/view/View$OnTouchListener;

.field private m_PenddingAdjustImageBoundsInfo:Lcom/oneplus/widget/ScaleImageView$AdjustImageBoundsInfo;

.field private m_PenddingAnimatedPaddingInfo:Lcom/oneplus/widget/ScaleImageView$AnimatedPaddingInfo;

.field private m_ScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private m_ScaleGestureListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

.field private m_StateCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/widget/ScaleImageView$StateCallback;",
            ">;"
        }
    .end annotation
.end field

.field private m_TargetImageBounds:Landroid/graphics/Rect;

.field private m_TempBounds:Landroid/graphics/Rect;


# direct methods
.method static synthetic $SWITCH_TABLE$com$oneplus$widget$ScaleImageView$BoundsType()[I
    .locals 3

    .prologue
    .line 36
    sget-object v0, Lcom/oneplus/widget/ScaleImageView;->$SWITCH_TABLE$com$oneplus$widget$ScaleImageView$BoundsType:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/widget/ScaleImageView$BoundsType;->values()[Lcom/oneplus/widget/ScaleImageView$BoundsType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/widget/ScaleImageView$BoundsType;->CUSTOMIZED_BOUNDS:Lcom/oneplus/widget/ScaleImageView$BoundsType;

    invoke-virtual {v1}, Lcom/oneplus/widget/ScaleImageView$BoundsType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Lcom/oneplus/widget/ScaleImageView$BoundsType;->FIT_LONG_SIDE:Lcom/oneplus/widget/ScaleImageView$BoundsType;

    invoke-virtual {v1}, Lcom/oneplus/widget/ScaleImageView$BoundsType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Lcom/oneplus/widget/ScaleImageView$BoundsType;->FIT_SHORT_SIDE:Lcom/oneplus/widget/ScaleImageView$BoundsType;

    invoke-virtual {v1}, Lcom/oneplus/widget/ScaleImageView$BoundsType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Lcom/oneplus/widget/ScaleImageView$BoundsType;->ORIGINAL_SIZE:Lcom/oneplus/widget/ScaleImageView$BoundsType;

    invoke-virtual {v1}, Lcom/oneplus/widget/ScaleImageView$BoundsType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Lcom/oneplus/widget/ScaleImageView;->$SWITCH_TABLE$com$oneplus$widget$ScaleImageView$BoundsType:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 51
    new-instance v0, Lcom/oneplus/base/BitFlagsGroup;

    const-class v1, Lcom/oneplus/widget/ScaleImageView;

    invoke-direct {v0, v1}, Lcom/oneplus/base/BitFlagsGroup;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/widget/ScaleImageView;->FLAGS_GROUP:Lcom/oneplus/base/BitFlagsGroup;

    .line 55
    sget-object v0, Lcom/oneplus/widget/ScaleImageView;->FLAGS_GROUP:Lcom/oneplus/base/BitFlagsGroup;

    invoke-virtual {v0}, Lcom/oneplus/base/BitFlagsGroup;->nextIntFlag()I

    move-result v0

    sput v0, Lcom/oneplus/widget/ScaleImageView;->FLAG_KEEP_CURRENT_BOUNDS:I

    .line 59
    sget-object v0, Lcom/oneplus/widget/ScaleImageView;->FLAGS_GROUP:Lcom/oneplus/base/BitFlagsGroup;

    invoke-virtual {v0}, Lcom/oneplus/base/BitFlagsGroup;->nextIntFlag()I

    move-result v0

    sput v0, Lcom/oneplus/widget/ScaleImageView;->FLAG_GESTURE_ONE_FINGER_SCROLL:I

    .line 63
    sget-object v0, Lcom/oneplus/widget/ScaleImageView;->FLAGS_GROUP:Lcom/oneplus/base/BitFlagsGroup;

    invoke-virtual {v0}, Lcom/oneplus/base/BitFlagsGroup;->nextIntFlag()I

    move-result v0

    sput v0, Lcom/oneplus/widget/ScaleImageView;->FLAG_GESTURE_MULTIPLE_FINGERS_SCALE:I

    .line 67
    sget-object v0, Lcom/oneplus/widget/ScaleImageView;->FLAGS_GROUP:Lcom/oneplus/base/BitFlagsGroup;

    invoke-virtual {v0}, Lcom/oneplus/base/BitFlagsGroup;->nextIntFlag()I

    move-result v0

    sput v0, Lcom/oneplus/widget/ScaleImageView;->FLAG_GESTURE_MULTIPLE_FINGERS_SCROLL:I

    .line 71
    sget-object v0, Lcom/oneplus/widget/ScaleImageView;->FLAGS_GROUP:Lcom/oneplus/base/BitFlagsGroup;

    invoke-virtual {v0}, Lcom/oneplus/base/BitFlagsGroup;->nextIntFlag()I

    move-result v0

    sput v0, Lcom/oneplus/widget/ScaleImageView;->FLAG_GESTURE_DOUBLE_TAP_SCALE:I

    .line 75
    const-class v0, Lcom/oneplus/widget/ScaleImageView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/widget/ScaleImageView;->TAG:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 406
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 91
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageAdjustedBounds:Landroid/graphics/Rect;

    .line 92
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBounds:Landroid/graphics/Rect;

    .line 94
    sget-object v0, Lcom/oneplus/widget/ScaleImageView$BoundsType;->FIT_SHORT_SIDE:Lcom/oneplus/widget/ScaleImageView$BoundsType;

    iput-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBoundsType:Lcom/oneplus/widget/ScaleImageView$BoundsType;

    .line 95
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageFitMinimumBounds:Landroid/graphics/Rect;

    .line 96
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageFitScreenShortSideBounds:Landroid/graphics/Rect;

    .line 97
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageFitScreenLongSideBounds:Landroid/graphics/Rect;

    .line 100
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageMinimumBounds:Landroid/graphics/Rect;

    .line 101
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageOriginalSizeBounds:Landroid/graphics/Rect;

    .line 117
    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_MaxImageScaleRatio:F

    .line 123
    const v0, 0x3f19999a    # 0.6f

    iput v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_MinImageScaleRatio:F

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_StateCallbacks:Ljava/util/List;

    .line 129
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_TargetImageBounds:Landroid/graphics/Rect;

    .line 130
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_TempBounds:Landroid/graphics/Rect;

    .line 246
    new-instance v0, Lcom/oneplus/widget/ScaleImageView$1;

    invoke-direct {v0, p0}, Lcom/oneplus/widget/ScaleImageView$1;-><init>(Lcom/oneplus/widget/ScaleImageView;)V

    iput-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_Handler:Landroid/os/Handler;

    .line 258
    new-instance v0, Lcom/oneplus/widget/ScaleImageView$2;

    invoke-direct {v0, p0}, Lcom/oneplus/widget/ScaleImageView$2;-><init>(Lcom/oneplus/widget/ScaleImageView;)V

    iput-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_DoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    .line 288
    new-instance v0, Lcom/oneplus/widget/ScaleImageView$3;

    invoke-direct {v0, p0}, Lcom/oneplus/widget/ScaleImageView$3;-><init>(Lcom/oneplus/widget/ScaleImageView;)V

    iput-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_GestureListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 327
    new-instance v0, Lcom/oneplus/widget/ScaleImageView$4;

    invoke-direct {v0, p0}, Lcom/oneplus/widget/ScaleImageView$4;-><init>(Lcom/oneplus/widget/ScaleImageView;)V

    iput-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ScaleGestureListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    .line 408
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/oneplus/widget/ScaleImageView;->m_GestureListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_GestureDetector:Landroid/view/GestureDetector;

    .line 409
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_GestureDetector:Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/oneplus/widget/ScaleImageView;->m_DoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 410
    new-instance v0, Landroid/view/ScaleGestureDetector;

    iget-object v1, p0, Lcom/oneplus/widget/ScaleImageView;->m_ScaleGestureListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-direct {v0, p1, v1}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 411
    return-void
.end method

.method static synthetic access$0(Lcom/oneplus/widget/ScaleImageView;Landroid/os/Message;)Z
    .locals 1

    .prologue
    .line 786
    invoke-direct {p0, p1}, Lcom/oneplus/widget/ScaleImageView;->handleMessage(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1(Lcom/oneplus/widget/ScaleImageView;)Lcom/oneplus/widget/ScaleImageView$GestureCallback;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_GestureCallback:Lcom/oneplus/widget/ScaleImageView$GestureCallback;

    return-object v0
.end method

.method static synthetic access$11(Lcom/oneplus/widget/ScaleImageView;)Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_TempBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$12(Lcom/oneplus/widget/ScaleImageView;)V
    .locals 0

    .prologue
    .line 1844
    invoke-direct {p0}, Lcom/oneplus/widget/ScaleImageView;->updateImageBounds()V

    return-void
.end method

.method static synthetic access$13(Lcom/oneplus/widget/ScaleImageView;Z)V
    .locals 0

    .prologue
    .line 918
    invoke-direct {p0, p1}, Lcom/oneplus/widget/ScaleImageView;->notifyAnimating(Z)V

    return-void
.end method

.method static synthetic access$2(Lcom/oneplus/widget/ScaleImageView;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 972
    invoke-direct {p0, p1}, Lcom/oneplus/widget/ScaleImageView;->onGestureDoubleTap(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3(Lcom/oneplus/widget/ScaleImageView;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    .prologue
    .line 1094
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/widget/ScaleImageView;->onGestureScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4(Lcom/oneplus/widget/ScaleImageView;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    .prologue
    .line 1021
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/widget/ScaleImageView;->onGestureFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5(Lcom/oneplus/widget/ScaleImageView;FFFFF)Z
    .locals 1

    .prologue
    .line 1062
    invoke-direct/range {p0 .. p5}, Lcom/oneplus/widget/ScaleImageView;->onGestureScale(FFFFF)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6(Lcom/oneplus/widget/ScaleImageView;)Lcom/oneplus/widget/ScaleImageView$BoundsType;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBoundsType:Lcom/oneplus/widget/ScaleImageView$BoundsType;

    return-object v0
.end method

.method static synthetic access$7(Lcom/oneplus/widget/ScaleImageView;)Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$8(Lcom/oneplus/widget/ScaleImageView;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 423
    invoke-direct {p0, p1}, Lcom/oneplus/widget/ScaleImageView;->calculateAdjustedImageBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9(Lcom/oneplus/widget/ScaleImageView;)Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageAdjustedBounds:Landroid/graphics/Rect;

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

    .line 433
    sub-int v3, p3, p1

    .line 434
    .local v3, "width":I
    sub-int v0, p4, p2

    .line 435
    .local v0, "height":I
    invoke-virtual {p0}, Lcom/oneplus/widget/ScaleImageView;->getWidth()I

    move-result v2

    .line 436
    .local v2, "viewWidth":I
    invoke-virtual {p0}, Lcom/oneplus/widget/ScaleImageView;->getHeight()I

    move-result v1

    .line 437
    .local v1, "viewHeight":I
    if-eqz v3, :cond_0

    if-nez v0, :cond_1

    .line 438
    :cond_0
    const/4 v4, 0x0

    .line 494
    :goto_0
    return-object v4

    .line 441
    :cond_1
    iget-object v4, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageAdjustedBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 444
    iget-object v4, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageMinimumBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 446
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/widget/ScaleImageView;->calculateFitMinimumBounds(IIII)V

    .line 447
    iget-object v4, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageAdjustedBounds:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageFitMinimumBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 494
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageAdjustedBounds:Landroid/graphics/Rect;

    goto :goto_0

    .line 449
    :cond_3
    if-ge v3, v2, :cond_4

    if-ge v0, v1, :cond_4

    .line 450
    iget-object v4, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageAdjustedBounds:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageFitScreenShortSideBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 453
    :cond_4
    if-ge v3, v2, :cond_6

    .line 455
    iget-object v4, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageAdjustedBounds:Landroid/graphics/Rect;

    sub-int v5, v2, v3

    div-int/lit8 v5, v5, 0x2

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 456
    iget-object v4, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageAdjustedBounds:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageAdjustedBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v3

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 471
    :cond_5
    :goto_2
    if-ge v0, v1, :cond_8

    .line 473
    iget-object v4, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageAdjustedBounds:Landroid/graphics/Rect;

    sub-int v5, v1, v0

    div-int/lit8 v5, v5, 0x2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 474
    iget-object v4, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageAdjustedBounds:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageAdjustedBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v0

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 460
    :cond_6
    iget-object v4, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageAdjustedBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    if-lez v4, :cond_7

    .line 462
    iget-object v4, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageAdjustedBounds:Landroid/graphics/Rect;

    iput v6, v4, Landroid/graphics/Rect;->left:I

    .line 463
    iget-object v4, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageAdjustedBounds:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageAdjustedBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v3

    iput v5, v4, Landroid/graphics/Rect;->right:I

    goto :goto_2

    .line 465
    :cond_7
    iget-object v4, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageAdjustedBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    if-ge v4, v2, :cond_5

    .line 467
    iget-object v4, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageAdjustedBounds:Landroid/graphics/Rect;

    iput v2, v4, Landroid/graphics/Rect;->right:I

    .line 468
    iget-object v4, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageAdjustedBounds:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageAdjustedBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v3

    iput v5, v4, Landroid/graphics/Rect;->left:I

    goto :goto_2

    .line 478
    :cond_8
    iget-object v4, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageAdjustedBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-lez v4, :cond_9

    .line 480
    iget-object v4, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageAdjustedBounds:Landroid/graphics/Rect;

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 481
    iget-object v4, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageAdjustedBounds:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageAdjustedBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v0

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 483
    :cond_9
    iget-object v4, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageAdjustedBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    if-ge v4, v1, :cond_2

    .line 485
    iget-object v4, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageAdjustedBounds:Landroid/graphics/Rect;

    iput v1, v4, Landroid/graphics/Rect;->bottom:I

    .line 486
    iget-object v4, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageAdjustedBounds:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageAdjustedBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v0

    iput v5, v4, Landroid/graphics/Rect;->top:I

    goto/16 :goto_1
.end method

.method private calculateAdjustedImageBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 4
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 426
    if-nez p1, :cond_0

    .line 427
    const/4 v0, 0x0

    .line 428
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

.method private calculateFitMinimumBounds(IIII)V
    .locals 11
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    const/high16 v10, 0x3f800000    # 1.0f

    .line 509
    sub-int v6, p3, p1

    .line 510
    .local v6, "width":I
    sub-int v0, p4, p2

    .line 511
    .local v0, "height":I
    if-eqz v6, :cond_0

    if-nez v0, :cond_1

    .line 575
    :cond_0
    :goto_0
    return-void

    .line 515
    :cond_1
    iget-object v8, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageMinimumBounds:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 518
    iget-object v8, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageMinimumBounds:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 519
    .local v2, "minimumWidth":I
    iget-object v8, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageMinimumBounds:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 520
    .local v3, "minumumHeight":I
    iget-object v8, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageMinimumBounds:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    .line 521
    .local v4, "pivotX":I
    iget-object v8, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageMinimumBounds:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    .line 524
    .local v5, "pivotY":I
    int-to-float v8, v6

    int-to-float v9, v2

    div-float v7, v8, v9

    .line 525
    .local v7, "widthRatio":F
    cmpg-float v8, v7, v10

    if-gez v8, :cond_2

    .line 527
    move v6, v2

    .line 528
    int-to-float v8, v0

    div-float/2addr v8, v7

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 530
    :cond_2
    int-to-float v8, v0

    int-to-float v9, v3

    div-float v1, v8, v9

    .line 531
    .local v1, "heightRatio":F
    cmpg-float v8, v1, v10

    if-gez v8, :cond_3

    .line 533
    int-to-float v8, v6

    div-float/2addr v8, v1

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 534
    move v0, v3

    .line 538
    :cond_3
    iget-object v8, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageMinimumBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    if-lt p1, v8, :cond_4

    .line 540
    iget-object v8, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageMinimumBounds:Landroid/graphics/Rect;

    iget p1, v8, Landroid/graphics/Rect;->left:I

    .line 541
    add-int p3, p1, v6

    .line 553
    :goto_1
    iget-object v8, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageMinimumBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    if-lt p2, v8, :cond_6

    .line 555
    iget-object v8, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageMinimumBounds:Landroid/graphics/Rect;

    iget p2, v8, Landroid/graphics/Rect;->top:I

    .line 556
    add-int p4, p2, v0

    .line 570
    :goto_2
    iget-object v8, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageFitMinimumBounds:Landroid/graphics/Rect;

    invoke-virtual {v8, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 543
    :cond_4
    iget-object v8, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageMinimumBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    if-gt p3, v8, :cond_5

    .line 545
    iget-object v8, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageMinimumBounds:Landroid/graphics/Rect;

    iget p3, v8, Landroid/graphics/Rect;->right:I

    .line 546
    sub-int p1, p3, v6

    .line 547
    goto :goto_1

    .line 550
    :cond_5
    sub-int v8, v4, p1

    mul-int/2addr v8, v6

    int-to-float v8, v8

    sub-int v9, p3, p1

    int-to-float v9, v9

    div-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    sub-int p1, v4, v8

    .line 551
    add-int p3, p1, v6

    goto :goto_1

    .line 558
    :cond_6
    iget-object v8, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageMinimumBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    if-gt p4, v8, :cond_7

    .line 560
    iget-object v8, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageMinimumBounds:Landroid/graphics/Rect;

    iget p4, v8, Landroid/graphics/Rect;->bottom:I

    .line 561
    sub-int p2, p4, v0

    .line 562
    goto :goto_2

    .line 565
    :cond_7
    sub-int v8, v5, p2

    mul-int/2addr v8, v0

    int-to-float v8, v8

    sub-int v9, p4, p2

    int-to-float v9, v9

    div-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    sub-int p2, v5, v8

    .line 566
    add-int p4, p2, v0

    goto :goto_2
.end method

.method private calculateFitMinimumBounds(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 502
    if-nez p1, :cond_0

    .line 505
    :goto_0
    return-void

    .line 504
    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/oneplus/widget/ScaleImageView;->calculateFitMinimumBounds(IIII)V

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

    .line 581
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

    .line 582
    return-void
.end method

.method private calculateFitScreenImageBounds(IIIIFF)V
    .locals 17
    .param p1, "imageWidth"    # I
    .param p2, "imageHeight"    # I
    .param p3, "viewWidth"    # I
    .param p4, "viewHeight"    # I
    .param p5, "pivotX"    # F
    .param p6, "pivotY"    # F

    .prologue
    .line 586
    if-lez p1, :cond_0

    if-lez p2, :cond_0

    if-lez p3, :cond_0

    if-gtz p4, :cond_1

    .line 621
    :cond_0
    :goto_0
    return-void

    .line 590
    :cond_1
    move-object/from16 v0, p0

    iget v12, v0, Lcom/oneplus/widget/ScaleImageView;->m_ImagePaddingLeft:I

    sub-int v12, p3, v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/oneplus/widget/ScaleImageView;->m_ImagePaddingRight:I

    sub-int v3, v12, v13

    .line 591
    .local v3, "availableWidth":I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/oneplus/widget/ScaleImageView;->m_ImagePaddingTop:I

    sub-int v12, p4, v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/oneplus/widget/ScaleImageView;->m_ImagePaddingBottom:I

    sub-int v2, v12, v13

    .line 592
    .local v2, "availableHeight":I
    const/4 v12, 0x0

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v0, v1, v3, v2, v12}, Lcom/oneplus/util/SizeUtils;->getRatioStretchedSize(IIIIZ)Landroid/util/Size;

    move-result-object v6

    .line 593
    .local v6, "fitShortSideSize":Landroid/util/Size;
    move/from16 v0, p1

    int-to-float v12, v0

    move/from16 v0, p2

    int-to-float v13, v0

    int-to-float v14, v3

    int-to-float v15, v2

    const/16 v16, 0x0

    invoke-static/range {v12 .. v16}, Lcom/oneplus/util/SizeUtils;->getRatioCenterCroppedSize(FFFFZ)Landroid/util/SizeF;

    move-result-object v5

    .line 596
    .local v5, "fitLongSideSize":Landroid/util/SizeF;
    move-object/from16 v0, p0

    iget v12, v0, Lcom/oneplus/widget/ScaleImageView;->m_ImagePaddingLeft:I

    int-to-float v12, v12

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v13

    sub-int v13, v3, v13

    int-to-float v13, v13

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    add-float v7, v12, v13

    .line 597
    .local v7, "left":F
    move-object/from16 v0, p0

    iget v12, v0, Lcom/oneplus/widget/ScaleImageView;->m_ImagePaddingTop:I

    int-to-float v12, v12

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v13

    sub-int v13, v2, v13

    int-to-float v13, v13

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    add-float v11, v12, v13

    .line 598
    .local v11, "top":F
    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v12

    int-to-float v12, v12

    add-float v10, v7, v12

    .line 599
    .local v10, "right":F
    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v12

    int-to-float v12, v12

    add-float v4, v11, v12

    .line 600
    .local v4, "bottom":F
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/widget/ScaleImageView;->m_ImageFitScreenShortSideBounds:Landroid/graphics/Rect;

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v13

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v14

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v15

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v16

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/Rect;->set(IIII)V

    .line 603
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/widget/ScaleImageView;->updateMaxMinImageScaledSize()V

    .line 606
    invoke-virtual {v5}, Landroid/util/SizeF;->getWidth()F

    move-result v9

    .line 607
    .local v9, "longSideWidth":F
    invoke-virtual {v5}, Landroid/util/SizeF;->getHeight()F

    move-result v8

    .line 608
    .local v8, "longSideHeight":F
    move-object/from16 v0, p0

    iget v12, v0, Lcom/oneplus/widget/ScaleImageView;->m_MaxImageScaledWidth:I

    int-to-float v12, v12

    cmpl-float v12, v9, v12

    if-lez v12, :cond_2

    .line 609
    move-object/from16 v0, p0

    iget v12, v0, Lcom/oneplus/widget/ScaleImageView;->m_MaxImageScaledWidth:I

    int-to-float v9, v12

    .line 610
    :cond_2
    move-object/from16 v0, p0

    iget v12, v0, Lcom/oneplus/widget/ScaleImageView;->m_MaxImageScaledHeight:I

    int-to-float v12, v12

    cmpl-float v12, v8, v12

    if-lez v12, :cond_3

    .line 611
    move-object/from16 v0, p0

    iget v12, v0, Lcom/oneplus/widget/ScaleImageView;->m_MaxImageScaledHeight:I

    int-to-float v8, v12

    .line 613
    :cond_3
    move-object/from16 v0, p0

    iget v12, v0, Lcom/oneplus/widget/ScaleImageView;->m_ImagePaddingLeft:I

    int-to-float v12, v12

    sub-float v12, p5, v12

    mul-float/2addr v12, v9

    int-to-float v13, v3

    div-float/2addr v12, v13

    sub-float v7, p5, v12

    .line 614
    move-object/from16 v0, p0

    iget v12, v0, Lcom/oneplus/widget/ScaleImageView;->m_ImagePaddingTop:I

    int-to-float v12, v12

    sub-float v12, p6, v12

    mul-float/2addr v12, v8

    int-to-float v13, v2

    div-float/2addr v12, v13

    sub-float v11, p6, v12

    .line 615
    add-float v10, v7, v9

    .line 616
    add-float v4, v11, v8

    .line 617
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/widget/ScaleImageView;->m_ImageFitScreenLongSideBounds:Landroid/graphics/Rect;

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v13

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v14

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v15

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v16

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_0
.end method

.method private calculateImageEdgeLimitation(II)V
    .locals 4
    .param p1, "viewWidth"    # I
    .param p2, "viewHeight"    # I

    .prologue
    const v3, 0x3dcccccd    # 0.1f

    .line 628
    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    .line 640
    :cond_0
    :goto_0
    return-void

    .line 632
    :cond_1
    int-to-float v2, p1

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 633
    .local v0, "maxDistanceX":I
    int-to-float v2, p2

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 636
    .local v1, "maxDistanceY":I
    iput v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_MaxImageLeft:I

    .line 637
    iput v1, p0, Lcom/oneplus/widget/ScaleImageView;->m_MaxImageTop:I

    .line 638
    sub-int v2, p1, v0

    iput v2, p0, Lcom/oneplus/widget/ScaleImageView;->m_MinImageRight:I

    .line 639
    sub-int v2, p2, v1

    iput v2, p0, Lcom/oneplus/widget/ScaleImageView;->m_MinImageBottom:I

    goto :goto_0
.end method

.method private calculateOriginalSizeImageBounds(II)V
    .locals 2
    .param p1, "viewWidth"    # I
    .param p2, "viewHeight"    # I

    .prologue
    .line 646
    div-int/lit8 v0, p1, 0x2

    int-to-float v0, v0

    div-int/lit8 v1, p2, 0x2

    int-to-float v1, v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/oneplus/widget/ScaleImageView;->calculateOriginalSizeImageBounds(IIFF)V

    .line 647
    return-void
.end method

.method private calculateOriginalSizeImageBounds(IIFF)V
    .locals 11
    .param p1, "viewWidth"    # I
    .param p2, "viewHeight"    # I
    .param p3, "pivotX"    # F
    .param p4, "pivotY"    # F

    .prologue
    .line 651
    iget v6, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageWidth:I

    if-lez v6, :cond_0

    iget v6, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageHeight:I

    if-lez v6, :cond_0

    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    .line 668
    :cond_0
    :goto_0
    return-void

    .line 655
    :cond_1
    iget v6, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageWidth:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBounds:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    div-float v5, v6, v7

    .line 656
    .local v5, "widthRatio":F
    iget v6, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageHeight:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBounds:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    div-float v1, v6, v7

    .line 659
    .local v1, "heightRatio":F
    iget-object v6, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    sub-float v6, p3, v6

    mul-float/2addr v6, v5

    sub-float v2, p3, v6

    .line 660
    .local v2, "left":F
    iget-object v6, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    sub-float v6, p4, v6

    mul-float/2addr v6, v1

    sub-float v4, p4, v6

    .line 661
    .local v4, "top":F
    iget v6, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageWidth:I

    int-to-float v6, v6

    add-float v3, v2, v6

    .line 662
    .local v3, "right":F
    iget v6, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageHeight:I

    int-to-float v6, v6

    add-float v0, v4, v6

    .line 663
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

    .line 664
    iget-object v6, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageOriginalSizeBounds:Landroid/graphics/Rect;

    invoke-direct {p0, p1, p2, v6}, Lcom/oneplus/widget/ScaleImageView;->moveToVisibleArea(IILandroid/graphics/Rect;)V

    goto :goto_0
.end method

.method private handleMessage(Landroid/os/Message;)Z
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 788
    iget v8, p1, Landroid/os/Message;->what:I

    packed-switch v8, :pswitch_data_0

    .line 802
    :goto_0
    return v1

    .line 791
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 792
    .local v0, "params":[Ljava/lang/Object;
    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 793
    .local v2, "prevVelocityX":F
    aget-object v1, v0, v7

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 794
    .local v3, "prevVelocityY":F
    const/4 v1, 0x2

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 795
    .local v4, "prevScrollTimeMillis":J
    const/4 v1, 0x3

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .local v6, "keepScrolling":Z
    move-object v1, p0

    .line 796
    invoke-direct/range {v1 .. v6}, Lcom/oneplus/widget/ScaleImageView;->scrollImage(FFJZ)V

    move v1, v7

    .line 802
    goto :goto_0

    .line 788
    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
    .end packed-switch
.end method

.method private isGestureDoubleTapScaleEnabled()Z
    .locals 2

    .prologue
    .line 830
    iget v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_GestureDisableFlags:I

    sget v1, Lcom/oneplus/widget/ScaleImageView;->FLAG_GESTURE_DOUBLE_TAP_SCALE:I

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isGestureMultipleFingersScaleEnabled()Z
    .locals 2

    .prologue
    .line 837
    iget v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_GestureDisableFlags:I

    sget v1, Lcom/oneplus/widget/ScaleImageView;->FLAG_GESTURE_MULTIPLE_FINGERS_SCALE:I

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isGestureMultipleFingersScrollEnabled()Z
    .locals 2

    .prologue
    .line 844
    iget v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_GestureDisableFlags:I

    sget v1, Lcom/oneplus/widget/ScaleImageView;->FLAG_GESTURE_MULTIPLE_FINGERS_SCROLL:I

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isGestureOneFingerScrollEnabled()Z
    .locals 2

    .prologue
    .line 823
    iget v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_GestureDisableFlags:I

    sget v1, Lcom/oneplus/widget/ScaleImageView;->FLAG_GESTURE_ONE_FINGER_SCROLL:I

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private moveToVisibleArea(IILandroid/graphics/Rect;)V
    .locals 4
    .param p1, "viewWidth"    # I
    .param p2, "viewHeight"    # I
    .param p3, "bounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v3, 0x0

    .line 894
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 895
    .local v1, "width":I
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 896
    .local v0, "height":I
    if-ge v1, p1, :cond_2

    .line 898
    sub-int v2, p1, v1

    div-int/lit8 v2, v2, 0x2

    iput v2, p3, Landroid/graphics/Rect;->left:I

    .line 899
    iget v2, p3, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v1

    iput v2, p3, Landroid/graphics/Rect;->right:I

    .line 905
    :cond_0
    :goto_0
    if-ge v0, p2, :cond_4

    .line 907
    sub-int v2, p2, v0

    div-int/lit8 v2, v2, 0x2

    iput v2, p3, Landroid/graphics/Rect;->top:I

    .line 908
    iget v2, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v0

    iput v2, p3, Landroid/graphics/Rect;->bottom:I

    .line 914
    :cond_1
    :goto_1
    return-void

    .line 901
    :cond_2
    iget v2, p3, Landroid/graphics/Rect;->left:I

    if-lez v2, :cond_3

    .line 902
    iget v2, p3, Landroid/graphics/Rect;->left:I

    neg-int v2, v2

    invoke-virtual {p3, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    .line 903
    :cond_3
    iget v2, p3, Landroid/graphics/Rect;->right:I

    if-ge v2, p1, :cond_0

    .line 904
    iget v2, p3, Landroid/graphics/Rect;->right:I

    sub-int v2, p1, v2

    invoke-virtual {p3, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    .line 910
    :cond_4
    iget v2, p3, Landroid/graphics/Rect;->top:I

    if-lez v2, :cond_5

    .line 911
    iget v2, p3, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    invoke-virtual {p3, v3, v2}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_1

    .line 912
    :cond_5
    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    if-ge v2, p2, :cond_1

    .line 913
    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    sub-int v2, p2, v2

    invoke-virtual {p3, v3, v2}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_1
.end method

.method private notifyAnimating(Z)V
    .locals 3
    .param p1, "isAnimating"    # Z

    .prologue
    .line 921
    iget-boolean v1, p0, Lcom/oneplus/widget/ScaleImageView;->m_IsAnimating:Z

    if-ne v1, p1, :cond_1

    .line 941
    :cond_0
    return-void

    .line 928
    :cond_1
    iput-boolean p1, p0, Lcom/oneplus/widget/ScaleImageView;->m_IsAnimating:Z

    .line 931
    if-nez p1, :cond_2

    iget-object v1, p0, Lcom/oneplus/widget/ScaleImageView;->m_PenddingAdjustImageBoundsInfo:Lcom/oneplus/widget/ScaleImageView$AdjustImageBoundsInfo;

    if-eqz v1, :cond_2

    .line 933
    iget-object v1, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v1}, Lcom/oneplus/widget/ScaleImageView;->calculateAdjustedImageBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 934
    iget-object v1, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageAdjustedBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/oneplus/widget/ScaleImageView;->m_PenddingAdjustImageBoundsInfo:Lcom/oneplus/widget/ScaleImageView$AdjustImageBoundsInfo;

    iget-boolean v2, v2, Lcom/oneplus/widget/ScaleImageView$AdjustImageBoundsInfo;->animation:Z

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/widget/ScaleImageView;->setImageBounds(Landroid/graphics/Rect;Z)V

    .line 935
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oneplus/widget/ScaleImageView;->m_PenddingAdjustImageBoundsInfo:Lcom/oneplus/widget/ScaleImageView$AdjustImageBoundsInfo;

    .line 939
    :cond_2
    iget-object v1, p0, Lcom/oneplus/widget/ScaleImageView;->m_StateCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/widget/ScaleImageView$StateCallback;

    .line 940
    .local v0, "callback":Lcom/oneplus/widget/ScaleImageView$StateCallback;
    invoke-virtual {v0, p0, p1}, Lcom/oneplus/widget/ScaleImageView$StateCallback;->onAnimatingStateChanged(Lcom/oneplus/widget/ScaleImageView;Z)V

    goto :goto_0
.end method

.method private offsetImageBounds(II)V
    .locals 6
    .param p1, "offsetX"    # I
    .param p2, "offsetY"    # I

    .prologue
    .line 947
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int v1, v0, p1

    .line 948
    .local v1, "newLeft":I
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int v2, v0, p2

    .line 949
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

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/widget/ScaleImageView;->setImageBounds(IIIIZ)V

    .line 950
    return-void
.end method

.method private onGestureDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 975
    invoke-direct {p0}, Lcom/oneplus/widget/ScaleImageView;->isGestureDoubleTapScaleEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 976
    const/4 v0, 0x0

    .line 1016
    :goto_0
    return v0

    .line 979
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_IsGestureCanceled:Z

    if-eqz v0, :cond_1

    .line 980
    const/4 v0, 0x0

    goto :goto_0

    .line 983
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_IsDoubleTapTriggered:Z

    .line 984
    invoke-static {}, Lcom/oneplus/widget/ScaleImageView;->$SWITCH_TABLE$com$oneplus$widget$ScaleImageView$BoundsType()[I

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBoundsType:Lcom/oneplus/widget/ScaleImageView$BoundsType;

    invoke-virtual {v1}, Lcom/oneplus/widget/ScaleImageView$BoundsType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1016
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 989
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageFitScreenShortSideBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/oneplus/widget/ScaleImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageFitScreenShortSideBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/oneplus/widget/ScaleImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 990
    .local v7, "ratio":F
    const v0, 0x3ed7f62b    # 0.4218f

    cmpl-float v0, v7, v0

    if-lez v0, :cond_2

    .line 992
    sget-object v0, Lcom/oneplus/widget/ScaleImageView;->TAG:Ljava/lang/String;

    const-string v1, "onGestureDoubleTap() - normal image"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 993
    const/high16 v1, 0x40200000    # 2.5f

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/oneplus/widget/ScaleImageView;->setImageScaleAndMoveBy(FFFFFZ)V

    goto :goto_1

    .line 997
    :cond_2
    sget-object v0, Lcom/oneplus/widget/ScaleImageView;->TAG:Ljava/lang/String;

    const-string v1, "onGestureDoubleTap() - panorama-like imge"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 998
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

    .line 999
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageFitScreenLongSideBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/oneplus/widget/ScaleImageView;->calculateAdjustedImageBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 1000
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageAdjustedBounds:Landroid/graphics/Rect;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/widget/ScaleImageView;->setImageBounds(Landroid/graphics/Rect;Z)V

    goto :goto_1

    .line 1005
    .end local v7    # "ratio":F
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageFitScreenShortSideBounds:Landroid/graphics/Rect;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/widget/ScaleImageView;->setImageBounds(Landroid/graphics/Rect;Z)V

    goto :goto_1

    .line 1008
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

    .line 1009
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageFitScreenShortSideBounds:Landroid/graphics/Rect;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/widget/ScaleImageView;->setImageBounds(Landroid/graphics/Rect;Z)V

    goto/16 :goto_1

    .line 1012
    :pswitch_3
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageFitScreenShortSideBounds:Landroid/graphics/Rect;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/widget/ScaleImageView;->setImageBounds(Landroid/graphics/Rect;Z)V

    goto/16 :goto_1

    .line 984
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private onGestureFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 9
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/high16 v7, 0x447a0000    # 1000.0f

    const/4 v6, 0x0

    const/4 v8, 0x1

    .line 1024
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_GestureCallback:Lcom/oneplus/widget/ScaleImageView$GestureCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_GestureCallback:Lcom/oneplus/widget/ScaleImageView$GestureCallback;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/widget/ScaleImageView$GestureCallback;->onFling(Lcom/oneplus/widget/ScaleImageView;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1026
    sget-object v0, Lcom/oneplus/widget/ScaleImageView;->TAG:Ljava/lang/String;

    const-string v1, "onGestureFling() - Gesture is handled by call-back"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v8

    .line 1057
    :goto_0
    return v0

    .line 1031
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v8, :cond_1

    invoke-direct {p0}, Lcom/oneplus/widget/ScaleImageView;->isGestureOneFingerScrollEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v6

    .line 1032
    goto :goto_0

    .line 1033
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-le v0, v8, :cond_2

    invoke-direct {p0}, Lcom/oneplus/widget/ScaleImageView;->isGestureMultipleFingersScrollEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v6

    .line 1034
    goto :goto_0

    .line 1037
    :cond_2
    iget-boolean v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_IsGestureCanceled:Z

    if-eqz v0, :cond_3

    move v0, v6

    .line 1038
    goto :goto_0

    .line 1041
    :cond_3
    iput-boolean v8, p0, Lcom/oneplus/widget/ScaleImageView;->m_IsScaleTriggered:Z

    .line 1047
    invoke-static {}, Lcom/oneplus/widget/ScaleImageView;->$SWITCH_TABLE$com$oneplus$widget$ScaleImageView$BoundsType()[I

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBoundsType:Lcom/oneplus/widget/ScaleImageView$BoundsType;

    invoke-virtual {v1}, Lcom/oneplus/widget/ScaleImageView$BoundsType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1052
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_BoundsAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_4

    .line 1053
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_BoundsAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1054
    :cond_4
    div-float v1, p3, v7

    div-float v2, p4, v7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const-wide/16 v6, 0x0

    move-object v0, p0

    move v5, v8

    invoke-direct/range {v0 .. v7}, Lcom/oneplus/widget/ScaleImageView;->sendMessageScrollImage(FFJZJ)V

    move v0, v8

    .line 1057
    goto :goto_0

    :pswitch_0
    move v0, v6

    .line 1050
    goto :goto_0

    .line 1047
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method private onGestureScale(FFFFF)Z
    .locals 8
    .param p1, "factor"    # F
    .param p2, "pivotX"    # F
    .param p3, "pivotY"    # F
    .param p4, "distanceX"    # F
    .param p5, "distanceY"    # F

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1065
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_GestureCallback:Lcom/oneplus/widget/ScaleImageView$GestureCallback;

    if-eqz v0, :cond_1

    .line 1067
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_GestureCallback:Lcom/oneplus/widget/ScaleImageView$GestureCallback;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/oneplus/widget/ScaleImageView$GestureCallback;->onScale(Lcom/oneplus/widget/ScaleImageView;FFF)Z

    move-result v0

    if-eqz v0, :cond_1

    move v6, v7

    .line 1089
    :cond_0
    :goto_0
    return v6

    .line 1072
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/widget/ScaleImageView;->isGestureMultipleFingersScaleEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1076
    iget-boolean v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_IsGestureCanceled:Z

    if-nez v0, :cond_0

    .line 1080
    iput-boolean v7, p0, Lcom/oneplus/widget/ScaleImageView;->m_IsScaleTriggered:Z

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 1086
    invoke-direct/range {v0 .. v6}, Lcom/oneplus/widget/ScaleImageView;->setImageScaleAndMoveBy(FFFFFZ)V

    move v6, v7

    .line 1089
    goto :goto_0
.end method

.method private onGestureScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 10
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1097
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_GestureCallback:Lcom/oneplus/widget/ScaleImageView$GestureCallback;

    if-eqz v0, :cond_0

    .line 1099
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_GestureCallback:Lcom/oneplus/widget/ScaleImageView$GestureCallback;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/widget/ScaleImageView$GestureCallback;->onScroll(Lcom/oneplus/widget/ScaleImageView;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v8

    .line 1138
    :goto_0
    return v0

    .line 1104
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v8, :cond_1

    invoke-direct {p0}, Lcom/oneplus/widget/ScaleImageView;->isGestureOneFingerScrollEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v9

    .line 1105
    goto :goto_0

    .line 1106
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-le v0, v8, :cond_2

    invoke-direct {p0}, Lcom/oneplus/widget/ScaleImageView;->isGestureMultipleFingersScrollEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v9

    .line 1107
    goto :goto_0

    .line 1110
    :cond_2
    iget-boolean v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_IsGestureCanceled:Z

    if-eqz v0, :cond_3

    move v0, v9

    .line 1111
    goto :goto_0

    .line 1114
    :cond_3
    iput-boolean v8, p0, Lcom/oneplus/widget/ScaleImageView;->m_IsScrollTriggered:Z

    .line 1120
    invoke-static {}, Lcom/oneplus/widget/ScaleImageView;->$SWITCH_TABLE$com$oneplus$widget$ScaleImageView$BoundsType()[I

    move-result-object v0

    iget-object v5, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBoundsType:Lcom/oneplus/widget/ScaleImageView$BoundsType;

    invoke-virtual {v5}, Lcom/oneplus/widget/ScaleImageView$BoundsType;->ordinal()I

    move-result v5

    aget v0, v0, v5

    packed-switch v0, :pswitch_data_0

    .line 1127
    :cond_4
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v7

    .line 1128
    .local v7, "width":I
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    .line 1129
    .local v6, "height":I
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    sub-float/2addr v0, p3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 1130
    .local v1, "left":I
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    sub-float/2addr v0, p4

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 1131
    .local v2, "top":I
    add-int v3, v1, v7

    .line 1132
    .local v3, "right":I
    add-int v4, v2, v6

    .local v4, "bottom":I
    move-object v0, p0

    move v5, v9

    .line 1133
    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/widget/ScaleImageView;->setImageBounds(IIIIZ)V

    move v0, v8

    .line 1138
    goto :goto_0

    .line 1123
    .end local v1    # "left":I
    .end local v2    # "top":I
    .end local v3    # "right":I
    .end local v4    # "bottom":I
    .end local v6    # "height":I
    .end local v7    # "width":I
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageMinimumBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v9

    .line 1124
    goto :goto_0

    .line 1120
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method private resetDrawable()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 880
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 882
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 883
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 884
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;

    if-eqz v0, :cond_0

    .line 885
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;

    invoke-virtual {v0, v2}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->setHighQualityBitmapEnabled(Z)V

    .line 886
    :cond_0
    iput-object v3, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 888
    :cond_1
    return-void
.end method

.method private scrollImage(FFJZ)V
    .locals 35
    .param p1, "prevVelocityX"    # F
    .param p2, "prevVelocityY"    # F
    .param p3, "prevScrollTimeMillis"    # J
    .param p5, "keepScrolling"    # Z

    .prologue
    .line 1286
    const/4 v4, 0x0

    cmpl-float v4, p1, v4

    if-nez v4, :cond_0

    const/4 v4, 0x0

    cmpl-float v4, p2, v4

    if-nez v4, :cond_0

    .line 1356
    :goto_0
    return-void

    .line 1293
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 1294
    .local v7, "nowTimeMillis":J
    sub-long v22, v7, p3

    .line 1295
    .local v22, "timeDiffMillis":J
    move-wide/from16 v0, v22

    long-to-float v4, v0

    mul-float v4, v4, p1

    float-to-double v10, v4

    const/4 v4, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->signum(F)F

    move-result v9

    neg-float v9, v9

    mul-float/2addr v4, v9

    const v9, 0x3c83126f    # 0.016f

    mul-float/2addr v4, v9

    float-to-double v0, v4

    move-wide/from16 v28, v0

    move-wide/from16 v0, v22

    long-to-double v0, v0

    move-wide/from16 v30, v0

    const-wide/high16 v32, 0x4000000000000000L    # 2.0

    invoke-static/range {v30 .. v33}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v30

    mul-double v28, v28, v30

    add-double v16, v10, v28

    .line 1296
    .local v16, "diffX":D
    move-wide/from16 v0, v22

    long-to-float v4, v0

    mul-float v4, v4, p2

    float-to-double v10, v4

    const/4 v4, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->signum(F)F

    move-result v9

    neg-float v9, v9

    mul-float/2addr v4, v9

    const v9, 0x3c83126f    # 0.016f

    mul-float/2addr v4, v9

    float-to-double v0, v4

    move-wide/from16 v28, v0

    move-wide/from16 v0, v22

    long-to-double v0, v0

    move-wide/from16 v30, v0

    const-wide/high16 v32, 0x4000000000000000L    # 2.0

    invoke-static/range {v30 .. v33}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v30

    mul-double v28, v28, v30

    add-double v18, v10, v28

    .line 1297
    .local v18, "diffY":D
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    sub-int v26, v4, v9

    .line 1298
    .local v26, "width":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    sub-int v15, v4, v9

    .line 1299
    .local v15, "height":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-double v10, v4

    add-double v10, v10, v16

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    long-to-int v0, v10

    move/from16 v20, v0

    .line 1300
    .local v20, "left":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-double v10, v4

    add-double v10, v10, v18

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    long-to-int v0, v10

    move/from16 v21, v0

    .line 1301
    .local v21, "top":I
    add-int v12, v20, v26

    .line 1302
    .local v12, "right":I
    add-int v13, v21, v15

    .line 1305
    .local v13, "bottom":I
    if-eqz p5, :cond_8

    .line 1308
    move-object/from16 v0, p0

    iget v4, v0, Lcom/oneplus/widget/ScaleImageView;->m_MaxImageLeft:I

    move/from16 v0, v20

    if-gt v0, v4, :cond_1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/oneplus/widget/ScaleImageView;->m_MaxImageTop:I

    move/from16 v0, v21

    if-gt v0, v4, :cond_1

    .line 1309
    move-object/from16 v0, p0

    iget v4, v0, Lcom/oneplus/widget/ScaleImageView;->m_MinImageRight:I

    if-lt v12, v4, :cond_1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/oneplus/widget/ScaleImageView;->m_MinImageBottom:I

    if-ge v13, v4, :cond_2

    .line 1311
    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2, v12, v13}, Lcom/oneplus/widget/ScaleImageView;->calculateAdjustedImageBounds(IIII)Landroid/graphics/Rect;

    .line 1312
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/widget/ScaleImageView;->m_ImageAdjustedBounds:Landroid/graphics/Rect;

    const/4 v9, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v9}, Lcom/oneplus/widget/ScaleImageView;->setImageBounds(Landroid/graphics/Rect;Z)V

    goto/16 :goto_0

    .line 1317
    :cond_2
    mul-float v4, p1, p1

    mul-float v9, p2, p2

    add-float/2addr v4, v9

    float-to-double v10, v4

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-float v0, v10

    move/from16 v24, v0

    .line 1318
    .local v24, "v":F
    const/4 v4, 0x0

    cmpl-float v4, p1, v4

    if-eqz v4, :cond_3

    div-float v25, p2, p1

    .line 1319
    .local v25, "vS":F
    :goto_1
    const v4, 0x3c83126f    # 0.016f

    move-wide/from16 v0, v22

    long-to-float v9, v0

    mul-float/2addr v4, v9

    sub-float v24, v24, v4

    .line 1321
    const/4 v4, 0x0

    cmpl-float v4, v24, v4

    if-lez v4, :cond_7

    .line 1323
    invoke-static/range {v25 .. v25}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1325
    const/4 v5, 0x0

    .line 1326
    .local v5, "vX":F
    move/from16 v6, v24

    .line 1337
    .local v6, "vY":F
    :goto_2
    const-wide/16 v10, 0x0

    move-object/from16 v4, p0

    move/from16 v9, p5

    invoke-direct/range {v4 .. v11}, Lcom/oneplus/widget/ScaleImageView;->sendMessageScrollImage(FFJZJ)V

    .line 1354
    const/4 v14, 0x0

    move-object/from16 v9, p0

    move/from16 v10, v20

    move/from16 v11, v21

    invoke-virtual/range {v9 .. v14}, Lcom/oneplus/widget/ScaleImageView;->setImageBounds(IIIIZ)V

    .line 1355
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/widget/ScaleImageView;->updateImageBounds()V

    goto/16 :goto_0

    .line 1318
    .end local v5    # "vX":F
    .end local v6    # "vY":F
    .end local v25    # "vS":F
    :cond_3
    const/4 v4, 0x0

    cmpl-float v4, p2, v4

    if-ltz v4, :cond_4

    const/high16 v25, 0x7f800000    # Float.POSITIVE_INFINITY

    goto :goto_1

    :cond_4
    const/high16 v25, -0x800000    # Float.NEGATIVE_INFINITY

    goto :goto_1

    .line 1330
    .restart local v25    # "vS":F
    :cond_5
    mul-float v4, v24, v24

    const/high16 v9, 0x3f800000    # 1.0f

    mul-float v10, v25, v25

    add-float/2addr v9, v10

    div-float/2addr v4, v9

    float-to-double v10, v4

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-float v5, v10

    .line 1331
    .restart local v5    # "vX":F
    const/4 v4, 0x0

    cmpg-float v4, p1, v4

    if-gez v4, :cond_6

    .line 1332
    neg-float v5, v5

    .line 1333
    :cond_6
    mul-float v6, v5, v25

    .restart local v6    # "vY":F
    goto :goto_2

    .line 1341
    .end local v5    # "vX":F
    .end local v6    # "vY":F
    :cond_7
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2, v12, v13}, Lcom/oneplus/widget/ScaleImageView;->calculateAdjustedImageBounds(IIII)Landroid/graphics/Rect;

    .line 1342
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/widget/ScaleImageView;->m_ImageAdjustedBounds:Landroid/graphics/Rect;

    const/4 v9, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v9}, Lcom/oneplus/widget/ScaleImageView;->setImageBounds(Landroid/graphics/Rect;Z)V

    goto/16 :goto_0

    .line 1348
    .end local v24    # "v":F
    .end local v25    # "vS":F
    :cond_8
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2, v12, v13}, Lcom/oneplus/widget/ScaleImageView;->calculateAdjustedImageBounds(IIII)Landroid/graphics/Rect;

    .line 1349
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/widget/ScaleImageView;->m_ImageAdjustedBounds:Landroid/graphics/Rect;

    const/4 v9, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v9}, Lcom/oneplus/widget/ScaleImageView;->setImageBounds(Landroid/graphics/Rect;Z)V

    goto/16 :goto_0
.end method

.method private sendMessageScrollImage(FFJZJ)V
    .locals 8
    .param p1, "vX"    # F
    .param p2, "vY"    # F
    .param p3, "timeMillis"    # J
    .param p5, "keepScrolling"    # Z
    .param p6, "delayMillis"    # J

    .prologue
    const/16 v6, 0x2711

    const/4 v5, 0x0

    .line 1362
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

    .line 1363
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/oneplus/widget/ScaleImageView;->m_Handler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1364
    const-wide/16 v2, 0x0

    cmp-long v1, p6, v2

    if-gtz v1, :cond_0

    .line 1365
    iget-object v1, p0, Lcom/oneplus/widget/ScaleImageView;->m_Handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1368
    :goto_0
    return-void

    .line 1367
    :cond_0
    iget-object v1, p0, Lcom/oneplus/widget/ScaleImageView;->m_Handler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p6, p7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private setImageScaleAndMoveBy(FFFFFZ)V
    .locals 9
    .param p1, "factor"    # F
    .param p2, "pivotX"    # F
    .param p3, "pivotY"    # F
    .param p4, "distanceX"    # F
    .param p5, "distanceY"    # F
    .param p6, "animation"    # Z

    .prologue
    .line 1784
    iget-boolean v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_IsBoundsChangeEnabled:Z

    if-nez v0, :cond_0

    .line 1825
    :goto_0
    return-void

    .line 1788
    :cond_0
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 1789
    .local v8, "scaledWidth":I
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 1790
    .local v7, "scaledHeight":I
    move v6, p1

    .line 1791
    .local v6, "adjustedFactor":F
    iget v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_MaxImageScaledWidth:I

    if-lez v0, :cond_2

    iget v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_MaxImageScaledHeight:I

    if-lez v0, :cond_2

    .line 1793
    iget v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_MaxImageScaledWidth:I

    if-ge v8, v0, :cond_1

    iget v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_MaxImageScaledHeight:I

    if-lt v7, v0, :cond_2

    .line 1795
    :cond_1
    iget v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_MaxImageScaledWidth:I

    int-to-float v0, v0

    iget-object v5, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    div-float v6, v0, v5

    .line 1796
    iget v8, p0, Lcom/oneplus/widget/ScaleImageView;->m_MaxImageScaledWidth:I

    .line 1797
    iget v7, p0, Lcom/oneplus/widget/ScaleImageView;->m_MaxImageScaledHeight:I

    .line 1800
    :cond_2
    iget v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_MinImageScaledWidth:I

    if-lez v0, :cond_4

    iget v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_MinImageScaledHeight:I

    if-lez v0, :cond_4

    .line 1802
    iget v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_MinImageScaledWidth:I

    if-le v8, v0, :cond_3

    iget v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_MinImageScaledHeight:I

    if-gt v7, v0, :cond_4

    .line 1804
    :cond_3
    iget v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_MinImageScaledWidth:I

    int-to-float v0, v0

    iget-object v5, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    div-float v6, v0, v5

    .line 1805
    iget v8, p0, Lcom/oneplus/widget/ScaleImageView;->m_MinImageScaledWidth:I

    .line 1806
    iget v7, p0, Lcom/oneplus/widget/ScaleImageView;->m_MinImageScaledHeight:I

    .line 1811
    :cond_4
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    sub-float v0, p2, v0

    mul-float/2addr v0, v6

    sub-float v0, p2, v0

    sub-float/2addr v0, p4

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 1812
    .local v1, "left":I
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    sub-float v0, p3, v0

    mul-float/2addr v0, v6

    sub-float v0, p3, v0

    sub-float/2addr v0, p5

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 1813
    .local v2, "top":I
    add-int v3, v1, v8

    .line 1814
    .local v3, "right":I
    add-int v4, v2, v7

    .line 1815
    .local v4, "bottom":I
    if-eqz p6, :cond_5

    .line 1817
    invoke-direct {p0, v1, v2, v3, v4}, Lcom/oneplus/widget/ScaleImageView;->calculateAdjustedImageBounds(IIII)Landroid/graphics/Rect;

    .line 1819
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageAdjustedBounds:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 1820
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageAdjustedBounds:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->top:I

    .line 1821
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageAdjustedBounds:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->right:I

    .line 1822
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageAdjustedBounds:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    :cond_5
    move-object v0, p0

    move v5, p6

    .line 1824
    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/widget/ScaleImageView;->setImageBounds(IIIIZ)V

    goto/16 :goto_0
.end method

.method private setImageSize(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 1741
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/widget/ScaleImageView;->setImageSize(IIZ)V

    .line 1742
    return-void
.end method

.method private setImageSize(IIZ)V
    .locals 6
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "animation"    # Z

    .prologue
    .line 1754
    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    .line 1777
    :cond_0
    :goto_0
    return-void

    .line 1756
    :cond_1
    iget v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageWidth:I

    if-ne v0, p1, :cond_2

    iget v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageHeight:I

    if-eq v0, p2, :cond_0

    .line 1763
    :cond_2
    iput p1, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageWidth:I

    .line 1764
    iput p2, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageHeight:I

    .line 1765
    invoke-virtual {p0}, Lcom/oneplus/widget/ScaleImageView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/oneplus/widget/ScaleImageView;->getHeight()I

    move-result v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/oneplus/widget/ScaleImageView;->calculateFitScreenImageBounds(IIII)V

    .line 1766
    invoke-virtual {p0}, Lcom/oneplus/widget/ScaleImageView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/oneplus/widget/ScaleImageView;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/oneplus/widget/ScaleImageView;->calculateOriginalSizeImageBounds(II)V

    .line 1767
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBoundsType:Lcom/oneplus/widget/ScaleImageView$BoundsType;

    invoke-virtual {p0, v0}, Lcom/oneplus/widget/ScaleImageView;->setImageBounds(Lcom/oneplus/widget/ScaleImageView$BoundsType;)V

    .line 1768
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageMinimumBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1770
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/oneplus/widget/ScaleImageView;->calculateFitMinimumBounds(Landroid/graphics/Rect;)V

    .line 1771
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageFitMinimumBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, p3}, Lcom/oneplus/widget/ScaleImageView;->setImageBounds(Landroid/graphics/Rect;Z)V

    .line 1775
    :cond_3
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_PenddingAnimatedPaddingInfo:Lcom/oneplus/widget/ScaleImageView$AnimatedPaddingInfo;

    if-eqz v0, :cond_0

    .line 1776
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_PenddingAnimatedPaddingInfo:Lcom/oneplus/widget/ScaleImageView$AnimatedPaddingInfo;

    iget v1, v0, Lcom/oneplus/widget/ScaleImageView$AnimatedPaddingInfo;->paddingLeft:I

    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_PenddingAnimatedPaddingInfo:Lcom/oneplus/widget/ScaleImageView$AnimatedPaddingInfo;

    iget v2, v0, Lcom/oneplus/widget/ScaleImageView$AnimatedPaddingInfo;->paddingTop:I

    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_PenddingAnimatedPaddingInfo:Lcom/oneplus/widget/ScaleImageView$AnimatedPaddingInfo;

    iget v3, v0, Lcom/oneplus/widget/ScaleImageView$AnimatedPaddingInfo;->paddingRight:I

    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_PenddingAnimatedPaddingInfo:Lcom/oneplus/widget/ScaleImageView$AnimatedPaddingInfo;

    iget v4, v0, Lcom/oneplus/widget/ScaleImageView$AnimatedPaddingInfo;->paddingBottom:I

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/widget/ScaleImageView;->setImagePaddings(IIIIZ)Z

    goto :goto_0
.end method

.method private updateImageBounds()V
    .locals 7

    .prologue
    .line 1847
    iget-object v1, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    .line 1864
    :cond_0
    return-void

    .line 1856
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/widget/ScaleImageView;->updateImageBoundsType()V

    .line 1859
    invoke-virtual {p0}, Lcom/oneplus/widget/ScaleImageView;->invalidate()V

    .line 1862
    iget-object v1, p0, Lcom/oneplus/widget/ScaleImageView;->m_StateCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/widget/ScaleImageView$StateCallback;

    .line 1863
    .local v0, "callback":Lcom/oneplus/widget/ScaleImageView$StateCallback;
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
    .locals 5

    .prologue
    .line 1872
    iget-object v3, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBounds:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageFitScreenShortSideBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1873
    sget-object v2, Lcom/oneplus/widget/ScaleImageView$BoundsType;->FIT_SHORT_SIDE:Lcom/oneplus/widget/ScaleImageView$BoundsType;

    .line 1882
    .local v2, "type":Lcom/oneplus/widget/ScaleImageView$BoundsType;
    :goto_0
    iget-object v3, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBoundsType:Lcom/oneplus/widget/ScaleImageView$BoundsType;

    if-ne v3, v2, :cond_4

    .line 1894
    :cond_0
    return-void

    .line 1874
    .end local v2    # "type":Lcom/oneplus/widget/ScaleImageView$BoundsType;
    :cond_1
    iget-object v3, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBounds:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageFitScreenLongSideBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1875
    sget-object v2, Lcom/oneplus/widget/ScaleImageView$BoundsType;->FIT_LONG_SIDE:Lcom/oneplus/widget/ScaleImageView$BoundsType;

    .restart local v2    # "type":Lcom/oneplus/widget/ScaleImageView$BoundsType;
    goto :goto_0

    .line 1876
    .end local v2    # "type":Lcom/oneplus/widget/ScaleImageView$BoundsType;
    :cond_2
    iget-object v3, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget v4, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageWidth:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    iget v4, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageHeight:I

    if-ne v3, v4, :cond_3

    .line 1877
    sget-object v2, Lcom/oneplus/widget/ScaleImageView$BoundsType;->ORIGINAL_SIZE:Lcom/oneplus/widget/ScaleImageView$BoundsType;

    .restart local v2    # "type":Lcom/oneplus/widget/ScaleImageView$BoundsType;
    goto :goto_0

    .line 1879
    .end local v2    # "type":Lcom/oneplus/widget/ScaleImageView$BoundsType;
    :cond_3
    sget-object v2, Lcom/oneplus/widget/ScaleImageView$BoundsType;->CUSTOMIZED_BOUNDS:Lcom/oneplus/widget/ScaleImageView$BoundsType;

    .restart local v2    # "type":Lcom/oneplus/widget/ScaleImageView$BoundsType;
    goto :goto_0

    .line 1888
    :cond_4
    iget-object v1, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBoundsType:Lcom/oneplus/widget/ScaleImageView$BoundsType;

    .line 1889
    .local v1, "oldType":Lcom/oneplus/widget/ScaleImageView$BoundsType;
    iput-object v2, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBoundsType:Lcom/oneplus/widget/ScaleImageView$BoundsType;

    .line 1892
    iget-object v3, p0, Lcom/oneplus/widget/ScaleImageView;->m_StateCallbacks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/widget/ScaleImageView$StateCallback;

    .line 1893
    .local v0, "callback":Lcom/oneplus/widget/ScaleImageView$StateCallback;
    invoke-virtual {v0, p0, v1, v2}, Lcom/oneplus/widget/ScaleImageView$StateCallback;->onBoundsTypeChanged(Lcom/oneplus/widget/ScaleImageView;Lcom/oneplus/widget/ScaleImageView$BoundsType;Lcom/oneplus/widget/ScaleImageView$BoundsType;)V

    goto :goto_1
.end method

.method private updateMaxMinImageScaledSize()V
    .locals 4

    .prologue
    .line 1900
    iget v2, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/oneplus/widget/ScaleImageView;->m_MaxImageScaleRatio:F

    mul-float v1, v2, v3

    .line 1901
    .local v1, "maxWidth":F
    iget v2, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageHeight:I

    int-to-float v2, v2

    iget v3, p0, Lcom/oneplus/widget/ScaleImageView;->m_MaxImageScaleRatio:F

    mul-float v0, v2, v3

    .line 1902
    .local v0, "maxHeight":F
    iget-object v2, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageFitScreenShortSideBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v2, v1

    if-lez v2, :cond_0

    .line 1904
    iget-object v2, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageFitScreenShortSideBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v1, v2

    .line 1905
    iget-object v2, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageFitScreenShortSideBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v0, v2

    .line 1907
    :cond_0
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Lcom/oneplus/widget/ScaleImageView;->m_MaxImageScaledWidth:I

    .line 1908
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Lcom/oneplus/widget/ScaleImageView;->m_MaxImageScaledHeight:I

    .line 1909
    iget-object v2, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageFitScreenShortSideBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/oneplus/widget/ScaleImageView;->m_MinImageScaleRatio:F

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Lcom/oneplus/widget/ScaleImageView;->m_MinImageScaledWidth:I

    .line 1910
    iget-object v2, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageFitScreenShortSideBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/oneplus/widget/ScaleImageView;->m_MinImageScaleRatio:F

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Lcom/oneplus/widget/ScaleImageView;->m_MinImageScaledHeight:I

    .line 1914
    return-void
.end method


# virtual methods
.method public addOnStateChangedCallback(Lcom/oneplus/widget/ScaleImageView$StateCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/oneplus/widget/ScaleImageView$StateCallback;

    .prologue
    .line 417
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_StateCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_StateCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 419
    :cond_0
    return-void
.end method

.method public cancelGestures(I)V
    .locals 2
    .param p1, "flags"    # I

    .prologue
    .line 678
    iget-boolean v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_IsGestureCanceled:Z

    if-eqz v0, :cond_0

    .line 693
    :goto_0
    return-void

    .line 688
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_IsGestureCanceled:Z

    .line 691
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/oneplus/widget/ScaleImageView;->calculateAdjustedImageBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 692
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageAdjustedBounds:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/widget/ScaleImageView;->setImageBounds(Landroid/graphics/Rect;Z)V

    goto :goto_0
.end method

.method public disableGestures(I)V
    .locals 0
    .param p1, "flags"    # I

    .prologue
    .line 709
    iput p1, p0, Lcom/oneplus/widget/ScaleImageView;->m_GestureDisableFlags:I

    .line 710
    return-void
.end method

.method public enableGestures()V
    .locals 1

    .prologue
    .line 718
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_GestureDisableFlags:I

    .line 719
    return-void
.end method

.method public getFitToScreenLongSideBounds()Landroid/graphics/Rect;
    .locals 2

    .prologue
    .line 725
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageFitScreenLongSideBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public getFitToScreenShortSideBounds()Landroid/graphics/Rect;
    .locals 2

    .prologue
    .line 732
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageFitScreenShortSideBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public getImageBounds()Landroid/graphics/Rect;
    .locals 2

    .prologue
    .line 739
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public getImageBoundsType()Lcom/oneplus/widget/ScaleImageView$BoundsType;
    .locals 1

    .prologue
    .line 746
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBoundsType:Lcom/oneplus/widget/ScaleImageView$BoundsType;

    return-object v0
.end method

.method public getImagePaddingBottom()I
    .locals 1

    .prologue
    .line 753
    iget v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImagePaddingBottom:I

    return v0
.end method

.method public getImagePaddingLeft()I
    .locals 1

    .prologue
    .line 760
    iget v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImagePaddingLeft:I

    return v0
.end method

.method public getImagePaddingRight()I
    .locals 1

    .prologue
    .line 767
    iget v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImagePaddingRight:I

    return v0
.end method

.method public getImagePaddingTop()I
    .locals 1

    .prologue
    .line 774
    iget v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImagePaddingTop:I

    return v0
.end method

.method public getTargetImageBounds()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 781
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_TargetImageBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 811
    invoke-super {p0, p1}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 816
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/widget/ScaleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;I)V

    .line 817
    return-void
.end method

.method public isImageBoundsAnimating()Z
    .locals 1

    .prologue
    .line 854
    iget-boolean v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_IsAnimating:Z

    return v0
.end method

.method public isImageBoundsChangeEnabled()Z
    .locals 1

    .prologue
    .line 861
    iget-boolean v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_IsBoundsChangeEnabled:Z

    return v0
.end method

.method public isStretchedImage()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 868
    iget-object v1, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageFitScreenShortSideBounds:Landroid/graphics/Rect;

    if-nez v1, :cond_1

    .line 873
    :cond_0
    :goto_0
    return v0

    .line 870
    :cond_1
    iget-object v1, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageFitScreenShortSideBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget v2, p0, Lcom/oneplus/widget/ScaleImageView;->m_MaxImageScaledWidth:I

    if-lt v1, v2, :cond_0

    .line 871
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 958
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 960
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 963
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 966
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 968
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 1147
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 1150
    if-eqz p1, :cond_1

    .line 1156
    iget-object v1, p0, Lcom/oneplus/widget/ScaleImageView;->m_PenddingAnimatedPaddingInfo:Lcom/oneplus/widget/ScaleImageView$AnimatedPaddingInfo;

    if-eqz v1, :cond_0

    .line 1157
    iget-object v1, p0, Lcom/oneplus/widget/ScaleImageView;->m_PenddingAnimatedPaddingInfo:Lcom/oneplus/widget/ScaleImageView$AnimatedPaddingInfo;

    iget v1, v1, Lcom/oneplus/widget/ScaleImageView$AnimatedPaddingInfo;->paddingLeft:I

    iget-object v2, p0, Lcom/oneplus/widget/ScaleImageView;->m_PenddingAnimatedPaddingInfo:Lcom/oneplus/widget/ScaleImageView$AnimatedPaddingInfo;

    iget v2, v2, Lcom/oneplus/widget/ScaleImageView$AnimatedPaddingInfo;->paddingTop:I

    iget-object v3, p0, Lcom/oneplus/widget/ScaleImageView;->m_PenddingAnimatedPaddingInfo:Lcom/oneplus/widget/ScaleImageView$AnimatedPaddingInfo;

    iget v3, v3, Lcom/oneplus/widget/ScaleImageView$AnimatedPaddingInfo;->paddingRight:I

    iget-object v4, p0, Lcom/oneplus/widget/ScaleImageView;->m_PenddingAnimatedPaddingInfo:Lcom/oneplus/widget/ScaleImageView$AnimatedPaddingInfo;

    iget v4, v4, Lcom/oneplus/widget/ScaleImageView$AnimatedPaddingInfo;->paddingBottom:I

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/widget/ScaleImageView;->setImagePaddings(IIIIZ)Z

    .line 1160
    :cond_0
    iget-object v1, p0, Lcom/oneplus/widget/ScaleImageView;->m_StateCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1163
    :cond_1
    return-void

    .line 1160
    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/widget/ScaleImageView$StateCallback;

    .local v0, "callback":Lcom/oneplus/widget/ScaleImageView$StateCallback;
    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 1161
    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/widget/ScaleImageView$StateCallback;->onLayoutChanged(Lcom/oneplus/widget/ScaleImageView;IIII)V

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 8
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 1171
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 1174
    iget v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageWidth:I

    iget v1, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageHeight:I

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/oneplus/widget/ScaleImageView;->calculateFitScreenImageBounds(IIII)V

    .line 1177
    invoke-direct {p0, p1, p2}, Lcom/oneplus/widget/ScaleImageView;->calculateImageEdgeLimitation(II)V

    .line 1180
    invoke-static {}, Lcom/oneplus/widget/ScaleImageView;->$SWITCH_TABLE$com$oneplus$widget$ScaleImageView$BoundsType()[I

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBoundsType:Lcom/oneplus/widget/ScaleImageView$BoundsType;

    invoke-virtual {v1}, Lcom/oneplus/widget/ScaleImageView$BoundsType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1209
    :goto_0
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_PenddingAnimatedPaddingInfo:Lcom/oneplus/widget/ScaleImageView$AnimatedPaddingInfo;

    if-eqz v0, :cond_0

    .line 1210
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_PenddingAnimatedPaddingInfo:Lcom/oneplus/widget/ScaleImageView$AnimatedPaddingInfo;

    iget v1, v0, Lcom/oneplus/widget/ScaleImageView$AnimatedPaddingInfo;->paddingLeft:I

    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_PenddingAnimatedPaddingInfo:Lcom/oneplus/widget/ScaleImageView$AnimatedPaddingInfo;

    iget v2, v0, Lcom/oneplus/widget/ScaleImageView$AnimatedPaddingInfo;->paddingTop:I

    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_PenddingAnimatedPaddingInfo:Lcom/oneplus/widget/ScaleImageView$AnimatedPaddingInfo;

    iget v3, v0, Lcom/oneplus/widget/ScaleImageView$AnimatedPaddingInfo;->paddingRight:I

    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_PenddingAnimatedPaddingInfo:Lcom/oneplus/widget/ScaleImageView$AnimatedPaddingInfo;

    iget v4, v0, Lcom/oneplus/widget/ScaleImageView$AnimatedPaddingInfo;->paddingBottom:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/widget/ScaleImageView;->setImagePaddings(IIIIZ)Z

    .line 1211
    :cond_0
    return-void

    .line 1185
    :pswitch_0
    sub-int v0, p1, p3

    div-int/lit8 v6, v0, 0x2

    .line 1186
    .local v6, "offsetX":I
    sub-int v0, p2, p4

    div-int/lit8 v7, v0, 0x2

    .line 1187
    .local v7, "offsetY":I
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1189
    invoke-direct {p0, v6, v7}, Lcom/oneplus/widget/ScaleImageView;->offsetImageBounds(II)V

    .line 1190
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/oneplus/widget/ScaleImageView;->calculateAdjustedImageBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 1191
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageAdjustedBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v5}, Lcom/oneplus/widget/ScaleImageView;->setImageBounds(Landroid/graphics/Rect;Z)V

    goto :goto_0

    .line 1194
    :cond_1
    invoke-direct {p0, v6, v7}, Lcom/oneplus/widget/ScaleImageView;->offsetImageBounds(II)V

    goto :goto_0

    .line 1197
    .end local v6    # "offsetX":I
    .end local v7    # "offsetY":I
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageFitScreenLongSideBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v2}, Lcom/oneplus/widget/ScaleImageView;->setImageBounds(Landroid/graphics/Rect;Z)V

    goto :goto_0

    .line 1200
    :pswitch_2
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageFitScreenShortSideBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v2}, Lcom/oneplus/widget/ScaleImageView;->setImageBounds(Landroid/graphics/Rect;Z)V

    goto :goto_0

    .line 1203
    :pswitch_3
    invoke-direct {p0, p1, p2}, Lcom/oneplus/widget/ScaleImageView;->calculateOriginalSizeImageBounds(II)V

    .line 1204
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageOriginalSizeBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v2}, Lcom/oneplus/widget/ScaleImageView;->setImageBounds(Landroid/graphics/Rect;Z)V

    goto :goto_0

    .line 1180
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1219
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 1251
    :cond_0
    :goto_0
    :pswitch_0
    iget-object v3, p0, Lcom/oneplus/widget/ScaleImageView;->m_ScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v3, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1252
    .local v0, "result":Z
    iget-boolean v3, p0, Lcom/oneplus/widget/ScaleImageView;->m_IsScaleTriggered:Z

    if-nez v3, :cond_1

    .line 1253
    iget-object v3, p0, Lcom/oneplus/widget/ScaleImageView;->m_GestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v3, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1256
    :cond_1
    iget-object v3, p0, Lcom/oneplus/widget/ScaleImageView;->m_OuterTouchListener:Landroid/view/View$OnTouchListener;

    if-eqz v3, :cond_2

    .line 1257
    iget-object v3, p0, Lcom/oneplus/widget/ScaleImageView;->m_OuterTouchListener:Landroid/view/View$OnTouchListener;

    invoke-interface {v3, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 1260
    :cond_2
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_6

    if-nez v0, :cond_6

    :goto_1
    return v1

    .line 1222
    .end local v0    # "result":Z
    :pswitch_1
    iget-object v3, p0, Lcom/oneplus/widget/ScaleImageView;->m_GestureCallback:Lcom/oneplus/widget/ScaleImageView$GestureCallback;

    if-eqz v3, :cond_3

    .line 1223
    iget-object v3, p0, Lcom/oneplus/widget/ScaleImageView;->m_GestureCallback:Lcom/oneplus/widget/ScaleImageView$GestureCallback;

    invoke-virtual {v3, p0, p1}, Lcom/oneplus/widget/ScaleImageView$GestureCallback;->onGestureStart(Lcom/oneplus/widget/ScaleImageView;Landroid/view/MotionEvent;)V

    .line 1225
    :cond_3
    iput-boolean v1, p0, Lcom/oneplus/widget/ScaleImageView;->m_IsFlingTriggered:Z

    .line 1226
    iput-boolean v1, p0, Lcom/oneplus/widget/ScaleImageView;->m_IsScaleTriggered:Z

    .line 1227
    iput-boolean v1, p0, Lcom/oneplus/widget/ScaleImageView;->m_IsScrollTriggered:Z

    .line 1228
    iput-boolean v1, p0, Lcom/oneplus/widget/ScaleImageView;->m_IsGestureCanceled:Z

    .line 1229
    iget-boolean v3, p0, Lcom/oneplus/widget/ScaleImageView;->m_IsDoubleTapTriggered:Z

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/oneplus/widget/ScaleImageView;->m_BoundsAnimator:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_4

    .line 1230
    iget-object v3, p0, Lcom/oneplus/widget/ScaleImageView;->m_BoundsAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1231
    :cond_4
    iput-boolean v1, p0, Lcom/oneplus/widget/ScaleImageView;->m_IsDoubleTapTriggered:Z

    .line 1232
    iget-object v3, p0, Lcom/oneplus/widget/ScaleImageView;->m_Handler:Landroid/os/Handler;

    const/16 v4, 0x2711

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 1237
    :pswitch_2
    iget-object v3, p0, Lcom/oneplus/widget/ScaleImageView;->m_GestureCallback:Lcom/oneplus/widget/ScaleImageView$GestureCallback;

    if-eqz v3, :cond_5

    .line 1238
    iget-object v3, p0, Lcom/oneplus/widget/ScaleImageView;->m_GestureCallback:Lcom/oneplus/widget/ScaleImageView$GestureCallback;

    invoke-virtual {v3, p0}, Lcom/oneplus/widget/ScaleImageView$GestureCallback;->onGestureEnd(Lcom/oneplus/widget/ScaleImageView;)V

    .line 1240
    :cond_5
    iget-boolean v3, p0, Lcom/oneplus/widget/ScaleImageView;->m_IsDoubleTapTriggered:Z

    if-nez v3, :cond_0

    .line 1241
    iget-boolean v3, p0, Lcom/oneplus/widget/ScaleImageView;->m_IsFlingTriggered:Z

    if-nez v3, :cond_0

    .line 1242
    iget-object v3, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBoundsType:Lcom/oneplus/widget/ScaleImageView$BoundsType;

    sget-object v4, Lcom/oneplus/widget/ScaleImageView$BoundsType;->FIT_SHORT_SIDE:Lcom/oneplus/widget/ScaleImageView$BoundsType;

    if-eq v3, v4, :cond_0

    .line 1244
    iget-object v3, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v3}, Lcom/oneplus/widget/ScaleImageView;->calculateAdjustedImageBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 1245
    iget-object v3, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageAdjustedBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v3, v2}, Lcom/oneplus/widget/ScaleImageView;->setImageBounds(Landroid/graphics/Rect;Z)V

    goto :goto_0

    .restart local v0    # "result":Z
    :cond_6
    move v1, v2

    .line 1260
    goto :goto_1

    .line 1219
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public removeOnStateChangedCallback(Lcom/oneplus/widget/ScaleImageView$StateCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/oneplus/widget/ScaleImageView$StateCallback;

    .prologue
    .line 1267
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_StateCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1268
    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;
    .param p3, "when"    # J

    .prologue
    .line 1275
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    .line 1276
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_Handler:Landroid/os/Handler;

    invoke-virtual {v0, p2, p3, p4}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 1279
    :goto_0
    return-void

    .line 1278
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    goto :goto_0
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1377
    if-eqz p1, :cond_0

    .line 1378
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/oneplus/widget/ScaleImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Lcom/oneplus/widget/ScaleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1381
    :goto_0
    return-void

    .line 1380
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/widget/ScaleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setImageBounds(IIIIZ)V
    .locals 17
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I
    .param p5, "animation"    # Z

    .prologue
    .line 1446
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/oneplus/widget/ScaleImageView;->m_IsBoundsChangeEnabled:Z

    if-nez v4, :cond_0

    .line 1448
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBoundsFixed:Landroid/graphics/Rect;

    if-nez v4, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/widget/ScaleImageView;->m_ImageFitScreenShortSideBounds:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    .line 1449
    .local v16, "choosedRect":Landroid/graphics/Rect;
    :goto_0
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1451
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 p1, v0

    .line 1452
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 p2, v0

    .line 1453
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 p3, v0

    .line 1454
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 p4, v0

    .line 1457
    .end local v16    # "choosedRect":Landroid/graphics/Rect;
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    move/from16 v0, p1

    if-ne v4, v0, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    move/from16 v0, p2

    if-ne v4, v0, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    move/from16 v0, p3

    if-ne v4, v0, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    move/from16 v0, p4

    if-ne v4, v0, :cond_3

    .line 1459
    sget-object v4, Lcom/oneplus/widget/ScaleImageView;->TAG:Ljava/lang/String;

    const-string v5, "setImageBounds() - Same image bounds, ignore"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1539
    :cond_1
    return-void

    .line 1448
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBoundsFixed:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    goto :goto_0

    .line 1470
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/widget/ScaleImageView;->m_BoundsAnimator:Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_4

    .line 1471
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/widget/ScaleImageView;->m_BoundsAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1474
    :cond_4
    if-eqz p5, :cond_6

    .line 1476
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/widget/ScaleImageView;->m_TempBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1477
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int v4, p1, v4

    int-to-float v6, v4

    .line 1478
    .local v6, "leftDistance":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int v4, p2, v4

    int-to-float v7, v4

    .line 1479
    .local v7, "topDistance":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int v4, p3, v4

    int-to-float v8, v4

    .line 1480
    .local v8, "rightDistance":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v4, p4, v4

    int-to-float v9, v4

    .line 1481
    .local v9, "bottomDistance":F
    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    const-wide/16 v12, 0x190

    invoke-virtual {v4, v12, v13}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/oneplus/widget/ScaleImageView;->m_BoundsAnimator:Landroid/animation/ValueAnimator;

    .line 1482
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oneplus/widget/ScaleImageView;->m_BoundsAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/oneplus/widget/ScaleImageView$5;

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/oneplus/widget/ScaleImageView$5;-><init>(Lcom/oneplus/widget/ScaleImageView;FFFF)V

    invoke-virtual {v11, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1498
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/widget/ScaleImageView;->m_BoundsAnimator:Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/oneplus/widget/ScaleImageView$6;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/oneplus/widget/ScaleImageView$6;-><init>(Lcom/oneplus/widget/ScaleImageView;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1523
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/widget/ScaleImageView;->m_BoundsAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    .line 1533
    .end local v6    # "leftDistance":F
    .end local v7    # "topDistance":F
    .end local v8    # "rightDistance":F
    .end local v9    # "bottomDistance":F
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/widget/ScaleImageView;->m_TargetImageBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    move/from16 v0, p1

    if-ne v4, v0, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/widget/ScaleImageView;->m_TargetImageBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    move/from16 v0, p2

    if-ne v4, v0, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/widget/ScaleImageView;->m_TargetImageBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    move/from16 v0, p3

    if-ne v4, v0, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/widget/ScaleImageView;->m_TargetImageBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    move/from16 v0, p4

    if-eq v4, v0, :cond_1

    .line 1535
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/widget/ScaleImageView;->m_TargetImageBounds:Landroid/graphics/Rect;

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 1536
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/widget/ScaleImageView;->m_StateCallbacks:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/oneplus/widget/ScaleImageView$StateCallback;

    .local v10, "callback":Lcom/oneplus/widget/ScaleImageView$StateCallback;
    move-object/from16 v11, p0

    move/from16 v12, p1

    move/from16 v13, p2

    move/from16 v14, p3

    move/from16 v15, p4

    .line 1537
    invoke-virtual/range {v10 .. v15}, Lcom/oneplus/widget/ScaleImageView$StateCallback;->onTargetBoundsChanged(Lcom/oneplus/widget/ScaleImageView;IIII)V

    goto :goto_2

    .line 1528
    .end local v10    # "callback":Lcom/oneplus/widget/ScaleImageView$StateCallback;
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBounds:Landroid/graphics/Rect;

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 1529
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/widget/ScaleImageView;->updateImageBounds()V

    goto :goto_1

    .line 1481
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setImageBounds(Landroid/graphics/Rect;Z)V
    .locals 6
    .param p1, "newBounds"    # Landroid/graphics/Rect;
    .param p2, "animation"    # Z

    .prologue
    .line 1429
    if-nez p1, :cond_0

    .line 1432
    :goto_0
    return-void

    .line 1431
    :cond_0
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    move-object v0, p0

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/widget/ScaleImageView;->setImageBounds(IIIIZ)V

    goto :goto_0
.end method

.method public setImageBounds(Lcom/oneplus/widget/ScaleImageView$BoundsType;)V
    .locals 4
    .param p1, "type"    # Lcom/oneplus/widget/ScaleImageView$BoundsType;

    .prologue
    .line 1396
    const/4 v0, 0x0

    .line 1397
    .local v0, "newBounds":Landroid/graphics/Rect;
    invoke-static {}, Lcom/oneplus/widget/ScaleImageView;->$SWITCH_TABLE$com$oneplus$widget$ScaleImageView$BoundsType()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/oneplus/widget/ScaleImageView$BoundsType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1410
    sget-object v1, Lcom/oneplus/widget/ScaleImageView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setImageBounds() - Bounds type is not supported to set image bounds: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1419
    :cond_0
    :goto_0
    return-void

    .line 1400
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageFitScreenLongSideBounds:Landroid/graphics/Rect;

    .line 1417
    :goto_1
    if-eqz v0, :cond_0

    .line 1418
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/widget/ScaleImageView;->setImageBounds(Landroid/graphics/Rect;Z)V

    goto :goto_0

    .line 1403
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageFitScreenShortSideBounds:Landroid/graphics/Rect;

    .line 1404
    goto :goto_1

    .line 1406
    :pswitch_2
    invoke-virtual {p0}, Lcom/oneplus/widget/ScaleImageView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/oneplus/widget/ScaleImageView;->getHeight()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/oneplus/widget/ScaleImageView;->calculateOriginalSizeImageBounds(II)V

    .line 1407
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageOriginalSizeBounds:Landroid/graphics/Rect;

    .line 1408
    goto :goto_1

    .line 1397
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setImageBoundsChangeEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 1548
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/widget/ScaleImageView;->setImageBoundsChangeEnabled(ZI)V

    .line 1549
    return-void
.end method

.method public setImageBoundsChangeEnabled(ZI)V
    .locals 5
    .param p1, "enable"    # Z
    .param p2, "flags"    # I

    .prologue
    const/4 v2, 0x0

    .line 1560
    iget-boolean v1, p0, Lcom/oneplus/widget/ScaleImageView;->m_IsBoundsChangeEnabled:Z

    if-ne v1, p1, :cond_1

    .line 1578
    :cond_0
    :goto_0
    return-void

    .line 1563
    :cond_1
    sget-object v1, Lcom/oneplus/widget/ScaleImageView;->TAG:Ljava/lang/String;

    const-string v3, "setImageBoundsChangeEnabled() - Enabled: "

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1566
    iput-boolean p1, p0, Lcom/oneplus/widget/ScaleImageView;->m_IsBoundsChangeEnabled:Z

    .line 1569
    sget v1, Lcom/oneplus/widget/ScaleImageView;->FLAG_KEEP_CURRENT_BOUNDS:I

    and-int/2addr v1, p2

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    .line 1570
    .local v0, "keepCurrentBounds":Z
    :goto_1
    if-nez p1, :cond_3

    if-eqz v0, :cond_3

    .line 1571
    new-instance v1, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBounds:Landroid/graphics/Rect;

    invoke-direct {v1, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v1, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBoundsFixed:Landroid/graphics/Rect;

    .line 1576
    :goto_2
    if-nez p1, :cond_0

    .line 1577
    iget-object v1, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBoundsFixed:Landroid/graphics/Rect;

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageFitScreenShortSideBounds:Landroid/graphics/Rect;

    :goto_3
    invoke-virtual {p0, v1, v2}, Lcom/oneplus/widget/ScaleImageView;->setImageBounds(Landroid/graphics/Rect;Z)V

    goto :goto_0

    .end local v0    # "keepCurrentBounds":Z
    :cond_2
    move v0, v2

    .line 1569
    goto :goto_1

    .line 1573
    .restart local v0    # "keepCurrentBounds":Z
    :cond_3
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBoundsFixed:Landroid/graphics/Rect;

    goto :goto_2

    .line 1577
    :cond_4
    iget-object v1, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBoundsFixed:Landroid/graphics/Rect;

    goto :goto_3
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1587
    sget v0, Lcom/oneplus/widget/ScaleImageView;->FLAG_KEEP_CURRENT_BOUNDS:I

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/widget/ScaleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;I)V

    .line 1588
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;I)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    .line 1599
    if-nez p1, :cond_0

    .line 1601
    invoke-direct {p0}, Lcom/oneplus/widget/ScaleImageView;->resetDrawable()V

    .line 1627
    :goto_0
    return-void

    .line 1612
    :cond_0
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    .line 1614
    invoke-direct {p0}, Lcom/oneplus/widget/ScaleImageView;->resetDrawable()V

    .line 1615
    iput-object p1, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 1616
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1617
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 1618
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;

    if-eqz v0, :cond_1

    .line 1619
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;

    invoke-virtual {v0, v1}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->setHighQualityBitmapEnabled(Z)V

    .line 1623
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/oneplus/widget/ScaleImageView;->setImageSize(II)V

    .line 1626
    invoke-virtual {p0}, Lcom/oneplus/widget/ScaleImageView;->invalidate()V

    goto :goto_0
.end method

.method public setImageMinimumBounds(Landroid/graphics/Rect;Z)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "animation"    # Z

    .prologue
    .line 1638
    if-nez p1, :cond_0

    .line 1639
    new-instance p1, Landroid/graphics/Rect;

    .end local p1    # "bounds":Landroid/graphics/Rect;
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 1640
    .restart local p1    # "bounds":Landroid/graphics/Rect;
    :cond_0
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageMinimumBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1661
    :cond_1
    :goto_0
    return-void

    .line 1647
    :cond_2
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageMinimumBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1650
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1653
    iget-boolean v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_IsAnimating:Z

    if-nez v0, :cond_3

    .line 1655
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/oneplus/widget/ScaleImageView;->calculateAdjustedImageBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 1656
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageAdjustedBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, p2}, Lcom/oneplus/widget/ScaleImageView;->setImageBounds(Landroid/graphics/Rect;Z)V

    goto :goto_0

    .line 1659
    :cond_3
    new-instance v0, Lcom/oneplus/widget/ScaleImageView$AdjustImageBoundsInfo;

    invoke-direct {v0, p0, p2}, Lcom/oneplus/widget/ScaleImageView$AdjustImageBoundsInfo;-><init>(Lcom/oneplus/widget/ScaleImageView;Z)V

    iput-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_PenddingAdjustImageBoundsInfo:Lcom/oneplus/widget/ScaleImageView$AdjustImageBoundsInfo;

    goto :goto_0
.end method

.method public setImagePaddings(IIIIZ)Z
    .locals 6
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I
    .param p5, "animation"    # Z

    .prologue
    .line 1679
    iput p1, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImagePaddingLeft:I

    .line 1680
    iput p2, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImagePaddingTop:I

    .line 1681
    iput p3, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImagePaddingRight:I

    .line 1682
    iput p4, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImagePaddingBottom:I

    .line 1685
    iget v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageWidth:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageHeight:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/widget/ScaleImageView;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/widget/ScaleImageView;->getHeight()I

    move-result v0

    if-gtz v0, :cond_1

    .line 1689
    :cond_0
    new-instance v0, Lcom/oneplus/widget/ScaleImageView$AnimatedPaddingInfo;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/widget/ScaleImageView$AnimatedPaddingInfo;-><init>(Lcom/oneplus/widget/ScaleImageView;IIII)V

    iput-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_PenddingAnimatedPaddingInfo:Lcom/oneplus/widget/ScaleImageView$AnimatedPaddingInfo;

    .line 1690
    const/4 v0, 0x0

    .line 1706
    :goto_0
    return v0

    .line 1693
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_PenddingAnimatedPaddingInfo:Lcom/oneplus/widget/ScaleImageView$AnimatedPaddingInfo;

    .line 1699
    iget v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageWidth:I

    iget v1, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageHeight:I

    invoke-virtual {p0}, Lcom/oneplus/widget/ScaleImageView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/oneplus/widget/ScaleImageView;->getHeight()I

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/oneplus/widget/ScaleImageView;->calculateFitScreenImageBounds(IIII)V

    .line 1702
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBoundsType:Lcom/oneplus/widget/ScaleImageView$BoundsType;

    sget-object v1, Lcom/oneplus/widget/ScaleImageView$BoundsType;->FIT_SHORT_SIDE:Lcom/oneplus/widget/ScaleImageView$BoundsType;

    if-ne v0, v1, :cond_2

    .line 1703
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageFitScreenShortSideBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, p5}, Lcom/oneplus/widget/ScaleImageView;->setImageBounds(Landroid/graphics/Rect;Z)V

    .line 1706
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setImageScaleRatio(FF)V
    .locals 2
    .param p1, "minRatio"    # F
    .param p2, "maxRatio"    # F

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 1719
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 1720
    const p1, 0x3f19999a    # 0.6f

    .line 1721
    :cond_0
    cmpl-float v0, p1, v1

    if-lez v0, :cond_1

    .line 1722
    const/high16 p1, 0x3f800000    # 1.0f

    .line 1723
    :cond_1
    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p2, v0

    if-nez v0, :cond_2

    .line 1724
    const/high16 p2, 0x40800000    # 4.0f

    .line 1725
    :cond_2
    cmpg-float v0, p2, v1

    if-gez v0, :cond_3

    .line 1726
    const/high16 p2, 0x3f800000    # 1.0f

    .line 1727
    :cond_3
    iput p2, p0, Lcom/oneplus/widget/ScaleImageView;->m_MaxImageScaleRatio:F

    .line 1728
    iput p1, p0, Lcom/oneplus/widget/ScaleImageView;->m_MinImageScaleRatio:F

    .line 1729
    invoke-direct {p0}, Lcom/oneplus/widget/ScaleImageView;->updateMaxMinImageScaledSize()V

    .line 1730
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageView;->m_ImageFitScreenShortSideBounds:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/widget/ScaleImageView;->setImageBounds(Landroid/graphics/Rect;Z)V

    .line 1731
    return-void
.end method

.method public setOnGestureCallback(Lcom/oneplus/widget/ScaleImageView$GestureCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/oneplus/widget/ScaleImageView$GestureCallback;

    .prologue
    .line 1831
    iput-object p1, p0, Lcom/oneplus/widget/ScaleImageView;->m_GestureCallback:Lcom/oneplus/widget/ScaleImageView$GestureCallback;

    .line 1832
    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0
    .param p1, "l"    # Landroid/view/View$OnTouchListener;

    .prologue
    .line 1839
    iput-object p1, p0, Lcom/oneplus/widget/ScaleImageView;->m_OuterTouchListener:Landroid/view/View$OnTouchListener;

    .line 1840
    return-void
.end method

.method public zoom(Landroid/graphics/RectF;Landroid/graphics/RectF;Z)Z
    .locals 22
    .param p1, "srcRegion"    # Landroid/graphics/RectF;
    .param p2, "dstRegion"    # Landroid/graphics/RectF;
    .param p3, "animation"    # Z

    .prologue
    .line 1927
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1928
    :cond_0
    const/4 v1, 0x0

    .line 1963
    :goto_0
    return v1

    .line 1929
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/widget/ScaleImageView;->getWidth()I

    move-result v21

    .line 1930
    .local v21, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/widget/ScaleImageView;->getHeight()I

    move-result v14

    .line 1931
    .local v14, "height":I
    if-lez v21, :cond_2

    if-gtz v14, :cond_3

    .line 1932
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 1935
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    mul-float v19, v1, v5

    .line 1936
    .local v19, "srcRegionWidth":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    mul-float v20, v1, v5

    .line 1937
    .local v20, "srdRegionHeight":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    move-object/from16 v0, p1

    iget v6, v0, Landroid/graphics/RectF;->left:F

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    add-int/2addr v1, v5

    int-to-float v0, v1

    move/from16 v17, v0

    .line 1938
    .local v17, "srcRegionLeft":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    move-object/from16 v0, p1

    iget v6, v0, Landroid/graphics/RectF;->top:F

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    add-int/2addr v1, v5

    int-to-float v0, v1

    move/from16 v18, v0

    .line 1941
    .local v18, "srcRegionTop":F
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    mul-float v13, v1, v5

    .line 1942
    .local v13, "dstRegionWidth":F
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->height()F

    move-result v1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    mul-float v10, v1, v5

    .line 1943
    .local v10, "dstRegionHeight":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    move-object/from16 v0, p2

    iget v6, v0, Landroid/graphics/RectF;->left:F

    mul-float/2addr v5, v6

    add-float v11, v1, v5

    .line 1944
    .local v11, "dstRegionLeft":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/widget/ScaleImageView;->m_ImageBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    move-object/from16 v0, p2

    iget v6, v0, Landroid/graphics/RectF;->top:F

    mul-float/2addr v5, v6

    add-float v12, v1, v5

    .line 1947
    .local v12, "dstRegionTop":F
    div-float v2, v13, v19

    .line 1948
    .local v2, "scaleRatio":F
    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, v19, v1

    add-float v3, v17, v1

    .line 1949
    .local v3, "pivotX":F
    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, v20, v1

    add-float v4, v18, v1

    .line 1950
    .local v4, "pivotY":F
    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, v13, v1

    add-float v15, v11, v1

    .line 1951
    .local v15, "newPivotX":F
    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, v10, v1

    add-float v16, v12, v1

    .line 1952
    .local v16, "newPivotY":F
    sub-float v8, v15, v3

    .line 1953
    .local v8, "distanceX":F
    sub-float v9, v16, v4

    .line 1954
    .local v9, "distanceY":F
    neg-float v5, v8

    neg-float v6, v9

    move-object/from16 v1, p0

    move/from16 v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/oneplus/widget/ScaleImageView;->setImageScaleAndMoveBy(FFFFFZ)V

    .line 1963
    const/4 v1, 0x1

    goto/16 :goto_0
.end method
