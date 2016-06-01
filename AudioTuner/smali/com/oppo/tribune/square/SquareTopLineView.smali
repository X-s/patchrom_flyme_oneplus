.class public Lcom/oppo/tribune/square/SquareTopLineView;
.super Lcom/oppo/tribune/ui/ContentListLayout;
.source "SquareTopLineView.java"


# instance fields
.field private mItemElementsClkLsn:Lcom/oppo/tribune/square/TopLineListAdapter$ItemElementsClkLsn;

.field public mListAdapter:Lcom/oppo/tribune/square/TopLineListAdapter;

.field private mLoadMoreHandler:Lcom/oppo/tribune/ui/pullview/LoadMoreHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/oppo/tribune/ui/ContentListLayout;-><init>(Landroid/content/Context;)V

    .line 33
    invoke-direct {p0, p1}, Lcom/oppo/tribune/square/SquareTopLineView;->initLoadMoreHandler(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/oppo/tribune/ui/ContentListLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    invoke-direct {p0, p1}, Lcom/oppo/tribune/square/SquareTopLineView;->initLoadMoreHandler(Landroid/content/Context;)V

    .line 39
    return-void
.end method

.method private initLoadMoreHandler(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    new-instance v0, Lcom/oppo/tribune/ui/pullview/LoadMoreHandler;

    invoke-direct {v0}, Lcom/oppo/tribune/ui/pullview/LoadMoreHandler;-><init>()V

    iput-object v0, p0, Lcom/oppo/tribune/square/SquareTopLineView;->mLoadMoreHandler:Lcom/oppo/tribune/ui/pullview/LoadMoreHandler;

    .line 48
    iget-object v0, p0, Lcom/oppo/tribune/square/SquareTopLineView;->mLoadMoreHandler:Lcom/oppo/tribune/ui/pullview/LoadMoreHandler;

    iget-object v1, p0, Lcom/oppo/tribune/square/SquareTopLineView;->mContentListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1, v1}, Lcom/oppo/tribune/ui/pullview/LoadMoreHandler;->setContentView(Landroid/content/Context;Landroid/widget/ListView;)V

    .line 49
    invoke-virtual {p0}, Lcom/oppo/tribune/square/SquareTopLineView;->addScrollLoadMoreListener()V

    .line 50
    return-void
.end method


# virtual methods
.method public addScrollLoadMoreListener()V
    .locals 2

    .prologue
    .line 59
    invoke-static {}, Lcom/oppo/tribune/ui/pullview/LoadMoreHandler;->isAutoLoadMore()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/oppo/tribune/square/SquareTopLineView;->mListScrollHandler:Lcom/oppo/tribune/ui/pullview/ListScrollHandler;

    iget-object v1, p0, Lcom/oppo/tribune/square/SquareTopLineView;->mLoadMoreHandler:Lcom/oppo/tribune/ui/pullview/LoadMoreHandler;

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/ui/pullview/ListScrollHandler;->addScrollListener(Lcom/oppo/tribune/ui/pullview/ListScrollListener;)V

    .line 61
    iget-object v0, p0, Lcom/oppo/tribune/square/SquareTopLineView;->mLoadMoreHandler:Lcom/oppo/tribune/ui/pullview/LoadMoreHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/ui/pullview/LoadMoreHandler;->setFooterViewClickListener(Z)V

    .line 66
    :goto_0
    return-void

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/square/SquareTopLineView;->mListScrollHandler:Lcom/oppo/tribune/ui/pullview/ListScrollHandler;

    iget-object v1, p0, Lcom/oppo/tribune/square/SquareTopLineView;->mLoadMoreHandler:Lcom/oppo/tribune/ui/pullview/LoadMoreHandler;

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/ui/pullview/ListScrollHandler;->removeScrollListener(Lcom/oppo/tribune/ui/pullview/ListScrollListener;)V

    .line 64
    iget-object v0, p0, Lcom/oppo/tribune/square/SquareTopLineView;->mLoadMoreHandler:Lcom/oppo/tribune/ui/pullview/LoadMoreHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/ui/pullview/LoadMoreHandler;->setFooterViewClickListener(Z)V

    goto :goto_0
.end method

.method public onDefaultEffectUsed()V
    .locals 0

    .prologue
    .line 78
    return-void
.end method

.method public setListHasMore(Z)V
    .locals 1
    .param p1, "hasMore"    # Z

    .prologue
    .line 130
    iget-object v0, p0, Lcom/oppo/tribune/square/SquareTopLineView;->mLoadMoreHandler:Lcom/oppo/tribune/ui/pullview/LoadMoreHandler;

    invoke-virtual {v0, p1}, Lcom/oppo/tribune/ui/pullview/LoadMoreHandler;->setIsHasMore(Z)V

    .line 131
    iget-object v0, p0, Lcom/oppo/tribune/square/SquareTopLineView;->mLoadMoreHandler:Lcom/oppo/tribune/ui/pullview/LoadMoreHandler;

    invoke-virtual {v0}, Lcom/oppo/tribune/ui/pullview/LoadMoreHandler;->onLoadMoreComplete()V

    .line 132
    return-void
.end method

.method public setListItemElementsClkLsn(Lcom/oppo/tribune/square/TopLineListAdapter$ItemElementsClkLsn;)V
    .locals 0
    .param p1, "listener"    # Lcom/oppo/tribune/square/TopLineListAdapter$ItemElementsClkLsn;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/oppo/tribune/square/SquareTopLineView;->mItemElementsClkLsn:Lcom/oppo/tribune/square/TopLineListAdapter$ItemElementsClkLsn;

    .line 44
    return-void
.end method

.method public setListViewPullRefresh()V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/oppo/tribune/square/SquareTopLineView;->mContentListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 136
    iget-object v0, p0, Lcom/oppo/tribune/square/SquareTopLineView;->mPullToRefreshLayout:Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;

    invoke-virtual {v0}, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->setOnPullRefresh()V

    .line 137
    return-void
.end method

.method protected setLoadMoreListener(Lcom/oppo/tribune/ui/pullview/LoadMoreHandler$LoadMoreListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/oppo/tribune/ui/pullview/LoadMoreHandler$LoadMoreListener;

    .prologue
    .line 53
    if-eqz p1, :cond_0

    .line 54
    iget-object v0, p0, Lcom/oppo/tribune/square/SquareTopLineView;->mLoadMoreHandler:Lcom/oppo/tribune/ui/pullview/LoadMoreHandler;

    invoke-virtual {v0, p1}, Lcom/oppo/tribune/ui/pullview/LoadMoreHandler;->setLoadMoreListener(Lcom/oppo/tribune/ui/pullview/LoadMoreHandler$LoadMoreListener;)V

    .line 56
    :cond_0
    return-void
.end method

.method public showList(Ljava/util/List;Z)Z
    .locals 4
    .param p2, "hasMore"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;>;"
    const/4 v0, 0x1

    .line 81
    invoke-static {p1}, Lcom/oppo/tribune/util/Utils;->isNullOrEmpty(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    iget-object v0, p0, Lcom/oppo/tribune/square/SquareTopLineView;->mPullToRefreshLayout:Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;

    invoke-virtual {v0}, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->onRefreshComplete()V

    .line 83
    const/4 v0, 0x0

    .line 106
    :goto_0
    return v0

    .line 85
    :cond_0
    iget-object v1, p0, Lcom/oppo/tribune/square/SquareTopLineView;->mListAdapter:Lcom/oppo/tribune/square/TopLineListAdapter;

    if-eqz v1, :cond_1

    .line 86
    iget-object v1, p0, Lcom/oppo/tribune/square/SquareTopLineView;->mListAdapter:Lcom/oppo/tribune/square/TopLineListAdapter;

    invoke-virtual {v1, p1}, Lcom/oppo/tribune/square/TopLineListAdapter;->updateViews(Ljava/util/List;)V

    .line 103
    :goto_1
    iget-object v1, p0, Lcom/oppo/tribune/square/SquareTopLineView;->mLoadMoreHandler:Lcom/oppo/tribune/ui/pullview/LoadMoreHandler;

    invoke-virtual {v1, p2}, Lcom/oppo/tribune/ui/pullview/LoadMoreHandler;->setIsHasMore(Z)V

    .line 104
    iget-object v1, p0, Lcom/oppo/tribune/square/SquareTopLineView;->mPullToRefreshLayout:Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;

    invoke-virtual {v1}, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->onRefreshComplete()V

    .line 105
    iget-object v1, p0, Lcom/oppo/tribune/square/SquareTopLineView;->mLoadMoreHandler:Lcom/oppo/tribune/ui/pullview/LoadMoreHandler;

    invoke-virtual {v1}, Lcom/oppo/tribune/ui/pullview/LoadMoreHandler;->onLoadMoreComplete()V

    goto :goto_0

    .line 88
    :cond_1
    new-instance v1, Lcom/oppo/tribune/square/TopLineListAdapter;

    invoke-virtual {p0}, Lcom/oppo/tribune/square/SquareTopLineView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/oppo/tribune/square/SquareTopLineView;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, p1, v3, v0}, Lcom/oppo/tribune/square/TopLineListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Z)V

    iput-object v1, p0, Lcom/oppo/tribune/square/SquareTopLineView;->mListAdapter:Lcom/oppo/tribune/square/TopLineListAdapter;

    .line 90
    iget-object v1, p0, Lcom/oppo/tribune/square/SquareTopLineView;->mListAdapter:Lcom/oppo/tribune/square/TopLineListAdapter;

    new-instance v2, Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler;

    invoke-virtual {p0}, Lcom/oppo/tribune/square/SquareTopLineView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/oppo/tribune/square/TopLineListAdapter;->setPraiseClkHandler(Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler;)V

    .line 93
    iget-object v1, p0, Lcom/oppo/tribune/square/SquareTopLineView;->mListAdapter:Lcom/oppo/tribune/square/TopLineListAdapter;

    new-instance v2, Lcom/oppo/tribune/square/TribunePostItemLoadAndUseClkHandler;

    invoke-virtual {p0}, Lcom/oppo/tribune/square/SquareTopLineView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/oppo/tribune/square/TribunePostItemLoadAndUseClkHandler;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/oppo/tribune/square/TopLineListAdapter;->setLoadAndUseClkHandler(Lcom/oppo/tribune/square/TribunePostItemLoadAndUseClkHandler;)V

    .line 96
    iget-object v1, p0, Lcom/oppo/tribune/square/SquareTopLineView;->mListAdapter:Lcom/oppo/tribune/square/TopLineListAdapter;

    iget-object v2, p0, Lcom/oppo/tribune/square/SquareTopLineView;->mItemElementsClkLsn:Lcom/oppo/tribune/square/TopLineListAdapter$ItemElementsClkLsn;

    invoke-virtual {v1, v2}, Lcom/oppo/tribune/square/TopLineListAdapter;->setItemElementsClkLsn(Lcom/oppo/tribune/square/TopLineListAdapter$ItemElementsClkLsn;)V

    .line 99
    iget-object v1, p0, Lcom/oppo/tribune/square/SquareTopLineView;->mContentListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/oppo/tribune/square/SquareTopLineView;->mListAdapter:Lcom/oppo/tribune/square/TopLineListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 100
    iget-object v1, p0, Lcom/oppo/tribune/square/SquareTopLineView;->mListScrollHandler:Lcom/oppo/tribune/ui/pullview/ListScrollHandler;

    new-instance v2, Lcom/oppo/tribune/ui/pullview/ListScrollRefreshHandler;

    iget-object v3, p0, Lcom/oppo/tribune/square/SquareTopLineView;->mListAdapter:Lcom/oppo/tribune/square/TopLineListAdapter;

    invoke-direct {v2, v3}, Lcom/oppo/tribune/ui/pullview/ListScrollRefreshHandler;-><init>(Lcom/oppo/tribune/ui/pullview/ListScrollRefreshHandler$IAdapter;)V

    invoke-virtual {v1, v2}, Lcom/oppo/tribune/ui/pullview/ListScrollHandler;->addScrollListener(Lcom/oppo/tribune/ui/pullview/ListScrollListener;)V

    goto :goto_1
.end method

.method public updateList(Ljava/util/List;Z)Z
    .locals 1
    .param p2, "hasMore"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    .line 110
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;>;"
    invoke-static {p1}, Lcom/oppo/tribune/util/Utils;->isNullOrEmpty(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/tribune/square/SquareTopLineView;->mListAdapter:Lcom/oppo/tribune/square/TopLineListAdapter;

    if-nez v0, :cond_1

    .line 111
    :cond_0
    invoke-virtual {p0, p2}, Lcom/oppo/tribune/square/SquareTopLineView;->setListHasMore(Z)V

    .line 112
    const/4 v0, 0x0

    .line 116
    :goto_0
    return v0

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/oppo/tribune/square/SquareTopLineView;->mListAdapter:Lcom/oppo/tribune/square/TopLineListAdapter;

    invoke-virtual {v0, p1}, Lcom/oppo/tribune/square/TopLineListAdapter;->updateViews(Ljava/util/List;)V

    .line 115
    invoke-virtual {p0, p2}, Lcom/oppo/tribune/square/SquareTopLineView;->setListHasMore(Z)V

    .line 116
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public updateListByAddList(Ljava/util/List;Z)Z
    .locals 1
    .param p2, "hasMore"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    .line 120
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;>;"
    invoke-static {p1}, Lcom/oppo/tribune/util/Utils;->isNullOrEmpty(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/tribune/square/SquareTopLineView;->mListAdapter:Lcom/oppo/tribune/square/TopLineListAdapter;

    if-nez v0, :cond_1

    .line 121
    :cond_0
    invoke-virtual {p0, p2}, Lcom/oppo/tribune/square/SquareTopLineView;->setListHasMore(Z)V

    .line 122
    const/4 v0, 0x0

    .line 126
    :goto_0
    return v0

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/oppo/tribune/square/SquareTopLineView;->mListAdapter:Lcom/oppo/tribune/square/TopLineListAdapter;

    invoke-virtual {v0, p1}, Lcom/oppo/tribune/square/TopLineListAdapter;->updateViewsByAddList(Ljava/util/List;)V

    .line 125
    invoke-virtual {p0, p2}, Lcom/oppo/tribune/square/SquareTopLineView;->setListHasMore(Z)V

    .line 126
    const/4 v0, 0x1

    goto :goto_0
.end method
