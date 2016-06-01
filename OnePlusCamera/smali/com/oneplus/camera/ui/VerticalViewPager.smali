.class public Lcom/oneplus/camera/ui/VerticalViewPager;
.super Landroid/view/ViewGroup;
.source "VerticalViewPager.java"

# interfaces
.implements Lcom/oneplus/camera/ui/CameraPager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/ui/VerticalViewPager$ViewPositionComparator;,
        Lcom/oneplus/camera/ui/VerticalViewPager$LayoutParams;,
        Lcom/oneplus/camera/ui/VerticalViewPager$PagerObserver;,
        Lcom/oneplus/camera/ui/VerticalViewPager$MyAccessibilityDelegate;,
        Lcom/oneplus/camera/ui/VerticalViewPager$SavedState;,
        Lcom/oneplus/camera/ui/VerticalViewPager$Decor;,
        Lcom/oneplus/camera/ui/VerticalViewPager$OnAdapterChangeListener;,
        Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;
    }
.end annotation


# static fields
.field private static final CLOSE_ENOUGH:I = 0x2

.field private static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field private static final DEFAULT_GUTTER_SIZE:I = 0x10

.field private static final DEFAULT_OFFSCREEN_PAGES:I = 0x1

.field private static final DRAW_ORDER_DEFAULT:I = 0x0

.field private static final DRAW_ORDER_FORWARD:I = 0x1

.field private static final DRAW_ORDER_REVERSE:I = 0x2

.field private static final INVALID_POINTER:I = -0x1

.field private static final LAYOUT_ATTRS:[I

.field private static final MAX_SETTLE_DURATION:I = 0x258

.field private static final MIN_DISTANCE_FOR_FLING:I = 0x19

.field private static final MIN_FLING_VELOCITY:I = 0x190

.field public static final SCROLL_STATE_DRAGGING:I = 0x1

.field public static final SCROLL_STATE_IDLE:I = 0x0

.field public static final SCROLL_STATE_SETTLING:I = 0x2

.field private static final TAG:Ljava/lang/String;

.field private static final USE_CACHE:Z

.field private static final sInterpolator:Landroid/view/animation/Interpolator;

.field private static final sPositionComparator:Lcom/oneplus/camera/ui/VerticalViewPager$ViewPositionComparator;


# instance fields
.field private mActivePointerId:I

.field private mAdapter:Landroid/support/v4/view/PagerAdapter;

.field private mAdapterChangeListener:Lcom/oneplus/camera/ui/VerticalViewPager$OnAdapterChangeListener;

.field private mBottomEdge:Landroid/support/v4/widget/EdgeEffectCompat;

.field private mCalledSuper:Z

.field private mChildHeightMeasureSpec:I

.field private mChildWidthMeasureSpec:I

.field private mCloseEnough:I

.field private mCurItem:I

.field private mDecorChildCount:I

.field private mDefaultGutterSize:I

.field private mDrawingOrder:I

.field private mDrawingOrderedChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mEndScrollRunnable:Ljava/lang/Runnable;

.field private mExpectedAdapterCount:I

.field private mFakeDragBeginTime:J

.field private mFakeDragging:Z

.field private mFirstLayout:Z

.field private mFirstOffset:F

.field private mFlingDistance:I

.field private mGutterSize:I

.field private mIgnoreGutter:Z

.field private mInLayout:Z

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private mIsBeingDragged:Z

.field private mIsUnableToDrag:Z

.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mLastOffset:F

.field private mLeftPageBounds:I

.field private mMarginDrawable:Landroid/graphics/drawable/Drawable;

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mNeedCalculatePageOffsets:Z

.field private mObserver:Lcom/oneplus/camera/ui/VerticalViewPager$PagerObserver;

.field private mOffscreenPageLimit:I

.field private mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private mPageMargin:I

.field private mPageTransformer:Landroid/support/v4/view/ViewPager$PageTransformer;

.field private mPopulatePending:Z

.field private mRestoredAdapterState:Landroid/os/Parcelable;

.field private mRestoredClassLoader:Ljava/lang/ClassLoader;

.field private mRestoredCurItem:I

.field private mRightPageBounds:I

.field private mScrollState:I

.field private mScroller:Landroid/widget/Scroller;

.field private mScrollingCacheEnabled:Z

.field private mSetChildrenDrawingOrderEnabled:Ljava/lang/reflect/Method;

.field private mSwipeable:Z

.field private final mTempItem:Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTopEdge:Landroid/support/v4/widget/EdgeEffectCompat;

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 56
    const-class v0, Lcom/oneplus/camera/ui/VerticalViewPager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/camera/ui/VerticalViewPager;->TAG:Ljava/lang/String;

    .line 69
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100b3

    aput v2, v0, v1

    sput-object v0, Lcom/oneplus/camera/ui/VerticalViewPager;->LAYOUT_ATTRS:[I

    .line 87
    new-instance v0, Lcom/oneplus/camera/ui/VerticalViewPager$1;

    invoke-direct {v0}, Lcom/oneplus/camera/ui/VerticalViewPager$1;-><init>()V

    sput-object v0, Lcom/oneplus/camera/ui/VerticalViewPager;->COMPARATOR:Ljava/util/Comparator;

    .line 94
    new-instance v0, Lcom/oneplus/camera/ui/VerticalViewPager$2;

    invoke-direct {v0}, Lcom/oneplus/camera/ui/VerticalViewPager$2;-><init>()V

    sput-object v0, Lcom/oneplus/camera/ui/VerticalViewPager;->sInterpolator:Landroid/view/animation/Interpolator;

    .line 195
    new-instance v0, Lcom/oneplus/camera/ui/VerticalViewPager$ViewPositionComparator;

    invoke-direct {v0}, Lcom/oneplus/camera/ui/VerticalViewPager$ViewPositionComparator;-><init>()V

    sput-object v0, Lcom/oneplus/camera/ui/VerticalViewPager;->sPositionComparator:Lcom/oneplus/camera/ui/VerticalViewPager$ViewPositionComparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x1

    .line 237
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    .line 102
    new-instance v0, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;

    invoke-direct {v0}, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mTempItem:Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;

    .line 104
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mTempRect:Landroid/graphics/Rect;

    .line 108
    iput v2, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mRestoredCurItem:I

    .line 109
    iput-object v4, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 110
    iput-object v4, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    .line 122
    const v0, -0x800001

    iput v0, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mFirstOffset:F

    .line 123
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mLastOffset:F

    .line 132
    iput v1, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mOffscreenPageLimit:I

    .line 151
    iput v2, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mActivePointerId:I

    .line 178
    iput-boolean v1, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mSwipeable:Z

    .line 179
    iput-boolean v1, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mFirstLayout:Z

    .line 180
    iput-boolean v3, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mNeedCalculatePageOffsets:Z

    .line 213
    new-instance v0, Lcom/oneplus/camera/ui/VerticalViewPager$3;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/ui/VerticalViewPager$3;-><init>(Lcom/oneplus/camera/ui/VerticalViewPager;)V

    iput-object v0, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    .line 220
    iput v3, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mScrollState:I

    .line 238
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/VerticalViewPager;->initViewPager()V

    .line 239
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x1

    .line 242
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    .line 102
    new-instance v0, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;

    invoke-direct {v0}, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mTempItem:Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;

    .line 104
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mTempRect:Landroid/graphics/Rect;

    .line 108
    iput v2, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mRestoredCurItem:I

    .line 109
    iput-object v4, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 110
    iput-object v4, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    .line 122
    const v0, -0x800001

    iput v0, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mFirstOffset:F

    .line 123
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mLastOffset:F

    .line 132
    iput v1, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mOffscreenPageLimit:I

    .line 151
    iput v2, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mActivePointerId:I

    .line 178
    iput-boolean v1, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mSwipeable:Z

    .line 179
    iput-boolean v1, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mFirstLayout:Z

    .line 180
    iput-boolean v3, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mNeedCalculatePageOffsets:Z

    .line 213
    new-instance v0, Lcom/oneplus/camera/ui/VerticalViewPager$3;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/ui/VerticalViewPager$3;-><init>(Lcom/oneplus/camera/ui/VerticalViewPager;)V

    iput-object v0, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    .line 220
    iput v3, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mScrollState:I

    .line 243
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/VerticalViewPager;->initViewPager()V

    .line 244
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/camera/ui/VerticalViewPager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/VerticalViewPager;
    .param p1, "x1"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/VerticalViewPager;->setScrollState(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/camera/ui/VerticalViewPager;)Landroid/support/v4/view/PagerAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/VerticalViewPager;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/camera/ui/VerticalViewPager;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/VerticalViewPager;

    .prologue
    .line 54
    iget v0, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mCurItem:I

    return v0
.end method

.method static synthetic access$400()[I
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/oneplus/camera/ui/VerticalViewPager;->LAYOUT_ATTRS:[I

    return-object v0
.end method

.method private calculatePageOffsets(Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;ILcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;)V
    .locals 14
    .param p1, "curItem"    # Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;
    .param p2, "curIndex"    # I
    .param p3, "oldCurInfo"    # Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;

    .prologue
    .line 1020
    iget-object v12, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v12}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    .line 1021
    .local v1, "N":I
    invoke-direct {p0}, Lcom/oneplus/camera/ui/VerticalViewPager;->getClientHeight()I

    move-result v2

    .line 1022
    .local v2, "height":I
    if-lez v2, :cond_0

    iget v12, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mPageMargin:I

    int-to-float v12, v12

    int-to-float v13, v2

    div-float v7, v12, v13

    .line 1024
    .local v7, "marginOffset":F
    :goto_0
    if-eqz p3, :cond_6

    .line 1025
    move-object/from16 v0, p3

    iget v9, v0, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;->position:I

    .line 1027
    .local v9, "oldCurPosition":I
    iget v12, p1, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;->position:I

    if-ge v9, v12, :cond_3

    .line 1028
    const/4 v6, 0x0

    .line 1029
    .local v6, "itemIndex":I
    const/4 v4, 0x0

    .line 1030
    .local v4, "ii":Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;
    move-object/from16 v0, p3

    iget v12, v0, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;->offset:F

    move-object/from16 v0, p3

    iget v13, v0, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;->heightFactor:F

    add-float/2addr v12, v13

    add-float v8, v12, v7

    .line 1031
    .local v8, "offset":F
    add-int/lit8 v10, v9, 0x1

    .line 1032
    .local v10, "pos":I
    :goto_1
    iget v12, p1, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;->position:I

    if-gt v10, v12, :cond_6

    iget-object v12, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v6, v12, :cond_6

    .line 1033
    iget-object v12, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "ii":Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;
    check-cast v4, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;

    .line 1034
    .restart local v4    # "ii":Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;
    :goto_2
    iget v12, v4, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;->position:I

    if-le v10, v12, :cond_1

    iget-object v12, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    if-ge v6, v12, :cond_1

    .line 1035
    add-int/lit8 v6, v6, 0x1

    .line 1036
    iget-object v12, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "ii":Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;
    check-cast v4, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;

    .restart local v4    # "ii":Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;
    goto :goto_2

    .line 1022
    .end local v4    # "ii":Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;
    .end local v6    # "itemIndex":I
    .end local v7    # "marginOffset":F
    .end local v8    # "offset":F
    .end local v9    # "oldCurPosition":I
    .end local v10    # "pos":I
    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    .line 1038
    .restart local v4    # "ii":Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;
    .restart local v6    # "itemIndex":I
    .restart local v7    # "marginOffset":F
    .restart local v8    # "offset":F
    .restart local v9    # "oldCurPosition":I
    .restart local v10    # "pos":I
    :cond_1
    :goto_3
    iget v12, v4, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;->position:I

    if-ge v10, v12, :cond_2

    .line 1041
    iget-object v12, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v12, v10}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v12

    add-float/2addr v12, v7

    add-float/2addr v8, v12

    .line 1042
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 1044
    :cond_2
    iput v8, v4, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;->offset:F

    .line 1045
    iget v12, v4, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;->heightFactor:F

    add-float/2addr v12, v7

    add-float/2addr v8, v12

    .line 1032
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1047
    .end local v4    # "ii":Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;
    .end local v6    # "itemIndex":I
    .end local v8    # "offset":F
    .end local v10    # "pos":I
    :cond_3
    iget v12, p1, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;->position:I

    if-le v9, v12, :cond_6

    .line 1048
    iget-object v12, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v6, v12, -0x1

    .line 1049
    .restart local v6    # "itemIndex":I
    const/4 v4, 0x0

    .line 1050
    .restart local v4    # "ii":Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;
    move-object/from16 v0, p3

    iget v8, v0, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;->offset:F

    .line 1051
    .restart local v8    # "offset":F
    add-int/lit8 v10, v9, -0x1

    .line 1052
    .restart local v10    # "pos":I
    :goto_4
    iget v12, p1, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;->position:I

    if-lt v10, v12, :cond_6

    if-ltz v6, :cond_6

    .line 1053
    iget-object v12, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "ii":Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;
    check-cast v4, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;

    .line 1054
    .restart local v4    # "ii":Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;
    :goto_5
    iget v12, v4, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;->position:I

    if-ge v10, v12, :cond_4

    if-lez v6, :cond_4

    .line 1055
    add-int/lit8 v6, v6, -0x1

    .line 1056
    iget-object v12, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "ii":Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;
    check-cast v4, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;

    .restart local v4    # "ii":Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;
    goto :goto_5

    .line 1058
    :cond_4
    :goto_6
    iget v12, v4, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;->position:I

    if-le v10, v12, :cond_5

    .line 1061
    iget-object v12, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v12, v10}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v12

    add-float/2addr v12, v7

    sub-float/2addr v8, v12

    .line 1062
    add-int/lit8 v10, v10, -0x1

    goto :goto_6

    .line 1064
    :cond_5
    iget v12, v4, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;->heightFactor:F

    add-float/2addr v12, v7

    sub-float/2addr v8, v12

    .line 1065
    iput v8, v4, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;->offset:F

    .line 1052
    add-int/lit8 v10, v10, -0x1

    goto :goto_4

    .line 1071
    .end local v4    # "ii":Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;
    .end local v6    # "itemIndex":I
    .end local v8    # "offset":F
    .end local v9    # "oldCurPosition":I
    .end local v10    # "pos":I
    :cond_6
    iget-object v12, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1072
    .local v5, "itemCount":I
    iget v8, p1, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;->offset:F

    .line 1073
    .restart local v8    # "offset":F
    iget v12, p1, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;->position:I

    add-int/lit8 v10, v12, -0x1

    .line 1074
    .restart local v10    # "pos":I
    iget v12, p1, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;->position:I

    if-nez v12, :cond_7

    iget v12, p1, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;->offset:F

    :goto_7
    iput v12, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mFirstOffset:F

    .line 1075
    iget v12, p1, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;->position:I

    add-int/lit8 v13, v1, -0x1

    if-ne v12, v13, :cond_8

    iget v12, p1, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;->offset:F

    iget v13, p1, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;->heightFactor:F

    add-float/2addr v12, v13

    const/high16 v13, 0x3f800000    # 1.0f

    sub-float/2addr v12, v13

    :goto_8
    iput v12, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mLastOffset:F

    .line 1078
    add-int/lit8 v3, p2, -0x1

    .local v3, "i":I
    :goto_9
    if-ltz v3, :cond_b

    .line 1079
    iget-object v12, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;

    .line 1080
    .restart local v4    # "ii":Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;
    :goto_a
    iget v12, v4, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;->position:I

    if-le v10, v12, :cond_9

    .line 1081
    iget-object v12, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    add-int/lit8 v11, v10, -0x1

    .end local v10    # "pos":I
    .local v11, "pos":I
    invoke-virtual {v12, v10}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v12

    add-float/2addr v12, v7

    sub-float/2addr v8, v12

    move v10, v11

    .end local v11    # "pos":I
    .restart local v10    # "pos":I
    goto :goto_a

    .line 1074
    .end local v3    # "i":I
    .end local v4    # "ii":Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;
    :cond_7
    const v12, -0x800001

    goto :goto_7

    .line 1075
    :cond_8
    const v12, 0x7f7fffff    # Float.MAX_VALUE

    goto :goto_8

    .line 1083
    .restart local v3    # "i":I
    .restart local v4    # "ii":Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;
    :cond_9
    iget v12, v4, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;->heightFactor:F

    add-float/2addr v12, v7

    sub-float/2addr v8, v12

    .line 1084
    iput v8, v4, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;->offset:F

    .line 1085
    iget v12, v4, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;->position:I

    if-nez v12, :cond_a

    iput v8, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mFirstOffset:F

    .line 1078
    :cond_a
    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v10, v10, -0x1

    goto :goto_9

    .line 1087
    .end local v4    # "ii":Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;
    :cond_b
    iget v12, p1, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;->offset:F

    iget v13, p1, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;->heightFactor:F

    add-float/2addr v12, v13

    add-float v8, v12, v7

    .line 1088
    iget v12, p1, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;->position:I

    add-int/lit8 v10, v12, 0x1

    .line 1090
    add-int/lit8 v3, p2, 0x1

    :goto_b
    if-ge v3, v5, :cond_e

    .line 1091
    iget-object v12, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;

    .line 1092
    .restart local v4    # "ii":Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;
    :goto_c
    iget v12, v4, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;->position:I

    if-ge v10, v12, :cond_c

    .line 1093
    iget-object v12, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    add-int/lit8 v11, v10, 0x1

    .end local v10    # "pos":I
    .restart local v11    # "pos":I
    invoke-virtual {v12, v10}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v12

    add-float/2addr v12, v7

    add-float/2addr v8, v12

    move v10, v11

    .end local v11    # "pos":I
    .restart local v10    # "pos":I
    goto :goto_c

    .line 1095
    :cond_c
    iget v12, v4, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;->position:I

    add-int/lit8 v13, v1, -0x1

    if-ne v12, v13, :cond_d

    .line 1096
    iget v12, v4, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;->heightFactor:F

    add-float/2addr v12, v8

    const/high16 v13, 0x3f800000    # 1.0f

    sub-float/2addr v12, v13

    iput v12, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mLastOffset:F

    .line 1098
    :cond_d
    iput v8, v4, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;->offset:F

    .line 1099
    iget v12, v4, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;->heightFactor:F

    add-float/2addr v12, v7

    add-float/2addr v8, v12

    .line 1090
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v10, v10, 0x1

    goto :goto_b

    .line 1102
    .end local v4    # "ii":Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;
    :cond_e
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mNeedCalculatePageOffsets:Z

    .line 1103
    return-void
.end method

.method private completeScroll(Z)V
    .locals 10
    .param p1, "postEvents"    # Z

    .prologue
    const/4 v7, 0x0

    .line 1635
    iget v8, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mScrollState:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_3

    const/4 v2, 0x1

    .line 1636
    .local v2, "needPopulate":Z
    :goto_0
    if-eqz v2, :cond_1

    .line 1638
    invoke-direct {p0, v7}, Lcom/oneplus/camera/ui/VerticalViewPager;->setScrollingCacheEnabled(Z)V

    .line 1639
    iget-object v8, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1640
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/VerticalViewPager;->getScrollX()I

    move-result v3

    .line 1641
    .local v3, "oldX":I
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/VerticalViewPager;->getScrollY()I

    move-result v4

    .line 1642
    .local v4, "oldY":I
    iget-object v8, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->getCurrX()I

    move-result v5

    .line 1643
    .local v5, "x":I
    iget-object v8, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->getCurrY()I

    move-result v6

    .line 1644
    .local v6, "y":I
    if-ne v3, v5, :cond_0

    if-eq v4, v6, :cond_1

    .line 1645
    :cond_0
    invoke-virtual {p0, v5, v6}, Lcom/oneplus/camera/ui/VerticalViewPager;->scrollTo(II)V

    .line 1648
    .end local v3    # "oldX":I
    .end local v4    # "oldY":I
    .end local v5    # "x":I
    .end local v6    # "y":I
    :cond_1
    iput-boolean v7, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mPopulatePending:Z

    .line 1649
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v8, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v0, v8, :cond_4

    .line 1650
    iget-object v8, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;

    .line 1651
    .local v1, "ii":Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;
    iget-boolean v8, v1, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;->scrolling:Z

    if-eqz v8, :cond_2

    .line 1652
    const/4 v2, 0x1

    .line 1653
    iput-boolean v7, v1, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;->scrolling:Z

    .line 1649
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    .end local v1    # "ii":Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;
    .end local v2    # "needPopulate":Z
    :cond_3
    move v2, v7

    .line 1635
    goto :goto_0

    .line 1656
    .restart local v0    # "i":I
    .restart local v2    # "needPopulate":Z
    :cond_4
    if-eqz v2, :cond_5

    .line 1657
    if-eqz p1, :cond_6

    .line 1658
    iget-object v7, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-static {p0, v7}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 1663
    :cond_5
    :goto_2
    return-void

    .line 1660
    :cond_6
    iget-object v7, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-interface {v7}, Ljava/lang/Runnable;->run()V

    goto :goto_2
.end method

.method private determineTargetPage(IFII)I
    .locals 6
    .param p1, "currentPage"    # I
    .param p2, "pageOffset"    # F
    .param p3, "velocity"    # I
    .param p4, "deltaY"    # I

    .prologue
    .line 2054
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mFlingDistance:I

    if-le v4, v5, :cond_2

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mMinimumVelocity:I

    if-le v4, v5, :cond_2

    .line 2055
    if-lez p3, :cond_1

    move v2, p1

    .line 2061
    .local v2, "targetPage":I
    :goto_0
    iget-object v4, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 2062
    iget-object v4, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;

    .line 2063
    .local v0, "firstItem":Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;
    iget-object v4, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;

    .line 2066
    .local v1, "lastItem":Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;
    iget v4, v0, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;->position:I

    iget v5, v1, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;->position:I

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 2069
    .end local v0    # "firstItem":Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;
    .end local v1    # "lastItem":Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;
    :cond_0
    return v2

    .line 2055
    .end local v2    # "targetPage":I
    :cond_1
    add-int/lit8 v2, p1, 0x1

    goto :goto_0

    .line 2057
    :cond_2
    iget v4, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mCurItem:I

    if-lt p1, v4, :cond_3

    const v3, 0x3ecccccd    # 0.4f

    .line 2058
    .local v3, "truncator":F
    :goto_1
    int-to-float v4, p1

    add-float/2addr v4, p2

    add-float/2addr v4, v3

    float-to-int v2, v4

    .restart local v2    # "targetPage":I
    goto :goto_0

    .line 2057
    .end local v2    # "targetPage":I
    .end local v3    # "truncator":F
    :cond_3
    const v3, 0x3f19999a    # 0.6f

    goto :goto_1
.end method

.method private enableLayers(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    .line 1670
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/VerticalViewPager;->getChildCount()I

    move-result v0

    .line 1671
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1672
    if-eqz p1, :cond_0

    const/4 v2, 0x2

    .line 1674
    .local v2, "layerType":I
    :goto_1
    invoke-virtual {p0, v1}, Lcom/oneplus/camera/ui/VerticalViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Landroid/support/v4/view/ViewCompat;->setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V

    .line 1671
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1672
    .end local v2    # "layerType":I
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 1676
    :cond_1
    return-void
.end method

.method private endDrag()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2299
    iput-boolean v0, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mIsBeingDragged:Z

    .line 2300
    iput-boolean v0, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mIsUnableToDrag:Z

    .line 2302
    iget-object v0, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 2303
    iget-object v0, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 2304
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2306
    :cond_0
    return-void
.end method

.method private getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;
    .locals 4
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 2480
    if-nez p1, :cond_0

    .line 2481
    new-instance p1, Landroid/graphics/Rect;

    .end local p1    # "outRect":Landroid/graphics/Rect;
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 2483
    .restart local p1    # "outRect":Landroid/graphics/Rect;
    :cond_0
    if-nez p2, :cond_2

    .line 2484
    invoke-virtual {p1, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 2502
    :cond_1
    return-object p1

    .line 2487
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v2

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 2488
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v2

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 2489
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 2490
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v2

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 2492
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 2493
    .local v1, "parent":Landroid/view/ViewParent;
    :goto_0
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    if-eq v1, p0, :cond_1

    move-object v0, v1

    .line 2494
    check-cast v0, Landroid/view/ViewGroup;

    .line 2495
    .local v0, "group":Landroid/view/ViewGroup;
    iget v2, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 2496
    iget v2, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getRight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 2497
    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTop()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 2498
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBottom()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 2500
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 2501
    goto :goto_0
.end method

.method private getClientHeight()I
    .locals 2

    .prologue
    .line 375
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/VerticalViewPager;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/VerticalViewPager;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/VerticalViewPager;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private infoForCurrentScrollPosition()Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;
    .locals 15

    .prologue
    const/4 v9, 0x0

    .line 2011
    invoke-direct {p0}, Lcom/oneplus/camera/ui/VerticalViewPager;->getClientHeight()I

    move-result v2

    .line 2012
    .local v2, "height":I
    if-lez v2, :cond_5

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/VerticalViewPager;->getScrollY()I

    move-result v13

    int-to-float v13, v13

    int-to-float v14, v2

    div-float v11, v13, v14

    .line 2013
    .local v11, "scrollOffset":F
    :goto_0
    if-lez v2, :cond_0

    iget v13, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mPageMargin:I

    int-to-float v13, v13

    int-to-float v14, v2

    div-float v9, v13, v14

    .line 2014
    .local v9, "marginOffset":F
    :cond_0
    const/4 v8, -0x1

    .line 2015
    .local v8, "lastPos":I
    const/4 v7, 0x0

    .line 2016
    .local v7, "lastOffset":F
    const/4 v5, 0x0

    .line 2017
    .local v5, "lastHeight":F
    const/4 v1, 0x1

    .line 2019
    .local v1, "first":Z
    const/4 v6, 0x0

    .line 2020
    .local v6, "lastItem":Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v13, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v3, v13, :cond_4

    .line 2021
    iget-object v13, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;

    .line 2023
    .local v4, "ii":Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;
    if-nez v1, :cond_1

    iget v13, v4, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;->position:I

    add-int/lit8 v14, v8, 0x1

    if-eq v13, v14, :cond_1

    .line 2025
    iget-object v4, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mTempItem:Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;

    .line 2026
    add-float v13, v7, v5

    add-float/2addr v13, v9

    iput v13, v4, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;->offset:F

    .line 2027
    add-int/lit8 v13, v8, 0x1

    iput v13, v4, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;->position:I

    .line 2028
    iget-object v13, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget v14, v4, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;->position:I

    invoke-virtual {v13, v14}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v13

    iput v13, v4, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;->heightFactor:F

    .line 2029
    add-int/lit8 v3, v3, -0x1

    .line 2031
    :cond_1
    iget v10, v4, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;->offset:F

    .line 2033
    .local v10, "offset":F
    move v12, v10

    .line 2034
    .local v12, "topBound":F
    iget v13, v4, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;->heightFactor:F

    add-float/2addr v13, v10

    add-float v0, v13, v9

    .line 2035
    .local v0, "bottomBound":F
    if-nez v1, :cond_2

    cmpl-float v13, v11, v12

    if-ltz v13, :cond_4

    .line 2036
    :cond_2
    cmpg-float v13, v11, v0

    if-ltz v13, :cond_3

    iget-object v13, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    if-ne v3, v13, :cond_6

    :cond_3
    move-object v6, v4

    .line 2049
    .end local v0    # "bottomBound":F
    .end local v4    # "ii":Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;
    .end local v6    # "lastItem":Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;
    .end local v10    # "offset":F
    .end local v12    # "topBound":F
    :cond_4
    return-object v6

    .end local v1    # "first":Z
    .end local v3    # "i":I
    .end local v5    # "lastHeight":F
    .end local v7    # "lastOffset":F
    .end local v8    # "lastPos":I
    .end local v9    # "marginOffset":F
    .end local v11    # "scrollOffset":F
    :cond_5
    move v11, v9

    .line 2012
    goto :goto_0

    .line 2042
    .restart local v0    # "bottomBound":F
    .restart local v1    # "first":Z
    .restart local v3    # "i":I
    .restart local v4    # "ii":Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;
    .restart local v5    # "lastHeight":F
    .restart local v6    # "lastItem":Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;
    .restart local v7    # "lastOffset":F
    .restart local v8    # "lastPos":I
    .restart local v9    # "marginOffset":F
    .restart local v10    # "offset":F
    .restart local v11    # "scrollOffset":F
    .restart local v12    # "topBound":F
    :cond_6
    const/4 v1, 0x0

    .line 2043
    iget v8, v4, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;->position:I

    .line 2044
    move v7, v10

    .line 2045
    iget v5, v4, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;->heightFactor:F

    .line 2046
    move-object v6, v4

    .line 2020
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private isGutterDrag(FF)Z
    .locals 3
    .param p1, "y"    # F
    .param p2, "dy"    # F

    .prologue
    const/4 v2, 0x0

    .line 1666
    iget v0, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mGutterSize:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    cmpl-float v0, p2, v2

    if-gtz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/VerticalViewPager;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mGutterSize:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    cmpg-float v0, p2, v2

    if-gez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 2284
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v2

    .line 2285
    .local v2, "pointerIndex":I
    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v1

    .line 2286
    .local v1, "pointerId":I
    iget v3, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    .line 2289
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 2290
    .local v0, "newPointerIndex":I
    :goto_0
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v3

    iput v3, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mLastMotionY:F

    .line 2291
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v3

    iput v3, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mActivePointerId:I

    .line 2292
    iget-object v3, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    .line 2293
    iget-object v3, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 2296
    .end local v0    # "newPointerIndex":I
    :cond_0
    return-void

    .line 2289
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private pageScrolled(I)Z
    .locals 10
    .param p1, "ypos"    # I

    .prologue
    const/4 v7, 0x0

    .line 1530
    iget-object v8, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_0

    .line 1531
    iput-boolean v7, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mCalledSuper:Z

    .line 1532
    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8, v7}, Lcom/oneplus/camera/ui/VerticalViewPager;->onPageScrolled(IFI)V

    .line 1533
    iget-boolean v8, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mCalledSuper:Z

    if-nez v8, :cond_2

    .line 1534
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "onPageScrolled did not call superclass implementation"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1539
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/camera/ui/VerticalViewPager;->infoForCurrentScrollPosition()Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;

    move-result-object v3

    .line 1540
    .local v3, "ii":Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;
    invoke-direct {p0}, Lcom/oneplus/camera/ui/VerticalViewPager;->getClientHeight()I

    move-result v1

    .line 1541
    .local v1, "height":I
    iget v8, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mPageMargin:I

    add-int v2, v1, v8

    .line 1542
    .local v2, "heightWithMargin":I
    iget v8, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mPageMargin:I

    int-to-float v8, v8

    int-to-float v9, v1

    div-float v4, v8, v9

    .line 1543
    .local v4, "marginOffset":F
    iget v0, v3, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;->position:I

    .line 1544
    .local v0, "currentPage":I
    int-to-float v8, p1

    int-to-float v9, v1

    div-float/2addr v8, v9

    iget v9, v3, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;->offset:F

    sub-float/2addr v8, v9

    iget v9, v3, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;->heightFactor:F

    add-float/2addr v9, v4

    div-float v6, v8, v9

    .line 1546
    .local v6, "pageOffset":F
    int-to-float v8, v2

    mul-float/2addr v8, v6

    float-to-int v5, v8

    .line 1548
    .local v5, "offsetPixels":I
    iput-boolean v7, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mCalledSuper:Z

    .line 1549
    invoke-virtual {p0, v0, v6, v5}, Lcom/oneplus/camera/ui/VerticalViewPager;->onPageScrolled(IFI)V

    .line 1550
    iget-boolean v7, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mCalledSuper:Z

    if-nez v7, :cond_1

    .line 1551
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "onPageScrolled did not call superclass implementation"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1554
    :cond_1
    const/4 v7, 0x1

    .end local v0    # "currentPage":I
    .end local v1    # "height":I
    .end local v2    # "heightWithMargin":I
    .end local v3    # "ii":Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;
    .end local v4    # "marginOffset":F
    .end local v5    # "offsetPixels":I
    .end local v6    # "pageOffset":F
    :cond_2
    return v7
.end method

.method private performDrag(F)Z
    .locals 17
    .param p1, "y"    # F

    .prologue
    .line 1960
    const/4 v8, 0x0

    .line 1962
    .local v8, "needsInvalidate":Z
    move-object/from16 v0, p0

    iget v14, v0, Lcom/oneplus/camera/ui/VerticalViewPager;->mLastMotionY:F

    sub-float v4, v14, p1

    .line 1963
    .local v4, "deltaY":F
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oneplus/camera/ui/VerticalViewPager;->mLastMotionY:F

    .line 1965
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/ui/VerticalViewPager;->getScrollY()I

    move-result v14

    int-to-float v9, v14

    .line 1966
    .local v9, "oldScrollY":F
    add-float v11, v9, v4

    .line 1967
    .local v11, "scrollY":F
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/camera/ui/VerticalViewPager;->getClientHeight()I

    move-result v6

    .line 1969
    .local v6, "height":I
    int-to-float v14, v6

    move-object/from16 v0, p0

    iget v15, v0, Lcom/oneplus/camera/ui/VerticalViewPager;->mFirstOffset:F

    mul-float v13, v14, v15

    .line 1970
    .local v13, "topBound":F
    int-to-float v14, v6

    move-object/from16 v0, p0

    iget v15, v0, Lcom/oneplus/camera/ui/VerticalViewPager;->mLastOffset:F

    mul-float v3, v14, v15

    .line 1971
    .local v3, "bottomBound":F
    const/4 v12, 0x1

    .line 1972
    .local v12, "topAbsolute":Z
    const/4 v2, 0x1

    .line 1974
    .local v2, "bottomAbsolute":Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/camera/ui/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;

    .line 1975
    .local v5, "firstItem":Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/camera/ui/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/camera/ui/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;

    .line 1976
    .local v7, "lastItem":Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;
    iget v14, v5, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;->position:I

    if-eqz v14, :cond_0

    .line 1977
    const/4 v12, 0x0

    .line 1978
    iget v14, v5, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;->offset:F

    int-to-float v15, v6

    mul-float v13, v14, v15

    .line 1980
    :cond_0
    iget v14, v7, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;->position:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/camera/ui/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v15}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    if-eq v14, v15, :cond_1

    .line 1981
    const/4 v2, 0x0

    .line 1982
    iget v14, v7, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;->offset:F

    int-to-float v15, v6

    mul-float v3, v14, v15

    .line 1985
    :cond_1
    cmpg-float v14, v11, v13

    if-gez v14, :cond_4

    .line 1986
    if-eqz v12, :cond_2

    .line 1987
    sub-float v10, v13, v11

    .line 1988
    .local v10, "over":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/camera/ui/VerticalViewPager;->mTopEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v15

    int-to-float v0, v6

    move/from16 v16, v0

    div-float v15, v15, v16

    invoke-virtual {v14, v15}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(F)Z

    move-result v8

    .line 1990
    .end local v10    # "over":F
    :cond_2
    move v11, v13

    .line 1999
    :cond_3
    :goto_0
    move-object/from16 v0, p0

    iget v14, v0, Lcom/oneplus/camera/ui/VerticalViewPager;->mLastMotionX:F

    float-to-int v15, v11

    int-to-float v15, v15

    sub-float v15, v11, v15

    add-float/2addr v14, v15

    move-object/from16 v0, p0

    iput v14, v0, Lcom/oneplus/camera/ui/VerticalViewPager;->mLastMotionX:F

    .line 2000
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/ui/VerticalViewPager;->getScrollX()I

    move-result v14

    float-to-int v15, v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/oneplus/camera/ui/VerticalViewPager;->scrollTo(II)V

    .line 2001
    float-to-int v14, v11

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/oneplus/camera/ui/VerticalViewPager;->pageScrolled(I)Z

    .line 2003
    return v8

    .line 1991
    :cond_4
    cmpl-float v14, v11, v3

    if-lez v14, :cond_3

    .line 1992
    if-eqz v2, :cond_5

    .line 1993
    sub-float v10, v11, v3

    .line 1994
    .restart local v10    # "over":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/camera/ui/VerticalViewPager;->mBottomEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v15

    int-to-float v0, v6

    move/from16 v16, v0

    div-float v15, v15, v16

    invoke-virtual {v14, v15}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(F)Z

    move-result v8

    .line 1996
    .end local v10    # "over":F
    :cond_5
    move v11, v3

    goto :goto_0
.end method

.method private recomputeScrollPosition(IIII)V
    .locals 16
    .param p1, "height"    # I
    .param p2, "oldHeight"    # I
    .param p3, "margin"    # I
    .param p4, "oldMargin"    # I

    .prologue
    .line 1367
    if-lez p2, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oneplus/camera/ui/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1368
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/ui/VerticalViewPager;->getPaddingTop()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/ui/VerticalViewPager;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    add-int v7, v1, p3

    .line 1369
    .local v7, "heightWithMargin":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/ui/VerticalViewPager;->getPaddingTop()I

    move-result v1

    sub-int v1, p2, v1

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/ui/VerticalViewPager;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    add-int v9, v1, p4

    .line 1371
    .local v9, "oldHeightWithMargin":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/ui/VerticalViewPager;->getScrollY()I

    move-result v14

    .line 1372
    .local v14, "ypos":I
    int-to-float v1, v14

    int-to-float v2, v9

    div-float v10, v1, v2

    .line 1373
    .local v10, "pageOffset":F
    int-to-float v1, v7

    mul-float/2addr v1, v10

    float-to-int v3, v1

    .line 1375
    .local v3, "newOffsetPixels":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/ui/VerticalViewPager;->getScrollX()I

    move-result v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v3}, Lcom/oneplus/camera/ui/VerticalViewPager;->scrollTo(II)V

    .line 1376
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oneplus/camera/ui/VerticalViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1378
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oneplus/camera/ui/VerticalViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getDuration()I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/ui/VerticalViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->timePassed()I

    move-result v2

    sub-int v6, v1, v2

    .line 1379
    .local v6, "newDuration":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/oneplus/camera/ui/VerticalViewPager;->mCurItem:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/ui/VerticalViewPager;->infoForPosition(I)Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;

    move-result-object v13

    .line 1380
    .local v13, "targetInfo":Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oneplus/camera/ui/VerticalViewPager;->mScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v4, 0x0

    iget v5, v13, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;->offset:F

    move/from16 v0, p1

    int-to-float v15, v0

    mul-float/2addr v5, v15

    float-to-int v5, v5

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1393
    .end local v3    # "newOffsetPixels":I
    .end local v6    # "newDuration":I
    .end local v7    # "heightWithMargin":I
    .end local v9    # "oldHeightWithMargin":I
    .end local v10    # "pageOffset":F
    .end local v13    # "targetInfo":Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;
    .end local v14    # "ypos":I
    :cond_0
    :goto_0
    return-void

    .line 1384
    :cond_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/oneplus/camera/ui/VerticalViewPager;->mCurItem:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/ui/VerticalViewPager;->infoForPosition(I)Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;

    move-result-object v8

    .line 1385
    .local v8, "ii":Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;
    if-eqz v8, :cond_2

    iget v1, v8, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;->offset:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/oneplus/camera/ui/VerticalViewPager;->mLastOffset:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v11

    .line 1386
    .local v11, "scrollOffset":F
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/ui/VerticalViewPager;->getPaddingTop()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/ui/VerticalViewPager;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, v11

    float-to-int v12, v1

    .line 1388
    .local v12, "scrollPos":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/ui/VerticalViewPager;->getScrollY()I

    move-result v1

    if-eq v12, v1, :cond_0

    .line 1389
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/oneplus/camera/ui/VerticalViewPager;->completeScroll(Z)V

    .line 1390
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/ui/VerticalViewPager;->getScrollX()I

    move-result v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v12}, Lcom/oneplus/camera/ui/VerticalViewPager;->scrollTo(II)V

    goto :goto_0

    .line 1385
    .end local v11    # "scrollOffset":F
    .end local v12    # "scrollPos":I
    :cond_2
    const/4 v11, 0x0

    goto :goto_1
.end method

.method private removeNonDecorViews()V
    .locals 4

    .prologue
    .line 347
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/VerticalViewPager;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 348
    invoke-virtual {p0, v1}, Lcom/oneplus/camera/ui/VerticalViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 349
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/ui/VerticalViewPager$LayoutParams;

    .line 350
    .local v2, "lp":Lcom/oneplus/camera/ui/VerticalViewPager$LayoutParams;
    iget-boolean v3, v2, Lcom/oneplus/camera/ui/VerticalViewPager$LayoutParams;->isDecor:Z

    if-nez v3, :cond_0

    .line 351
    invoke-virtual {p0, v1}, Lcom/oneplus/camera/ui/VerticalViewPager;->removeViewAt(I)V

    .line 352
    add-int/lit8 v1, v1, -0x1

    .line 347
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 355
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "lp":Lcom/oneplus/camera/ui/VerticalViewPager$LayoutParams;
    :cond_1
    return-void
.end method

.method private requestParentDisallowInterceptTouchEvent(Z)V
    .locals 1
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 1953
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/VerticalViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1954
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    .line 1955
    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1957
    :cond_0
    return-void
.end method

.method private scrollToItem(IZIZ)V
    .locals 8
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z
    .param p3, "velocity"    # I
    .param p4, "dispatchSelected"    # Z

    .prologue
    const/4 v7, 0x0

    .line 455
    invoke-virtual {p0, p1}, Lcom/oneplus/camera/ui/VerticalViewPager;->infoForPosition(I)Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;

    move-result-object v0

    .line 456
    .local v0, "curInfo":Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;
    const/4 v1, 0x0

    .line 457
    .local v1, "destY":I
    if-eqz v0, :cond_0

    .line 458
    invoke-direct {p0}, Lcom/oneplus/camera/ui/VerticalViewPager;->getClientHeight()I

    move-result v2

    .line 459
    .local v2, "height":I
    int-to-float v3, v2

    iget v4, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mFirstOffset:F

    iget v5, v0, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;->offset:F

    iget v6, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mLastOffset:F

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v1, v3

    .line 462
    .end local v2    # "height":I
    :cond_0
    if-eqz p2, :cond_3

    .line 463
    invoke-virtual {p0, v7, v1, p3}, Lcom/oneplus/camera/ui/VerticalViewPager;->smoothScrollTo(III)V

    .line 464
    if-eqz p4, :cond_1

    iget-object v3, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v3, :cond_1

    .line 465
    iget-object v3, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v3, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 467
    :cond_1
    if-eqz p4, :cond_2

    iget-object v3, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v3, :cond_2

    .line 468
    iget-object v3, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v3, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 481
    :cond_2
    :goto_0
    return-void

    .line 471
    :cond_3
    if-eqz p4, :cond_4

    iget-object v3, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v3, :cond_4

    .line 472
    iget-object v3, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v3, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 474
    :cond_4
    if-eqz p4, :cond_5

    iget-object v3, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v3, :cond_5

    .line 475
    iget-object v3, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v3, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 477
    :cond_5
    invoke-direct {p0, v7}, Lcom/oneplus/camera/ui/VerticalViewPager;->completeScroll(Z)V

    .line 478
    invoke-virtual {p0, v7, v1}, Lcom/oneplus/camera/ui/VerticalViewPager;->scrollTo(II)V

    .line 479
    invoke-direct {p0, v1}, Lcom/oneplus/camera/ui/VerticalViewPager;->pageScrolled(I)Z

    goto :goto_0
.end method

.method private setScrollState(I)V
    .locals 1
    .param p1, "newState"    # I

    .prologue
    .line 281
    iget v0, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mScrollState:I

    if-ne v0, p1, :cond_1

    .line 293
    :cond_0
    :goto_0
    return-void

    .line 285
    :cond_1
    iput p1, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mScrollState:I

    .line 286
    iget-object v0, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mPageTransformer:Landroid/support/v4/view/ViewPager$PageTransformer;

    if-eqz v0, :cond_2

    .line 288
    if-eqz p1, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, v0}, Lcom/oneplus/camera/ui/VerticalViewPager;->enableLayers(Z)V

    .line 290
    :cond_2
    iget-object v0, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    goto :goto_0

    .line 288
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private setScrollingCacheEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 2309
    iget-boolean v0, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mScrollingCacheEnabled:Z

    if-eq v0, p1, :cond_0

    .line 2310
    iput-boolean p1, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mScrollingCacheEnabled:Z

    .line 2321
    :cond_0
    return-void
.end method

.method private sortChildDrawingOrder()V
    .locals 5

    .prologue
    .line 1004
    iget v3, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mDrawingOrder:I

    if-eqz v3, :cond_2

    .line 1005
    iget-object v3, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    .line 1006
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    .line 1010
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/VerticalViewPager;->getChildCount()I

    move-result v1

    .line 1011
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 1012
    invoke-virtual {p0, v2}, Lcom/oneplus/camera/ui/VerticalViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1013
    .local v0, "child":Landroid/view/View;
    iget-object v3, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1011
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1008
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childCount":I
    .end local v2    # "i":I
    :cond_0
    iget-object v3, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 1015
    .restart local v1    # "childCount":I
    .restart local v2    # "i":I
    :cond_1
    iget-object v3, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    sget-object v4, Lcom/oneplus/camera/ui/VerticalViewPager;->sPositionComparator:Lcom/oneplus/camera/ui/VerticalViewPager$ViewPositionComparator;

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1017
    .end local v1    # "childCount":I
    .end local v2    # "i":I
    :cond_2
    return-void
.end method


# virtual methods
.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 7
    .param p2, "direction"    # I
    .param p3, "focusableMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 2526
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2528
    .local v2, "focusableCount":I
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/VerticalViewPager;->getDescendantFocusability()I

    move-result v1

    .line 2530
    .local v1, "descendantFocusability":I
    const/high16 v5, 0x60000

    if-eq v1, v5, :cond_1

    .line 2531
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/VerticalViewPager;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 2532
    invoke-virtual {p0, v3}, Lcom/oneplus/camera/ui/VerticalViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2533
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_0

    .line 2534
    invoke-virtual {p0, v0}, Lcom/oneplus/camera/ui/VerticalViewPager;->infoForChild(Landroid/view/View;)Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;

    move-result-object v4

    .line 2535
    .local v4, "ii":Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;
    if-eqz v4, :cond_0

    iget v5, v4, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;->position:I

    iget v6, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mCurItem:I

    if-ne v5, v6, :cond_0

    .line 2536
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 2531
    .end local v4    # "ii":Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2546
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "i":I
    :cond_1
    const/high16 v5, 0x40000

    if-ne v1, v5, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v2, v5, :cond_3

    .line 2552
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/VerticalViewPager;->isFocusable()Z

    move-result v5

    if-nez v5, :cond_4

    .line 2563
    :cond_3
    :goto_1
    return-void

    .line 2555
    :cond_4
    and-int/lit8 v5, p3, 0x1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_5

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/VerticalViewPager;->isInTouchMode()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/VerticalViewPager;->isFocusableInTouchMode()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2559
    :cond_5
    if-eqz p1, :cond_3

    .line 2560
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method addNewItem(II)Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;
    .locals 2
    .param p1, "position"    # I
    .param p2, "index"    # I

    .prologue
    .line 728
    new-instance v0, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;

    invoke-direct {v0}, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;-><init>()V

    .line 729
    .local v0, "ii":Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;
    iput p1, v0, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;->position:I

    .line 730
    iget-object v1, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v1, p0, p1}, Landroid/support/v4/view/PagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;->object:Ljava/lang/Object;

    .line 731
    iget-object v1, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v1, p1}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v1

    iput v1, v0, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;->heightFactor:F

    .line 732
    if-ltz p2, :cond_0

    iget-object v1, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p2, v1, :cond_1

    .line 733
    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 737
    :goto_0
    return-object v0

    .line 735
    :cond_1
    iget-object v1, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2573
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/VerticalViewPager;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 2574
    invoke-virtual {p0, v1}, Lcom/oneplus/camera/ui/VerticalViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2575
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 2576
    invoke-virtual {p0, v0}, Lcom/oneplus/camera/ui/VerticalViewPager;->infoForChild(Landroid/view/View;)Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;

    move-result-object v2

    .line 2577
    .local v2, "ii":Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;
    if-eqz v2, :cond_0

    iget v3, v2, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;->position:I

    iget v4, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mCurItem:I

    if-ne v3, v4, :cond_0

    .line 2578
    invoke-virtual {v0, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 2573
    .end local v2    # "ii":Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2582
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1191
    invoke-virtual {p0, p3}, Lcom/oneplus/camera/ui/VerticalViewPager;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1192
    invoke-virtual {p0, p3}, Lcom/oneplus/camera/ui/VerticalViewPager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    :cond_0
    move-object v0, p3

    .line 1194
    check-cast v0, Lcom/oneplus/camera/ui/VerticalViewPager$LayoutParams;

    .line 1195
    .local v0, "lp":Lcom/oneplus/camera/ui/VerticalViewPager$LayoutParams;
    iget-boolean v1, v0, Lcom/oneplus/camera/ui/VerticalViewPager$LayoutParams;->isDecor:Z

    instance-of v2, p1, Lcom/oneplus/camera/ui/VerticalViewPager$Decor;

    or-int/2addr v1, v2

    iput-boolean v1, v0, Lcom/oneplus/camera/ui/VerticalViewPager$LayoutParams;->isDecor:Z

    .line 1196
    iget-boolean v1, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mInLayout:Z

    if-eqz v1, :cond_2

    .line 1197
    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/oneplus/camera/ui/VerticalViewPager$LayoutParams;->isDecor:Z

    if-eqz v1, :cond_1

    .line 1198
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot add pager decor view during layout"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1200
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/oneplus/camera/ui/VerticalViewPager$LayoutParams;->needsMeasure:Z

    .line 1201
    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/camera/ui/VerticalViewPager;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 1213
    :goto_0
    return-void

    .line 1203
    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public arrowScroll(I)Z
    .locals 13
    .param p1, "direction"    # I

    .prologue
    .line 2414
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/VerticalViewPager;->findFocus()Landroid/view/View;

    move-result-object v2

    .line 2415
    .local v2, "currentFocused":Landroid/view/View;
    if-ne v2, p0, :cond_3

    .line 2416
    const/4 v2, 0x0

    .line 2440
    :cond_0
    :goto_0
    const/4 v3, 0x0

    .line 2442
    .local v3, "handled":Z
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v10

    invoke-virtual {v10, p0, v2, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    .line 2444
    .local v6, "nextFocused":Landroid/view/View;
    if-eqz v6, :cond_a

    if-eq v6, v2, :cond_a

    .line 2445
    const/16 v10, 0x21

    if-ne p1, v10, :cond_8

    .line 2448
    iget-object v10, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v10, v6}, Lcom/oneplus/camera/ui/VerticalViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v10

    iget v7, v10, Landroid/graphics/Rect;->top:I

    .line 2449
    .local v7, "nextTop":I
    iget-object v10, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v10, v2}, Lcom/oneplus/camera/ui/VerticalViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v10

    iget v1, v10, Landroid/graphics/Rect;->top:I

    .line 2450
    .local v1, "currTop":I
    if-eqz v2, :cond_7

    if-lt v7, v1, :cond_7

    .line 2451
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/VerticalViewPager;->pageUp()Z

    move-result v3

    .line 2473
    .end local v1    # "currTop":I
    .end local v7    # "nextTop":I
    :cond_1
    :goto_1
    if-eqz v3, :cond_2

    .line 2474
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v10

    invoke-virtual {p0, v10}, Lcom/oneplus/camera/ui/VerticalViewPager;->playSoundEffect(I)V

    .line 2476
    :cond_2
    return v3

    .line 2417
    .end local v3    # "handled":Z
    .end local v6    # "nextFocused":Landroid/view/View;
    :cond_3
    if-eqz v2, :cond_0

    .line 2418
    const/4 v4, 0x0

    .line 2419
    .local v4, "isChild":Z
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    .local v8, "parent":Landroid/view/ViewParent;
    :goto_2
    instance-of v10, v8, Landroid/view/ViewGroup;

    if-eqz v10, :cond_4

    .line 2421
    if-ne v8, p0, :cond_5

    .line 2422
    const/4 v4, 0x1

    .line 2426
    :cond_4
    if-nez v4, :cond_0

    .line 2428
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 2429
    .local v9, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2430
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    :goto_3
    instance-of v10, v8, Landroid/view/ViewGroup;

    if-eqz v10, :cond_6

    .line 2432
    const-string v10, " => "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2431
    invoke-interface {v8}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    goto :goto_3

    .line 2420
    .end local v9    # "sb":Ljava/lang/StringBuilder;
    :cond_5
    invoke-interface {v8}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    goto :goto_2

    .line 2434
    .restart local v9    # "sb":Ljava/lang/StringBuilder;
    :cond_6
    sget-object v10, Lcom/oneplus/camera/ui/VerticalViewPager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "arrowScroll tried to find focus based on non-child current focused view "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2436
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 2453
    .end local v4    # "isChild":Z
    .end local v8    # "parent":Landroid/view/ViewParent;
    .end local v9    # "sb":Ljava/lang/StringBuilder;
    .restart local v1    # "currTop":I
    .restart local v3    # "handled":Z
    .restart local v6    # "nextFocused":Landroid/view/View;
    .restart local v7    # "nextTop":I
    :cond_7
    invoke-virtual {v6}, Landroid/view/View;->requestFocus()Z

    move-result v3

    goto :goto_1

    .line 2455
    .end local v1    # "currTop":I
    .end local v7    # "nextTop":I
    :cond_8
    const/16 v10, 0x82

    if-ne p1, v10, :cond_1

    .line 2458
    iget-object v10, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v10, v6}, Lcom/oneplus/camera/ui/VerticalViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v10

    iget v5, v10, Landroid/graphics/Rect;->bottom:I

    .line 2459
    .local v5, "nextDown":I
    iget-object v10, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v10, v2}, Lcom/oneplus/camera/ui/VerticalViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v10

    iget v0, v10, Landroid/graphics/Rect;->bottom:I

    .line 2460
    .local v0, "currDown":I
    if-eqz v2, :cond_9

    if-gt v5, v0, :cond_9

    .line 2461
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/VerticalViewPager;->pageDown()Z

    move-result v3

    goto/16 :goto_1

    .line 2463
    :cond_9
    invoke-virtual {v6}, Landroid/view/View;->requestFocus()Z

    move-result v3

    goto/16 :goto_1

    .line 2466
    .end local v0    # "currDown":I
    .end local v5    # "nextDown":I
    :cond_a
    const/16 v10, 0x21

    if-eq p1, v10, :cond_b

    const/4 v10, 0x1

    if-ne p1, v10, :cond_c

    .line 2468
    :cond_b
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/VerticalViewPager;->pageUp()Z

    move-result v3

    goto/16 :goto_1

    .line 2469
    :cond_c
    const/16 v10, 0x82

    if-eq p1, v10, :cond_d

    const/4 v10, 0x2

    if-ne p1, v10, :cond_1

    .line 2471
    :cond_d
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/VerticalViewPager;->pageDown()Z

    move-result v3

    goto/16 :goto_1
.end method

.method public beginFakeDrag()Z
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 2174
    iget-boolean v2, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mIsBeingDragged:Z

    if-eqz v2, :cond_0

    .line 2190
    :goto_0
    return v4

    .line 2177
    :cond_0
    iput-boolean v9, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mFakeDragging:Z

    .line 2178
    invoke-direct {p0, v9}, Lcom/oneplus/camera/ui/VerticalViewPager;->setScrollState(I)V

    .line 2179
    iput v5, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mLastMotionY:F

    iput v5, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mInitialMotionY:F

    .line 2180
    iget-object v2, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v2, :cond_1

    .line 2181
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2185
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .local v0, "time":J
    move-wide v2, v0

    move v6, v5

    move v7, v4

    .line 2186
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 2187
    .local v8, "ev":Landroid/view/MotionEvent;
    iget-object v2, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, v8}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2188
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 2189
    iput-wide v0, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mFakeDragBeginTime:J

    move v4, v9

    .line 2190
    goto :goto_0

    .line 2183
    .end local v0    # "time":J
    .end local v8    # "ev":Landroid/view/MotionEvent;
    :cond_1
    iget-object v2, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_1
.end method

.method protected canScroll(Landroid/view/View;ZIII)Z
    .locals 11
    .param p1, "v"    # Landroid/view/View;
    .param p2, "checkV"    # Z
    .param p3, "dy"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I

    .prologue
    .line 2351
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    move-object v7, p1

    .line 2352
    check-cast v7, Landroid/view/ViewGroup;

    .line 2353
    .local v7, "group":Landroid/view/ViewGroup;
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v9

    .line 2354
    .local v9, "scrollX":I
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v10

    .line 2355
    .local v10, "scrollY":I
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    .line 2357
    .local v6, "count":I
    add-int/lit8 v8, v6, -0x1

    .local v8, "i":I
    :goto_0
    if-ltz v8, :cond_1

    .line 2360
    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2361
    .local v1, "child":Landroid/view/View;
    add-int v0, p5, v10

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    if-lt v0, v2, :cond_0

    add-int v0, p5, v10

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    if-ge v0, v2, :cond_0

    add-int v0, p4, v9

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    if-lt v0, v2, :cond_0

    add-int v0, p4, v9

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    if-ge v0, v2, :cond_0

    const/4 v2, 0x1

    add-int v0, p4, v9

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v4, v0, v3

    add-int v0, p5, v10

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v5, v0, v3

    move-object v0, p0

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/camera/ui/VerticalViewPager;->canScroll(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2365
    const/4 v0, 0x1

    .line 2370
    .end local v1    # "child":Landroid/view/View;
    .end local v6    # "count":I
    .end local v7    # "group":Landroid/view/ViewGroup;
    .end local v8    # "i":I
    .end local v9    # "scrollX":I
    .end local v10    # "scrollY":I
    :goto_1
    return v0

    .line 2357
    .restart local v1    # "child":Landroid/view/View;
    .restart local v6    # "count":I
    .restart local v7    # "group":Landroid/view/ViewGroup;
    .restart local v8    # "i":I
    .restart local v9    # "scrollX":I
    .restart local v10    # "scrollY":I
    :cond_0
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 2370
    .end local v1    # "child":Landroid/view/View;
    .end local v6    # "count":I
    .end local v7    # "group":Landroid/view/ViewGroup;
    .end local v8    # "i":I
    .end local v9    # "scrollX":I
    .end local v10    # "scrollY":I
    :cond_1
    if-eqz p2, :cond_2

    neg-int v0, p3

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 2652
    instance-of v0, p1, Lcom/oneplus/camera/ui/VerticalViewPager$LayoutParams;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 5

    .prologue
    .line 1506
    iget-object v4, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->isFinished()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1507
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/VerticalViewPager;->getScrollX()I

    move-result v0

    .line 1508
    .local v0, "oldX":I
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/VerticalViewPager;->getScrollY()I

    move-result v1

    .line 1509
    .local v1, "oldY":I
    iget-object v4, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    .line 1510
    .local v2, "x":I
    iget-object v4, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    .line 1512
    .local v3, "y":I
    if-ne v0, v2, :cond_0

    if-eq v1, v3, :cond_1

    .line 1513
    :cond_0
    invoke-virtual {p0, v2, v3}, Lcom/oneplus/camera/ui/VerticalViewPager;->scrollTo(II)V

    .line 1514
    invoke-direct {p0, v3}, Lcom/oneplus/camera/ui/VerticalViewPager;->pageScrolled(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1515
    iget-object v4, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1516
    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4}, Lcom/oneplus/camera/ui/VerticalViewPager;->scrollTo(II)V

    .line 1521
    :cond_1
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1527
    .end local v0    # "oldX":I
    .end local v1    # "oldY":I
    .end local v2    # "x":I
    .end local v3    # "y":I
    :goto_0
    return-void

    .line 1526
    :cond_2
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/oneplus/camera/ui/VerticalViewPager;->completeScroll(Z)V

    goto :goto_0
.end method

.method dataSetChanged()V
    .locals 15

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 743
    iget-object v12, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v12}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    .line 744
    .local v0, "adapterCount":I
    iput v0, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mExpectedAdapterCount:I

    .line 745
    iget-object v12, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    iget v13, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mOffscreenPageLimit:I

    mul-int/lit8 v13, v13, 0x2

    add-int/lit8 v13, v13, 0x1

    if-ge v12, v13, :cond_1

    iget-object v12, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v12, v0, :cond_1

    move v7, v10

    .line 747
    .local v7, "needPopulate":Z
    :goto_0
    iget v8, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mCurItem:I

    .line 749
    .local v8, "newCurrItem":I
    const/4 v5, 0x0

    .line 750
    .local v5, "isUpdating":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v12, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v3, v12, :cond_6

    .line 751
    iget-object v12, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;

    .line 752
    .local v4, "ii":Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;
    iget-object v12, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v13, v4, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v12, v13}, Landroid/support/v4/view/PagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v9

    .line 754
    .local v9, "newPos":I
    const/4 v12, -0x1

    if-ne v9, v12, :cond_2

    .line 750
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v3    # "i":I
    .end local v4    # "ii":Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;
    .end local v5    # "isUpdating":Z
    .end local v7    # "needPopulate":Z
    .end local v8    # "newCurrItem":I
    .end local v9    # "newPos":I
    :cond_1
    move v7, v11

    .line 745
    goto :goto_0

    .line 758
    .restart local v3    # "i":I
    .restart local v4    # "ii":Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;
    .restart local v5    # "isUpdating":Z
    .restart local v7    # "needPopulate":Z
    .restart local v8    # "newCurrItem":I
    .restart local v9    # "newPos":I
    :cond_2
    const/4 v12, -0x2

    if-ne v9, v12, :cond_4

    .line 759
    iget-object v12, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 760
    add-int/lit8 v3, v3, -0x1

    .line 762
    if-nez v5, :cond_3

    .line 763
    iget-object v12, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v12, p0}, Landroid/support/v4/view/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 764
    const/4 v5, 0x1

    .line 767
    :cond_3
    iget-object v12, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget v13, v4, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;->position:I

    iget-object v14, v4, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v12, p0, v13, v14}, Landroid/support/v4/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 768
    const/4 v7, 0x1

    .line 770
    iget v12, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mCurItem:I

    iget v13, v4, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;->position:I

    if-ne v12, v13, :cond_0

    .line 772
    iget v12, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mCurItem:I

    add-int/lit8 v13, v0, -0x1

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 773
    const/4 v7, 0x1

    goto :goto_2

    .line 778
    :cond_4
    iget v12, v4, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;->position:I

    if-eq v12, v9, :cond_0

    .line 779
    iget v12, v4, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;->position:I

    iget v13, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mCurItem:I

    if-ne v12, v13, :cond_5

    .line 781
    move v8, v9

    .line 784
    :cond_5
    iput v9, v4, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;->position:I

    .line 785
    const/4 v7, 0x1

    goto :goto_2

    .line 789
    .end local v4    # "ii":Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;
    .end local v9    # "newPos":I
    :cond_6
    if-eqz v5, :cond_7

    .line 790
    iget-object v12, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v12, p0}, Landroid/support/v4/view/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 793
    :cond_7
    iget-object v12, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    sget-object v13, Lcom/oneplus/camera/ui/VerticalViewPager;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {v12, v13}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 795
    if-eqz v7, :cond_a

    .line 797
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/VerticalViewPager;->getChildCount()I

    move-result v2

    .line 798
    .local v2, "childCount":I
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v2, :cond_9

    .line 799
    invoke-virtual {p0, v3}, Lcom/oneplus/camera/ui/VerticalViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 800
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/oneplus/camera/ui/VerticalViewPager$LayoutParams;

    .line 801
    .local v6, "lp":Lcom/oneplus/camera/ui/VerticalViewPager$LayoutParams;
    iget-boolean v12, v6, Lcom/oneplus/camera/ui/VerticalViewPager$LayoutParams;->isDecor:Z

    if-nez v12, :cond_8

    .line 802
    const/4 v12, 0x0

    iput v12, v6, Lcom/oneplus/camera/ui/VerticalViewPager$LayoutParams;->heightFactor:F

    .line 798
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 806
    .end local v1    # "child":Landroid/view/View;
    .end local v6    # "lp":Lcom/oneplus/camera/ui/VerticalViewPager$LayoutParams;
    :cond_9
    invoke-virtual {p0, v8, v11, v10}, Lcom/oneplus/camera/ui/VerticalViewPager;->setCurrentItemInternal(IZZ)V

    .line 807
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/VerticalViewPager;->requestLayout()V

    .line 809
    .end local v2    # "childCount":I
    :cond_a
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2376
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/oneplus/camera/ui/VerticalViewPager;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 2620
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v4

    const/16 v5, 0x1000

    if-ne v4, v5, :cond_0

    .line 2621
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v4

    .line 2637
    :goto_0
    return v4

    .line 2625
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/VerticalViewPager;->getChildCount()I

    move-result v1

    .line 2626
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 2627
    invoke-virtual {p0, v2}, Lcom/oneplus/camera/ui/VerticalViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2628
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 2629
    invoke-virtual {p0, v0}, Lcom/oneplus/camera/ui/VerticalViewPager;->infoForChild(Landroid/view/View;)Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;

    move-result-object v3

    .line 2630
    .local v3, "ii":Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;
    if-eqz v3, :cond_1

    iget v4, v3, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;->position:I

    iget v5, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mCurItem:I

    if-ne v4, v5, :cond_1

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2632
    const/4 v4, 0x1

    goto :goto_0

    .line 2626
    .end local v3    # "ii":Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2637
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method distanceInfluenceForSnapDuration(F)F
    .locals 4
    .param p1, "f"    # F

    .prologue
    .line 664
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    .line 665
    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v0, v2

    double-to-float p1, v0

    .line 666
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v6, 0x1

    .line 2074
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 2075
    const/4 v1, 0x0

    .line 2077
    .local v1, "needsInvalidate":Z
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getOverScrollMode(Landroid/view/View;)I

    move-result v2

    .line 2078
    .local v2, "overScrollMode":I
    if-eqz v2, :cond_0

    if-ne v2, v6, :cond_4

    iget-object v5, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v5}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v5

    if-le v5, v6, :cond_4

    .line 2081
    :cond_0
    iget-object v5, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mTopEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v5}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v5

    if-nez v5, :cond_1

    .line 2082
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 2083
    .local v3, "restoreCount":I
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/VerticalViewPager;->getHeight()I

    move-result v0

    .line 2084
    .local v0, "height":I
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/VerticalViewPager;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/VerticalViewPager;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/VerticalViewPager;->getPaddingRight()I

    move-result v6

    sub-int v4, v5, v6

    .line 2086
    .local v4, "width":I
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/VerticalViewPager;->getPaddingLeft()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mFirstOffset:F

    int-to-float v7, v0

    mul-float/2addr v6, v7

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2087
    iget-object v5, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mTopEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v5, v4, v0}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    .line 2088
    iget-object v5, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mTopEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v5, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v5

    or-int/2addr v1, v5

    .line 2089
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2091
    .end local v0    # "height":I
    .end local v3    # "restoreCount":I
    .end local v4    # "width":I
    :cond_1
    iget-object v5, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mBottomEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v5}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v5

    if-nez v5, :cond_2

    .line 2092
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 2093
    .restart local v3    # "restoreCount":I
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/VerticalViewPager;->getHeight()I

    move-result v0

    .line 2094
    .restart local v0    # "height":I
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/VerticalViewPager;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/VerticalViewPager;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/VerticalViewPager;->getPaddingRight()I

    move-result v6

    sub-int v4, v5, v6

    .line 2096
    .restart local v4    # "width":I
    const/high16 v5, 0x43340000    # 180.0f

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2097
    neg-int v5, v4

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/VerticalViewPager;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mLastOffset:F

    const/high16 v7, 0x3f800000    # 1.0f

    add-float/2addr v6, v7

    neg-float v6, v6

    int-to-float v7, v0

    mul-float/2addr v6, v7

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2098
    iget-object v5, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mBottomEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v5, v4, v0}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    .line 2099
    iget-object v5, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mBottomEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v5, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v5

    or-int/2addr v1, v5

    .line 2100
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2107
    .end local v0    # "height":I
    .end local v3    # "restoreCount":I
    .end local v4    # "width":I
    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    .line 2109
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 2111
    :cond_3
    return-void

    .line 2103
    :cond_4
    iget-object v5, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mTopEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v5}, Landroid/support/v4/widget/EdgeEffectCompat;->finish()V

    .line 2104
    iget-object v5, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mBottomEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v5}, Landroid/support/v4/widget/EdgeEffectCompat;->finish()V

    goto :goto_0
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 652
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 653
    iget-object v0, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    .line 654
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 655
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/VerticalViewPager;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 657
    :cond_0
    return-void
.end method

.method public endFakeDrag()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    .line 2200
    iget-boolean v9, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mFakeDragging:Z

    if-nez v9, :cond_0

    .line 2201
    new-instance v9, Ljava/lang/IllegalStateException;

    const-string v10, "No fake drag in progress. Call beginFakeDrag first."

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 2204
    :cond_0
    iget-object v8, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2205
    .local v8, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v9, 0x3e8

    iget v10, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mMaximumVelocity:I

    int-to-float v10, v10

    invoke-virtual {v8, v9, v10}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2206
    iget v9, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mActivePointerId:I

    invoke-static {v8, v9}, Landroid/support/v4/view/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F

    move-result v9

    float-to-int v3, v9

    .line 2208
    .local v3, "initialVelocity":I
    iput-boolean v11, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mPopulatePending:Z

    .line 2209
    invoke-direct {p0}, Lcom/oneplus/camera/ui/VerticalViewPager;->getClientHeight()I

    move-result v1

    .line 2210
    .local v1, "height":I
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/VerticalViewPager;->getScrollY()I

    move-result v6

    .line 2211
    .local v6, "scrollY":I
    invoke-direct {p0}, Lcom/oneplus/camera/ui/VerticalViewPager;->infoForCurrentScrollPosition()Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;

    move-result-object v2

    .line 2212
    .local v2, "ii":Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;
    iget v0, v2, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;->position:I

    .line 2213
    .local v0, "currentPage":I
    int-to-float v9, v6

    int-to-float v10, v1

    div-float/2addr v9, v10

    iget v10, v2, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;->offset:F

    sub-float/2addr v9, v10

    iget v10, v2, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;->heightFactor:F

    div-float v5, v9, v10

    .line 2214
    .local v5, "pageOffset":F
    iget v9, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mLastMotionY:F

    iget v10, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mInitialMotionY:F

    sub-float/2addr v9, v10

    float-to-int v7, v9

    .line 2215
    .local v7, "totalDelta":I
    invoke-direct {p0, v0, v5, v3, v7}, Lcom/oneplus/camera/ui/VerticalViewPager;->determineTargetPage(IFII)I

    move-result v4

    .line 2217
    .local v4, "nextPage":I
    invoke-virtual {p0, v4, v11, v11, v3}, Lcom/oneplus/camera/ui/VerticalViewPager;->setCurrentItemInternal(IZZI)V

    .line 2218
    invoke-direct {p0}, Lcom/oneplus/camera/ui/VerticalViewPager;->endDrag()V

    .line 2220
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mFakeDragging:Z

    .line 2221
    return-void
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x1

    .line 2388
    const/4 v0, 0x0

    .line 2389
    .local v0, "handled":Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 2390
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 2410
    :cond_0
    :goto_0
    return v0

    .line 2392
    :sswitch_0
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/ui/VerticalViewPager;->arrowScroll(I)Z

    move-result v0

    .line 2393
    goto :goto_0

    .line 2395
    :sswitch_1
    const/16 v1, 0x42

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/ui/VerticalViewPager;->arrowScroll(I)Z

    move-result v0

    .line 2396
    goto :goto_0

    .line 2398
    :sswitch_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 2401
    invoke-static {p1}, Landroid/support/v4/view/KeyEventCompat;->hasNoModifiers(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2402
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/ui/VerticalViewPager;->arrowScroll(I)Z

    move-result v0

    goto :goto_0

    .line 2403
    :cond_1
    invoke-static {p1, v3}, Landroid/support/v4/view/KeyEventCompat;->hasModifiers(Landroid/view/KeyEvent;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2404
    invoke-virtual {p0, v3}, Lcom/oneplus/camera/ui/VerticalViewPager;->arrowScroll(I)Z

    move-result v0

    goto :goto_0

    .line 2390
    nop

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x3d -> :sswitch_2
    .end sparse-switch
.end method

.method public fakeDragBy(F)V
    .locals 18
    .param p1, "yOffset"    # F

    .prologue
    .line 2231
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/oneplus/camera/ui/VerticalViewPager;->mFakeDragging:Z

    if-nez v2, :cond_0

    .line 2232
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "No fake drag in progress. Call beginFakeDrag first."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2235
    :cond_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/oneplus/camera/ui/VerticalViewPager;->mLastMotionY:F

    add-float v2, v2, p1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/oneplus/camera/ui/VerticalViewPager;->mLastMotionY:F

    .line 2237
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/ui/VerticalViewPager;->getScrollY()I

    move-result v2

    int-to-float v15, v2

    .line 2238
    .local v15, "oldScrollY":F
    sub-float v16, v15, p1

    .line 2239
    .local v16, "scrollY":F
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/camera/ui/VerticalViewPager;->getClientHeight()I

    move-result v13

    .line 2241
    .local v13, "height":I
    int-to-float v2, v13

    move-object/from16 v0, p0

    iget v3, v0, Lcom/oneplus/camera/ui/VerticalViewPager;->mFirstOffset:F

    mul-float v17, v2, v3

    .line 2242
    .local v17, "topBound":F
    int-to-float v2, v13

    move-object/from16 v0, p0

    iget v3, v0, Lcom/oneplus/camera/ui/VerticalViewPager;->mLastOffset:F

    mul-float v10, v2, v3

    .line 2244
    .local v10, "bottomBound":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/ui/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;

    .line 2245
    .local v12, "firstItem":Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/ui/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/ui/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;

    .line 2246
    .local v14, "lastItem":Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;
    iget v2, v12, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;->position:I

    if-eqz v2, :cond_1

    .line 2247
    iget v2, v12, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;->offset:F

    int-to-float v3, v13

    mul-float v17, v2, v3

    .line 2249
    :cond_1
    iget v2, v14, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;->position:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/ui/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v3}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v2, v3, :cond_2

    .line 2250
    iget v2, v14, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;->offset:F

    int-to-float v3, v13

    mul-float v10, v2, v3

    .line 2253
    :cond_2
    cmpg-float v2, v16, v17

    if-gez v2, :cond_4

    .line 2254
    move/from16 v16, v17

    .line 2259
    :cond_3
    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/oneplus/camera/ui/VerticalViewPager;->mLastMotionY:F

    move/from16 v0, v16

    float-to-int v3, v0

    int-to-float v3, v3

    sub-float v3, v16, v3

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/oneplus/camera/ui/VerticalViewPager;->mLastMotionY:F

    .line 2260
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/ui/VerticalViewPager;->getScrollX()I

    move-result v2

    move/from16 v0, v16

    float-to-int v3, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/camera/ui/VerticalViewPager;->scrollTo(II)V

    .line 2261
    move/from16 v0, v16

    float-to-int v2, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/oneplus/camera/ui/VerticalViewPager;->pageScrolled(I)Z

    .line 2264
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 2265
    .local v4, "time":J
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/oneplus/camera/ui/VerticalViewPager;->mFakeDragBeginTime:J

    const/4 v6, 0x2

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/oneplus/camera/ui/VerticalViewPager;->mLastMotionY:F

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v11

    .line 2267
    .local v11, "ev":Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/ui/VerticalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, v11}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2268
    invoke-virtual {v11}, Landroid/view/MotionEvent;->recycle()V

    .line 2269
    return-void

    .line 2255
    .end local v4    # "time":J
    .end local v11    # "ev":Landroid/view/MotionEvent;
    :cond_4
    cmpl-float v2, v16, v10

    if-lez v2, :cond_3

    .line 2256
    move/from16 v16, v10

    goto :goto_0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 2642
    new-instance v0, Lcom/oneplus/camera/ui/VerticalViewPager$LayoutParams;

    invoke-direct {v0}, Lcom/oneplus/camera/ui/VerticalViewPager$LayoutParams;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 2657
    new-instance v0, Lcom/oneplus/camera/ui/VerticalViewPager$LayoutParams;

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/VerticalViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/oneplus/camera/ui/VerticalViewPager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 2647
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/VerticalViewPager;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/support/v4/view/PagerAdapter;
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    return-object v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 4
    .param p1, "childCount"    # I
    .param p2, "i"    # I

    .prologue
    .line 540
    iget v2, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mDrawingOrder:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    add-int/lit8 v2, p1, -0x1

    sub-int v0, v2, p2

    .line 541
    .local v0, "index":I
    :goto_0
    iget-object v2, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/ui/VerticalViewPager$LayoutParams;

    iget v1, v2, Lcom/oneplus/camera/ui/VerticalViewPager$LayoutParams;->childIndex:I

    .line 542
    .local v1, "result":I
    return v1

    .end local v0    # "index":I
    .end local v1    # "result":I
    :cond_0
    move v0, p2

    .line 540
    goto :goto_0
.end method

.method public getCurrentItem()I
    .locals 1

    .prologue
    .line 403
    iget v0, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mCurItem:I

    return v0
.end method

.method public getOffscreenPageLimit()I
    .locals 1

    .prologue
    .line 565
    iget v0, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mOffscreenPageLimit:I

    return v0
.end method

.method public getPageMargin()I
    .locals 1

    .prologue
    .line 621
    iget v0, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mPageMargin:I

    return v0
.end method

.method infoForAnyChild(Landroid/view/View;)Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 1236
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .local v0, "parent":Landroid/view/ViewParent;
    if-eq v0, p0, :cond_2

    .line 1237
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/view/View;

    if-nez v1, :cond_1

    .line 1238
    :cond_0
    const/4 v1, 0x0

    .line 1242
    :goto_1
    return-object v1

    :cond_1
    move-object p1, v0

    .line 1240
    check-cast p1, Landroid/view/View;

    goto :goto_0

    .line 1242
    :cond_2
    invoke-virtual {p0, p1}, Lcom/oneplus/camera/ui/VerticalViewPager;->infoForChild(Landroid/view/View;)Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;

    move-result-object v1

    goto :goto_1
.end method

.method infoForChild(Landroid/view/View;)Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;
    .locals 4
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 1225
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1226
    iget-object v2, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;

    .line 1227
    .local v1, "ii":Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;
    iget-object v2, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v3, v1, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Landroid/support/v4/view/PagerAdapter;->isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1231
    .end local v1    # "ii":Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;
    :goto_1
    return-object v1

    .line 1225
    .restart local v1    # "ii":Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1231
    .end local v1    # "ii":Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method infoForPosition(I)Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 1246
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1247
    iget-object v2, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;

    .line 1248
    .local v1, "ii":Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;
    iget v2, v1, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;->position:I

    if-ne v2, p1, :cond_0

    .line 1252
    .end local v1    # "ii":Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;
    :goto_1
    return-object v1

    .line 1246
    .restart local v1    # "ii":Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1252
    .end local v1    # "ii":Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method initViewPager()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 247
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/ui/VerticalViewPager;->setWillNotDraw(Z)V

    .line 248
    const/high16 v3, 0x40000

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/ui/VerticalViewPager;->setDescendantFocusability(I)V

    .line 249
    invoke-virtual {p0, v5}, Lcom/oneplus/camera/ui/VerticalViewPager;->setFocusable(Z)V

    .line 250
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/VerticalViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 251
    .local v1, "context":Landroid/content/Context;
    new-instance v3, Landroid/widget/Scroller;

    sget-object v4, Lcom/oneplus/camera/ui/VerticalViewPager;->sInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v3, v1, v4}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v3, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mScroller:Landroid/widget/Scroller;

    .line 252
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 253
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v2, v3, Landroid/util/DisplayMetrics;->density:F

    .line 255
    .local v2, "density":F
    invoke-static {v0}, Landroid/support/v4/view/ViewConfigurationCompat;->getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I

    move-result v3

    iput v3, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mTouchSlop:I

    .line 256
    const/high16 v3, 0x43c80000    # 400.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mMinimumVelocity:I

    .line 257
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mMaximumVelocity:I

    .line 258
    new-instance v3, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-direct {v3, v1}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mTopEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 259
    new-instance v3, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-direct {v3, v1}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mBottomEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 261
    const/high16 v3, 0x41c80000    # 25.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mFlingDistance:I

    .line 262
    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mCloseEnough:I

    .line 263
    const/high16 v3, 0x41800000    # 16.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mDefaultGutterSize:I

    .line 265
    new-instance v3, Lcom/oneplus/camera/ui/VerticalViewPager$MyAccessibilityDelegate;

    invoke-direct {v3, p0}, Lcom/oneplus/camera/ui/VerticalViewPager$MyAccessibilityDelegate;-><init>(Lcom/oneplus/camera/ui/VerticalViewPager;)V

    invoke-static {p0, v3}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 267
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v3

    if-nez v3, :cond_0

    .line 269
    invoke-static {p0, v5}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 272
    :cond_0
    return-void
.end method

.method public internalCanScrollVertically(I)Z
    .locals 6
    .param p1, "direction"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2324
    iget-object v4, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-nez v4, :cond_1

    .line 2335
    :cond_0
    :goto_0
    return v3

    .line 2328
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/camera/ui/VerticalViewPager;->getClientHeight()I

    move-result v0

    .line 2329
    .local v0, "height":I
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/VerticalViewPager;->getScrollY()I

    move-result v1

    .line 2330
    .local v1, "scrollY":I
    if-gez p1, :cond_3

    .line 2331
    int-to-float v4, v0

    iget v5, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mFirstOffset:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    if-le v1, v4, :cond_2

    :goto_1
    move v3, v2

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1

    .line 2332
    :cond_3
    if-lez p1, :cond_0

    .line 2333
    int-to-float v4, v0

    iget v5, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mLastOffset:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    if-ge v1, v4, :cond_4

    :goto_2
    move v3, v2

    goto :goto_0

    :cond_4
    move v2, v3

    goto :goto_2
.end method

.method public isFakeDragging()Z
    .locals 1

    .prologue
    .line 2280
    iget-boolean v0, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mFakeDragging:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 1257
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 1258
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mFirstLayout:Z

    .line 1259
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/ui/VerticalViewPager;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 277
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 278
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 19
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 2115
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 2118
    move-object/from16 v0, p0

    iget v13, v0, Lcom/oneplus/camera/ui/VerticalViewPager;->mPageMargin:I

    if-lez v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/camera/ui/VerticalViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/camera/ui/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/camera/ui/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v13, :cond_2

    .line 2119
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/ui/VerticalViewPager;->getScrollY()I

    move-result v12

    .line 2120
    .local v12, "scrollY":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/ui/VerticalViewPager;->getHeight()I

    move-result v3

    .line 2122
    .local v3, "height":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/oneplus/camera/ui/VerticalViewPager;->mPageMargin:I

    int-to-float v13, v13

    int-to-float v14, v3

    div-float v9, v13, v14

    .line 2123
    .local v9, "marginOffset":F
    const/4 v7, 0x0

    .line 2124
    .local v7, "itemIndex":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/camera/ui/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;

    .line 2125
    .local v5, "ii":Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;
    iget v10, v5, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;->offset:F

    .line 2126
    .local v10, "offset":F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/camera/ui/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 2127
    .local v6, "itemCount":I
    iget v2, v5, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;->position:I

    .line 2128
    .local v2, "firstPos":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/camera/ui/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    add-int/lit8 v14, v6, -0x1

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;

    iget v8, v13, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;->position:I

    .line 2129
    .local v8, "lastPos":I
    move v11, v2

    .local v11, "pos":I
    :goto_0
    if-ge v11, v8, :cond_2

    .line 2130
    :goto_1
    iget v13, v5, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;->position:I

    if-le v11, v13, :cond_0

    if-ge v7, v6, :cond_0

    .line 2131
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/camera/ui/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "ii":Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;
    check-cast v5, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;

    .restart local v5    # "ii":Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;
    goto :goto_1

    .line 2135
    :cond_0
    iget v13, v5, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;->position:I

    if-ne v11, v13, :cond_3

    .line 2136
    iget v13, v5, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;->offset:F

    iget v14, v5, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;->heightFactor:F

    add-float/2addr v13, v14

    int-to-float v14, v3

    mul-float v1, v13, v14

    .line 2137
    .local v1, "drawAt":F
    iget v13, v5, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;->offset:F

    iget v14, v5, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;->heightFactor:F

    add-float/2addr v13, v14

    add-float v10, v13, v9

    .line 2144
    :goto_2
    move-object/from16 v0, p0

    iget v13, v0, Lcom/oneplus/camera/ui/VerticalViewPager;->mPageMargin:I

    int-to-float v13, v13

    add-float/2addr v13, v1

    int-to-float v14, v12

    cmpl-float v13, v13, v14

    if-lez v13, :cond_1

    .line 2145
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/camera/ui/VerticalViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/oneplus/camera/ui/VerticalViewPager;->mLeftPageBounds:I

    float-to-int v15, v1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/camera/ui/VerticalViewPager;->mRightPageBounds:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/camera/ui/VerticalViewPager;->mPageMargin:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    add-float v17, v17, v1

    const/high16 v18, 0x3f000000    # 0.5f

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    invoke-virtual/range {v13 .. v17}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2147
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/camera/ui/VerticalViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2150
    :cond_1
    add-int v13, v12, v3

    int-to-float v13, v13

    cmpl-float v13, v1, v13

    if-lez v13, :cond_4

    .line 2155
    .end local v1    # "drawAt":F
    .end local v2    # "firstPos":I
    .end local v3    # "height":I
    .end local v5    # "ii":Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;
    .end local v6    # "itemCount":I
    .end local v7    # "itemIndex":I
    .end local v8    # "lastPos":I
    .end local v9    # "marginOffset":F
    .end local v10    # "offset":F
    .end local v11    # "pos":I
    .end local v12    # "scrollY":I
    :cond_2
    return-void

    .line 2139
    .restart local v2    # "firstPos":I
    .restart local v3    # "height":I
    .restart local v5    # "ii":Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;
    .restart local v6    # "itemCount":I
    .restart local v7    # "itemIndex":I
    .restart local v8    # "lastPos":I
    .restart local v9    # "marginOffset":F
    .restart local v10    # "offset":F
    .restart local v11    # "pos":I
    .restart local v12    # "scrollY":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/camera/ui/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v13, v11}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v4

    .line 2140
    .local v4, "heightFactor":F
    add-float v13, v10, v4

    int-to-float v14, v3

    mul-float v1, v13, v14

    .line 2141
    .restart local v1    # "drawAt":F
    add-float v13, v4, v9

    add-float/2addr v10, v13

    goto :goto_2

    .line 2129
    .end local v4    # "heightFactor":F
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1680
    iget-boolean v0, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mSwipeable:Z

    if-nez v0, :cond_0

    .line 1681
    const/4 v0, 0x0

    .line 1822
    :goto_0
    return v0

    .line 1689
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v6, v0, 0xff

    .line 1692
    .local v6, "action":I
    const/4 v0, 0x3

    if-eq v6, v0, :cond_1

    const/4 v0, 0x1

    if-ne v6, v0, :cond_3

    .line 1695
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mIsBeingDragged:Z

    .line 1696
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mIsUnableToDrag:Z

    .line 1697
    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mActivePointerId:I

    .line 1698
    iget-object v0, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_2

    .line 1699
    iget-object v0, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1700
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1702
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 1707
    :cond_3
    if-eqz v6, :cond_5

    .line 1708
    iget-boolean v0, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_4

    .line 1710
    const/4 v0, 0x1

    goto :goto_0

    .line 1712
    :cond_4
    iget-boolean v0, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mIsUnableToDrag:Z

    if-eqz v0, :cond_5

    .line 1714
    const/4 v0, 0x0

    goto :goto_0

    .line 1718
    :cond_5
    sparse-switch v6, :sswitch_data_0

    .line 1813
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_7

    .line 1814
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1816
    :cond_7
    iget-object v0, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1822
    iget-boolean v0, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mIsBeingDragged:Z

    goto :goto_0

    .line 1729
    :sswitch_0
    iget v7, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mActivePointerId:I

    .line 1730
    .local v7, "activePointerId":I
    const/4 v0, -0x1

    if-eq v7, v0, :cond_6

    .line 1735
    invoke-static {p1, v7}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v9

    .line 1736
    .local v9, "pointerIndex":I
    invoke-static {p1, v9}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v12

    .line 1737
    .local v12, "y":F
    iget v0, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mLastMotionY:F

    sub-float v8, v12, v0

    .line 1738
    .local v8, "dy":F
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v13

    .line 1739
    .local v13, "yDiff":F
    invoke-static {p1, v9}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v10

    .line 1740
    .local v10, "x":F
    iget v0, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mInitialMotionX:F

    sub-float v0, v10, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v11

    .line 1743
    .local v11, "xDiff":F
    const/4 v0, 0x0

    cmpl-float v0, v8, v0

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mLastMotionY:F

    invoke-direct {p0, v0, v8}, Lcom/oneplus/camera/ui/VerticalViewPager;->isGutterDrag(FF)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v2, 0x0

    float-to-int v3, v8

    float-to-int v4, v10

    float-to-int v5, v12

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/camera/ui/VerticalViewPager;->canScroll(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1746
    iput v10, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mLastMotionX:F

    .line 1747
    iput v12, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mLastMotionY:F

    .line 1748
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mIsUnableToDrag:Z

    .line 1749
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1751
    :cond_8
    iget v0, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mTouchSlop:I

    int-to-float v0, v0

    cmpl-float v0, v13, v0

    if-lez v0, :cond_b

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr v0, v13

    cmpl-float v0, v0, v11

    if-lez v0, :cond_b

    .line 1753
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mIsBeingDragged:Z

    .line 1754
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/camera/ui/VerticalViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    .line 1755
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/camera/ui/VerticalViewPager;->setScrollState(I)V

    .line 1756
    const/4 v0, 0x0

    cmpl-float v0, v8, v0

    if-lez v0, :cond_a

    iget v0, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mInitialMotionY:F

    iget v1, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mTouchSlop:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    :goto_2
    iput v0, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mLastMotionY:F

    .line 1758
    iput v10, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mLastMotionX:F

    .line 1759
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/camera/ui/VerticalViewPager;->setScrollingCacheEnabled(Z)V

    .line 1768
    :cond_9
    :goto_3
    iget-boolean v0, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_6

    .line 1770
    invoke-direct {p0, v12}, Lcom/oneplus/camera/ui/VerticalViewPager;->performDrag(F)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1771
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto/16 :goto_1

    .line 1756
    :cond_a
    iget v0, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mInitialMotionY:F

    iget v1, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mTouchSlop:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    goto :goto_2

    .line 1760
    :cond_b
    iget v0, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mTouchSlop:I

    int-to-float v0, v0

    cmpl-float v0, v11, v0

    if-lez v0, :cond_9

    .line 1766
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mIsUnableToDrag:Z

    goto :goto_3

    .line 1782
    .end local v7    # "activePointerId":I
    .end local v8    # "dy":F
    .end local v9    # "pointerIndex":I
    .end local v10    # "x":F
    .end local v11    # "xDiff":F
    .end local v12    # "y":F
    .end local v13    # "yDiff":F
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mInitialMotionX:F

    iput v0, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mLastMotionX:F

    .line 1783
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mInitialMotionY:F

    iput v0, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mLastMotionY:F

    .line 1784
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mActivePointerId:I

    .line 1785
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mIsUnableToDrag:Z

    .line 1787
    iget-object v0, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 1788
    iget v0, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mScrollState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_c

    iget-object v0, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalY()I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mCloseEnough:I

    if-le v0, v1, :cond_c

    .line 1791
    iget-object v0, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1792
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mPopulatePending:Z

    .line 1793
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/VerticalViewPager;->populate()V

    .line 1794
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mIsBeingDragged:Z

    .line 1795
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/camera/ui/VerticalViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    .line 1796
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/camera/ui/VerticalViewPager;->setScrollState(I)V

    goto/16 :goto_1

    .line 1798
    :cond_c
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/camera/ui/VerticalViewPager;->completeScroll(Z)V

    .line 1799
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mIsBeingDragged:Z

    goto/16 :goto_1

    .line 1809
    :sswitch_2
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/VerticalViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 1718
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x2 -> :sswitch_0
        0x6 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 30
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 1397
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/ui/VerticalViewPager;->getChildCount()I

    move-result v9

    .line 1398
    .local v9, "count":I
    sub-int v24, p4, p2

    .line 1399
    .local v24, "width":I
    sub-int v11, p5, p3

    .line 1400
    .local v11, "height":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/ui/VerticalViewPager;->getPaddingLeft()I

    move-result v18

    .line 1401
    .local v18, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/ui/VerticalViewPager;->getPaddingTop()I

    move-result v20

    .line 1402
    .local v20, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/ui/VerticalViewPager;->getPaddingRight()I

    move-result v19

    .line 1403
    .local v19, "paddingRight":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/ui/VerticalViewPager;->getPaddingBottom()I

    move-result v17

    .line 1404
    .local v17, "paddingBottom":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/ui/VerticalViewPager;->getScrollY()I

    move-result v21

    .line 1406
    .local v21, "scrollY":I
    const/4 v10, 0x0

    .line 1410
    .local v10, "decorCount":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    if-ge v14, v9, :cond_1

    .line 1411
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/oneplus/camera/ui/VerticalViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1412
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v26

    const/16 v27, 0x8

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_0

    .line 1413
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Lcom/oneplus/camera/ui/VerticalViewPager$LayoutParams;

    .line 1414
    .local v16, "lp":Lcom/oneplus/camera/ui/VerticalViewPager$LayoutParams;
    const/4 v7, 0x0

    .line 1415
    .local v7, "childLeft":I
    const/4 v8, 0x0

    .line 1416
    .local v8, "childTop":I
    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/oneplus/camera/ui/VerticalViewPager$LayoutParams;->isDecor:Z

    move/from16 v26, v0

    if-eqz v26, :cond_0

    .line 1417
    move-object/from16 v0, v16

    iget v0, v0, Lcom/oneplus/camera/ui/VerticalViewPager$LayoutParams;->gravity:I

    move/from16 v26, v0

    and-int/lit8 v13, v26, 0x7

    .line 1418
    .local v13, "hgrav":I
    move-object/from16 v0, v16

    iget v0, v0, Lcom/oneplus/camera/ui/VerticalViewPager$LayoutParams;->gravity:I

    move/from16 v26, v0

    and-int/lit8 v23, v26, 0x70

    .line 1419
    .local v23, "vgrav":I
    packed-switch v13, :pswitch_data_0

    .line 1421
    :pswitch_0
    move/from16 v7, v18

    .line 1436
    :goto_1
    sparse-switch v23, :sswitch_data_0

    .line 1438
    move/from16 v8, v20

    .line 1453
    :goto_2
    add-int v8, v8, v21

    .line 1454
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    add-int v26, v26, v7

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v27

    add-int v27, v27, v8

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v5, v7, v8, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 1457
    add-int/lit8 v10, v10, 0x1

    .line 1410
    .end local v7    # "childLeft":I
    .end local v8    # "childTop":I
    .end local v13    # "hgrav":I
    .end local v16    # "lp":Lcom/oneplus/camera/ui/VerticalViewPager$LayoutParams;
    .end local v23    # "vgrav":I
    :cond_0
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 1424
    .restart local v7    # "childLeft":I
    .restart local v8    # "childTop":I
    .restart local v13    # "hgrav":I
    .restart local v16    # "lp":Lcom/oneplus/camera/ui/VerticalViewPager$LayoutParams;
    .restart local v23    # "vgrav":I
    :pswitch_1
    move/from16 v7, v18

    .line 1425
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    add-int v18, v18, v26

    .line 1426
    goto :goto_1

    .line 1428
    :pswitch_2
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    sub-int v26, v24, v26

    div-int/lit8 v26, v26, 0x2

    move/from16 v0, v26

    move/from16 v1, v18

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1430
    goto :goto_1

    .line 1432
    :pswitch_3
    sub-int v26, v24, v19

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v27

    sub-int v7, v26, v27

    .line 1433
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    add-int v19, v19, v26

    goto :goto_1

    .line 1441
    :sswitch_0
    move/from16 v8, v20

    .line 1442
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v26

    add-int v20, v20, v26

    .line 1443
    goto :goto_2

    .line 1445
    :sswitch_1
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v26

    sub-int v26, v11, v26

    div-int/lit8 v26, v26, 0x2

    move/from16 v0, v26

    move/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1447
    goto :goto_2

    .line 1449
    :sswitch_2
    sub-int v26, v11, v17

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v27

    sub-int v8, v26, v27

    .line 1450
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v26

    add-int v17, v17, v26

    goto :goto_2

    .line 1462
    .end local v5    # "child":Landroid/view/View;
    .end local v7    # "childLeft":I
    .end local v8    # "childTop":I
    .end local v13    # "hgrav":I
    .end local v16    # "lp":Lcom/oneplus/camera/ui/VerticalViewPager$LayoutParams;
    .end local v23    # "vgrav":I
    :cond_1
    sub-int v26, v11, v20

    sub-int v6, v26, v17

    .line 1464
    .local v6, "childHeight":I
    const/4 v14, 0x0

    :goto_3
    if-ge v14, v9, :cond_4

    .line 1465
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/oneplus/camera/ui/VerticalViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1466
    .restart local v5    # "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v26

    const/16 v27, 0x8

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_3

    .line 1467
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Lcom/oneplus/camera/ui/VerticalViewPager$LayoutParams;

    .line 1469
    .restart local v16    # "lp":Lcom/oneplus/camera/ui/VerticalViewPager$LayoutParams;
    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/oneplus/camera/ui/VerticalViewPager$LayoutParams;->isDecor:Z

    move/from16 v26, v0

    if-nez v26, :cond_3

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/oneplus/camera/ui/VerticalViewPager;->infoForChild(Landroid/view/View;)Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;

    move-result-object v15

    .local v15, "ii":Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;
    if-eqz v15, :cond_3

    .line 1470
    int-to-float v0, v6

    move/from16 v26, v0

    iget v0, v15, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;->offset:F

    move/from16 v27, v0

    mul-float v26, v26, v27

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v22, v0

    .line 1471
    .local v22, "toff":I
    move/from16 v7, v18

    .line 1472
    .restart local v7    # "childLeft":I
    add-int v8, v20, v22

    .line 1473
    .restart local v8    # "childTop":I
    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/oneplus/camera/ui/VerticalViewPager$LayoutParams;->needsMeasure:Z

    move/from16 v26, v0

    if-eqz v26, :cond_2

    .line 1476
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/oneplus/camera/ui/VerticalViewPager$LayoutParams;->needsMeasure:Z

    .line 1477
    sub-int v26, v24, v18

    sub-int v26, v26, v19

    const/high16 v27, 0x40000000    # 2.0f

    invoke-static/range {v26 .. v27}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v25

    .line 1480
    .local v25, "widthSpec":I
    int-to-float v0, v6

    move/from16 v26, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/oneplus/camera/ui/VerticalViewPager$LayoutParams;->heightFactor:F

    move/from16 v27, v0

    mul-float v26, v26, v27

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    const/high16 v27, 0x40000000    # 2.0f

    invoke-static/range {v26 .. v27}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 1483
    .local v12, "heightSpec":I
    move/from16 v0, v25

    invoke-virtual {v5, v0, v12}, Landroid/view/View;->measure(II)V

    .line 1488
    .end local v12    # "heightSpec":I
    .end local v25    # "widthSpec":I
    :cond_2
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    add-int v26, v26, v7

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v27

    add-int v27, v27, v8

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v5, v7, v8, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 1464
    .end local v7    # "childLeft":I
    .end local v8    # "childTop":I
    .end local v15    # "ii":Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;
    .end local v16    # "lp":Lcom/oneplus/camera/ui/VerticalViewPager$LayoutParams;
    .end local v22    # "toff":I
    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_3

    .line 1494
    .end local v5    # "child":Landroid/view/View;
    :cond_4
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oneplus/camera/ui/VerticalViewPager;->mLeftPageBounds:I

    .line 1495
    sub-int v26, v24, v19

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oneplus/camera/ui/VerticalViewPager;->mRightPageBounds:I

    .line 1496
    move-object/from16 v0, p0

    iput v10, v0, Lcom/oneplus/camera/ui/VerticalViewPager;->mDecorChildCount:I

    .line 1498
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oneplus/camera/ui/VerticalViewPager;->mFirstLayout:Z

    move/from16 v26, v0

    if-eqz v26, :cond_5

    .line 1499
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/camera/ui/VerticalViewPager;->mCurItem:I

    move/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/camera/ui/VerticalViewPager;->scrollToItem(IZIZ)V

    .line 1501
    :cond_5
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/oneplus/camera/ui/VerticalViewPager;->mFirstLayout:Z

    .line 1502
    return-void

    .line 1419
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 1436
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x30 -> :sswitch_0
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 23
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 1268
    const/16 v21, 0x0

    move/from16 v0, v21

    move/from16 v1, p1

    invoke-static {v0, v1}, Lcom/oneplus/camera/ui/VerticalViewPager;->getDefaultSize(II)I

    move-result v21

    const/16 v22, 0x0

    move/from16 v0, v22

    move/from16 v1, p2

    invoke-static {v0, v1}, Lcom/oneplus/camera/ui/VerticalViewPager;->getDefaultSize(II)I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/ui/VerticalViewPager;->setMeasuredDimension(II)V

    .line 1271
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/ui/VerticalViewPager;->getMeasuredHeight()I

    move-result v15

    .line 1272
    .local v15, "measuredHeight":I
    div-int/lit8 v14, v15, 0xa

    .line 1273
    .local v14, "maxGutterSize":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/camera/ui/VerticalViewPager;->mDefaultGutterSize:I

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-static {v14, v0}, Ljava/lang/Math;->min(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oneplus/camera/ui/VerticalViewPager;->mGutterSize:I

    .line 1276
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/ui/VerticalViewPager;->getMeasuredWidth()I

    move-result v21

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/ui/VerticalViewPager;->getPaddingLeft()I

    move-result v22

    sub-int v21, v21, v22

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/ui/VerticalViewPager;->getPaddingRight()I

    move-result v22

    sub-int v5, v21, v22

    .line 1277
    .local v5, "childWidthSize":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/ui/VerticalViewPager;->getPaddingTop()I

    move-result v21

    sub-int v21, v15, v21

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/ui/VerticalViewPager;->getPaddingBottom()I

    move-result v22

    sub-int v4, v21, v22

    .line 1284
    .local v4, "childHeightSize":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/ui/VerticalViewPager;->getChildCount()I

    move-result v16

    .line 1285
    .local v16, "size":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    move/from16 v0, v16

    if-ge v12, v0, :cond_a

    .line 1286
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/oneplus/camera/ui/VerticalViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1287
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v21

    const/16 v22, 0x8

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_5

    .line 1288
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/oneplus/camera/ui/VerticalViewPager$LayoutParams;

    .line 1289
    .local v13, "lp":Lcom/oneplus/camera/ui/VerticalViewPager$LayoutParams;
    if-eqz v13, :cond_5

    iget-boolean v0, v13, Lcom/oneplus/camera/ui/VerticalViewPager$LayoutParams;->isDecor:Z

    move/from16 v21, v0

    if-eqz v21, :cond_5

    .line 1290
    iget v0, v13, Lcom/oneplus/camera/ui/VerticalViewPager$LayoutParams;->gravity:I

    move/from16 v21, v0

    and-int/lit8 v11, v21, 0x7

    .line 1291
    .local v11, "hgrav":I
    iget v0, v13, Lcom/oneplus/camera/ui/VerticalViewPager$LayoutParams;->gravity:I

    move/from16 v21, v0

    and-int/lit8 v17, v21, 0x70

    .line 1292
    .local v17, "vgrav":I
    const/high16 v18, -0x80000000

    .line 1293
    .local v18, "widthMode":I
    const/high16 v8, -0x80000000

    .line 1294
    .local v8, "heightMode":I
    const/16 v21, 0x30

    move/from16 v0, v17

    move/from16 v1, v21

    if-eq v0, v1, :cond_0

    const/16 v21, 0x50

    move/from16 v0, v17

    move/from16 v1, v21

    if-ne v0, v1, :cond_6

    :cond_0
    const/4 v7, 0x1

    .line 1295
    .local v7, "consumeVertical":Z
    :goto_1
    const/16 v21, 0x3

    move/from16 v0, v21

    if-eq v11, v0, :cond_1

    const/16 v21, 0x5

    move/from16 v0, v21

    if-ne v11, v0, :cond_7

    :cond_1
    const/4 v6, 0x1

    .line 1297
    .local v6, "consumeHorizontal":Z
    :goto_2
    if-eqz v7, :cond_8

    .line 1298
    const/high16 v18, 0x40000000    # 2.0f

    .line 1303
    :cond_2
    :goto_3
    move/from16 v19, v5

    .line 1304
    .local v19, "widthSize":I
    move v9, v4

    .line 1305
    .local v9, "heightSize":I
    iget v0, v13, Lcom/oneplus/camera/ui/VerticalViewPager$LayoutParams;->width:I

    move/from16 v21, v0

    const/16 v22, -0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_3

    .line 1306
    const/high16 v18, 0x40000000    # 2.0f

    .line 1307
    iget v0, v13, Lcom/oneplus/camera/ui/VerticalViewPager$LayoutParams;->width:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_3

    .line 1308
    iget v0, v13, Lcom/oneplus/camera/ui/VerticalViewPager$LayoutParams;->width:I

    move/from16 v19, v0

    .line 1311
    :cond_3
    iget v0, v13, Lcom/oneplus/camera/ui/VerticalViewPager$LayoutParams;->height:I

    move/from16 v21, v0

    const/16 v22, -0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_4

    .line 1312
    const/high16 v8, 0x40000000    # 2.0f

    .line 1313
    iget v0, v13, Lcom/oneplus/camera/ui/VerticalViewPager$LayoutParams;->height:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_4

    .line 1314
    iget v9, v13, Lcom/oneplus/camera/ui/VerticalViewPager$LayoutParams;->height:I

    .line 1317
    :cond_4
    move/from16 v0, v19

    move/from16 v1, v18

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    .line 1318
    .local v20, "widthSpec":I
    invoke-static {v9, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 1319
    .local v10, "heightSpec":I
    move/from16 v0, v20

    invoke-virtual {v3, v0, v10}, Landroid/view/View;->measure(II)V

    .line 1321
    if-eqz v7, :cond_9

    .line 1322
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v21

    sub-int v4, v4, v21

    .line 1285
    .end local v6    # "consumeHorizontal":Z
    .end local v7    # "consumeVertical":Z
    .end local v8    # "heightMode":I
    .end local v9    # "heightSize":I
    .end local v10    # "heightSpec":I
    .end local v11    # "hgrav":I
    .end local v13    # "lp":Lcom/oneplus/camera/ui/VerticalViewPager$LayoutParams;
    .end local v17    # "vgrav":I
    .end local v18    # "widthMode":I
    .end local v19    # "widthSize":I
    .end local v20    # "widthSpec":I
    :cond_5
    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 1294
    .restart local v8    # "heightMode":I
    .restart local v11    # "hgrav":I
    .restart local v13    # "lp":Lcom/oneplus/camera/ui/VerticalViewPager$LayoutParams;
    .restart local v17    # "vgrav":I
    .restart local v18    # "widthMode":I
    :cond_6
    const/4 v7, 0x0

    goto :goto_1

    .line 1295
    .restart local v7    # "consumeVertical":Z
    :cond_7
    const/4 v6, 0x0

    goto :goto_2

    .line 1299
    .restart local v6    # "consumeHorizontal":Z
    :cond_8
    if-eqz v6, :cond_2

    .line 1300
    const/high16 v8, 0x40000000    # 2.0f

    goto :goto_3

    .line 1323
    .restart local v9    # "heightSize":I
    .restart local v10    # "heightSpec":I
    .restart local v19    # "widthSize":I
    .restart local v20    # "widthSpec":I
    :cond_9
    if-eqz v6, :cond_5

    .line 1324
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v21

    sub-int v5, v5, v21

    goto :goto_4

    .line 1330
    .end local v3    # "child":Landroid/view/View;
    .end local v6    # "consumeHorizontal":Z
    .end local v7    # "consumeVertical":Z
    .end local v8    # "heightMode":I
    .end local v9    # "heightSize":I
    .end local v10    # "heightSpec":I
    .end local v11    # "hgrav":I
    .end local v13    # "lp":Lcom/oneplus/camera/ui/VerticalViewPager$LayoutParams;
    .end local v17    # "vgrav":I
    .end local v18    # "widthMode":I
    .end local v19    # "widthSize":I
    .end local v20    # "widthSpec":I
    :cond_a
    const/high16 v21, 0x40000000    # 2.0f

    move/from16 v0, v21

    invoke-static {v5, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oneplus/camera/ui/VerticalViewPager;->mChildWidthMeasureSpec:I

    .line 1331
    const/high16 v21, 0x40000000    # 2.0f

    move/from16 v0, v21

    invoke-static {v4, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oneplus/camera/ui/VerticalViewPager;->mChildHeightMeasureSpec:I

    .line 1334
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/oneplus/camera/ui/VerticalViewPager;->mInLayout:Z

    .line 1335
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/ui/VerticalViewPager;->populate()V

    .line 1336
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/oneplus/camera/ui/VerticalViewPager;->mInLayout:Z

    .line 1339
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/ui/VerticalViewPager;->getChildCount()I

    move-result v16

    .line 1340
    const/4 v12, 0x0

    :goto_5
    move/from16 v0, v16

    if-ge v12, v0, :cond_d

    .line 1341
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/oneplus/camera/ui/VerticalViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1342
    .restart local v3    # "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v21

    const/16 v22, 0x8

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_c

    .line 1346
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/oneplus/camera/ui/VerticalViewPager$LayoutParams;

    .line 1347
    .restart local v13    # "lp":Lcom/oneplus/camera/ui/VerticalViewPager$LayoutParams;
    if-eqz v13, :cond_b

    iget-boolean v0, v13, Lcom/oneplus/camera/ui/VerticalViewPager$LayoutParams;->isDecor:Z

    move/from16 v21, v0

    if-nez v21, :cond_c

    .line 1348
    :cond_b
    int-to-float v0, v4

    move/from16 v21, v0

    iget v0, v13, Lcom/oneplus/camera/ui/VerticalViewPager$LayoutParams;->heightFactor:F

    move/from16 v22, v0

    mul-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x40000000    # 2.0f

    invoke-static/range {v21 .. v22}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 1350
    .restart local v10    # "heightSpec":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/camera/ui/VerticalViewPager;->mChildWidthMeasureSpec:I

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-virtual {v3, v0, v10}, Landroid/view/View;->measure(II)V

    .line 1340
    .end local v10    # "heightSpec":I
    .end local v13    # "lp":Lcom/oneplus/camera/ui/VerticalViewPager$LayoutParams;
    :cond_c
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 1354
    .end local v3    # "child":Landroid/view/View;
    :cond_d
    return-void
.end method

.method protected onPageScrolled(IFI)V
    .locals 17
    .param p1, "position"    # I
    .param p2, "offset"    # F
    .param p3, "offsetPixels"    # I

    .prologue
    .line 1571
    move-object/from16 v0, p0

    iget v15, v0, Lcom/oneplus/camera/ui/VerticalViewPager;->mDecorChildCount:I

    if-lez v15, :cond_2

    .line 1572
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/ui/VerticalViewPager;->getScrollY()I

    move-result v12

    .line 1573
    .local v12, "scrollY":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/ui/VerticalViewPager;->getPaddingTop()I

    move-result v11

    .line 1574
    .local v11, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/ui/VerticalViewPager;->getPaddingBottom()I

    move-result v10

    .line 1575
    .local v10, "paddingBottom":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/ui/VerticalViewPager;->getHeight()I

    move-result v7

    .line 1576
    .local v7, "height":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/ui/VerticalViewPager;->getChildCount()I

    move-result v4

    .line 1577
    .local v4, "childCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v4, :cond_2

    .line 1578
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/oneplus/camera/ui/VerticalViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1579
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/oneplus/camera/ui/VerticalViewPager$LayoutParams;

    .line 1580
    .local v9, "lp":Lcom/oneplus/camera/ui/VerticalViewPager$LayoutParams;
    iget-boolean v15, v9, Lcom/oneplus/camera/ui/VerticalViewPager$LayoutParams;->isDecor:Z

    if-nez v15, :cond_1

    .line 1577
    :cond_0
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1582
    :cond_1
    iget v15, v9, Lcom/oneplus/camera/ui/VerticalViewPager$LayoutParams;->gravity:I

    and-int/lit8 v14, v15, 0x70

    .line 1583
    .local v14, "vgrav":I
    const/4 v6, 0x0

    .line 1584
    .local v6, "childTop":I
    sparse-switch v14, :sswitch_data_0

    .line 1586
    move v6, v11

    .line 1601
    :goto_2
    add-int/2addr v6, v12

    .line 1603
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v15

    sub-int v5, v6, v15

    .line 1604
    .local v5, "childOffset":I
    if-eqz v5, :cond_0

    .line 1605
    invoke-virtual {v3, v5}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_1

    .line 1589
    .end local v5    # "childOffset":I
    :sswitch_0
    move v6, v11

    .line 1590
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v15

    add-int/2addr v11, v15

    .line 1591
    goto :goto_2

    .line 1593
    :sswitch_1
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    sub-int v15, v7, v15

    div-int/lit8 v15, v15, 0x2

    invoke-static {v15, v11}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1595
    goto :goto_2

    .line 1597
    :sswitch_2
    sub-int v15, v7, v10

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    sub-int v6, v15, v16

    .line 1598
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    add-int/2addr v10, v15

    goto :goto_2

    .line 1610
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "childCount":I
    .end local v6    # "childTop":I
    .end local v7    # "height":I
    .end local v8    # "i":I
    .end local v9    # "lp":Lcom/oneplus/camera/ui/VerticalViewPager$LayoutParams;
    .end local v10    # "paddingBottom":I
    .end local v11    # "paddingTop":I
    .end local v12    # "scrollY":I
    .end local v14    # "vgrav":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/camera/ui/VerticalViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v15, :cond_3

    .line 1611
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/camera/ui/VerticalViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-interface {v15, v0, v1, v2}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 1613
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/camera/ui/VerticalViewPager;->mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v15, :cond_4

    .line 1614
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/camera/ui/VerticalViewPager;->mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-interface {v15, v0, v1, v2}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 1617
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/camera/ui/VerticalViewPager;->mPageTransformer:Landroid/support/v4/view/ViewPager$PageTransformer;

    if-eqz v15, :cond_6

    .line 1618
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/ui/VerticalViewPager;->getScrollY()I

    move-result v12

    .line 1619
    .restart local v12    # "scrollY":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/ui/VerticalViewPager;->getChildCount()I

    move-result v4

    .line 1620
    .restart local v4    # "childCount":I
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_3
    if-ge v8, v4, :cond_6

    .line 1621
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/oneplus/camera/ui/VerticalViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1622
    .restart local v3    # "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/oneplus/camera/ui/VerticalViewPager$LayoutParams;

    .line 1624
    .restart local v9    # "lp":Lcom/oneplus/camera/ui/VerticalViewPager$LayoutParams;
    iget-boolean v15, v9, Lcom/oneplus/camera/ui/VerticalViewPager$LayoutParams;->isDecor:Z

    if-eqz v15, :cond_5

    .line 1620
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 1626
    :cond_5
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v15

    sub-int/2addr v15, v12

    int-to-float v15, v15

    invoke-direct/range {p0 .. p0}, Lcom/oneplus/camera/ui/VerticalViewPager;->getClientHeight()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    div-float v13, v15, v16

    .line 1627
    .local v13, "transformPos":F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/camera/ui/VerticalViewPager;->mPageTransformer:Landroid/support/v4/view/ViewPager$PageTransformer;

    invoke-interface {v15, v3, v13}, Landroid/support/v4/view/ViewPager$PageTransformer;->transformPage(Landroid/view/View;F)V

    goto :goto_4

    .line 1631
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "childCount":I
    .end local v8    # "i":I
    .end local v9    # "lp":Lcom/oneplus/camera/ui/VerticalViewPager$LayoutParams;
    .end local v12    # "scrollY":I
    .end local v13    # "transformPos":F
    :cond_6
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/oneplus/camera/ui/VerticalViewPager;->mCalledSuper:Z

    .line 1632
    return-void

    .line 1584
    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x30 -> :sswitch_0
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 9
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 2593
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/VerticalViewPager;->getChildCount()I

    move-result v1

    .line 2594
    .local v1, "count":I
    and-int/lit8 v7, p1, 0x2

    if-eqz v7, :cond_0

    .line 2595
    const/4 v6, 0x0

    .line 2596
    .local v6, "index":I
    const/4 v5, 0x1

    .line 2597
    .local v5, "increment":I
    move v2, v1

    .line 2603
    .local v2, "end":I
    :goto_0
    move v3, v6

    .local v3, "i":I
    :goto_1
    if-eq v3, v2, :cond_2

    .line 2604
    invoke-virtual {p0, v3}, Lcom/oneplus/camera/ui/VerticalViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2605
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_1

    .line 2606
    invoke-virtual {p0, v0}, Lcom/oneplus/camera/ui/VerticalViewPager;->infoForChild(Landroid/view/View;)Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;

    move-result-object v4

    .line 2607
    .local v4, "ii":Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;
    if-eqz v4, :cond_1

    iget v7, v4, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;->position:I

    iget v8, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mCurItem:I

    if-ne v7, v8, :cond_1

    .line 2608
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2609
    const/4 v7, 0x1

    .line 2614
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "ii":Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;
    :goto_2
    return v7

    .line 2599
    .end local v2    # "end":I
    .end local v3    # "i":I
    .end local v5    # "increment":I
    .end local v6    # "index":I
    :cond_0
    add-int/lit8 v6, v1, -0x1

    .line 2600
    .restart local v6    # "index":I
    const/4 v5, -0x1

    .line 2601
    .restart local v5    # "increment":I
    const/4 v2, -0x1

    .restart local v2    # "end":I
    goto :goto_0

    .line 2603
    .restart local v0    # "child":Landroid/view/View;
    .restart local v3    # "i":I
    :cond_1
    add-int/2addr v3, v5

    goto :goto_1

    .line 2614
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    const/4 v7, 0x0

    goto :goto_2
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 1171
    instance-of v1, p1, Lcom/oneplus/camera/ui/VerticalViewPager$SavedState;

    if-nez v1, :cond_0

    .line 1172
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1187
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 1176
    check-cast v0, Lcom/oneplus/camera/ui/VerticalViewPager$SavedState;

    .line 1177
    .local v0, "ss":Lcom/oneplus/camera/ui/VerticalViewPager$SavedState;
    invoke-virtual {v0}, Lcom/oneplus/camera/ui/VerticalViewPager$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1179
    iget-object v1, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v1, :cond_1

    .line 1180
    iget-object v1, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v2, v0, Lcom/oneplus/camera/ui/VerticalViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    iget-object v3, v0, Lcom/oneplus/camera/ui/VerticalViewPager$SavedState;->loader:Ljava/lang/ClassLoader;

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/view/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 1181
    iget v1, v0, Lcom/oneplus/camera/ui/VerticalViewPager$SavedState;->position:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lcom/oneplus/camera/ui/VerticalViewPager;->setCurrentItemInternal(IZZ)V

    goto :goto_0

    .line 1183
    :cond_1
    iget v1, v0, Lcom/oneplus/camera/ui/VerticalViewPager$SavedState;->position:I

    iput v1, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mRestoredCurItem:I

    .line 1184
    iget-object v1, v0, Lcom/oneplus/camera/ui/VerticalViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    iput-object v1, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 1185
    iget-object v1, v0, Lcom/oneplus/camera/ui/VerticalViewPager$SavedState;->loader:Ljava/lang/ClassLoader;

    iput-object v1, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 1160
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 1161
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/oneplus/camera/ui/VerticalViewPager$SavedState;

    invoke-direct {v0, v1}, Lcom/oneplus/camera/ui/VerticalViewPager$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1162
    .local v0, "ss":Lcom/oneplus/camera/ui/VerticalViewPager$SavedState;
    iget v2, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mCurItem:I

    iput v2, v0, Lcom/oneplus/camera/ui/VerticalViewPager$SavedState;->position:I

    .line 1163
    iget-object v2, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v2, :cond_0

    .line 1164
    iget-object v2, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v2}, Landroid/support/v4/view/PagerAdapter;->saveState()Landroid/os/Parcelable;

    move-result-object v2

    iput-object v2, v0, Lcom/oneplus/camera/ui/VerticalViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    .line 1166
    :cond_0
    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 1358
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 1361
    if-eq p2, p4, :cond_0

    .line 1362
    iget v0, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mPageMargin:I

    iget v1, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mPageMargin:I

    invoke-direct {p0, p2, p4, v0, v1}, Lcom/oneplus/camera/ui/VerticalViewPager;->recomputeScrollPosition(IIII)V

    .line 1364
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 28
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1827
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oneplus/camera/ui/VerticalViewPager;->mFakeDragging:Z

    move/from16 v24, v0

    if-eqz v24, :cond_0

    .line 1831
    const/16 v24, 0x1

    .line 1949
    :goto_0
    return v24

    .line 1834
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v24

    if-nez v24, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v24

    if-eqz v24, :cond_1

    .line 1837
    const/16 v24, 0x0

    goto :goto_0

    .line 1840
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/ui/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    move-object/from16 v24, v0

    if-eqz v24, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/ui/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v24

    if-nez v24, :cond_3

    .line 1842
    :cond_2
    const/16 v24, 0x0

    goto :goto_0

    .line 1845
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/ui/VerticalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v24, v0

    if-nez v24, :cond_4

    .line 1846
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oneplus/camera/ui/VerticalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1848
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/ui/VerticalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1850
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    .line 1851
    .local v5, "action":I
    const/4 v12, 0x0

    .line 1853
    .local v12, "needsInvalidate":Z
    and-int/lit16 v0, v5, 0xff

    move/from16 v24, v0

    packed-switch v24, :pswitch_data_0

    .line 1946
    :cond_5
    :goto_1
    :pswitch_0
    if-eqz v12, :cond_6

    .line 1947
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1949
    :cond_6
    const/16 v24, 0x1

    goto :goto_0

    .line 1855
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/ui/VerticalViewPager;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1856
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/oneplus/camera/ui/VerticalViewPager;->mPopulatePending:Z

    .line 1857
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/ui/VerticalViewPager;->populate()V

    .line 1860
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oneplus/camera/ui/VerticalViewPager;->mInitialMotionX:F

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oneplus/camera/ui/VerticalViewPager;->mLastMotionX:F

    .line 1861
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oneplus/camera/ui/VerticalViewPager;->mInitialMotionY:F

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oneplus/camera/ui/VerticalViewPager;->mLastMotionY:F

    .line 1862
    const/16 v24, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oneplus/camera/ui/VerticalViewPager;->mActivePointerId:I

    goto :goto_1

    .line 1866
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oneplus/camera/ui/VerticalViewPager;->mIsBeingDragged:Z

    move/from16 v24, v0

    if-nez v24, :cond_7

    .line 1867
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/camera/ui/VerticalViewPager;->mActivePointerId:I

    move/from16 v24, v0

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v16

    .line 1868
    .local v16, "pointerIndex":I
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v22

    .line 1869
    .local v22, "y":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/camera/ui/VerticalViewPager;->mLastMotionY:F

    move/from16 v24, v0

    sub-float v24, v22, v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F

    move-result v23

    .line 1870
    .local v23, "yDiff":F
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v20

    .line 1871
    .local v20, "x":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/camera/ui/VerticalViewPager;->mLastMotionX:F

    move/from16 v24, v0

    sub-float v24, v20, v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F

    move-result v21

    .line 1874
    .local v21, "xDiff":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/camera/ui/VerticalViewPager;->mTouchSlop:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    cmpl-float v24, v23, v24

    if-lez v24, :cond_7

    cmpl-float v24, v23, v21

    if-lez v24, :cond_7

    .line 1876
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/oneplus/camera/ui/VerticalViewPager;->mIsBeingDragged:Z

    .line 1877
    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/oneplus/camera/ui/VerticalViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    .line 1878
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/camera/ui/VerticalViewPager;->mInitialMotionY:F

    move/from16 v24, v0

    sub-float v24, v22, v24

    const/16 v25, 0x0

    cmpl-float v24, v24, v25

    if-lez v24, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/camera/ui/VerticalViewPager;->mInitialMotionY:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/camera/ui/VerticalViewPager;->mTouchSlop:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    add-float v24, v24, v25

    :goto_2
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oneplus/camera/ui/VerticalViewPager;->mLastMotionY:F

    .line 1880
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oneplus/camera/ui/VerticalViewPager;->mLastMotionX:F

    .line 1881
    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/oneplus/camera/ui/VerticalViewPager;->setScrollState(I)V

    .line 1882
    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/oneplus/camera/ui/VerticalViewPager;->setScrollingCacheEnabled(Z)V

    .line 1885
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/ui/VerticalViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v15

    .line 1886
    .local v15, "parent":Landroid/view/ViewParent;
    if-eqz v15, :cond_7

    .line 1887
    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-interface {v15, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1892
    .end local v15    # "parent":Landroid/view/ViewParent;
    .end local v16    # "pointerIndex":I
    .end local v20    # "x":F
    .end local v21    # "xDiff":F
    .end local v22    # "y":F
    .end local v23    # "yDiff":F
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oneplus/camera/ui/VerticalViewPager;->mIsBeingDragged:Z

    move/from16 v24, v0

    if-eqz v24, :cond_5

    .line 1894
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/camera/ui/VerticalViewPager;->mActivePointerId:I

    move/from16 v24, v0

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v6

    .line 1896
    .local v6, "activePointerIndex":I
    move-object/from16 v0, p1

    invoke-static {v0, v6}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v22

    .line 1897
    .restart local v22    # "y":F
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/oneplus/camera/ui/VerticalViewPager;->performDrag(F)Z

    move-result v24

    or-int v12, v12, v24

    .line 1898
    goto/16 :goto_1

    .line 1878
    .end local v6    # "activePointerIndex":I
    .restart local v16    # "pointerIndex":I
    .restart local v20    # "x":F
    .restart local v21    # "xDiff":F
    .restart local v23    # "yDiff":F
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/camera/ui/VerticalViewPager;->mInitialMotionY:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/camera/ui/VerticalViewPager;->mTouchSlop:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    sub-float v24, v24, v25

    goto :goto_2

    .line 1901
    .end local v16    # "pointerIndex":I
    .end local v20    # "x":F
    .end local v21    # "xDiff":F
    .end local v22    # "y":F
    .end local v23    # "yDiff":F
    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oneplus/camera/ui/VerticalViewPager;->mIsBeingDragged:Z

    move/from16 v24, v0

    if-eqz v24, :cond_5

    .line 1902
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/ui/VerticalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    .line 1903
    .local v19, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v24, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/camera/ui/VerticalViewPager;->mMaximumVelocity:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, v19

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1904
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/camera/ui/VerticalViewPager;->mActivePointerId:I

    move/from16 v24, v0

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-static {v0, v1}, Landroid/support/v4/view/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F

    move-result v24

    move/from16 v0, v24

    float-to-int v11, v0

    .line 1906
    .local v11, "initialVelocity":I
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/oneplus/camera/ui/VerticalViewPager;->mPopulatePending:Z

    .line 1907
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/camera/ui/VerticalViewPager;->getClientHeight()I

    move-result v8

    .line 1908
    .local v8, "height":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/ui/VerticalViewPager;->getScrollY()I

    move-result v17

    .line 1909
    .local v17, "scrollY":I
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/camera/ui/VerticalViewPager;->infoForCurrentScrollPosition()Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;

    move-result-object v9

    .line 1910
    .local v9, "ii":Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;
    iget v7, v9, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;->position:I

    .line 1911
    .local v7, "currentPage":I
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v24, v0

    int-to-float v0, v8

    move/from16 v25, v0

    div-float v24, v24, v25

    iget v0, v9, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;->offset:F

    move/from16 v25, v0

    sub-float v24, v24, v25

    iget v0, v9, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;->heightFactor:F

    move/from16 v25, v0

    div-float v14, v24, v25

    .line 1912
    .local v14, "pageOffset":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/camera/ui/VerticalViewPager;->mActivePointerId:I

    move/from16 v24, v0

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v6

    .line 1914
    .restart local v6    # "activePointerIndex":I
    move-object/from16 v0, p1

    invoke-static {v0, v6}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v22

    .line 1915
    .restart local v22    # "y":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/camera/ui/VerticalViewPager;->mInitialMotionY:F

    move/from16 v24, v0

    sub-float v24, v22, v24

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v18, v0

    .line 1916
    .local v18, "totalDelta":I
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v7, v14, v11, v1}, Lcom/oneplus/camera/ui/VerticalViewPager;->determineTargetPage(IFII)I

    move-result v13

    .line 1918
    .local v13, "nextPage":I
    const/16 v24, 0x1

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v13, v1, v2, v11}, Lcom/oneplus/camera/ui/VerticalViewPager;->setCurrentItemInternal(IZZI)V

    .line 1920
    const/16 v24, -0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oneplus/camera/ui/VerticalViewPager;->mActivePointerId:I

    .line 1921
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/camera/ui/VerticalViewPager;->endDrag()V

    .line 1922
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/ui/VerticalViewPager;->mTopEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/ui/VerticalViewPager;->mBottomEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v25

    or-int v12, v24, v25

    .line 1923
    goto/16 :goto_1

    .line 1926
    .end local v6    # "activePointerIndex":I
    .end local v7    # "currentPage":I
    .end local v8    # "height":I
    .end local v9    # "ii":Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;
    .end local v11    # "initialVelocity":I
    .end local v13    # "nextPage":I
    .end local v14    # "pageOffset":F
    .end local v17    # "scrollY":I
    .end local v18    # "totalDelta":I
    .end local v19    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v22    # "y":F
    :pswitch_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oneplus/camera/ui/VerticalViewPager;->mIsBeingDragged:Z

    move/from16 v24, v0

    if-eqz v24, :cond_5

    .line 1927
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/camera/ui/VerticalViewPager;->mCurItem:I

    move/from16 v24, v0

    const/16 v25, 0x1

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/camera/ui/VerticalViewPager;->scrollToItem(IZIZ)V

    .line 1928
    const/16 v24, -0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oneplus/camera/ui/VerticalViewPager;->mActivePointerId:I

    .line 1929
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/camera/ui/VerticalViewPager;->endDrag()V

    .line 1930
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/ui/VerticalViewPager;->mTopEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/ui/VerticalViewPager;->mBottomEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v25

    or-int v12, v24, v25

    goto/16 :goto_1

    .line 1934
    :pswitch_5
    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v10

    .line 1935
    .local v10, "index":I
    move-object/from16 v0, p1

    invoke-static {v0, v10}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v22

    .line 1936
    .restart local v22    # "y":F
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oneplus/camera/ui/VerticalViewPager;->mLastMotionY:F

    .line 1937
    move-object/from16 v0, p1

    invoke-static {v0, v10}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oneplus/camera/ui/VerticalViewPager;->mActivePointerId:I

    goto/16 :goto_1

    .line 1941
    .end local v10    # "index":I
    .end local v22    # "y":F
    :pswitch_6
    invoke-direct/range {p0 .. p1}, Lcom/oneplus/camera/ui/VerticalViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 1942
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/camera/ui/VerticalViewPager;->mActivePointerId:I

    move/from16 v24, v0

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v24

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oneplus/camera/ui/VerticalViewPager;->mLastMotionY:F

    goto/16 :goto_1

    .line 1853
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method pageDown()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 2514
    iget-object v1, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mCurItem:I

    iget-object v2, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v2}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 2515
    iget v1, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mCurItem:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/camera/ui/VerticalViewPager;->setCurrentItem(IZ)V

    .line 2518
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method pageUp()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2506
    iget v1, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mCurItem:I

    if-lez v1, :cond_0

    .line 2507
    iget v1, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mCurItem:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/camera/ui/VerticalViewPager;->setCurrentItem(IZ)V

    .line 2510
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method populate()V
    .locals 1

    .prologue
    .line 812
    iget v0, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mCurItem:I

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/ui/VerticalViewPager;->populate(I)V

    .line 813
    return-void
.end method

.method populate(I)V
    .locals 30
    .param p1, "newCurrentItem"    # I

    .prologue
    .line 816
    const/16 v21, 0x0

    .line 817
    .local v21, "oldCurInfo":Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;
    const/16 v16, 0x2

    .line 818
    .local v16, "focusDirection":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/camera/ui/VerticalViewPager;->mCurItem:I

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, p1

    if-eq v0, v1, :cond_0

    .line 819
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/camera/ui/VerticalViewPager;->mCurItem:I

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, p1

    if-ge v0, v1, :cond_2

    const/16 v16, 0x82

    .line 820
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/camera/ui/VerticalViewPager;->mCurItem:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/ui/VerticalViewPager;->infoForPosition(I)Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;

    move-result-object v21

    .line 821
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oneplus/camera/ui/VerticalViewPager;->mCurItem:I

    .line 824
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/ui/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    move-object/from16 v27, v0

    if-nez v27, :cond_3

    .line 825
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/camera/ui/VerticalViewPager;->sortChildDrawingOrder()V

    .line 1001
    :cond_1
    :goto_1
    return-void

    .line 819
    :cond_2
    const/16 v16, 0x21

    goto :goto_0

    .line 833
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oneplus/camera/ui/VerticalViewPager;->mPopulatePending:Z

    move/from16 v27, v0

    if-eqz v27, :cond_4

    .line 835
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/camera/ui/VerticalViewPager;->sortChildDrawingOrder()V

    goto :goto_1

    .line 842
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/ui/VerticalViewPager;->getWindowToken()Landroid/os/IBinder;

    move-result-object v27

    if-eqz v27, :cond_1

    .line 846
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/ui/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 848
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/camera/ui/VerticalViewPager;->mOffscreenPageLimit:I

    move/from16 v22, v0

    .line 849
    .local v22, "pageLimit":I
    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/camera/ui/VerticalViewPager;->mCurItem:I

    move/from16 v28, v0

    sub-int v28, v28, v22

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->max(II)I

    move-result v25

    .line 850
    .local v25, "startPos":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/ui/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v4

    .line 851
    .local v4, "N":I
    add-int/lit8 v27, v4, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/camera/ui/VerticalViewPager;->mCurItem:I

    move/from16 v28, v0

    add-int v28, v28, v22

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 853
    .local v13, "endPos":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/camera/ui/VerticalViewPager;->mExpectedAdapterCount:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-eq v4, v0, :cond_5

    .line 856
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/ui/VerticalViewPager;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/ui/VerticalViewPager;->getId()I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v24

    .line 860
    .local v24, "resName":Ljava/lang/String;
    :goto_2
    new-instance v27, Ljava/lang/IllegalStateException;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "The application\'s PagerAdapter changed the adapter\'s contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/camera/ui/VerticalViewPager;->mExpectedAdapterCount:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", found: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " Pager id: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " Pager class: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " Problematic adapter: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/ui/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v27

    .line 857
    .end local v24    # "resName":Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 858
    .local v12, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/ui/VerticalViewPager;->getId()I

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v24

    .restart local v24    # "resName":Ljava/lang/String;
    goto :goto_2

    .line 869
    .end local v12    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v24    # "resName":Ljava/lang/String;
    :cond_5
    const/4 v9, -0x1

    .line 870
    .local v9, "curIndex":I
    const/4 v10, 0x0

    .line 871
    .local v10, "curItem":Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;
    const/4 v9, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/ui/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    move/from16 v0, v27

    if-ge v9, v0, :cond_6

    .line 872
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/ui/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;

    .line 873
    .local v18, "ii":Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;
    move-object/from16 v0, v18

    iget v0, v0, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;->position:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/camera/ui/VerticalViewPager;->mCurItem:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-lt v0, v1, :cond_c

    .line 874
    move-object/from16 v0, v18

    iget v0, v0, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;->position:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/camera/ui/VerticalViewPager;->mCurItem:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_6

    move-object/from16 v10, v18

    .line 879
    .end local v18    # "ii":Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;
    :cond_6
    if-nez v10, :cond_7

    if-lez v4, :cond_7

    .line 880
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/camera/ui/VerticalViewPager;->mCurItem:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1, v9}, Lcom/oneplus/camera/ui/VerticalViewPager;->addNewItem(II)Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;

    move-result-object v10

    .line 886
    :cond_7
    if-eqz v10, :cond_a

    .line 887
    const/4 v15, 0x0

    .line 888
    .local v15, "extraHeightTop":F
    add-int/lit8 v19, v9, -0x1

    .line 889
    .local v19, "itemIndex":I
    if-ltz v19, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/ui/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;

    move-object/from16 v18, v27

    .line 890
    .restart local v18    # "ii":Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/camera/ui/VerticalViewPager;->getClientHeight()I

    move-result v8

    .line 891
    .local v8, "clientHeight":I
    if-gtz v8, :cond_e

    const/16 v26, 0x0

    .line 893
    .local v26, "topHeightNeeded":F
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/camera/ui/VerticalViewPager;->mCurItem:I

    move/from16 v27, v0

    add-int/lit8 v23, v27, -0x1

    .local v23, "pos":I
    :goto_6
    if-ltz v23, :cond_8

    .line 894
    cmpl-float v27, v15, v26

    if-ltz v27, :cond_12

    move/from16 v0, v23

    move/from16 v1, v25

    if-ge v0, v1, :cond_12

    .line 895
    if-nez v18, :cond_f

    .line 921
    :cond_8
    iget v14, v10, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;->heightFactor:F

    .line 922
    .local v14, "extraHeightBottom":F
    add-int/lit8 v19, v9, 0x1

    .line 923
    const/high16 v27, 0x40000000    # 2.0f

    cmpg-float v27, v14, v27

    if-gez v27, :cond_9

    .line 924
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/ui/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    move/from16 v0, v19

    move/from16 v1, v27

    if-ge v0, v1, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/ui/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;

    move-object/from16 v18, v27

    .line 925
    :goto_7
    if-gtz v8, :cond_17

    const/4 v5, 0x0

    .line 927
    .local v5, "bottomHeightNeeded":F
    :goto_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/camera/ui/VerticalViewPager;->mCurItem:I

    move/from16 v27, v0

    add-int/lit8 v23, v27, 0x1

    :goto_9
    move/from16 v0, v23

    if-ge v0, v4, :cond_9

    .line 928
    cmpl-float v27, v14, v5

    if-ltz v27, :cond_1b

    move/from16 v0, v23

    if-le v0, v13, :cond_1b

    .line 929
    if-nez v18, :cond_18

    .line 954
    .end local v5    # "bottomHeightNeeded":F
    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v10, v9, v1}, Lcom/oneplus/camera/ui/VerticalViewPager;->calculatePageOffsets(Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;ILcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;)V

    .line 964
    .end local v8    # "clientHeight":I
    .end local v14    # "extraHeightBottom":F
    .end local v15    # "extraHeightTop":F
    .end local v18    # "ii":Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;
    .end local v19    # "itemIndex":I
    .end local v23    # "pos":I
    .end local v26    # "topHeightNeeded":F
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/ui/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/camera/ui/VerticalViewPager;->mCurItem:I

    move/from16 v29, v0

    if-eqz v10, :cond_1f

    iget-object v0, v10, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;->object:Ljava/lang/Object;

    move-object/from16 v27, v0

    :goto_a
    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move/from16 v2, v29

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/view/PagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 966
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/ui/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 970
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/ui/VerticalViewPager;->getChildCount()I

    move-result v7

    .line 971
    .local v7, "childCount":I
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_b
    move/from16 v0, v17

    if-ge v0, v7, :cond_20

    .line 972
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/ui/VerticalViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 973
    .local v6, "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    check-cast v20, Lcom/oneplus/camera/ui/VerticalViewPager$LayoutParams;

    .line 974
    .local v20, "lp":Lcom/oneplus/camera/ui/VerticalViewPager$LayoutParams;
    move/from16 v0, v17

    move-object/from16 v1, v20

    iput v0, v1, Lcom/oneplus/camera/ui/VerticalViewPager$LayoutParams;->childIndex:I

    .line 975
    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/oneplus/camera/ui/VerticalViewPager$LayoutParams;->isDecor:Z

    move/from16 v27, v0

    if-nez v27, :cond_b

    move-object/from16 v0, v20

    iget v0, v0, Lcom/oneplus/camera/ui/VerticalViewPager$LayoutParams;->heightFactor:F

    move/from16 v27, v0

    const/16 v28, 0x0

    cmpl-float v27, v27, v28

    if-nez v27, :cond_b

    .line 977
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/oneplus/camera/ui/VerticalViewPager;->infoForChild(Landroid/view/View;)Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;

    move-result-object v18

    .line 978
    .restart local v18    # "ii":Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;
    if-eqz v18, :cond_b

    .line 979
    move-object/from16 v0, v18

    iget v0, v0, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;->heightFactor:F

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, v20

    iput v0, v1, Lcom/oneplus/camera/ui/VerticalViewPager$LayoutParams;->heightFactor:F

    .line 980
    move-object/from16 v0, v18

    iget v0, v0, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;->position:I

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, v20

    iput v0, v1, Lcom/oneplus/camera/ui/VerticalViewPager$LayoutParams;->position:I

    .line 971
    .end local v18    # "ii":Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;
    :cond_b
    add-int/lit8 v17, v17, 0x1

    goto :goto_b

    .line 871
    .end local v6    # "child":Landroid/view/View;
    .end local v7    # "childCount":I
    .end local v17    # "i":I
    .end local v20    # "lp":Lcom/oneplus/camera/ui/VerticalViewPager$LayoutParams;
    .restart local v18    # "ii":Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;
    :cond_c
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_3

    .line 889
    .end local v18    # "ii":Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;
    .restart local v15    # "extraHeightTop":F
    .restart local v19    # "itemIndex":I
    :cond_d
    const/16 v18, 0x0

    goto/16 :goto_4

    .line 891
    .restart local v8    # "clientHeight":I
    .restart local v18    # "ii":Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;
    :cond_e
    const/high16 v27, 0x40000000    # 2.0f

    iget v0, v10, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;->heightFactor:F

    move/from16 v28, v0

    sub-float v27, v27, v28

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/ui/VerticalViewPager;->getPaddingLeft()I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    int-to-float v0, v8

    move/from16 v29, v0

    div-float v28, v28, v29

    add-float v26, v27, v28

    goto/16 :goto_5

    .line 898
    .restart local v23    # "pos":I
    .restart local v26    # "topHeightNeeded":F
    :cond_f
    move-object/from16 v0, v18

    iget v0, v0, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;->position:I

    move/from16 v27, v0

    move/from16 v0, v23

    move/from16 v1, v27

    if-ne v0, v1, :cond_10

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;->scrolling:Z

    move/from16 v27, v0

    if-nez v27, :cond_10

    .line 899
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/ui/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 900
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/ui/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    move-object/from16 v27, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;->object:Ljava/lang/Object;

    move-object/from16 v28, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move/from16 v2, v23

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 905
    add-int/lit8 v19, v19, -0x1

    .line 906
    add-int/lit8 v9, v9, -0x1

    .line 907
    if-ltz v19, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/ui/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;

    move-object/from16 v18, v27

    .line 893
    :cond_10
    :goto_c
    add-int/lit8 v23, v23, -0x1

    goto/16 :goto_6

    .line 907
    :cond_11
    const/16 v18, 0x0

    goto :goto_c

    .line 909
    :cond_12
    if-eqz v18, :cond_14

    move-object/from16 v0, v18

    iget v0, v0, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;->position:I

    move/from16 v27, v0

    move/from16 v0, v23

    move/from16 v1, v27

    if-ne v0, v1, :cond_14

    .line 910
    move-object/from16 v0, v18

    iget v0, v0, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;->heightFactor:F

    move/from16 v27, v0

    add-float v15, v15, v27

    .line 911
    add-int/lit8 v19, v19, -0x1

    .line 912
    if-ltz v19, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/ui/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;

    move-object/from16 v18, v27

    :goto_d
    goto :goto_c

    :cond_13
    const/16 v18, 0x0

    goto :goto_d

    .line 914
    :cond_14
    add-int/lit8 v27, v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/ui/VerticalViewPager;->addNewItem(II)Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;

    move-result-object v18

    .line 915
    move-object/from16 v0, v18

    iget v0, v0, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;->heightFactor:F

    move/from16 v27, v0

    add-float v15, v15, v27

    .line 916
    add-int/lit8 v9, v9, 0x1

    .line 917
    if-ltz v19, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/ui/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;

    move-object/from16 v18, v27

    :goto_e
    goto :goto_c

    :cond_15
    const/16 v18, 0x0

    goto :goto_e

    .line 924
    .restart local v14    # "extraHeightBottom":F
    :cond_16
    const/16 v18, 0x0

    goto/16 :goto_7

    .line 925
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/ui/VerticalViewPager;->getPaddingRight()I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    int-to-float v0, v8

    move/from16 v28, v0

    div-float v27, v27, v28

    const/high16 v28, 0x40000000    # 2.0f

    add-float v5, v27, v28

    goto/16 :goto_8

    .line 932
    .restart local v5    # "bottomHeightNeeded":F
    :cond_18
    move-object/from16 v0, v18

    iget v0, v0, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;->position:I

    move/from16 v27, v0

    move/from16 v0, v23

    move/from16 v1, v27

    if-ne v0, v1, :cond_19

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;->scrolling:Z

    move/from16 v27, v0

    if-nez v27, :cond_19

    .line 933
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/ui/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 934
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/ui/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    move-object/from16 v27, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;->object:Ljava/lang/Object;

    move-object/from16 v28, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move/from16 v2, v23

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 939
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/ui/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    move/from16 v0, v19

    move/from16 v1, v27

    if-ge v0, v1, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/ui/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;

    move-object/from16 v18, v27

    .line 927
    :cond_19
    :goto_f
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_9

    .line 939
    :cond_1a
    const/16 v18, 0x0

    goto :goto_f

    .line 941
    :cond_1b
    if-eqz v18, :cond_1d

    move-object/from16 v0, v18

    iget v0, v0, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;->position:I

    move/from16 v27, v0

    move/from16 v0, v23

    move/from16 v1, v27

    if-ne v0, v1, :cond_1d

    .line 942
    move-object/from16 v0, v18

    iget v0, v0, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;->heightFactor:F

    move/from16 v27, v0

    add-float v14, v14, v27

    .line 943
    add-int/lit8 v19, v19, 0x1

    .line 944
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/ui/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    move/from16 v0, v19

    move/from16 v1, v27

    if-ge v0, v1, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/ui/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;

    move-object/from16 v18, v27

    :goto_10
    goto :goto_f

    :cond_1c
    const/16 v18, 0x0

    goto :goto_10

    .line 946
    :cond_1d
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/ui/VerticalViewPager;->addNewItem(II)Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;

    move-result-object v18

    .line 947
    add-int/lit8 v19, v19, 0x1

    .line 948
    move-object/from16 v0, v18

    iget v0, v0, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;->heightFactor:F

    move/from16 v27, v0

    add-float v14, v14, v27

    .line 949
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/ui/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    move/from16 v0, v19

    move/from16 v1, v27

    if-ge v0, v1, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/ui/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;

    move-object/from16 v18, v27

    :goto_11
    goto :goto_f

    :cond_1e
    const/16 v18, 0x0

    goto :goto_11

    .line 964
    .end local v5    # "bottomHeightNeeded":F
    .end local v8    # "clientHeight":I
    .end local v14    # "extraHeightBottom":F
    .end local v15    # "extraHeightTop":F
    .end local v18    # "ii":Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;
    .end local v19    # "itemIndex":I
    .end local v23    # "pos":I
    .end local v26    # "topHeightNeeded":F
    :cond_1f
    const/16 v27, 0x0

    goto/16 :goto_a

    .line 984
    .restart local v7    # "childCount":I
    .restart local v17    # "i":I
    :cond_20
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/camera/ui/VerticalViewPager;->sortChildDrawingOrder()V

    .line 986
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/ui/VerticalViewPager;->hasFocus()Z

    move-result v27

    if-eqz v27, :cond_1

    .line 987
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/ui/VerticalViewPager;->findFocus()Landroid/view/View;

    move-result-object v11

    .line 988
    .local v11, "currentFocused":Landroid/view/View;
    if-eqz v11, :cond_23

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/oneplus/camera/ui/VerticalViewPager;->infoForAnyChild(Landroid/view/View;)Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;

    move-result-object v18

    .line 989
    .restart local v18    # "ii":Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;
    :goto_12
    if-eqz v18, :cond_21

    move-object/from16 v0, v18

    iget v0, v0, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;->position:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/camera/ui/VerticalViewPager;->mCurItem:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_1

    .line 990
    :cond_21
    const/16 v17, 0x0

    :goto_13
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/ui/VerticalViewPager;->getChildCount()I

    move-result v27

    move/from16 v0, v17

    move/from16 v1, v27

    if-ge v0, v1, :cond_1

    .line 991
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/ui/VerticalViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 992
    .restart local v6    # "child":Landroid/view/View;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/oneplus/camera/ui/VerticalViewPager;->infoForChild(Landroid/view/View;)Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;

    move-result-object v18

    .line 993
    if-eqz v18, :cond_22

    move-object/from16 v0, v18

    iget v0, v0, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;->position:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/camera/ui/VerticalViewPager;->mCurItem:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_22

    .line 994
    move/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/view/View;->requestFocus(I)Z

    move-result v27

    if-nez v27, :cond_1

    .line 990
    :cond_22
    add-int/lit8 v17, v17, 0x1

    goto :goto_13

    .line 988
    .end local v6    # "child":Landroid/view/View;
    .end local v18    # "ii":Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;
    :cond_23
    const/16 v18, 0x0

    goto :goto_12
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1217
    iget-boolean v0, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mInLayout:Z

    if-eqz v0, :cond_0

    .line 1218
    invoke-virtual {p0, p1}, Lcom/oneplus/camera/ui/VerticalViewPager;->removeViewInLayout(Landroid/view/View;)V

    .line 1222
    :goto_0
    return-void

    .line 1220
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setAdapter(Landroid/support/v4/view/PagerAdapter;)V
    .locals 10
    .param p1, "adapter"    # Landroid/support/v4/view/PagerAdapter;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 301
    iget-object v4, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v4, :cond_1

    .line 302
    iget-object v4, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v5, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mObserver:Lcom/oneplus/camera/ui/VerticalViewPager$PagerObserver;

    invoke-virtual {v4, v5}, Landroid/support/v4/view/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 303
    iget-object v4, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v4, p0}, Landroid/support/v4/view/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 304
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 305
    iget-object v4, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;

    .line 306
    .local v1, "ii":Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;
    iget-object v4, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget v5, v1, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;->position:I

    iget-object v6, v1, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v4, p0, v5, v6}, Landroid/support/v4/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 304
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 308
    .end local v1    # "ii":Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;
    :cond_0
    iget-object v4, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v4, p0}, Landroid/support/v4/view/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 309
    iget-object v4, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 310
    invoke-direct {p0}, Lcom/oneplus/camera/ui/VerticalViewPager;->removeNonDecorViews()V

    .line 311
    iput v7, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mCurItem:I

    .line 312
    invoke-virtual {p0, v7, v7}, Lcom/oneplus/camera/ui/VerticalViewPager;->scrollTo(II)V

    .line 315
    .end local v0    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    .line 316
    .local v2, "oldAdapter":Landroid/support/v4/view/PagerAdapter;
    iput-object p1, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    .line 317
    iput v7, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mExpectedAdapterCount:I

    .line 319
    iget-object v4, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v4, :cond_3

    .line 320
    iget-object v4, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mObserver:Lcom/oneplus/camera/ui/VerticalViewPager$PagerObserver;

    if-nez v4, :cond_2

    .line 321
    new-instance v4, Lcom/oneplus/camera/ui/VerticalViewPager$PagerObserver;

    invoke-direct {v4, p0, v8}, Lcom/oneplus/camera/ui/VerticalViewPager$PagerObserver;-><init>(Lcom/oneplus/camera/ui/VerticalViewPager;Lcom/oneplus/camera/ui/VerticalViewPager$1;)V

    iput-object v4, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mObserver:Lcom/oneplus/camera/ui/VerticalViewPager$PagerObserver;

    .line 323
    :cond_2
    iget-object v4, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v5, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mObserver:Lcom/oneplus/camera/ui/VerticalViewPager$PagerObserver;

    invoke-virtual {v4, v5}, Landroid/support/v4/view/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 324
    iput-boolean v7, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mPopulatePending:Z

    .line 325
    iget-boolean v3, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mFirstLayout:Z

    .line 326
    .local v3, "wasFirstLayout":Z
    iput-boolean v9, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mFirstLayout:Z

    .line 327
    iget-object v4, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v4}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v4

    iput v4, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mExpectedAdapterCount:I

    .line 328
    iget v4, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mRestoredCurItem:I

    if-ltz v4, :cond_5

    .line 329
    iget-object v4, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v5, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    iget-object v6, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/view/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 330
    iget v4, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mRestoredCurItem:I

    invoke-virtual {p0, v4, v7, v9}, Lcom/oneplus/camera/ui/VerticalViewPager;->setCurrentItemInternal(IZZ)V

    .line 331
    const/4 v4, -0x1

    iput v4, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mRestoredCurItem:I

    .line 332
    iput-object v8, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 333
    iput-object v8, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    .line 341
    .end local v3    # "wasFirstLayout":Z
    :cond_3
    :goto_1
    iget-object v4, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mAdapterChangeListener:Lcom/oneplus/camera/ui/VerticalViewPager$OnAdapterChangeListener;

    if-eqz v4, :cond_4

    if-eq v2, p1, :cond_4

    .line 342
    iget-object v4, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mAdapterChangeListener:Lcom/oneplus/camera/ui/VerticalViewPager$OnAdapterChangeListener;

    invoke-interface {v4, v2, p1}, Lcom/oneplus/camera/ui/VerticalViewPager$OnAdapterChangeListener;->onAdapterChanged(Landroid/support/v4/view/PagerAdapter;Landroid/support/v4/view/PagerAdapter;)V

    .line 344
    :cond_4
    return-void

    .line 334
    .restart local v3    # "wasFirstLayout":Z
    :cond_5
    if-nez v3, :cond_6

    .line 335
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/VerticalViewPager;->populate()V

    goto :goto_1

    .line 337
    :cond_6
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/VerticalViewPager;->requestLayout()V

    goto :goto_1
.end method

.method setChildrenDrawingOrderEnabledCompat(Z)V
    .locals 6
    .param p1, "enable"    # Z

    .prologue
    .line 521
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x7

    if-lt v1, v2, :cond_1

    .line 522
    iget-object v1, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mSetChildrenDrawingOrderEnabled:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    .line 524
    :try_start_0
    const-class v1, Landroid/view/ViewGroup;

    const-string v2, "setChildrenDrawingOrderEnabled"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mSetChildrenDrawingOrderEnabled:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 531
    :cond_0
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mSetChildrenDrawingOrderEnabled:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 536
    :cond_1
    :goto_1
    return-void

    .line 526
    :catch_0
    move-exception v0

    .line 527
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    sget-object v1, Lcom/oneplus/camera/ui/VerticalViewPager;->TAG:Ljava/lang/String;

    const-string v2, "Can\'t find setChildrenDrawingOrderEnabled"

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 532
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v0

    .line 533
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/oneplus/camera/ui/VerticalViewPager;->TAG:Ljava/lang/String;

    const-string v2, "Error changing children drawing order"

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public setCurrentItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    const/4 v1, 0x0

    .line 387
    iput-boolean v1, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mPopulatePending:Z

    .line 388
    iget-boolean v0, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mFirstLayout:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, v0, v1}, Lcom/oneplus/camera/ui/VerticalViewPager;->setCurrentItemInternal(IZZ)V

    .line 389
    return-void

    :cond_0
    move v0, v1

    .line 388
    goto :goto_0
.end method

.method public setCurrentItem(IZ)V
    .locals 1
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z

    .prologue
    const/4 v0, 0x0

    .line 398
    iput-boolean v0, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mPopulatePending:Z

    .line 399
    invoke-virtual {p0, p1, p2, v0}, Lcom/oneplus/camera/ui/VerticalViewPager;->setCurrentItemInternal(IZZ)V

    .line 400
    return-void
.end method

.method setCurrentItemInternal(IZZ)V
    .locals 1
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z
    .param p3, "always"    # Z

    .prologue
    .line 407
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/oneplus/camera/ui/VerticalViewPager;->setCurrentItemInternal(IZZI)V

    .line 408
    return-void
.end method

.method setCurrentItemInternal(IZZI)V
    .locals 5
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z
    .param p3, "always"    # Z
    .param p4, "velocity"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v4, 0x0

    .line 411
    iget-object v3, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v3}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v3

    if-gtz v3, :cond_1

    .line 412
    :cond_0
    invoke-direct {p0, v4}, Lcom/oneplus/camera/ui/VerticalViewPager;->setScrollingCacheEnabled(Z)V

    .line 451
    :goto_0
    return-void

    .line 415
    :cond_1
    if-nez p3, :cond_2

    iget v3, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mCurItem:I

    if-ne v3, p1, :cond_2

    iget-object v3, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_2

    .line 416
    invoke-direct {p0, v4}, Lcom/oneplus/camera/ui/VerticalViewPager;->setScrollingCacheEnabled(Z)V

    goto :goto_0

    .line 420
    :cond_2
    if-gez p1, :cond_5

    .line 421
    const/4 p1, 0x0

    .line 425
    :cond_3
    :goto_1
    iget v2, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mOffscreenPageLimit:I

    .line 426
    .local v2, "pageLimit":I
    iget v3, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mCurItem:I

    add-int/2addr v3, v2

    if-gt p1, v3, :cond_4

    iget v3, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mCurItem:I

    sub-int/2addr v3, v2

    if-ge p1, v3, :cond_6

    .line 430
    :cond_4
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v3, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_6

    .line 431
    iget-object v3, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;

    iput-boolean v0, v3, Lcom/oneplus/camera/ui/VerticalViewPager$ItemInfo;->scrolling:Z

    .line 430
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 422
    .end local v1    # "i":I
    .end local v2    # "pageLimit":I
    :cond_5
    iget-object v3, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v3}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v3

    if-lt p1, v3, :cond_3

    .line 423
    iget-object v3, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v3}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v3

    add-int/lit8 p1, v3, -0x1

    goto :goto_1

    .line 434
    .restart local v2    # "pageLimit":I
    :cond_6
    iget v3, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mCurItem:I

    if-eq v3, p1, :cond_9

    .line 436
    .local v0, "dispatchSelected":Z
    :goto_3
    iget-boolean v3, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mFirstLayout:Z

    if-eqz v3, :cond_a

    .line 439
    iput p1, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mCurItem:I

    .line 440
    if-eqz v0, :cond_7

    iget-object v3, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v3, :cond_7

    .line 441
    iget-object v3, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v3, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 443
    :cond_7
    if-eqz v0, :cond_8

    iget-object v3, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v3, :cond_8

    .line 444
    iget-object v3, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v3, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 446
    :cond_8
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/VerticalViewPager;->requestLayout()V

    goto :goto_0

    .end local v0    # "dispatchSelected":Z
    :cond_9
    move v0, v4

    .line 434
    goto :goto_3

    .line 448
    .restart local v0    # "dispatchSelected":Z
    :cond_a
    invoke-virtual {p0, p1}, Lcom/oneplus/camera/ui/VerticalViewPager;->populate(I)V

    .line 449
    invoke-direct {p0, p1, p2, p4, v0}, Lcom/oneplus/camera/ui/VerticalViewPager;->scrollToItem(IZIZ)V

    goto :goto_0
.end method

.method setInternalPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    .locals 1
    .param p1, "listener"    # Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .prologue
    .line 552
    iget-object v0, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 553
    .local v0, "oldListener":Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    iput-object p1, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 554
    return-object v0
.end method

.method public setOffscreenPageLimit(I)V
    .locals 4
    .param p1, "limit"    # I

    .prologue
    const/4 v3, 0x1

    .line 586
    if-ge p1, v3, :cond_0

    .line 587
    sget-object v0, Lcom/oneplus/camera/ui/VerticalViewPager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested offscreen page limit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " too small; defaulting to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    const/4 p1, 0x1

    .line 591
    :cond_0
    iget v0, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mOffscreenPageLimit:I

    if-eq p1, v0, :cond_1

    .line 592
    iput p1, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mOffscreenPageLimit:I

    .line 593
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/VerticalViewPager;->populate()V

    .line 595
    :cond_1
    return-void
.end method

.method setOnAdapterChangeListener(Lcom/oneplus/camera/ui/VerticalViewPager$OnAdapterChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/oneplus/camera/ui/VerticalViewPager$OnAdapterChangeListener;

    .prologue
    .line 367
    iput-object p1, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mAdapterChangeListener:Lcom/oneplus/camera/ui/VerticalViewPager$OnAdapterChangeListener;

    .line 368
    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .prologue
    .line 490
    iput-object p1, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 491
    return-void
.end method

.method public setPageMargin(I)V
    .locals 2
    .param p1, "marginPixels"    # I

    .prologue
    .line 606
    iget v1, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mPageMargin:I

    .line 607
    .local v1, "oldMargin":I
    iput p1, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mPageMargin:I

    .line 609
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/VerticalViewPager;->getHeight()I

    move-result v0

    .line 610
    .local v0, "height":I
    invoke-direct {p0, v0, v0, p1, v1}, Lcom/oneplus/camera/ui/VerticalViewPager;->recomputeScrollPosition(IIII)V

    .line 612
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/VerticalViewPager;->requestLayout()V

    .line 613
    return-void
.end method

.method public setPageMarginDrawable(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 642
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/VerticalViewPager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/ui/VerticalViewPager;->setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 643
    return-void
.end method

.method public setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 630
    iput-object p1, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    .line 631
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/VerticalViewPager;->refreshDrawableState()V

    .line 632
    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/oneplus/camera/ui/VerticalViewPager;->setWillNotDraw(Z)V

    .line 633
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/VerticalViewPager;->invalidate()V

    .line 634
    return-void

    .line 632
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPageTransformer(ZLandroid/support/v4/view/ViewPager$PageTransformer;)V
    .locals 6
    .param p1, "reverseDrawingOrder"    # Z
    .param p2, "transformer"    # Landroid/support/v4/view/ViewPager$PageTransformer;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 506
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_1

    .line 507
    if-eqz p2, :cond_2

    move v0, v2

    .line 508
    .local v0, "hasTransformer":Z
    :goto_0
    iget-object v4, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mPageTransformer:Landroid/support/v4/view/ViewPager$PageTransformer;

    if-eqz v4, :cond_3

    move v4, v2

    :goto_1
    if-eq v0, v4, :cond_4

    move v1, v2

    .line 509
    .local v1, "needsPopulate":Z
    :goto_2
    iput-object p2, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mPageTransformer:Landroid/support/v4/view/ViewPager$PageTransformer;

    .line 510
    invoke-virtual {p0, v0}, Lcom/oneplus/camera/ui/VerticalViewPager;->setChildrenDrawingOrderEnabledCompat(Z)V

    .line 511
    if-eqz v0, :cond_5

    .line 512
    if-eqz p1, :cond_0

    const/4 v2, 0x2

    :cond_0
    iput v2, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mDrawingOrder:I

    .line 516
    :goto_3
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/VerticalViewPager;->populate()V

    .line 518
    .end local v0    # "hasTransformer":Z
    .end local v1    # "needsPopulate":Z
    :cond_1
    return-void

    :cond_2
    move v0, v3

    .line 507
    goto :goto_0

    .restart local v0    # "hasTransformer":Z
    :cond_3
    move v4, v3

    .line 508
    goto :goto_1

    :cond_4
    move v1, v3

    goto :goto_2

    .line 514
    .restart local v1    # "needsPopulate":Z
    :cond_5
    iput v3, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mDrawingOrder:I

    goto :goto_3
.end method

.method public setSwipeable(Z)V
    .locals 0
    .param p1, "swipeable"    # Z

    .prologue
    .line 2796
    iput-boolean p1, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mSwipeable:Z

    .line 2797
    return-void
.end method

.method smoothScrollTo(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 676
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/oneplus/camera/ui/VerticalViewPager;->smoothScrollTo(III)V

    .line 677
    return-void
.end method

.method smoothScrollTo(III)V
    .locals 15
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "velocity"    # I

    .prologue
    .line 687
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/VerticalViewPager;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 689
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/oneplus/camera/ui/VerticalViewPager;->setScrollingCacheEnabled(Z)V

    .line 725
    :goto_0
    return-void

    .line 692
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/VerticalViewPager;->getScrollX()I

    move-result v2

    .line 693
    .local v2, "sx":I
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/VerticalViewPager;->getScrollY()I

    move-result v3

    .line 694
    .local v3, "sy":I
    sub-int v4, p1, v2

    .line 695
    .local v4, "dx":I
    sub-int v5, p2, v3

    .line 696
    .local v5, "dy":I
    if-nez v4, :cond_1

    if-nez v5, :cond_1

    .line 697
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/oneplus/camera/ui/VerticalViewPager;->completeScroll(Z)V

    .line 698
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/VerticalViewPager;->populate()V

    .line 699
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/oneplus/camera/ui/VerticalViewPager;->setScrollState(I)V

    goto :goto_0

    .line 703
    :cond_1
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/oneplus/camera/ui/VerticalViewPager;->setScrollingCacheEnabled(Z)V

    .line 704
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/oneplus/camera/ui/VerticalViewPager;->setScrollState(I)V

    .line 706
    invoke-direct {p0}, Lcom/oneplus/camera/ui/VerticalViewPager;->getClientHeight()I

    move-result v10

    .line 707
    .local v10, "height":I
    div-int/lit8 v9, v10, 0x2

    .line 708
    .local v9, "halfHeight":I
    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v14

    int-to-float v14, v14

    mul-float/2addr v13, v14

    int-to-float v14, v10

    div-float/2addr v13, v14

    invoke-static {v1, v13}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 709
    .local v8, "distanceRatio":F
    int-to-float v1, v9

    int-to-float v13, v9

    invoke-virtual {p0, v8}, Lcom/oneplus/camera/ui/VerticalViewPager;->distanceInfluenceForSnapDuration(F)F

    move-result v14

    mul-float/2addr v13, v14

    add-float v7, v1, v13

    .line 712
    .local v7, "distance":F
    const/4 v6, 0x0

    .line 713
    .local v6, "duration":I
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    .line 714
    if-lez p3, :cond_2

    .line 715
    const/high16 v1, 0x447a0000    # 1000.0f

    move/from16 v0, p3

    int-to-float v13, v0

    div-float v13, v7, v13

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    mul-float/2addr v1, v13

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    mul-int/lit8 v6, v1, 0x4

    .line 721
    :goto_1
    const/16 v1, 0x258

    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 723
    iget-object v1, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 724
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto :goto_0

    .line 717
    :cond_2
    int-to-float v1, v10

    iget-object v13, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget v14, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mCurItem:I

    invoke-virtual {v13, v14}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v13

    mul-float v12, v1, v13

    .line 718
    .local v12, "pageHeight":F
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    iget v13, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mPageMargin:I

    int-to-float v13, v13

    add-float/2addr v13, v12

    div-float v11, v1, v13

    .line 719
    .local v11, "pageDelta":F
    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v1, v11

    const/high16 v13, 0x42c80000    # 100.0f

    mul-float/2addr v1, v13

    float-to-int v6, v1

    goto :goto_1
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 647
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/ui/VerticalViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
