.class public Landroid/support/v4/view/ViewPager;
.super Landroid/view/ViewGroup;
.source "ViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/ViewPager$Decor;,
        Landroid/support/v4/view/ViewPager$ItemInfo;,
        Landroid/support/v4/view/ViewPager$LayoutParams;,
        Landroid/support/v4/view/ViewPager$MyAccessibilityDelegate;,
        Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;,
        Landroid/support/v4/view/ViewPager$OnPageChangeListener;,
        Landroid/support/v4/view/ViewPager$PageTransformer;,
        Landroid/support/v4/view/ViewPager$PagerObserver;,
        Landroid/support/v4/view/ViewPager$SavedState;,
        Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;,
        Landroid/support/v4/view/ViewPager$ViewPositionComparator;
    }
.end annotation


# static fields
.field private static final CLOSE_ENOUGH:I = 0x2

.field private static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/support/v4/view/ViewPager$ItemInfo;",
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

.field private static final TAG:Ljava/lang/String; = "ViewPager"

.field private static final USE_CACHE:Z

.field private static final sInterpolator:Landroid/view/animation/Interpolator;

.field private static final sPositionComparator:Landroid/support/v4/view/ViewPager$ViewPositionComparator;


# instance fields
.field private mActivePointerId:I

.field private mAdapter:Landroid/support/v4/view/PagerAdapter;

.field private mAdapterChangeListener:Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;

.field private mBottomPageBounds:I

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
            "Landroid/support/v4/view/ViewPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mLastOffset:F

.field private mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

.field private mMarginDrawable:Landroid/graphics/drawable/Drawable;

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mNeedCalculatePageOffsets:Z

.field private mObserver:Landroid/support/v4/view/ViewPager$PagerObserver;

.field private mOffscreenPageLimit:I

.field private mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private mPageMargin:I

.field private mPageTransformer:Landroid/support/v4/view/ViewPager$PageTransformer;

.field private mPopulatePending:Z

.field private mRestoredAdapterState:Landroid/os/Parcelable;

.field private mRestoredClassLoader:Ljava/lang/ClassLoader;

.field private mRestoredCurItem:I

.field private mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

.field private mScrollState:I

.field private mScroller:Landroid/widget/Scroller;

.field private mScrollingCacheEnabled:Z

.field private mSetChildrenDrawingOrderEnabled:Ljava/lang/reflect/Method;

.field private final mTempItem:Landroid/support/v4/view/ViewPager$ItemInfo;

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTopPageBounds:I

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 103
    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100b3

    aput v2, v0, v1

    sput-object v0, Landroid/support/v4/view/ViewPager;->LAYOUT_ATTRS:[I

    .line 121
    new-instance v0, Landroid/support/v4/view/ViewPager$1;

    invoke-direct {v0}, Landroid/support/v4/view/ViewPager$1;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewPager;->COMPARATOR:Ljava/util/Comparator;

    .line 128
    new-instance v0, Landroid/support/v4/view/ViewPager$2;

    invoke-direct {v0}, Landroid/support/v4/view/ViewPager$2;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewPager;->sInterpolator:Landroid/view/animation/Interpolator;

    .line 228
    new-instance v0, Landroid/support/v4/view/ViewPager$ViewPositionComparator;

    invoke-direct {v0}, Landroid/support/v4/view/ViewPager$ViewPositionComparator;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewPager;->sPositionComparator:Landroid/support/v4/view/ViewPager$ViewPositionComparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 349
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    .line 136
    new-instance v0, Landroid/support/v4/view/ViewPager$ItemInfo;

    invoke-direct {v0}, Landroid/support/v4/view/ViewPager$ItemInfo;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->mTempItem:Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 138
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->mTempRect:Landroid/graphics/Rect;

    .line 142
    iput v1, p0, Landroid/support/v4/view/ViewPager;->mRestoredCurItem:I

    .line 143
    iput-object v4, p0, Landroid/support/v4/view/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 144
    iput-object v4, p0, Landroid/support/v4/view/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    const v0, -0x800001

    .line 156
    iput v0, p0, Landroid/support/v4/view/ViewPager;->mFirstOffset:F

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 157
    iput v0, p0, Landroid/support/v4/view/ViewPager;->mLastOffset:F

    .line 166
    iput v3, p0, Landroid/support/v4/view/ViewPager;->mOffscreenPageLimit:I

    .line 185
    iput v1, p0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    .line 212
    iput-boolean v3, p0, Landroid/support/v4/view/ViewPager;->mFirstLayout:Z

    .line 213
    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->mNeedCalculatePageOffsets:Z

    .line 246
    new-instance v0, Landroid/support/v4/view/ViewPager$3;

    invoke-direct {v0, p0}, Landroid/support/v4/view/ViewPager$3;-><init>(Landroid/support/v4/view/ViewPager;)V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    .line 253
    iput v2, p0, Landroid/support/v4/view/ViewPager;->mScrollState:I

    .line 350
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->initViewPager()V

    .line 351
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 354
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    .line 136
    new-instance v0, Landroid/support/v4/view/ViewPager$ItemInfo;

    invoke-direct {v0}, Landroid/support/v4/view/ViewPager$ItemInfo;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->mTempItem:Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 138
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->mTempRect:Landroid/graphics/Rect;

    .line 142
    iput v1, p0, Landroid/support/v4/view/ViewPager;->mRestoredCurItem:I

    .line 143
    iput-object v4, p0, Landroid/support/v4/view/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 144
    iput-object v4, p0, Landroid/support/v4/view/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    const v0, -0x800001

    .line 156
    iput v0, p0, Landroid/support/v4/view/ViewPager;->mFirstOffset:F

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 157
    iput v0, p0, Landroid/support/v4/view/ViewPager;->mLastOffset:F

    .line 166
    iput v3, p0, Landroid/support/v4/view/ViewPager;->mOffscreenPageLimit:I

    .line 185
    iput v1, p0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    .line 212
    iput-boolean v3, p0, Landroid/support/v4/view/ViewPager;->mFirstLayout:Z

    .line 213
    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->mNeedCalculatePageOffsets:Z

    .line 246
    new-instance v0, Landroid/support/v4/view/ViewPager$3;

    invoke-direct {v0, p0}, Landroid/support/v4/view/ViewPager$3;-><init>(Landroid/support/v4/view/ViewPager;)V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    .line 253
    iput v2, p0, Landroid/support/v4/view/ViewPager;->mScrollState:I

    .line 355
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->initViewPager()V

    .line 356
    return-void
.end method

.method static synthetic access$000(Landroid/support/v4/view/ViewPager;I)V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;->setScrollState(I)V

    return-void
.end method

.method static synthetic access$200(Landroid/support/v4/view/ViewPager;)Landroid/support/v4/view/PagerAdapter;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    return-object v0
.end method

.method static synthetic access$300(Landroid/support/v4/view/ViewPager;)I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    return v0
.end method

.method static synthetic access$400()[I
    .locals 1

    .prologue
    .line 89
    sget-object v0, Landroid/support/v4/view/ViewPager;->LAYOUT_ATTRS:[I

    return-object v0
.end method

.method private calculatePageOffsets(Landroid/support/v4/view/ViewPager$ItemInfo;ILandroid/support/v4/view/ViewPager$ItemInfo;)V
    .locals 12

    .prologue
    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    .line 1127
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v7

    .line 1128
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v0

    .line 1129
    if-gtz v0, :cond_1

    const/4 v0, 0x0

    move v1, v0

    .line 1131
    :goto_0
    if-nez p3, :cond_2

    .line 1178
    :cond_0
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 1179
    iget v3, p1, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    .line 1180
    iget v0, p1, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    add-int/lit8 v2, v0, -0x1

    .line 1181
    iget v0, p1, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-eqz v0, :cond_a

    const v0, -0x800001

    :goto_1
    iput v0, p0, Landroid/support/v4/view/ViewPager;->mFirstOffset:F

    .line 1182
    iget v0, p1, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    add-int/lit8 v4, v7, -0x1

    if-eq v0, v4, :cond_b

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    :goto_2
    iput v0, p0, Landroid/support/v4/view/ViewPager;->mLastOffset:F

    .line 1185
    add-int/lit8 v0, p2, -0x1

    move v6, v0

    :goto_3
    if-gez v6, :cond_c

    .line 1194
    iget v0, p1, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    iget v2, p1, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v0, v2

    add-float v3, v0, v1

    .line 1195
    iget v0, p1, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    add-int/lit8 v2, v0, 0x1

    .line 1197
    add-int/lit8 v0, p2, 0x1

    move v6, v0

    :goto_4
    if-lt v6, v8, :cond_f

    .line 1209
    iput-boolean v5, p0, Landroid/support/v4/view/ViewPager;->mNeedCalculatePageOffsets:Z

    .line 1210
    return-void

    .line 1129
    :cond_1
    iget v1, p0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    move v1, v0

    goto :goto_0

    .line 1132
    :cond_2
    iget v0, p3, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    .line 1134
    iget v2, p1, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-lt v0, v2, :cond_4

    .line 1154
    iget v2, p1, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-le v0, v2, :cond_0

    .line 1155
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v3, v2, -0x1

    .line 1157
    iget v2, p3, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    .line 1158
    add-int/lit8 v0, v0, -0x1

    move v4, v3

    move v3, v2

    move v2, v0

    .line 1159
    :goto_5
    iget v0, p1, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-lt v2, v0, :cond_0

    if-ltz v4, :cond_0

    .line 1160
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 1161
    :goto_6
    iget v6, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-lt v2, v6, :cond_8

    :cond_3
    move v11, v2

    move v2, v3

    move v3, v11

    .line 1165
    :goto_7
    iget v6, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-gt v3, v6, :cond_9

    .line 1171
    iget v6, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v6, v1

    sub-float/2addr v2, v6

    .line 1172
    iput v2, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    .line 1159
    add-int/lit8 v0, v3, -0x1

    move v3, v2

    move v2, v0

    goto :goto_5

    .line 1137
    :cond_4
    iget v2, p3, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    iget v3, p3, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v2, v3

    add-float/2addr v2, v1

    .line 1138
    add-int/lit8 v0, v0, 0x1

    move v3, v2

    move v4, v5

    move v2, v0

    .line 1139
    :goto_8
    iget v0, p1, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-gt v2, v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_0

    .line 1140
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 1141
    :goto_9
    iget v6, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-gt v2, v6, :cond_6

    :cond_5
    move v11, v2

    move v2, v3

    move v3, v11

    .line 1145
    :goto_a
    iget v6, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-lt v3, v6, :cond_7

    .line 1151
    iput v2, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    .line 1152
    iget v0, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v0, v1

    add-float/2addr v2, v0

    .line 1139
    add-int/lit8 v0, v3, 0x1

    move v3, v2

    move v2, v0

    goto :goto_8

    .line 1141
    :cond_6
    iget-object v6, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v4, v6, :cond_5

    .line 1142
    add-int/lit8 v4, v4, 0x1

    .line 1143
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$ItemInfo;

    goto :goto_9

    .line 1148
    :cond_7
    iget-object v6, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v6, v3}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v6

    add-float/2addr v6, v1

    add-float/2addr v6, v2

    .line 1149
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v6

    goto :goto_a

    .line 1161
    :cond_8
    if-lez v4, :cond_3

    .line 1162
    add-int/lit8 v4, v4, -0x1

    .line 1163
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$ItemInfo;

    goto :goto_6

    .line 1168
    :cond_9
    iget-object v6, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v6, v3}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v6

    add-float/2addr v6, v1

    sub-float v6, v2, v6

    .line 1169
    add-int/lit8 v2, v3, -0x1

    move v3, v2

    move v2, v6

    goto :goto_7

    .line 1181
    :cond_a
    iget v0, p1, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    goto/16 :goto_1

    .line 1182
    :cond_b
    iget v0, p1, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    iget v4, p1, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v0, v4

    sub-float/2addr v0, v10

    goto/16 :goto_2

    .line 1186
    :cond_c
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$ItemInfo;

    move v4, v3

    .line 1187
    :goto_b
    iget v3, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-gt v2, v3, :cond_d

    .line 1190
    iget v3, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v3, v1

    sub-float v3, v4, v3

    .line 1191
    iput v3, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    .line 1192
    iget v0, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-eqz v0, :cond_e

    .line 1185
    :goto_c
    add-int/lit8 v0, v6, -0x1

    add-int/lit8 v2, v2, -0x1

    move v6, v0

    goto/16 :goto_3

    .line 1188
    :cond_d
    iget-object v9, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    add-int/lit8 v3, v2, -0x1

    invoke-virtual {v9, v2}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v2

    add-float/2addr v2, v1

    sub-float v2, v4, v2

    move v4, v2

    move v2, v3

    goto :goto_b

    .line 1192
    :cond_e
    iput v3, p0, Landroid/support/v4/view/ViewPager;->mFirstOffset:F

    goto :goto_c

    .line 1198
    :cond_f
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$ItemInfo;

    move v4, v3

    .line 1199
    :goto_d
    iget v3, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-lt v2, v3, :cond_10

    .line 1202
    iget v3, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    add-int/lit8 v9, v7, -0x1

    if-eq v3, v9, :cond_11

    .line 1205
    :goto_e
    iput v4, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    .line 1206
    iget v0, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v0, v1

    add-float v3, v4, v0

    .line 1197
    add-int/lit8 v0, v6, 0x1

    add-int/lit8 v2, v2, 0x1

    move v6, v0

    goto/16 :goto_4

    .line 1200
    :cond_10
    iget-object v9, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v9, v2}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v2

    add-float/2addr v2, v1

    add-float/2addr v2, v4

    move v4, v2

    move v2, v3

    goto :goto_d

    .line 1203
    :cond_11
    iget v3, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v3, v4

    sub-float/2addr v3, v10

    iput v3, p0, Landroid/support/v4/view/ViewPager;->mLastOffset:F

    goto :goto_e
.end method

.method private completeScroll(Z)V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1741
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mScrollState:I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    move v0, v1

    .line 1742
    :goto_0
    if-nez v0, :cond_1

    .line 1754
    :goto_1
    iput-boolean v1, p0, Landroid/support/v4/view/ViewPager;->mPopulatePending:Z

    move v3, v1

    move v4, v0

    .line 1755
    :goto_2
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v3, v0, :cond_4

    .line 1762
    if-nez v4, :cond_6

    .line 1769
    :goto_3
    return-void

    :cond_0
    move v0, v2

    .line 1741
    goto :goto_0

    .line 1744
    :cond_1
    invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 1745
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1746
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v3

    .line 1747
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v4

    .line 1748
    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrX()I

    move-result v5

    .line 1749
    iget-object v6, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->getCurrY()I

    move-result v6

    .line 1750
    if-eq v3, v5, :cond_3

    .line 1751
    :cond_2
    invoke-virtual {p0, v5, v6}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    goto :goto_1

    .line 1750
    :cond_3
    if-ne v4, v6, :cond_2

    goto :goto_1

    .line 1756
    :cond_4
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 1757
    iget-boolean v5, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->scrolling:Z

    if-nez v5, :cond_5

    .line 1755
    :goto_4
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    .line 1759
    :cond_5
    iput-boolean v1, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->scrolling:Z

    move v4, v2

    goto :goto_4

    .line 1763
    :cond_6
    if-nez p1, :cond_7

    .line 1766
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_3

    .line 1764
    :cond_7
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_3
.end method

.method private determineTargetPage(IFII)I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2156
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Landroid/support/v4/view/ViewPager;->mFlingDistance:I

    if-gt v0, v1, :cond_2

    .line 2159
    :cond_0
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    if-ge p1, v0, :cond_3

    const v0, 0x3f19999a    # 0.6f

    .line 2160
    :goto_0
    int-to-float v1, p1

    add-float/2addr v1, p2

    add-float/2addr v0, v1

    float-to-int p1, v0

    .line 2163
    :cond_1
    :goto_1
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_4

    .line 2171
    :goto_2
    return p1

    .line 2156
    :cond_2
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Landroid/support/v4/view/ViewPager;->mMinimumVelocity:I

    if-le v0, v1, :cond_0

    .line 2157
    if-gtz p3, :cond_1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_3
    const v0, 0x3ecccccd    # 0.4f

    .line 2159
    goto :goto_0

    .line 2164
    :cond_4
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 2165
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 2168
    iget v0, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    iget v1, v1, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_2
.end method

.method private enableLayers(Z)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1776
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v3

    move v2, v1

    .line 1777
    :goto_0
    if-lt v2, v3, :cond_0

    .line 1782
    return-void

    .line 1778
    :cond_0
    if-nez p1, :cond_1

    move v0, v1

    .line 1780
    :goto_1
    invoke-virtual {p0, v2}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v0, v5}, Landroid/support/v4/view/ViewCompat;->setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V

    .line 1777
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    .line 1778
    goto :goto_1
.end method

.method private endDrag()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 2404
    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    .line 2405
    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mIsUnableToDrag:Z

    .line 2407
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 2411
    :goto_0
    return-void

    .line 2408
    :cond_0
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 2409
    iput-object v1, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_0
.end method

.method private getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2585
    if-eqz p1, :cond_1

    .line 2588
    :goto_0
    if-eqz p2, :cond_2

    .line 2592
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 2593
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 2594
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 2595
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 2597
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2598
    :goto_1
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-nez v1, :cond_3

    .line 2607
    :cond_0
    return-object p1

    .line 2586
    :cond_1
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    goto :goto_0

    .line 2589
    :cond_2
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 2590
    return-object p1

    .line 2598
    :cond_3
    if-eq v0, p0, :cond_0

    .line 2599
    check-cast v0, Landroid/view/ViewGroup;

    .line 2600
    iget v1, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 2601
    iget v1, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getRight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 2602
    iget v1, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTop()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 2603
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBottom()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 2605
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_1
.end method

.method private getClientWidth()I
    .locals 2

    .prologue
    .line 483
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private infoForCurrentScrollPosition()Landroid/support/v4/view/ViewPager$ItemInfo;
    .locals 14

    .prologue
    const/4 v7, 0x1

    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 2113
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v2

    .line 2114
    if-gtz v2, :cond_0

    move v1, v0

    .line 2115
    :goto_0
    if-gtz v2, :cond_1

    move v2, v0

    :goto_1
    const/4 v5, -0x1

    const/4 v3, 0x0

    move v6, v7

    move v8, v0

    move v9, v0

    move v10, v5

    move-object v5, v3

    move v3, v4

    .line 2122
    :goto_2
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v3, v0, :cond_2

    .line 2151
    return-object v5

    .line 2114
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    int-to-float v3, v2

    div-float/2addr v1, v3

    goto :goto_0

    .line 2115
    :cond_1
    iget v3, p0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    int-to-float v3, v3

    int-to-float v2, v2

    div-float v2, v3, v2

    goto :goto_1

    .line 2123
    :cond_2
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 2125
    if-eqz v6, :cond_5

    :cond_3
    move-object v13, v0

    move v0, v3

    move-object v3, v13

    .line 2133
    :goto_3
    iget v8, v3, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    .line 2136
    iget v9, v3, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v9, v8

    add-float/2addr v9, v2

    .line 2137
    if-eqz v6, :cond_6

    .line 2138
    :cond_4
    cmpg-float v5, v1, v9

    if-gez v5, :cond_7

    move v5, v7

    :goto_4
    if-nez v5, :cond_8

    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-eq v0, v5, :cond_8

    .line 2145
    iget v6, v3, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    .line 2147
    iget v5, v3, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    .line 2122
    add-int/lit8 v0, v0, 0x1

    move v9, v8

    move v10, v6

    move v6, v4

    move v8, v5

    move-object v5, v3

    move v3, v0

    goto :goto_2

    .line 2125
    :cond_5
    iget v11, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    add-int/lit8 v12, v10, 0x1

    if-eq v11, v12, :cond_3

    .line 2127
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mTempItem:Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 2128
    add-float/2addr v8, v9

    add-float/2addr v8, v2

    iput v8, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    .line 2129
    add-int/lit8 v8, v10, 0x1

    iput v8, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    .line 2130
    iget-object v8, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget v9, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    invoke-virtual {v8, v9}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v8

    iput v8, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    .line 2131
    add-int/lit8 v3, v3, -0x1

    move-object v13, v0

    move v0, v3

    move-object v3, v13

    goto :goto_3

    .line 2137
    :cond_6
    cmpl-float v6, v1, v8

    if-gez v6, :cond_4

    .line 2142
    return-object v5

    :cond_7
    move v5, v4

    .line 2138
    goto :goto_4

    .line 2139
    :cond_8
    return-object v3
.end method

.method private isGutterDrag(FF)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 1772
    iget v2, p0, Landroid/support/v4/view/ViewPager;->mGutterSize:I

    int-to-float v2, v2

    cmpg-float v2, p1, v2

    if-gez v2, :cond_0

    cmpl-float v2, p2, v4

    if-lez v2, :cond_3

    move v2, v1

    :goto_0
    if-nez v2, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v2

    iget v3, p0, Landroid/support/v4/view/ViewPager;->mGutterSize:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v2, p1, v2

    if-lez v2, :cond_2

    cmpg-float v2, p2, v4

    if-gez v2, :cond_2

    :cond_1
    move v0, v1

    :cond_2
    return v0

    :cond_3
    move v2, v0

    goto :goto_0
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 2389
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v1

    .line 2390
    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v2

    .line 2391
    iget v3, p0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    if-eq v2, v3, :cond_1

    .line 2401
    :cond_0
    :goto_0
    return-void

    .line 2394
    :cond_1
    if-eqz v1, :cond_2

    .line 2395
    :goto_1
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v1

    iput v1, p0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    .line 2396
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    .line 2397
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 2398
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    .line 2394
    goto :goto_1
.end method

.method private pageScrolled(I)Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1636
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1645
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->infoForCurrentScrollPosition()Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v0

    .line 1646
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v1

    .line 1647
    iget v2, p0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    add-int/2addr v2, v1

    .line 1648
    iget v3, p0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    int-to-float v3, v3

    int-to-float v4, v1

    div-float/2addr v3, v4

    .line 1649
    iget v4, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    .line 1650
    int-to-float v5, p1

    int-to-float v1, v1

    div-float v1, v5, v1

    iget v5, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    sub-float/2addr v1, v5

    iget v0, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v0, v3

    div-float v0, v1, v0

    .line 1652
    int-to-float v1, v2

    mul-float/2addr v1, v0

    float-to-int v1, v1

    .line 1654
    iput-boolean v6, p0, Landroid/support/v4/view/ViewPager;->mCalledSuper:Z

    .line 1655
    invoke-virtual {p0, v4, v0, v1}, Landroid/support/v4/view/ViewPager;->onPageScrolled(IFI)V

    .line 1656
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mCalledSuper:Z

    if-eqz v0, :cond_2

    .line 1660
    const/4 v0, 0x1

    return v0

    .line 1637
    :cond_0
    iput-boolean v6, p0, Landroid/support/v4/view/ViewPager;->mCalledSuper:Z

    const/4 v0, 0x0

    .line 1638
    invoke-virtual {p0, v6, v0, v6}, Landroid/support/v4/view/ViewPager;->onPageScrolled(IFI)V

    .line 1639
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mCalledSuper:Z

    if-eqz v0, :cond_1

    .line 1643
    return v6

    .line 1640
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "onPageScrolled did not call superclass implementation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1657
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "onPageScrolled did not call superclass implementation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private performDrag(F)Z
    .locals 10

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2064
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    sub-float/2addr v0, p1

    .line 2065
    iput p1, p0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    .line 2067
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    .line 2068
    add-float v5, v1, v0

    .line 2069
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v7

    .line 2071
    int-to-float v0, v7

    iget v1, p0, Landroid/support/v4/view/ViewPager;->mFirstOffset:F

    mul-float v4, v0, v1

    .line 2072
    int-to-float v0, v7

    iget v1, p0, Landroid/support/v4/view/ViewPager;->mLastOffset:F

    mul-float v6, v0, v1

    .line 2076
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 2077
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    iget-object v8, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 2078
    iget v8, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-nez v8, :cond_0

    move v0, v2

    .line 2082
    :goto_0
    iget v8, v1, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    iget-object v9, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v9}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ne v8, v9, :cond_1

    move v1, v6

    .line 2087
    :goto_1
    cmpg-float v6, v5, v4

    if-gez v6, :cond_3

    .line 2088
    if-nez v0, :cond_2

    .line 2101
    :goto_2
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    float-to-int v1, v4

    int-to-float v1, v1

    sub-float v1, v4, v1

    add-float/2addr v0, v1

    iput v0, p0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    .line 2102
    float-to-int v0, v4

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 2103
    float-to-int v0, v4

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->pageScrolled(I)Z

    .line 2105
    return v3

    .line 2080
    :cond_0
    iget v0, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    int-to-float v4, v7

    mul-float/2addr v0, v4

    move v4, v0

    move v0, v3

    goto :goto_0

    .line 2084
    :cond_1
    iget v1, v1, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    int-to-float v2, v7

    mul-float/2addr v1, v2

    move v2, v3

    goto :goto_1

    .line 2089
    :cond_2
    sub-float v0, v4, v5

    .line 2090
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    int-to-float v2, v7

    div-float/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(F)Z

    move-result v3

    goto :goto_2

    .line 2093
    :cond_3
    cmpl-float v0, v5, v1

    if-lez v0, :cond_4

    .line 2094
    if-nez v2, :cond_5

    :goto_3
    move v4, v1

    .line 2098
    goto :goto_2

    :cond_4
    move v4, v5

    .line 2093
    goto :goto_2

    .line 2095
    :cond_5
    sub-float v0, v5, v1

    .line 2096
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    int-to-float v3, v7

    div-float/2addr v0, v3

    invoke-virtual {v2, v0}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(F)Z

    move-result v3

    goto :goto_3
.end method

.method private recomputeScrollPosition(IIII)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1473
    if-gtz p2, :cond_2

    .line 1490
    :cond_0
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->infoForPosition(I)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v0

    .line 1491
    if-nez v0, :cond_3

    const/4 v0, 0x0

    .line 1492
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 1494
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 1499
    :cond_1
    :goto_1
    return-void

    .line 1473
    :cond_2
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1474
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/2addr v0, p3

    .line 1475
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v1

    sub-int v1, p2, v1

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v3

    sub-int/2addr v1, v3

    add-int/2addr v1, p4

    .line 1477
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v3

    .line 1478
    int-to-float v3, v3

    int-to-float v1, v1

    div-float v1, v3, v1

    .line 1479
    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v1, v0

    .line 1481
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 1482
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1484
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getDuration()I

    move-result v0

    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->timePassed()I

    move-result v3

    sub-int v5, v0, v3

    .line 1485
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->infoForPosition(I)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v3

    .line 1486
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    iget v3, v3, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    int-to-float v4, p1

    mul-float/2addr v3, v4

    float-to-int v3, v3

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_1

    .line 1491
    :cond_3
    iget v0, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    iget v1, p0, Landroid/support/v4/view/ViewPager;->mLastOffset:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_0

    .line 1495
    :cond_4
    invoke-direct {p0, v2}, Landroid/support/v4/view/ViewPager;->completeScroll(Z)V

    .line 1496
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    goto :goto_1
.end method

.method private removeNonDecorViews()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    move v1, v0

    .line 459
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v0

    if-lt v1, v0, :cond_0

    .line 467
    return-void

    .line 460
    :cond_0
    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 461
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$LayoutParams;

    .line 462
    iget-boolean v0, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    if-eqz v0, :cond_1

    .line 459
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 463
    :cond_1
    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->removeViewAt(I)V

    .line 464
    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method private requestParentDisallowInterceptTouchEvent(Z)V
    .locals 1

    .prologue
    .line 2055
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2056
    if-nez v0, :cond_0

    .line 2059
    :goto_0
    return-void

    .line 2057
    :cond_0
    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0
.end method

.method private scrollToItem(IZIZ)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 562
    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewPager;->infoForPosition(I)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v0

    .line 564
    if-nez v0, :cond_3

    move v0, v1

    .line 569
    :goto_0
    if-nez p2, :cond_4

    .line 578
    if-nez p4, :cond_7

    .line 581
    :cond_0
    :goto_1
    if-nez p4, :cond_8

    .line 584
    :cond_1
    :goto_2
    invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->completeScroll(Z)V

    .line 585
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 586
    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->pageScrolled(I)Z

    .line 588
    :cond_2
    :goto_3
    return-void

    .line 565
    :cond_3
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v2

    .line 566
    int-to-float v2, v2

    iget v3, p0, Landroid/support/v4/view/ViewPager;->mFirstOffset:F

    iget v0, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    iget v4, p0, Landroid/support/v4/view/ViewPager;->mLastOffset:F

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_0

    .line 570
    :cond_4
    invoke-virtual {p0, v0, v1, p3}, Landroid/support/v4/view/ViewPager;->smoothScrollTo(III)V

    .line 571
    if-nez p4, :cond_6

    .line 574
    :cond_5
    :goto_4
    if-eqz p4, :cond_2

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_2

    .line 575
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    goto :goto_3

    .line 571
    :cond_6
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_5

    .line 572
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    goto :goto_4

    .line 578
    :cond_7
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v2, :cond_0

    .line 579
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v2, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    goto :goto_1

    .line 581
    :cond_8
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v2, :cond_1

    .line 582
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v2, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    goto :goto_2
.end method

.method private setScrollState(I)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 393
    iget v1, p0, Landroid/support/v4/view/ViewPager;->mScrollState:I

    if-eq v1, p1, :cond_0

    .line 397
    iput p1, p0, Landroid/support/v4/view/ViewPager;->mScrollState:I

    .line 398
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mPageTransformer:Landroid/support/v4/view/ViewPager$PageTransformer;

    if-nez v1, :cond_1

    .line 402
    :goto_0
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-nez v0, :cond_3

    .line 405
    :goto_1
    return-void

    .line 394
    :cond_0
    return-void

    .line 400
    :cond_1
    if-nez p1, :cond_2

    :goto_2
    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->enableLayers(Z)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_2

    .line 403
    :cond_3
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    goto :goto_1
.end method

.method private setScrollingCacheEnabled(Z)V
    .locals 1

    .prologue
    .line 2414
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mScrollingCacheEnabled:Z

    if-ne v0, p1, :cond_0

    .line 2426
    :goto_0
    return-void

    .line 2415
    :cond_0
    iput-boolean p1, p0, Landroid/support/v4/view/ViewPager;->mScrollingCacheEnabled:Z

    goto :goto_0
.end method

.method private sortChildDrawingOrder()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1111
    iget v1, p0, Landroid/support/v4/view/ViewPager;->mDrawingOrder:I

    if-nez v1, :cond_0

    .line 1124
    :goto_0
    return-void

    .line 1112
    :cond_0
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 1115
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1117
    :goto_1
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v1

    .line 1118
    :goto_2
    if-lt v0, v1, :cond_2

    .line 1122
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    sget-object v1, Landroid/support/v4/view/ViewPager;->sPositionComparator:Landroid/support/v4/view/ViewPager$ViewPositionComparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    .line 1113
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/v4/view/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    goto :goto_1

    .line 1119
    :cond_2
    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1120
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1118
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method


# virtual methods
.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 6
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
    const/4 v0, 0x0

    .line 2631
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2633
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getDescendantFocusability()I

    move-result v2

    const/high16 v3, 0x60000

    .line 2635
    if-ne v2, v3, :cond_4

    :goto_0
    const/high16 v0, 0x40000

    .line 2651
    if-eq v2, v0, :cond_6

    .line 2657
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2660
    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    .line 2664
    :cond_1
    if-nez p1, :cond_9

    .line 2668
    :goto_1
    return-void

    .line 2637
    :cond_2
    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2638
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_5

    .line 2636
    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    :cond_4
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v3

    if-lt v0, v3, :cond_2

    goto :goto_0

    .line 2639
    :cond_5
    invoke-virtual {p0, v3}, Landroid/support/v4/view/ViewPager;->infoForChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v4

    .line 2640
    if-eqz v4, :cond_3

    iget v4, v4, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    iget v5, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    if-ne v4, v5, :cond_3

    .line 2641
    invoke-virtual {v3, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    goto :goto_2

    .line 2651
    :cond_6
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq v1, v0, :cond_0

    goto :goto_1

    .line 2658
    :cond_7
    return-void

    .line 2660
    :cond_8
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->isFocusableInTouchMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2662
    return-void

    .line 2665
    :cond_9
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method addNewItem(II)Landroid/support/v4/view/ViewPager$ItemInfo;
    .locals 2

    .prologue
    .line 835
    new-instance v0, Landroid/support/v4/view/ViewPager$ItemInfo;

    invoke-direct {v0}, Landroid/support/v4/view/ViewPager$ItemInfo;-><init>()V

    .line 836
    iput p1, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    .line 837
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v1, p0, p1}, Landroid/support/v4/view/PagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    .line 838
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v1, p1}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v1

    iput v1, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    .line 839
    if-gez p2, :cond_1

    .line 840
    :cond_0
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 844
    :goto_0
    return-object v0

    .line 839
    :cond_1
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p2, v1, :cond_0

    .line 842
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 4
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
    const/4 v0, 0x0

    .line 2678
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 2687
    return-void

    .line 2679
    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2680
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_2

    .line 2678
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2681
    :cond_2
    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->infoForChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v2

    .line 2682
    if-eqz v2, :cond_1

    iget v2, v2, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    iget v3, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    if-ne v2, v3, :cond_1

    .line 2683
    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    goto :goto_1
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 4

    .prologue
    .line 1297
    invoke-virtual {p0, p3}, Landroid/support/v4/view/ViewPager;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v1, p3

    :goto_0
    move-object v0, v1

    .line 1300
    check-cast v0, Landroid/support/v4/view/ViewPager$LayoutParams;

    .line 1301
    iget-boolean v2, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    instance-of v3, p1, Landroid/support/v4/view/ViewPager$Decor;

    or-int/2addr v2, v3

    iput-boolean v2, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    .line 1302
    iget-boolean v2, p0, Landroid/support/v4/view/ViewPager;->mInLayout:Z

    if-nez v2, :cond_1

    .line 1309
    invoke-super {p0, p1, p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1319
    :goto_1
    return-void

    .line 1298
    :cond_0
    invoke-virtual {p0, p3}, Landroid/support/v4/view/ViewPager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    goto :goto_0

    .line 1303
    :cond_1
    if-nez v0, :cond_3

    .line 1306
    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->needsMeasure:Z

    .line 1307
    invoke-virtual {p0, p1, p2, v1}, Landroid/support/v4/view/ViewPager;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    goto :goto_1

    .line 1303
    :cond_3
    iget-boolean v2, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    if-eqz v2, :cond_2

    .line 1304
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot add pager decor view during layout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public arrowScroll(I)Z
    .locals 9

    .prologue
    const/16 v8, 0x42

    const/16 v7, 0x11

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 2519
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->findFocus()Landroid/view/View;

    move-result-object v1

    .line 2520
    if-eq v1, p0, :cond_2

    .line 2522
    if-nez v1, :cond_3

    move-object v0, v1

    .line 2547
    :goto_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    invoke-virtual {v1, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 2549
    if-nez v1, :cond_8

    .line 2571
    :cond_0
    if-ne p1, v7, :cond_f

    .line 2573
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->pageLeft()Z

    move-result v0

    .line 2578
    :goto_1
    if-nez v0, :cond_12

    .line 2581
    :goto_2
    return v0

    :cond_2
    move-object v0, v2

    .line 2521
    goto :goto_0

    .line 2524
    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_3
    instance-of v5, v0, Landroid/view/ViewGroup;

    if-nez v5, :cond_4

    move v0, v3

    .line 2531
    :goto_4
    if-eqz v0, :cond_6

    move-object v0, v1

    goto :goto_0

    .line 2526
    :cond_4
    if-eq v0, p0, :cond_5

    .line 2525
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_3

    :cond_5
    move v0, v4

    .line 2528
    goto :goto_4

    .line 2533
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 2534
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2535
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_5
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-nez v1, :cond_7

    const-string/jumbo v0, "ViewPager"

    .line 2539
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "arrowScroll tried to find focus based on non-child current focused view "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    .line 2541
    goto :goto_0

    :cond_7
    const-string/jumbo v1, " => "

    .line 2537
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2536
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_5

    .line 2549
    :cond_8
    if-eq v1, v0, :cond_0

    .line 2550
    if-eq p1, v7, :cond_9

    .line 2560
    if-eq p1, v8, :cond_c

    move v0, v3

    goto :goto_1

    .line 2553
    :cond_9
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v2, v1}, Landroid/support/v4/view/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    .line 2554
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v3, v0}, Landroid/support/v4/view/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    .line 2555
    if-nez v0, :cond_b

    .line 2558
    :cond_a
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    move-result v0

    goto/16 :goto_1

    .line 2555
    :cond_b
    if-lt v2, v3, :cond_a

    .line 2556
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->pageLeft()Z

    move-result v0

    goto/16 :goto_1

    .line 2563
    :cond_c
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v2, v1}, Landroid/support/v4/view/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    .line 2564
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v3, v0}, Landroid/support/v4/view/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    .line 2565
    if-nez v0, :cond_e

    .line 2568
    :cond_d
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    move-result v0

    goto/16 :goto_1

    .line 2565
    :cond_e
    if-gt v2, v3, :cond_d

    .line 2566
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->pageRight()Z

    move-result v0

    goto/16 :goto_1

    .line 2571
    :cond_f
    if-eq p1, v4, :cond_1

    .line 2574
    if-ne p1, v8, :cond_11

    .line 2576
    :cond_10
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->pageRight()Z

    move-result v0

    goto/16 :goto_1

    :cond_11
    const/4 v0, 0x2

    .line 2574
    if-eq p1, v0, :cond_10

    move v0, v3

    goto/16 :goto_1

    .line 2579
    :cond_12
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->playSoundEffect(I)V

    goto/16 :goto_2
.end method

.method public beginFakeDrag()Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 2278
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    if-nez v0, :cond_0

    .line 2281
    iput-boolean v8, p0, Landroid/support/v4/view/ViewPager;->mFakeDragging:Z

    .line 2282
    invoke-direct {p0, v8}, Landroid/support/v4/view/ViewPager;->setScrollState(I)V

    .line 2283
    iput v5, p0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    iput v5, p0, Landroid/support/v4/view/ViewPager;->mInitialMotionX:F

    .line 2284
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    .line 2287
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 2289
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    move-wide v2, v0

    move v6, v5

    move v7, v4

    .line 2290
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v2

    .line 2291
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, v2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2292
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 2293
    iput-wide v0, p0, Landroid/support/v4/view/ViewPager;->mFakeDragBeginTime:J

    .line 2294
    return v8

    .line 2279
    :cond_0
    return v4

    .line 2285
    :cond_1
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_0
.end method

.method protected canScroll(Landroid/view/View;ZIII)Z
    .locals 10

    .prologue
    .line 2456
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-nez v0, :cond_2

    .line 2475
    :cond_0
    if-nez p2, :cond_5

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    move-object v6, p1

    .line 2457
    check-cast v6, Landroid/view/ViewGroup;

    .line 2458
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v8

    .line 2459
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v9

    .line 2460
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 2462
    add-int/lit8 v0, v0, -0x1

    move v7, v0

    :goto_1
    if-ltz v7, :cond_0

    .line 2465
    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2466
    add-int v0, p4, v8

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 2462
    :cond_3
    add-int/lit8 v0, v7, -0x1

    move v7, v0

    goto :goto_1

    .line 2466
    :cond_4
    add-int v0, p4, v8

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    if-ge v0, v2, :cond_3

    add-int v0, p5, v9

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    if-lt v0, v2, :cond_3

    add-int v0, p5, v9

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    if-ge v0, v2, :cond_3

    add-int v0, p4, v8

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int v4, v0, v2

    add-int v0, p5, v9

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int v5, v0, v2

    const/4 v2, 0x1

    move-object v0, p0

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/view/ViewPager;->canScroll(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2470
    const/4 v0, 0x1

    return v0

    .line 2475
    :cond_5
    neg-int v0, p3

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public canScrollHorizontally(I)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2429
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v2, :cond_0

    .line 2433
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v2

    .line 2434
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v3

    .line 2435
    if-ltz p1, :cond_1

    .line 2437
    if-gtz p1, :cond_3

    .line 2440
    return v0

    .line 2430
    :cond_0
    return v0

    .line 2436
    :cond_1
    int-to-float v2, v2

    iget v4, p0, Landroid/support/v4/view/ViewPager;->mFirstOffset:F

    mul-float/2addr v2, v4

    float-to-int v2, v2

    if-gt v3, v2, :cond_2

    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 2438
    :cond_3
    int-to-float v2, v2

    iget v4, p0, Landroid/support/v4/view/ViewPager;->mLastOffset:F

    mul-float/2addr v2, v4

    float-to-int v2, v2

    if-lt v3, v2, :cond_4

    :goto_1
    return v0

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2757
    instance-of v1, p1, Landroid/support/v4/view/ViewPager$LayoutParams;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1612
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1632
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->completeScroll(Z)V

    .line 1633
    return-void

    .line 1612
    :cond_1
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1613
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v0

    .line 1614
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v1

    .line 1615
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    .line 1616
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    .line 1618
    if-eq v0, v2, :cond_3

    .line 1619
    :cond_2
    invoke-virtual {p0, v2, v3}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 1620
    invoke-direct {p0, v2}, Landroid/support/v4/view/ViewPager;->pageScrolled(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1627
    :goto_0
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1628
    return-void

    .line 1618
    :cond_3
    if-ne v1, v3, :cond_2

    goto :goto_0

    .line 1621
    :cond_4
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1622
    invoke-virtual {p0, v4, v3}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    goto :goto_0
.end method

.method dataSetChanged()V
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 850
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v8

    .line 851
    iput v8, p0, Landroid/support/v4/view/ViewPager;->mExpectedAdapterCount:I

    .line 852
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v3, p0, Landroid/support/v4/view/ViewPager;->mOffscreenPageLimit:I

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    if-lt v0, v3, :cond_1

    :cond_0
    move v0, v2

    .line 854
    :goto_0
    iget v3, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    move v4, v2

    move v5, v3

    move v6, v0

    move v3, v2

    .line 857
    :goto_1
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v3, v0, :cond_2

    .line 896
    if-nez v4, :cond_9

    .line 900
    :goto_2
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    sget-object v3, Landroid/support/v4/view/ViewPager;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 902
    if-nez v6, :cond_a

    .line 916
    :goto_3
    return-void

    .line 852
    :cond_1
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, v8, :cond_0

    move v0, v1

    goto :goto_0

    .line 858
    :cond_2
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 859
    iget-object v7, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v9, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v7, v9}, Landroid/support/v4/view/PagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v7

    const/4 v9, -0x1

    .line 861
    if-eq v7, v9, :cond_3

    const/4 v9, -0x2

    .line 865
    if-eq v7, v9, :cond_4

    .line 885
    iget v9, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-ne v9, v7, :cond_7

    move v0, v3

    move v3, v4

    move v4, v5

    move v5, v6

    .line 857
    :goto_4
    add-int/lit8 v0, v0, 0x1

    move v6, v5

    move v5, v4

    move v4, v3

    move v3, v0

    goto :goto_1

    :cond_3
    move v0, v3

    move v3, v4

    move v4, v5

    move v5, v6

    .line 862
    goto :goto_4

    .line 866
    :cond_4
    iget-object v6, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 867
    add-int/lit8 v3, v3, -0x1

    .line 869
    if-eqz v4, :cond_5

    .line 874
    :goto_5
    iget-object v6, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget v7, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    iget-object v9, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v6, p0, v7, v9}, Landroid/support/v4/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 877
    iget v6, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    iget v0, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-eq v6, v0, :cond_6

    move v0, v3

    move v3, v4

    move v4, v5

    move v5, v1

    goto :goto_4

    .line 870
    :cond_5
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v4, p0}, Landroid/support/v4/view/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    move v4, v1

    .line 871
    goto :goto_5

    .line 879
    :cond_6
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    add-int/lit8 v5, v8, -0x1

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v0, v3

    move v3, v4

    move v4, v5

    move v5, v1

    .line 880
    goto :goto_4

    .line 886
    :cond_7
    iget v6, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    iget v9, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    if-eq v6, v9, :cond_8

    .line 891
    :goto_6
    iput v7, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    move v0, v3

    move v3, v4

    move v4, v5

    move v5, v1

    .line 892
    goto :goto_4

    :cond_8
    move v5, v7

    .line 888
    goto :goto_6

    .line 897
    :cond_9
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    goto/16 :goto_2

    .line 904
    :cond_a
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v4

    move v3, v2

    .line 905
    :goto_7
    if-lt v3, v4, :cond_b

    .line 913
    invoke-virtual {p0, v5, v2, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItemInternal(IZZ)V

    .line 914
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->requestLayout()V

    goto/16 :goto_3

    .line 906
    :cond_b
    invoke-virtual {p0, v3}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 907
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$LayoutParams;

    .line 908
    iget-boolean v6, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    if-eqz v6, :cond_c

    .line 905
    :goto_8
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_7

    :cond_c
    const/4 v6, 0x0

    .line 909
    iput v6, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->widthFactor:F

    goto :goto_8
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2481
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewPager;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 2725
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v2, 0x1000

    if-eq v0, v2, :cond_0

    .line 2730
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v2

    move v0, v1

    .line 2731
    :goto_0
    if-lt v0, v2, :cond_1

    .line 2742
    return v1

    .line 2726
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0

    .line 2732
    :cond_1
    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2733
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_3

    .line 2731
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2734
    :cond_3
    invoke-virtual {p0, v3}, Landroid/support/v4/view/ViewPager;->infoForChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v4

    .line 2735
    if-eqz v4, :cond_2

    iget v4, v4, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    iget v5, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    if-ne v4, v5, :cond_2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2737
    const/4 v0, 0x1

    return v0
.end method

.method distanceInfluenceForSnapDuration(F)F
    .locals 4

    .prologue
    const/high16 v0, 0x3f000000    # 0.5f

    .line 771
    sub-float v0, p1, v0

    .line 772
    float-to-double v0, v0

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v0, v2

    double-to-float v0, v0

    .line 773
    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 2176
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 2179
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getOverScrollMode(Landroid/view/View;)I

    move-result v1

    .line 2180
    if-nez v1, :cond_1

    .line 2183
    :cond_0
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2194
    :goto_0
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2210
    :goto_1
    if-nez v0, :cond_6

    .line 2214
    :goto_2
    return-void

    .line 2180
    :cond_1
    if-eq v1, v2, :cond_3

    .line 2206
    :cond_2
    :goto_3
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->finish()V

    .line 2207
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->finish()V

    goto :goto_1

    .line 2180
    :cond_3
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    if-gt v1, v2, :cond_0

    goto :goto_3

    .line 2184
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 2185
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v0, v2

    .line 2186
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v2

    const/high16 v3, 0x43870000    # 270.0f

    .line 2188
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2189
    neg-int v3, v0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Landroid/support/v4/view/ViewPager;->mFirstOffset:F

    int-to-float v5, v2

    mul-float/2addr v4, v5

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2190
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v3, v0, v2}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    .line 2191
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v0

    or-int/lit8 v0, v0, 0x0

    .line 2192
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0

    .line 2195
    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 2196
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v2

    .line 2197
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    const/high16 v4, 0x42b40000    # 90.0f

    .line 2199
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2200
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    iget v5, p0, Landroid/support/v4/view/ViewPager;->mLastOffset:F

    const/high16 v6, 0x3f800000    # 1.0f

    add-float/2addr v5, v6

    neg-float v5, v5

    int-to-float v6, v2

    mul-float/2addr v5, v6

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2201
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v4, v3, v2}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    .line 2202
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v2, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v2

    or-int/2addr v0, v2

    .line 2203
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_1

    .line 2212
    :cond_6
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto/16 :goto_2
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 759
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 760
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    .line 761
    if-nez v0, :cond_1

    .line 764
    :cond_0
    :goto_0
    return-void

    .line 761
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 762
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0
.end method

.method public endFakeDrag()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 2304
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mFakeDragging:Z

    if-eqz v0, :cond_0

    .line 2308
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    .line 2309
    iget v2, p0, Landroid/support/v4/view/ViewPager;->mMaximumVelocity:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2310
    iget v1, p0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    invoke-static {v0, v1}, Landroid/support/v4/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    move-result v0

    float-to-int v0, v0

    .line 2312
    iput-boolean v5, p0, Landroid/support/v4/view/ViewPager;->mPopulatePending:Z

    .line 2313
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v1

    .line 2314
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v2

    .line 2315
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->infoForCurrentScrollPosition()Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v3

    .line 2316
    iget v4, v3, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    .line 2317
    int-to-float v2, v2

    int-to-float v1, v1

    div-float v1, v2, v1

    iget v2, v3, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    sub-float/2addr v1, v2

    iget v2, v3, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    div-float/2addr v1, v2

    .line 2318
    iget v2, p0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    iget v3, p0, Landroid/support/v4/view/ViewPager;->mInitialMotionX:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    .line 2319
    invoke-direct {p0, v4, v1, v0, v2}, Landroid/support/v4/view/ViewPager;->determineTargetPage(IFII)I

    move-result v1

    .line 2321
    invoke-virtual {p0, v1, v5, v5, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItemInternal(IZZI)V

    .line 2322
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->endDrag()V

    .line 2324
    iput-boolean v6, p0, Landroid/support/v4/view/ViewPager;->mFakeDragging:Z

    .line 2325
    return-void

    .line 2305
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "No fake drag in progress. Call beginFakeDrag first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 2494
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-eqz v1, :cond_1

    .line 2515
    :cond_0
    :goto_0
    return v0

    .line 2495
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const/16 v0, 0x11

    .line 2497
    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->arrowScroll(I)Z

    move-result v0

    goto :goto_0

    :sswitch_1
    const/16 v0, 0x42

    .line 2500
    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->arrowScroll(I)Z

    move-result v0

    goto :goto_0

    .line 2503
    :sswitch_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 2506
    invoke-static {p1}, Landroid/support/v4/view/KeyEventCompat;->hasNoModifiers(Landroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2508
    invoke-static {p1, v3}, Landroid/support/v4/view/KeyEventCompat;->hasModifiers(Landroid/view/KeyEvent;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2509
    invoke-virtual {p0, v3}, Landroid/support/v4/view/ViewPager;->arrowScroll(I)Z

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    .line 2507
    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->arrowScroll(I)Z

    move-result v0

    goto :goto_0

    .line 2495
    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x3d -> :sswitch_2
    .end sparse-switch
.end method

.method public fakeDragBy(F)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 2335
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mFakeDragging:Z

    if-eqz v0, :cond_0

    .line 2339
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    add-float/2addr v0, p1

    iput v0, p0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    .line 2341
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    .line 2342
    sub-float v3, v0, p1

    .line 2343
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v5

    .line 2345
    int-to-float v0, v5

    iget v1, p0, Landroid/support/v4/view/ViewPager;->mFirstOffset:F

    mul-float v2, v0, v1

    .line 2346
    int-to-float v0, v5

    iget v1, p0, Landroid/support/v4/view/ViewPager;->mLastOffset:F

    mul-float v4, v0, v1

    .line 2348
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 2349
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    iget-object v6, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 2350
    iget v6, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-nez v6, :cond_1

    move v0, v2

    .line 2353
    :goto_0
    iget v2, v1, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    iget-object v6, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v6}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne v2, v6, :cond_2

    move v1, v4

    .line 2357
    :goto_1
    cmpg-float v2, v3, v0

    if-gez v2, :cond_3

    .line 2363
    :goto_2
    iget v1, p0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    float-to-int v2, v0

    int-to-float v2, v2

    sub-float v2, v0, v2

    add-float/2addr v1, v2

    iput v1, p0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    .line 2364
    float-to-int v1, v0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 2365
    float-to-int v0, v0

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->pageScrolled(I)Z

    .line 2368
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 2369
    iget-wide v0, p0, Landroid/support/v4/view/ViewPager;->mFakeDragBeginTime:J

    const/4 v4, 0x2

    iget v5, p0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    const/4 v6, 0x0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 2371
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2372
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 2373
    return-void

    .line 2336
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "No fake drag in progress. Call beginFakeDrag first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2351
    :cond_1
    iget v0, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    int-to-float v2, v5

    mul-float/2addr v0, v2

    goto :goto_0

    .line 2354
    :cond_2
    iget v1, v1, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    int-to-float v2, v5

    mul-float/2addr v1, v2

    goto :goto_1

    .line 2359
    :cond_3
    cmpl-float v0, v3, v1

    if-lez v0, :cond_4

    move v0, v1

    .line 2360
    goto :goto_2

    :cond_4
    move v0, v3

    .line 2359
    goto :goto_2
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 2747
    new-instance v0, Landroid/support/v4/view/ViewPager$LayoutParams;

    invoke-direct {v0}, Landroid/support/v4/view/ViewPager$LayoutParams;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    .line 2762
    new-instance v0, Landroid/support/v4/view/ViewPager$LayoutParams;

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/v4/view/ViewPager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 2752
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/support/v4/view/PagerAdapter;
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    return-object v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 2

    .prologue
    .line 647
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mDrawingOrder:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 648
    :goto_0
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$LayoutParams;

    iget v0, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->childIndex:I

    .line 649
    return v0

    .line 647
    :cond_0
    add-int/lit8 v0, p1, -0x1

    sub-int p2, v0, p2

    goto :goto_0
.end method

.method public getCurrentItem()I
    .locals 1

    .prologue
    .line 510
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    return v0
.end method

.method public getOffscreenPageLimit()I
    .locals 1

    .prologue
    .line 672
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mOffscreenPageLimit:I

    return v0
.end method

.method public getPageMargin()I
    .locals 1

    .prologue
    .line 728
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    return v0
.end method

.method infoForAnyChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1342
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 1348
    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewPager;->infoForChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v0

    return-object v0

    .line 1343
    :cond_0
    if-nez v0, :cond_2

    .line 1344
    :cond_1
    return-object v2

    .line 1343
    :cond_2
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_1

    .line 1346
    check-cast v0, Landroid/view/View;

    move-object p1, v0

    goto :goto_0
.end method

.method infoForChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;
    .locals 4

    .prologue
    const/4 v0, 0x0

    move v1, v0

    .line 1331
    :goto_0
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    const/4 v0, 0x0

    .line 1337
    return-object v0

    .line 1332
    :cond_0
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 1333
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v3, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Landroid/support/v4/view/PagerAdapter;->isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1331
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1334
    :cond_1
    return-object v0
.end method

.method infoForPosition(I)Landroid/support/v4/view/ViewPager$ItemInfo;
    .locals 3

    .prologue
    const/4 v0, 0x0

    move v1, v0

    .line 1352
    :goto_0
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    const/4 v0, 0x0

    .line 1358
    return-object v0

    .line 1353
    :cond_0
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 1354
    iget v2, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-eq v2, p1, :cond_1

    .line 1352
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1355
    :cond_1
    return-object v0
.end method

.method initViewPager()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 359
    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->setWillNotDraw(Z)V

    const/high16 v0, 0x40000

    .line 360
    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->setDescendantFocusability(I)V

    .line 361
    invoke-virtual {p0, v4}, Landroid/support/v4/view/ViewPager;->setFocusable(Z)V

    .line 362
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 363
    new-instance v1, Landroid/widget/Scroller;

    sget-object v2, Landroid/support/v4/view/ViewPager;->sInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v1, v0, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    .line 364
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 365
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 367
    invoke-static {v1}, Landroid/support/v4/view/ViewConfigurationCompat;->getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I

    move-result v3

    iput v3, p0, Landroid/support/v4/view/ViewPager;->mTouchSlop:I

    const/high16 v3, 0x43c80000    # 400.0f

    .line 368
    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, p0, Landroid/support/v4/view/ViewPager;->mMinimumVelocity:I

    .line 369
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/support/v4/view/ViewPager;->mMaximumVelocity:I

    .line 370
    new-instance v1, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-direct {v1, v0}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v4/view/ViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 371
    new-instance v1, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-direct {v1, v0}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v4/view/ViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    const/high16 v0, 0x41c80000    # 25.0f

    .line 373
    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->mFlingDistance:I

    const/high16 v0, 0x40000000    # 2.0f

    .line 374
    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->mCloseEnough:I

    const/high16 v0, 0x41800000    # 16.0f

    .line 375
    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->mDefaultGutterSize:I

    .line 377
    new-instance v0, Landroid/support/v4/view/ViewPager$MyAccessibilityDelegate;

    invoke-direct {v0, p0}, Landroid/support/v4/view/ViewPager$MyAccessibilityDelegate;-><init>(Landroid/support/v4/view/ViewPager;)V

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 379
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 384
    :goto_0
    return-void

    .line 381
    :cond_0
    invoke-static {p0, v4}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    goto :goto_0
.end method

.method public isFakeDragging()Z
    .locals 1

    .prologue
    .line 2385
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mFakeDragging:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 1363
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 1364
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mFirstLayout:Z

    .line 1365
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 389
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 390
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 16

    .prologue
    .line 2218
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 2221
    move-object/from16 v0, p0

    iget v1, v0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    if-gtz v1, :cond_1

    .line 2258
    :cond_0
    return-void

    .line 2221
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v4/view/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v1, :cond_0

    .line 2222
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v6

    .line 2223
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v7

    .line 2225
    move-object/from16 v0, p0

    iget v1, v0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    int-to-float v1, v1

    int-to-float v2, v7

    div-float v8, v1, v2

    const/4 v5, 0x0

    .line 2227
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 2228
    iget v4, v1, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    .line 2229
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 2230
    iget v3, v1, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    .line 2231
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    add-int/lit8 v10, v9, -0x1

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager$ItemInfo;

    iget v10, v2, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    move v2, v5

    move v5, v3

    .line 2232
    :goto_0
    if-ge v5, v10, :cond_0

    .line 2233
    :goto_1
    iget v3, v1, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-gt v5, v3, :cond_4

    .line 2238
    :cond_2
    iget v3, v1, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-eq v5, v3, :cond_5

    .line 2242
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v3, v5}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v11

    .line 2243
    add-float v3, v4, v11

    int-to-float v12, v7

    mul-float/2addr v3, v12

    .line 2244
    add-float/2addr v11, v8

    add-float/2addr v4, v11

    .line 2247
    :goto_2
    move-object/from16 v0, p0

    iget v11, v0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    int-to-float v11, v11

    add-float/2addr v11, v3

    int-to-float v12, v6

    cmpl-float v11, v11, v12

    if-lez v11, :cond_3

    .line 2248
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/support/v4/view/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    float-to-int v12, v3

    move-object/from16 v0, p0

    iget v13, v0, Landroid/support/v4/view/ViewPager;->mTopPageBounds:I

    move-object/from16 v0, p0

    iget v14, v0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    int-to-float v14, v14

    add-float/2addr v14, v3

    const/high16 v15, 0x3f000000    # 0.5f

    add-float/2addr v14, v15

    float-to-int v14, v14

    move-object/from16 v0, p0

    iget v15, v0, Landroid/support/v4/view/ViewPager;->mBottomPageBounds:I

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2250
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/support/v4/view/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2253
    :cond_3
    add-int v11, v6, v7

    int-to-float v11, v11

    cmpl-float v3, v3, v11

    if-gtz v3, :cond_0

    .line 2232
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_0

    .line 2233
    :cond_4
    if-ge v2, v9, :cond_2

    .line 2234
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager$ItemInfo;

    goto :goto_1

    .line 2239
    :cond_5
    iget v3, v1, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    iget v4, v1, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v3, v4

    int-to-float v4, v7

    mul-float/2addr v3, v4

    .line 2240
    iget v4, v1, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    iget v11, v1, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v4, v11

    add-float/2addr v4, v8

    goto :goto_2
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    .prologue
    const/4 v4, -0x1

    const/4 v12, 0x0

    const/4 v3, 0x0

    const/4 v11, 0x1

    const/4 v2, 0x0

    .line 1792
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x3

    .line 1795
    if-ne v0, v1, :cond_1

    .line 1798
    :cond_0
    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    .line 1799
    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->mIsUnableToDrag:Z

    .line 1800
    iput v4, p0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    .line 1801
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_4

    .line 1805
    :goto_0
    return v2

    .line 1795
    :cond_1
    if-eq v0, v11, :cond_0

    .line 1810
    if-nez v0, :cond_5

    .line 1821
    :cond_2
    sparse-switch v0, :sswitch_data_0

    .line 1916
    :cond_3
    :goto_1
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_e

    .line 1919
    :goto_2
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1925
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    return v0

    .line 1802
    :cond_4
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1803
    iput-object v3, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_0

    .line 1811
    :cond_5
    iget-boolean v1, p0, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    if-nez v1, :cond_6

    .line 1815
    iget-boolean v1, p0, Landroid/support/v4/view/ViewPager;->mIsUnableToDrag:Z

    if-eqz v1, :cond_2

    .line 1817
    return v2

    .line 1813
    :cond_6
    return v11

    .line 1832
    :sswitch_0
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    .line 1833
    if-eq v0, v4, :cond_3

    .line 1838
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 1839
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v6

    .line 1840
    iget v1, p0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    sub-float v7, v6, v1

    .line 1841
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v8

    .line 1842
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v9

    .line 1843
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mInitialMotionY:F

    sub-float v0, v9, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v10

    .line 1846
    cmpl-float v0, v7, v12

    if-eqz v0, :cond_7

    iget v0, p0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    invoke-direct {p0, v0, v7}, Landroid/support/v4/view/ViewPager;->isGutterDrag(FF)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1854
    :cond_7
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mTouchSlop:I

    int-to-float v0, v0

    cmpl-float v0, v8, v0

    if-lez v0, :cond_b

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr v0, v8

    cmpl-float v0, v0, v10

    if-lez v0, :cond_b

    .line 1856
    iput-boolean v11, p0, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    .line 1857
    invoke-direct {p0, v11}, Landroid/support/v4/view/ViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    .line 1858
    invoke-direct {p0, v11}, Landroid/support/v4/view/ViewPager;->setScrollState(I)V

    .line 1859
    cmpl-float v0, v7, v12

    if-lez v0, :cond_a

    iget v0, p0, Landroid/support/v4/view/ViewPager;->mInitialMotionX:F

    iget v1, p0, Landroid/support/v4/view/ViewPager;->mTouchSlop:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    :goto_3
    iput v0, p0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    .line 1861
    iput v9, p0, Landroid/support/v4/view/ViewPager;->mLastMotionY:F

    .line 1862
    invoke-direct {p0, v11}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 1871
    :cond_8
    :goto_4
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_3

    .line 1873
    invoke-direct {p0, v6}, Landroid/support/v4/view/ViewPager;->performDrag(F)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1874
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto :goto_1

    .line 1846
    :cond_9
    float-to-int v3, v7

    float-to-int v4, v6

    float-to-int v5, v9

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/view/ViewPager;->canScroll(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1849
    iput v6, p0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    .line 1850
    iput v9, p0, Landroid/support/v4/view/ViewPager;->mLastMotionY:F

    .line 1851
    iput-boolean v11, p0, Landroid/support/v4/view/ViewPager;->mIsUnableToDrag:Z

    .line 1852
    return v2

    .line 1859
    :cond_a
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mInitialMotionX:F

    iget v1, p0, Landroid/support/v4/view/ViewPager;->mTouchSlop:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    goto :goto_3

    .line 1863
    :cond_b
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mTouchSlop:I

    int-to-float v0, v0

    cmpl-float v0, v10, v0

    if-lez v0, :cond_8

    .line 1869
    iput-boolean v11, p0, Landroid/support/v4/view/ViewPager;->mIsUnableToDrag:Z

    goto :goto_4

    .line 1885
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->mInitialMotionX:F

    iput v0, p0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    .line 1886
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->mInitialMotionY:F

    iput v0, p0, Landroid/support/v4/view/ViewPager;->mLastMotionY:F

    .line 1887
    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    .line 1888
    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->mIsUnableToDrag:Z

    .line 1890
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 1891
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mScrollState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_d

    .line 1901
    :cond_c
    invoke-direct {p0, v2}, Landroid/support/v4/view/ViewPager;->completeScroll(Z)V

    .line 1902
    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    goto/16 :goto_1

    .line 1891
    :cond_d
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    move-result v0

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Landroid/support/v4/view/ViewPager;->mCloseEnough:I

    if-le v0, v1, :cond_c

    .line 1894
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1895
    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->mPopulatePending:Z

    .line 1896
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->populate()V

    .line 1897
    iput-boolean v11, p0, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    .line 1898
    invoke-direct {p0, v11}, Landroid/support/v4/view/ViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    .line 1899
    invoke-direct {p0, v11}, Landroid/support/v4/view/ViewPager;->setScrollState(I)V

    goto/16 :goto_1

    .line 1912
    :sswitch_2
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 1917
    :cond_e
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_2

    .line 1821
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x2 -> :sswitch_0
        0x6 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 17

    .prologue
    .line 1503
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v9

    .line 1504
    sub-int v10, p4, p2

    .line 1505
    sub-int v11, p5, p3

    .line 1506
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v6

    .line 1507
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v2

    .line 1508
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v5

    .line 1509
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingBottom()I

    move-result v3

    .line 1510
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v12

    const/4 v4, 0x0

    const/4 v1, 0x0

    move v8, v1

    .line 1516
    :goto_0
    if-lt v8, v9, :cond_0

    .line 1568
    sub-int v1, v10, v6

    sub-int v7, v1, v5

    const/4 v1, 0x0

    move v5, v1

    .line 1570
    :goto_1
    if-lt v5, v9, :cond_3

    .line 1600
    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/v4/view/ViewPager;->mTopPageBounds:I

    .line 1601
    sub-int v1, v11, v3

    move-object/from16 v0, p0

    iput v1, v0, Landroid/support/v4/view/ViewPager;->mBottomPageBounds:I

    .line 1602
    move-object/from16 v0, p0

    iput v4, v0, Landroid/support/v4/view/ViewPager;->mDecorChildCount:I

    .line 1604
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/support/v4/view/ViewPager;->mFirstLayout:Z

    if-nez v1, :cond_7

    .line 1607
    :goto_2
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Landroid/support/v4/view/ViewPager;->mFirstLayout:Z

    .line 1608
    return-void

    .line 1517
    :cond_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 1518
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v7, 0x8

    if-ne v1, v7, :cond_1

    move v1, v4

    move v4, v2

    move v2, v5

    move v5, v6

    .line 1516
    :goto_3
    add-int/lit8 v6, v8, 0x1

    move v8, v6

    move v6, v5

    move v5, v2

    move v2, v4

    move v4, v1

    goto :goto_0

    .line 1519
    :cond_1
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager$LayoutParams;

    .line 1522
    iget-boolean v7, v1, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    if-nez v7, :cond_2

    move v1, v4

    move v4, v2

    move v2, v5

    move v5, v6

    goto :goto_3

    .line 1523
    :cond_2
    iget v7, v1, Landroid/support/v4/view/ViewPager$LayoutParams;->gravity:I

    and-int/lit8 v7, v7, 0x7

    .line 1524
    iget v1, v1, Landroid/support/v4/view/ViewPager$LayoutParams;->gravity:I

    and-int/lit8 v14, v1, 0x70

    .line 1525
    packed-switch v7, :pswitch_data_0

    :pswitch_0
    move v7, v6

    .line 1542
    :goto_4
    sparse-switch v14, :sswitch_data_0

    move v1, v2

    move/from16 v16, v3

    move v3, v2

    move/from16 v2, v16

    .line 1559
    :goto_5
    add-int/2addr v7, v12

    .line 1560
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    add-int/2addr v14, v7

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    add-int/2addr v15, v1

    invoke-virtual {v13, v7, v1, v14, v15}, Landroid/view/View;->layout(IIII)V

    .line 1563
    add-int/lit8 v1, v4, 0x1

    move v4, v3

    move v3, v2

    move v2, v5

    move v5, v6

    goto :goto_3

    .line 1531
    :pswitch_1
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, v6

    move v7, v6

    move v6, v1

    .line 1532
    goto :goto_4

    .line 1534
    :pswitch_2
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int v1, v10, v1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v7, v1

    .line 1536
    goto :goto_4

    .line 1538
    :pswitch_3
    sub-int v1, v10, v5

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    sub-int/2addr v1, v7

    .line 1539
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v5, v7

    move v7, v1

    goto :goto_4

    .line 1548
    :sswitch_0
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, v2

    move/from16 v16, v2

    move v2, v3

    move v3, v1

    move/from16 v1, v16

    .line 1549
    goto :goto_5

    .line 1551
    :sswitch_1
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int v1, v11, v1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    move/from16 v16, v3

    move v3, v2

    move/from16 v2, v16

    .line 1553
    goto :goto_5

    .line 1555
    :sswitch_2
    sub-int v1, v11, v3

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    sub-int/2addr v1, v14

    .line 1556
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    add-int/2addr v3, v14

    move/from16 v16, v3

    move v3, v2

    move/from16 v2, v16

    goto :goto_5

    .line 1571
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1572
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v10, 0x8

    if-ne v1, v10, :cond_5

    .line 1570
    :cond_4
    :goto_6
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto/16 :goto_1

    .line 1573
    :cond_5
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager$LayoutParams;

    .line 1575
    iget-boolean v10, v1, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    if-nez v10, :cond_4

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/support/v4/view/ViewPager;->infoForChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 1576
    int-to-float v12, v7

    iget v10, v10, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    mul-float/2addr v10, v12

    float-to-int v10, v10

    .line 1577
    add-int/2addr v10, v6

    .line 1579
    iget-boolean v12, v1, Landroid/support/v4/view/ViewPager$LayoutParams;->needsMeasure:Z

    if-nez v12, :cond_6

    .line 1594
    :goto_7
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, v10

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v12, v2

    invoke-virtual {v8, v10, v2, v1, v12}, Landroid/view/View;->layout(IIII)V

    goto :goto_6

    .line 1582
    :cond_6
    const/4 v12, 0x0

    iput-boolean v12, v1, Landroid/support/v4/view/ViewPager$LayoutParams;->needsMeasure:Z

    .line 1583
    int-to-float v12, v7

    iget v1, v1, Landroid/support/v4/view/ViewPager$LayoutParams;->widthFactor:F

    mul-float/2addr v1, v12

    float-to-int v1, v1

    const/high16 v12, 0x40000000    # 2.0f

    invoke-static {v1, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1586
    sub-int v12, v11, v2

    sub-int/2addr v12, v3

    const/high16 v13, 0x40000000    # 2.0f

    invoke-static {v12, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 1589
    invoke-virtual {v8, v1, v12}, Landroid/view/View;->measure(II)V

    goto :goto_7

    .line 1605
    :cond_7
    move-object/from16 v0, p0

    iget v1, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v3, v2, v4}, Landroid/support/v4/view/ViewPager;->scrollToItem(IZIZ)V

    goto/16 :goto_2

    .line 1525
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 1542
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x30 -> :sswitch_0
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 13

    .prologue
    const/4 v0, 0x0

    .line 1374
    invoke-static {v0, p1}, Landroid/support/v4/view/ViewPager;->getDefaultSize(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, p2}, Landroid/support/v4/view/ViewPager;->getDefaultSize(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/view/ViewPager;->setMeasuredDimension(II)V

    .line 1377
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getMeasuredWidth()I

    move-result v0

    .line 1378
    div-int/lit8 v1, v0, 0xa

    .line 1379
    iget v2, p0, Landroid/support/v4/view/ViewPager;->mDefaultGutterSize:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Landroid/support/v4/view/ViewPager;->mGutterSize:I

    .line 1382
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v1

    sub-int v5, v0, v1

    .line 1383
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingBottom()I

    move-result v1

    sub-int v7, v0, v1

    .line 1390
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v9

    const/4 v0, 0x0

    move v8, v0

    .line 1391
    :goto_0
    if-lt v8, v9, :cond_0

    const/high16 v0, 0x40000000    # 2.0f

    .line 1436
    invoke-static {v5, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->mChildWidthMeasureSpec:I

    const/high16 v0, 0x40000000    # 2.0f

    .line 1437
    invoke-static {v7, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->mChildHeightMeasureSpec:I

    .line 1440
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mInLayout:Z

    .line 1441
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->populate()V

    .line 1442
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mInLayout:Z

    .line 1445
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    .line 1446
    :goto_1
    if-lt v1, v2, :cond_e

    .line 1460
    return-void

    .line 1392
    :cond_0
    invoke-virtual {p0, v8}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 1393
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 1391
    :cond_1
    :goto_2
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_0

    .line 1394
    :cond_2
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$LayoutParams;

    .line 1395
    if-eqz v0, :cond_1

    iget-boolean v1, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    if-eqz v1, :cond_1

    .line 1396
    iget v1, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->gravity:I

    and-int/lit8 v2, v1, 0x7

    .line 1397
    iget v1, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->gravity:I

    and-int/lit8 v1, v1, 0x70

    const/high16 v4, -0x80000000

    const/high16 v3, -0x80000000

    const/16 v6, 0x30

    .line 1400
    if-ne v1, v6, :cond_5

    :cond_3
    const/4 v1, 0x1

    :goto_3
    const/4 v6, 0x3

    .line 1401
    if-ne v2, v6, :cond_6

    :cond_4
    const/4 v2, 0x1

    .line 1403
    :goto_4
    if-nez v1, :cond_7

    .line 1405
    if-nez v2, :cond_8

    .line 1411
    :goto_5
    iget v6, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->width:I

    const/4 v11, -0x2

    if-ne v6, v11, :cond_9

    move v6, v4

    move v4, v5

    .line 1417
    :goto_6
    iget v11, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->height:I

    const/4 v12, -0x2

    if-ne v11, v12, :cond_b

    move v0, v7

    .line 1423
    :goto_7
    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 1424
    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1425
    invoke-virtual {v10, v4, v0}, Landroid/view/View;->measure(II)V

    .line 1427
    if-nez v1, :cond_d

    .line 1429
    if-eqz v2, :cond_1

    .line 1430
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr v5, v0

    goto :goto_2

    :cond_5
    const/16 v6, 0x50

    .line 1400
    if-eq v1, v6, :cond_3

    const/4 v1, 0x0

    goto :goto_3

    :cond_6
    const/4 v6, 0x5

    .line 1401
    if-eq v2, v6, :cond_4

    const/4 v2, 0x0

    goto :goto_4

    :cond_7
    const/high16 v4, 0x40000000    # 2.0f

    .line 1404
    goto :goto_5

    :cond_8
    const/high16 v3, 0x40000000    # 2.0f

    .line 1406
    goto :goto_5

    :cond_9
    const/high16 v6, 0x40000000    # 2.0f

    .line 1413
    iget v4, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->width:I

    const/4 v11, -0x1

    if-ne v4, v11, :cond_a

    move v4, v5

    goto :goto_6

    .line 1414
    :cond_a
    iget v4, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->width:I

    goto :goto_6

    :cond_b
    const/high16 v3, 0x40000000    # 2.0f

    .line 1419
    iget v11, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->height:I

    const/4 v12, -0x1

    if-ne v11, v12, :cond_c

    move v0, v7

    goto :goto_7

    .line 1420
    :cond_c
    iget v0, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->height:I

    goto :goto_7

    .line 1428
    :cond_d
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr v7, v0

    goto :goto_2

    .line 1447
    :cond_e
    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1448
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v4, 0x8

    if-ne v0, v4, :cond_f

    .line 1446
    :goto_8
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1

    .line 1452
    :cond_f
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$LayoutParams;

    .line 1453
    if-nez v0, :cond_11

    .line 1454
    :cond_10
    int-to-float v4, v5

    iget v0, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->widthFactor:F

    mul-float/2addr v0, v4

    float-to-int v0, v0

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1456
    iget v4, p0, Landroid/support/v4/view/ViewPager;->mChildHeightMeasureSpec:I

    invoke-virtual {v3, v0, v4}, Landroid/view/View;->measure(II)V

    goto :goto_8

    .line 1453
    :cond_11
    iget-boolean v4, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    if-eqz v4, :cond_10

    goto :goto_8
.end method

.method protected onPageScrolled(IFI)V
    .locals 11

    .prologue
    const/4 v3, 0x0

    .line 1677
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mDecorChildCount:I

    if-gtz v0, :cond_2

    .line 1716
    :cond_0
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-nez v0, :cond_5

    .line 1719
    :goto_0
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-nez v0, :cond_6

    .line 1723
    :goto_1
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mPageTransformer:Landroid/support/v4/view/ViewPager$PageTransformer;

    if-nez v0, :cond_7

    .line 1737
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mCalledSuper:Z

    .line 1738
    return-void

    .line 1678
    :cond_2
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v5

    .line 1679
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v1

    .line 1680
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v2

    .line 1681
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v6

    .line 1682
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v7

    move v4, v3

    .line 1683
    :goto_2
    if-ge v4, v7, :cond_0

    .line 1684
    invoke-virtual {p0, v4}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1685
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$LayoutParams;

    .line 1686
    iget-boolean v9, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    if-eqz v9, :cond_3

    .line 1688
    iget v0, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->gravity:I

    and-int/lit8 v0, v0, 0x7

    .line 1690
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v0, v1

    move v10, v2

    move v2, v1

    move v1, v10

    .line 1707
    :goto_3
    add-int/2addr v0, v5

    .line 1709
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v9

    sub-int/2addr v0, v9

    .line 1710
    if-nez v0, :cond_4

    .line 1683
    :goto_4
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move v10, v1

    move v1, v2

    move v2, v10

    goto :goto_2

    :cond_3
    move v10, v2

    move v2, v1

    move v1, v10

    .line 1686
    goto :goto_4

    .line 1696
    :pswitch_1
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/2addr v0, v1

    move v10, v1

    move v1, v2

    move v2, v0

    move v0, v10

    .line 1697
    goto :goto_3

    .line 1699
    :pswitch_2
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int v0, v6, v0

    div-int/lit8 v0, v0, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v10, v2

    move v2, v1

    move v1, v10

    .line 1701
    goto :goto_3

    .line 1703
    :pswitch_3
    sub-int v0, v6, v2

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    sub-int/2addr v0, v9

    .line 1704
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v2, v9

    move v10, v2

    move v2, v1

    move v1, v10

    goto :goto_3

    .line 1711
    :cond_4
    invoke-virtual {v8, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_4

    .line 1717
    :cond_5
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    goto/16 :goto_0

    .line 1720
    :cond_6
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    goto/16 :goto_1

    .line 1724
    :cond_7
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v2

    .line 1725
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v4

    move v1, v3

    .line 1726
    :goto_5
    if-ge v1, v4, :cond_1

    .line 1727
    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1728
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$LayoutParams;

    .line 1730
    iget-boolean v0, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    if-nez v0, :cond_8

    .line 1732
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int/2addr v0, v2

    int-to-float v0, v0

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v0, v5

    .line 1733
    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->mPageTransformer:Landroid/support/v4/view/ViewPager$PageTransformer;

    invoke-interface {v5, v3, v0}, Landroid/support/v4/view/ViewPager$PageTransformer;->transformPage(Landroid/view/View;F)V

    .line 1726
    :cond_8
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    .line 1690
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v0, -0x1

    const/4 v4, 0x0

    .line 2698
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v1

    .line 2699
    and-int/lit8 v3, p1, 0x2

    if-nez v3, :cond_0

    .line 2704
    add-int/lit8 v1, v1, -0x1

    move v3, v1

    move v1, v0

    .line 2708
    :goto_0
    if-ne v3, v0, :cond_1

    .line 2719
    return v4

    :cond_0
    move v0, v1

    move v3, v4

    move v1, v2

    .line 2702
    goto :goto_0

    .line 2709
    :cond_1
    invoke-virtual {p0, v3}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2710
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_3

    .line 2708
    :cond_2
    add-int/2addr v3, v1

    goto :goto_0

    .line 2711
    :cond_3
    invoke-virtual {p0, v5}, Landroid/support/v4/view/ViewPager;->infoForChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v6

    .line 2712
    if-eqz v6, :cond_2

    iget v6, v6, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    iget v7, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    if-ne v6, v7, :cond_2

    .line 2713
    invoke-virtual {v5, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2714
    return v2
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1277
    instance-of v0, p1, Landroid/support/v4/view/ViewPager$SavedState;

    if-eqz v0, :cond_0

    .line 1282
    check-cast p1, Landroid/support/v4/view/ViewPager$SavedState;

    .line 1283
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1285
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-nez v0, :cond_1

    .line 1289
    iget v0, p1, Landroid/support/v4/view/ViewPager$SavedState;->position:I

    iput v0, p0, Landroid/support/v4/view/ViewPager;->mRestoredCurItem:I

    .line 1290
    iget-object v0, p1, Landroid/support/v4/view/ViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 1291
    iget-object v0, p1, Landroid/support/v4/view/ViewPager$SavedState;->loader:Ljava/lang/ClassLoader;

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    .line 1293
    :goto_0
    return-void

    .line 1278
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1279
    return-void

    .line 1286
    :cond_1
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v1, p1, Landroid/support/v4/view/ViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    iget-object v2, p1, Landroid/support/v4/view/ViewPager$SavedState;->loader:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 1287
    iget v0, p1, Landroid/support/v4/view/ViewPager$SavedState;->position:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v3, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItemInternal(IZZ)V

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 1266
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1267
    new-instance v1, Landroid/support/v4/view/ViewPager$SavedState;

    invoke-direct {v1, v0}, Landroid/support/v4/view/ViewPager$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1268
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    iput v0, v1, Landroid/support/v4/view/ViewPager$SavedState;->position:I

    .line 1269
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-nez v0, :cond_0

    .line 1272
    :goto_0
    return-object v1

    .line 1270
    :cond_0
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->saveState()Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, v1, Landroid/support/v4/view/ViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    .prologue
    .line 1464
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 1467
    if-ne p1, p3, :cond_0

    .line 1470
    :goto_0
    return-void

    .line 1468
    :cond_0
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    iget v1, p0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    invoke-direct {p0, p1, p3, v0, v1}, Landroid/support/v4/view/ViewPager;->recomputeScrollPosition(IIII)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .prologue
    const/4 v5, -0x1

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 1930
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mFakeDragging:Z

    if-nez v0, :cond_2

    .line 1937
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_3

    .line 1943
    :cond_0
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-nez v0, :cond_4

    .line 1945
    :cond_1
    return v1

    .line 1934
    :cond_2
    return v6

    .line 1937
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1940
    return v1

    .line 1943
    :cond_4
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1948
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_5

    .line 1951
    :goto_0
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1953
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1956
    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v0, v1

    .line 2048
    :goto_1
    if-nez v0, :cond_c

    .line 2051
    :goto_2
    return v6

    .line 1949
    :cond_5
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_0

    .line 1958
    :pswitch_1
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1959
    iput-boolean v1, p0, Landroid/support/v4/view/ViewPager;->mPopulatePending:Z

    .line 1960
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->populate()V

    .line 1963
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->mInitialMotionX:F

    iput v0, p0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    .line 1964
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->mInitialMotionY:F

    iput v0, p0, Landroid/support/v4/view/ViewPager;->mLastMotionY:F

    .line 1965
    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    move v0, v1

    .line 1966
    goto :goto_1

    .line 1969
    :pswitch_2
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_7

    .line 1994
    :cond_6
    :goto_3
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    if-nez v0, :cond_9

    move v0, v1

    goto :goto_1

    .line 1970
    :cond_7
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 1971
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v2

    .line 1972
    iget v3, p0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    sub-float v3, v2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 1973
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v4

    .line 1974
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mLastMotionY:F

    sub-float v0, v4, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 1976
    iget v5, p0, Landroid/support/v4/view/ViewPager;->mTouchSlop:I

    int-to-float v5, v5

    cmpl-float v5, v3, v5

    if-lez v5, :cond_6

    cmpl-float v0, v3, v0

    if-lez v0, :cond_6

    .line 1978
    iput-boolean v6, p0, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    .line 1979
    invoke-direct {p0, v6}, Landroid/support/v4/view/ViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    .line 1980
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mInitialMotionX:F

    sub-float v0, v2, v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_8

    iget v0, p0, Landroid/support/v4/view/ViewPager;->mInitialMotionX:F

    iget v2, p0, Landroid/support/v4/view/ViewPager;->mTouchSlop:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    :goto_4
    iput v0, p0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    .line 1982
    iput v4, p0, Landroid/support/v4/view/ViewPager;->mLastMotionY:F

    .line 1983
    invoke-direct {p0, v6}, Landroid/support/v4/view/ViewPager;->setScrollState(I)V

    .line 1984
    invoke-direct {p0, v6}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 1987
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1988
    if-eqz v0, :cond_6

    .line 1989
    invoke-interface {v0, v6}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_3

    .line 1980
    :cond_8
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mInitialMotionX:F

    iget v2, p0, Landroid/support/v4/view/ViewPager;->mTouchSlop:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    goto :goto_4

    .line 1996
    :cond_9
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 1998
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v0

    .line 1999
    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->performDrag(F)Z

    move-result v0

    or-int/lit8 v0, v0, 0x0

    goto/16 :goto_1

    .line 2003
    :pswitch_3
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    if-nez v0, :cond_a

    move v0, v1

    goto/16 :goto_1

    .line 2004
    :cond_a
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    .line 2005
    iget v2, p0, Landroid/support/v4/view/ViewPager;->mMaximumVelocity:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2006
    iget v1, p0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    invoke-static {v0, v1}, Landroid/support/v4/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    move-result v0

    float-to-int v0, v0

    .line 2008
    iput-boolean v6, p0, Landroid/support/v4/view/ViewPager;->mPopulatePending:Z

    .line 2009
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v1

    .line 2010
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v2

    .line 2011
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->infoForCurrentScrollPosition()Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v3

    .line 2012
    iget v4, v3, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    .line 2013
    int-to-float v2, v2

    int-to-float v1, v1

    div-float v1, v2, v1

    iget v2, v3, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    sub-float/2addr v1, v2

    iget v2, v3, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    div-float/2addr v1, v2

    .line 2014
    iget v2, p0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v2

    .line 2016
    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v2

    .line 2017
    iget v3, p0, Landroid/support/v4/view/ViewPager;->mInitialMotionX:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    .line 2018
    invoke-direct {p0, v4, v1, v0, v2}, Landroid/support/v4/view/ViewPager;->determineTargetPage(IFII)I

    move-result v1

    .line 2020
    invoke-virtual {p0, v1, v6, v6, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItemInternal(IZZI)V

    .line 2022
    iput v5, p0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    .line 2023
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->endDrag()V

    .line 2024
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v0

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v1

    or-int/2addr v0, v1

    goto/16 :goto_1

    .line 2028
    :pswitch_4
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    if-nez v0, :cond_b

    move v0, v1

    goto/16 :goto_1

    .line 2029
    :cond_b
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    invoke-direct {p0, v0, v6, v1, v1}, Landroid/support/v4/view/ViewPager;->scrollToItem(IZIZ)V

    .line 2030
    iput v5, p0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    .line 2031
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->endDrag()V

    .line 2032
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v0

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v1

    or-int/2addr v0, v1

    goto/16 :goto_1

    .line 2036
    :pswitch_5
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    .line 2037
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v2

    .line 2038
    iput v2, p0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    .line 2039
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    move v0, v1

    .line 2040
    goto/16 :goto_1

    .line 2043
    :pswitch_6
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 2044
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    move v0, v1

    goto/16 :goto_1

    .line 2049
    :cond_c
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto/16 :goto_2

    .line 1956
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

.method pageLeft()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2611
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    if-gtz v0, :cond_0

    .line 2615
    return v1

    .line 2612
    :cond_0
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 2613
    return v2
.end method

.method pageRight()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2619
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-nez v0, :cond_1

    .line 2623
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 2619
    :cond_1
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 2620
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 2621
    return v2
.end method

.method populate()V
    .locals 1

    .prologue
    .line 919
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->populate(I)V

    .line 920
    return-void
.end method

.method populate(I)V
    .locals 18

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 925
    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    move/from16 v0, p1

    if-ne v4, v0, :cond_3

    move-object v4, v3

    move v3, v2

    .line 931
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v2, :cond_5

    .line 940
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/support/v4/view/ViewPager;->mPopulatePending:Z

    if-nez v2, :cond_6

    .line 949
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 953
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/support/v4/view/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 955
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v4/view/ViewPager;->mOffscreenPageLimit:I

    const/4 v5, 0x0

    .line 956
    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    sub-int/2addr v6, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 957
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v5}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v12

    .line 958
    add-int/lit8 v5, v12, -0x1

    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    add-int/2addr v2, v6

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 960
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v4/view/ViewPager;->mExpectedAdapterCount:I

    if-ne v12, v2, :cond_8

    const/4 v6, 0x0

    const/4 v2, 0x0

    move v5, v2

    .line 978
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v5, v2, :cond_9

    move-object v2, v6

    .line 986
    :cond_0
    :goto_2
    if-eqz v2, :cond_b

    :cond_1
    move-object v10, v2

    .line 993
    :goto_3
    if-nez v10, :cond_c

    .line 1071
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    if-nez v10, :cond_26

    const/4 v2, 0x0

    :goto_5
    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v5, v2}, Landroid/support/v4/view/PagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1073
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/support/v4/view/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 1077
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v5

    const/4 v2, 0x0

    move v4, v2

    .line 1078
    :goto_6
    if-lt v4, v5, :cond_27

    .line 1091
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->sortChildDrawingOrder()V

    .line 1093
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_2a

    .line 1108
    :cond_2
    :goto_7
    return-void

    .line 926
    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    move/from16 v0, p1

    if-lt v2, v0, :cond_4

    const/16 v2, 0x11

    .line 927
    :goto_8
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/support/v4/view/ViewPager;->infoForPosition(I)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v3

    .line 928
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/view/ViewPager;->mCurItem:I

    move-object v4, v3

    move v3, v2

    goto/16 :goto_0

    :cond_4
    const/16 v2, 0x42

    .line 926
    goto :goto_8

    .line 932
    :cond_5
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->sortChildDrawingOrder()V

    .line 933
    return-void

    .line 942
    :cond_6
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->sortChildDrawingOrder()V

    .line 943
    return-void

    .line 950
    :cond_7
    return-void

    .line 963
    :cond_8
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 967
    :goto_9
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "The application\'s PagerAdapter changed the adapter\'s contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/v4/view/ViewPager;->mExpectedAdapterCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " Pager id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " Pager class: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " Problematic adapter: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 966
    :catch_0
    move-exception v2

    .line 965
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_9

    .line 979
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 980
    iget v7, v2, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    move-object/from16 v0, p0

    iget v8, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    if-ge v7, v8, :cond_a

    .line 978
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto/16 :goto_1

    .line 981
    :cond_a
    iget v7, v2, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    move-object/from16 v0, p0

    iget v8, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    if-eq v7, v8, :cond_0

    move-object v2, v6

    goto/16 :goto_2

    .line 986
    :cond_b
    if-lez v12, :cond_1

    .line 987
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v5}, Landroid/support/v4/view/ViewPager;->addNewItem(II)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v2

    move-object v10, v2

    goto/16 :goto_3

    :cond_c
    const/4 v9, 0x0

    .line 995
    add-int/lit8 v8, v5, -0x1

    .line 996
    if-gez v8, :cond_f

    const/4 v2, 0x0

    .line 997
    :goto_a
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v14

    .line 998
    if-lez v14, :cond_10

    iget v6, v10, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    const/high16 v7, 0x40000000    # 2.0f

    sub-float v6, v7, v6

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v7

    int-to-float v7, v7

    int-to-float v15, v14

    div-float/2addr v7, v15

    add-float/2addr v6, v7

    .line 1000
    :goto_b
    move-object/from16 v0, p0

    iget v7, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    add-int/lit8 v7, v7, -0x1

    move/from16 v16, v7

    move v7, v9

    move/from16 v9, v16

    move/from16 v17, v8

    move v8, v5

    move/from16 v5, v17

    :goto_c
    if-gez v9, :cond_11

    .line 1028
    :cond_d
    iget v7, v10, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    .line 1029
    add-int/lit8 v9, v8, 0x1

    const/high16 v2, 0x40000000    # 2.0f

    .line 1030
    cmpg-float v2, v7, v2

    if-gez v2, :cond_e

    .line 1031
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v9, v2, :cond_1a

    const/4 v2, 0x0

    .line 1032
    :goto_d
    if-lez v14, :cond_1b

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v5

    int-to-float v5, v5

    int-to-float v6, v14

    div-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    add-float/2addr v5, v6

    .line 1034
    :goto_e
    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    add-int/lit8 v6, v6, 0x1

    move/from16 v16, v6

    move v6, v7

    move v7, v9

    move/from16 v9, v16

    :goto_f
    if-lt v9, v12, :cond_1c

    .line 1061
    :cond_e
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v8, v4}, Landroid/support/v4/view/ViewPager;->calculatePageOffsets(Landroid/support/v4/view/ViewPager$ItemInfo;ILandroid/support/v4/view/ViewPager$ItemInfo;)V

    goto/16 :goto_4

    .line 996
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager$ItemInfo;

    goto :goto_a

    :cond_10
    const/4 v6, 0x0

    .line 998
    goto :goto_b

    .line 1001
    :cond_11
    cmpl-float v15, v7, v6

    if-ltz v15, :cond_12

    if-lt v9, v11, :cond_15

    .line 1016
    :cond_12
    if-nez v2, :cond_17

    .line 1021
    :cond_13
    add-int/lit8 v2, v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v2}, Landroid/support/v4/view/ViewPager;->addNewItem(II)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v2

    .line 1022
    iget v2, v2, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v7, v2

    .line 1023
    add-int/lit8 v8, v8, 0x1

    .line 1024
    if-gez v5, :cond_19

    const/4 v2, 0x0

    .line 1000
    :cond_14
    :goto_10
    add-int/lit8 v9, v9, -0x1

    goto :goto_c

    .line 1002
    :cond_15
    if-eqz v2, :cond_d

    .line 1005
    iget v15, v2, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-ne v9, v15, :cond_14

    iget-boolean v15, v2, Landroid/support/v4/view/ViewPager$ItemInfo;->scrolling:Z

    if-nez v15, :cond_14

    .line 1006
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1007
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v2, v2, Landroid/support/v4/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0, v9, v2}, Landroid/support/v4/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1012
    add-int/lit8 v5, v5, -0x1

    .line 1013
    add-int/lit8 v8, v8, -0x1

    .line 1014
    if-gez v5, :cond_16

    const/4 v2, 0x0

    goto :goto_10

    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager$ItemInfo;

    goto :goto_10

    .line 1016
    :cond_17
    iget v15, v2, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-ne v9, v15, :cond_13

    .line 1017
    iget v2, v2, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v7, v2

    .line 1018
    add-int/lit8 v5, v5, -0x1

    .line 1019
    if-gez v5, :cond_18

    const/4 v2, 0x0

    goto :goto_10

    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager$ItemInfo;

    goto :goto_10

    .line 1024
    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager$ItemInfo;

    goto :goto_10

    .line 1031
    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager$ItemInfo;

    goto/16 :goto_d

    :cond_1b
    const/4 v5, 0x0

    .line 1032
    goto/16 :goto_e

    .line 1035
    :cond_1c
    cmpl-float v11, v6, v5

    if-ltz v11, :cond_1d

    if-gt v9, v13, :cond_1f

    .line 1048
    :cond_1d
    if-nez v2, :cond_23

    .line 1053
    :cond_1e
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v7}, Landroid/support/v4/view/ViewPager;->addNewItem(II)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v2

    .line 1054
    add-int/lit8 v7, v7, 0x1

    .line 1055
    iget v2, v2, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v6, v2

    .line 1056
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v7, v2, :cond_25

    const/4 v2, 0x0

    :goto_11
    move/from16 v16, v6

    move-object v6, v2

    move/from16 v2, v16

    .line 1034
    :goto_12
    add-int/lit8 v9, v9, 0x1

    move/from16 v16, v2

    move-object v2, v6

    move/from16 v6, v16

    goto/16 :goto_f

    .line 1036
    :cond_1f
    if-eqz v2, :cond_e

    .line 1039
    iget v11, v2, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-eq v9, v11, :cond_21

    :cond_20
    move/from16 v16, v6

    move-object v6, v2

    move/from16 v2, v16

    goto :goto_12

    :cond_21
    iget-boolean v11, v2, Landroid/support/v4/view/ViewPager$ItemInfo;->scrolling:Z

    if-nez v11, :cond_20

    .line 1040
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1041
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v2, v2, Landroid/support/v4/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-virtual {v11, v0, v9, v2}, Landroid/support/v4/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1046
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v7, v2, :cond_22

    const/4 v2, 0x0

    :goto_13
    move/from16 v16, v6

    move-object v6, v2

    move/from16 v2, v16

    goto :goto_12

    :cond_22
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager$ItemInfo;

    goto :goto_13

    .line 1048
    :cond_23
    iget v11, v2, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-ne v9, v11, :cond_1e

    .line 1049
    iget v2, v2, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v6, v2

    .line 1050
    add-int/lit8 v7, v7, 0x1

    .line 1051
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v7, v2, :cond_24

    const/4 v2, 0x0

    :goto_14
    move/from16 v16, v6

    move-object v6, v2

    move/from16 v2, v16

    goto :goto_12

    :cond_24
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager$ItemInfo;

    goto :goto_14

    .line 1056
    :cond_25
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager$ItemInfo;

    goto :goto_11

    .line 1071
    :cond_26
    iget-object v2, v10, Landroid/support/v4/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    goto/16 :goto_5

    .line 1079
    :cond_27
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1080
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager$LayoutParams;

    .line 1081
    iput v4, v2, Landroid/support/v4/view/ViewPager$LayoutParams;->childIndex:I

    .line 1082
    iget-boolean v7, v2, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    if-eqz v7, :cond_29

    .line 1078
    :cond_28
    :goto_15
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto/16 :goto_6

    .line 1082
    :cond_29
    iget v7, v2, Landroid/support/v4/view/ViewPager$LayoutParams;->widthFactor:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-nez v7, :cond_28

    .line 1084
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/support/v4/view/ViewPager;->infoForChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v6

    .line 1085
    if-eqz v6, :cond_28

    .line 1086
    iget v7, v6, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    iput v7, v2, Landroid/support/v4/view/ViewPager$LayoutParams;->widthFactor:F

    .line 1087
    iget v6, v6, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    iput v6, v2, Landroid/support/v4/view/ViewPager$LayoutParams;->position:I

    goto :goto_15

    .line 1094
    :cond_2a
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->findFocus()Landroid/view/View;

    move-result-object v2

    .line 1095
    if-nez v2, :cond_2d

    const/4 v2, 0x0

    .line 1096
    :goto_16
    if-nez v2, :cond_2e

    :cond_2b
    const/4 v2, 0x0

    .line 1097
    :goto_17
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 1098
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1099
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/support/v4/view/ViewPager;->infoForChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v5

    .line 1100
    if-nez v5, :cond_2f

    .line 1097
    :cond_2c
    :goto_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 1095
    :cond_2d
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->infoForAnyChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v2

    goto :goto_16

    .line 1096
    :cond_2e
    iget v2, v2, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    if-ne v2, v4, :cond_2b

    goto/16 :goto_7

    .line 1100
    :cond_2f
    iget v5, v5, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    if-ne v5, v6, :cond_2c

    .line 1101
    invoke-virtual {v4, v3}, Landroid/view/View;->requestFocus(I)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_18
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 1323
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mInLayout:Z

    if-nez v0, :cond_0

    .line 1326
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1328
    :goto_0
    return-void

    .line 1324
    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewPager;->removeViewInLayout(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setAdapter(Landroid/support/v4/view/PagerAdapter;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 413
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-nez v0, :cond_1

    .line 427
    :goto_0
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    .line 428
    iput-object p1, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    .line 429
    iput v2, p0, Landroid/support/v4/view/ViewPager;->mExpectedAdapterCount:I

    .line 431
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-nez v1, :cond_3

    .line 453
    :goto_1
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mAdapterChangeListener:Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;

    if-nez v1, :cond_7

    .line 456
    :cond_0
    :goto_2
    return-void

    .line 414
    :cond_1
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mObserver:Landroid/support/v4/view/ViewPager$PagerObserver;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 415
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    move v1, v2

    .line 416
    :goto_3
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_2

    .line 420
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 421
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 422
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->removeNonDecorViews()V

    .line 423
    iput v2, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    .line 424
    invoke-virtual {p0, v2, v2}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    goto :goto_0

    .line 417
    :cond_2
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 418
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget v4, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    iget-object v0, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v3, p0, v4, v0}, Landroid/support/v4/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 416
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 432
    :cond_3
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mObserver:Landroid/support/v4/view/ViewPager$PagerObserver;

    if-eqz v1, :cond_4

    .line 435
    :goto_4
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mObserver:Landroid/support/v4/view/ViewPager$PagerObserver;

    invoke-virtual {v1, v3}, Landroid/support/v4/view/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 436
    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->mPopulatePending:Z

    .line 437
    iget-boolean v1, p0, Landroid/support/v4/view/ViewPager;->mFirstLayout:Z

    .line 438
    iput-boolean v6, p0, Landroid/support/v4/view/ViewPager;->mFirstLayout:Z

    .line 439
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v3}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v3

    iput v3, p0, Landroid/support/v4/view/ViewPager;->mExpectedAdapterCount:I

    .line 440
    iget v3, p0, Landroid/support/v4/view/ViewPager;->mRestoredCurItem:I

    if-gez v3, :cond_5

    .line 446
    if-eqz v1, :cond_6

    .line 449
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->requestLayout()V

    goto :goto_1

    .line 433
    :cond_4
    new-instance v1, Landroid/support/v4/view/ViewPager$PagerObserver;

    invoke-direct {v1, p0, v5}, Landroid/support/v4/view/ViewPager$PagerObserver;-><init>(Landroid/support/v4/view/ViewPager;Landroid/support/v4/view/ViewPager$1;)V

    iput-object v1, p0, Landroid/support/v4/view/ViewPager;->mObserver:Landroid/support/v4/view/ViewPager$PagerObserver;

    goto :goto_4

    .line 441
    :cond_5
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v1, v3, v4}, Landroid/support/v4/view/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 442
    iget v1, p0, Landroid/support/v4/view/ViewPager;->mRestoredCurItem:I

    invoke-virtual {p0, v1, v2, v6}, Landroid/support/v4/view/ViewPager;->setCurrentItemInternal(IZZ)V

    const/4 v1, -0x1

    .line 443
    iput v1, p0, Landroid/support/v4/view/ViewPager;->mRestoredCurItem:I

    .line 444
    iput-object v5, p0, Landroid/support/v4/view/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 445
    iput-object v5, p0, Landroid/support/v4/view/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    goto/16 :goto_1

    .line 447
    :cond_6
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->populate()V

    goto/16 :goto_1

    .line 453
    :cond_7
    if-eq v0, p1, :cond_0

    .line 454
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mAdapterChangeListener:Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;

    invoke-interface {v1, v0, p1}, Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;->onAdapterChanged(Landroid/support/v4/view/PagerAdapter;Landroid/support/v4/view/PagerAdapter;)V

    goto/16 :goto_2
.end method

.method setChildrenDrawingOrderEnabledCompat(Z)V
    .locals 5

    .prologue
    .line 628
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    .line 643
    :goto_0
    return-void

    .line 629
    :cond_0
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mSetChildrenDrawingOrderEnabled:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    .line 638
    :goto_1
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mSetChildrenDrawingOrderEnabled:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 641
    :catch_0
    move-exception v0

    const-string/jumbo v1, "ViewPager"

    const-string/jumbo v2, "Error changing children drawing order"

    .line 640
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    :try_start_1
    const-class v0, Landroid/view/ViewGroup;

    const-string/jumbo v1, "setChildrenDrawingOrderEnabled"

    const/4 v2, 0x1

    .line 631
    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->mSetChildrenDrawingOrderEnabled:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 635
    :catch_1
    move-exception v0

    const-string/jumbo v1, "ViewPager"

    const-string/jumbo v2, "Can\'t find setChildrenDrawingOrderEnabled"

    .line 634
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public setCurrentItem(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 494
    iput-boolean v1, p0, Landroid/support/v4/view/ViewPager;->mPopulatePending:Z

    .line 495
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mFirstLayout:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, p1, v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItemInternal(IZZ)V

    .line 496
    return-void

    :cond_0
    const/4 v0, 0x1

    .line 495
    goto :goto_0
.end method

.method public setCurrentItem(IZ)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 505
    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mPopulatePending:Z

    .line 506
    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItemInternal(IZZ)V

    .line 507
    return-void
.end method

.method setCurrentItemInternal(IZZ)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 514
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItemInternal(IZZI)V

    .line 515
    return-void
.end method

.method setCurrentItemInternal(IZZI)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 518
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-nez v0, :cond_1

    .line 519
    :cond_0
    invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 520
    return-void

    .line 518
    :cond_1
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 522
    if-eqz p3, :cond_4

    .line 527
    :cond_2
    if-ltz p1, :cond_5

    .line 529
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_6

    .line 532
    :goto_0
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mOffscreenPageLimit:I

    .line 533
    iget v2, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    add-int/2addr v2, v0

    if-le p1, v2, :cond_7

    :cond_3
    move v2, v1

    .line 537
    :goto_1
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v2, v0, :cond_8

    .line 541
    :goto_2
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    if-ne v0, p1, :cond_9

    .line 543
    :goto_3
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mFirstLayout:Z

    if-nez v0, :cond_a

    .line 555
    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewPager;->populate(I)V

    .line 556
    invoke-direct {p0, p1, p2, p4, v1}, Landroid/support/v4/view/ViewPager;->scrollToItem(IZIZ)V

    .line 558
    :goto_4
    return-void

    .line 522
    :cond_4
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    if-ne v0, p1, :cond_2

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_2

    .line 523
    invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 524
    return-void

    :cond_5
    move p1, v1

    .line 528
    goto :goto_0

    .line 530
    :cond_6
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    add-int/lit8 p1, v0, -0x1

    goto :goto_0

    .line 533
    :cond_7
    iget v2, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    sub-int v0, v2, v0

    if-lt p1, v0, :cond_3

    goto :goto_2

    .line 538
    :cond_8
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$ItemInfo;

    iput-boolean v3, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->scrolling:Z

    .line 537
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_9
    move v1, v3

    .line 541
    goto :goto_3

    .line 546
    :cond_a
    iput p1, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    .line 547
    if-nez v1, :cond_d

    .line 550
    :cond_b
    :goto_5
    if-nez v1, :cond_e

    .line 553
    :cond_c
    :goto_6
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->requestLayout()V

    goto :goto_4

    .line 547
    :cond_d
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_b

    .line 548
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    goto :goto_5

    .line 550
    :cond_e
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_c

    .line 551
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    goto :goto_6
.end method

.method setInternalPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    .locals 1

    .prologue
    .line 659
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 660
    iput-object p1, p0, Landroid/support/v4/view/ViewPager;->mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 661
    return-object v0
.end method

.method public setOffscreenPageLimit(I)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 693
    if-lt p1, v0, :cond_0

    .line 698
    :goto_0
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mOffscreenPageLimit:I

    if-ne p1, v0, :cond_1

    .line 702
    :goto_1
    return-void

    :cond_0
    const-string/jumbo v1, "ViewPager"

    .line 694
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Requested offscreen page limit "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " too small; defaulting to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v0

    .line 696
    goto :goto_0

    .line 699
    :cond_1
    iput p1, p0, Landroid/support/v4/view/ViewPager;->mOffscreenPageLimit:I

    .line 700
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->populate()V

    goto :goto_1
.end method

.method setOnAdapterChangeListener(Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;)V
    .locals 0

    .prologue
    .line 479
    iput-object p1, p0, Landroid/support/v4/view/ViewPager;->mAdapterChangeListener:Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;

    .line 480
    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 0

    .prologue
    .line 597
    iput-object p1, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 598
    return-void
.end method

.method public setPageMargin(I)V
    .locals 2

    .prologue
    .line 713
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    .line 714
    iput p1, p0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    .line 716
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v1

    .line 717
    invoke-direct {p0, v1, v1, p1, v0}, Landroid/support/v4/view/ViewPager;->recomputeScrollPosition(IIII)V

    .line 719
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->requestLayout()V

    .line 720
    return-void
.end method

.method public setPageMarginDrawable(I)V
    .locals 1

    .prologue
    .line 749
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 750
    return-void
.end method

.method public setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 737
    iput-object p1, p0, Landroid/support/v4/view/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    .line 738
    if-nez p1, :cond_0

    .line 739
    :goto_0
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->setWillNotDraw(Z)V

    .line 740
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->invalidate()V

    .line 741
    return-void

    .line 738
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->refreshDrawableState()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 739
    goto :goto_1
.end method

.method public setPageTransformer(ZLandroid/support/v4/view/ViewPager$PageTransformer;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 613
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-ge v0, v3, :cond_1

    .line 625
    :cond_0
    :goto_0
    return-void

    .line 614
    :cond_1
    if-nez p2, :cond_2

    move v0, v1

    .line 615
    :goto_1
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mPageTransformer:Landroid/support/v4/view/ViewPager$PageTransformer;

    if-nez v3, :cond_3

    move v3, v1

    :goto_2
    if-ne v0, v3, :cond_4

    move v3, v1

    .line 616
    :goto_3
    iput-object p2, p0, Landroid/support/v4/view/ViewPager;->mPageTransformer:Landroid/support/v4/view/ViewPager$PageTransformer;

    .line 617
    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->setChildrenDrawingOrderEnabledCompat(Z)V

    .line 618
    if-nez v0, :cond_5

    .line 621
    iput v1, p0, Landroid/support/v4/view/ViewPager;->mDrawingOrder:I

    .line 623
    :goto_4
    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->populate()V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 614
    goto :goto_1

    :cond_3
    move v3, v2

    .line 615
    goto :goto_2

    :cond_4
    move v3, v2

    goto :goto_3

    .line 619
    :cond_5
    if-nez p1, :cond_6

    :goto_5
    iput v2, p0, Landroid/support/v4/view/ViewPager;->mDrawingOrder:I

    goto :goto_4

    :cond_6
    const/4 v2, 0x2

    goto :goto_5
.end method

.method smoothScrollTo(II)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 783
    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v4/view/ViewPager;->smoothScrollTo(III)V

    .line 784
    return-void
.end method

.method smoothScrollTo(III)V
    .locals 9

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    .line 794
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_1

    .line 799
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v1

    .line 800
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v2

    .line 801
    sub-int v3, p1, v1

    .line 802
    sub-int v4, p2, v2

    .line 803
    if-eqz v3, :cond_2

    .line 810
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    const/4 v0, 0x2

    .line 811
    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->setScrollState(I)V

    .line 813
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v0

    .line 814
    div-int/lit8 v5, v0, 0x2

    .line 815
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v8

    int-to-float v7, v0

    div-float/2addr v6, v7

    invoke-static {v8, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 816
    int-to-float v7, v5

    int-to-float v5, v5

    invoke-virtual {p0, v6}, Landroid/support/v4/view/ViewPager;->distanceInfluenceForSnapDuration(F)F

    move-result v6

    mul-float/2addr v5, v6

    add-float/2addr v5, v7

    .line 820
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 821
    if-gtz v6, :cond_3

    .line 824
    int-to-float v0, v0

    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget v6, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    invoke-virtual {v5, v6}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v5

    mul-float/2addr v0, v5

    .line 825
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    int-to-float v6, v6

    add-float/2addr v0, v6

    div-float v0, v5, v0

    .line 826
    add-float/2addr v0, v8

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr v0, v5

    float-to-int v0, v0

    :goto_0
    const/16 v5, 0x258

    .line 828
    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 830
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 831
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 832
    return-void

    .line 796
    :cond_1
    invoke-direct {p0, v5}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 797
    return-void

    .line 803
    :cond_2
    if-nez v4, :cond_0

    .line 804
    invoke-direct {p0, v5}, Landroid/support/v4/view/ViewPager;->completeScroll(Z)V

    .line 805
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->populate()V

    .line 806
    invoke-direct {p0, v5}, Landroid/support/v4/view/ViewPager;->setScrollState(I)V

    .line 807
    return-void

    .line 822
    :cond_3
    int-to-float v0, v6

    div-float v0, v5, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v5, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 754
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v1, :cond_0

    goto :goto_0
.end method
