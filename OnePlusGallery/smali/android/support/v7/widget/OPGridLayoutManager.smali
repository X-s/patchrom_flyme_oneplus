.class public Landroid/support/v7/widget/OPGridLayoutManager;
.super Landroid/support/v7/widget/GridLayoutManager;
.source "OPGridLayoutManager.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "spanCount"    # I

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIZ)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "spanCount"    # I
    .param p3, "orientation"    # I
    .param p4, "reverseLayout"    # Z

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 16
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 17
    return-void
.end method

.method private calculateItemBorders(I)V
    .locals 9
    .param p1, "totalSpace"    # I

    .prologue
    const/4 v8, 0x0

    .line 85
    iget-object v6, p0, Landroid/support/v7/widget/OPGridLayoutManager;->mCachedBorders:[I

    if-eqz v6, :cond_0

    iget-object v6, p0, Landroid/support/v7/widget/OPGridLayoutManager;->mCachedBorders:[I

    array-length v6, v6

    iget v7, p0, Landroid/support/v7/widget/OPGridLayoutManager;->mSpanCount:I

    add-int/lit8 v7, v7, 0x1

    if-ne v6, v7, :cond_0

    iget-object v6, p0, Landroid/support/v7/widget/OPGridLayoutManager;->mCachedBorders:[I

    iget-object v7, p0, Landroid/support/v7/widget/OPGridLayoutManager;->mCachedBorders:[I

    array-length v7, v7

    add-int/lit8 v7, v7, -0x1

    aget v6, v6, v7

    if-eq v6, p1, :cond_1

    .line 87
    :cond_0
    iget v6, p0, Landroid/support/v7/widget/OPGridLayoutManager;->mSpanCount:I

    add-int/lit8 v6, v6, 0x1

    new-array v6, v6, [I

    iput-object v6, p0, Landroid/support/v7/widget/OPGridLayoutManager;->mCachedBorders:[I

    .line 89
    :cond_1
    iget-object v6, p0, Landroid/support/v7/widget/OPGridLayoutManager;->mCachedBorders:[I

    aput v8, v6, v8

    .line 90
    iget v6, p0, Landroid/support/v7/widget/OPGridLayoutManager;->mSpanCount:I

    div-int v4, p1, v6

    .line 91
    .local v4, "sizePerSpan":I
    iget v6, p0, Landroid/support/v7/widget/OPGridLayoutManager;->mSpanCount:I

    rem-int v5, p1, v6

    .line 92
    .local v5, "sizePerSpanRemainder":I
    const/4 v1, 0x0

    .line 93
    .local v1, "consumedPixels":I
    const/4 v0, 0x0

    .line 94
    .local v0, "additionalSize":I
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    iget v6, p0, Landroid/support/v7/widget/OPGridLayoutManager;->mSpanCount:I

    if-gt v2, v6, :cond_3

    .line 95
    move v3, v4

    .line 96
    .local v3, "itemSize":I
    add-int/2addr v0, v5

    .line 97
    if-lez v0, :cond_2

    iget v6, p0, Landroid/support/v7/widget/OPGridLayoutManager;->mSpanCount:I

    sub-int/2addr v6, v0

    if-ge v6, v5, :cond_2

    .line 98
    add-int/lit8 v3, v3, 0x1

    .line 99
    iget v6, p0, Landroid/support/v7/widget/OPGridLayoutManager;->mSpanCount:I

    sub-int/2addr v0, v6

    .line 101
    :cond_2
    add-int/2addr v1, v3

    .line 102
    iget-object v6, p0, Landroid/support/v7/widget/OPGridLayoutManager;->mCachedBorders:[I

    aput v1, v6, v2

    .line 94
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 104
    .end local v3    # "itemSize":I
    :cond_3
    return-void
.end method

.method private ensureAnchorIsInFirstSpan(Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;)V
    .locals 4
    .param p1, "anchorInfo"    # Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;

    .prologue
    .line 61
    iget-object v1, p0, Landroid/support/v7/widget/OPGridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    iget v2, p1, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    iget v3, p0, Landroid/support/v7/widget/OPGridLayoutManager;->mSpanCount:I

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getCachedSpanIndex(II)I

    move-result v0

    .line 62
    .local v0, "span":I
    :goto_0
    if-lez v0, :cond_0

    iget v1, p1, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    if-lez v1, :cond_0

    .line 63
    iget v1, p1, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p1, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    .line 64
    iget-object v1, p0, Landroid/support/v7/widget/OPGridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    iget v2, p1, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    iget v3, p0, Landroid/support/v7/widget/OPGridLayoutManager;->mSpanCount:I

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getCachedSpanIndex(II)I

    move-result v0

    goto :goto_0

    .line 66
    :cond_0
    return-void
.end method

.method private ensureAnchorIsInLastSpan(Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;)V
    .locals 5
    .param p1, "anchorInfo"    # Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;

    .prologue
    .line 48
    iget-object v2, p0, Landroid/support/v7/widget/OPGridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    iget v3, p1, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    iget v4, p0, Landroid/support/v7/widget/OPGridLayoutManager;->mSpanCount:I

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getCachedSpanIndex(II)I

    move-result v0

    .line 49
    .local v0, "spanIndex":I
    iget-object v2, p0, Landroid/support/v7/widget/OPGridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    iget v3, p1, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v1

    .line 50
    .local v1, "spanSize":I
    :goto_0
    add-int v2, v0, v1

    iget v3, p0, Landroid/support/v7/widget/OPGridLayoutManager;->mSpanCount:I

    if-ge v2, v3, :cond_0

    iget v2, p1, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    invoke-virtual {p0}, Landroid/support/v7/widget/OPGridLayoutManager;->getItemCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 51
    iget v2, p1, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p1, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    .line 52
    iget-object v2, p0, Landroid/support/v7/widget/OPGridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    iget v3, p1, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    iget v4, p0, Landroid/support/v7/widget/OPGridLayoutManager;->mSpanCount:I

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getCachedSpanIndex(II)I

    move-result v0

    .line 53
    iget-object v2, p0, Landroid/support/v7/widget/OPGridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    iget v3, p1, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v1

    goto :goto_0

    .line 55
    :cond_0
    return-void
.end method

.method private updateMeasurements()V
    .locals 3

    .prologue
    .line 73
    invoke-virtual {p0}, Landroid/support/v7/widget/OPGridLayoutManager;->getOrientation()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 74
    invoke-virtual {p0}, Landroid/support/v7/widget/OPGridLayoutManager;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/OPGridLayoutManager;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/OPGridLayoutManager;->getPaddingLeft()I

    move-result v2

    sub-int v0, v1, v2

    .line 78
    .local v0, "totalSpace":I
    :goto_0
    invoke-direct {p0, v0}, Landroid/support/v7/widget/OPGridLayoutManager;->calculateItemBorders(I)V

    .line 79
    return-void

    .line 76
    .end local v0    # "totalSpace":I
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/OPGridLayoutManager;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/OPGridLayoutManager;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/OPGridLayoutManager;->getPaddingTop()I

    move-result v2

    sub-int v0, v1, v2

    .restart local v0    # "totalSpace":I
    goto :goto_0
.end method


# virtual methods
.method onAnchorReady(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;)V
    .locals 2
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$State;
    .param p3, "anchorInfo"    # Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/support/v7/widget/OPGridLayoutManager;->updateMeasurements()V

    .line 35
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-nez v0, :cond_0

    .line 37
    iget-boolean v0, p3, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v0, :cond_3

    .line 38
    invoke-direct {p0, p3}, Landroid/support/v7/widget/OPGridLayoutManager;->ensureAnchorIsInLastSpan(Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;)V

    .line 43
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/OPGridLayoutManager;->mSet:[Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/OPGridLayoutManager;->mSet:[Landroid/view/View;

    array-length v0, v0

    iget v1, p0, Landroid/support/v7/widget/OPGridLayoutManager;->mSpanCount:I

    if-eq v0, v1, :cond_2

    .line 44
    :cond_1
    iget v0, p0, Landroid/support/v7/widget/OPGridLayoutManager;->mSpanCount:I

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Landroid/support/v7/widget/OPGridLayoutManager;->mSet:[Landroid/view/View;

    .line 45
    :cond_2
    return-void

    .line 40
    :cond_3
    invoke-direct {p0, p3}, Landroid/support/v7/widget/OPGridLayoutManager;->ensureAnchorIsInFirstSpan(Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;)V

    goto :goto_0
.end method
