.class public abstract Landroid/support/v7/widget/SnapHelper;
.super Landroid/support/v7/widget/RecyclerView$OnFlingListener;
.source "SnapHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/SnapHelper$1;
    }
.end annotation


# static fields
.field static final MILLISECONDS_PER_INCH:F = 100.0f


# instance fields
.field private mGravityScroller:Landroid/widget/Scroller;

.field mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private final mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnFlingListener;-><init>()V

    .line 44
    new-instance v0, Landroid/support/v7/widget/SnapHelper$1;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/SnapHelper$1;-><init>(Landroid/support/v7/widget/SnapHelper;)V

    .line 43
    iput-object v0, p0, Landroid/support/v7/widget/SnapHelper;->mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    .line 35
    return-void
.end method

.method private createSnapScroller(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/LinearSmoothScroller;
    .locals 2
    .param p1, "layoutManager"    # Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 210
    instance-of v0, p1, Landroid/support/v7/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    if-nez v0, :cond_0

    .line 211
    const/4 v0, 0x0

    return-object v0

    .line 213
    :cond_0
    new-instance v0, Landroid/support/v7/widget/SnapHelper$2;

    iget-object v1, p0, Landroid/support/v7/widget/SnapHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/support/v7/widget/SnapHelper$2;-><init>(Landroid/support/v7/widget/SnapHelper;Landroid/content/Context;)V

    return-object v0
.end method

.method private destroyCallbacks()V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Landroid/support/v7/widget/SnapHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Landroid/support/v7/widget/SnapHelper;->mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->removeOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 125
    iget-object v0, p0, Landroid/support/v7/widget/SnapHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setOnFlingListener(Landroid/support/v7/widget/RecyclerView$OnFlingListener;)V

    .line 123
    return-void
.end method

.method private setupCallbacks()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Landroid/support/v7/widget/SnapHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getOnFlingListener()Landroid/support/v7/widget/RecyclerView$OnFlingListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 114
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "An instance of OnFlingListener already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SnapHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Landroid/support/v7/widget/SnapHelper;->mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 117
    iget-object v0, p0, Landroid/support/v7/widget/SnapHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->setOnFlingListener(Landroid/support/v7/widget/RecyclerView$OnFlingListener;)V

    .line 112
    return-void
.end method

.method private snapFromFling(Landroid/support/v7/widget/RecyclerView$LayoutManager;II)Z
    .locals 4
    .param p1, "layoutManager"    # Landroid/support/v7/widget/RecyclerView$LayoutManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "velocityX"    # I
    .param p3, "velocityY"    # I

    .prologue
    const/4 v3, 0x0

    .line 158
    instance-of v2, p1, Landroid/support/v7/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    if-nez v2, :cond_0

    .line 159
    return v3

    .line 162
    :cond_0
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SnapHelper;->createSnapScroller(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/LinearSmoothScroller;

    move-result-object v0

    .line 163
    .local v0, "smoothScroller":Landroid/support/v7/widget/RecyclerView$SmoothScroller;
    if-nez v0, :cond_1

    .line 164
    return v3

    .line 167
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v7/widget/SnapHelper;->findTargetSnapPosition(Landroid/support/v7/widget/RecyclerView$LayoutManager;II)I

    move-result v1

    .line 168
    .local v1, "targetPosition":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 169
    return v3

    .line 172
    :cond_2
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 173
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroid/support/v7/widget/RecyclerView$SmoothScroller;)V

    .line 174
    const/4 v2, 0x1

    return v2
.end method


# virtual methods
.method public attachToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 3
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Landroid/support/v7/widget/SnapHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-ne v0, p1, :cond_0

    .line 95
    return-void

    .line 97
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SnapHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_1

    .line 98
    invoke-direct {p0}, Landroid/support/v7/widget/SnapHelper;->destroyCallbacks()V

    .line 100
    :cond_1
    iput-object p1, p0, Landroid/support/v7/widget/SnapHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 101
    iget-object v0, p0, Landroid/support/v7/widget/SnapHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_2

    .line 102
    invoke-direct {p0}, Landroid/support/v7/widget/SnapHelper;->setupCallbacks()V

    .line 103
    new-instance v0, Landroid/widget/Scroller;

    iget-object v1, p0, Landroid/support/v7/widget/SnapHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 104
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 103
    invoke-direct {v0, v1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Landroid/support/v7/widget/SnapHelper;->mGravityScroller:Landroid/widget/Scroller;

    .line 105
    invoke-virtual {p0}, Landroid/support/v7/widget/SnapHelper;->snapToTargetExistingView()V

    .line 93
    :cond_2
    return-void
.end method

.method public abstract calculateDistanceToFinalSnap(Landroid/support/v7/widget/RecyclerView$LayoutManager;Landroid/view/View;)[I
    .param p1    # Landroid/support/v7/widget/RecyclerView$LayoutManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public calculateScrollDistance(II)[I
    .locals 10
    .param p1, "velocityX"    # I
    .param p2, "velocityY"    # I

    .prologue
    const v6, 0x7fffffff

    const/high16 v5, -0x80000000

    const/4 v1, 0x0

    .line 138
    const/4 v0, 0x2

    new-array v9, v0, [I

    .line 139
    .local v9, "outDist":[I
    iget-object v0, p0, Landroid/support/v7/widget/SnapHelper;->mGravityScroller:Landroid/widget/Scroller;

    move v2, v1

    move v3, p1

    move v4, p2

    move v7, v5

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 141
    iget-object v0, p0, Landroid/support/v7/widget/SnapHelper;->mGravityScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    move-result v0

    aput v0, v9, v1

    .line 142
    iget-object v0, p0, Landroid/support/v7/widget/SnapHelper;->mGravityScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalY()I

    move-result v0

    const/4 v1, 0x1

    aput v0, v9, v1

    .line 143
    return-object v9
.end method

.method public abstract findSnapView(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/view/View;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract findTargetSnapPosition(Landroid/support/v7/widget/RecyclerView$LayoutManager;II)I
.end method

.method public onFling(II)Z
    .locals 5
    .param p1, "velocityX"    # I
    .param p2, "velocityY"    # I

    .prologue
    const/4 v3, 0x0

    .line 66
    iget-object v4, p0, Landroid/support/v7/widget/SnapHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    .line 67
    .local v1, "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    if-nez v1, :cond_0

    .line 68
    return v3

    .line 70
    :cond_0
    iget-object v4, p0, Landroid/support/v7/widget/SnapHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    .line 71
    .local v0, "adapter":Landroid/support/v7/widget/RecyclerView$Adapter;
    if-nez v0, :cond_1

    .line 72
    return v3

    .line 74
    :cond_1
    iget-object v4, p0, Landroid/support/v7/widget/SnapHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->getMinFlingVelocity()I

    move-result v2

    .line 75
    .local v2, "minFlingVelocity":I
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-gt v4, v2, :cond_2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-le v4, v2, :cond_3

    .line 76
    :cond_2
    invoke-direct {p0, v1, p1, p2}, Landroid/support/v7/widget/SnapHelper;->snapFromFling(Landroid/support/v7/widget/RecyclerView$LayoutManager;II)Z

    move-result v3

    .line 75
    :cond_3
    return v3
.end method

.method snapToTargetExistingView()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 183
    iget-object v3, p0, Landroid/support/v7/widget/SnapHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v3, :cond_0

    .line 184
    return-void

    .line 186
    :cond_0
    iget-object v3, p0, Landroid/support/v7/widget/SnapHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 187
    .local v0, "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    if-nez v0, :cond_1

    .line 188
    return-void

    .line 190
    :cond_1
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SnapHelper;->findSnapView(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/view/View;

    move-result-object v2

    .line 191
    .local v2, "snapView":Landroid/view/View;
    if-nez v2, :cond_2

    .line 192
    return-void

    .line 194
    :cond_2
    invoke-virtual {p0, v0, v2}, Landroid/support/v7/widget/SnapHelper;->calculateDistanceToFinalSnap(Landroid/support/v7/widget/RecyclerView$LayoutManager;Landroid/view/View;)[I

    move-result-object v1

    .line 195
    .local v1, "snapDistance":[I
    aget v3, v1, v4

    if-nez v3, :cond_3

    aget v3, v1, v5

    if-eqz v3, :cond_4

    .line 196
    :cond_3
    iget-object v3, p0, Landroid/support/v7/widget/SnapHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    aget v4, v1, v4

    aget v5, v1, v5

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/widget/RecyclerView;->smoothScrollBy(II)V

    .line 182
    :cond_4
    return-void
.end method
