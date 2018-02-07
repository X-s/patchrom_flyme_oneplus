.class Landroid/support/v7/widget/RecyclerView$ViewPrefetcher;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewPrefetcher"
.end annotation


# instance fields
.field private mDx:I

.field private mDy:I

.field mItemPrefetchArray:[I

.field mPostTimeNanos:J

.field final synthetic this$0:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 4543
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$ViewPrefetcher;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearPrefetchPositions()V
    .locals 2

    .prologue
    .line 4579
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewPrefetcher;->mItemPrefetchArray:[I

    if-eqz v0, :cond_0

    .line 4580
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewPrefetcher;->mItemPrefetchArray:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 4578
    :cond_0
    return-void
.end method

.method public lastPrefetchIncludedPosition(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 4567
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$ViewPrefetcher;->mItemPrefetchArray:[I

    if-eqz v1, :cond_1

    .line 4568
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$ViewPrefetcher;->mItemPrefetchArray:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 4569
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$ViewPrefetcher;->mItemPrefetchArray:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    const/4 v1, 0x1

    return v1

    .line 4568
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4572
    .end local v0    # "i":I
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public postFromTraversal(II)V
    .locals 2
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    .line 4555
    invoke-static {}, Landroid/support/v7/widget/RecyclerView;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4556
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewPrefetcher;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_0

    .line 4557
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewPrefetcher;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    .line 4558
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewPrefetcher;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getItemPrefetchCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 4559
    iput p1, p0, Landroid/support/v7/widget/RecyclerView$ViewPrefetcher;->mDx:I

    .line 4560
    iput p2, p0, Landroid/support/v7/widget/RecyclerView$ViewPrefetcher;->mDy:I

    .line 4561
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v7/widget/RecyclerView$ViewPrefetcher;->mPostTimeNanos:J

    .line 4562
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewPrefetcher;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 4554
    :cond_0
    return-void
.end method

.method public run()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x0

    .line 4587
    :try_start_0
    const-string/jumbo v8, "RV Prefetch"

    invoke-static {v8}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 4588
    iget-object v8, p0, Landroid/support/v7/widget/RecyclerView$ViewPrefetcher;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getItemPrefetchCount()I

    move-result v6

    .line 4589
    .local v6, "prefetchCount":I
    iget-object v8, p0, Landroid/support/v7/widget/RecyclerView$ViewPrefetcher;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v8, :cond_0

    .line 4590
    iget-object v8, p0, Landroid/support/v7/widget/RecyclerView$ViewPrefetcher;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v8, :cond_1

    .line 4621
    :cond_0
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    .line 4595
    return-void

    .line 4591
    :cond_1
    :try_start_1
    iget-object v8, p0, Landroid/support/v7/widget/RecyclerView$ViewPrefetcher;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->isItemPrefetchEnabled()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 4592
    const/4 v8, 0x1

    if-lt v6, v8, :cond_0

    .line 4593
    iget-object v8, p0, Landroid/support/v7/widget/RecyclerView$ViewPrefetcher;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView;->hasPendingAdapterUpdates()Z

    move-result v8

    .line 4589
    if-nez v8, :cond_0

    .line 4600
    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v9, p0, Landroid/support/v7/widget/RecyclerView$ViewPrefetcher;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView;->getDrawingTime()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    .line 4601
    .local v0, "lastFrameVsyncNanos":J
    cmp-long v8, v0, v12

    if-eqz v8, :cond_2

    sget-wide v8, Landroid/support/v7/widget/RecyclerView;->sFrameIntervalNanos:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long v8, v8, v12

    if-nez v8, :cond_3

    .line 4621
    :cond_2
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    .line 4603
    return-void

    .line 4606
    :cond_3
    :try_start_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 4607
    .local v4, "nowNanos":J
    sget-wide v8, Landroid/support/v7/widget/RecyclerView;->sFrameIntervalNanos:J

    add-long v2, v0, v8

    .line 4608
    .local v2, "nextFrameNanos":J
    iget-wide v8, p0, Landroid/support/v7/widget/RecyclerView$ViewPrefetcher;->mPostTimeNanos:J

    sub-long v8, v4, v8

    sget-wide v10, Landroid/support/v7/widget/RecyclerView;->sFrameIntervalNanos:J

    cmp-long v8, v8, v10

    if-gtz v8, :cond_4

    .line 4609
    sub-long v8, v2, v4

    invoke-static {}, Landroid/support/v7/widget/RecyclerView;->-get1()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v10

    cmp-long v8, v8, v10

    if-gez v8, :cond_5

    .line 4621
    :cond_4
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    .line 4611
    return-void

    .line 4614
    :cond_5
    :try_start_3
    iget-object v8, p0, Landroid/support/v7/widget/RecyclerView$ViewPrefetcher;->mItemPrefetchArray:[I

    if-eqz v8, :cond_6

    iget-object v8, p0, Landroid/support/v7/widget/RecyclerView$ViewPrefetcher;->mItemPrefetchArray:[I

    array-length v8, v8

    if-ge v8, v6, :cond_7

    .line 4615
    :cond_6
    new-array v8, v6, [I

    iput-object v8, p0, Landroid/support/v7/widget/RecyclerView$ViewPrefetcher;->mItemPrefetchArray:[I

    .line 4617
    :cond_7
    iget-object v8, p0, Landroid/support/v7/widget/RecyclerView$ViewPrefetcher;->mItemPrefetchArray:[I

    const/4 v9, -0x1

    invoke-static {v8, v9}, Ljava/util/Arrays;->fill([II)V

    .line 4618
    iget-object v8, p0, Landroid/support/v7/widget/RecyclerView$ViewPrefetcher;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget v9, p0, Landroid/support/v7/widget/RecyclerView$ViewPrefetcher;->mDx:I

    iget v10, p0, Landroid/support/v7/widget/RecyclerView$ViewPrefetcher;->mDy:I

    iget-object v11, p0, Landroid/support/v7/widget/RecyclerView$ViewPrefetcher;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v11, v11, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-object v12, p0, Landroid/support/v7/widget/RecyclerView$ViewPrefetcher;->mItemPrefetchArray:[I

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->gatherPrefetchIndices(IILandroid/support/v7/widget/RecyclerView$State;[I)I

    move-result v7

    .line 4619
    .local v7, "viewCount":I
    iget-object v8, p0, Landroid/support/v7/widget/RecyclerView$ViewPrefetcher;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    iget-object v9, p0, Landroid/support/v7/widget/RecyclerView$ViewPrefetcher;->mItemPrefetchArray:[I

    invoke-virtual {v8, v9, v7}, Landroid/support/v7/widget/RecyclerView$Recycler;->prefetch([II)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4621
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    .line 4585
    return-void

    .line 4620
    .end local v0    # "lastFrameVsyncNanos":J
    .end local v2    # "nextFrameNanos":J
    .end local v4    # "nowNanos":J
    .end local v6    # "prefetchCount":I
    .end local v7    # "viewCount":I
    :catchall_0
    move-exception v8

    .line 4621
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    .line 4620
    throw v8
.end method
