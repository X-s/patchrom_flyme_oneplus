.class public Lcom/oppo/tribune/ui/pullview/LoadMoreHandler;
.super Ljava/lang/Object;
.source "LoadMoreHandler.java"

# interfaces
.implements Lcom/oppo/tribune/ui/pullview/ListScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/tribune/ui/pullview/LoadMoreHandler$LoadMoreListener;
    }
.end annotation


# instance fields
.field private mContentListView:Landroid/widget/ListView;

.field private mFooterClickListener:Landroid/view/View$OnClickListener;

.field private mFooterView:Lcom/oppo/tribune/ui/pullview/RefreshFooterView;

.field private volatile mIsAddFooter:Z

.field private volatile mIsHasMore:Z

.field private volatile mIsLoading:Z

.field private mLoadMoreListener:Lcom/oppo/tribune/ui/pullview/LoadMoreHandler$LoadMoreListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/tribune/ui/pullview/LoadMoreHandler;->mIsLoading:Z

    .line 36
    new-instance v0, Lcom/oppo/tribune/ui/pullview/LoadMoreHandler$1;

    invoke-direct {v0, p0}, Lcom/oppo/tribune/ui/pullview/LoadMoreHandler$1;-><init>(Lcom/oppo/tribune/ui/pullview/LoadMoreHandler;)V

    iput-object v0, p0, Lcom/oppo/tribune/ui/pullview/LoadMoreHandler;->mFooterClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/oppo/tribune/ui/pullview/LoadMoreHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/ui/pullview/LoadMoreHandler;

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/oppo/tribune/ui/pullview/LoadMoreHandler;->onLoadMore()V

    return-void
.end method

.method public static isAutoLoadMore()Z
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x1

    return v0
.end method

.method private onLoadMore()V
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/oppo/tribune/ui/pullview/LoadMoreHandler;->mIsLoading:Z

    if-nez v0, :cond_1

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/tribune/ui/pullview/LoadMoreHandler;->mIsLoading:Z

    .line 72
    iget-object v0, p0, Lcom/oppo/tribune/ui/pullview/LoadMoreHandler;->mFooterView:Lcom/oppo/tribune/ui/pullview/RefreshFooterView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/tribune/ui/pullview/LoadMoreHandler;->mIsHasMore:Z

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/oppo/tribune/ui/pullview/LoadMoreHandler;->mFooterView:Lcom/oppo/tribune/ui/pullview/RefreshFooterView;

    invoke-virtual {v0}, Lcom/oppo/tribune/ui/pullview/RefreshFooterView;->onLoadMore()V

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/ui/pullview/LoadMoreHandler;->mLoadMoreListener:Lcom/oppo/tribune/ui/pullview/LoadMoreHandler$LoadMoreListener;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/oppo/tribune/ui/pullview/LoadMoreHandler;->mIsHasMore:Z

    if-eqz v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/oppo/tribune/ui/pullview/LoadMoreHandler;->mLoadMoreListener:Lcom/oppo/tribune/ui/pullview/LoadMoreHandler$LoadMoreListener;

    invoke-interface {v0}, Lcom/oppo/tribune/ui/pullview/LoadMoreHandler$LoadMoreListener;->onLoadMore()V

    .line 79
    :cond_1
    return-void
.end method

.method private updateFooterViewInstruction()V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/oppo/tribune/ui/pullview/LoadMoreHandler;->mFooterView:Lcom/oppo/tribune/ui/pullview/RefreshFooterView;

    if-eqz v0, :cond_0

    .line 99
    iget-boolean v0, p0, Lcom/oppo/tribune/ui/pullview/LoadMoreHandler;->mIsHasMore:Z

    if-nez v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/oppo/tribune/ui/pullview/LoadMoreHandler;->mFooterView:Lcom/oppo/tribune/ui/pullview/RefreshFooterView;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/ui/pullview/RefreshFooterView;->setFooterText(I)V

    .line 103
    invoke-virtual {p0}, Lcom/oppo/tribune/ui/pullview/LoadMoreHandler;->removeFooterView()V

    .line 104
    iget-object v0, p0, Lcom/oppo/tribune/ui/pullview/LoadMoreHandler;->mContentListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOverScrollMode(I)V

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/oppo/tribune/ui/pullview/LoadMoreHandler;->mFooterView:Lcom/oppo/tribune/ui/pullview/RefreshFooterView;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/ui/pullview/RefreshFooterView;->setFooterText(I)V

    .line 109
    invoke-virtual {p0}, Lcom/oppo/tribune/ui/pullview/LoadMoreHandler;->addFooterView()V

    .line 110
    iget-object v0, p0, Lcom/oppo/tribune/ui/pullview/LoadMoreHandler;->mContentListView:Landroid/widget/ListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOverScrollMode(I)V

    goto :goto_0
.end method


# virtual methods
.method public addFooterView()V
    .locals 2

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/oppo/tribune/ui/pullview/LoadMoreHandler;->mIsAddFooter:Z

    if-nez v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/oppo/tribune/ui/pullview/LoadMoreHandler;->mContentListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/oppo/tribune/ui/pullview/LoadMoreHandler;->mFooterView:Lcom/oppo/tribune/ui/pullview/RefreshFooterView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/tribune/ui/pullview/LoadMoreHandler;->mIsAddFooter:Z

    .line 128
    :cond_0
    return-void
.end method

.method public getFooterView()Lcom/oppo/tribune/ui/pullview/RefreshFooterView;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/oppo/tribune/ui/pullview/LoadMoreHandler;->mFooterView:Lcom/oppo/tribune/ui/pullview/RefreshFooterView;

    return-object v0
.end method

.method public onLoadMoreComplete()V
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/tribune/ui/pullview/LoadMoreHandler;->mIsLoading:Z

    .line 83
    iget-object v0, p0, Lcom/oppo/tribune/ui/pullview/LoadMoreHandler;->mFooterView:Lcom/oppo/tribune/ui/pullview/RefreshFooterView;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/oppo/tribune/ui/pullview/LoadMoreHandler;->mFooterView:Lcom/oppo/tribune/ui/pullview/RefreshFooterView;

    invoke-virtual {v0}, Lcom/oppo/tribune/ui/pullview/RefreshFooterView;->onLoadMoreComplete()V

    .line 86
    :cond_0
    invoke-direct {p0}, Lcom/oppo/tribune/ui/pullview/LoadMoreHandler;->updateFooterViewInstruction()V

    .line 87
    return-void
.end method

.method public onLoadMoreComplete(Z)V
    .locals 0
    .param p1, "isHasMore"    # Z

    .prologue
    .line 90
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/ui/pullview/LoadMoreHandler;->setIsHasMore(Z)V

    .line 91
    invoke-virtual {p0}, Lcom/oppo/tribune/ui/pullview/LoadMoreHandler;->onLoadMoreComplete()V

    .line 92
    return-void
.end method

.method public onScroll(Landroid/view/ViewGroup;III)V
    .locals 0
    .param p1, "view"    # Landroid/view/ViewGroup;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 154
    return-void
.end method

.method public onScrollStateChanged(Landroid/view/ViewGroup;I)V
    .locals 3
    .param p1, "view"    # Landroid/view/ViewGroup;
    .param p2, "scrollState"    # I

    .prologue
    .line 140
    instance-of v1, p1, Landroid/widget/ListView;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 141
    check-cast v0, Landroid/widget/ListView;

    .line 142
    .local v0, "listView":Landroid/widget/ListView;
    if-nez p2, :cond_0

    invoke-virtual {v0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_0

    .line 145
    invoke-direct {p0}, Lcom/oppo/tribune/ui/pullview/LoadMoreHandler;->onLoadMore()V

    .line 148
    .end local v0    # "listView":Landroid/widget/ListView;
    :cond_0
    return-void
.end method

.method public removeFooterView()V
    .locals 2

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/oppo/tribune/ui/pullview/LoadMoreHandler;->mIsAddFooter:Z

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/oppo/tribune/ui/pullview/LoadMoreHandler;->mContentListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/oppo/tribune/ui/pullview/LoadMoreHandler;->mFooterView:Lcom/oppo/tribune/ui/pullview/RefreshFooterView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 118
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/tribune/ui/pullview/LoadMoreHandler;->mIsAddFooter:Z

    .line 120
    :cond_0
    return-void
.end method

.method public setContentView(Landroid/content/Context;Landroid/widget/ListView;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listView"    # Landroid/widget/ListView;

    .prologue
    .line 53
    iput-object p2, p0, Lcom/oppo/tribune/ui/pullview/LoadMoreHandler;->mContentListView:Landroid/widget/ListView;

    .line 54
    new-instance v0, Lcom/oppo/tribune/ui/pullview/RefreshFooterView;

    invoke-direct {v0, p1}, Lcom/oppo/tribune/ui/pullview/RefreshFooterView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oppo/tribune/ui/pullview/LoadMoreHandler;->mFooterView:Lcom/oppo/tribune/ui/pullview/RefreshFooterView;

    .line 55
    iget-object v0, p0, Lcom/oppo/tribune/ui/pullview/LoadMoreHandler;->mContentListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/oppo/tribune/ui/pullview/LoadMoreHandler;->mFooterView:Lcom/oppo/tribune/ui/pullview/RefreshFooterView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 56
    iget-object v0, p0, Lcom/oppo/tribune/ui/pullview/LoadMoreHandler;->mContentListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidate()V

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/tribune/ui/pullview/LoadMoreHandler;->mIsAddFooter:Z

    .line 59
    return-void
.end method

.method public setFooterViewClickListener(Z)V
    .locals 2
    .param p1, "autoLoad"    # Z

    .prologue
    .line 45
    if-nez p1, :cond_0

    .line 46
    iget-object v0, p0, Lcom/oppo/tribune/ui/pullview/LoadMoreHandler;->mFooterView:Lcom/oppo/tribune/ui/pullview/RefreshFooterView;

    iget-object v1, p0, Lcom/oppo/tribune/ui/pullview/LoadMoreHandler;->mFooterClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/ui/pullview/RefreshFooterView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    :goto_0
    return-void

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/ui/pullview/LoadMoreHandler;->mFooterView:Lcom/oppo/tribune/ui/pullview/RefreshFooterView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/ui/pullview/RefreshFooterView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public setFooterViewText(ZLjava/lang/String;)V
    .locals 1
    .param p1, "isHasMore"    # Z
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 157
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/ui/pullview/LoadMoreHandler;->onLoadMoreComplete(Z)V

    .line 158
    iget-object v0, p0, Lcom/oppo/tribune/ui/pullview/LoadMoreHandler;->mFooterView:Lcom/oppo/tribune/ui/pullview/RefreshFooterView;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/oppo/tribune/ui/pullview/LoadMoreHandler;->mFooterView:Lcom/oppo/tribune/ui/pullview/RefreshFooterView;

    invoke-virtual {v0, p2}, Lcom/oppo/tribune/ui/pullview/RefreshFooterView;->setFooterText(Ljava/lang/String;)V

    .line 161
    :cond_0
    return-void
.end method

.method public setIsHasMore(Z)V
    .locals 0
    .param p1, "isHasMore"    # Z

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/oppo/tribune/ui/pullview/LoadMoreHandler;->mIsHasMore:Z

    .line 67
    return-void
.end method

.method public setLoadMoreListener(Lcom/oppo/tribune/ui/pullview/LoadMoreHandler$LoadMoreListener;)V
    .locals 0
    .param p1, "loadMoreListener"    # Lcom/oppo/tribune/ui/pullview/LoadMoreHandler$LoadMoreListener;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/oppo/tribune/ui/pullview/LoadMoreHandler;->mLoadMoreListener:Lcom/oppo/tribune/ui/pullview/LoadMoreHandler$LoadMoreListener;

    .line 63
    return-void
.end method
