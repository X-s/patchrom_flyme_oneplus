.class public Landroid/support/v7/widget/RecyclerView;
.super Landroid/view/ViewGroup;
.source "RecyclerView.java"

# interfaces
.implements Landroid/support/v4/view/ScrollingView;
.implements Landroid/support/v4/view/NestedScrollingChild;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/RecyclerView$1;,
        Landroid/support/v7/widget/RecyclerView$2;,
        Landroid/support/v7/widget/RecyclerView$3;,
        Landroid/support/v7/widget/RecyclerView$4;,
        Landroid/support/v7/widget/RecyclerView$Adapter;,
        Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;,
        Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;,
        Landroid/support/v7/widget/RecyclerView$ChildDrawingOrderCallback;,
        Landroid/support/v7/widget/RecyclerView$ItemAnimator;,
        Landroid/support/v7/widget/RecyclerView$ItemAnimatorRestoreListener;,
        Landroid/support/v7/widget/RecyclerView$ItemDecoration;,
        Landroid/support/v7/widget/RecyclerView$LayoutManager;,
        Landroid/support/v7/widget/RecyclerView$LayoutParams;,
        Landroid/support/v7/widget/RecyclerView$OnChildAttachStateChangeListener;,
        Landroid/support/v7/widget/RecyclerView$OnFlingListener;,
        Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;,
        Landroid/support/v7/widget/RecyclerView$OnScrollListener;,
        Landroid/support/v7/widget/RecyclerView$RecycledViewPool;,
        Landroid/support/v7/widget/RecyclerView$Recycler;,
        Landroid/support/v7/widget/RecyclerView$RecyclerListener;,
        Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;,
        Landroid/support/v7/widget/RecyclerView$SavedState;,
        Landroid/support/v7/widget/RecyclerView$SimpleOnItemTouchListener;,
        Landroid/support/v7/widget/RecyclerView$SmoothScroller;,
        Landroid/support/v7/widget/RecyclerView$State;,
        Landroid/support/v7/widget/RecyclerView$ViewCacheExtension;,
        Landroid/support/v7/widget/RecyclerView$ViewFlinger;,
        Landroid/support/v7/widget/RecyclerView$ViewHolder;,
        Landroid/support/v7/widget/RecyclerView$ViewPrefetcher;
    }
.end annotation


# static fields
.field private static final ALLOW_PREFETCHING:Z

.field static final ALLOW_SIZE_IN_UNSPECIFIED_SPEC:Z

.field private static final CLIP_TO_PADDING_ATTR:[I

.field static final DEBUG:Z = false

.field static final DISPATCH_TEMP_DETACH:Z = false

.field static final FORCE_INVALIDATE_DISPLAY_LIST:Z

.field public static final HORIZONTAL:I = 0x0

.field private static final INVALID_POINTER:I = -0x1

.field public static final INVALID_TYPE:I = -0x1

.field private static final LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field static final MAX_SCROLL_DURATION:I = 0x7d0

.field private static final MIN_PREFETCH_TIME_NANOS:J

.field private static final MOVE_TOUCH_SLOP:D = 0.6

.field private static final NESTED_SCROLLING_ATTRS:[I

.field public static final NO_ID:J = -0x1L

.field public static final NO_POSITION:I = -0x1

.field private static final OPTS_INPUT:Z = true

.field static final POST_UPDATES_ON_ANIMATION:Z

.field public static final SCROLL_STATE_DRAGGING:I = 0x1

.field public static final SCROLL_STATE_IDLE:I = 0x0

.field public static final SCROLL_STATE_SETTLING:I = 0x2

.field static final TAG:Ljava/lang/String; = "RecyclerView"

.field public static final TOUCH_SLOP_DEFAULT:I = 0x0

.field public static final TOUCH_SLOP_PAGING:I = 0x1

.field static final TRACE_BIND_VIEW_TAG:Ljava/lang/String; = "RV OnBindView"

.field static final TRACE_CREATE_VIEW_TAG:Ljava/lang/String; = "RV CreateView"

.field private static final TRACE_HANDLE_ADAPTER_UPDATES_TAG:Ljava/lang/String; = "RV PartialInvalidate"

.field private static final TRACE_ON_DATA_SET_CHANGE_LAYOUT_TAG:Ljava/lang/String; = "RV FullInvalidate"

.field private static final TRACE_ON_LAYOUT_TAG:Ljava/lang/String; = "RV OnLayout"

.field private static final TRACE_PREFETCH_TAG:Ljava/lang/String; = "RV Prefetch"

.field static final TRACE_SCROLL_TAG:Ljava/lang/String; = "RV Scroll"

.field public static final VERTICAL:I = 0x1

.field static sFrameIntervalNanos:J

.field static final sQuinticInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field mAccessibilityDelegate:Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;

.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mActiveOnItemTouchListener:Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

.field mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

.field mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

.field mAdapterUpdateDuringMeasure:Z

.field private mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

.field private mChildDrawingOrderCallback:Landroid/support/v7/widget/RecyclerView$ChildDrawingOrderCallback;

.field mChildHelper:Landroid/support/v7/widget/ChildHelper;

.field mClipToPadding:Z

.field mDataSetHasChangedAfterLayout:Z

.field private mDispatchScrollCounter:I

.field private mEatRequestLayout:I

.field private mEatenAccessibilityChangeFlags:I

.field mFirstLayoutComplete:Z
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field mHasFixedSize:Z

.field private mIgnoreMotionEventTillDown:Z

.field private mInitialTouchX:I

.field private mInitialTouchY:I

.field mIsAttached:Z

.field private mIsFirstTouchMoveEvent:Z

.field mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

.field private mItemAnimatorListener:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

.field private mItemAnimatorRunner:Ljava/lang/Runnable;

.field final mItemDecorations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ItemDecoration;",
            ">;"
        }
    .end annotation
.end field

.field mItemsAddedOrRemoved:Z

.field mItemsChanged:Z

.field private mLastTouchX:I

.field private mLastTouchY:I

.field mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field mLayoutFrozen:Z

.field private mLayoutOrScrollCounter:I

.field mLayoutRequestEaten:Z

.field private mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

.field private final mMaxFlingVelocity:I

.field private final mMinFlingVelocity:I

.field private final mMinMaxLayoutPositions:[I

.field private mMoveAcceleration:I

.field private final mNestedOffsets:[I

.field private mNumTouchMoveEvent:I

.field private final mObserver:Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;

.field private mOnChildAttachStateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/RecyclerView$OnChildAttachStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOnFlingListener:Landroid/support/v7/widget/RecyclerView$OnFlingListener;

.field private final mOnItemTouchListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingAccessibilityImportanceChange:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingSavedState:Landroid/support/v7/widget/RecyclerView$SavedState;

.field mPostedAnimatorRunner:Z

.field private mPreserveFocusAfterLayout:Z

.field final mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

.field mRecyclerListener:Landroid/support/v7/widget/RecyclerView$RecyclerListener;

.field private mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

.field private final mScrollConsumed:[I

.field private mScrollFactor:F

.field private mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

.field private mScrollListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/RecyclerView$OnScrollListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mScrollOffset:[I

.field private mScrollPointerId:I

.field private mScrollState:I

.field private mScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

.field final mState:Landroid/support/v7/widget/RecyclerView$State;

.field final mTempRect:Landroid/graphics/Rect;

.field private final mTempRect2:Landroid/graphics/Rect;

.field final mTempRectF:Landroid/graphics/RectF;

.field private mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

.field private mTouchSlop:I

.field final mUpdateChildViewsRunnable:Ljava/lang/Runnable;

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field final mViewFlinger:Landroid/support/v7/widget/RecyclerView$ViewFlinger;

.field private final mViewInfoProcessCallback:Landroid/support/v7/widget/ViewInfoStore$ProcessCallback;

.field final mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

.field mViewPrefetcher:Landroid/support/v7/widget/RecyclerView$ViewPrefetcher;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Landroid/support/v7/widget/RecyclerView;->ALLOW_PREFETCHING:Z

    return v0
.end method

.method static synthetic -get1()J
    .locals 2

    sget-wide v0, Landroid/support/v7/widget/RecyclerView;->MIN_PREFETCH_TIME_NANOS:J

    return-wide v0
.end method

.method static synthetic -wrap0(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->awakenScrollBars()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic -wrap2(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->detachViewFromParent(I)V

    return-void
.end method

.method static synthetic -wrap3(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0
    .param p1, "measuredWidth"    # I
    .param p2, "measuredHeight"    # I

    .prologue
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->setMeasuredDimension(II)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 165
    new-array v0, v1, [I

    const v3, 0x1010436

    aput v3, v0, v2

    .line 164
    sput-object v0, Landroid/support/v7/widget/RecyclerView;->NESTED_SCROLLING_ATTRS:[I

    .line 167
    new-array v0, v1, [I

    const v3, 0x10100eb

    aput v3, v0, v2

    sput-object v0, Landroid/support/v7/widget/RecyclerView;->CLIP_TO_PADDING_ATTR:[I

    .line 176
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-eq v0, v3, :cond_0

    .line 177
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-ne v0, v3, :cond_1

    :cond_0
    move v0, v1

    .line 176
    :goto_0
    sput-boolean v0, Landroid/support/v7/widget/RecyclerView;->FORCE_INVALIDATE_DISPLAY_LIST:Z

    .line 183
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v0, v3, :cond_3

    move v0, v1

    :goto_1
    sput-boolean v0, Landroid/support/v7/widget/RecyclerView;->ALLOW_SIZE_IN_UNSPECIFIED_SPEC:Z

    .line 185
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v0, v3, :cond_4

    move v0, v1

    :goto_2
    sput-boolean v0, Landroid/support/v7/widget/RecyclerView;->POST_UPDATES_ON_ANIMATION:Z

    .line 191
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v0, v3, :cond_5

    move v0, v1

    :goto_3
    sput-boolean v0, Landroid/support/v7/widget/RecyclerView;->ALLOW_PREFETCHING:Z

    .line 280
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    aput-object v3, v0, v2

    const-class v2, Landroid/util/AttributeSet;

    aput-object v2, v0, v1

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 279
    sput-object v0, Landroid/support/v7/widget/RecyclerView;->LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    .line 432
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x4

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Landroid/support/v7/widget/RecyclerView;->MIN_PREFETCH_TIME_NANOS:J

    .line 433
    const-wide/16 v0, 0x0

    sput-wide v0, Landroid/support/v7/widget/RecyclerView;->sFrameIntervalNanos:J

    .line 476
    new-instance v0, Landroid/support/v7/widget/RecyclerView$3;

    invoke-direct {v0}, Landroid/support/v7/widget/RecyclerView$3;-><init>()V

    sput-object v0, Landroid/support/v7/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    .line 155
    return-void

    .line 177
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x14

    if-ne v0, v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v2

    .line 183
    goto :goto_1

    :cond_4
    move v0, v2

    .line 185
    goto :goto_2

    :cond_5
    move v0, v2

    .line 191
    goto :goto_3
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 523
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 522
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 527
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 526
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyle"    # I

    .prologue
    .line 531
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 208
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mIsFirstTouchMoveEvent:Z

    .line 210
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mNumTouchMoveEvent:I

    .line 282
    new-instance v0, Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mObserver:Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;

    .line 284
    new-instance v0, Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/RecyclerView$Recycler;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    .line 301
    new-instance v0, Landroid/support/v7/widget/ViewInfoStore;

    invoke-direct {v0}, Landroid/support/v7/widget/ViewInfoStore;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    .line 315
    new-instance v0, Landroid/support/v7/widget/RecyclerView$1;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/RecyclerView$1;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mUpdateChildViewsRunnable:Ljava/lang/Runnable;

    .line 335
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    .line 336
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    .line 337
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mTempRectF:Landroid/graphics/RectF;

    .line 341
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    .line 343
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 342
    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    .line 350
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mEatRequestLayout:I

    .line 367
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    .line 377
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutOrScrollCounter:I

    .line 386
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mDispatchScrollCounter:I

    .line 390
    new-instance v0, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v0}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    .line 415
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollState:I

    .line 416
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    .line 427
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollFactor:F

    .line 428
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mPreserveFocusAfterLayout:Z

    .line 430
    new-instance v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mViewFlinger:Landroid/support/v7/widget/RecyclerView$ViewFlinger;

    .line 434
    sget-boolean v0, Landroid/support/v7/widget/RecyclerView;->ALLOW_PREFETCHING:Z

    if-eqz v0, :cond_3

    new-instance v0, Landroid/support/v7/widget/RecyclerView$ViewPrefetcher;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/RecyclerView$ViewPrefetcher;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    :goto_0
    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mViewPrefetcher:Landroid/support/v7/widget/RecyclerView$ViewPrefetcher;

    .line 436
    new-instance v0, Landroid/support/v7/widget/RecyclerView$State;

    invoke-direct {v0}, Landroid/support/v7/widget/RecyclerView$State;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    .line 442
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 443
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemsChanged:Z

    .line 445
    new-instance v0, Landroid/support/v7/widget/RecyclerView$ItemAnimatorRestoreListener;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/RecyclerView$ItemAnimatorRestoreListener;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    .line 444
    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimatorListener:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

    .line 446
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mPostedAnimatorRunner:Z

    .line 452
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    .line 455
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    .line 456
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollConsumed:[I

    .line 457
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mNestedOffsets:[I

    .line 464
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    .line 466
    new-instance v0, Landroid/support/v7/widget/RecyclerView$2;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/RecyclerView$2;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimatorRunner:Ljava/lang/Runnable;

    .line 488
    new-instance v0, Landroid/support/v7/widget/RecyclerView$4;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/RecyclerView$4;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    .line 487
    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoProcessCallback:Landroid/support/v7/widget/ViewInfoStore$ProcessCallback;

    .line 532
    if-eqz p2, :cond_4

    .line 533
    sget-object v0, Landroid/support/v7/widget/RecyclerView;->CLIP_TO_PADDING_ATTR:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 534
    .local v6, "a":Landroid/content/res/TypedArray;
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    .line 535
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 539
    .end local v6    # "a":Landroid/content/res/TypedArray;
    :goto_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setScrollContainer(Z)V

    .line 540
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setFocusableInTouchMode(Z)V

    .line 542
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v9

    .line 543
    .local v9, "vc":Landroid/view/ViewConfiguration;
    invoke-virtual {v9}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mTouchSlop:I

    .line 545
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mTouchSlop:I

    int-to-double v0, v0

    const-wide v10, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v0, v10

    double-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mMoveAcceleration:I

    .line 547
    invoke-virtual {v9}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mMinFlingVelocity:I

    .line 548
    invoke-virtual {v9}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mMaxFlingVelocity:I

    .line 549
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getOverScrollMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setWillNotDraw(Z)V

    .line 551
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimatorListener:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->setListener(Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;)V

    .line 552
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->initAdapterManager()V

    .line 553
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->initChildrenHelper()V

    .line 555
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_0

    .line 558
    const/4 v0, 0x1

    .line 557
    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 560
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 561
    const-string/jumbo v1, "accessibility"

    .line 560
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 562
    new-instance v0, Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setAccessibilityDelegateCompat(Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;)V

    .line 565
    const/4 v8, 0x1

    .line 567
    .local v8, "nestedScrollingEnabled":Z
    if-eqz p2, :cond_6

    .line 568
    const/4 v5, 0x0

    .line 569
    .local v5, "defStyleRes":I
    sget-object v0, Landroid/support/v7/recyclerview/R$styleable;->RecyclerView:[I

    invoke-virtual {p1, p2, v0, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 571
    .restart local v6    # "a":Landroid/content/res/TypedArray;
    sget v0, Landroid/support/v7/recyclerview/R$styleable;->RecyclerView_layoutManager:I

    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 573
    .local v2, "layoutManagerName":Ljava/lang/String;
    sget v0, Landroid/support/v7/recyclerview/R$styleable;->RecyclerView_android_descendantFocusability:I

    const/4 v1, -0x1

    .line 572
    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 574
    .local v7, "descendantFocusability":I
    const/4 v0, -0x1

    if-ne v7, v0, :cond_1

    .line 575
    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setDescendantFocusability(I)V

    .line 577
    :cond_1
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    .line 578
    invoke-direct/range {v0 .. v5}, Landroid/support/v7/widget/RecyclerView;->createLayoutManager(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;II)V

    .line 580
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    .line 581
    sget-object v0, Landroid/support/v7/widget/RecyclerView;->NESTED_SCROLLING_ATTRS:[I

    invoke-virtual {p1, p2, v0, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 583
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    .line 584
    .local v8, "nestedScrollingEnabled":Z
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 591
    .end local v2    # "layoutManagerName":Ljava/lang/String;
    .end local v5    # "defStyleRes":I
    .end local v6    # "a":Landroid/content/res/TypedArray;
    .end local v7    # "descendantFocusability":I
    .end local v8    # "nestedScrollingEnabled":Z
    :cond_2
    :goto_3
    invoke-virtual {p0, v8}, Landroid/support/v7/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 530
    return-void

    .line 434
    .end local v9    # "vc":Landroid/view/ViewConfiguration;
    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 537
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    goto/16 :goto_1

    .line 549
    .restart local v9    # "vc":Landroid/view/ViewConfiguration;
    :cond_5
    const/4 v0, 0x0

    goto :goto_2

    .line 587
    .local v8, "nestedScrollingEnabled":Z
    :cond_6
    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setDescendantFocusability(I)V

    goto :goto_3
.end method

.method private addAnimatingView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 6
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    const/4 v5, 0x1

    .line 1234
    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 1235
    .local v1, "view":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-ne v2, p0, :cond_0

    const/4 v0, 0x1

    .line 1236
    .local v0, "alreadyParented":Z
    :goto_0
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView$Recycler;->unscrapView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 1237
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1239
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v2, v1, v4, v3, v5}, Landroid/support/v7/widget/ChildHelper;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 1233
    :goto_1
    return-void

    .line 1235
    .end local v0    # "alreadyParented":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "alreadyParented":Z
    goto :goto_0

    .line 1240
    :cond_1
    if-nez v0, :cond_2

    .line 1241
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v2, v1, v5}, Landroid/support/v7/widget/ChildHelper;->addView(Landroid/view/View;Z)V

    goto :goto_1

    .line 1243
    :cond_2
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/ChildHelper;->hide(Landroid/view/View;)V

    goto :goto_1
.end method

.method private animateChange(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;ZZ)V
    .locals 2
    .param p1, "oldHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "newHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "preInfo"    # Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "postInfo"    # Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "oldHolderDisappearing"    # Z
    .param p6, "newHolderDisappearing"    # Z

    .prologue
    const/4 v1, 0x0

    .line 3699
    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 3700
    if-eqz p5, :cond_0

    .line 3701
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->addAnimatingView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 3703
    :cond_0
    if-eq p1, p2, :cond_2

    .line 3704
    if-eqz p6, :cond_1

    .line 3705
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView;->addAnimatingView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 3707
    :cond_1
    iput-object p2, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mShadowedHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 3709
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->addAnimatingView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 3710
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Recycler;->unscrapView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 3711
    invoke-virtual {p2, v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 3712
    iput-object p1, p2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mShadowingHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 3714
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->animateChange(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3715
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->postAnimationRunner()V

    .line 3698
    :cond_3
    return-void
.end method

.method private cancelTouch()V
    .locals 1

    .prologue
    .line 2906
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->resetTouch()V

    .line 2907
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    .line 2905
    return-void
.end method

.method private createLayoutManager(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;II)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "defStyleAttr"    # I
    .param p5, "defStyleRes"    # I

    .prologue
    .line 617
    if-eqz p2, :cond_0

    .line 618
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 619
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v13

    if-eqz v13, :cond_0

    .line 620
    invoke-direct/range {p0 .. p2}, Landroid/support/v7/widget/RecyclerView;->getFullClassName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 623
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->isInEditMode()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 625
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 630
    .local v1, "classLoader":Ljava/lang/ClassLoader;
    :goto_0
    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    const-class v14, Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v13, v14}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v12

    .line 632
    .local v12, "layoutManagerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/support/v7/widget/RecyclerView$LayoutManager;>;"
    const/4 v3, 0x0

    .line 635
    .local v3, "constructorArgs":[Ljava/lang/Object;
    :try_start_1
    sget-object v13, Landroid/support/v7/widget/RecyclerView;->LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    .line 634
    invoke-virtual {v12, v13}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 636
    .local v2, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Landroid/support/v7/widget/RecyclerView$LayoutManager;>;"
    const/4 v13, 0x4

    new-array v4, v13, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object p1, v4, v13

    const/4 v13, 0x1

    aput-object p3, v4, v13

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x2

    aput-object v13, v4, v14

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x3

    aput-object v13, v4, v14
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_3

    .end local v3    # "constructorArgs":[Ljava/lang/Object;
    .local v4, "constructorArgs":[Ljava/lang/Object;
    move-object v3, v4

    .line 646
    .end local v4    # "constructorArgs":[Ljava/lang/Object;
    :goto_1
    const/4 v13, 0x1

    :try_start_2
    invoke-virtual {v2, v13}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 647
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 616
    .end local v1    # "classLoader":Ljava/lang/ClassLoader;
    .end local v2    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Landroid/support/v7/widget/RecyclerView$LayoutManager;>;"
    .end local v12    # "layoutManagerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/support/v7/widget/RecyclerView$LayoutManager;>;"
    :cond_0
    return-void

    .line 627
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v1

    .restart local v1    # "classLoader":Ljava/lang/ClassLoader;
    goto :goto_0

    .line 637
    .restart local v3    # "constructorArgs":[Ljava/lang/Object;
    .restart local v12    # "layoutManagerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/support/v7/widget/RecyclerView$LayoutManager;>;"
    :catch_0
    move-exception v9

    .line 639
    .local v9, "e":Ljava/lang/NoSuchMethodException;
    const/4 v13, 0x0

    :try_start_3
    new-array v13, v13, [Ljava/lang/Class;

    invoke-virtual {v12, v13}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v2

    .restart local v2    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Landroid/support/v7/widget/RecyclerView$LayoutManager;>;"
    goto :goto_1

    .line 640
    .end local v2    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Landroid/support/v7/widget/RecyclerView$LayoutManager;>;"
    :catch_1
    move-exception v11

    .line 641
    .local v11, "e1":Ljava/lang/NoSuchMethodException;
    :try_start_4
    invoke-virtual {v11, v9}, Ljava/lang/NoSuchMethodException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 642
    new-instance v13, Ljava/lang/IllegalStateException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p3 .. p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 643
    const-string/jumbo v15, ": Error creating LayoutManager "

    .line 642
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v13
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/InstantiationException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_3

    .line 648
    .end local v1    # "classLoader":Ljava/lang/ClassLoader;
    .end local v3    # "constructorArgs":[Ljava/lang/Object;
    .end local v9    # "e":Ljava/lang/NoSuchMethodException;
    .end local v11    # "e1":Ljava/lang/NoSuchMethodException;
    .end local v12    # "layoutManagerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/support/v7/widget/RecyclerView$LayoutManager;>;"
    :catch_2
    move-exception v6

    .line 649
    .local v6, "e":Ljava/lang/ClassNotFoundException;
    new-instance v13, Ljava/lang/IllegalStateException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p3 .. p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 650
    const-string/jumbo v15, ": Unable to find LayoutManager "

    .line 649
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v13

    .line 660
    .end local v6    # "e":Ljava/lang/ClassNotFoundException;
    :catch_3
    move-exception v5

    .line 661
    .local v5, "e":Ljava/lang/ClassCastException;
    new-instance v13, Ljava/lang/IllegalStateException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p3 .. p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 662
    const-string/jumbo v15, ": Class is not a LayoutManager "

    .line 661
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v13

    .line 657
    .end local v5    # "e":Ljava/lang/ClassCastException;
    :catch_4
    move-exception v7

    .line 658
    .local v7, "e":Ljava/lang/IllegalAccessException;
    new-instance v13, Ljava/lang/IllegalStateException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p3 .. p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 659
    const-string/jumbo v15, ": Cannot access non-public constructor "

    .line 658
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v13

    .line 654
    .end local v7    # "e":Ljava/lang/IllegalAccessException;
    :catch_5
    move-exception v8

    .line 655
    .local v8, "e":Ljava/lang/InstantiationException;
    new-instance v13, Ljava/lang/IllegalStateException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p3 .. p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 656
    const-string/jumbo v15, ": Could not instantiate the LayoutManager: "

    .line 655
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v13

    .line 651
    .end local v8    # "e":Ljava/lang/InstantiationException;
    :catch_6
    move-exception v10

    .line 652
    .local v10, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v13, Ljava/lang/IllegalStateException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p3 .. p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 653
    const-string/jumbo v15, ": Could not instantiate the LayoutManager: "

    .line 652
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v13
.end method

.method private didChildRangeChange(II)Z
    .locals 3
    .param p1, "minPositionPreLayout"    # I
    .param p2, "maxPositionPreLayout"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 3651
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    invoke-direct {p0, v2}, Landroid/support/v7/widget/RecyclerView;->findMinMaxChildLayoutPositions([I)V

    .line 3652
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    aget v2, v2, v1

    if-ne v2, p1, :cond_0

    .line 3653
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    aget v2, v2, v0

    if-eq v2, p2, :cond_1

    .line 3652
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 3653
    goto :goto_0
.end method

.method private dispatchContentChangedIfNecessary()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3114
    iget v1, p0, Landroid/support/v7/widget/RecyclerView;->mEatenAccessibilityChangeFlags:I

    .line 3115
    .local v1, "flags":I
    iput v2, p0, Landroid/support/v7/widget/RecyclerView;->mEatenAccessibilityChangeFlags:I

    .line 3116
    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->isAccessibilityEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3117
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 3118
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    const/16 v2, 0x800

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 3119
    invoke-static {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat;->setContentChangeTypes(Landroid/view/accessibility/AccessibilityEvent;I)V

    .line 3120
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 3113
    .end local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_0
    return-void
.end method

.method private dispatchLayoutStep1()V
    .locals 15

    .prologue
    .line 3369
    iget-object v11, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/support/v7/widget/RecyclerView$State;->assertLayoutStep(I)V

    .line 3370
    iget-object v11, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    const/4 v12, 0x0

    iput-boolean v12, v11, Landroid/support/v7/widget/RecyclerView$State;->mIsMeasuring:Z

    .line 3371
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->eatRequestLayout()V

    .line 3372
    iget-object v11, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    invoke-virtual {v11}, Landroid/support/v7/widget/ViewInfoStore;->clear()V

    .line 3373
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 3374
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->saveFocusInfo()V

    .line 3375
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->processAdapterUpdatesAndSetAnimationFlags()V

    .line 3376
    iget-object v12, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-object v11, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-boolean v11, v11, Landroid/support/v7/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    if-eqz v11, :cond_2

    iget-boolean v11, p0, Landroid/support/v7/widget/RecyclerView;->mItemsChanged:Z

    :goto_0
    iput-boolean v11, v12, Landroid/support/v7/widget/RecyclerView$State;->mTrackOldChangeHolders:Z

    .line 3377
    const/4 v11, 0x0

    iput-boolean v11, p0, Landroid/support/v7/widget/RecyclerView;->mItemsChanged:Z

    const/4 v11, 0x0

    iput-boolean v11, p0, Landroid/support/v7/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 3378
    iget-object v11, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-object v12, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-boolean v12, v12, Landroid/support/v7/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    iput-boolean v12, v11, Landroid/support/v7/widget/RecyclerView$State;->mInPreLayout:Z

    .line 3379
    iget-object v11, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-object v12, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v12}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v12

    iput v12, v11, Landroid/support/v7/widget/RecyclerView$State;->mItemCount:I

    .line 3380
    iget-object v11, p0, Landroid/support/v7/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    invoke-direct {p0, v11}, Landroid/support/v7/widget/RecyclerView;->findMinMaxChildLayoutPositions([I)V

    .line 3382
    iget-object v11, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-boolean v11, v11, Landroid/support/v7/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    if-eqz v11, :cond_4

    .line 3384
    iget-object v11, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v11}, Landroid/support/v7/widget/ChildHelper;->getChildCount()I

    move-result v2

    .line 3385
    .local v2, "count":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v2, :cond_4

    .line 3386
    iget-object v11, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v11, v6}, Landroid/support/v7/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-static {v11}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v5

    .line 3387
    .local v5, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v11

    if-nez v11, :cond_1

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v11

    if-eqz v11, :cond_0

    iget-object v11, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v11}, Landroid/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 3390
    :cond_0
    iget-object v11, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    .line 3391
    iget-object v12, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    .line 3392
    invoke-static {v5}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->buildAdapterChangeFlagsForAnimations(Landroid/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v13

    .line 3393
    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v14

    .line 3390
    invoke-virtual {v11, v12, v5, v13, v14}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->recordPreLayoutInformation(Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/RecyclerView$ViewHolder;ILjava/util/List;)Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v0

    .line 3394
    .local v0, "animationInfo":Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    iget-object v11, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    invoke-virtual {v11, v5, v0}, Landroid/support/v7/widget/ViewInfoStore;->addToPreLayout(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    .line 3395
    iget-object v11, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-boolean v11, v11, Landroid/support/v7/widget/RecyclerView$State;->mTrackOldChangeHolders:Z

    if-eqz v11, :cond_1

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isUpdated()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 3385
    .end local v0    # "animationInfo":Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    :cond_1
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 3376
    .end local v2    # "count":I
    .end local v5    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .end local v6    # "i":I
    :cond_2
    const/4 v11, 0x0

    goto :goto_0

    .line 3396
    .restart local v0    # "animationInfo":Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .restart local v2    # "count":I
    .restart local v5    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .restart local v6    # "i":I
    :cond_3
    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v11

    if-nez v11, :cond_1

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v11

    if-nez v11, :cond_1

    .line 3397
    invoke-virtual {p0, v5}, Landroid/support/v7/widget/RecyclerView;->getChangedHolderKey(Landroid/support/v7/widget/RecyclerView$ViewHolder;)J

    move-result-wide v8

    .line 3405
    .local v8, "key":J
    iget-object v11, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    invoke-virtual {v11, v8, v9, v5}, Landroid/support/v7/widget/ViewInfoStore;->addToOldChangeHolders(JLandroid/support/v7/widget/RecyclerView$ViewHolder;)V

    goto :goto_2

    .line 3409
    .end local v0    # "animationInfo":Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .end local v2    # "count":I
    .end local v5    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .end local v6    # "i":I
    .end local v8    # "key":J
    :cond_4
    iget-object v11, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-boolean v11, v11, Landroid/support/v7/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    if-eqz v11, :cond_a

    .line 3416
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->saveOldPositions()V

    .line 3417
    iget-object v11, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-boolean v3, v11, Landroid/support/v7/widget/RecyclerView$State;->mStructureChanged:Z

    .line 3418
    .local v3, "didStructureChange":Z
    iget-object v11, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    const/4 v12, 0x0

    iput-boolean v12, v11, Landroid/support/v7/widget/RecyclerView$State;->mStructureChanged:Z

    .line 3420
    iget-object v11, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v12, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    iget-object v13, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v11, v12, v13}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onLayoutChildren(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 3421
    iget-object v11, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iput-boolean v3, v11, Landroid/support/v7/widget/RecyclerView$State;->mStructureChanged:Z

    .line 3423
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_3
    iget-object v11, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v11}, Landroid/support/v7/widget/ChildHelper;->getChildCount()I

    move-result v11

    if-ge v6, v11, :cond_9

    .line 3424
    iget-object v11, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v11, v6}, Landroid/support/v7/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3425
    .local v1, "child":Landroid/view/View;
    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v7

    .line 3426
    .local v7, "viewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 3423
    :cond_5
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 3429
    :cond_6
    iget-object v11, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    invoke-virtual {v11, v7}, Landroid/support/v7/widget/ViewInfoStore;->isInPreLayout(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 3430
    invoke-static {v7}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->buildAdapterChangeFlagsForAnimations(Landroid/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v4

    .line 3432
    .local v4, "flags":I
    const/16 v11, 0x2000

    .line 3431
    invoke-virtual {v7, v11}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->hasAnyOfTheFlags(I)Z

    move-result v10

    .line 3433
    .local v10, "wasHidden":Z
    if-nez v10, :cond_7

    .line 3434
    or-int/lit16 v4, v4, 0x1000

    .line 3436
    :cond_7
    iget-object v11, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    .line 3437
    iget-object v12, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v13

    .line 3436
    invoke-virtual {v11, v12, v7, v4, v13}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->recordPreLayoutInformation(Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/RecyclerView$ViewHolder;ILjava/util/List;)Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v0

    .line 3438
    .restart local v0    # "animationInfo":Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    if-eqz v10, :cond_8

    .line 3439
    invoke-virtual {p0, v7, v0}, Landroid/support/v7/widget/RecyclerView;->recordAnimationInfoIfBouncedHiddenView(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_4

    .line 3441
    :cond_8
    iget-object v11, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    invoke-virtual {v11, v7, v0}, Landroid/support/v7/widget/ViewInfoStore;->addToAppearedInPreLayoutHolders(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_4

    .line 3446
    .end local v0    # "animationInfo":Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .end local v1    # "child":Landroid/view/View;
    .end local v4    # "flags":I
    .end local v7    # "viewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .end local v10    # "wasHidden":Z
    :cond_9
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->clearOldPositions()V

    .line 3450
    .end local v3    # "didStructureChange":Z
    .end local v6    # "i":I
    :goto_5
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->onExitLayoutOrScroll()V

    .line 3451
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Landroid/support/v7/widget/RecyclerView;->resumeRequestLayout(Z)V

    .line 3452
    iget-object v11, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    const/4 v12, 0x2

    iput v12, v11, Landroid/support/v7/widget/RecyclerView$State;->mLayoutStep:I

    .line 3368
    return-void

    .line 3448
    :cond_a
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->clearOldPositions()V

    goto :goto_5
.end method

.method private dispatchLayoutStep2()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 3460
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->eatRequestLayout()V

    .line 3461
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 3462
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView$State;->assertLayoutStep(I)V

    .line 3463
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AdapterHelper;->consumeUpdatesInOnePass()V

    .line 3464
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v2

    iput v2, v0, Landroid/support/v7/widget/RecyclerView$State;->mItemCount:I

    .line 3465
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iput v1, v0, Landroid/support/v7/widget/RecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I

    .line 3468
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iput-boolean v1, v0, Landroid/support/v7/widget/RecyclerView$State;->mInPreLayout:Z

    .line 3469
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0, v2, v3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onLayoutChildren(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 3471
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iput-boolean v1, v0, Landroid/support/v7/widget/RecyclerView$State;->mStructureChanged:Z

    .line 3472
    iput-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mPendingSavedState:Landroid/support/v7/widget/RecyclerView$SavedState;

    .line 3475
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-boolean v0, v0, Landroid/support/v7/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, v2, Landroid/support/v7/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    .line 3476
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    const/4 v2, 0x4

    iput v2, v0, Landroid/support/v7/widget/RecyclerView$State;->mLayoutStep:I

    .line 3477
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->onExitLayoutOrScroll()V

    .line 3478
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView;->resumeRequestLayout(Z)V

    .line 3459
    return-void

    :cond_0
    move v0, v1

    .line 3475
    goto :goto_0
.end method

.method private dispatchLayoutStep3()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 3486
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    const/4 v9, 0x4

    invoke-virtual {v0, v9}, Landroid/support/v7/widget/RecyclerView$State;->assertLayoutStep(I)V

    .line 3487
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->eatRequestLayout()V

    .line 3488
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 3489
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iput v13, v0, Landroid/support/v7/widget/RecyclerView$State;->mLayoutStep:I

    .line 3490
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-boolean v0, v0, Landroid/support/v7/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    if-eqz v0, :cond_6

    .line 3494
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/ChildHelper;->getChildCount()I

    move-result v0

    add-int/lit8 v8, v0, -0x1

    .local v8, "i":I
    :goto_0
    if-ltz v8, :cond_5

    .line 3495
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0, v8}, Landroid/support/v7/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 3496
    .local v2, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3494
    :goto_1
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 3499
    :cond_0
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->getChangedHolderKey(Landroid/support/v7/widget/RecyclerView$ViewHolder;)J

    move-result-wide v10

    .line 3500
    .local v10, "key":J
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    .line 3501
    iget-object v9, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    .line 3500
    invoke-virtual {v0, v9, v2}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->recordPostLayoutInformation(Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v7

    .line 3502
    .local v7, "animationInfo":Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    invoke-virtual {v0, v10, v11}, Landroid/support/v7/widget/ViewInfoStore;->getFromOldChangeHolders(J)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 3503
    .local v1, "oldChangeViewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3534
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    invoke-virtual {v0, v2, v7}, Landroid/support/v7/widget/ViewInfoStore;->addToPostLayout(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_1

    .line 3514
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ViewInfoStore;->isDisappearing(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v5

    .line 3516
    .local v5, "oldDisappearing":Z
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/ViewInfoStore;->isDisappearing(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v6

    .line 3517
    .local v6, "newDisappearing":Z
    if-eqz v5, :cond_3

    if-ne v1, v2, :cond_3

    .line 3519
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    invoke-virtual {v0, v2, v7}, Landroid/support/v7/widget/ViewInfoStore;->addToPostLayout(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_1

    .line 3521
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ViewInfoStore;->popFromPreLayout(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v3

    .line 3524
    .local v3, "preInfo":Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    invoke-virtual {v0, v2, v7}, Landroid/support/v7/widget/ViewInfoStore;->addToPostLayout(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    .line 3525
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/ViewInfoStore;->popFromPostLayout(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v4

    .line 3526
    .local v4, "postInfo":Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    if-nez v3, :cond_4

    .line 3527
    invoke-direct {p0, v10, v11, v2, v1}, Landroid/support/v7/widget/RecyclerView;->handleMissingPreInfoForChangeError(JLandroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    goto :goto_1

    :cond_4
    move-object v0, p0

    .line 3529
    invoke-direct/range {v0 .. v6}, Landroid/support/v7/widget/RecyclerView;->animateChange(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;ZZ)V

    goto :goto_1

    .line 3539
    .end local v1    # "oldChangeViewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .end local v2    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .end local v3    # "preInfo":Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .end local v4    # "postInfo":Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .end local v5    # "oldDisappearing":Z
    .end local v6    # "newDisappearing":Z
    .end local v7    # "animationInfo":Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .end local v10    # "key":J
    :cond_5
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    iget-object v9, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoProcessCallback:Landroid/support/v7/widget/ViewInfoStore$ProcessCallback;

    invoke-virtual {v0, v9}, Landroid/support/v7/widget/ViewInfoStore;->process(Landroid/support/v7/widget/ViewInfoStore$ProcessCallback;)V

    .line 3542
    .end local v8    # "i":I
    :cond_6
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v9, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0, v9}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->removeAndRecycleScrapInt(Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 3543
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-object v9, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget v9, v9, Landroid/support/v7/widget/RecyclerView$State;->mItemCount:I

    iput v9, v0, Landroid/support/v7/widget/RecyclerView$State;->mPreviousLayoutItemCount:I

    .line 3544
    iput-boolean v12, p0, Landroid/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    .line 3545
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iput-boolean v12, v0, Landroid/support/v7/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    .line 3547
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iput-boolean v12, v0, Landroid/support/v7/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    .line 3548
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iput-boolean v12, v0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRequestedSimpleAnimations:Z

    .line 3549
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    .line 3550
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3552
    :cond_7
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v9, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0, v9}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onLayoutCompleted(Landroid/support/v7/widget/RecyclerView$State;)V

    .line 3553
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->onExitLayoutOrScroll()V

    .line 3554
    invoke-virtual {p0, v12}, Landroid/support/v7/widget/RecyclerView;->resumeRequestLayout(Z)V

    .line 3555
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    invoke-virtual {v0}, Landroid/support/v7/widget/ViewInfoStore;->clear()V

    .line 3556
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    aget v0, v0, v12

    iget-object v9, p0, Landroid/support/v7/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    aget v9, v9, v13

    invoke-direct {p0, v0, v9}, Landroid/support/v7/widget/RecyclerView;->didChildRangeChange(II)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3557
    invoke-virtual {p0, v12, v12}, Landroid/support/v7/widget/RecyclerView;->dispatchOnScrolled(II)V

    .line 3559
    :cond_8
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->recoverFocusFromState()V

    .line 3560
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->resetFocusInfo()V

    .line 3485
    return-void
.end method

.method private dispatchOnItemTouch(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2533
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2534
    .local v0, "action":I
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mActiveOnItemTouchListener:Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    if-eqz v4, :cond_0

    .line 2535
    if-nez v0, :cond_1

    .line 2537
    iput-object v7, p0, Landroid/support/v7/widget/RecyclerView;->mActiveOnItemTouchListener:Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    .line 2550
    :cond_0
    if-eqz v0, :cond_5

    .line 2551
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2552
    .local v3, "listenerCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_5

    .line 2553
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    .line 2554
    .local v2, "listener":Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;
    invoke-interface {v2, p0, p1}, Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;->onInterceptTouchEvent(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2555
    iput-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mActiveOnItemTouchListener:Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    .line 2556
    return v6

    .line 2539
    .end local v1    # "i":I
    .end local v2    # "listener":Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;
    .end local v3    # "listenerCount":I
    :cond_1
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mActiveOnItemTouchListener:Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    invoke-interface {v4, p0, p1}, Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;->onTouchEvent(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)V

    .line 2540
    const/4 v4, 0x3

    if-eq v0, v4, :cond_2

    if-ne v0, v6, :cond_3

    .line 2542
    :cond_2
    iput-object v7, p0, Landroid/support/v7/widget/RecyclerView;->mActiveOnItemTouchListener:Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    .line 2544
    :cond_3
    return v6

    .line 2552
    .restart local v1    # "i":I
    .restart local v2    # "listener":Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;
    .restart local v3    # "listenerCount":I
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2560
    .end local v1    # "i":I
    .end local v2    # "listener":Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;
    .end local v3    # "listenerCount":I
    :cond_5
    return v5
.end method

.method private dispatchOnItemTouchIntercept(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x0

    .line 2516
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2517
    .local v0, "action":I
    if-eq v0, v6, :cond_0

    if-nez v0, :cond_1

    .line 2518
    :cond_0
    const/4 v4, 0x0

    iput-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mActiveOnItemTouchListener:Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    .line 2521
    :cond_1
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2522
    .local v3, "listenerCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_3

    .line 2523
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    .line 2524
    .local v2, "listener":Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;
    invoke-interface {v2, p0, p1}, Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;->onInterceptTouchEvent(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-eq v0, v6, :cond_2

    .line 2525
    iput-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mActiveOnItemTouchListener:Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    .line 2526
    const/4 v4, 0x1

    return v4

    .line 2522
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2529
    .end local v2    # "listener":Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;
    :cond_3
    return v5
.end method

.method private findMinMaxChildLayoutPositions([I)V
    .locals 10
    .param p1, "into"    # [I

    .prologue
    const/4 v9, 0x1

    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 3625
    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v6}, Landroid/support/v7/widget/ChildHelper;->getChildCount()I

    move-result v0

    .line 3626
    .local v0, "count":I
    if-nez v0, :cond_0

    .line 3627
    aput v8, p1, v7

    .line 3628
    aput v8, p1, v9

    .line 3629
    return-void

    .line 3631
    :cond_0
    const v4, 0x7fffffff

    .line 3632
    .local v4, "minPositionPreLayout":I
    const/high16 v3, -0x80000000

    .line 3633
    .local v3, "maxPositionPreLayout":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_4

    .line 3634
    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v6, v2}, Landroid/support/v7/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 3635
    .local v1, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3633
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3638
    :cond_2
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v5

    .line 3639
    .local v5, "pos":I
    if-ge v5, v4, :cond_3

    .line 3640
    move v4, v5

    .line 3642
    :cond_3
    if-le v5, v3, :cond_1

    .line 3643
    move v3, v5

    goto :goto_1

    .line 3646
    .end local v1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .end local v5    # "pos":I
    :cond_4
    aput v4, p1, v7

    .line 3647
    aput v3, p1, v9

    .line 3624
    return-void
.end method

.method static getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1
    .param p0, "child"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 4130
    if-nez p0, :cond_0

    .line 4131
    return-object v0

    .line 4133
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    return-object v0
.end method

.method static getDecoratedBoundsWithMarginsInt(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 7
    .param p0, "view"    # Landroid/view/View;
    .param p1, "outBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 4404
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 4405
    .local v1, "lp":Landroid/support/v7/widget/RecyclerView$LayoutParams;
    iget-object v0, v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 4406
    .local v0, "insets":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v2

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget v3, v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;->leftMargin:I

    sub-int/2addr v2, v3

    .line 4407
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v3

    iget v4, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    iget v4, v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;->topMargin:I

    sub-int/2addr v3, v4

    .line 4408
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v4

    iget v5, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    iget v5, v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    .line 4409
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v5

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    iget v6, v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v5, v6

    .line 4406
    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 4403
    return-void
.end method

.method private getDeepestFocusedViewWithId(Landroid/view/View;)I
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 3350
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 3351
    .local v1, "lastKnownId":I
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result v2

    if-nez v2, :cond_1

    instance-of v2, p1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3352
    check-cast p1, Landroid/view/ViewGroup;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object p1

    .line 3353
    .restart local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 3354
    .local v0, "id":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 3355
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    goto :goto_0

    .line 3358
    .end local v0    # "id":I
    :cond_1
    return v1
.end method

.method private getFullClassName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x2e

    .line 669
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_0

    .line 670
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 672
    :cond_0
    const-string/jumbo v0, "."

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 673
    return-object p2

    .line 675
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getScrollFactor()F
    .locals 4

    .prologue
    .line 2961
    iget v1, p0, Landroid/support/v7/widget/RecyclerView;->mScrollFactor:F

    const/4 v2, 0x1

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 2962
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 2963
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 2964
    const v2, 0x101004d

    const/4 v3, 0x1

    .line 2963
    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2966
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 2965
    invoke-virtual {v0, v1}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->mScrollFactor:F

    .line 2971
    .end local v0    # "outValue":Landroid/util/TypedValue;
    :cond_0
    iget v1, p0, Landroid/support/v7/widget/RecyclerView;->mScrollFactor:F

    return v1

    .line 2968
    .restart local v0    # "outValue":Landroid/util/TypedValue;
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private getScrollingChildHelper()Landroid/support/v4/view/NestedScrollingChildHelper;
    .locals 1

    .prologue
    .line 12036
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    if-nez v0, :cond_0

    .line 12037
    new-instance v0, Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-direct {v0, p0}, Landroid/support/v4/view/NestedScrollingChildHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    .line 12039
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    return-object v0
.end method

.method private handleMissingPreInfoForChangeError(JLandroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 9
    .param p1, "key"    # J
    .param p3, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p4, "oldChangeViewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 3581
    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v6}, Landroid/support/v7/widget/ChildHelper;->getChildCount()I

    move-result v0

    .line 3582
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 3583
    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v6, v1}, Landroid/support/v7/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3584
    .local v3, "view":Landroid/view/View;
    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 3585
    .local v2, "other":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    if-ne v2, p3, :cond_1

    .line 3582
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3588
    :cond_1
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->getChangedHolderKey(Landroid/support/v7/widget/RecyclerView$ViewHolder;)J

    move-result-wide v4

    .line 3589
    .local v4, "otherKey":J
    cmp-long v6, v4, p1

    if-nez v6, :cond_0

    .line 3590
    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v6, :cond_2

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3591
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Two different ViewHolders have the same stable ID. Stable IDs in your adapter MUST BE unique and SHOULD NOT change.\n ViewHolder 1:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 3593
    const-string/jumbo v8, " \n View Holder 2:"

    .line 3591
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 3595
    :cond_2
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Two different ViewHolders have the same change ID. This might happen due to inconsistent Adapter update events or if the LayoutManager lays out the same View multiple times.\n ViewHolder 1:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 3598
    const-string/jumbo v8, " \n View Holder 2:"

    .line 3595
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 3603
    .end local v2    # "other":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .end local v3    # "view":Landroid/view/View;
    .end local v4    # "otherKey":J
    :cond_3
    const-string/jumbo v6, "RecyclerView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Problem while matching changed view holders with the newones. The pre-layout information for the change holder "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 3605
    const-string/jumbo v8, " cannot be found but it is necessary for "

    .line 3603
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3579
    return-void
.end method

.method private hasUpdatedView()Z
    .locals 4

    .prologue
    .line 1619
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v3}, Landroid/support/v7/widget/ChildHelper;->getChildCount()I

    move-result v0

    .line 1620
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 1621
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 1622
    .local v1, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1620
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1625
    :cond_1
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isUpdated()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1626
    const/4 v3, 0x1

    return v3

    .line 1629
    .end local v1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_2
    const/4 v3, 0x0

    return v3
.end method

.method private initChildrenHelper()V
    .locals 2

    .prologue
    .line 679
    new-instance v0, Landroid/support/v7/widget/ChildHelper;

    new-instance v1, Landroid/support/v7/widget/RecyclerView$5;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/RecyclerView$5;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    invoke-direct {v0, v1}, Landroid/support/v7/widget/ChildHelper;-><init>(Landroid/support/v7/widget/ChildHelper$Callback;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    .line 678
    return-void
.end method

.method private isPreferredNextFocus(Landroid/view/View;Landroid/view/View;I)Z
    .locals 6
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "next"    # Landroid/view/View;
    .param p3, "direction"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x2

    const/4 v3, 0x1

    .line 2291
    if-eqz p2, :cond_0

    if-ne p2, p0, :cond_1

    .line 2292
    :cond_0
    return v2

    .line 2294
    :cond_1
    if-nez p1, :cond_2

    .line 2295
    return v3

    .line 2298
    :cond_2
    if-eq p3, v5, :cond_3

    if-ne p3, v3, :cond_9

    .line 2299
    :cond_3
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getLayoutDirection()I

    move-result v4

    if-ne v4, v3, :cond_5

    const/4 v1, 0x1

    .line 2300
    .local v1, "rtl":Z
    :goto_0
    if-ne p3, v5, :cond_4

    move v2, v3

    :cond_4
    xor-int/2addr v2, v1

    if-eqz v2, :cond_6

    .line 2301
    const/16 v0, 0x42

    .line 2302
    .local v0, "absHorizontal":I
    :goto_1
    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/RecyclerView;->isPreferredNextFocusAbsolute(Landroid/view/View;Landroid/view/View;I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2303
    return v3

    .line 2299
    .end local v0    # "absHorizontal":I
    .end local v1    # "rtl":Z
    :cond_5
    const/4 v1, 0x0

    .restart local v1    # "rtl":Z
    goto :goto_0

    .line 2301
    :cond_6
    const/16 v0, 0x11

    goto :goto_1

    .line 2305
    .restart local v0    # "absHorizontal":I
    :cond_7
    if-ne p3, v5, :cond_8

    .line 2306
    const/16 v2, 0x82

    invoke-direct {p0, p1, p2, v2}, Landroid/support/v7/widget/RecyclerView;->isPreferredNextFocusAbsolute(Landroid/view/View;Landroid/view/View;I)Z

    move-result v2

    return v2

    .line 2308
    :cond_8
    const/16 v2, 0x21

    invoke-direct {p0, p1, p2, v2}, Landroid/support/v7/widget/RecyclerView;->isPreferredNextFocusAbsolute(Landroid/view/View;Landroid/view/View;I)Z

    move-result v2

    return v2

    .line 2311
    .end local v0    # "absHorizontal":I
    .end local v1    # "rtl":Z
    :cond_9
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;->isPreferredNextFocusAbsolute(Landroid/view/View;Landroid/view/View;I)Z

    move-result v2

    return v2
.end method

.method private isPreferredNextFocusAbsolute(Landroid/view/View;Landroid/view/View;I)Z
    .locals 5
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "next"    # Landroid/view/View;
    .param p3, "direction"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2320
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v2, v1, v1, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2321
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v2, v1, v1, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2322
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v2}, Landroid/support/v7/widget/RecyclerView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2323
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v2}, Landroid/support/v7/widget/RecyclerView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2324
    sparse-switch p3, :sswitch_data_0

    .line 2342
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "direction must be absolute. received:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2326
    :sswitch_0
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    if-gt v2, v3, :cond_0

    .line 2327
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    if-lt v2, v3, :cond_1

    .line 2328
    :cond_0
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-le v2, v3, :cond_2

    :goto_0
    move v1, v0

    .line 2326
    :cond_1
    return v1

    :cond_2
    move v0, v1

    .line 2328
    goto :goto_0

    .line 2330
    :sswitch_1
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-lt v2, v3, :cond_3

    .line 2331
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-gt v2, v3, :cond_4

    .line 2332
    :cond_3
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    if-ge v2, v3, :cond_5

    :goto_1
    move v1, v0

    .line 2330
    :cond_4
    return v1

    :cond_5
    move v0, v1

    .line 2332
    goto :goto_1

    .line 2334
    :sswitch_2
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    if-gt v2, v3, :cond_6

    .line 2335
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    if-lt v2, v3, :cond_7

    .line 2336
    :cond_6
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-le v2, v3, :cond_8

    :goto_2
    move v1, v0

    .line 2334
    :cond_7
    return v1

    :cond_8
    move v0, v1

    .line 2336
    goto :goto_2

    .line 2338
    :sswitch_3
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-lt v2, v3, :cond_9

    .line 2339
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-gt v2, v3, :cond_a

    .line 2340
    :cond_9
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    if-ge v2, v3, :cond_b

    :goto_3
    move v1, v0

    .line 2338
    :cond_a
    return v1

    :cond_b
    move v0, v1

    .line 2340
    goto :goto_3

    .line 2324
    nop

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x21 -> :sswitch_2
        0x42 -> :sswitch_1
        0x82 -> :sswitch_3
    .end sparse-switch
.end method

.method private onPointerUp(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    const/high16 v4, 0x3f000000    # 0.5f

    .line 2911
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    .line 2912
    .local v0, "actionIndex":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iget v3, p0, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    if-ne v2, v3, :cond_1

    .line 2914
    if-nez v0, :cond_0

    const/4 v1, 0x1

    .line 2915
    .local v1, "newIndex":I
    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, p0, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    .line 2916
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    add-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, p0, Landroid/support/v7/widget/RecyclerView;->mLastTouchX:I

    iput v2, p0, Landroid/support/v7/widget/RecyclerView;->mInitialTouchX:I

    .line 2917
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    add-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, p0, Landroid/support/v7/widget/RecyclerView;->mLastTouchY:I

    iput v2, p0, Landroid/support/v7/widget/RecyclerView;->mInitialTouchY:I

    .line 2910
    .end local v1    # "newIndex":I
    :cond_1
    return-void
.end method

.method private predictiveItemAnimationsEnabled()Z
    .locals 1

    .prologue
    .line 3203
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->supportsPredictiveItemAnimations()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private processAdapterUpdatesAndSetAnimationFlags()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 3213
    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v1, :cond_0

    .line 3216
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    invoke-virtual {v1}, Landroid/support/v7/widget/AdapterHelper;->reset()V

    .line 3217
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->markKnownViewsInvalid()V

    .line 3218
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1, p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onItemsChanged(Landroid/support/v7/widget/RecyclerView;)V

    .line 3223
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->predictiveItemAnimationsEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3224
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    invoke-virtual {v1}, Landroid/support/v7/widget/AdapterHelper;->preProcess()V

    .line 3228
    :goto_0
    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    if-nez v1, :cond_4

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemsChanged:Z

    .line 3229
    :goto_1
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz v1, :cond_6

    .line 3230
    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    .line 3231
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-boolean v1, v1, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRequestedSimpleAnimations:Z

    .line 3229
    if-eqz v1, :cond_6

    .line 3232
    :cond_1
    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v1

    .line 3229
    :goto_2
    iput-boolean v1, v3, Landroid/support/v7/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    .line 3233
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-boolean v3, v3, Landroid/support/v7/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    .line 3234
    iget-boolean v3, p0, Landroid/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v3, :cond_7

    .line 3233
    :cond_2
    :goto_3
    iput-boolean v2, v1, Landroid/support/v7/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    .line 3212
    return-void

    .line 3226
    :cond_3
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    invoke-virtual {v1}, Landroid/support/v7/widget/AdapterHelper;->consumeUpdatesInOnePass()V

    goto :goto_0

    .line 3228
    :cond_4
    const/4 v0, 0x1

    .local v0, "animationTypeSupported":Z
    goto :goto_1

    .line 3232
    .end local v0    # "animationTypeSupported":Z
    :cond_5
    const/4 v1, 0x1

    goto :goto_2

    :cond_6
    move v1, v2

    .line 3229
    goto :goto_2

    .line 3235
    :cond_7
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->predictiveItemAnimationsEnabled()Z

    move-result v2

    goto :goto_3
.end method

.method private pullGlows(FFFF)V
    .locals 6
    .param p1, "x"    # F
    .param p2, "overscrollX"    # F
    .param p3, "y"    # F
    .param p4, "overscrollY"    # F

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 2055
    const/4 v0, 0x0

    .line 2056
    .local v0, "invalidate":Z
    cmpg-float v1, p2, v4

    if-gez v1, :cond_4

    .line 2057
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->ensureLeftGlow()V

    .line 2058
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    neg-float v2, p2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v3, p3, v3

    sub-float v3, v5, v3

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(FF)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2059
    const/4 v0, 0x1

    .line 2068
    :cond_0
    :goto_0
    cmpg-float v1, p4, v4

    if-gez v1, :cond_5

    .line 2069
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->ensureTopGlow()V

    .line 2070
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    neg-float v2, p4

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v3, p1, v3

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(FF)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2071
    const/4 v0, 0x1

    .line 2080
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    cmpl-float v1, p2, v4

    if-eqz v1, :cond_6

    .line 2081
    :cond_2
    :goto_2
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 2054
    :cond_3
    return-void

    .line 2061
    :cond_4
    cmpl-float v1, p2, v4

    if-lez v1, :cond_0

    .line 2062
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->ensureRightGlow()V

    .line 2063
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v2, p2, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v3, p3, v3

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(FF)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2064
    const/4 v0, 0x1

    goto :goto_0

    .line 2073
    :cond_5
    cmpl-float v1, p4, v4

    if-lez v1, :cond_1

    .line 2074
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->ensureBottomGlow()V

    .line 2075
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v2, p4, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v3, p1, v3

    sub-float v3, v5, v3

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(FF)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2076
    const/4 v0, 0x1

    goto :goto_1

    .line 2080
    :cond_6
    cmpl-float v1, p4, v4

    if-eqz v1, :cond_3

    goto :goto_2
.end method

.method private recoverFocusFromState()V
    .locals 8

    .prologue
    const-wide/16 v6, -0x1

    .line 3316
    iget-boolean v4, p0, Landroid/support/v7/widget/RecyclerView;->mPreserveFocusAfterLayout:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-nez v4, :cond_1

    .line 3317
    :cond_0
    return-void

    .line 3316
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3320
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->isFocused()Z

    move-result v4

    if-nez v4, :cond_2

    .line 3321
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    .line 3322
    .local v2, "focusedChild":Landroid/view/View;
    if-eqz v2, :cond_6

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v4, v2}, Landroid/support/v7/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 3326
    .end local v2    # "focusedChild":Landroid/view/View;
    :cond_2
    const/4 v1, 0x0

    .line 3327
    .local v1, "focusTarget":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget v4, v4, Landroid/support/v7/widget/RecyclerView$State;->mFocusedItemPosition:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_3

    .line 3328
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget v4, v4, Landroid/support/v7/widget/RecyclerView$State;->mFocusedItemPosition:I

    invoke-virtual {p0, v4}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 3330
    .end local v1    # "focusTarget":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_3
    if-nez v1, :cond_4

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-wide v4, v4, Landroid/support/v7/widget/RecyclerView$State;->mFocusedItemId:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_4

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3331
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-wide v4, v4, Landroid/support/v7/widget/RecyclerView$State;->mFocusedItemId:J

    invoke-virtual {p0, v4, v5}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForItemId(J)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 3333
    :cond_4
    if-eqz v1, :cond_7

    iget-object v4, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->hasFocus()Z

    move-result v4

    if-nez v4, :cond_7

    .line 3334
    iget-object v4, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 3339
    iget-object v3, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 3340
    .local v3, "viewToFocus":Landroid/view/View;
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget v4, v4, Landroid/support/v7/widget/RecyclerView$State;->mFocusedSubChildId:I

    int-to-long v4, v4

    cmp-long v4, v4, v6

    if-eqz v4, :cond_5

    .line 3341
    iget-object v4, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget v5, v5, Landroid/support/v7/widget/RecyclerView$State;->mFocusedSubChildId:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 3342
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->isFocusable()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 3343
    move-object v3, v0

    .line 3346
    .end local v0    # "child":Landroid/view/View;
    :cond_5
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 3315
    return-void

    .line 3323
    .end local v3    # "viewToFocus":Landroid/view/View;
    .restart local v2    # "focusedChild":Landroid/view/View;
    :cond_6
    return-void

    .line 3335
    .end local v2    # "focusedChild":Landroid/view/View;
    :cond_7
    return-void
.end method

.method private releaseGlows()V
    .locals 2

    .prologue
    .line 2086
    const/4 v0, 0x0

    .line 2087
    .local v0, "needsInvalidate":Z
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v0

    .line 2088
    .end local v0    # "needsInvalidate":Z
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v1

    or-int/2addr v0, v1

    .line 2089
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v1

    or-int/2addr v0, v1

    .line 2090
    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v1

    or-int/2addr v0, v1

    .line 2091
    :cond_3
    if-eqz v0, :cond_4

    .line 2092
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 2085
    :cond_4
    return-void
.end method

.method private resetFocusInfo()V
    .locals 4

    .prologue
    const/4 v1, -0x1

    .line 3310
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    const-wide/16 v2, -0x1

    iput-wide v2, v0, Landroid/support/v7/widget/RecyclerView$State;->mFocusedItemId:J

    .line 3311
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iput v1, v0, Landroid/support/v7/widget/RecyclerView$State;->mFocusedItemPosition:I

    .line 3312
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iput v1, v0, Landroid/support/v7/widget/RecyclerView$State;->mFocusedSubChildId:I

    .line 3309
    return-void
.end method

.method private resetTouch()V
    .locals 1

    .prologue
    .line 2898
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 2899
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 2901
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->stopNestedScroll()V

    .line 2902
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->releaseGlows()V

    .line 2897
    return-void
.end method

.method private saveFocusInfo()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 3293
    const/4 v0, 0x0

    .line 3294
    .local v0, "child":Landroid/view/View;
    iget-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->mPreserveFocusAfterLayout:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v2, :cond_0

    .line 3295
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 3298
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    if-nez v0, :cond_1

    .line 3299
    .local v1, "focusedVh":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :goto_0
    if-nez v1, :cond_2

    .line 3300
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->resetFocusInfo()V

    .line 3292
    :goto_1
    return-void

    .line 3298
    .end local v1    # "focusedVh":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_1
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    goto :goto_0

    .line 3302
    .restart local v1    # "focusedVh":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_2
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v2

    :goto_2
    iput-wide v2, v4, Landroid/support/v7/widget/RecyclerView$State;->mFocusedItemId:J

    .line 3303
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v2, :cond_4

    const/4 v2, -0x1

    :goto_3
    iput v2, v3, Landroid/support/v7/widget/RecyclerView$State;->mFocusedItemPosition:I

    .line 3305
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-object v3, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-direct {p0, v3}, Landroid/support/v7/widget/RecyclerView;->getDeepestFocusedViewWithId(Landroid/view/View;)I

    move-result v3

    iput v3, v2, Landroid/support/v7/widget/RecyclerView$State;->mFocusedSubChildId:I

    goto :goto_1

    .line 3302
    :cond_3
    const-wide/16 v2, -0x1

    goto :goto_2

    .line 3304
    :cond_4
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    goto :goto_3
.end method

.method private setAdapterInternal(Landroid/support/v7/widget/RecyclerView$Adapter;ZZ)V
    .locals 3
    .param p1, "adapter"    # Landroid/support/v7/widget/RecyclerView$Adapter;
    .param p2, "compatibleWithPrevious"    # Z
    .param p3, "removeAndRecycleViews"    # Z

    .prologue
    .line 990
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v1, :cond_0

    .line 991
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mObserver:Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 992
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v1, p0}, Landroid/support/v7/widget/RecyclerView$Adapter;->onDetachedFromRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 994
    :cond_0
    if-eqz p2, :cond_1

    if-eqz p3, :cond_4

    .line 996
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz v1, :cond_2

    .line 997
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->endAnimations()V

    .line 1003
    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v1, :cond_3

    .line 1004
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->removeAndRecycleAllViews(Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 1005
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->removeAndRecycleScrapInt(Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 1008
    :cond_3
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$Recycler;->clear()V

    .line 1010
    :cond_4
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    invoke-virtual {v1}, Landroid/support/v7/widget/AdapterHelper;->reset()V

    .line 1011
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    .line 1012
    .local v0, "oldAdapter":Landroid/support/v7/widget/RecyclerView$Adapter;
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    .line 1013
    if-eqz p1, :cond_5

    .line 1014
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mObserver:Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 1015
    invoke-virtual {p1, p0}, Landroid/support/v7/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 1017
    :cond_5
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v1, :cond_6

    .line 1018
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v1, v0, v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onAdapterChanged(Landroid/support/v7/widget/RecyclerView$Adapter;Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 1020
    :cond_6
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v1, v0, v2, p2}, Landroid/support/v7/widget/RecyclerView$Recycler;->onAdapterChanged(Landroid/support/v7/widget/RecyclerView$Adapter;Landroid/support/v7/widget/RecyclerView$Adapter;Z)V

    .line 1021
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v7/widget/RecyclerView$State;->mStructureChanged:Z

    .line 1022
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->markKnownViewsInvalid()V

    .line 989
    return-void
.end method

.method private stopScrollersInternal()V
    .locals 1

    .prologue
    .line 2026
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mViewFlinger:Landroid/support/v7/widget/RecyclerView$ViewFlinger;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->stop()V

    .line 2027
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    .line 2028
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->stopSmoothScroller()V

    .line 2025
    :cond_0
    return-void
.end method


# virtual methods
.method absorbGlows(II)V
    .locals 2
    .param p1, "velocityX"    # I
    .param p2, "velocityY"    # I

    .prologue
    .line 2116
    if-gez p1, :cond_4

    .line 2117
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->ensureLeftGlow()V

    .line 2118
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    neg-int v1, p1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onAbsorb(I)Z

    .line 2124
    :cond_0
    :goto_0
    if-gez p2, :cond_5

    .line 2125
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->ensureTopGlow()V

    .line 2126
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    neg-int v1, p2

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onAbsorb(I)Z

    .line 2132
    :cond_1
    :goto_1
    if-nez p1, :cond_2

    if-eqz p2, :cond_3

    .line 2133
    :cond_2
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 2115
    :cond_3
    return-void

    .line 2119
    :cond_4
    if-lez p1, :cond_0

    .line 2120
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->ensureRightGlow()V

    .line 2121
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->onAbsorb(I)Z

    goto :goto_0

    .line 2127
    :cond_5
    if-lez p2, :cond_1

    .line 2128
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->ensureBottomGlow()V

    .line 2129
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0, p2}, Landroid/support/v4/widget/EdgeEffectCompat;->onAbsorb(I)Z

    goto :goto_1
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 1
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
    .line 2380
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onAddFocusables(Landroid/support/v7/widget/RecyclerView;Ljava/util/ArrayList;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2379
    :goto_0
    return-void

    .line 2381
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addFocusables(Ljava/util/ArrayList;II)V

    goto :goto_0
.end method

.method public addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V
    .locals 1
    .param p1, "decor"    # Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    .prologue
    .line 1398
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;I)V

    .line 1397
    return-void
.end method

.method public addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;I)V
    .locals 3
    .param p1, "decor"    # Landroid/support/v7/widget/RecyclerView$ItemDecoration;
    .param p2, "index"    # I

    .prologue
    const/4 v2, 0x0

    .line 1369
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    .line 1370
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    const-string/jumbo v1, "Cannot add item decoration during a scroll  or layout"

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 1373
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1374
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->setWillNotDraw(Z)V

    .line 1376
    :cond_1
    if-gez p2, :cond_2

    .line 1377
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1381
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->markItemDecorInsetsDirty()V

    .line 1382
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 1368
    return-void

    .line 1379
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public addOnChildAttachStateChangeListener(Landroid/support/v7/widget/RecyclerView$OnChildAttachStateChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/support/v7/widget/RecyclerView$OnChildAttachStateChangeListener;

    .prologue
    .line 1078
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1079
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    .line 1081
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1077
    return-void
.end method

.method public addOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    .prologue
    .line 2500
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2499
    return-void
.end method

.method public addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    .prologue
    .line 1466
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1467
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    .line 1469
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1465
    return-void
.end method

.method animateAppearance(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .locals 1
    .param p1, "itemHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "preLayoutInfo"    # Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "postLayoutInfo"    # Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 3681
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 3682
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->animateAppearance(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3683
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->postAnimationRunner()V

    .line 3680
    :cond_0
    return-void
.end method

.method animateDisappearance(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .locals 1
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "preLayoutInfo"    # Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "postLayoutInfo"    # Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 3689
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->addAnimatingView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 3690
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 3691
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->animateDisappearance(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3692
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->postAnimationRunner()V

    .line 3688
    :cond_0
    return-void
.end method

.method assertInLayoutOrScroll(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 2452
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2453
    if-nez p1, :cond_0

    .line 2454
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot call this method unless RecyclerView is computing a layout or scrolling"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2457
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2451
    :cond_1
    return-void
.end method

.method assertNotInLayoutOrScroll(Ljava/lang/String;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 2470
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2471
    if-nez p1, :cond_0

    .line 2472
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot call this method while RecyclerView is computing a layout or scrolling"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2475
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2477
    :cond_1
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mDispatchScrollCounter:I

    if-lez v0, :cond_2

    .line 2478
    const-string/jumbo v0, "RecyclerView"

    const-string/jumbo v1, "Cannot call this method in a scroll callback. Scroll callbacks might be run during a measure & layout pass where you cannot change the RecyclerView data. Any method call that might change the structure of the RecyclerView or the adapter contents should be postponed to the next frame."

    .line 2482
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, ""

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 2478
    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2469
    :cond_2
    return-void
.end method

.method canReuseUpdatedViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 2
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 3992
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    .line 3993
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v1

    .line 3992
    invoke-virtual {v0, p1, v1}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->canReuseUpdatedViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/util/List;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 3818
    instance-of v0, p1, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    check-cast p1, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .end local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->checkLayoutParams(Landroid/support/v7/widget/RecyclerView$LayoutParams;)Z

    move-result v0

    :goto_0
    return v0

    .restart local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method clearOldPositions()V
    .locals 4

    .prologue
    .line 3872
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v3}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    .line 3873
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 3874
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 3875
    .local v1, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3876
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->clearOldPosition()V

    .line 3873
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3879
    .end local v1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_1
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$Recycler;->clearOldPositions()V

    .line 3871
    return-void
.end method

.method public clearOnChildAttachStateChangeListeners()V
    .locals 1

    .prologue
    .line 1101
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1102
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1100
    :cond_0
    return-void
.end method

.method public clearOnScrollListeners()V
    .locals 1

    .prologue
    .line 1487
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1488
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1486
    :cond_0
    return-void
.end method

.method public computeHorizontalScrollExtent()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1738
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v1, :cond_0

    .line 1739
    return v0

    .line 1741
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->computeHorizontalScrollExtent(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v0

    :cond_1
    return v0
.end method

.method public computeHorizontalScrollOffset()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1713
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v1, :cond_0

    .line 1714
    return v0

    .line 1716
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->computeHorizontalScrollOffset(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v0

    :cond_1
    return v0
.end method

.method public computeHorizontalScrollRange()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1761
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v1, :cond_0

    .line 1762
    return v0

    .line 1764
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->computeHorizontalScrollRange(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v0

    :cond_1
    return v0
.end method

.method public computeVerticalScrollExtent()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1810
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v1, :cond_0

    .line 1811
    return v0

    .line 1813
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->computeVerticalScrollExtent(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v0

    :cond_1
    return v0
.end method

.method public computeVerticalScrollOffset()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1786
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v1, :cond_0

    .line 1787
    return v0

    .line 1789
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->computeVerticalScrollOffset(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v0

    :cond_1
    return v0
.end method

.method public computeVerticalScrollRange()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1833
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v1, :cond_0

    .line 1834
    return v0

    .line 1836
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->computeVerticalScrollRange(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v0

    :cond_1
    return v0
.end method

.method considerReleasingGlowsOnScroll(II)V
    .locals 2
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    .line 2097
    const/4 v0, 0x0

    .line 2098
    .local v0, "needsInvalidate":Z
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2101
    .end local v0    # "needsInvalidate":Z
    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2104
    :cond_1
    :goto_1
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2107
    :cond_2
    :goto_2
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2110
    :cond_3
    :goto_3
    if-eqz v0, :cond_4

    .line 2111
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 2096
    :cond_4
    return-void

    .line 2098
    .restart local v0    # "needsInvalidate":Z
    :cond_5
    if-lez p1, :cond_0

    .line 2099
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v0

    .local v0, "needsInvalidate":Z
    goto :goto_0

    .line 2101
    .end local v0    # "needsInvalidate":Z
    :cond_6
    if-gez p1, :cond_1

    .line 2102
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v1

    or-int/2addr v0, v1

    .restart local v0    # "needsInvalidate":Z
    goto :goto_1

    .line 2104
    .end local v0    # "needsInvalidate":Z
    :cond_7
    if-lez p2, :cond_2

    .line 2105
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v1

    or-int/2addr v0, v1

    .restart local v0    # "needsInvalidate":Z
    goto :goto_2

    .line 2107
    .end local v0    # "needsInvalidate":Z
    :cond_8
    if-gez p2, :cond_3

    .line 2108
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v1

    or-int/2addr v0, v1

    .restart local v0    # "needsInvalidate":Z
    goto :goto_3
.end method

.method consumePendingUpdateOperations()V
    .locals 2

    .prologue
    .line 1581
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v0, :cond_1

    .line 1582
    :cond_0
    const-string/jumbo v0, "RV FullInvalidate"

    invoke-static {v0}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 1583
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->dispatchLayout()V

    .line 1584
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    .line 1585
    return-void

    .line 1587
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AdapterHelper;->hasPendingUpdates()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1588
    return-void

    .line 1593
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AdapterHelper;->hasAnyUpdateTypes(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    .line 1594
    const/16 v1, 0xb

    .line 1593
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AdapterHelper;->hasAnyUpdateTypes(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1608
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AdapterHelper;->hasPendingUpdates()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1609
    const-string/jumbo v0, "RV FullInvalidate"

    invoke-static {v0}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 1610
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->dispatchLayout()V

    .line 1611
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    .line 1580
    :cond_4
    :goto_0
    return-void

    .line 1595
    :cond_5
    const-string/jumbo v0, "RV PartialInvalidate"

    invoke-static {v0}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 1596
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->eatRequestLayout()V

    .line 1597
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AdapterHelper;->preProcess()V

    .line 1598
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutRequestEaten:Z

    if-nez v0, :cond_6

    .line 1599
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->hasUpdatedView()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1600
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->dispatchLayout()V

    .line 1606
    :cond_6
    :goto_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->resumeRequestLayout(Z)V

    .line 1607
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    goto :goto_0

    .line 1603
    :cond_7
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AdapterHelper;->consumePostponedUpdates()V

    goto :goto_1
.end method

.method defaultOnMeasure(II)V
    .locals 4
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I

    .prologue
    .line 3052
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    .line 3053
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getMinimumWidth(Landroid/view/View;)I

    move-result v3

    .line 3051
    invoke-static {p1, v2, v3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->chooseSize(III)I

    move-result v1

    .line 3055
    .local v1, "width":I
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    .line 3056
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v3

    .line 3054
    invoke-static {p2, v2, v3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->chooseSize(III)I

    move-result v0

    .line 3058
    .local v0, "height":I
    invoke-virtual {p0, v1, v0}, Landroid/support/v7/widget/RecyclerView;->setMeasuredDimension(II)V

    .line 3048
    return-void
.end method

.method dispatchChildAttached(Landroid/view/View;)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 6633
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 6634
    .local v2, "viewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->onChildAttachedToWindow(Landroid/view/View;)V

    .line 6635
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    .line 6636
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 6638
    :cond_0
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 6639
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 6640
    .local v0, "cnt":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 6641
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView$OnChildAttachStateChangeListener;

    invoke-interface {v3, p1}, Landroid/support/v7/widget/RecyclerView$OnChildAttachStateChangeListener;->onChildViewAttachedToWindow(Landroid/view/View;)V

    .line 6640
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 6632
    .end local v0    # "cnt":I
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method dispatchChildDetached(Landroid/view/View;)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 6619
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 6620
    .local v2, "viewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->onChildDetachedFromWindow(Landroid/view/View;)V

    .line 6621
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    .line 6622
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewDetachedFromWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 6624
    :cond_0
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 6625
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 6626
    .local v0, "cnt":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 6627
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView$OnChildAttachStateChangeListener;

    invoke-interface {v3, p1}, Landroid/support/v7/widget/RecyclerView$OnChildAttachStateChangeListener;->onChildViewDetachedFromWindow(Landroid/view/View;)V

    .line 6626
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 6618
    .end local v0    # "cnt":I
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method dispatchLayout()V
    .locals 2

    .prologue
    .line 3264
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-nez v0, :cond_0

    .line 3265
    const-string/jumbo v0, "RecyclerView"

    const-string/jumbo v1, "No adapter attached; skipping layout"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3267
    return-void

    .line 3269
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_1

    .line 3270
    const-string/jumbo v0, "RecyclerView"

    const-string/jumbo v1, "No layout manager attached; skipping layout"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3272
    return-void

    .line 3274
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/v7/widget/RecyclerView$State;->mIsMeasuring:Z

    .line 3275
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget v0, v0, Landroid/support/v7/widget/RecyclerView$State;->mLayoutStep:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 3276
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->dispatchLayoutStep1()V

    .line 3277
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->setExactMeasureSpecsFrom(Landroid/support/v7/widget/RecyclerView;)V

    .line 3278
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->dispatchLayoutStep2()V

    .line 3289
    :goto_0
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->dispatchLayoutStep3()V

    .line 3263
    return-void

    .line 3279
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AdapterHelper;->hasUpdates()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v1

    if-eq v0, v1, :cond_4

    .line 3283
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->setExactMeasureSpecsFrom(Landroid/support/v7/widget/RecyclerView;)V

    .line 3284
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->dispatchLayoutStep2()V

    goto :goto_0

    .line 3280
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 3287
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->setExactMeasureSpecsFrom(Landroid/support/v7/widget/RecyclerView;)V

    goto :goto_0
.end method

.method public dispatchNestedFling(FFZ)Z
    .locals 1
    .param p1, "velocityX"    # F
    .param p2, "velocityY"    # F
    .param p3, "consumed"    # Z

    .prologue
    .line 10262
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/NestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedFling(FFZ)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreFling(FF)Z
    .locals 1
    .param p1, "velocityX"    # F
    .param p2, "velocityY"    # F

    .prologue
    .line 10267
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/NestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedPreFling(FF)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .locals 1
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "consumed"    # [I
    .param p4, "offsetInWindow"    # [I

    .prologue
    .line 10257
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/NestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[I)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .locals 6
    .param p1, "dxConsumed"    # I
    .param p2, "dyConsumed"    # I
    .param p3, "dxUnconsumed"    # I
    .param p4, "dyUnconsumed"    # I
    .param p5, "offsetInWindow"    # [I

    .prologue
    .line 10251
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/NestedScrollingChildHelper;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[I)Z

    move-result v0

    return v0
.end method

.method dispatchOnScrollStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 4502
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v1, :cond_0

    .line 4503
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onScrollStateChanged(I)V

    .line 4508
    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->onScrollStateChanged(I)V

    .line 4511
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    if-eqz v1, :cond_1

    .line 4512
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v1, p0, p1}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    .line 4514
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 4515
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 4516
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v1, p0, p1}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    .line 4515
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4499
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method dispatchOnScrolled(II)V
    .locals 4
    .param p1, "hresult"    # I
    .param p2, "vresult"    # I

    .prologue
    .line 4462
    iget v3, p0, Landroid/support/v7/widget/RecyclerView;->mDispatchScrollCounter:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/support/v7/widget/RecyclerView;->mDispatchScrollCounter:I

    .line 4465
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollX()I

    move-result v1

    .line 4466
    .local v1, "scrollX":I
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollY()I

    move-result v2

    .line 4467
    .local v2, "scrollY":I
    invoke-virtual {p0, v1, v2, v1, v2}, Landroid/support/v7/widget/RecyclerView;->onScrollChanged(IIII)V

    .line 4470
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->onScrolled(II)V

    .line 4474
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    if-eqz v3, :cond_0

    .line 4475
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v3, p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    .line 4477
    :cond_0
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 4478
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 4479
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v3, p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    .line 4478
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4482
    .end local v0    # "i":I
    :cond_1
    iget v3, p0, Landroid/support/v7/widget/RecyclerView;->mDispatchScrollCounter:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroid/support/v7/widget/RecyclerView;->mDispatchScrollCounter:I

    .line 4461
    return-void
.end method

.method dispatchPendingImportantForAccessibilityChanges()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 10196
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_3

    .line 10197
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 10198
    .local v2, "viewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    iget-object v3, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-ne v3, p0, :cond_0

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 10199
    :cond_0
    return-void

    .line 10201
    :cond_1
    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->-get2(Landroid/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v1

    .line 10202
    .local v1, "state":I
    if-eq v1, v4, :cond_2

    .line 10204
    iget-object v3, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v3, v1}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 10205
    invoke-static {v2, v4}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->-set1(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)I

    .line 10196
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 10209
    .end local v1    # "state":I
    .end local v2    # "viewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_3
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 10195
    return-void
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1222
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 1221
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1214
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    .line 1213
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v7, 0x0

    .line 3747
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 3749
    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3750
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 3751
    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    iget-object v8, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v6, p1, p0, v8}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;->onDrawOver(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 3750
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3755
    :cond_0
    const/4 v2, 0x0

    .line 3756
    .local v2, "needsInvalidate":Z
    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v6, :cond_1

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v6}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 3764
    .end local v2    # "needsInvalidate":Z
    :cond_1
    :goto_1
    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v6, :cond_2

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v6}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 3772
    :cond_2
    :goto_2
    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v6, :cond_3

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v6}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 3781
    :cond_3
    :goto_3
    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v6, :cond_4

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v6}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v6

    if-eqz v6, :cond_10

    .line 3796
    :cond_4
    :goto_4
    if-nez v2, :cond_5

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz v6, :cond_5

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_5

    .line 3797
    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->isRunning()Z

    move-result v6

    .line 3796
    if-eqz v6, :cond_5

    .line 3798
    const/4 v2, 0x1

    .line 3801
    :cond_5
    if-eqz v2, :cond_6

    .line 3802
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 3746
    :cond_6
    return-void

    .line 3757
    .restart local v2    # "needsInvalidate":Z
    :cond_7
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 3758
    .local v4, "restore":I
    iget-boolean v6, p0, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v6, :cond_8

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v3

    .line 3759
    .local v3, "padding":I
    :goto_5
    const/high16 v6, 0x43870000    # 270.0f

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->rotate(F)V

    .line 3760
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v6

    neg-int v6, v6

    add-int/2addr v6, v3

    int-to-float v6, v6

    const/4 v8, 0x0

    invoke-virtual {p1, v6, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3761
    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v6, :cond_9

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v6, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v2

    .line 3762
    .end local v2    # "needsInvalidate":Z
    :goto_6
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_1

    .line 3758
    .end local v3    # "padding":I
    .restart local v2    # "needsInvalidate":Z
    :cond_8
    const/4 v3, 0x0

    .restart local v3    # "padding":I
    goto :goto_5

    .line 3761
    :cond_9
    const/4 v2, 0x0

    goto :goto_6

    .line 3765
    .end local v2    # "needsInvalidate":Z
    .end local v3    # "padding":I
    .end local v4    # "restore":I
    :cond_a
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 3766
    .restart local v4    # "restore":I
    iget-boolean v6, p0, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v6, :cond_b

    .line 3767
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {p1, v6, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3769
    :cond_b
    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v6, :cond_c

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v6, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v6

    :goto_7
    or-int/2addr v2, v6

    .line 3770
    .local v2, "needsInvalidate":Z
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_2

    .end local v2    # "needsInvalidate":Z
    :cond_c
    move v6, v7

    .line 3769
    goto :goto_7

    .line 3773
    .end local v4    # "restore":I
    :cond_d
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 3774
    .restart local v4    # "restore":I
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v5

    .line 3775
    .local v5, "width":I
    iget-boolean v6, p0, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v6, :cond_e

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v3

    .line 3776
    .restart local v3    # "padding":I
    :goto_8
    const/high16 v6, 0x42b40000    # 90.0f

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->rotate(F)V

    .line 3777
    neg-int v6, v3

    int-to-float v6, v6

    neg-int v8, v5

    int-to-float v8, v8

    invoke-virtual {p1, v6, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3778
    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v6, :cond_f

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v6, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v6

    :goto_9
    or-int/2addr v2, v6

    .line 3779
    .restart local v2    # "needsInvalidate":Z
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_3

    .line 3775
    .end local v2    # "needsInvalidate":Z
    .end local v3    # "padding":I
    :cond_e
    const/4 v3, 0x0

    .restart local v3    # "padding":I
    goto :goto_8

    :cond_f
    move v6, v7

    .line 3778
    goto :goto_9

    .line 3782
    .end local v3    # "padding":I
    .end local v4    # "restore":I
    .end local v5    # "width":I
    :cond_10
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 3783
    .restart local v4    # "restore":I
    const/high16 v6, 0x43340000    # 180.0f

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->rotate(F)V

    .line 3784
    iget-boolean v6, p0, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v6, :cond_12

    .line 3785
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v6

    neg-int v6, v6

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v8

    add-int/2addr v6, v8

    int-to-float v6, v6

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v8

    neg-int v8, v8

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v9

    add-int/2addr v8, v9

    int-to-float v8, v8

    invoke-virtual {p1, v6, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3789
    :goto_a
    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v6, :cond_11

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v6, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v7

    :cond_11
    or-int/2addr v2, v7

    .line 3790
    .restart local v2    # "needsInvalidate":Z
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_4

    .line 3787
    .end local v2    # "needsInvalidate":Z
    :cond_12
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v8

    neg-int v8, v8

    int-to-float v8, v8

    invoke-virtual {p1, v6, v8}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_a
.end method

.method public drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    .line 4338
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    return v0
.end method

.method eatRequestLayout()V
    .locals 2

    .prologue
    .line 1841
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mEatRequestLayout:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mEatRequestLayout:I

    .line 1842
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mEatRequestLayout:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-eqz v0, :cond_1

    .line 1840
    :cond_0
    :goto_0
    return-void

    .line 1843
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutRequestEaten:Z

    goto :goto_0
.end method

.method ensureBottomGlow()V
    .locals 4

    .prologue
    .line 2178
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v0, :cond_0

    .line 2179
    return-void

    .line 2181
    :cond_0
    new-instance v0, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 2182
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v0, :cond_1

    .line 2183
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 2184
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    .line 2183
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    .line 2177
    :goto_0
    return-void

    .line 2186
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    goto :goto_0
.end method

.method ensureLeftGlow()V
    .locals 4

    .prologue
    .line 2138
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v0, :cond_0

    .line 2139
    return-void

    .line 2141
    :cond_0
    new-instance v0, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 2142
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v0, :cond_1

    .line 2143
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 2144
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 2143
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    .line 2137
    :goto_0
    return-void

    .line 2146
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    goto :goto_0
.end method

.method ensureRightGlow()V
    .locals 4

    .prologue
    .line 2151
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v0, :cond_0

    .line 2152
    return-void

    .line 2154
    :cond_0
    new-instance v0, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 2155
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v0, :cond_1

    .line 2156
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 2157
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 2156
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    .line 2150
    :goto_0
    return-void

    .line 2159
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    goto :goto_0
.end method

.method ensureTopGlow()V
    .locals 4

    .prologue
    .line 2164
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v0, :cond_0

    .line 2165
    return-void

    .line 2167
    :cond_0
    new-instance v0, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 2168
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v0, :cond_1

    .line 2169
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 2170
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    .line 2169
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    .line 2163
    :goto_0
    return-void

    .line 2172
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    goto :goto_0
.end method

.method public findChildViewUnder(FF)Landroid/view/View;
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 4321
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v5}, Landroid/support/v7/widget/ChildHelper;->getChildCount()I

    move-result v1

    .line 4322
    .local v1, "count":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 4323
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v5, v2}, Landroid/support/v7/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4324
    .local v0, "child":Landroid/view/View;
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getTranslationX(Landroid/view/View;)F

    move-result v3

    .line 4325
    .local v3, "translationX":F
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result v4

    .line 4326
    .local v4, "translationY":F
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v3

    cmpl-float v5, p1, v5

    if-ltz v5, :cond_0

    .line 4327
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v3

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_0

    .line 4328
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v4

    cmpl-float v5, p2, v5

    if-ltz v5, :cond_0

    .line 4329
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v4

    cmpg-float v5, p2, v5

    if-gtz v5, :cond_0

    .line 4330
    return-object v0

    .line 4322
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 4333
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "translationX":F
    .end local v4    # "translationY":F
    :cond_1
    const/4 v5, 0x0

    return-object v5
.end method

.method public findContainingItemView(Landroid/view/View;)Landroid/view/View;
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 4106
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 4107
    .local v0, "parent":Landroid/view/ViewParent;
    :goto_0
    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_0

    move-object p1, v0

    .line 4108
    check-cast p1, Landroid/view/View;

    .line 4109
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 4111
    :cond_0
    if-ne v0, p0, :cond_1

    .end local p1    # "view":Landroid/view/View;
    :goto_1
    return-object p1

    .restart local p1    # "view":Landroid/view/View;
    :cond_1
    move-object p1, v1

    goto :goto_1
.end method

.method public findContainingViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 4124
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 4125
    .local v0, "itemView":Landroid/view/View;
    if-nez v0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    goto :goto_0
.end method

.method public findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 6
    .param p1, "position"    # I

    .prologue
    const/4 v5, 0x0

    .line 4235
    iget-boolean v4, p0, Landroid/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v4, :cond_0

    .line 4236
    return-object v5

    .line 4238
    :cond_0
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v4}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    .line 4240
    .local v0, "childCount":I
    const/4 v1, 0x0

    .line 4241
    .local v1, "hidden":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    const/4 v3, 0x0

    .end local v1    # "hidden":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_4

    .line 4242
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v4, v3}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 4243
    .local v2, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 4241
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4243
    :cond_2
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->getAdapterPositionFor(Landroid/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v4

    if-ne v4, p1, :cond_1

    .line 4244
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    iget-object v5, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 4245
    move-object v1, v2

    .local v1, "hidden":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    goto :goto_1

    .line 4247
    .end local v1    # "hidden":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_3
    return-object v2

    .line 4251
    .end local v2    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_4
    return-object v1
.end method

.method public findViewHolderForItemId(J)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 7
    .param p1, "id"    # J

    .prologue
    const/4 v5, 0x0

    .line 4295
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4298
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v4}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    .line 4299
    .local v0, "childCount":I
    const/4 v1, 0x0

    .line 4300
    .local v1, "hidden":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    const/4 v3, 0x0

    .end local v1    # "hidden":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_4

    .line 4301
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v4, v3}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 4302
    .local v2, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 4300
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4296
    .end local v0    # "childCount":I
    .end local v2    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .end local v3    # "i":I
    :cond_1
    return-object v5

    .line 4302
    .restart local v0    # "childCount":I
    .restart local v2    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .restart local v3    # "i":I
    :cond_2
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v4

    cmp-long v4, v4, p1

    if-nez v4, :cond_0

    .line 4303
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    iget-object v5, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 4304
    move-object v1, v2

    .local v1, "hidden":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    goto :goto_1

    .line 4306
    .end local v1    # "hidden":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_3
    return-object v2

    .line 4310
    .end local v2    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_4
    return-object v1
.end method

.method public findViewHolderForLayoutPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 4214
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForPosition(IZ)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public findViewHolderForPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1
    .param p1, "position"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4191
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForPosition(IZ)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method findViewHolderForPosition(IZ)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 6
    .param p1, "position"    # I
    .param p2, "checkNewPosition"    # Z

    .prologue
    .line 4255
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v4}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    .line 4256
    .local v0, "childCount":I
    const/4 v1, 0x0

    .line 4257
    .local v1, "hidden":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    const/4 v3, 0x0

    .end local v1    # "hidden":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_5

    .line 4258
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v4, v3}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 4259
    .local v2, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4257
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4260
    :cond_1
    if-eqz p2, :cond_3

    .line 4261
    iget v4, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    if-ne v4, p1, :cond_0

    .line 4267
    :cond_2
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    iget-object v5, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 4268
    move-object v1, v2

    .local v1, "hidden":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    goto :goto_1

    .line 4264
    .end local v1    # "hidden":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_3
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v4

    if-eq v4, p1, :cond_2

    goto :goto_1

    .line 4270
    :cond_4
    return-object v2

    .line 4277
    .end local v2    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_5
    return-object v1
.end method

.method public fling(II)Z
    .locals 7
    .param p1, "velocityX"    # I
    .param p2, "velocityY"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 1972
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v4, :cond_0

    .line 1973
    const-string/jumbo v3, "RecyclerView"

    const-string/jumbo v4, "Cannot fling without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1975
    return v6

    .line 1977
    :cond_0
    iget-boolean v4, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-eqz v4, :cond_1

    .line 1978
    return v6

    .line 1981
    :cond_1
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v1

    .line 1982
    .local v1, "canScrollHorizontal":Z
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v2

    .line 1984
    .local v2, "canScrollVertical":Z
    if-eqz v1, :cond_2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Landroid/support/v7/widget/RecyclerView;->mMinFlingVelocity:I

    if-ge v4, v5, :cond_3

    .line 1985
    :cond_2
    const/4 p1, 0x0

    .line 1987
    :cond_3
    if-eqz v2, :cond_4

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Landroid/support/v7/widget/RecyclerView;->mMinFlingVelocity:I

    if-ge v4, v5, :cond_5

    .line 1988
    :cond_4
    const/4 p2, 0x0

    .line 1990
    :cond_5
    if-nez p1, :cond_6

    if-nez p2, :cond_6

    .line 1992
    return v6

    .line 1995
    :cond_6
    int-to-float v4, p1

    int-to-float v5, p2

    invoke-virtual {p0, v4, v5}, Landroid/support/v7/widget/RecyclerView;->dispatchNestedPreFling(FF)Z

    move-result v4

    if-nez v4, :cond_9

    .line 1996
    if-nez v1, :cond_7

    move v0, v2

    .line 1997
    .local v0, "canScroll":Z
    :goto_0
    int-to-float v4, p1

    int-to-float v5, p2

    invoke-virtual {p0, v4, v5, v0}, Landroid/support/v7/widget/RecyclerView;->dispatchNestedFling(FFZ)Z

    .line 1999
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mOnFlingListener:Landroid/support/v7/widget/RecyclerView$OnFlingListener;

    if-eqz v4, :cond_8

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mOnFlingListener:Landroid/support/v7/widget/RecyclerView$OnFlingListener;

    invoke-virtual {v4, p1, p2}, Landroid/support/v7/widget/RecyclerView$OnFlingListener;->onFling(II)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 2000
    return v3

    .end local v0    # "canScroll":Z
    :cond_7
    move v0, v3

    .line 1996
    goto :goto_0

    .line 2003
    .restart local v0    # "canScroll":Z
    :cond_8
    if-eqz v0, :cond_9

    .line 2004
    iget v4, p0, Landroid/support/v7/widget/RecyclerView;->mMaxFlingVelocity:I

    neg-int v4, v4

    iget v5, p0, Landroid/support/v7/widget/RecyclerView;->mMaxFlingVelocity:I

    invoke-static {p1, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2005
    iget v4, p0, Landroid/support/v7/widget/RecyclerView;->mMaxFlingVelocity:I

    neg-int v4, v4

    iget v5, p0, Landroid/support/v7/widget/RecyclerView;->mMaxFlingVelocity:I

    invoke-static {p2, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 2006
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mViewFlinger:Landroid/support/v7/widget/RecyclerView$ViewFlinger;

    invoke-virtual {v4, p1, p2}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->fling(II)V

    .line 2007
    return v3

    .line 2010
    .end local v0    # "canScroll":Z
    :cond_9
    return v6
.end method

.method public focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 13
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I

    .prologue
    const/4 v12, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v11, 0x0

    .line 2226
    iget-object v10, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v10, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onInterceptFocusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    .line 2227
    .local v6, "result":Landroid/view/View;
    if-eqz v6, :cond_0

    .line 2228
    return-object v6

    .line 2230
    :cond_0
    iget-object v10, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v10, :cond_1

    iget-object v10, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v10, :cond_1

    .line 2231
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->isComputingLayout()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 2230
    :cond_1
    const/4 v1, 0x0

    .line 2233
    .local v1, "canRunFocusFailure":Z
    :goto_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    .line 2234
    .local v2, "ff":Landroid/view/FocusFinder;
    if-eqz v1, :cond_10

    .line 2235
    if-eq p2, v12, :cond_2

    if-ne p2, v8, :cond_10

    .line 2238
    :cond_2
    const/4 v5, 0x0

    .line 2239
    .local v5, "needsFocusFailureLayout":Z
    iget-object v10, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v10}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 2241
    if-ne p2, v12, :cond_7

    const/16 v0, 0x82

    .line 2242
    .local v0, "absDir":I
    :goto_1
    invoke-virtual {v2, p0, p1, v0}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .line 2243
    .local v4, "found":Landroid/view/View;
    if-nez v4, :cond_8

    const/4 v5, 0x1

    .line 2245
    .end local v0    # "absDir":I
    .end local v4    # "found":Landroid/view/View;
    :cond_3
    :goto_2
    if-nez v5, :cond_4

    iget-object v10, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v10}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 2246
    iget-object v10, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v10}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getLayoutDirection()I

    move-result v10

    if-ne v10, v8, :cond_9

    const/4 v7, 0x1

    .line 2247
    .local v7, "rtl":Z
    :goto_3
    if-ne p2, v12, :cond_a

    :goto_4
    xor-int/2addr v8, v7

    if-eqz v8, :cond_b

    .line 2248
    const/16 v0, 0x42

    .line 2249
    .restart local v0    # "absDir":I
    :goto_5
    invoke-virtual {v2, p0, p1, v0}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .line 2250
    .restart local v4    # "found":Landroid/view/View;
    if-nez v4, :cond_c

    const/4 v5, 0x1

    .line 2252
    .end local v0    # "absDir":I
    .end local v4    # "found":Landroid/view/View;
    .end local v7    # "rtl":Z
    :cond_4
    :goto_6
    if-eqz v5, :cond_e

    .line 2253
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->consumePendingUpdateOperations()V

    .line 2254
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    .line 2255
    .local v3, "focusedItemView":Landroid/view/View;
    if-nez v3, :cond_d

    .line 2257
    return-object v11

    .line 2231
    .end local v1    # "canRunFocusFailure":Z
    .end local v2    # "ff":Landroid/view/FocusFinder;
    .end local v3    # "focusedItemView":Landroid/view/View;
    .end local v5    # "needsFocusFailureLayout":Z
    :cond_5
    iget-boolean v10, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-eqz v10, :cond_6

    const/4 v1, 0x0

    .restart local v1    # "canRunFocusFailure":Z
    goto :goto_0

    .end local v1    # "canRunFocusFailure":Z
    :cond_6
    const/4 v1, 0x1

    .restart local v1    # "canRunFocusFailure":Z
    goto :goto_0

    .line 2241
    .restart local v2    # "ff":Landroid/view/FocusFinder;
    .restart local v5    # "needsFocusFailureLayout":Z
    :cond_7
    const/16 v0, 0x21

    goto :goto_1

    .line 2243
    .restart local v0    # "absDir":I
    .restart local v4    # "found":Landroid/view/View;
    :cond_8
    const/4 v5, 0x0

    goto :goto_2

    .line 2246
    .end local v0    # "absDir":I
    .end local v4    # "found":Landroid/view/View;
    :cond_9
    const/4 v7, 0x0

    .restart local v7    # "rtl":Z
    goto :goto_3

    :cond_a
    move v8, v9

    .line 2247
    goto :goto_4

    .line 2248
    :cond_b
    const/16 v0, 0x11

    goto :goto_5

    .line 2250
    .restart local v0    # "absDir":I
    .restart local v4    # "found":Landroid/view/View;
    :cond_c
    const/4 v5, 0x0

    goto :goto_6

    .line 2259
    .end local v0    # "absDir":I
    .end local v4    # "found":Landroid/view/View;
    .end local v7    # "rtl":Z
    .restart local v3    # "focusedItemView":Landroid/view/View;
    :cond_d
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->eatRequestLayout()V

    .line 2260
    iget-object v8, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v10, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    iget-object v11, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v8, p1, p2, v10, v11}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onFocusSearchFailed(Landroid/view/View;ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;

    .line 2261
    invoke-virtual {p0, v9}, Landroid/support/v7/widget/RecyclerView;->resumeRequestLayout(Z)V

    .line 2263
    .end local v3    # "focusedItemView":Landroid/view/View;
    :cond_e
    invoke-virtual {v2, p0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    .line 2278
    .end local v5    # "needsFocusFailureLayout":Z
    :cond_f
    :goto_7
    invoke-direct {p0, p1, v6, p2}, Landroid/support/v7/widget/RecyclerView;->isPreferredNextFocus(Landroid/view/View;Landroid/view/View;I)Z

    move-result v8

    if-eqz v8, :cond_12

    .end local v6    # "result":Landroid/view/View;
    :goto_8
    return-object v6

    .line 2265
    .restart local v6    # "result":Landroid/view/View;
    :cond_10
    invoke-virtual {v2, p0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    .line 2266
    if-nez v6, :cond_f

    if-eqz v1, :cond_f

    .line 2267
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->consumePendingUpdateOperations()V

    .line 2268
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    .line 2269
    .restart local v3    # "focusedItemView":Landroid/view/View;
    if-nez v3, :cond_11

    .line 2271
    return-object v11

    .line 2273
    :cond_11
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->eatRequestLayout()V

    .line 2274
    iget-object v8, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v10, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    iget-object v11, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v8, p1, p2, v10, v11}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onFocusSearchFailed(Landroid/view/View;ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object v6

    .line 2275
    invoke-virtual {p0, v9}, Landroid/support/v7/widget/RecyclerView;->resumeRequestLayout(Z)V

    goto :goto_7

    .line 2279
    .end local v3    # "focusedItemView":Landroid/view/View;
    :cond_12
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    goto :goto_8
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    .line 3823
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_0

    .line 3824
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "RecyclerView has no LayoutManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3826
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->generateDefaultLayoutParams()Landroid/support/v7/widget/RecyclerView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 3831
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_0

    .line 3832
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "RecyclerView has no LayoutManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3834
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/v7/widget/RecyclerView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 3839
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_0

    .line 3840
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "RecyclerView has no LayoutManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3842
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/RecyclerView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;
    .locals 1

    .prologue
    .line 1032
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    return-object v0
.end method

.method getAdapterPositionFor(Landroid/support/v7/widget/RecyclerView$ViewHolder;)I
    .locals 2
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 10213
    const/16 v0, 0x20c

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->hasAnyOfTheFlags(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 10215
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isBound()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10218
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    iget v1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AdapterHelper;->applyPendingUpdatesToPosition(I)I

    move-result v0

    return v0

    .line 10216
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getBaseline()I
    .locals 1

    .prologue
    .line 1059
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    .line 1060
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getBaseline()I

    move-result v0

    return v0

    .line 1062
    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->getBaseline()I

    move-result v0

    return v0
.end method

.method getChangedHolderKey(Landroid/support/v7/widget/RecyclerView$ViewHolder;)J
    .locals 2
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 3676
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    iget v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    int-to-long v0, v0

    goto :goto_0
.end method

.method public getChildAdapterPosition(Landroid/view/View;)I
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 4152
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 4153
    .local v0, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 1
    .param p1, "childCount"    # I
    .param p2, "i"    # I

    .prologue
    .line 12006
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildDrawingOrderCallback:Landroid/support/v7/widget/RecyclerView$ChildDrawingOrderCallback;

    if-nez v0, :cond_0

    .line 12007
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->getChildDrawingOrder(II)I

    move-result v0

    return v0

    .line 12009
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildDrawingOrderCallback:Landroid/support/v7/widget/RecyclerView$ChildDrawingOrderCallback;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$ChildDrawingOrderCallback;->onGetChildDrawingOrder(II)I

    move-result v0

    return v0
.end method

.method public getChildItemId(Landroid/view/View;)J
    .locals 4
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const-wide/16 v2, -0x1

    .line 4178
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4181
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 4182
    .local v0, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v2

    :cond_0
    return-wide v2

    .line 4179
    .end local v0    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_1
    return-wide v2
.end method

.method public getChildLayoutPosition(Landroid/view/View;)I
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 4167
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 4168
    .local v0, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getChildPosition(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4142
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 4
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 4083
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 4084
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    .line 4085
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "View "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is not a direct child of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4088
    :cond_0
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    return-object v1
.end method

.method public getClipToPadding()Z
    .locals 1

    .prologue
    .line 907
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    return v0
.end method

.method public getCompatAccessibilityDelegate()Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;
    .locals 1

    .prologue
    .line 599
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAccessibilityDelegate:Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;

    return-object v0
.end method

.method public getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "outBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 4400
    invoke-static {p1, p2}, Landroid/support/v7/widget/RecyclerView;->getDecoratedBoundsWithMarginsInt(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 4399
    return-void
.end method

.method public getItemAnimator()Landroid/support/v7/widget/RecyclerView$ItemAnimator;
    .locals 1

    .prologue
    .line 3188
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    return-object v0
.end method

.method getItemDecorInsetsForChild(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 8
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    .line 4413
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 4414
    .local v3, "lp":Landroid/support/v7/widget/RecyclerView$LayoutParams;
    iget-boolean v4, v3, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    if-nez v4, :cond_0

    .line 4415
    iget-object v4, v3, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    return-object v4

    .line 4418
    :cond_0
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->isItemChanged()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->isViewInvalid()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 4420
    :cond_1
    iget-object v4, v3, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    return-object v4

    .line 4422
    :cond_2
    iget-object v2, v3, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 4423
    .local v2, "insets":Landroid/graphics/Rect;
    invoke-virtual {v2, v7, v7, v7, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 4424
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4425
    .local v0, "decorCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 4426
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v7, v7, v7, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 4427
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v4, v5, p1, p0, v6}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 4428
    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->left:I

    .line 4429
    iget v4, v2, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->top:I

    .line 4430
    iget v4, v2, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->right:I

    .line 4431
    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->bottom:I

    .line 4425
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4433
    :cond_3
    iput-boolean v7, v3, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 4434
    return-object v2
.end method

.method public getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .locals 1

    .prologue
    .line 1276
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    return-object v0
.end method

.method public getMaxFlingVelocity()I
    .locals 1

    .prologue
    .line 2048
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mMaxFlingVelocity:I

    return v0
.end method

.method public getMinFlingVelocity()I
    .locals 1

    .prologue
    .line 2038
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mMinFlingVelocity:I

    return v0
.end method

.method public getOnFlingListener()Landroid/support/v7/widget/RecyclerView$OnFlingListener;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 1178
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mOnFlingListener:Landroid/support/v7/widget/RecyclerView$OnFlingListener;

    return-object v0
.end method

.method public getPreserveFocusAfterLayout()Z
    .locals 1

    .prologue
    .line 4055
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mPreserveFocusAfterLayout:Z

    return v0
.end method

.method public getRecycledViewPool()Landroid/support/v7/widget/RecyclerView$RecycledViewPool;
    .locals 1

    .prologue
    .line 1288
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Recycler;->getRecycledViewPool()Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    move-result-object v0

    return-object v0
.end method

.method public getScrollState()I
    .locals 1

    .prologue
    .line 1336
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollState:I

    return v0
.end method

.method public hasFixedSize()Z
    .locals 1

    .prologue
    .line 879
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mHasFixedSize:Z

    return v0
.end method

.method public hasNestedScrollingParent()Z
    .locals 1

    .prologue
    .line 10245
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/NestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingChildHelper;->hasNestedScrollingParent()Z

    move-result v0

    return v0
.end method

.method public hasPendingAdapterUpdates()Z
    .locals 1

    .prologue
    .line 4535
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-nez v0, :cond_0

    .line 4536
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AdapterHelper;->hasPendingUpdates()Z

    move-result v0

    .line 4535
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method initAdapterManager()V
    .locals 2

    .prologue
    .line 779
    new-instance v0, Landroid/support/v7/widget/AdapterHelper;

    new-instance v1, Landroid/support/v7/widget/RecyclerView$6;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/RecyclerView$6;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    invoke-direct {v0, v1}, Landroid/support/v7/widget/AdapterHelper;-><init>(Landroid/support/v7/widget/AdapterHelper$Callback;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    .line 778
    return-void
.end method

.method invalidateGlows()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2191
    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 2190
    return-void
.end method

.method public invalidateItemDecorations()V
    .locals 2

    .prologue
    .line 4032
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 4033
    return-void

    .line 4035
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_1

    .line 4036
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    const-string/jumbo v1, "Cannot invalidate item decorations during a scroll or layout"

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 4039
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->markItemDecorInsetsDirty()V

    .line 4040
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 4031
    return-void
.end method

.method isAccessibilityEnabled()Z
    .locals 1

    .prologue
    .line 3110
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAnimating()Z
    .locals 1

    .prologue
    .line 3854
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->isRunning()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAttachedToWindow()Z
    .locals 1

    .prologue
    .line 2441
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mIsAttached:Z

    return v0
.end method

.method public isComputingLayout()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 3144
    iget v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutOrScrollCounter:I

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isLayoutFrozen()Z
    .locals 1

    .prologue
    .line 1929
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    return v0
.end method

.method public isNestedScrollingEnabled()Z
    .locals 1

    .prologue
    .line 10230
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/NestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v0

    return v0
.end method

.method jumpToPositionForSmoothScroller(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1515
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_0

    .line 1516
    return-void

    .line 1518
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->scrollToPosition(I)V

    .line 1519
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->awakenScrollBars()Z

    .line 1514
    return-void
.end method

.method markItemDecorInsetsDirty()V
    .locals 5

    .prologue
    .line 3737
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v3}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v1

    .line 3738
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 3739
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3740
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 3738
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3742
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$Recycler;->markItemDecorInsetsDirty()V

    .line 3736
    return-void
.end method

.method markKnownViewsInvalid()V
    .locals 4

    .prologue
    .line 4016
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v3}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    .line 4017
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 4018
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 4019
    .local v1, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4017
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4020
    :cond_1
    const/4 v3, 0x6

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->addFlags(I)V

    goto :goto_1

    .line 4023
    .end local v1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->markItemDecorInsetsDirty()V

    .line 4024
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$Recycler;->markKnownViewsInvalid()V

    .line 4015
    return-void
.end method

.method public offsetChildrenHorizontal(I)V
    .locals 3
    .param p1, "dx"    # I

    .prologue
    .line 4386
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v2}, Landroid/support/v7/widget/ChildHelper;->getChildCount()I

    move-result v0

    .line 4387
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 4388
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 4387
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4385
    :cond_0
    return-void
.end method

.method public offsetChildrenVertical(I)V
    .locals 3
    .param p1, "dy"    # I

    .prologue
    .line 4348
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v2}, Landroid/support/v7/widget/ChildHelper;->getChildCount()I

    move-result v0

    .line 4349
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 4350
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 4349
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4347
    :cond_0
    return-void
.end method

.method offsetPositionRecordsForInsert(II)V
    .locals 5
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 3917
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v3}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    .line 3918
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 3919
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 3920
    .local v1, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3918
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3920
    :cond_1
    iget v3, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    if-lt v3, p1, :cond_0

    .line 3925
    const/4 v3, 0x0

    invoke-virtual {v1, p2, v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    .line 3926
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/support/v7/widget/RecyclerView$State;->mStructureChanged:Z

    goto :goto_1

    .line 3929
    .end local v1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_2
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v3, p1, p2}, Landroid/support/v7/widget/RecyclerView$Recycler;->offsetPositionRecordsForInsert(II)V

    .line 3930
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 3916
    return-void
.end method

.method offsetPositionRecordsForMove(II)V
    .locals 9
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    const/4 v8, 0x0

    .line 3883
    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v6}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    .line 3885
    .local v0, "childCount":I
    if-ge p1, p2, :cond_1

    .line 3886
    move v5, p1

    .line 3887
    .local v5, "start":I
    move v1, p2

    .line 3888
    .local v1, "end":I
    const/4 v4, -0x1

    .line 3895
    .local v4, "inBetweenOffset":I
    :goto_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_4

    .line 3896
    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v6, v3}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 3897
    .local v2, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    if-eqz v2, :cond_0

    iget v6, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    if-ge v6, v5, :cond_2

    .line 3895
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3890
    .end local v1    # "end":I
    .end local v2    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .end local v3    # "i":I
    .end local v4    # "inBetweenOffset":I
    .end local v5    # "start":I
    :cond_1
    move v5, p2

    .line 3891
    .restart local v5    # "start":I
    move v1, p1

    .line 3892
    .restart local v1    # "end":I
    const/4 v4, 0x1

    .restart local v4    # "inBetweenOffset":I
    goto :goto_0

    .line 3897
    .restart local v2    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .restart local v3    # "i":I
    :cond_2
    iget v6, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    if-gt v6, v1, :cond_0

    .line 3904
    iget v6, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    if-ne v6, p1, :cond_3

    .line 3905
    sub-int v6, p2, p1

    invoke-virtual {v2, v6, v8}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    .line 3910
    :goto_3
    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    const/4 v7, 0x1

    iput-boolean v7, v6, Landroid/support/v7/widget/RecyclerView$State;->mStructureChanged:Z

    goto :goto_2

    .line 3907
    :cond_3
    invoke-virtual {v2, v4, v8}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    goto :goto_3

    .line 3912
    .end local v2    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_4
    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v6, p1, p2}, Landroid/support/v7/widget/RecyclerView$Recycler;->offsetPositionRecordsForMove(II)V

    .line 3913
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 3882
    return-void
.end method

.method offsetPositionRecordsForRemove(IIZ)V
    .locals 7
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I
    .param p3, "applyToPreLayout"    # Z

    .prologue
    const/4 v6, 0x1

    .line 3935
    add-int v3, p1, p2

    .line 3936
    .local v3, "positionEnd":I
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v4}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    .line 3937
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 3938
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v4, v2}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 3939
    .local v1, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3937
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3940
    :cond_1
    iget v4, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    if-lt v4, v3, :cond_2

    .line 3946
    neg-int v4, p2

    invoke-virtual {v1, v4, p3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    .line 3947
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iput-boolean v6, v4, Landroid/support/v7/widget/RecyclerView$State;->mStructureChanged:Z

    goto :goto_1

    .line 3948
    :cond_2
    iget v4, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    if-lt v4, p1, :cond_0

    .line 3953
    add-int/lit8 v4, p1, -0x1

    neg-int v5, p2

    invoke-virtual {v1, v4, v5, p3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->flagRemovedAndOffsetPosition(IIZ)V

    .line 3955
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iput-boolean v6, v4, Landroid/support/v7/widget/RecyclerView$State;->mStructureChanged:Z

    goto :goto_1

    .line 3959
    .end local v1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_3
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v4, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$Recycler;->offsetPositionRecordsForRemove(IIZ)V

    .line 3960
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 3934
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2397
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 2398
    iput v4, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutOrScrollCounter:I

    .line 2399
    iput-boolean v3, p0, Landroid/support/v7/widget/RecyclerView;->mIsAttached:Z

    .line 2400
    iget-boolean v5, p0, Landroid/support/v7/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->isLayoutRequested()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    move v3, v4

    :cond_1
    iput-boolean v3, p0, Landroid/support/v7/widget/RecyclerView;->mFirstLayoutComplete:Z

    .line 2401
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v3, :cond_2

    .line 2402
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v3, p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->dispatchAttachedToWindow(Landroid/support/v7/widget/RecyclerView;)V

    .line 2404
    :cond_2
    iput-boolean v4, p0, Landroid/support/v7/widget/RecyclerView;->mPostedAnimatorRunner:Z

    .line 2405
    sget-boolean v3, Landroid/support/v7/widget/RecyclerView;->ALLOW_PREFETCHING:Z

    if-eqz v3, :cond_4

    sget-wide v4, Landroid/support/v7/widget/RecyclerView;->sFrameIntervalNanos:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_4

    .line 2407
    const/high16 v2, 0x42700000    # 60.0f

    .line 2408
    .local v2, "refreshRate":F
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getDisplay(Landroid/view/View;)Landroid/view/Display;

    move-result-object v0

    .line 2409
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->isInEditMode()Z

    move-result v3

    if-nez v3, :cond_3

    if-eqz v0, :cond_3

    .line 2410
    invoke-virtual {v0}, Landroid/view/Display;->getRefreshRate()F

    move-result v1

    .line 2411
    .local v1, "displayRefreshRate":F
    const/high16 v3, 0x41f00000    # 30.0f

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_3

    .line 2413
    move v2, v1

    .line 2416
    .end local v1    # "displayRefreshRate":F
    :cond_3
    const v3, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v3, v2

    float-to-long v4, v3

    sput-wide v4, Landroid/support/v7/widget/RecyclerView;->sFrameIntervalNanos:J

    .line 2396
    .end local v0    # "display":Landroid/view/Display;
    .end local v2    # "refreshRate":F
    :cond_4
    return-void
.end method

.method public onChildAttachedToWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 4364
    return-void
.end method

.method public onChildDetachedFromWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 4376
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 2422
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 2423
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_0

    .line 2424
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->endAnimations()V

    .line 2426
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->stopScroll()V

    .line 2427
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mIsAttached:Z

    .line 2428
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_1

    .line 2429
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->dispatchDetachedFromWindow(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 2431
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2432
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimatorRunner:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2433
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    invoke-virtual {v0}, Landroid/support/v7/widget/ViewInfoStore;->onDetach()V

    .line 2421
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 3808
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 3810
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3811
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 3812
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v2, p1, p0, v3}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;->onDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 3811
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3807
    :cond_0
    return-void
.end method

.method onEnterLayoutOrScroll()V
    .locals 1

    .prologue
    .line 3093
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutOrScrollCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutOrScrollCounter:I

    .line 3092
    return-void
.end method

.method onExitLayoutOrScroll()V
    .locals 2

    .prologue
    .line 3097
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutOrScrollCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutOrScrollCounter:I

    .line 3098
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutOrScrollCounter:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 3103
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutOrScrollCounter:I

    .line 3104
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->dispatchContentChangedIfNecessary()V

    .line 3105
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->dispatchPendingImportantForAccessibilityChanges()V

    .line 3096
    :cond_0
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 2923
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v3, :cond_0

    .line 2924
    return v5

    .line 2926
    :cond_0
    iget-boolean v3, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-eqz v3, :cond_1

    .line 2927
    return v5

    .line 2929
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v3

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_3

    .line 2930
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 2932
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2936
    const/16 v3, 0x9

    .line 2935
    invoke-static {p1, v3}, Landroid/support/v4/view/MotionEventCompat;->getAxisValue(Landroid/view/MotionEvent;I)F

    move-result v3

    neg-float v2, v3

    .line 2940
    .local v2, "vScroll":F
    :goto_0
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2942
    const/16 v3, 0xa

    .line 2941
    invoke-static {p1, v3}, Landroid/support/v4/view/MotionEventCompat;->getAxisValue(Landroid/view/MotionEvent;I)F

    move-result v0

    .line 2947
    .local v0, "hScroll":F
    :goto_1
    cmpl-float v3, v2, v6

    if-nez v3, :cond_2

    cmpl-float v3, v0, v6

    if-eqz v3, :cond_3

    .line 2948
    :cond_2
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollFactor()F

    move-result v1

    .line 2949
    .local v1, "scrollFactor":F
    mul-float v3, v0, v1

    float-to-int v3, v3

    .line 2950
    mul-float v4, v2, v1

    float-to-int v4, v4

    .line 2949
    invoke-virtual {p0, v3, v4, p1}, Landroid/support/v7/widget/RecyclerView;->scrollByInternal(IILandroid/view/MotionEvent;)Z

    .line 2954
    .end local v0    # "hScroll":F
    .end local v1    # "scrollFactor":F
    .end local v2    # "vScroll":F
    :cond_3
    return v5

    .line 2938
    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "vScroll":F
    goto :goto_0

    .line 2944
    :cond_5
    const/4 v0, 0x0

    .restart local v0    # "hScroll":F
    goto :goto_1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 19
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 2565
    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-eqz v15, :cond_0

    .line 2568
    const/4 v15, 0x0

    return v15

    .line 2570
    :cond_0
    invoke-direct/range {p0 .. p1}, Landroid/support/v7/widget/RecyclerView;->dispatchOnItemTouchIntercept(Landroid/view/MotionEvent;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 2571
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->cancelTouch()V

    .line 2572
    const/4 v15, 0x1

    return v15

    .line 2575
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v15, :cond_2

    .line 2576
    const/4 v15, 0x0

    return v15

    .line 2579
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v15}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v3

    .line 2580
    .local v3, "canScrollHorizontally":Z
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v15}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v4

    .line 2582
    .local v4, "canScrollVertically":Z
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v15, :cond_3

    .line 2583
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2585
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2587
    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v1

    .line 2588
    .local v1, "action":I
    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v2

    .line 2590
    .local v2, "actionIndex":I
    packed-switch v1, :pswitch_data_0

    .line 2702
    :cond_4
    :goto_0
    :pswitch_0
    move-object/from16 v0, p0

    iget v15, v0, Landroid/support/v7/widget/RecyclerView;->mScrollState:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_13

    const/4 v15, 0x1

    :goto_1
    return v15

    .line 2593
    :pswitch_1
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/v7/widget/RecyclerView;->mNumTouchMoveEvent:I

    .line 2595
    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/support/v7/widget/RecyclerView;->mIgnoreMotionEventTillDown:Z

    if-eqz v15, :cond_5

    .line 2596
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/support/v7/widget/RecyclerView;->mIgnoreMotionEventTillDown:Z

    .line 2598
    :cond_5
    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    .line 2599
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v15

    const/high16 v16, 0x3f000000    # 0.5f

    add-float v15, v15, v16

    float-to-int v15, v15

    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/v7/widget/RecyclerView;->mLastTouchX:I

    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/v7/widget/RecyclerView;->mInitialTouchX:I

    .line 2600
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v15

    const/high16 v16, 0x3f000000    # 0.5f

    add-float v15, v15, v16

    float-to-int v15, v15

    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/v7/widget/RecyclerView;->mLastTouchY:I

    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/v7/widget/RecyclerView;->mInitialTouchY:I

    .line 2602
    move-object/from16 v0, p0

    iget v15, v0, Landroid/support/v7/widget/RecyclerView;->mScrollState:I

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_6

    .line 2603
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v15

    const/16 v16, 0x1

    invoke-interface/range {v15 .. v16}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2604
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    .line 2608
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/v7/widget/RecyclerView;->mNestedOffsets:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mNestedOffsets:[I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x1

    aput v17, v16, v18

    const/16 v16, 0x0

    const/16 v17, 0x0

    aput v16, v15, v17

    .line 2610
    const/4 v10, 0x0

    .line 2611
    .local v10, "nestedScrollAxis":I
    if-eqz v3, :cond_7

    .line 2612
    const/4 v10, 0x1

    .line 2614
    :cond_7
    if-eqz v4, :cond_8

    .line 2615
    or-int/lit8 v10, v10, 0x2

    .line 2617
    :cond_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/support/v7/widget/RecyclerView;->startNestedScroll(I)Z

    goto/16 :goto_0

    .line 2622
    .end local v10    # "nestedScrollAxis":I
    :pswitch_2
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/v7/widget/RecyclerView;->mNumTouchMoveEvent:I

    .line 2624
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    .line 2625
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v15

    const/high16 v16, 0x3f000000    # 0.5f

    add-float v15, v15, v16

    float-to-int v15, v15

    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/v7/widget/RecyclerView;->mLastTouchX:I

    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/v7/widget/RecyclerView;->mInitialTouchX:I

    .line 2626
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v15

    const/high16 v16, 0x3f000000    # 0.5f

    add-float v15, v15, v16

    float-to-int v15, v15

    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/v7/widget/RecyclerView;->mLastTouchY:I

    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/v7/widget/RecyclerView;->mInitialTouchY:I

    goto/16 :goto_0

    .line 2631
    :pswitch_3
    move-object/from16 v0, p0

    iget v15, v0, Landroid/support/v7/widget/RecyclerView;->mNumTouchMoveEvent:I

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/v7/widget/RecyclerView;->mNumTouchMoveEvent:I

    .line 2633
    move-object/from16 v0, p0

    iget v15, v0, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v7

    .line 2634
    .local v7, "index":I
    if-gez v7, :cond_9

    .line 2635
    const-string/jumbo v15, "RecyclerView"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Error processing scroll; pointer index for id "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 2636
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    move/from16 v17, v0

    .line 2635
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 2636
    const-string/jumbo v17, " not found. Did any MotionEvents get skipped?"

    .line 2635
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2637
    const/4 v15, 0x0

    return v15

    .line 2640
    :cond_9
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v15

    const/high16 v16, 0x3f000000    # 0.5f

    add-float v15, v15, v16

    float-to-int v13, v15

    .line 2641
    .local v13, "x":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v15

    const/high16 v16, 0x3f000000    # 0.5f

    add-float v15, v15, v16

    float-to-int v14, v15

    .line 2642
    .local v14, "y":I
    move-object/from16 v0, p0

    iget v15, v0, Landroid/support/v7/widget/RecyclerView;->mScrollState:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_4

    .line 2643
    move-object/from16 v0, p0

    iget v15, v0, Landroid/support/v7/widget/RecyclerView;->mInitialTouchX:I

    sub-int v5, v13, v15

    .line 2644
    .local v5, "dx":I
    move-object/from16 v0, p0

    iget v15, v0, Landroid/support/v7/widget/RecyclerView;->mInitialTouchY:I

    sub-int v6, v14, v15

    .line 2645
    .local v6, "dy":I
    const/4 v12, 0x0

    .line 2647
    .local v12, "startScroll":Z
    const/4 v8, 0x0

    .line 2648
    .local v8, "isFarEnoughX":Z
    const/4 v9, 0x0

    .line 2651
    .local v9, "isFarEnoughY":Z
    move-object/from16 v0, p0

    iget v15, v0, Landroid/support/v7/widget/RecyclerView;->mNumTouchMoveEvent:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_e

    .line 2652
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/RecyclerView;->mMoveAcceleration:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-le v15, v0, :cond_c

    const/4 v8, 0x1

    .line 2653
    :goto_2
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/RecyclerView;->mMoveAcceleration:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-le v15, v0, :cond_d

    const/4 v9, 0x1

    .line 2654
    :goto_3
    move-object/from16 v0, p0

    iget v11, v0, Landroid/support/v7/widget/RecyclerView;->mMoveAcceleration:I

    .line 2665
    .local v11, "realTouchSlop":I
    :goto_4
    if-eqz v3, :cond_a

    if-eqz v8, :cond_a

    .line 2666
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/RecyclerView;->mInitialTouchX:I

    move/from16 v16, v0

    if-gez v5, :cond_11

    const/4 v15, -0x1

    :goto_5
    mul-int/2addr v15, v11

    add-int v15, v15, v16

    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/v7/widget/RecyclerView;->mLastTouchX:I

    .line 2667
    const/4 v12, 0x1

    .line 2670
    :cond_a
    if-eqz v4, :cond_b

    if-eqz v9, :cond_b

    .line 2671
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/RecyclerView;->mInitialTouchY:I

    move/from16 v16, v0

    if-gez v6, :cond_12

    const/4 v15, -0x1

    :goto_6
    mul-int/2addr v15, v11

    add-int v15, v15, v16

    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/v7/widget/RecyclerView;->mLastTouchY:I

    .line 2672
    const/4 v12, 0x1

    .line 2674
    :cond_b
    if-eqz v12, :cond_4

    .line 2675
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    goto/16 :goto_0

    .line 2652
    .end local v11    # "realTouchSlop":I
    :cond_c
    const/4 v8, 0x0

    goto :goto_2

    .line 2653
    :cond_d
    const/4 v9, 0x0

    goto :goto_3

    .line 2656
    :cond_e
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/RecyclerView;->mTouchSlop:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-le v15, v0, :cond_f

    const/4 v8, 0x1

    .line 2657
    :goto_7
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/RecyclerView;->mTouchSlop:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-le v15, v0, :cond_10

    const/4 v9, 0x1

    .line 2658
    :goto_8
    move-object/from16 v0, p0

    iget v11, v0, Landroid/support/v7/widget/RecyclerView;->mTouchSlop:I

    .restart local v11    # "realTouchSlop":I
    goto :goto_4

    .line 2656
    .end local v11    # "realTouchSlop":I
    :cond_f
    const/4 v8, 0x0

    goto :goto_7

    .line 2657
    :cond_10
    const/4 v9, 0x0

    goto :goto_8

    .line 2666
    .restart local v11    # "realTouchSlop":I
    :cond_11
    const/4 v15, 0x1

    goto :goto_5

    .line 2671
    :cond_12
    const/4 v15, 0x1

    goto :goto_6

    .line 2682
    .end local v5    # "dx":I
    .end local v6    # "dy":I
    .end local v7    # "index":I
    .end local v8    # "isFarEnoughX":Z
    .end local v9    # "isFarEnoughY":Z
    .end local v11    # "realTouchSlop":I
    .end local v12    # "startScroll":Z
    .end local v13    # "x":I
    .end local v14    # "y":I
    :pswitch_4
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/v7/widget/RecyclerView;->mNumTouchMoveEvent:I

    .line 2684
    invoke-direct/range {p0 .. p1}, Landroid/support/v7/widget/RecyclerView;->onPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 2689
    :pswitch_5
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/v7/widget/RecyclerView;->mNumTouchMoveEvent:I

    .line 2691
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v15}, Landroid/view/VelocityTracker;->clear()V

    .line 2692
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->stopNestedScroll()V

    goto/16 :goto_0

    .line 2697
    :pswitch_6
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/v7/widget/RecyclerView;->mNumTouchMoveEvent:I

    .line 2699
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->cancelTouch()V

    goto/16 :goto_0

    .line 2702
    :cond_13
    const/4 v15, 0x0

    goto/16 :goto_1

    .line 2590
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 3721
    const-string/jumbo v0, "RV OnLayout"

    invoke-static {v0}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 3722
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->dispatchLayout()V

    .line 3723
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    .line 3724
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mFirstLayoutComplete:Z

    .line 3720
    return-void
.end method

.method protected onMeasure(II)V
    .locals 9
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2976
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v3, :cond_0

    .line 2977
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->defaultOnMeasure(II)V

    .line 2978
    return-void

    .line 2980
    :cond_0
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-boolean v3, v3, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mAutoMeasure:Z

    if-eqz v3, :cond_7

    .line 2981
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 2982
    .local v2, "widthMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 2983
    .local v0, "heightMode":I
    if-ne v2, v8, :cond_3

    .line 2984
    if-ne v0, v8, :cond_2

    const/4 v1, 0x1

    .line 2985
    .local v1, "skipMeasure":Z
    :goto_0
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v3, v4, v5, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onMeasure(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;II)V

    .line 2986
    if-nez v1, :cond_1

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-nez v3, :cond_4

    .line 2987
    :cond_1
    return-void

    .line 2984
    .end local v1    # "skipMeasure":Z
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "skipMeasure":Z
    goto :goto_0

    .line 2983
    .end local v1    # "skipMeasure":Z
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "skipMeasure":Z
    goto :goto_0

    .line 2989
    :cond_4
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget v3, v3, Landroid/support/v7/widget/RecyclerView$State;->mLayoutStep:I

    if-ne v3, v7, :cond_5

    .line 2990
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->dispatchLayoutStep1()V

    .line 2994
    :cond_5
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v3, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->setMeasureSpecs(II)V

    .line 2995
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iput-boolean v7, v3, Landroid/support/v7/widget/RecyclerView$State;->mIsMeasuring:Z

    .line 2996
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->dispatchLayoutStep2()V

    .line 2999
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v3, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->setMeasuredDimensionFromChildren(II)V

    .line 3003
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->shouldMeasureTwice()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 3004
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 3005
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v4

    invoke-static {v4, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 3006
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v5

    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 3004
    invoke-virtual {v3, v4, v5}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->setMeasureSpecs(II)V

    .line 3007
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iput-boolean v7, v3, Landroid/support/v7/widget/RecyclerView$State;->mIsMeasuring:Z

    .line 3008
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->dispatchLayoutStep2()V

    .line 3010
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v3, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->setMeasuredDimensionFromChildren(II)V

    .line 2975
    .end local v0    # "heightMode":I
    .end local v1    # "skipMeasure":Z
    .end local v2    # "widthMode":I
    :cond_6
    :goto_1
    return-void

    .line 3013
    :cond_7
    iget-boolean v3, p0, Landroid/support/v7/widget/RecyclerView;->mHasFixedSize:Z

    if-eqz v3, :cond_8

    .line 3014
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v3, v4, v5, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onMeasure(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;II)V

    .line 3015
    return-void

    .line 3018
    :cond_8
    iget-boolean v3, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterUpdateDuringMeasure:Z

    if-eqz v3, :cond_9

    .line 3019
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->eatRequestLayout()V

    .line 3020
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->processAdapterUpdatesAndSetAnimationFlags()V

    .line 3022
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-boolean v3, v3, Landroid/support/v7/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    if-eqz v3, :cond_a

    .line 3023
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iput-boolean v7, v3, Landroid/support/v7/widget/RecyclerView$State;->mInPreLayout:Z

    .line 3029
    :goto_2
    iput-boolean v6, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterUpdateDuringMeasure:Z

    .line 3030
    invoke-virtual {p0, v6}, Landroid/support/v7/widget/RecyclerView;->resumeRequestLayout(Z)V

    .line 3033
    :cond_9
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v3, :cond_b

    .line 3034
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v4

    iput v4, v3, Landroid/support/v7/widget/RecyclerView$State;->mItemCount:I

    .line 3038
    :goto_3
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->eatRequestLayout()V

    .line 3039
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v3, v4, v5, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onMeasure(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;II)V

    .line 3040
    invoke-virtual {p0, v6}, Landroid/support/v7/widget/RecyclerView;->resumeRequestLayout(Z)V

    .line 3041
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iput-boolean v6, v3, Landroid/support/v7/widget/RecyclerView$State;->mInPreLayout:Z

    goto :goto_1

    .line 3026
    :cond_a
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    invoke-virtual {v3}, Landroid/support/v7/widget/AdapterHelper;->consumeUpdatesInOnePass()V

    .line 3027
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iput-boolean v6, v3, Landroid/support/v7/widget/RecyclerView$State;->mInPreLayout:Z

    goto :goto_2

    .line 3036
    :cond_b
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iput v6, v3, Landroid/support/v7/widget/RecyclerView$State;->mItemCount:I

    goto :goto_3
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 2387
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2390
    const/4 v0, 0x0

    return v0

    .line 2392
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 1197
    instance-of v0, p1, Landroid/support/v7/widget/RecyclerView$SavedState;

    if-nez v0, :cond_0

    .line 1198
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1199
    return-void

    .line 1202
    :cond_0
    check-cast p1, Landroid/support/v7/widget/RecyclerView$SavedState;

    .end local p1    # "state":Landroid/os/Parcelable;
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mPendingSavedState:Landroid/support/v7/widget/RecyclerView$SavedState;

    .line 1203
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mPendingSavedState:Landroid/support/v7/widget/RecyclerView$SavedState;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1204
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mPendingSavedState:Landroid/support/v7/widget/RecyclerView$SavedState;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    if-eqz v0, :cond_1

    .line 1205
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mPendingSavedState:Landroid/support/v7/widget/RecyclerView$SavedState;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1196
    :cond_1
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1183
    new-instance v0, Landroid/support/v7/widget/RecyclerView$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/RecyclerView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1184
    .local v0, "state":Landroid/support/v7/widget/RecyclerView$SavedState;
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mPendingSavedState:Landroid/support/v7/widget/RecyclerView$SavedState;

    if-eqz v1, :cond_0

    .line 1185
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mPendingSavedState:Landroid/support/v7/widget/RecyclerView$SavedState;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$SavedState;->copyFrom(Landroid/support/v7/widget/RecyclerView$SavedState;)V

    .line 1192
    :goto_0
    return-object v0

    .line 1186
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v1, :cond_1

    .line 1187
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v7/widget/RecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    goto :goto_0

    .line 1189
    :cond_1
    iput-object v2, v0, Landroid/support/v7/widget/RecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    goto :goto_0
.end method

.method public onScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 4495
    return-void
.end method

.method public onScrolled(II)V
    .locals 0
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    .line 4457
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 3063
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 3064
    if-ne p1, p3, :cond_0

    if-eq p2, p4, :cond_1

    .line 3065
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->invalidateGlows()V

    .line 3062
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 27
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 2717
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    move/from16 v22, v0

    if-nez v22, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v7/widget/RecyclerView;->mIgnoreMotionEventTillDown:Z

    move/from16 v22, v0

    if-eqz v22, :cond_1

    .line 2718
    :cond_0
    const/16 v22, 0x0

    return v22

    .line 2720
    :cond_1
    invoke-direct/range {p0 .. p1}, Landroid/support/v7/widget/RecyclerView;->dispatchOnItemTouch(Landroid/view/MotionEvent;)Z

    move-result v22

    if-eqz v22, :cond_2

    .line 2721
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->cancelTouch()V

    .line 2722
    const/16 v22, 0x1

    return v22

    .line 2725
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-object/from16 v22, v0

    if-nez v22, :cond_3

    .line 2726
    const/16 v22, 0x0

    return v22

    .line 2729
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v6

    .line 2730
    .local v6, "canScrollHorizontally":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v7

    .line 2732
    .local v7, "canScrollVertically":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v22, v0

    if-nez v22, :cond_4

    .line 2733
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2735
    :cond_4
    const/4 v10, 0x0

    .line 2737
    .local v10, "eventAddedToVelocityTracker":Z
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v17

    .line 2738
    .local v17, "vtev":Landroid/view/MotionEvent;
    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v4

    .line 2739
    .local v4, "action":I
    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v5

    .line 2741
    .local v5, "actionIndex":I
    if-nez v4, :cond_5

    .line 2742
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mNestedOffsets:[I

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mNestedOffsets:[I

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x1

    aput v24, v23, v25

    const/16 v23, 0x0

    const/16 v24, 0x0

    aput v23, v22, v24

    .line 2744
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mNestedOffsets:[I

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget v22, v22, v23

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mNestedOffsets:[I

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget v23, v23, v24

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, v17

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 2746
    packed-switch v4, :pswitch_data_0

    .line 2889
    :cond_6
    :goto_0
    :pswitch_0
    if-nez v10, :cond_7

    .line 2890
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2892
    :cond_7
    invoke-virtual/range {v17 .. v17}, Landroid/view/MotionEvent;->recycle()V

    .line 2894
    const/16 v22, 0x1

    return v22

    .line 2749
    :pswitch_1
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v7/widget/RecyclerView;->mNumTouchMoveEvent:I

    .line 2751
    const/16 v22, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    .line 2752
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v22

    const/high16 v23, 0x3f000000    # 0.5f

    add-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v7/widget/RecyclerView;->mLastTouchX:I

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v7/widget/RecyclerView;->mInitialTouchX:I

    .line 2753
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v22

    const/high16 v23, 0x3f000000    # 0.5f

    add-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v7/widget/RecyclerView;->mLastTouchY:I

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v7/widget/RecyclerView;->mInitialTouchY:I

    .line 2755
    const/4 v14, 0x0

    .line 2756
    .local v14, "nestedScrollAxis":I
    if-eqz v6, :cond_8

    .line 2757
    const/4 v14, 0x1

    .line 2759
    :cond_8
    if-eqz v7, :cond_9

    .line 2760
    or-int/lit8 v14, v14, 0x2

    .line 2762
    :cond_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/support/v7/widget/RecyclerView;->startNestedScroll(I)Z

    goto :goto_0

    .line 2767
    .end local v14    # "nestedScrollAxis":I
    :pswitch_2
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v7/widget/RecyclerView;->mNumTouchMoveEvent:I

    .line 2769
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    .line 2770
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v22

    const/high16 v23, 0x3f000000    # 0.5f

    add-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v7/widget/RecyclerView;->mLastTouchX:I

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v7/widget/RecyclerView;->mInitialTouchX:I

    .line 2771
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v22

    const/high16 v23, 0x3f000000    # 0.5f

    add-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v7/widget/RecyclerView;->mLastTouchY:I

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v7/widget/RecyclerView;->mInitialTouchY:I

    goto/16 :goto_0

    .line 2776
    :pswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/RecyclerView;->mNumTouchMoveEvent:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v7/widget/RecyclerView;->mNumTouchMoveEvent:I

    .line 2778
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    move/from16 v22, v0

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v11

    .line 2779
    .local v11, "index":I
    if-gez v11, :cond_a

    .line 2780
    const-string/jumbo v22, "RecyclerView"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Error processing scroll; pointer index for id "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 2781
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    move/from16 v24, v0

    .line 2780
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 2781
    const-string/jumbo v24, " not found. Did any MotionEvents get skipped?"

    .line 2780
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2782
    const/16 v22, 0x0

    return v22

    .line 2785
    :cond_a
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v22

    const/high16 v23, 0x3f000000    # 0.5f

    add-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v18, v0

    .line 2786
    .local v18, "x":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v22

    const/high16 v23, 0x3f000000    # 0.5f

    add-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v20, v0

    .line 2787
    .local v20, "y":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/RecyclerView;->mLastTouchX:I

    move/from16 v22, v0

    sub-int v8, v22, v18

    .line 2788
    .local v8, "dx":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/RecyclerView;->mLastTouchY:I

    move/from16 v22, v0

    sub-int v9, v22, v20

    .line 2790
    .local v9, "dy":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mScrollConsumed:[I

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v8, v9, v1, v2}, Landroid/support/v7/widget/RecyclerView;->dispatchNestedPreScroll(II[I[I)Z

    move-result v22

    if-eqz v22, :cond_b

    .line 2791
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mScrollConsumed:[I

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget v22, v22, v23

    sub-int v8, v8, v22

    .line 2792
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mScrollConsumed:[I

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aget v22, v22, v23

    sub-int v9, v9, v22

    .line 2793
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget v22, v22, v23

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget v23, v23, v24

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, v17

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 2795
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mNestedOffsets:[I

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget v24, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aget v25, v25, v26

    add-int v24, v24, v25

    aput v24, v22, v23

    .line 2796
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mNestedOffsets:[I

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aget v24, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    move-object/from16 v25, v0

    const/16 v26, 0x1

    aget v25, v25, v26

    add-int v24, v24, v25

    aput v24, v22, v23

    .line 2799
    :cond_b
    const/4 v12, 0x0

    .line 2800
    .local v12, "isFarEnoughX":Z
    const/4 v13, 0x0

    .line 2803
    .local v13, "isFarEnoughY":Z
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/RecyclerView;->mNumTouchMoveEvent:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_12

    .line 2804
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v22

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/RecyclerView;->mMoveAcceleration:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_10

    const/4 v12, 0x1

    .line 2805
    :goto_1
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v22

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/RecyclerView;->mMoveAcceleration:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_11

    const/4 v13, 0x1

    .line 2806
    :goto_2
    move-object/from16 v0, p0

    iget v15, v0, Landroid/support/v7/widget/RecyclerView;->mMoveAcceleration:I

    .line 2818
    .local v15, "realTouchSlop":I
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/RecyclerView;->mScrollState:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_e

    .line 2819
    const/16 v16, 0x0

    .line 2820
    .local v16, "startScroll":Z
    if-eqz v6, :cond_c

    if-eqz v12, :cond_c

    .line 2821
    if-lez v8, :cond_15

    .line 2822
    sub-int/2addr v8, v15

    .line 2826
    :goto_4
    const/16 v16, 0x1

    .line 2828
    :cond_c
    if-eqz v7, :cond_d

    if-eqz v13, :cond_d

    .line 2829
    if-lez v9, :cond_16

    .line 2830
    sub-int/2addr v9, v15

    .line 2834
    :goto_5
    const/16 v16, 0x1

    .line 2836
    :cond_d
    if-eqz v16, :cond_e

    .line 2837
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    .line 2841
    .end local v16    # "startScroll":Z
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/RecyclerView;->mScrollState:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_6

    .line 2842
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget v22, v22, v23

    sub-int v22, v18, v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v7/widget/RecyclerView;->mLastTouchX:I

    .line 2843
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aget v22, v22, v23

    sub-int v22, v20, v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v7/widget/RecyclerView;->mLastTouchY:I

    .line 2846
    if-eqz v6, :cond_17

    move/from16 v23, v8

    .line 2847
    :goto_6
    if-eqz v7, :cond_18

    move/from16 v22, v9

    .line 2845
    :goto_7
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v22

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v7/widget/RecyclerView;->scrollByInternal(IILandroid/view/MotionEvent;)Z

    move-result v22

    if-eqz v22, :cond_f

    .line 2849
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v22

    const/16 v23, 0x1

    invoke-interface/range {v22 .. v23}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2851
    :cond_f
    sget-boolean v22, Landroid/support/v7/widget/RecyclerView;->ALLOW_PREFETCHING:Z

    if-eqz v22, :cond_6

    .line 2852
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mViewPrefetcher:Landroid/support/v7/widget/RecyclerView$ViewPrefetcher;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v8, v9}, Landroid/support/v7/widget/RecyclerView$ViewPrefetcher;->postFromTraversal(II)V

    goto/16 :goto_0

    .line 2804
    .end local v15    # "realTouchSlop":I
    :cond_10
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 2805
    :cond_11
    const/4 v13, 0x0

    goto/16 :goto_2

    .line 2808
    :cond_12
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v22

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/RecyclerView;->mTouchSlop:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_13

    const/4 v12, 0x1

    .line 2809
    :goto_8
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v22

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/RecyclerView;->mTouchSlop:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_14

    const/4 v13, 0x1

    .line 2810
    :goto_9
    move-object/from16 v0, p0

    iget v15, v0, Landroid/support/v7/widget/RecyclerView;->mTouchSlop:I

    .restart local v15    # "realTouchSlop":I
    goto/16 :goto_3

    .line 2808
    .end local v15    # "realTouchSlop":I
    :cond_13
    const/4 v12, 0x0

    goto :goto_8

    .line 2809
    :cond_14
    const/4 v13, 0x0

    goto :goto_9

    .line 2824
    .restart local v15    # "realTouchSlop":I
    .restart local v16    # "startScroll":Z
    :cond_15
    add-int/2addr v8, v15

    goto/16 :goto_4

    .line 2832
    :cond_16
    add-int/2addr v9, v15

    goto/16 :goto_5

    .line 2846
    .end local v16    # "startScroll":Z
    :cond_17
    const/16 v22, 0x0

    move/from16 v23, v22

    goto :goto_6

    .line 2847
    :cond_18
    const/16 v22, 0x0

    goto :goto_7

    .line 2859
    .end local v8    # "dx":I
    .end local v9    # "dy":I
    .end local v11    # "index":I
    .end local v12    # "isFarEnoughX":Z
    .end local v13    # "isFarEnoughY":Z
    .end local v15    # "realTouchSlop":I
    .end local v18    # "x":I
    .end local v20    # "y":I
    :pswitch_4
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v7/widget/RecyclerView;->mNumTouchMoveEvent:I

    .line 2861
    invoke-direct/range {p0 .. p1}, Landroid/support/v7/widget/RecyclerView;->onPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 2866
    :pswitch_5
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v7/widget/RecyclerView;->mNumTouchMoveEvent:I

    .line 2868
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2869
    const/4 v10, 0x1

    .line 2870
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/RecyclerView;->mMaxFlingVelocity:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    const/16 v24, 0x3e8

    move-object/from16 v0, v22

    move/from16 v1, v24

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2871
    if-eqz v6, :cond_1b

    .line 2872
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    move/from16 v23, v0

    invoke-static/range {v22 .. v23}, Landroid/support/v4/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    move-result v22

    move/from16 v0, v22

    neg-float v0, v0

    move/from16 v19, v0

    .line 2873
    .local v19, "xvel":F
    :goto_a
    if-eqz v7, :cond_1c

    .line 2874
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    move/from16 v23, v0

    invoke-static/range {v22 .. v23}, Landroid/support/v4/view/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F

    move-result v22

    move/from16 v0, v22

    neg-float v0, v0

    move/from16 v21, v0

    .line 2875
    .local v21, "yvel":F
    :goto_b
    const/16 v22, 0x0

    cmpl-float v22, v19, v22

    if-nez v22, :cond_19

    const/16 v22, 0x0

    cmpl-float v22, v21, v22

    if-eqz v22, :cond_1d

    :cond_19
    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView;->fling(II)Z

    move-result v22

    :goto_c
    if-nez v22, :cond_1a

    .line 2876
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    .line 2878
    :cond_1a
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->resetTouch()V

    goto/16 :goto_0

    .line 2872
    .end local v19    # "xvel":F
    .end local v21    # "yvel":F
    :cond_1b
    const/16 v19, 0x0

    .restart local v19    # "xvel":F
    goto :goto_a

    .line 2874
    :cond_1c
    const/16 v21, 0x0

    .restart local v21    # "yvel":F
    goto :goto_b

    .line 2875
    :cond_1d
    const/16 v22, 0x0

    goto :goto_c

    .line 2883
    .end local v19    # "xvel":F
    .end local v21    # "yvel":F
    :pswitch_6
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v7/widget/RecyclerView;->mNumTouchMoveEvent:I

    .line 2885
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->cancelTouch()V

    goto/16 :goto_0

    .line 2746
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method postAnimationRunner()V
    .locals 1

    .prologue
    .line 3196
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mPostedAnimatorRunner:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mIsAttached:Z

    if-eqz v0, :cond_0

    .line 3197
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimatorRunner:Ljava/lang/Runnable;

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 3198
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mPostedAnimatorRunner:Z

    .line 3195
    :cond_0
    return-void
.end method

.method recordAnimationInfoIfBouncedHiddenView(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .locals 4
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "animationInfo"    # Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    .prologue
    .line 3615
    const/4 v2, 0x0

    const/16 v3, 0x2000

    invoke-virtual {p1, v2, v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->setFlags(II)V

    .line 3616
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-boolean v2, v2, Landroid/support/v7/widget/RecyclerView$State;->mTrackOldChangeHolders:Z

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isUpdated()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3617
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3621
    :cond_0
    :goto_0
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    invoke-virtual {v2, p1, p2}, Landroid/support/v7/widget/ViewInfoStore;->addToPreLayout(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    .line 3613
    return-void

    .line 3617
    :cond_1
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3618
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->getChangedHolderKey(Landroid/support/v7/widget/RecyclerView$ViewHolder;)J

    move-result-wide v0

    .line 3619
    .local v0, "key":J
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    invoke-virtual {v2, v0, v1, p1}, Landroid/support/v7/widget/ViewInfoStore;->addToOldChangeHolders(JLandroid/support/v7/widget/RecyclerView$ViewHolder;)V

    goto :goto_0
.end method

.method removeAnimatingView(Landroid/view/View;)Z
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1254
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->eatRequestLayout()V

    .line 1255
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/ChildHelper;->removeViewIfHidden(Landroid/view/View;)Z

    move-result v0

    .line 1256
    .local v0, "removed":Z
    if-eqz v0, :cond_0

    .line 1257
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 1258
    .local v1, "viewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/RecyclerView$Recycler;->unscrapView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 1259
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/RecyclerView$Recycler;->recycleViewHolderInternal(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 1265
    .end local v1    # "viewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_0
    if-eqz v0, :cond_1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->resumeRequestLayout(Z)V

    .line 1266
    return v0

    .line 1265
    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method protected removeDetachedView(Landroid/view/View;Z)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "animate"    # Z

    .prologue
    .line 3658
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 3659
    .local v0, "vh":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    if-eqz v0, :cond_0

    .line 3660
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3661
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->clearTmpDetachFlag()V

    .line 3667
    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->dispatchChildDetached(Landroid/view/View;)V

    .line 3668
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->removeDetachedView(Landroid/view/View;Z)V

    .line 3657
    return-void

    .line 3662
    :cond_1
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3663
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Called removeDetachedView with a view which is not flagged as tmp detached."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public removeItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V
    .locals 2
    .param p1, "decor"    # Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    .prologue
    .line 1411
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    .line 1412
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    const-string/jumbo v1, "Cannot remove item decoration during a scroll  or layout"

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 1415
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1416
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1417
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getOverScrollMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setWillNotDraw(Z)V

    .line 1419
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->markItemDecorInsetsDirty()V

    .line 1420
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 1410
    return-void

    .line 1417
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeOnChildAttachStateChangeListener(Landroid/support/v7/widget/RecyclerView$OnChildAttachStateChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/support/v7/widget/RecyclerView$OnChildAttachStateChangeListener;

    .prologue
    .line 1090
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1091
    return-void

    .line 1093
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1089
    return-void
.end method

.method public removeOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    .prologue
    .line 2509
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2510
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mActiveOnItemTouchListener:Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    if-ne v0, p1, :cond_0

    .line 2511
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mActiveOnItemTouchListener:Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    .line 2508
    :cond_0
    return-void
.end method

.method public removeOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    .prologue
    .line 1478
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1479
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1477
    :cond_0
    return-void
.end method

.method repositionShadowingViews()V
    .locals 9

    .prologue
    .line 4851
    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v7}, Landroid/support/v7/widget/ChildHelper;->getChildCount()I

    move-result v0

    .line 4852
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 4853
    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v7, v2}, Landroid/support/v7/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 4854
    .local v6, "view":Landroid/view/View;
    invoke-virtual {p0, v6}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 4855
    .local v1, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    if-eqz v1, :cond_1

    iget-object v7, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mShadowingHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-eqz v7, :cond_1

    .line 4856
    iget-object v7, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mShadowingHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v4, v7, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 4857
    .local v4, "shadowingView":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 4858
    .local v3, "left":I
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v5

    .line 4859
    .local v5, "top":I
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v7

    if-ne v3, v7, :cond_0

    .line 4860
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v7

    if-eq v5, v7, :cond_1

    .line 4862
    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v7, v3

    .line 4863
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v8, v5

    .line 4861
    invoke-virtual {v4, v3, v5, v7, v8}, Landroid/view/View;->layout(IIII)V

    .line 4852
    .end local v3    # "left":I
    .end local v4    # "shadowingView":Landroid/view/View;
    .end local v5    # "top":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4849
    .end local v1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .end local v6    # "view":Landroid/view/View;
    :cond_2
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 2347
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v4, p0, v5, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onRequestChildFocus(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;Landroid/view/View;Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz p2, :cond_1

    .line 2348
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-virtual {v4, v3, v3, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 2353
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2354
    .local v0, "focusedLayoutParams":Landroid/view/ViewGroup$LayoutParams;
    instance-of v4, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    if-eqz v4, :cond_0

    move-object v2, v0

    .line 2356
    check-cast v2, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 2357
    .local v2, "lp":Landroid/support/v7/widget/RecyclerView$LayoutParams;
    iget-boolean v4, v2, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    if-nez v4, :cond_0

    .line 2358
    iget-object v1, v2, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 2359
    .local v1, "insets":Landroid/graphics/Rect;
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->left:I

    iget v6, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 2360
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->right:I

    iget v6, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 2361
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->top:I

    iget v6, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 2362
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->bottom:I

    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 2366
    .end local v1    # "insets":Landroid/graphics/Rect;
    .end local v2    # "lp":Landroid/support/v7/widget/RecyclerView$LayoutParams;
    :cond_0
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v4}, Landroid/support/v7/widget/RecyclerView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2367
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v4}, Landroid/support/v7/widget/RecyclerView;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2368
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget-boolean v5, p0, Landroid/support/v7/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-eqz v5, :cond_2

    :goto_0
    invoke-virtual {p0, p1, v4, v3}, Landroid/support/v7/widget/RecyclerView;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    .line 2370
    .end local v0    # "focusedLayoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 2346
    return-void

    .line 2368
    .restart local v0    # "focusedLayoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "rect"    # Landroid/graphics/Rect;
    .param p3, "immediate"    # Z

    .prologue
    .line 2375
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->requestChildRectangleOnScreen(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 4
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 2707
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2708
    .local v2, "listenerCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 2709
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    .line 2710
    .local v1, "listener":Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;
    invoke-interface {v1, p1}, Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;->onRequestDisallowInterceptTouchEvent(Z)V

    .line 2708
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2712
    .end local v1    # "listener":Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 2706
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 3729
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mEatRequestLayout:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-eqz v0, :cond_1

    .line 3732
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutRequestEaten:Z

    .line 3728
    :goto_0
    return-void

    .line 3730
    :cond_1
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    goto :goto_0
.end method

.method resumeRequestLayout(Z)V
    .locals 3
    .param p1, "performLayoutChildren"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1848
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mEatRequestLayout:I

    if-ge v0, v1, :cond_0

    .line 1853
    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->mEatRequestLayout:I

    .line 1855
    :cond_0
    if-nez p1, :cond_1

    .line 1864
    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutRequestEaten:Z

    .line 1866
    :cond_1
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mEatRequestLayout:I

    if-ne v0, v1, :cond_3

    .line 1868
    if-eqz p1, :cond_2

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutRequestEaten:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-eqz v0, :cond_4

    .line 1872
    :cond_2
    :goto_0
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-nez v0, :cond_3

    .line 1873
    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutRequestEaten:Z

    .line 1876
    :cond_3
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mEatRequestLayout:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mEatRequestLayout:I

    .line 1847
    return-void

    .line 1869
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_2

    .line 1870
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->dispatchLayout()V

    goto :goto_0
.end method

.method saveOldPositions()V
    .locals 4

    .prologue
    .line 3858
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v3}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    .line 3859
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 3860
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 3865
    .local v1, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3866
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->saveOldPosition()V

    .line 3859
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3857
    .end local v1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_1
    return-void
.end method

.method public scrollBy(II)V
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 1557
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v3, :cond_0

    .line 1558
    const-string/jumbo v2, "RecyclerView"

    const-string/jumbo v3, "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1560
    return-void

    .line 1562
    :cond_0
    iget-boolean v3, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-eqz v3, :cond_1

    .line 1563
    return-void

    .line 1565
    :cond_1
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    .line 1566
    .local v0, "canScrollHorizontal":Z
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v1

    .line 1567
    .local v1, "canScrollVertical":Z
    if-nez v0, :cond_2

    if-eqz v1, :cond_3

    .line 1568
    :cond_2
    if-eqz v0, :cond_4

    .end local p1    # "x":I
    :goto_0
    if-eqz v1, :cond_5

    .end local p2    # "y":I
    :goto_1
    invoke-virtual {p0, p1, p2, v4}, Landroid/support/v7/widget/RecyclerView;->scrollByInternal(IILandroid/view/MotionEvent;)Z

    .line 1556
    :cond_3
    return-void

    .restart local p1    # "x":I
    .restart local p2    # "y":I
    :cond_4
    move p1, v2

    .line 1568
    goto :goto_0

    .end local p1    # "x":I
    :cond_5
    move p2, v2

    goto :goto_1
.end method

.method scrollByInternal(IILandroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1644
    const/4 v3, 0x0

    .local v3, "unconsumedX":I
    const/4 v4, 0x0

    .line 1645
    .local v4, "unconsumedY":I
    const/4 v1, 0x0

    .local v1, "consumedX":I
    const/4 v2, 0x0

    .line 1647
    .local v2, "consumedY":I
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->consumePendingUpdateOperations()V

    .line 1648
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_2

    .line 1649
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->eatRequestLayout()V

    .line 1650
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 1651
    const-string/jumbo v0, "RV Scroll"

    invoke-static {v0}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 1652
    if-eqz p1, :cond_0

    .line 1653
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    iget-object v8, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0, p1, v5, v8}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->scrollHorizontallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v1

    .line 1654
    sub-int v3, p1, v1

    .line 1656
    :cond_0
    if-eqz p2, :cond_1

    .line 1657
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    iget-object v8, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0, p2, v5, v8}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->scrollVerticallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v2

    .line 1658
    sub-int v4, p2, v2

    .line 1660
    :cond_1
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    .line 1661
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->repositionShadowingViews()V

    .line 1662
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->onExitLayoutOrScroll()V

    .line 1663
    invoke-virtual {p0, v7}, Landroid/support/v7/widget/RecyclerView;->resumeRequestLayout(Z)V

    .line 1665
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1666
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    .line 1669
    :cond_3
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/RecyclerView;->dispatchNestedScroll(IIII[I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1671
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mLastTouchX:I

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    aget v5, v5, v7

    sub-int/2addr v0, v5

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mLastTouchX:I

    .line 1672
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mLastTouchY:I

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    aget v5, v5, v6

    sub-int/2addr v0, v5

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mLastTouchY:I

    .line 1673
    if-eqz p3, :cond_4

    .line 1674
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    aget v0, v0, v7

    int-to-float v0, v0

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    aget v5, v5, v6

    int-to-float v5, v5

    invoke-virtual {p3, v0, v5}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1676
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mNestedOffsets:[I

    aget v5, v0, v7

    iget-object v8, p0, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    aget v8, v8, v7

    add-int/2addr v5, v8

    aput v5, v0, v7

    .line 1677
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mNestedOffsets:[I

    aget v5, v0, v6

    iget-object v8, p0, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    aget v8, v8, v6

    add-int/2addr v5, v8

    aput v5, v0, v6

    .line 1684
    :cond_5
    :goto_0
    if-nez v1, :cond_6

    if-eqz v2, :cond_7

    .line 1685
    :cond_6
    invoke-virtual {p0, v1, v2}, Landroid/support/v7/widget/RecyclerView;->dispatchOnScrolled(II)V

    .line 1687
    :cond_7
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->awakenScrollBars()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1688
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    .line 1690
    :cond_8
    if-nez v1, :cond_9

    if-eqz v2, :cond_c

    :cond_9
    move v0, v6

    :goto_1
    return v0

    .line 1678
    :cond_a
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getOverScrollMode()I

    move-result v0

    const/4 v5, 0x2

    if-eq v0, v5, :cond_5

    .line 1679
    if-eqz p3, :cond_b

    .line 1680
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    int-to-float v5, v3

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    int-to-float v9, v4

    invoke-direct {p0, v0, v5, v8, v9}, Landroid/support/v7/widget/RecyclerView;->pullGlows(FFFF)V

    .line 1682
    :cond_b
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->considerReleasingGlowsOnScroll(II)V

    goto :goto_0

    :cond_c
    move v0, v7

    .line 1690
    goto :goto_1
.end method

.method public scrollTo(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1551
    const-string/jumbo v0, "RecyclerView"

    const-string/jumbo v1, "RecyclerView does not support scrolling to an absolute position. Use scrollToPosition instead"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1550
    return-void
.end method

.method public scrollToPosition(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1501
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-eqz v0, :cond_0

    .line 1502
    return-void

    .line 1504
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->stopScroll()V

    .line 1505
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_1

    .line 1506
    const-string/jumbo v0, "RecyclerView"

    const-string/jumbo v1, "Cannot scroll to position a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1508
    return-void

    .line 1510
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->scrollToPosition(I)V

    .line 1511
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->awakenScrollBars()Z

    .line 1500
    return-void
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 3172
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->shouldDeferAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3173
    return-void

    .line 3175
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 3171
    return-void
.end method

.method public setAccessibilityDelegateCompat(Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;)V
    .locals 1
    .param p1, "accessibilityDelegate"    # Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;

    .prologue
    .line 608
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mAccessibilityDelegate:Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;

    .line 609
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAccessibilityDelegate:Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 607
    return-void
.end method

.method public setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/support/v7/widget/RecyclerView$Adapter;

    .prologue
    const/4 v1, 0x0

    .line 974
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutFrozen(Z)V

    .line 975
    const/4 v0, 0x1

    invoke-direct {p0, p1, v1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapterInternal(Landroid/support/v7/widget/RecyclerView$Adapter;ZZ)V

    .line 976
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 972
    return-void
.end method

.method public setChildDrawingOrderCallback(Landroid/support/v7/widget/RecyclerView$ChildDrawingOrderCallback;)V
    .locals 1
    .param p1, "childDrawingOrderCallback"    # Landroid/support/v7/widget/RecyclerView$ChildDrawingOrderCallback;

    .prologue
    .line 1436
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildDrawingOrderCallback:Landroid/support/v7/widget/RecyclerView$ChildDrawingOrderCallback;

    if-ne p1, v0, :cond_0

    .line 1437
    return-void

    .line 1439
    :cond_0
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mChildDrawingOrderCallback:Landroid/support/v7/widget/RecyclerView$ChildDrawingOrderCallback;

    .line 1440
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildDrawingOrderCallback:Landroid/support/v7/widget/RecyclerView$ChildDrawingOrderCallback;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setChildrenDrawingOrderEnabled(Z)V

    .line 1435
    return-void

    .line 1440
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setChildImportantForAccessibilityInternal(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)Z
    .locals 1
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "importantForAccessibility"    # I
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 10186
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10187
    invoke-static {p1, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->-set1(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)I

    .line 10188
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10189
    const/4 v0, 0x0

    return v0

    .line 10191
    :cond_0
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0, p2}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 10192
    const/4 v0, 0x1

    return v0
.end method

.method public setClipToPadding(Z)V
    .locals 1
    .param p1, "clipToPadding"    # Z

    .prologue
    .line 884
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    if-eq p1, v0, :cond_0

    .line 885
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->invalidateGlows()V

    .line 887
    :cond_0
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    .line 888
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 889
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-eqz v0, :cond_1

    .line 890
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 883
    :cond_1
    return-void
.end method

.method setDataSetChangedAfterLayout()V
    .locals 4

    .prologue
    .line 3997
    iget-boolean v3, p0, Landroid/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v3, :cond_0

    .line 3998
    return-void

    .line 4000
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    .line 4001
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v3}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    .line 4002
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 4003
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 4004
    .local v1, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4002
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4005
    :cond_2
    const/16 v3, 0x200

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->addFlags(I)V

    goto :goto_1

    .line 4008
    .end local v1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_3
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$Recycler;->setAdapterPositionsAsUnknown()V

    .line 3996
    return-void
.end method

.method public setHasFixedSize(Z)V
    .locals 0
    .param p1, "hasFixedSize"    # Z

    .prologue
    .line 871
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->mHasFixedSize:Z

    .line 870
    return-void
.end method

.method public setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V
    .locals 2
    .param p1, "animator"    # Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    .prologue
    const/4 v1, 0x0

    .line 3082
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_0

    .line 3083
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->endAnimations()V

    .line 3084
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->setListener(Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;)V

    .line 3086
    :cond_0
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    .line 3087
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_1

    .line 3088
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimatorListener:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->setListener(Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;)V

    .line 3081
    :cond_1
    return-void
.end method

.method public setItemViewCacheSize(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 1326
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Recycler;->setViewCacheSize(I)V

    .line 1325
    return-void
.end method

.method public setLayoutFrozen(Z)V
    .locals 10
    .param p1, "frozen"    # Z

    .prologue
    const/4 v9, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 1902
    iget-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-eq p1, v2, :cond_1

    .line 1903
    const-string/jumbo v2, "Do not setLayoutFrozen in layout or scroll"

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 1904
    if-nez p1, :cond_2

    .line 1905
    iput-boolean v7, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    .line 1906
    iget-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutRequestEaten:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v2, :cond_0

    .line 1907
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 1909
    :cond_0
    iput-boolean v7, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutRequestEaten:Z

    .line 1901
    :cond_1
    :goto_0
    return-void

    .line 1911
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1913
    .local v0, "now":J
    const/4 v4, 0x3

    move-wide v2, v0

    move v6, v5

    .line 1912
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 1914
    .local v8, "cancelEvent":Landroid/view/MotionEvent;
    invoke-virtual {p0, v8}, Landroid/support/v7/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1915
    iput-boolean v9, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    .line 1916
    iput-boolean v9, p0, Landroid/support/v7/widget/RecyclerView;->mIgnoreMotionEventTillDown:Z

    .line 1917
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->stopScroll()V

    goto :goto_0
.end method

.method public setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V
    .locals 3
    .param p1, "layout"    # Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .prologue
    const/4 v2, 0x0

    .line 1119
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-ne p1, v0, :cond_0

    .line 1120
    return-void

    .line 1122
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->stopScroll()V

    .line 1125
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_3

    .line 1127
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_1

    .line 1128
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->endAnimations()V

    .line 1130
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->removeAndRecycleAllViews(Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 1131
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->removeAndRecycleScrapInt(Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 1132
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Recycler;->clear()V

    .line 1134
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mIsAttached:Z

    if-eqz v0, :cond_2

    .line 1135
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->dispatchDetachedFromWindow(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 1137
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->setRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 1138
    iput-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 1143
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/ChildHelper;->removeAllViewsUnfiltered()V

    .line 1144
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 1145
    if-eqz p1, :cond_5

    .line 1146
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_4

    .line 1147
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "LayoutManager "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1148
    const-string/jumbo v2, " is already attached to a RecyclerView: "

    .line 1147
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1148
    iget-object v2, p1, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 1147
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1140
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Recycler;->clear()V

    goto :goto_0

    .line 1150
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->setRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 1151
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mIsAttached:Z

    if-eqz v0, :cond_5

    .line 1152
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->dispatchAttachedToWindow(Landroid/support/v7/widget/RecyclerView;)V

    .line 1155
    :cond_5
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Recycler;->updateViewCacheSize()V

    .line 1156
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 1118
    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 10225
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/NestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/view/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    .line 10224
    return-void
.end method

.method public setOnFlingListener(Landroid/support/v7/widget/RecyclerView$OnFlingListener;)V
    .locals 0
    .param p1, "onFlingListener"    # Landroid/support/v7/widget/RecyclerView$OnFlingListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1168
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mOnFlingListener:Landroid/support/v7/widget/RecyclerView$OnFlingListener;

    .line 1167
    return-void
.end method

.method public setOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v7/widget/RecyclerView$OnScrollListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1453
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    .line 1452
    return-void
.end method

.method public setPreserveFocusAfterLayout(Z)V
    .locals 0
    .param p1, "preserveFocusAfterLayout"    # Z

    .prologue
    .line 4073
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->mPreserveFocusAfterLayout:Z

    .line 4072
    return-void
.end method

.method public setRecycledViewPool(Landroid/support/v7/widget/RecyclerView$RecycledViewPool;)V
    .locals 1
    .param p1, "pool"    # Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    .prologue
    .line 1300
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Recycler;->setRecycledViewPool(Landroid/support/v7/widget/RecyclerView$RecycledViewPool;)V

    .line 1299
    return-void
.end method

.method public setRecyclerListener(Landroid/support/v7/widget/RecyclerView$RecyclerListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v7/widget/RecyclerView$RecyclerListener;

    .prologue
    .line 1046
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mRecyclerListener:Landroid/support/v7/widget/RecyclerView$RecyclerListener;

    .line 1045
    return-void
.end method

.method setScrollState(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 1340
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollState:I

    if-ne p1, v0, :cond_0

    .line 1341
    return-void

    .line 1347
    :cond_0
    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->mScrollState:I

    .line 1348
    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    .line 1349
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->stopScrollersInternal()V

    .line 1351
    :cond_1
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->dispatchOnScrollStateChanged(I)V

    .line 1339
    return-void
.end method

.method public setScrollingTouchSlop(I)V
    .locals 6
    .param p1, "slopConstant"    # I

    .prologue
    const-wide v4, 0x3fe3333333333333L    # 0.6

    .line 920
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 921
    .local v0, "vc":Landroid/view/ViewConfiguration;
    packed-switch p1, :pswitch_data_0

    .line 923
    const-string/jumbo v1, "RecyclerView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setScrollingTouchSlop(): bad argument constant "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 924
    const-string/jumbo v3, "; using default value"

    .line 923
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    :pswitch_0
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->mTouchSlop:I

    .line 929
    iget v1, p0, Landroid/support/v7/widget/RecyclerView;->mTouchSlop:I

    int-to-double v2, v1

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->mMoveAcceleration:I

    .line 919
    :goto_0
    return-void

    .line 934
    :pswitch_1
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->mTouchSlop:I

    .line 936
    iget v1, p0, Landroid/support/v7/widget/RecyclerView;->mTouchSlop:I

    int-to-double v2, v1

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->mMoveAcceleration:I

    goto :goto_0

    .line 921
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setViewCacheExtension(Landroid/support/v7/widget/RecyclerView$ViewCacheExtension;)V
    .locals 1
    .param p1, "extension"    # Landroid/support/v7/widget/RecyclerView$ViewCacheExtension;

    .prologue
    .line 1311
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Recycler;->setViewCacheExtension(Landroid/support/v7/widget/RecyclerView$ViewCacheExtension;)V

    .line 1310
    return-void
.end method

.method shouldDeferAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    const/4 v2, 0x0

    .line 3156
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->isComputingLayout()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3157
    const/4 v0, 0x0

    .line 3158
    .local v0, "type":I
    if-eqz p1, :cond_0

    .line 3159
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat;->getContentChangeTypes(Landroid/view/accessibility/AccessibilityEvent;)I

    move-result v0

    .line 3161
    :cond_0
    if-nez v0, :cond_1

    .line 3162
    const/4 v0, 0x0

    .line 3164
    :cond_1
    iget v1, p0, Landroid/support/v7/widget/RecyclerView;->mEatenAccessibilityChangeFlags:I

    or-int/2addr v1, v0

    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->mEatenAccessibilityChangeFlags:I

    .line 3165
    const/4 v1, 0x1

    return v1

    .line 3167
    .end local v0    # "type":I
    :cond_2
    return v2
.end method

.method public smoothScrollBy(II)V
    .locals 2
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    .line 1939
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_0

    .line 1940
    const-string/jumbo v0, "RecyclerView"

    const-string/jumbo v1, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1942
    return-void

    .line 1944
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-eqz v0, :cond_1

    .line 1945
    return-void

    .line 1947
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1948
    const/4 p1, 0x0

    .line 1950
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1951
    const/4 p2, 0x0

    .line 1953
    :cond_3
    if-nez p1, :cond_4

    if-eqz p2, :cond_5

    .line 1954
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mViewFlinger:Landroid/support/v7/widget/RecyclerView$ViewFlinger;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->smoothScrollBy(II)V

    .line 1938
    :cond_5
    return-void
.end method

.method public smoothScrollToPosition(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1538
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-eqz v0, :cond_0

    .line 1539
    return-void

    .line 1541
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_1

    .line 1542
    const-string/jumbo v0, "RecyclerView"

    const-string/jumbo v1, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1544
    return-void

    .line 1546
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0, p0, v1, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->smoothScrollToPosition(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;I)V

    .line 1537
    return-void
.end method

.method public startNestedScroll(I)Z
    .locals 1
    .param p1, "axes"    # I

    .prologue
    .line 10235
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/NestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/view/NestedScrollingChildHelper;->startNestedScroll(I)Z

    move-result v0

    return v0
.end method

.method public stopNestedScroll()V
    .locals 1

    .prologue
    .line 10240
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/NestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingChildHelper;->stopNestedScroll()V

    .line 10239
    return-void
.end method

.method public stopScroll()V
    .locals 1

    .prologue
    .line 2018
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    .line 2019
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->stopScrollersInternal()V

    .line 2017
    return-void
.end method

.method public swapAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;Z)V
    .locals 1
    .param p1, "adapter"    # Landroid/support/v7/widget/RecyclerView$Adapter;
    .param p2, "removeAndRecycleExistingViews"    # Z

    .prologue
    .line 958
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutFrozen(Z)V

    .line 959
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/support/v7/widget/RecyclerView;->setAdapterInternal(Landroid/support/v7/widget/RecyclerView$Adapter;ZZ)V

    .line 960
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->setDataSetChangedAfterLayout()V

    .line 961
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 956
    return-void
.end method

.method viewRangeUpdate(IILjava/lang/Object;)V
    .locals 7
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I
    .param p3, "payload"    # Ljava/lang/Object;

    .prologue
    .line 3970
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v5}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v1

    .line 3971
    .local v1, "childCount":I
    add-int v4, p1, p2

    .line 3973
    .local v4, "positionEnd":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 3974
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v5, v3}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3975
    .local v0, "child":Landroid/view/View;
    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 3976
    .local v2, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3973
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3979
    :cond_1
    iget v5, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    if-lt v5, p1, :cond_0

    iget v5, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    if-ge v5, v4, :cond_0

    .line 3982
    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 3983
    invoke-virtual {v2, p3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->addChangePayload(Ljava/lang/Object;)V

    .line 3985
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    goto :goto_1

    .line 3988
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_2
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v5, p1, p2}, Landroid/support/v7/widget/RecyclerView$Recycler;->viewRangeUpdate(II)V

    .line 3969
    return-void
.end method
