.class public Lcom/oppo/tribune/ui/pullview/ScrollRunnable;
.super Ljava/lang/Object;
.source "ScrollRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/tribune/ui/pullview/ScrollRunnable$ScrollListener;
    }
.end annotation


# instance fields
.field private mCurrentScrollX:I

.field private mCurrentScrollY:I

.field private mIsScrolling:Z

.field private mLastScrollX:I

.field private mLastScrollY:I

.field private mOnScrollLsn:Lcom/oppo/tribune/ui/pullview/ScrollRunnable$ScrollListener;

.field private mScroller:Landroid/widget/Scroller;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oppo/tribune/ui/pullview/ScrollRunnable;->mScroller:Landroid/widget/Scroller;

    .line 35
    iput-object p2, p0, Lcom/oppo/tribune/ui/pullview/ScrollRunnable;->mView:Landroid/view/View;

    .line 36
    return-void
.end method

.method private initMembers()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 90
    iput v0, p0, Lcom/oppo/tribune/ui/pullview/ScrollRunnable;->mCurrentScrollX:I

    .line 91
    iput v0, p0, Lcom/oppo/tribune/ui/pullview/ScrollRunnable;->mLastScrollX:I

    .line 92
    iput v0, p0, Lcom/oppo/tribune/ui/pullview/ScrollRunnable;->mCurrentScrollY:I

    .line 93
    iput v0, p0, Lcom/oppo/tribune/ui/pullview/ScrollRunnable;->mLastScrollY:I

    .line 94
    return-void
.end method


# virtual methods
.method public isScrolling()Z
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/oppo/tribune/ui/pullview/ScrollRunnable;->mIsScrolling:Z

    return v0
.end method

.method public run()V
    .locals 5

    .prologue
    .line 45
    iget-object v3, p0, Lcom/oppo/tribune/ui/pullview/ScrollRunnable;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    .line 46
    .local v0, "isNotFinish":Z
    iget-object v3, p0, Lcom/oppo/tribune/ui/pullview/ScrollRunnable;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrX()I

    move-result v3

    iput v3, p0, Lcom/oppo/tribune/ui/pullview/ScrollRunnable;->mCurrentScrollX:I

    .line 47
    iget-object v3, p0, Lcom/oppo/tribune/ui/pullview/ScrollRunnable;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    iput v3, p0, Lcom/oppo/tribune/ui/pullview/ScrollRunnable;->mCurrentScrollY:I

    .line 49
    iget v3, p0, Lcom/oppo/tribune/ui/pullview/ScrollRunnable;->mCurrentScrollX:I

    iget v4, p0, Lcom/oppo/tribune/ui/pullview/ScrollRunnable;->mLastScrollX:I

    sub-int v1, v3, v4

    .line 50
    .local v1, "moveX":I
    iget v3, p0, Lcom/oppo/tribune/ui/pullview/ScrollRunnable;->mCurrentScrollY:I

    iget v4, p0, Lcom/oppo/tribune/ui/pullview/ScrollRunnable;->mLastScrollY:I

    sub-int v2, v3, v4

    .line 52
    .local v2, "moveY":I
    if-eqz v0, :cond_2

    .line 53
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/oppo/tribune/ui/pullview/ScrollRunnable;->mIsScrolling:Z

    .line 54
    iget-object v3, p0, Lcom/oppo/tribune/ui/pullview/ScrollRunnable;->mOnScrollLsn:Lcom/oppo/tribune/ui/pullview/ScrollRunnable$ScrollListener;

    if-eqz v3, :cond_0

    .line 55
    iget-object v3, p0, Lcom/oppo/tribune/ui/pullview/ScrollRunnable;->mOnScrollLsn:Lcom/oppo/tribune/ui/pullview/ScrollRunnable$ScrollListener;

    invoke-interface {v3, v1, v2}, Lcom/oppo/tribune/ui/pullview/ScrollRunnable$ScrollListener;->onScroll(II)V

    .line 57
    :cond_0
    iget v3, p0, Lcom/oppo/tribune/ui/pullview/ScrollRunnable;->mCurrentScrollX:I

    iput v3, p0, Lcom/oppo/tribune/ui/pullview/ScrollRunnable;->mLastScrollX:I

    .line 58
    iget v3, p0, Lcom/oppo/tribune/ui/pullview/ScrollRunnable;->mCurrentScrollY:I

    iput v3, p0, Lcom/oppo/tribune/ui/pullview/ScrollRunnable;->mLastScrollY:I

    .line 59
    iget-object v3, p0, Lcom/oppo/tribune/ui/pullview/ScrollRunnable;->mView:Landroid/view/View;

    invoke-virtual {v3, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 68
    :cond_1
    :goto_0
    return-void

    .line 61
    :cond_2
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/oppo/tribune/ui/pullview/ScrollRunnable;->mIsScrolling:Z

    .line 62
    invoke-direct {p0}, Lcom/oppo/tribune/ui/pullview/ScrollRunnable;->initMembers()V

    .line 63
    iget-object v3, p0, Lcom/oppo/tribune/ui/pullview/ScrollRunnable;->mView:Landroid/view/View;

    invoke-virtual {v3, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 64
    iget-object v3, p0, Lcom/oppo/tribune/ui/pullview/ScrollRunnable;->mOnScrollLsn:Lcom/oppo/tribune/ui/pullview/ScrollRunnable$ScrollListener;

    if-eqz v3, :cond_1

    .line 65
    iget-object v3, p0, Lcom/oppo/tribune/ui/pullview/ScrollRunnable;->mOnScrollLsn:Lcom/oppo/tribune/ui/pullview/ScrollRunnable$ScrollListener;

    invoke-interface {v3}, Lcom/oppo/tribune/ui/pullview/ScrollRunnable$ScrollListener;->onScrollEnd()V

    goto :goto_0
.end method

.method public setScrollListener(Lcom/oppo/tribune/ui/pullview/ScrollRunnable$ScrollListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/oppo/tribune/ui/pullview/ScrollRunnable$ScrollListener;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/oppo/tribune/ui/pullview/ScrollRunnable;->mOnScrollLsn:Lcom/oppo/tribune/ui/pullview/ScrollRunnable$ScrollListener;

    .line 31
    return-void
.end method

.method public declared-synchronized startScrollDistance(III)V
    .locals 6
    .param p1, "distanceX"    # I
    .param p2, "distanceY"    # I
    .param p3, "duration"    # I

    .prologue
    .line 81
    monitor-enter p0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 87
    :goto_0
    monitor-exit p0

    return-void

    .line 84
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/oppo/tribune/ui/pullview/ScrollRunnable;->initMembers()V

    .line 85
    iget-object v0, p0, Lcom/oppo/tribune/ui/pullview/ScrollRunnable;->mScroller:Landroid/widget/Scroller;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 86
    iget-object v0, p0, Lcom/oppo/tribune/ui/pullview/ScrollRunnable;->mView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public stopScroll()V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/oppo/tribune/ui/pullview/ScrollRunnable;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 40
    return-void
.end method
