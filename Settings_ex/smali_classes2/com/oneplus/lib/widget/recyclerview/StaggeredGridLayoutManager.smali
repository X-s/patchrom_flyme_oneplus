.class public Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;
.super Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;
.source "StaggeredGridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$1;,
        Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;,
        Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;,
        Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;,
        Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;,
        Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final GAP_HANDLING_LAZY:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final GAP_HANDLING_MOVE_ITEMS_BETWEEN_SPANS:I = 0x2

.field public static final GAP_HANDLING_NONE:I = 0x0

.field public static final HORIZONTAL:I = 0x0

.field private static final INVALID_OFFSET:I = -0x80000000

.field public static final TAG:Ljava/lang/String; = "StaggeredGridLayoutManager"

.field public static final VERTICAL:I = 0x1


# instance fields
.field private final mAnchorInfo:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;

.field private final mCheckForGapsRunnable:Ljava/lang/Runnable;

.field private mFullSizeSpec:I

.field private mGapStrategy:I

.field private mHeightSpec:I

.field private mLaidOutInvalidFullSpan:Z

.field private mLastLayoutFromEnd:Z

.field private mLastLayoutRTL:Z

.field private mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LayoutState;

.field mLazySpanLookup:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;

.field private mOrientation:I

.field private mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;

.field mPendingScrollPosition:I

.field mPendingScrollPositionOffset:I

.field mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

.field private mRemainingSpans:Ljava/util/BitSet;

.field private mReverseLayout:Z

.field mSecondaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

.field mShouldReverseLayout:Z

.field private mSizePerSpan:I

.field private mSmoothScrollbarEnabled:Z

.field private mSpanCount:I

.field private mSpans:[Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

.field private final mTmpRect:Landroid/graphics/Rect;

.field private mWidthSpec:I


# direct methods
.method static synthetic -get0(Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;)I
    .locals 1

    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mOrientation:I

    return v0
.end method

.method static synthetic -get1(Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mReverseLayout:Z

    return v0
.end method

.method static synthetic -wrap0(Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;)Z
    .locals 1

    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->checkForGaps()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->calculateScrollDirectionForPosition(I)I

    move-result v0

    return v0
.end method

.method public constructor <init>(II)V
    .locals 3
    .param p1, "spanCount"    # I
    .param p2, "orientation"    # I

    .prologue
    const/4 v0, -0x1

    const/4 v2, 0x0

    .line 225
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;-><init>()V

    .line 99
    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    .line 119
    iput-boolean v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mReverseLayout:Z

    .line 124
    iput-boolean v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    .line 135
    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    .line 141
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    .line 147
    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-direct {v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLazySpanLookup:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;

    .line 152
    const/4 v0, 0x2

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mGapStrategy:I

    .line 178
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mTmpRect:Landroid/graphics/Rect;

    .line 183
    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;-><init>(Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mAnchorInfo:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;

    .line 191
    iput-boolean v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    .line 197
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 199
    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$1;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$1;-><init>(Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mCheckForGapsRunnable:Ljava/lang/Runnable;

    .line 226
    iput p2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mOrientation:I

    .line 227
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->setSpanCount(I)V

    .line 225
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v1, -0x1

    const/4 v3, 0x0

    .line 210
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;-><init>()V

    .line 99
    iput v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    .line 119
    iput-boolean v3, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mReverseLayout:Z

    .line 124
    iput-boolean v3, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    .line 135
    iput v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    .line 141
    const/high16 v1, -0x80000000

    iput v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    .line 147
    new-instance v1, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-direct {v1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;-><init>()V

    iput-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLazySpanLookup:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;

    .line 152
    const/4 v1, 0x2

    iput v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mGapStrategy:I

    .line 178
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mTmpRect:Landroid/graphics/Rect;

    .line 183
    new-instance v1, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;-><init>(Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;)V

    iput-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mAnchorInfo:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;

    .line 191
    iput-boolean v3, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    .line 197
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 199
    new-instance v1, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$1;

    invoke-direct {v1, p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$1;-><init>(Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;)V

    iput-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mCheckForGapsRunnable:Ljava/lang/Runnable;

    .line 212
    invoke-static {p1, p2, p3, p4}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getProperties(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager$Properties;

    move-result-object v0

    .line 213
    .local v0, "properties":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager$Properties;
    iget v1, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager$Properties;->orientation:I

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->setOrientation(I)V

    .line 214
    iget v1, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager$Properties;->spanCount:I

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->setSpanCount(I)V

    .line 215
    iget-boolean v1, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager$Properties;->reverseLayout:Z

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->setReverseLayout(Z)V

    .line 211
    return-void
.end method

.method private appendViewToAllSpans(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1605
    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1606
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->appendToSpan(Landroid/view/View;)V

    .line 1605
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1603
    :cond_0
    return-void
.end method

.method private applyPendingSavedState(Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;)V
    .locals 4
    .param p1, "anchorInfo"    # Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;

    .prologue
    .line 649
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;

    iget v2, v2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    if-lez v2, :cond_3

    .line 650
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;

    iget v2, v2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    iget v3, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    if-ne v2, v3, :cond_2

    .line 651
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v2, :cond_3

    .line 652
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->clear()V

    .line 653
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;

    iget-object v2, v2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mSpanOffsets:[I

    aget v1, v2, v0

    .line 654
    .local v1, "line":I
    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_0

    .line 655
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;

    iget-boolean v2, v2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    if-eqz v2, :cond_1

    .line 656
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v2

    add-int/2addr v1, v2

    .line 661
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->setLine(I)V

    .line 651
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 658
    :cond_1
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_1

    .line 664
    .end local v0    # "i":I
    .end local v1    # "line":I
    :cond_2
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->invalidateSpanInfo()V

    .line 665
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;

    iget v3, v3, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mVisibleAnchorPosition:I

    iput v3, v2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    .line 668
    :cond_3
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;

    iget-boolean v2, v2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mLastLayoutRTL:Z

    iput-boolean v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLastLayoutRTL:Z

    .line 669
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;

    iget-boolean v2, v2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mReverseLayout:Z

    invoke-virtual {p0, v2}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->setReverseLayout(Z)V

    .line 670
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->resolveShouldLayoutReverse()V

    .line 672
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;

    iget v2, v2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_5

    .line 673
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;

    iget v2, v2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    iput v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    .line 674
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;

    iget-boolean v2, v2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    iput-boolean v2, p1, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 678
    :goto_2
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;

    iget v2, v2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mSpanLookupSize:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_4

    .line 679
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLazySpanLookup:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;

    iget-object v3, v3, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mSpanLookup:[I

    iput-object v3, v2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    .line 680
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLazySpanLookup:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;

    iget-object v3, v3, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mFullSpanItems:Ljava/util/List;

    iput-object v3, v2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    .line 645
    :cond_4
    return-void

    .line 676
    :cond_5
    iget-boolean v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    iput-boolean v2, p1, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    goto :goto_2
.end method

.method private attachViewToSpans(Landroid/view/View;Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;Lcom/oneplus/lib/widget/recyclerview/LayoutState;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "lp"    # Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;
    .param p3, "layoutState"    # Lcom/oneplus/lib/widget/recyclerview/LayoutState;

    .prologue
    .line 1552
    iget v0, p3, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mLayoutDirection:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1553
    iget-boolean v0, p2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v0, :cond_0

    .line 1554
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->appendViewToAllSpans(Landroid/view/View;)V

    .line 1551
    :goto_0
    return-void

    .line 1556
    :cond_0
    iget-object v0, p2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->appendToSpan(Landroid/view/View;)V

    goto :goto_0

    .line 1559
    :cond_1
    iget-boolean v0, p2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v0, :cond_2

    .line 1560
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->prependViewToAllSpans(Landroid/view/View;)V

    goto :goto_0

    .line 1562
    :cond_2
    iget-object v0, p2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->prependToSpan(Landroid/view/View;)V

    goto :goto_0
.end method

.method private calculateScrollDirectionForPosition(I)I
    .locals 5
    .param p1, "position"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x1

    .line 1852
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getChildCount()I

    move-result v4

    if-nez v4, :cond_1

    .line 1853
    iget-boolean v3, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v3, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0

    .line 1855
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v0

    .line 1856
    .local v0, "firstChildPos":I
    if-ge p1, v0, :cond_2

    move v3, v1

    :cond_2
    iget-boolean v4, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eq v3, v4, :cond_3

    :goto_1
    return v2

    :cond_3
    move v2, v1

    goto :goto_1
.end method

.method private checkForGaps()Z
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 237
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getChildCount()I

    move-result v6

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mGapStrategy:I

    if-nez v6, :cond_1

    .line 238
    :cond_0
    return v8

    .line 237
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->isAttachedToWindow()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 241
    iget-boolean v6, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v6, :cond_2

    .line 242
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getLastChildPosition()I

    move-result v4

    .line 243
    .local v4, "minPos":I
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v3

    .line 248
    .local v3, "maxPos":I
    :goto_0
    if-nez v4, :cond_3

    .line 249
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->hasGapsToFix()Landroid/view/View;

    move-result-object v0

    .line 250
    .local v0, "gapView":Landroid/view/View;
    if-eqz v0, :cond_3

    .line 251
    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLazySpanLookup:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v6}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->clear()V

    .line 252
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->requestSimpleAnimationsInNextLayout()V

    .line 253
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->requestLayout()V

    .line 254
    return v9

    .line 245
    .end local v0    # "gapView":Landroid/view/View;
    .end local v3    # "maxPos":I
    .end local v4    # "minPos":I
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v4

    .line 246
    .restart local v4    # "minPos":I
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getLastChildPosition()I

    move-result v3

    .restart local v3    # "maxPos":I
    goto :goto_0

    .line 257
    :cond_3
    iget-boolean v6, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    if-nez v6, :cond_4

    .line 258
    return v8

    .line 260
    :cond_4
    iget-boolean v6, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v6, :cond_5

    const/4 v2, -0x1

    .line 261
    .local v2, "invalidGapDir":I
    :goto_1
    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLazySpanLookup:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;

    .line 262
    add-int/lit8 v7, v3, 0x1

    .line 261
    invoke-virtual {v6, v4, v7, v2, v9}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->getFirstFullSpanItemInRange(IIIZ)Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v1

    .line 263
    .local v1, "invalidFsi":Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    if-nez v1, :cond_6

    .line 264
    iput-boolean v8, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    .line 265
    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLazySpanLookup:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v6, v7}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->forceInvalidateAfter(I)I

    .line 266
    return v8

    .line 260
    .end local v1    # "invalidFsi":Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    .end local v2    # "invalidGapDir":I
    :cond_5
    const/4 v2, 0x1

    .restart local v2    # "invalidGapDir":I
    goto :goto_1

    .line 268
    .restart local v1    # "invalidFsi":Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    :cond_6
    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLazySpanLookup:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;

    .line 269
    iget v7, v1, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    .line 270
    mul-int/lit8 v8, v2, -0x1

    .line 268
    invoke-virtual {v6, v4, v7, v8, v9}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->getFirstFullSpanItemInRange(IIIZ)Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v5

    .line 271
    .local v5, "validFsi":Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    if-nez v5, :cond_7

    .line 272
    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLazySpanLookup:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;

    iget v7, v1, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    invoke-virtual {v6, v7}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->forceInvalidateAfter(I)I

    .line 276
    :goto_2
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->requestSimpleAnimationsInNextLayout()V

    .line 277
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->requestLayout()V

    .line 278
    return v9

    .line 274
    :cond_7
    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLazySpanLookup:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;

    iget v7, v5, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->forceInvalidateAfter(I)I

    goto :goto_2
.end method

.method private checkSpanForGap(Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;)Z
    .locals 3
    .param p1, "span"    # Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    .prologue
    const/4 v2, 0x1

    .line 366
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    .line 367
    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->getEndLine()I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 368
    return v2

    .line 370
    :cond_0
    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->getStartLine()I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 371
    return v2

    .line 373
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private computeScrollExtent(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I
    .locals 6
    .param p1, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 963
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 964
    return v3

    .line 966
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->ensureOrientationHelper()V

    .line 967
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    .line 968
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    if-eqz v0, :cond_1

    move v0, v3

    :goto_0
    invoke-virtual {p0, v0, v4}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToStart(ZZ)Landroid/view/View;

    move-result-object v2

    .line 969
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    if-eqz v0, :cond_2

    :goto_1
    invoke-virtual {p0, v3, v4}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToEnd(ZZ)Landroid/view/View;

    move-result-object v3

    .line 970
    iget-boolean v5, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    move-object v0, p1

    move-object v4, p0

    .line 967
    invoke-static/range {v0 .. v5}, Lcom/oneplus/lib/widget/recyclerview/ScrollbarHelper;->computeScrollExtent(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;Landroid/view/View;Landroid/view/View;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;Z)I

    move-result v0

    return v0

    :cond_1
    move v0, v4

    .line 968
    goto :goto_0

    :cond_2
    move v3, v4

    .line 969
    goto :goto_1
.end method

.method private computeScrollOffset(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I
    .locals 7
    .param p1, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 942
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 943
    return v3

    .line 945
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->ensureOrientationHelper()V

    .line 946
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    .line 947
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    if-eqz v0, :cond_1

    move v0, v3

    :goto_0
    invoke-virtual {p0, v0, v4}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToStart(ZZ)Landroid/view/View;

    move-result-object v2

    .line 948
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    if-eqz v0, :cond_2

    :goto_1
    invoke-virtual {p0, v3, v4}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToEnd(ZZ)Landroid/view/View;

    move-result-object v3

    .line 949
    iget-boolean v5, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    iget-boolean v6, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    move-object v0, p1

    move-object v4, p0

    .line 946
    invoke-static/range {v0 .. v6}, Lcom/oneplus/lib/widget/recyclerview/ScrollbarHelper;->computeScrollOffset(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;Landroid/view/View;Landroid/view/View;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;ZZ)I

    move-result v0

    return v0

    :cond_1
    move v0, v4

    .line 947
    goto :goto_0

    :cond_2
    move v3, v4

    .line 948
    goto :goto_1
.end method

.method private computeScrollRange(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I
    .locals 6
    .param p1, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 984
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 985
    return v3

    .line 987
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->ensureOrientationHelper()V

    .line 988
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    .line 989
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    if-eqz v0, :cond_1

    move v0, v3

    :goto_0
    invoke-virtual {p0, v0, v4}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToStart(ZZ)Landroid/view/View;

    move-result-object v2

    .line 990
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    if-eqz v0, :cond_2

    :goto_1
    invoke-virtual {p0, v3, v4}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToEnd(ZZ)Landroid/view/View;

    move-result-object v3

    .line 991
    iget-boolean v5, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    move-object v0, p1

    move-object v4, p0

    .line 988
    invoke-static/range {v0 .. v5}, Lcom/oneplus/lib/widget/recyclerview/ScrollbarHelper;->computeScrollRange(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;Landroid/view/View;Landroid/view/View;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;Z)I

    move-result v0

    return v0

    :cond_1
    move v0, v4

    .line 989
    goto :goto_0

    :cond_2
    move v3, v4

    .line 990
    goto :goto_1
.end method

.method private createFullSpanItemFromEnd(I)Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    .locals 4
    .param p1, "newItemTop"    # I

    .prologue
    .line 1534
    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    invoke-direct {v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;-><init>()V

    .line 1535
    .local v0, "fsi":Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    iget v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    new-array v2, v2, [I

    iput-object v2, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapPerSpan:[I

    .line 1536
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v1, v2, :cond_0

    .line 1537
    iget-object v2, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapPerSpan:[I

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v3, v3, v1

    invoke-virtual {v3, p1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v3

    sub-int v3, p1, v3

    aput v3, v2, v1

    .line 1536
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1539
    :cond_0
    return-object v0
.end method

.method private createFullSpanItemFromStart(I)Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    .locals 4
    .param p1, "newItemBottom"    # I

    .prologue
    .line 1543
    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    invoke-direct {v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;-><init>()V

    .line 1544
    .local v0, "fsi":Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    iget v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    new-array v2, v2, [I

    iput-object v2, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapPerSpan:[I

    .line 1545
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v1, v2, :cond_0

    .line 1546
    iget-object v2, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapPerSpan:[I

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v3, v3, v1

    invoke-virtual {v3, p1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v3

    sub-int/2addr v3, p1

    aput v3, v2, v1

    .line 1545
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1548
    :cond_0
    return-object v0
.end method

.method private ensureOrientationHelper()V
    .locals 1

    .prologue
    .line 514
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    if-nez v0, :cond_0

    .line 515
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mOrientation:I

    invoke-static {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->createOrientationHelper(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;I)Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    .line 517
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mOrientation:I

    rsub-int/lit8 v0, v0, 0x1

    .line 516
    invoke-static {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->createOrientationHelper(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;I)Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSecondaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    .line 518
    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/LayoutState;

    invoke-direct {v0}, Lcom/oneplus/lib/widget/recyclerview/LayoutState;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LayoutState;

    .line 513
    :cond_0
    return-void
.end method

.method private fill(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/LayoutState;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I
    .locals 28
    .param p1, "recycler"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;
    .param p2, "layoutState"    # Lcom/oneplus/lib/widget/recyclerview/LayoutState;
    .param p3, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    .prologue
    .line 1402
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mRemainingSpans:Ljava/util/BitSet;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual {v3, v10, v9, v11}, Ljava/util/BitSet;->set(IIZ)V

    .line 1407
    move-object/from16 v0, p2

    iget v3, v0, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mLayoutDirection:I

    const/4 v9, 0x1

    if-ne v3, v9, :cond_2

    .line 1408
    move-object/from16 v0, p2

    iget v3, v0, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mEndLine:I

    move-object/from16 v0, p2

    iget v9, v0, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mAvailable:I

    add-int v27, v3, v9

    .line 1413
    .local v27, "targetLine":I
    :goto_0
    move-object/from16 v0, p2

    iget v3, v0, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mLayoutDirection:I

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v3, v1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->updateAllRemainingSpans(II)V

    .line 1420
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v3, :cond_3

    .line 1421
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v3}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v18

    .line 1423
    .local v18, "defaultNewViewLine":I
    :goto_1
    const/4 v15, 0x0

    .line 1424
    .local v15, "added":Z
    :goto_2
    invoke-virtual/range {p2 .. p3}, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->hasMore(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mRemainingSpans:Ljava/util/BitSet;

    invoke-virtual {v3}, Ljava/util/BitSet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1519
    :cond_0
    if-nez v15, :cond_1

    .line 1520
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LayoutState;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->recycle(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/LayoutState;)V

    .line 1523
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LayoutState;

    iget v3, v3, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mLayoutDirection:I

    const/4 v9, -0x1

    if-ne v3, v9, :cond_16

    .line 1524
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v3}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getMinStart(I)I

    move-result v24

    .line 1525
    .local v24, "minStart":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v3}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v3

    sub-int v19, v3, v24

    .line 1530
    .end local v24    # "minStart":I
    .local v19, "diff":I
    :goto_3
    if-lez v19, :cond_17

    move-object/from16 v0, p2

    iget v3, v0, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mAvailable:I

    move/from16 v0, v19

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    :goto_4
    return v3

    .line 1410
    .end local v15    # "added":Z
    .end local v18    # "defaultNewViewLine":I
    .end local v19    # "diff":I
    .end local v27    # "targetLine":I
    :cond_2
    move-object/from16 v0, p2

    iget v3, v0, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mStartLine:I

    move-object/from16 v0, p2

    iget v9, v0, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mAvailable:I

    sub-int v27, v3, v9

    .restart local v27    # "targetLine":I
    goto :goto_0

    .line 1422
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v3}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v18

    .restart local v18    # "defaultNewViewLine":I
    goto :goto_1

    .line 1425
    .restart local v15    # "added":Z
    :cond_4
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->next(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;)Landroid/view/View;

    move-result-object v4

    .line 1426
    .local v4, "view":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    check-cast v22, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;

    .line 1427
    .local v22, "lp":Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;
    invoke-virtual/range {v22 .. v22}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->getViewLayoutPosition()I

    move-result v25

    .line 1428
    .local v25, "position":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLazySpanLookup:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->getSpan(I)I

    move-result v26

    .line 1430
    .local v26, "spanIndex":I
    const/4 v3, -0x1

    move/from16 v0, v26

    if-ne v0, v3, :cond_7

    const/16 v16, 0x1

    .line 1431
    .local v16, "assignSpan":Z
    :goto_5
    if-eqz v16, :cond_9

    .line 1432
    move-object/from16 v0, v22

    iget-boolean v3, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    const/4 v9, 0x0

    aget-object v17, v3, v9

    .line 1433
    .local v17, "currentSpan":Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;
    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLazySpanLookup:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;

    move/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->setSpan(ILcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;)V

    .line 1444
    :goto_7
    move-object/from16 v0, v17

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    .line 1445
    move-object/from16 v0, p2

    iget v3, v0, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mLayoutDirection:I

    const/4 v9, 0x1

    if-ne v3, v9, :cond_a

    .line 1446
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->addView(Landroid/view/View;)V

    .line 1450
    :goto_8
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v4, v1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;)V

    .line 1454
    move-object/from16 v0, p2

    iget v3, v0, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mLayoutDirection:I

    const/4 v9, 0x1

    if-ne v3, v9, :cond_c

    .line 1455
    move-object/from16 v0, v22

    iget-boolean v3, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v3, :cond_b

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getMaxEnd(I)I

    move-result v6

    .line 1457
    .local v6, "start":I
    :goto_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v3, v4}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v3

    add-int v8, v6, v3

    .line 1458
    .local v8, "end":I
    if-eqz v16, :cond_5

    move-object/from16 v0, v22

    iget-boolean v3, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v3, :cond_5

    .line 1460
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->createFullSpanItemFromEnd(I)Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v20

    .line 1461
    .local v20, "fullSpanItem":Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    const/4 v3, -0x1

    move-object/from16 v0, v20

    iput v3, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapDir:I

    .line 1462
    move/from16 v0, v25

    move-object/from16 v1, v20

    iput v0, v1, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    .line 1463
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLazySpanLookup:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->addFullSpanItem(Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;)V

    .line 1479
    .end local v20    # "fullSpanItem":Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    :cond_5
    :goto_a
    move-object/from16 v0, v22

    iget-boolean v3, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v3, :cond_6

    move-object/from16 v0, p2

    iget v3, v0, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mItemDirection:I

    const/4 v9, -0x1

    if-ne v3, v9, :cond_6

    .line 1480
    if-eqz v16, :cond_e

    .line 1481
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    .line 1500
    :cond_6
    :goto_b
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p2

    invoke-direct {v0, v4, v1, v2}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->attachViewToSpans(Landroid/view/View;Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;Lcom/oneplus/lib/widget/recyclerview/LayoutState;)V

    .line 1501
    move-object/from16 v0, v22

    iget-boolean v3, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v3, :cond_13

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSecondaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v3}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v5

    .line 1504
    .local v5, "otherStart":I
    :goto_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSecondaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v3, v4}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v3

    add-int v7, v5, v3

    .line 1505
    .local v7, "otherEnd":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mOrientation:I

    const/4 v9, 0x1

    if-ne v3, v9, :cond_14

    move-object/from16 v3, p0

    .line 1506
    invoke-direct/range {v3 .. v8}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    .line 1511
    :goto_d
    move-object/from16 v0, v22

    iget-boolean v3, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v3, :cond_15

    .line 1512
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LayoutState;

    iget v3, v3, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mLayoutDirection:I

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v3, v1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->updateAllRemainingSpans(II)V

    .line 1516
    :goto_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LayoutState;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->recycle(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/LayoutState;)V

    .line 1517
    const/4 v15, 0x1

    goto/16 :goto_2

    .line 1430
    .end local v5    # "otherStart":I
    .end local v6    # "start":I
    .end local v7    # "otherEnd":I
    .end local v8    # "end":I
    .end local v16    # "assignSpan":Z
    .end local v17    # "currentSpan":Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;
    :cond_7
    const/16 v16, 0x0

    goto/16 :goto_5

    .line 1432
    .restart local v16    # "assignSpan":Z
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getNextSpan(Lcom/oneplus/lib/widget/recyclerview/LayoutState;)Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    move-result-object v17

    .restart local v17    # "currentSpan":Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;
    goto/16 :goto_6

    .line 1441
    .end local v17    # "currentSpan":Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v17, v3, v26

    .restart local v17    # "currentSpan":Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;
    goto/16 :goto_7

    .line 1448
    :cond_a
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->addView(Landroid/view/View;I)V

    goto/16 :goto_8

    .line 1456
    :cond_b
    invoke-virtual/range {v17 .. v18}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v6

    .restart local v6    # "start":I
    goto/16 :goto_9

    .line 1466
    .end local v6    # "start":I
    :cond_c
    move-object/from16 v0, v22

    iget-boolean v3, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v3, :cond_d

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getMinStart(I)I

    move-result v8

    .line 1468
    .restart local v8    # "end":I
    :goto_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v3, v4}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v3

    sub-int v6, v8, v3

    .line 1469
    .restart local v6    # "start":I
    if-eqz v16, :cond_5

    move-object/from16 v0, v22

    iget-boolean v3, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v3, :cond_5

    .line 1471
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->createFullSpanItemFromStart(I)Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v20

    .line 1472
    .restart local v20    # "fullSpanItem":Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    const/4 v3, 0x1

    move-object/from16 v0, v20

    iput v3, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapDir:I

    .line 1473
    move/from16 v0, v25

    move-object/from16 v1, v20

    iput v0, v1, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    .line 1474
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLazySpanLookup:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->addFullSpanItem(Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;)V

    goto/16 :goto_a

    .line 1467
    .end local v6    # "start":I
    .end local v8    # "end":I
    .end local v20    # "fullSpanItem":Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    :cond_d
    invoke-virtual/range {v17 .. v18}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v8

    .restart local v8    # "end":I
    goto :goto_f

    .line 1484
    .restart local v6    # "start":I
    :cond_e
    move-object/from16 v0, p2

    iget v3, v0, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mLayoutDirection:I

    const/4 v9, 0x1

    if-ne v3, v9, :cond_11

    .line 1485
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->areAllEndsEqual()Z

    move-result v3

    if-eqz v3, :cond_10

    const/16 v21, 0x0

    .line 1489
    .local v21, "hasInvalidGap":Z
    :goto_10
    if-eqz v21, :cond_6

    .line 1490
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLazySpanLookup:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->getFullSpanItem(I)Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v20

    .line 1492
    .restart local v20    # "fullSpanItem":Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    if-eqz v20, :cond_f

    .line 1493
    const/4 v3, 0x1

    move-object/from16 v0, v20

    iput-boolean v3, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mHasUnwantedGapAfter:Z

    .line 1495
    :cond_f
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    goto/16 :goto_b

    .line 1485
    .end local v20    # "fullSpanItem":Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    .end local v21    # "hasInvalidGap":Z
    :cond_10
    const/16 v21, 0x1

    .restart local v21    # "hasInvalidGap":Z
    goto :goto_10

    .line 1487
    .end local v21    # "hasInvalidGap":Z
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->areAllStartsEqual()Z

    move-result v3

    if-eqz v3, :cond_12

    const/16 v21, 0x0

    .restart local v21    # "hasInvalidGap":Z
    goto :goto_10

    .end local v21    # "hasInvalidGap":Z
    :cond_12
    const/16 v21, 0x1

    .restart local v21    # "hasInvalidGap":Z
    goto :goto_10

    .line 1502
    .end local v21    # "hasInvalidGap":Z
    :cond_13
    move-object/from16 v0, v17

    iget v3, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mIndex:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSizePerSpan:I

    mul-int/2addr v3, v9

    .line 1503
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSecondaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v9}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v9

    .line 1502
    add-int v5, v3, v9

    .restart local v5    # "otherStart":I
    goto/16 :goto_c

    .restart local v7    # "otherEnd":I
    :cond_14
    move-object/from16 v9, p0

    move-object v10, v4

    move v11, v6

    move v12, v5

    move v13, v8

    move v14, v7

    .line 1508
    invoke-direct/range {v9 .. v14}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    goto/16 :goto_d

    .line 1514
    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LayoutState;

    iget v3, v3, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mLayoutDirection:I

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v27

    invoke-direct {v0, v1, v3, v2}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->updateRemainingSpans(Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;II)V

    goto/16 :goto_e

    .line 1527
    .end local v4    # "view":Landroid/view/View;
    .end local v5    # "otherStart":I
    .end local v6    # "start":I
    .end local v7    # "otherEnd":I
    .end local v8    # "end":I
    .end local v16    # "assignSpan":Z
    .end local v17    # "currentSpan":Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;
    .end local v22    # "lp":Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;
    .end local v25    # "position":I
    .end local v26    # "spanIndex":I
    :cond_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v3}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getMaxEnd(I)I

    move-result v23

    .line 1528
    .local v23, "maxEnd":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v3}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v3

    sub-int v19, v23, v3

    .restart local v19    # "diff":I
    goto/16 :goto_3

    .line 1530
    .end local v23    # "maxEnd":I
    :cond_17
    const/4 v3, 0x0

    goto/16 :goto_4
.end method

.method private findFirstReferenceChildPosition(I)I
    .locals 5
    .param p1, "itemCount"    # I

    .prologue
    const/4 v4, 0x0

    .line 1963
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getChildCount()I

    move-result v1

    .line 1964
    .local v1, "limit":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1965
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1966
    .local v3, "view":Landroid/view/View;
    invoke-virtual {p0, v3}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    .line 1967
    .local v2, "position":I
    if-ltz v2, :cond_0

    if-ge v2, p1, :cond_0

    .line 1968
    return v2

    .line 1964
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1971
    .end local v2    # "position":I
    .end local v3    # "view":Landroid/view/View;
    :cond_1
    return v4
.end method

.method private findLastReferenceChildPosition(I)I
    .locals 5
    .param p1, "itemCount"    # I

    .prologue
    const/4 v4, 0x0

    .line 1980
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getChildCount()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1981
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1982
    .local v2, "view":Landroid/view/View;
    invoke-virtual {p0, v2}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    .line 1983
    .local v1, "position":I
    if-ltz v1, :cond_0

    if-ge v1, p1, :cond_0

    .line 1984
    return v1

    .line 1980
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1987
    .end local v1    # "position":I
    .end local v2    # "view":Landroid/view/View;
    :cond_1
    return v4
.end method

.method private fixEndGap(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)V
    .locals 4
    .param p1, "recycler"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;
    .param p2, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;
    .param p3, "canOffsetChildren"    # Z

    .prologue
    .line 1248
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v3}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getMaxEnd(I)I

    move-result v2

    .line 1249
    .local v2, "maxEndLine":I
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v3}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v3

    sub-int v1, v3, v2

    .line 1251
    .local v1, "gap":I
    if-lez v1, :cond_1

    .line 1252
    neg-int v3, v1

    invoke-virtual {p0, v3, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->scrollBy(ILcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I

    move-result v3

    neg-int v0, v3

    .line 1256
    .local v0, "fixOffset":I
    sub-int/2addr v1, v0

    .line 1257
    if-eqz p3, :cond_0

    if-lez v1, :cond_0

    .line 1258
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v3, v1}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->offsetChildren(I)V

    .line 1247
    :cond_0
    return-void

    .line 1254
    .end local v0    # "fixOffset":I
    :cond_1
    return-void
.end method

.method private fixStartGap(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)V
    .locals 5
    .param p1, "recycler"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;
    .param p2, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;
    .param p3, "canOffsetChildren"    # Z

    .prologue
    .line 1264
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v3}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getMinStart(I)I

    move-result v2

    .line 1265
    .local v2, "minStartLine":I
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v3}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v3

    sub-int v1, v2, v3

    .line 1267
    .local v1, "gap":I
    if-lez v1, :cond_1

    .line 1268
    invoke-virtual {p0, v1, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->scrollBy(ILcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I

    move-result v0

    .line 1272
    .local v0, "fixOffset":I
    sub-int/2addr v1, v0

    .line 1273
    if-eqz p3, :cond_0

    if-lez v1, :cond_0

    .line 1274
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    neg-int v4, v1

    invoke-virtual {v3, v4}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->offsetChildren(I)V

    .line 1263
    :cond_0
    return-void

    .line 1270
    .end local v0    # "fixOffset":I
    :cond_1
    return-void
.end method

.method private getFirstChildPosition()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1953
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    .line 1954
    .local v0, "childCount":I
    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    goto :goto_0
.end method

.method private getLastChildPosition()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1948
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    .line 1949
    .local v0, "childCount":I
    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    goto :goto_0
.end method

.method private getMaxEnd(I)I
    .locals 5
    .param p1, "def"    # I

    .prologue
    .line 1696
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3, p1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v1

    .line 1697
    .local v1, "maxEnd":I
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v3, :cond_1

    .line 1698
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v2

    .line 1699
    .local v2, "spanEnd":I
    if-le v2, v1, :cond_0

    .line 1700
    move v1, v2

    .line 1697
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1703
    .end local v2    # "spanEnd":I
    :cond_1
    return v1
.end method

.method private getMaxStart(I)I
    .locals 5
    .param p1, "def"    # I

    .prologue
    .line 1654
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3, p1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v1

    .line 1655
    .local v1, "maxStart":I
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v3, :cond_1

    .line 1656
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v2

    .line 1657
    .local v2, "spanStart":I
    if-le v2, v1, :cond_0

    .line 1658
    move v1, v2

    .line 1655
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1661
    .end local v2    # "spanStart":I
    :cond_1
    return v1
.end method

.method private getMinEnd(I)I
    .locals 5
    .param p1, "def"    # I

    .prologue
    .line 1707
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3, p1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v1

    .line 1708
    .local v1, "minEnd":I
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v3, :cond_1

    .line 1709
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v2

    .line 1710
    .local v2, "spanEnd":I
    if-ge v2, v1, :cond_0

    .line 1711
    move v1, v2

    .line 1708
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1714
    .end local v2    # "spanEnd":I
    :cond_1
    return v1
.end method

.method private getMinStart(I)I
    .locals 5
    .param p1, "def"    # I

    .prologue
    .line 1665
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3, p1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v1

    .line 1666
    .local v1, "minStart":I
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v3, :cond_1

    .line 1667
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v2

    .line 1668
    .local v2, "spanStart":I
    if-ge v2, v1, :cond_0

    .line 1669
    move v1, v2

    .line 1666
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1672
    .end local v2    # "spanStart":I
    :cond_1
    return v1
.end method

.method private getNextSpan(Lcom/oneplus/lib/widget/recyclerview/LayoutState;)Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;
    .locals 14
    .param p1, "layoutState"    # Lcom/oneplus/lib/widget/recyclerview/LayoutState;

    .prologue
    .line 1789
    iget v12, p1, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mLayoutDirection:I

    invoke-direct {p0, v12}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->preferLastSpan(I)Z

    move-result v10

    .line 1791
    .local v10, "preferLastSpan":Z
    if-eqz v10, :cond_1

    .line 1792
    iget v12, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    add-int/lit8 v11, v12, -0x1

    .line 1793
    .local v11, "startIndex":I
    const/4 v2, -0x1

    .line 1794
    .local v2, "endIndex":I
    const/4 v1, -0x1

    .line 1800
    .local v1, "diff":I
    :goto_0
    iget v12, p1, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mLayoutDirection:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_3

    .line 1801
    const/4 v6, 0x0

    .line 1802
    .local v6, "min":Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;
    const v7, 0x7fffffff

    .line 1803
    .local v7, "minLine":I
    iget-object v12, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v12}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    .line 1804
    .local v0, "defaultLine":I
    move v3, v11

    .end local v6    # "min":Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;
    .local v3, "i":I
    :goto_1
    if-eq v3, v2, :cond_2

    .line 1805
    iget-object v12, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v8, v12, v3

    .line 1806
    .local v8, "other":Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;
    invoke-virtual {v8, v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v9

    .line 1807
    .local v9, "otherLine":I
    if-ge v9, v7, :cond_0

    .line 1808
    move-object v6, v8

    .line 1809
    .local v6, "min":Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;
    move v7, v9

    .line 1804
    .end local v6    # "min":Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;
    :cond_0
    add-int/2addr v3, v1

    goto :goto_1

    .line 1796
    .end local v0    # "defaultLine":I
    .end local v1    # "diff":I
    .end local v2    # "endIndex":I
    .end local v3    # "i":I
    .end local v7    # "minLine":I
    .end local v8    # "other":Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;
    .end local v9    # "otherLine":I
    .end local v11    # "startIndex":I
    :cond_1
    const/4 v11, 0x0

    .line 1797
    .restart local v11    # "startIndex":I
    iget v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    .line 1798
    .restart local v2    # "endIndex":I
    const/4 v1, 0x1

    .restart local v1    # "diff":I
    goto :goto_0

    .line 1812
    .restart local v0    # "defaultLine":I
    .restart local v3    # "i":I
    .restart local v7    # "minLine":I
    :cond_2
    return-object v6

    .line 1814
    .end local v0    # "defaultLine":I
    .end local v3    # "i":I
    .end local v7    # "minLine":I
    :cond_3
    const/4 v4, 0x0

    .line 1815
    .local v4, "max":Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;
    const/high16 v5, -0x80000000

    .line 1816
    .local v5, "maxLine":I
    iget-object v12, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v12}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v0

    .line 1817
    .restart local v0    # "defaultLine":I
    move v3, v11

    .end local v4    # "max":Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;
    .restart local v3    # "i":I
    :goto_2
    if-eq v3, v2, :cond_5

    .line 1818
    iget-object v12, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v8, v12, v3

    .line 1819
    .restart local v8    # "other":Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;
    invoke-virtual {v8, v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v9

    .line 1820
    .restart local v9    # "otherLine":I
    if-le v9, v5, :cond_4

    .line 1821
    move-object v4, v8

    .line 1822
    .local v4, "max":Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;
    move v5, v9

    .line 1817
    .end local v4    # "max":Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;
    :cond_4
    add-int/2addr v3, v1

    goto :goto_2

    .line 1825
    .end local v8    # "other":Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;
    .end local v9    # "otherLine":I
    :cond_5
    return-object v4
.end method

.method private getSpecForDimension(II)I
    .locals 1
    .param p1, "dim"    # I
    .param p2, "defaultSpec"    # I

    .prologue
    .line 1020
    if-gez p1, :cond_0

    .line 1021
    return p2

    .line 1023
    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    return v0
.end method

.method private handleUpdate(III)V
    .locals 6
    .param p1, "positionStart"    # I
    .param p2, "itemCountOrToPosition"    # I
    .param p3, "cmd"    # I

    .prologue
    const/4 v5, 0x1

    .line 1358
    iget-boolean v4, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v4, :cond_0

    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getLastChildPosition()I

    move-result v3

    .line 1362
    .local v3, "minPosition":I
    :goto_0
    const/4 v4, 0x3

    if-ne p3, v4, :cond_2

    .line 1363
    if-ge p1, p2, :cond_1

    .line 1364
    add-int/lit8 v0, p2, 0x1

    .line 1365
    .local v0, "affectedRangeEnd":I
    move v1, p1

    .line 1375
    .local v1, "affectedRangeStart":I
    :goto_1
    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLazySpanLookup:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v4, v1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->invalidateAfter(I)I

    .line 1376
    packed-switch p3, :pswitch_data_0

    .line 1390
    :goto_2
    :pswitch_0
    if-gt v0, v3, :cond_3

    .line 1391
    return-void

    .line 1358
    .end local v0    # "affectedRangeEnd":I
    .end local v1    # "affectedRangeStart":I
    .end local v3    # "minPosition":I
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v3

    .restart local v3    # "minPosition":I
    goto :goto_0

    .line 1367
    :cond_1
    add-int/lit8 v0, p1, 0x1

    .line 1368
    .restart local v0    # "affectedRangeEnd":I
    move v1, p2

    .restart local v1    # "affectedRangeStart":I
    goto :goto_1

    .line 1371
    .end local v0    # "affectedRangeEnd":I
    .end local v1    # "affectedRangeStart":I
    :cond_2
    move v1, p1

    .line 1372
    .restart local v1    # "affectedRangeStart":I
    add-int v0, p1, p2

    .restart local v0    # "affectedRangeEnd":I
    goto :goto_1

    .line 1378
    :pswitch_1
    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLazySpanLookup:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v4, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->offsetForAddition(II)V

    goto :goto_2

    .line 1381
    :pswitch_2
    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLazySpanLookup:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v4, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->offsetForRemoval(II)V

    goto :goto_2

    .line 1385
    :pswitch_3
    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLazySpanLookup:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v4, p1, v5}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->offsetForRemoval(II)V

    .line 1386
    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLazySpanLookup:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v4, p2, v5}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->offsetForAddition(II)V

    goto :goto_2

    .line 1394
    :cond_3
    iget-boolean v4, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v4, :cond_5

    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v2

    .line 1395
    .local v2, "maxPosition":I
    :goto_3
    if-gt v1, v2, :cond_4

    .line 1396
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->requestLayout()V

    .line 1357
    :cond_4
    return-void

    .line 1394
    .end local v2    # "maxPosition":I
    :cond_5
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getLastChildPosition()I

    move-result v2

    goto :goto_3

    .line 1376
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private layoutDecoratedWithMargins(Landroid/view/View;IIII)V
    .locals 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 1618
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;

    .line 1625
    .local v6, "lp":Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;
    iget v0, v6, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->leftMargin:I

    add-int v2, p2, v0

    iget v0, v6, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->topMargin:I

    add-int v3, p3, v0

    iget v0, v6, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->rightMargin:I

    sub-int v4, p4, v0

    .line 1626
    iget v0, v6, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->bottomMargin:I

    sub-int v5, p5, v0

    move-object v0, p0

    move-object v1, p1

    .line 1625
    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->layoutDecorated(Landroid/view/View;IIII)V

    .line 1617
    return-void
.end method

.method private measureChildWithDecorationsAndMargin(Landroid/view/View;II)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "widthSpec"    # I
    .param p3, "heightSpec"    # I

    .prologue
    .line 1029
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1030
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;

    .line 1031
    .local v0, "lp":Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;
    iget v1, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->leftMargin:I

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mTmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    .line 1032
    iget v2, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->rightMargin:I

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    .line 1031
    invoke-direct {p0, p2, v1, v2}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->updateSpecWithExtra(III)I

    move-result p2

    .line 1033
    iget v1, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->topMargin:I

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mTmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    .line 1034
    iget v2, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->bottomMargin:I

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    .line 1033
    invoke-direct {p0, p3, v1, v2}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->updateSpecWithExtra(III)I

    move-result p3

    .line 1035
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    .line 1028
    return-void
.end method

.method private measureChildWithDecorationsAndMargin(Landroid/view/View;Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "lp"    # Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;

    .prologue
    const/4 v1, 0x1

    .line 1000
    iget-boolean v0, p2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v0, :cond_1

    .line 1001
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mOrientation:I

    if-ne v0, v1, :cond_0

    .line 1002
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mFullSizeSpec:I

    .line 1003
    iget v1, p2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->height:I

    iget v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mHeightSpec:I

    invoke-direct {p0, v1, v2}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getSpecForDimension(II)I

    move-result v1

    .line 1002
    invoke-direct {p0, p1, v0, v1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;II)V

    .line 999
    :goto_0
    return-void

    .line 1006
    :cond_0
    iget v0, p2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->width:I

    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mWidthSpec:I

    invoke-direct {p0, v0, v1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getSpecForDimension(II)I

    move-result v0

    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mFullSizeSpec:I

    .line 1005
    invoke-direct {p0, p1, v0, v1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;II)V

    goto :goto_0

    .line 1009
    :cond_1
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mOrientation:I

    if-ne v0, v1, :cond_2

    .line 1010
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mWidthSpec:I

    .line 1011
    iget v1, p2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->height:I

    iget v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mHeightSpec:I

    invoke-direct {p0, v1, v2}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getSpecForDimension(II)I

    move-result v1

    .line 1010
    invoke-direct {p0, p1, v0, v1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;II)V

    goto :goto_0

    .line 1014
    :cond_2
    iget v0, p2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->width:I

    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mWidthSpec:I

    invoke-direct {p0, v0, v1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getSpecForDimension(II)I

    move-result v0

    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mHeightSpec:I

    .line 1013
    invoke-direct {p0, p1, v0, v1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;II)V

    goto :goto_0
.end method

.method private preferLastSpan(I)Z
    .locals 4
    .param p1, "layoutDir"    # I

    .prologue
    const/4 v3, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1779
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mOrientation:I

    if-nez v0, :cond_2

    .line 1780
    if-ne p1, v3, :cond_0

    move v0, v1

    :goto_0
    iget-boolean v3, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eq v0, v3, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    .line 1782
    :cond_2
    if-ne p1, v3, :cond_3

    move v0, v1

    :goto_2
    iget-boolean v3, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-ne v0, v3, :cond_4

    move v0, v1

    :goto_3
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result v3

    if-ne v0, v3, :cond_5

    :goto_4
    return v1

    :cond_3
    move v0, v2

    goto :goto_2

    :cond_4
    move v0, v2

    goto :goto_3

    :cond_5
    move v1, v2

    goto :goto_4
.end method

.method private prependViewToAllSpans(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1612
    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1613
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->prependToSpan(Landroid/view/View;)V

    .line 1612
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1610
    :cond_0
    return-void
.end method

.method private recycle(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/LayoutState;)V
    .locals 4
    .param p1, "recycler"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;
    .param p2, "layoutState"    # Lcom/oneplus/lib/widget/recyclerview/LayoutState;

    .prologue
    const/4 v3, -0x1

    .line 1568
    iget v2, p2, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mAvailable:I

    if-nez v2, :cond_1

    .line 1570
    iget v2, p2, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mLayoutDirection:I

    if-ne v2, v3, :cond_0

    .line 1571
    iget v2, p2, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mEndLine:I

    invoke-direct {p0, p1, v2}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->recycleFromEnd(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;I)V

    .line 1567
    :goto_0
    return-void

    .line 1573
    :cond_0
    iget v2, p2, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mStartLine:I

    invoke-direct {p0, p1, v2}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->recycleFromStart(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;I)V

    goto :goto_0

    .line 1578
    :cond_1
    iget v2, p2, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mLayoutDirection:I

    if-ne v2, v3, :cond_3

    .line 1580
    iget v2, p2, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mStartLine:I

    iget v3, p2, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mStartLine:I

    invoke-direct {p0, v3}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getMaxStart(I)I

    move-result v3

    sub-int v1, v2, v3

    .line 1582
    .local v1, "scrolled":I
    if-gez v1, :cond_2

    .line 1583
    iget v0, p2, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mEndLine:I

    .line 1587
    .local v0, "line":I
    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->recycleFromEnd(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;I)V

    goto :goto_0

    .line 1585
    .end local v0    # "line":I
    :cond_2
    iget v2, p2, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mEndLine:I

    iget v3, p2, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mAvailable:I

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    sub-int v0, v2, v3

    .restart local v0    # "line":I
    goto :goto_1

    .line 1590
    .end local v0    # "line":I
    .end local v1    # "scrolled":I
    :cond_3
    iget v2, p2, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mEndLine:I

    invoke-direct {p0, v2}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getMinEnd(I)I

    move-result v2

    iget v3, p2, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mEndLine:I

    sub-int v1, v2, v3

    .line 1592
    .restart local v1    # "scrolled":I
    if-gez v1, :cond_4

    .line 1593
    iget v0, p2, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mStartLine:I

    .line 1597
    .restart local v0    # "line":I
    :goto_2
    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->recycleFromStart(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;I)V

    goto :goto_0

    .line 1595
    .end local v0    # "line":I
    :cond_4
    iget v2, p2, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mStartLine:I

    iget v3, p2, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mAvailable:I

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int v0, v2, v3

    .restart local v0    # "line":I
    goto :goto_2
.end method

.method private recycleFromEnd(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;I)V
    .locals 7
    .param p1, "recycler"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;
    .param p2, "line"    # I

    .prologue
    const/4 v6, 0x1

    .line 1746
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getChildCount()I

    move-result v1

    .line 1748
    .local v1, "childCount":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_6

    .line 1749
    invoke-virtual {p0, v2}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1750
    .local v0, "child":Landroid/view/View;
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v5, v0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v5

    if-lt v5, p2, :cond_5

    .line 1751
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;

    .line 1753
    .local v4, "lp":Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;
    iget-boolean v5, v4, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v5, :cond_2

    .line 1754
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    iget v5, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v3, v5, :cond_1

    .line 1755
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v5, v5, v3

    invoke-static {v5}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->-get0(Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v5, v6, :cond_0

    .line 1756
    return-void

    .line 1754
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1759
    :cond_1
    const/4 v3, 0x0

    :goto_2
    iget v5, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v3, v5, :cond_4

    .line 1760
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->popEnd()V

    .line 1759
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1763
    .end local v3    # "j":I
    :cond_2
    iget-object v5, v4, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    invoke-static {v5}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->-get0(Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v5, v6, :cond_3

    .line 1764
    return-void

    .line 1766
    :cond_3
    iget-object v5, v4, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    invoke-virtual {v5}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->popEnd()V

    .line 1768
    :cond_4
    invoke-virtual {p0, v0, p1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->removeAndRecycleView(Landroid/view/View;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;)V

    .line 1748
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1770
    .end local v4    # "lp":Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;
    :cond_5
    return-void

    .line 1745
    .end local v0    # "child":Landroid/view/View;
    :cond_6
    return-void
.end method

.method private recycleFromStart(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;I)V
    .locals 6
    .param p1, "recycler"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;
    .param p2, "line"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1718
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getChildCount()I

    move-result v3

    if-lez v3, :cond_6

    .line 1719
    invoke-virtual {p0, v4}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1720
    .local v0, "child":Landroid/view/View;
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v3, v0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v3

    if-gt v3, p2, :cond_5

    .line 1721
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;

    .line 1723
    .local v2, "lp":Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;
    iget-boolean v3, v2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v3, :cond_2

    .line 1724
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    iget v3, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v1, v3, :cond_1

    .line 1725
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v3, v3, v1

    invoke-static {v3}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->-get0(Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v5, :cond_0

    .line 1726
    return-void

    .line 1724
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1729
    :cond_1
    const/4 v1, 0x0

    :goto_2
    iget v3, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v1, v3, :cond_4

    .line 1730
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->popStart()V

    .line 1729
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1733
    .end local v1    # "j":I
    :cond_2
    iget-object v3, v2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    invoke-static {v3}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->-get0(Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v5, :cond_3

    .line 1734
    return-void

    .line 1736
    :cond_3
    iget-object v3, v2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    invoke-virtual {v3}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->popStart()V

    .line 1738
    :cond_4
    invoke-virtual {p0, v0, p1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->removeAndRecycleView(Landroid/view/View;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;)V

    goto :goto_0

    .line 1740
    .end local v2    # "lp":Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;
    :cond_5
    return-void

    .line 1717
    .end local v0    # "child":Landroid/view/View;
    :cond_6
    return-void
.end method

.method private resolveShouldLayoutReverse()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 529
    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mOrientation:I

    if-eq v1, v0, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 532
    iget-boolean v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mReverseLayout:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    .line 527
    :goto_0
    return-void

    .line 530
    :cond_1
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mReverseLayout:Z

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    goto :goto_0
.end method

.method private setLayoutStateDirection(I)V
    .locals 5
    .param p1, "direction"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, -0x1

    .line 1306
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LayoutState;

    iput p1, v2, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mLayoutDirection:I

    .line 1307
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LayoutState;

    iget-boolean v4, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-ne p1, v1, :cond_0

    move v2, v0

    :goto_0
    if-ne v4, v2, :cond_1

    :goto_1
    iput v0, v3, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mItemDirection:I

    .line 1305
    return-void

    .line 1307
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 1308
    goto :goto_1
.end method

.method private updateAllRemainingSpans(II)V
    .locals 2
    .param p1, "layoutDir"    # I
    .param p2, "targetLine"    # I

    .prologue
    .line 1630
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v1, :cond_1

    .line 1631
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->-get0(Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1630
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1634
    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v1, v1, v0

    invoke-direct {p0, v1, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->updateRemainingSpans(Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;II)V

    goto :goto_1

    .line 1629
    :cond_1
    return-void
.end method

.method private updateAnchorFromChildren(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;)Z
    .locals 1
    .param p1, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;
    .param p2, "anchorInfo"    # Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;

    .prologue
    .line 703
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    if-eqz v0, :cond_0

    .line 704
    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->getItemCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->findLastReferenceChildPosition(I)I

    move-result v0

    .line 703
    :goto_0
    iput v0, p2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    .line 706
    const/high16 v0, -0x80000000

    iput v0, p2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    .line 707
    const/4 v0, 0x1

    return v0

    .line 705
    :cond_0
    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->getItemCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->findFirstReferenceChildPosition(I)I

    move-result v0

    goto :goto_0
.end method

.method private updateLayoutState(ILcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)V
    .locals 6
    .param p1, "anchorPosition"    # I
    .param p2, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    .prologue
    const/4 v4, 0x0

    .line 1279
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LayoutState;

    iput v4, v5, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mAvailable:I

    .line 1280
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LayoutState;

    iput p1, v5, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mCurrentPosition:I

    .line 1281
    const/4 v2, 0x0

    .line 1282
    .local v2, "startExtra":I
    const/4 v1, 0x0

    .line 1283
    .local v1, "endExtra":I
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->isSmoothScrolling()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1284
    invoke-virtual {p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->getTargetScrollPosition()I

    move-result v3

    .line 1285
    .local v3, "targetPos":I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_1

    .line 1286
    iget-boolean v5, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-ge v3, p1, :cond_0

    const/4 v4, 0x1

    :cond_0
    if-ne v5, v4, :cond_2

    .line 1287
    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v4}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getTotalSpace()I

    move-result v1

    .line 1295
    .end local v3    # "targetPos":I
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getClipToPadding()Z

    move-result v0

    .line 1296
    .local v0, "clipToPadding":Z
    if-eqz v0, :cond_3

    .line 1297
    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LayoutState;

    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v5}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v5

    sub-int/2addr v5, v2

    iput v5, v4, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mStartLine:I

    .line 1298
    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LayoutState;

    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v5}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v5

    add-int/2addr v5, v1

    iput v5, v4, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mEndLine:I

    .line 1278
    :goto_1
    return-void

    .line 1289
    .end local v0    # "clipToPadding":Z
    .restart local v3    # "targetPos":I
    :cond_2
    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v4}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getTotalSpace()I

    move-result v2

    goto :goto_0

    .line 1300
    .end local v3    # "targetPos":I
    .restart local v0    # "clipToPadding":Z
    :cond_3
    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LayoutState;

    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v5}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEnd()I

    move-result v5

    add-int/2addr v5, v1

    iput v5, v4, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mEndLine:I

    .line 1301
    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LayoutState;

    neg-int v5, v2

    iput v5, v4, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mStartLine:I

    goto :goto_1
.end method

.method private updateRemainingSpans(Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;II)V
    .locals 5
    .param p1, "span"    # Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;
    .param p2, "layoutDir"    # I
    .param p3, "targetLine"    # I

    .prologue
    const/4 v4, 0x0

    .line 1639
    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->getDeletedSize()I

    move-result v0

    .line 1640
    .local v0, "deletedSize":I
    const/4 v2, -0x1

    if-ne p2, v2, :cond_1

    .line 1641
    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->getStartLine()I

    move-result v1

    .line 1642
    .local v1, "line":I
    add-int v2, v1, v0

    if-gt v2, p3, :cond_0

    .line 1643
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mRemainingSpans:Ljava/util/BitSet;

    iget v3, p1, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mIndex:I

    invoke-virtual {v2, v3, v4}, Ljava/util/BitSet;->set(IZ)V

    .line 1638
    :cond_0
    :goto_0
    return-void

    .line 1646
    .end local v1    # "line":I
    :cond_1
    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->getEndLine()I

    move-result v1

    .line 1647
    .restart local v1    # "line":I
    sub-int v2, v1, v0

    if-lt v2, p3, :cond_0

    .line 1648
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mRemainingSpans:Ljava/util/BitSet;

    iget v3, p1, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mIndex:I

    invoke-virtual {v2, v3, v4}, Ljava/util/BitSet;->set(IZ)V

    goto :goto_0
.end method

.method private updateSpecWithExtra(III)I
    .locals 2
    .param p1, "spec"    # I
    .param p2, "startInset"    # I
    .param p3, "endInset"    # I

    .prologue
    .line 1039
    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 1040
    return p1

    .line 1042
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 1043
    .local v0, "mode":I
    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_2

    .line 1045
    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    sub-int/2addr v1, p2

    sub-int/2addr v1, p3

    .line 1044
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    return v1

    .line 1047
    :cond_2
    return p1
.end method


# virtual methods
.method areAllEndsEqual()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/high16 v3, -0x80000000

    .line 1676
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v2, v2, v4

    invoke-virtual {v2, v3}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v0

    .line 1677
    .local v0, "end":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v1, v2, :cond_1

    .line 1678
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v2, v2, v1

    invoke-virtual {v2, v3}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v2

    if-eq v2, v0, :cond_0

    .line 1679
    return v4

    .line 1677
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1682
    :cond_1
    const/4 v2, 0x1

    return v2
.end method

.method areAllStartsEqual()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/high16 v3, -0x80000000

    .line 1686
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v2, v2, v4

    invoke-virtual {v2, v3}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v1

    .line 1687
    .local v1, "start":I
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v2, :cond_1

    .line 1688
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v2, v2, v0

    invoke-virtual {v2, v3}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v2

    if-eq v2, v1, :cond_0

    .line 1689
    return v4

    .line 1687
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1692
    :cond_1
    const/4 v2, 0x1

    return v2
.end method

.method public assertNotInLayoutOrScroll(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 488
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;

    if-nez v0, :cond_0

    .line 489
    invoke-super {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 487
    :cond_0
    return-void
.end method

.method public canScrollHorizontally()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1836
    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mOrientation:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public canScrollVertically()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1831
    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mOrientation:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkLayoutParams(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;)Z
    .locals 1
    .param p1, "lp"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;

    .prologue
    .line 2012
    instance-of v0, p1, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;

    return v0
.end method

.method public computeHorizontalScrollExtent(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    .prologue
    .line 959
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->computeScrollExtent(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public computeHorizontalScrollOffset(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    .prologue
    .line 938
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->computeScrollOffset(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public computeHorizontalScrollRange(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    .prologue
    .line 980
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->computeScrollRange(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollExtent(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    .prologue
    .line 975
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->computeScrollExtent(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollOffset(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    .prologue
    .line 954
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->computeScrollOffset(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollRange(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    .prologue
    .line 996
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->computeScrollRange(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public findFirstCompletelyVisibleItemPositions([I)[I
    .locals 4
    .param p1, "into"    # [I

    .prologue
    .line 860
    if-nez p1, :cond_1

    .line 861
    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    new-array p1, v1, [I

    .line 866
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v1, :cond_2

    .line 867
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->findFirstCompletelyVisibleItemPosition()I

    move-result v1

    aput v1, p1, v0

    .line 866
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 862
    .end local v0    # "i":I
    :cond_1
    array-length v1, p1

    iget v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v1, v2, :cond_0

    .line 863
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Provided int[]\'s size must be more than or equal to span count. Expected:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 864
    iget v3, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    .line 863
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 864
    const-string/jumbo v3, ", array size:"

    .line 863
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 864
    array-length v3, p1

    .line 863
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 869
    .restart local v0    # "i":I
    :cond_2
    return-object p1
.end method

.method findFirstVisibleItemClosestToEnd(ZZ)Landroid/view/View;
    .locals 8
    .param p1, "fullyVisible"    # Z
    .param p2, "acceptPartiallyVisible"    # Z

    .prologue
    .line 1223
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->ensureOrientationHelper()V

    .line 1224
    iget-object v7, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v7}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v1

    .line 1225
    .local v1, "boundsStart":I
    iget-object v7, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v7}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v0

    .line 1226
    .local v0, "boundsEnd":I
    const/4 v6, 0x0

    .line 1227
    .local v6, "partiallyVisible":Landroid/view/View;
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getChildCount()I

    move-result v7

    add-int/lit8 v5, v7, -0x1

    .end local v6    # "partiallyVisible":Landroid/view/View;
    .local v5, "i":I
    :goto_0
    if-ltz v5, :cond_3

    .line 1228
    invoke-virtual {p0, v5}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1229
    .local v2, "child":Landroid/view/View;
    iget-object v7, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v7, v2}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v4

    .line 1230
    .local v4, "childStart":I
    iget-object v7, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v7, v2}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v3

    .line 1231
    .local v3, "childEnd":I
    if-le v3, v1, :cond_0

    if-lt v4, v0, :cond_1

    .line 1227
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 1234
    :cond_1
    if-le v3, v0, :cond_2

    if-eqz p1, :cond_2

    .line 1239
    if-eqz p2, :cond_0

    if-nez v6, :cond_0

    .line 1240
    move-object v6, v2

    .local v6, "partiallyVisible":Landroid/view/View;
    goto :goto_1

    .line 1237
    .end local v6    # "partiallyVisible":Landroid/view/View;
    :cond_2
    return-object v2

    .line 1243
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "childEnd":I
    .end local v4    # "childStart":I
    :cond_3
    return-object v6
.end method

.method findFirstVisibleItemClosestToStart(ZZ)Landroid/view/View;
    .locals 9
    .param p1, "fullyVisible"    # Z
    .param p2, "acceptPartiallyVisible"    # Z

    .prologue
    .line 1192
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->ensureOrientationHelper()V

    .line 1193
    iget-object v8, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v8}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v1

    .line 1194
    .local v1, "boundsStart":I
    iget-object v8, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v8}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v0

    .line 1195
    .local v0, "boundsEnd":I
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getChildCount()I

    move-result v6

    .line 1196
    .local v6, "limit":I
    const/4 v7, 0x0

    .line 1197
    .local v7, "partiallyVisible":Landroid/view/View;
    const/4 v5, 0x0

    .end local v7    # "partiallyVisible":Landroid/view/View;
    .local v5, "i":I
    :goto_0
    if-ge v5, v6, :cond_3

    .line 1198
    invoke-virtual {p0, v5}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1199
    .local v2, "child":Landroid/view/View;
    iget-object v8, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v8, v2}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v4

    .line 1200
    .local v4, "childStart":I
    iget-object v8, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v8, v2}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v3

    .line 1201
    .local v3, "childEnd":I
    if-le v3, v1, :cond_0

    if-lt v4, v0, :cond_1

    .line 1197
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1204
    :cond_1
    if-ge v4, v1, :cond_2

    if-eqz p1, :cond_2

    .line 1209
    if-eqz p2, :cond_0

    if-nez v7, :cond_0

    .line 1210
    move-object v7, v2

    .local v7, "partiallyVisible":Landroid/view/View;
    goto :goto_1

    .line 1207
    .end local v7    # "partiallyVisible":Landroid/view/View;
    :cond_2
    return-object v2

    .line 1213
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "childEnd":I
    .end local v4    # "childStart":I
    :cond_3
    return-object v7
.end method

.method findFirstVisibleItemPositionInt()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1162
    iget-boolean v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0, v2, v2}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToEnd(ZZ)Landroid/view/View;

    move-result-object v0

    .line 1164
    .local v0, "first":Landroid/view/View;
    :goto_0
    if-nez v0, :cond_1

    const/4 v1, -0x1

    :goto_1
    return v1

    .line 1163
    .end local v0    # "first":Landroid/view/View;
    :cond_0
    invoke-virtual {p0, v2, v2}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToStart(ZZ)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 1164
    .restart local v0    # "first":Landroid/view/View;
    :cond_1
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    goto :goto_1
.end method

.method public findFirstVisibleItemPositions([I)[I
    .locals 4
    .param p1, "into"    # [I

    .prologue
    .line 828
    if-nez p1, :cond_1

    .line 829
    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    new-array p1, v1, [I

    .line 834
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v1, :cond_2

    .line 835
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->findFirstVisibleItemPosition()I

    move-result v1

    aput v1, p1, v0

    .line 834
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 830
    .end local v0    # "i":I
    :cond_1
    array-length v1, p1

    iget v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v1, v2, :cond_0

    .line 831
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Provided int[]\'s size must be more than or equal to span count. Expected:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 832
    iget v3, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    .line 831
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 832
    const-string/jumbo v3, ", array size:"

    .line 831
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 832
    array-length v3, p1

    .line 831
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 837
    .restart local v0    # "i":I
    :cond_2
    return-object p1
.end method

.method public findLastCompletelyVisibleItemPositions([I)[I
    .locals 4
    .param p1, "into"    # [I

    .prologue
    .line 924
    if-nez p1, :cond_1

    .line 925
    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    new-array p1, v1, [I

    .line 930
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v1, :cond_2

    .line 931
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->findLastCompletelyVisibleItemPosition()I

    move-result v1

    aput v1, p1, v0

    .line 930
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 926
    .end local v0    # "i":I
    :cond_1
    array-length v1, p1

    iget v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v1, v2, :cond_0

    .line 927
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Provided int[]\'s size must be more than or equal to span count. Expected:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 928
    iget v3, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    .line 927
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 928
    const-string/jumbo v3, ", array size:"

    .line 927
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 928
    array-length v3, p1

    .line 927
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 933
    .restart local v0    # "i":I
    :cond_2
    return-object p1
.end method

.method public findLastVisibleItemPositions([I)[I
    .locals 4
    .param p1, "into"    # [I

    .prologue
    .line 892
    if-nez p1, :cond_1

    .line 893
    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    new-array p1, v1, [I

    .line 898
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v1, :cond_2

    .line 899
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->findLastVisibleItemPosition()I

    move-result v1

    aput v1, p1, v0

    .line 898
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 894
    .end local v0    # "i":I
    :cond_1
    array-length v1, p1

    iget v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v1, v2, :cond_0

    .line 895
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Provided int[]\'s size must be more than or equal to span count. Expected:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 896
    iget v3, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    .line 895
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 896
    const-string/jumbo v3, ", array size:"

    .line 895
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 896
    array-length v3, p1

    .line 895
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 901
    .restart local v0    # "i":I
    :cond_2
    return-object p1
.end method

.method public generateDefaultLayoutParams()Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 1992
    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;
    .locals 1
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1998
    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;

    invoke-direct {v0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;
    .locals 1
    .param p1, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 2003
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    .line 2004
    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .end local p1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    .line 2006
    .restart local p1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;

    invoke-direct {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getColumnCountForAccessibility(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I
    .locals 2
    .param p1, "recycler"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;
    .param p2, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    .prologue
    .line 1179
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1180
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    return v0

    .line 1182
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getColumnCountForAccessibility(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public getGapStrategy()I
    .locals 1

    .prologue
    .line 460
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mGapStrategy:I

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 2016
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mOrientation:I

    return v0
.end method

.method public getReverseLayout()Z
    .locals 1

    .prologue
    .line 549
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mReverseLayout:Z

    return v0
.end method

.method public getRowCountForAccessibility(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I
    .locals 1
    .param p1, "recycler"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;
    .param p2, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    .prologue
    .line 1170
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    .line 1171
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    return v0

    .line 1173
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getRowCountForAccessibility(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public getSpanCount()I
    .locals 1

    .prologue
    .line 499
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    return v0
.end method

.method hasGapsToFix()Landroid/view/View;
    .locals 22

    .prologue
    .line 303
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getChildCount()I

    move-result v19

    add-int/lit8 v6, v19, -0x1

    .line 304
    .local v6, "endChildIndex":I
    new-instance v10, Ljava/util/BitSet;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-direct {v10, v0}, Ljava/util/BitSet;-><init>(I)V

    .line 305
    .local v10, "mSpansToCheck":Ljava/util/BitSet;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    move/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v19

    move/from16 v2, v21

    invoke-virtual {v10, v0, v1, v2}, Ljava/util/BitSet;->set(IIZ)V

    .line 308
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mOrientation:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result v19

    if-eqz v19, :cond_0

    const/16 v18, 0x1

    .line 310
    .local v18, "preferredSpanDir":I
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1

    .line 311
    move v7, v6

    .line 312
    .local v7, "firstChildIndex":I
    const/4 v4, -0x1

    .line 317
    .local v4, "childLimit":I
    :goto_1
    if-ge v7, v4, :cond_2

    const/4 v14, 0x1

    .line 318
    .local v14, "nextChildDiff":I
    :goto_2
    move v8, v7

    .local v8, "i":I
    :goto_3
    if-eq v8, v4, :cond_d

    .line 319
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 320
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;

    .line 321
    .local v9, "lp":Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;
    iget-object v0, v9, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mIndex:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 322
    iget-object v0, v9, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->checkSpanForGap(Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 323
    return-object v3

    .line 308
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "childLimit":I
    .end local v7    # "firstChildIndex":I
    .end local v8    # "i":I
    .end local v9    # "lp":Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;
    .end local v14    # "nextChildDiff":I
    .end local v18    # "preferredSpanDir":I
    :cond_0
    const/16 v18, -0x1

    .restart local v18    # "preferredSpanDir":I
    goto :goto_0

    .line 302
    :cond_1
    const/4 v7, 0x0

    .line 315
    .restart local v7    # "firstChildIndex":I
    add-int/lit8 v4, v6, 0x1

    .restart local v4    # "childLimit":I
    goto :goto_1

    .line 317
    :cond_2
    const/4 v14, -0x1

    .restart local v14    # "nextChildDiff":I
    goto :goto_2

    .line 325
    .restart local v3    # "child":Landroid/view/View;
    .restart local v8    # "i":I
    .restart local v9    # "lp":Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;
    :cond_3
    iget-object v0, v9, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mIndex:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/util/BitSet;->clear(I)V

    .line 327
    :cond_4
    iget-boolean v0, v9, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    move/from16 v19, v0

    if-eqz v19, :cond_6

    .line 318
    :cond_5
    add-int/2addr v8, v14

    goto :goto_3

    .line 331
    :cond_6
    add-int v19, v8, v14

    move/from16 v0, v19

    if-eq v0, v4, :cond_5

    .line 332
    add-int v19, v8, v14

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 333
    .local v13, "nextChild":Landroid/view/View;
    const/4 v5, 0x0

    .line 334
    .local v5, "compareSpans":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    move/from16 v19, v0

    if-eqz v19, :cond_9

    .line 336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v11

    .line 337
    .local v11, "myEnd":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v15

    .line 338
    .local v15, "nextEnd":I
    if-ge v11, v15, :cond_7

    .line 339
    return-object v3

    .line 340
    :cond_7
    if-ne v11, v15, :cond_8

    .line 341
    const/4 v5, 0x1

    .line 352
    .end local v11    # "myEnd":I
    .end local v15    # "nextEnd":I
    :cond_8
    :goto_4
    if-eqz v5, :cond_5

    .line 354
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;

    .line 355
    .local v16, "nextLp":Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;
    iget-object v0, v9, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mIndex:I

    move/from16 v19, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->mIndex:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    if-gez v19, :cond_b

    const/16 v19, 0x1

    move/from16 v20, v19

    :goto_5
    if-gez v18, :cond_c

    const/16 v19, 0x1

    :goto_6
    move/from16 v0, v20

    move/from16 v1, v19

    if-eq v0, v1, :cond_5

    .line 356
    return-object v3

    .line 344
    .end local v16    # "nextLp":Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v12

    .line 345
    .local v12, "myStart":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v17

    .line 346
    .local v17, "nextStart":I
    move/from16 v0, v17

    if-le v12, v0, :cond_a

    .line 347
    return-object v3

    .line 348
    :cond_a
    move/from16 v0, v17

    if-ne v12, v0, :cond_8

    .line 349
    const/4 v5, 0x1

    goto :goto_4

    .line 355
    .end local v12    # "myStart":I
    .end local v17    # "nextStart":I
    .restart local v16    # "nextLp":Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;
    :cond_b
    const/16 v19, 0x0

    move/from16 v20, v19

    goto :goto_5

    :cond_c
    const/16 v19, 0x0

    goto :goto_6

    .line 362
    .end local v3    # "child":Landroid/view/View;
    .end local v5    # "compareSpans":Z
    .end local v9    # "lp":Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;
    .end local v13    # "nextChild":Landroid/view/View;
    .end local v16    # "nextLp":Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;
    :cond_d
    const/16 v19, 0x0

    return-object v19
.end method

.method public invalidateSpanAssignments()V
    .locals 1

    .prologue
    .line 509
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLazySpanLookup:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->clear()V

    .line 510
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->requestLayout()V

    .line 508
    return-void
.end method

.method isLayoutRTL()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 537
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public offsetChildrenHorizontal(I)V
    .locals 2
    .param p1, "dx"    # I

    .prologue
    .line 1313
    invoke-super {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->offsetChildrenHorizontal(I)V

    .line 1314
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v1, :cond_0

    .line 1315
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->onOffset(I)V

    .line 1314
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1312
    :cond_0
    return-void
.end method

.method public offsetChildrenVertical(I)V
    .locals 2
    .param p1, "dy"    # I

    .prologue
    .line 1321
    invoke-super {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->offsetChildrenVertical(I)V

    .line 1322
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v1, :cond_0

    .line 1323
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->onOffset(I)V

    .line 1322
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1320
    :cond_0
    return-void
.end method

.method public onDetachedFromWindow(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;)V
    .locals 2
    .param p1, "view"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p2, "recycler"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    .prologue
    .line 290
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mCheckForGapsRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 291
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v1, :cond_0

    .line 292
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->clear()V

    .line 291
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 289
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1135
    invoke-super {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1136
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getChildCount()I

    move-result v5

    if-lez v5, :cond_2

    .line 1138
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(Landroid/view/accessibility/AccessibilityEvent;)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v2

    .line 1139
    .local v2, "record":Landroid/view/accessibility/AccessibilityRecord;
    invoke-virtual {p0, v6, v7}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToStart(ZZ)Landroid/view/View;

    move-result-object v3

    .line 1140
    .local v3, "start":Landroid/view/View;
    invoke-virtual {p0, v6, v7}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToEnd(ZZ)Landroid/view/View;

    move-result-object v0

    .line 1141
    .local v0, "end":Landroid/view/View;
    if-eqz v3, :cond_0

    if-nez v0, :cond_1

    .line 1142
    :cond_0
    return-void

    .line 1144
    :cond_1
    invoke-virtual {p0, v3}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v4

    .line 1145
    .local v4, "startPos":I
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    .line 1146
    .local v1, "endPos":I
    if-ge v4, v1, :cond_3

    .line 1147
    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    .line 1148
    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    .line 1134
    .end local v0    # "end":Landroid/view/View;
    .end local v1    # "endPos":I
    .end local v2    # "record":Landroid/view/accessibility/AccessibilityRecord;
    .end local v3    # "start":Landroid/view/View;
    .end local v4    # "startPos":I
    :cond_2
    :goto_0
    return-void

    .line 1150
    .restart local v0    # "end":Landroid/view/View;
    .restart local v1    # "endPos":I
    .restart local v2    # "record":Landroid/view/accessibility/AccessibilityRecord;
    .restart local v3    # "start":Landroid/view/View;
    .restart local v4    # "startPos":I
    :cond_3
    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    .line 1151
    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    goto :goto_0
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 8
    .param p1, "recycler"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;
    .param p2, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;
    .param p3, "host"    # Landroid/view/View;
    .param p4, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 1114
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 1115
    .local v6, "lp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v0, v6, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;

    if-nez v0, :cond_0

    .line 1116
    invoke-super {p0, p3, p4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1117
    return-void

    :cond_0
    move-object v7, v6

    .line 1119
    check-cast v7, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;

    .line 1120
    .local v7, "sglp":Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mOrientation:I

    if-nez v0, :cond_2

    .line 1122
    invoke-virtual {v7}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result v0

    iget-boolean v1, v7, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    .line 1124
    :goto_0
    iget-boolean v4, v7, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    .line 1123
    const/4 v2, -0x1

    const/4 v3, -0x1

    .line 1124
    const/4 v5, 0x0

    .line 1121
    invoke-static/range {v0 .. v5}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V

    .line 1113
    :goto_1
    return-void

    .line 1122
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 1128
    :cond_2
    invoke-virtual {v7}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result v2

    iget-boolean v0, v7, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v0, :cond_3

    iget v3, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    .line 1129
    :goto_2
    iget-boolean v4, v7, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    .line 1127
    const/4 v0, -0x1

    const/4 v1, -0x1

    .line 1129
    const/4 v5, 0x0

    .line 1126
    invoke-static/range {v0 .. v5}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V

    goto :goto_1

    .line 1128
    :cond_3
    const/4 v3, 0x1

    goto :goto_2
.end method

.method public onItemsAdded(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;II)V
    .locals 1
    .param p1, "recyclerView"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I

    .prologue
    .line 1334
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->handleUpdate(III)V

    .line 1333
    return-void
.end method

.method public onItemsChanged(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V
    .locals 1
    .param p1, "recyclerView"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    .prologue
    .line 1339
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLazySpanLookup:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->clear()V

    .line 1340
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->requestLayout()V

    .line 1338
    return-void
.end method

.method public onItemsMoved(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;III)V
    .locals 1
    .param p1, "recyclerView"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p2, "from"    # I
    .param p3, "to"    # I
    .param p4, "itemCount"    # I

    .prologue
    .line 1345
    const/4 v0, 0x3

    invoke-direct {p0, p2, p3, v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->handleUpdate(III)V

    .line 1344
    return-void
.end method

.method public onItemsRemoved(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;II)V
    .locals 1
    .param p1, "recyclerView"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I

    .prologue
    .line 1329
    const/4 v0, 0x1

    invoke-direct {p0, p2, p3, v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->handleUpdate(III)V

    .line 1328
    return-void
.end method

.method public onItemsUpdated(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;IILjava/lang/Object;)V
    .locals 1
    .param p1, "recyclerView"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I
    .param p4, "payload"    # Ljava/lang/Object;

    .prologue
    .line 1351
    const/4 v0, 0x2

    invoke-direct {p0, p2, p3, v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->handleUpdate(III)V

    .line 1350
    return-void
.end method

.method public onLayoutChildren(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)V
    .locals 11
    .param p1, "recycler"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;
    .param p2, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    .prologue
    const/high16 v10, -0x80000000

    const/4 v9, -0x1

    const/4 v8, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 553
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->ensureOrientationHelper()V

    .line 554
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mAnchorInfo:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;

    .line 555
    .local v0, "anchorInfo":Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->reset()V

    .line 557
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;

    if-nez v5, :cond_0

    iget v5, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    if-eq v5, v9, :cond_1

    .line 558
    :cond_0
    invoke-virtual {p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->getItemCount()I

    move-result v5

    if-nez v5, :cond_1

    .line 559
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->removeAndRecycleAllViews(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;)V

    .line 560
    return-void

    .line 564
    :cond_1
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;

    if-eqz v5, :cond_6

    .line 565
    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->applyPendingSavedState(Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;)V

    .line 571
    :goto_0
    invoke-virtual {p0, p2, v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->updateAnchorInfoForLayout(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;)V

    .line 573
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;

    if-nez v5, :cond_3

    .line 574
    iget-boolean v5, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    iget-boolean v6, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    if-ne v5, v6, :cond_2

    .line 575
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result v5

    iget-boolean v6, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLastLayoutRTL:Z

    if-eq v5, v6, :cond_3

    .line 576
    :cond_2
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLazySpanLookup:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v5}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->clear()V

    .line 577
    iput-boolean v3, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mInvalidateOffsets:Z

    .line 581
    :cond_3
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getChildCount()I

    move-result v5

    if-lez v5, :cond_8

    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;

    if-eqz v5, :cond_4

    .line 582
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;

    iget v5, v5, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    if-ge v5, v3, :cond_8

    .line 583
    :cond_4
    iget-boolean v5, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mInvalidateOffsets:Z

    if-eqz v5, :cond_7

    .line 584
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v5, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v1, v5, :cond_8

    .line 586
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->clear()V

    .line 587
    iget v5, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    if-eq v5, v10, :cond_5

    .line 588
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v5, v5, v1

    iget v6, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    invoke-virtual {v5, v6}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->setLine(I)V

    .line 584
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 567
    .end local v1    # "i":I
    :cond_6
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->resolveShouldLayoutReverse()V

    .line 568
    iget-boolean v5, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    iput-boolean v5, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    goto :goto_0

    .line 592
    :cond_7
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget v5, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v1, v5, :cond_8

    .line 593
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v5, v5, v1

    iget-boolean v6, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    iget v7, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    invoke-virtual {v5, v6, v7}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->cacheReferenceLineAndClear(ZI)V

    .line 592
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 597
    .end local v1    # "i":I
    :cond_8
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->detachAndScrapAttachedViews(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;)V

    .line 598
    iput-boolean v4, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    .line 599
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->updateMeasureSpecs()V

    .line 600
    iget v5, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    invoke-direct {p0, v5, p2}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->updateLayoutState(ILcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)V

    .line 601
    iget-boolean v5, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v5, :cond_d

    .line 603
    invoke-direct {p0, v9}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->setLayoutStateDirection(I)V

    .line 604
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LayoutState;

    invoke-direct {p0, p1, v5, p2}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->fill(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/LayoutState;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I

    .line 606
    invoke-direct {p0, v3}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->setLayoutStateDirection(I)V

    .line 607
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LayoutState;

    iget v6, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    iget-object v7, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LayoutState;

    iget v7, v7, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mItemDirection:I

    add-int/2addr v6, v7

    iput v6, v5, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mCurrentPosition:I

    .line 608
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LayoutState;

    invoke-direct {p0, p1, v5, p2}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->fill(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/LayoutState;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I

    .line 619
    :goto_3
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getChildCount()I

    move-result v5

    if-lez v5, :cond_9

    .line 620
    iget-boolean v5, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v5, :cond_e

    .line 621
    invoke-direct {p0, p1, p2, v3}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->fixEndGap(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)V

    .line 622
    invoke-direct {p0, p1, p2, v4}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->fixStartGap(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)V

    .line 629
    :cond_9
    :goto_4
    invoke-virtual {p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->isPreLayout()Z

    move-result v5

    if-nez v5, :cond_c

    .line 630
    iget v5, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mGapStrategy:I

    if-eqz v5, :cond_10

    .line 631
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getChildCount()I

    move-result v5

    if-lez v5, :cond_10

    .line 632
    iget-boolean v5, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    if-nez v5, :cond_a

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->hasGapsToFix()Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_f

    :cond_a
    :goto_5
    move v2, v3

    .line 633
    .local v2, "needToCheckForGaps":Z
    :goto_6
    if-eqz v2, :cond_b

    .line 634
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mCheckForGapsRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v3}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 635
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mCheckForGapsRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v3}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 637
    :cond_b
    iput v9, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    .line 638
    iput v10, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    .line 640
    .end local v2    # "needToCheckForGaps":Z
    :cond_c
    iget-boolean v3, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    iput-boolean v3, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    .line 641
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result v3

    iput-boolean v3, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLastLayoutRTL:Z

    .line 642
    iput-object v8, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;

    .line 552
    return-void

    .line 611
    :cond_d
    invoke-direct {p0, v3}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->setLayoutStateDirection(I)V

    .line 612
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LayoutState;

    invoke-direct {p0, p1, v5, p2}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->fill(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/LayoutState;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I

    .line 614
    invoke-direct {p0, v9}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->setLayoutStateDirection(I)V

    .line 615
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LayoutState;

    iget v6, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    iget-object v7, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LayoutState;

    iget v7, v7, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mItemDirection:I

    add-int/2addr v6, v7

    iput v6, v5, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mCurrentPosition:I

    .line 616
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LayoutState;

    invoke-direct {p0, p1, v5, p2}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->fill(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/LayoutState;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I

    goto :goto_3

    .line 624
    :cond_e
    invoke-direct {p0, p1, p2, v3}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->fixStartGap(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)V

    .line 625
    invoke-direct {p0, p1, p2, v4}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->fixEndGap(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)V

    goto :goto_4

    :cond_f
    move v3, v4

    .line 632
    goto :goto_5

    :cond_10
    move v2, v4

    .line 630
    goto :goto_6
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 1052
    instance-of v0, p1, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 1053
    check-cast p1, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;

    .end local p1    # "state":Landroid/os/Parcelable;
    iput-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;

    .line 1054
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->requestLayout()V

    .line 1051
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    const/high16 v4, -0x80000000

    .line 1062
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;

    if-eqz v3, :cond_0

    .line 1063
    new-instance v3, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;

    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;

    invoke-direct {v3, v4}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;-><init>(Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;)V

    return-object v3

    .line 1065
    :cond_0
    new-instance v2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;

    invoke-direct {v2}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;-><init>()V

    .line 1066
    .local v2, "state":Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;
    iget-boolean v3, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mReverseLayout:Z

    iput-boolean v3, v2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mReverseLayout:Z

    .line 1067
    iget-boolean v3, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    iput-boolean v3, v2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    .line 1068
    iget-boolean v3, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLastLayoutRTL:Z

    iput-boolean v3, v2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mLastLayoutRTL:Z

    .line 1070
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLazySpanLookup:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLazySpanLookup:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;

    iget-object v3, v3, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    if-eqz v3, :cond_2

    .line 1071
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLazySpanLookup:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;

    iget-object v3, v3, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    iput-object v3, v2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mSpanLookup:[I

    .line 1072
    iget-object v3, v2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mSpanLookup:[I

    array-length v3, v3

    iput v3, v2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mSpanLookupSize:I

    .line 1073
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLazySpanLookup:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;

    iget-object v3, v3, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    iput-object v3, v2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mFullSpanItems:Ljava/util/List;

    .line 1078
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getChildCount()I

    move-result v3

    if-lez v3, :cond_5

    .line 1079
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->ensureOrientationHelper()V

    .line 1080
    iget-boolean v3, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    if-eqz v3, :cond_3

    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getLastChildPosition()I

    move-result v3

    :goto_1
    iput v3, v2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    .line 1082
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->findFirstVisibleItemPositionInt()I

    move-result v3

    iput v3, v2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mVisibleAnchorPosition:I

    .line 1083
    iget v3, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    iput v3, v2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    .line 1084
    iget v3, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    new-array v3, v3, [I

    iput-object v3, v2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mSpanOffsets:[I

    .line 1085
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget v3, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v3, :cond_6

    .line 1087
    iget-boolean v3, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    if-eqz v3, :cond_4

    .line 1088
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v3, v3, v0

    invoke-virtual {v3, v4}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v1

    .line 1089
    .local v1, "line":I
    if-eq v1, v4, :cond_1

    .line 1090
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v3}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v3

    sub-int/2addr v1, v3

    .line 1098
    :cond_1
    :goto_3
    iget-object v3, v2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mSpanOffsets:[I

    aput v1, v3, v0

    .line 1085
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1075
    .end local v0    # "i":I
    .end local v1    # "line":I
    :cond_2
    iput v5, v2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mSpanLookupSize:I

    goto :goto_0

    .line 1081
    :cond_3
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v3

    goto :goto_1

    .line 1093
    .restart local v0    # "i":I
    :cond_4
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    aget-object v3, v3, v0

    invoke-virtual {v3, v4}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v1

    .line 1094
    .restart local v1    # "line":I
    if-eq v1, v4, :cond_1

    .line 1095
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v3}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v3

    sub-int/2addr v1, v3

    goto :goto_3

    .line 1101
    .end local v0    # "i":I
    .end local v1    # "line":I
    :cond_5
    iput v6, v2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    .line 1102
    iput v6, v2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mVisibleAnchorPosition:I

    .line 1103
    iput v5, v2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    .line 1108
    :cond_6
    return-object v2
.end method

.method public onScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 283
    if-nez p1, :cond_0

    .line 284
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->checkForGaps()Z

    .line 282
    :cond_0
    return-void
.end method

.method scrollBy(ILcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I
    .locals 7
    .param p1, "dt"    # I
    .param p2, "recycler"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;
    .param p3, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    .prologue
    .line 1913
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->ensureOrientationHelper()V

    .line 1916
    if-lez p1, :cond_0

    .line 1917
    const/4 v2, 0x1

    .line 1918
    .local v2, "layoutDir":I
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getLastChildPosition()I

    move-result v3

    .line 1923
    .local v3, "referenceChildPosition":I
    :goto_0
    invoke-direct {p0, v3, p3}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->updateLayoutState(ILcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)V

    .line 1924
    invoke-direct {p0, v2}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->setLayoutStateDirection(I)V

    .line 1925
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LayoutState;

    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LayoutState;

    iget v6, v6, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mItemDirection:I

    add-int/2addr v6, v3

    iput v6, v5, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mCurrentPosition:I

    .line 1926
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 1927
    .local v0, "absDt":I
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LayoutState;

    iput v0, v5, Lcom/oneplus/lib/widget/recyclerview/LayoutState;->mAvailable:I

    .line 1928
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLayoutState:Lcom/oneplus/lib/widget/recyclerview/LayoutState;

    invoke-direct {p0, p2, v5, p3}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->fill(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/LayoutState;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I

    move-result v1

    .line 1930
    .local v1, "consumed":I
    if-ge v0, v1, :cond_1

    .line 1931
    move v4, p1

    .line 1941
    .local v4, "totalScroll":I
    :goto_1
    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    neg-int v6, v4

    invoke-virtual {v5, v6}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->offsetChildren(I)V

    .line 1943
    iget-boolean v5, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    iput-boolean v5, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    .line 1944
    return v4

    .line 1920
    .end local v0    # "absDt":I
    .end local v1    # "consumed":I
    .end local v2    # "layoutDir":I
    .end local v3    # "referenceChildPosition":I
    .end local v4    # "totalScroll":I
    :cond_0
    const/4 v2, -0x1

    .line 1921
    .restart local v2    # "layoutDir":I
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v3

    .restart local v3    # "referenceChildPosition":I
    goto :goto_0

    .line 1932
    .restart local v0    # "absDt":I
    .restart local v1    # "consumed":I
    :cond_1
    if-gez p1, :cond_2

    .line 1933
    neg-int v4, v1

    .restart local v4    # "totalScroll":I
    goto :goto_1

    .line 1935
    .end local v4    # "totalScroll":I
    :cond_2
    move v4, v1

    .restart local v4    # "totalScroll":I
    goto :goto_1
.end method

.method public scrollHorizontallyBy(ILcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I
    .locals 1
    .param p1, "dx"    # I
    .param p2, "recycler"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;
    .param p3, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    .prologue
    .line 1842
    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->scrollBy(ILcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public scrollToPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1882
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;

    iget v0, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    if-eq v0, p1, :cond_0

    .line 1883
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->invalidateAnchorPositionInfo()V

    .line 1885
    :cond_0
    iput p1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    .line 1886
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    .line 1887
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->requestLayout()V

    .line 1881
    return-void
.end method

.method public scrollToPositionWithOffset(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "offset"    # I

    .prologue
    .line 1904
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 1905
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->invalidateAnchorPositionInfo()V

    .line 1907
    :cond_0
    iput p1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    .line 1908
    iput p2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    .line 1909
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->requestLayout()V

    .line 1903
    return-void
.end method

.method public scrollVerticallyBy(ILcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I
    .locals 1
    .param p1, "dy"    # I
    .param p2, "recycler"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;
    .param p3, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    .prologue
    .line 1848
    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->scrollBy(ILcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public setGapStrategy(I)V
    .locals 2
    .param p1, "gapStrategy"    # I

    .prologue
    .line 473
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 474
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mGapStrategy:I

    if-ne p1, v0, :cond_0

    .line 475
    return-void

    .line 477
    :cond_0
    if-eqz p1, :cond_1

    .line 478
    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    .line 479
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "invalid gap strategy. Must be GAP_HANDLING_NONE or GAP_HANDLING_MOVE_ITEMS_BETWEEN_SPANS"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 482
    :cond_1
    iput p1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mGapStrategy:I

    .line 483
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->requestLayout()V

    .line 472
    return-void
.end method

.method public setOrientation(I)V
    .locals 3
    .param p1, "orientation"    # I

    .prologue
    const/4 v2, 0x0

    .line 406
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    .line 407
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "invalid orientation."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 409
    :cond_0
    invoke-virtual {p0, v2}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 410
    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mOrientation:I

    if-ne p1, v1, :cond_1

    .line 411
    return-void

    .line 413
    :cond_1
    iput p1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mOrientation:I

    .line 414
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSecondaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    if-eqz v1, :cond_2

    .line 416
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    .line 417
    .local v0, "tmp":Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSecondaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    iput-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    .line 418
    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSecondaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    .line 420
    .end local v0    # "tmp":Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->requestLayout()V

    .line 405
    return-void
.end method

.method public setReverseLayout(Z)V
    .locals 1
    .param p1, "reverseLayout"    # Z

    .prologue
    const/4 v0, 0x0

    .line 437
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 438
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;

    iget-boolean v0, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mReverseLayout:Z

    if-eq v0, p1, :cond_0

    .line 439
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;

    iput-boolean p1, v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mReverseLayout:Z

    .line 441
    :cond_0
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mReverseLayout:Z

    .line 442
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->requestLayout()V

    .line 436
    return-void
.end method

.method public setSpanCount(I)V
    .locals 4
    .param p1, "spanCount"    # I

    .prologue
    const/4 v3, 0x0

    .line 386
    invoke-virtual {p0, v3}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 387
    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    if-eq p1, v1, :cond_1

    .line 388
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->invalidateSpanAssignments()V

    .line 389
    iput p1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    .line 390
    new-instance v1, Ljava/util/BitSet;

    iget v2, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    invoke-direct {v1, v2}, Ljava/util/BitSet;-><init>(I)V

    iput-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mRemainingSpans:Ljava/util/BitSet;

    .line 391
    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    new-array v1, v1, [Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    iput-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    .line 392
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v1, :cond_0

    .line 393
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    new-instance v2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;

    invoke-direct {v2, p0, v0, v3}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;-><init>(Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;ILcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$Span;)V

    aput-object v2, v1, v0

    .line 392
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 395
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->requestLayout()V

    .line 385
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public smoothScrollToPosition(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;I)V
    .locals 2
    .param p1, "recyclerView"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p2, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;
    .param p3, "position"    # I

    .prologue
    .line 1862
    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$2;

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$2;-><init>(Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;Landroid/content/Context;)V

    .line 1876
    .local v0, "scroller":Lcom/oneplus/lib/widget/recyclerview/LinearSmoothScroller;
    invoke-virtual {v0, p3}, Lcom/oneplus/lib/widget/recyclerview/LinearSmoothScroller;->setTargetPosition(I)V

    .line 1877
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->startSmoothScroll(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;)V

    .line 1861
    return-void
.end method

.method public supportsPredictiveItemAnimations()Z
    .locals 1

    .prologue
    .line 805
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method updateAnchorFromPendingData(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;)Z
    .locals 12
    .param p1, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;
    .param p2, "anchorInfo"    # Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;

    .prologue
    const/4 v11, -0x1

    const/high16 v10, -0x80000000

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 712
    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->isPreLayout()Z

    move-result v8

    if-nez v8, :cond_0

    iget v8, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    if-ne v8, v11, :cond_1

    .line 713
    :cond_0
    return v6

    .line 716
    :cond_1
    iget v8, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    if-ltz v8, :cond_2

    iget v8, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->getItemCount()I

    move-result v9

    if-lt v8, v9, :cond_3

    .line 717
    :cond_2
    iput v11, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    .line 718
    iput v10, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    .line 719
    return v6

    .line 722
    :cond_3
    iget-object v8, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;

    iget v8, v8, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    if-ne v8, v11, :cond_5

    .line 725
    :cond_4
    iget v8, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    invoke-virtual {p0, v8}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    .line 726
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_d

    .line 729
    iget-boolean v6, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v6, :cond_6

    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getLastChildPosition()I

    move-result v6

    :goto_0
    iput v6, p2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    .line 732
    iget v6, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    if-eq v6, v10, :cond_8

    .line 733
    iget-boolean v6, p2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v6, :cond_7

    .line 734
    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v6}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v6

    .line 735
    iget v8, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    .line 734
    sub-int v5, v6, v8

    .line 736
    .local v5, "target":I
    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v6, v0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v6

    sub-int v6, v5, v6

    iput v6, p2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    .line 742
    :goto_1
    return v7

    .line 723
    .end local v0    # "child":Landroid/view/View;
    .end local v5    # "target":I
    :cond_5
    iget-object v8, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;

    iget v8, v8, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    if-lt v8, v7, :cond_4

    .line 784
    iput v10, p2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    .line 785
    iget v6, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    iput v6, p2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    .line 787
    :goto_2
    return v7

    .line 730
    .restart local v0    # "child":Landroid/view/View;
    :cond_6
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v6

    goto :goto_0

    .line 738
    :cond_7
    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v6}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v6

    .line 739
    iget v8, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    .line 738
    add-int v5, v6, v8

    .line 740
    .restart local v5    # "target":I
    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v6, v0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v6

    sub-int v6, v5, v6

    iput v6, p2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    goto :goto_1

    .line 746
    .end local v5    # "target":I
    :cond_8
    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v6, v0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v1

    .line 747
    .local v1, "childSize":I
    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v6}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getTotalSpace()I

    move-result v6

    if-le v1, v6, :cond_a

    .line 749
    iget-boolean v6, p2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v6, :cond_9

    .line 750
    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v6}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v6

    .line 749
    :goto_3
    iput v6, p2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    .line 752
    return v7

    .line 751
    :cond_9
    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v6}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v6

    goto :goto_3

    .line 755
    :cond_a
    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v6, v0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v6

    .line 756
    iget-object v8, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v8}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v8

    .line 755
    sub-int v4, v6, v8

    .line 757
    .local v4, "startGap":I
    if-gez v4, :cond_b

    .line 758
    neg-int v6, v4

    iput v6, p2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    .line 759
    return v7

    .line 761
    :cond_b
    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v6}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v6

    .line 762
    iget-object v8, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v8, v0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v8

    .line 761
    sub-int v2, v6, v8

    .line 763
    .local v2, "endGap":I
    if-gez v2, :cond_c

    .line 764
    iput v2, p2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    .line 765
    return v7

    .line 768
    :cond_c
    iput v10, p2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    goto :goto_2

    .line 772
    .end local v1    # "childSize":I
    .end local v2    # "endGap":I
    .end local v4    # "startGap":I
    :cond_d
    iget v8, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    iput v8, p2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    .line 773
    iget v8, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    if-ne v8, v10, :cond_f

    .line 775
    iget v8, p2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    .line 774
    invoke-direct {p0, v8}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->calculateScrollDirectionForPosition(I)I

    move-result v3

    .line 776
    .local v3, "position":I
    if-ne v3, v7, :cond_e

    move v6, v7

    :cond_e
    iput-boolean v6, p2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 777
    invoke-virtual {p2}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->assignCoordinateFromPadding()V

    .line 781
    .end local v3    # "position":I
    :goto_4
    iput-boolean v7, p2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mInvalidateOffsets:Z

    goto :goto_2

    .line 779
    :cond_f
    iget v6, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    invoke-virtual {p2, v6}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->assignCoordinateFromPadding(I)V

    goto :goto_4
.end method

.method updateAnchorInfoForLayout(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;)V
    .locals 1
    .param p1, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;
    .param p2, "anchorInfo"    # Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;

    .prologue
    .line 685
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->updateAnchorFromPendingData(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 686
    return-void

    .line 688
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->updateAnchorFromChildren(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 689
    return-void

    .line 694
    :cond_1
    invoke-virtual {p2}, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->assignCoordinateFromPadding()V

    .line 695
    const/4 v0, 0x0

    iput v0, p2, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    .line 684
    return-void
.end method

.method updateMeasureSpecs()V
    .locals 4

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    const/4 v2, 0x0

    .line 791
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSecondaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getTotalSpace()I

    move-result v0

    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSpanCount:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSizePerSpan:I

    .line 793
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSecondaryOrientation:Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getTotalSpace()I

    move-result v0

    .line 792
    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mFullSizeSpec:I

    .line 794
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 795
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSizePerSpan:I

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mWidthSpec:I

    .line 796
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mHeightSpec:I

    .line 790
    :goto_0
    return-void

    .line 798
    :cond_0
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mSizePerSpan:I

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mHeightSpec:I

    .line 799
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/StaggeredGridLayoutManager;->mWidthSpec:I

    goto :goto_0
.end method
