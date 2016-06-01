.class public Lcom/oppo/tribune/ui/ContentListLayout;
.super Landroid/widget/FrameLayout;
.source "ContentListLayout.java"


# instance fields
.field protected mContentListView:Landroid/widget/ListView;

.field protected mGotoTopView:Landroid/widget/ImageView;

.field private mHideGotoTop:Ljava/lang/Runnable;

.field protected mListScrollHandler:Lcom/oppo/tribune/ui/pullview/ListScrollHandler;

.field private mListScrollListener:Lcom/oppo/tribune/ui/pullview/ListScrollListener;

.field protected mLoadingView:Lcom/oppo/tribune/ui/LoadingView;

.field protected mPullToRefreshLayout:Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 37
    new-instance v0, Lcom/oppo/tribune/ui/ContentListLayout$1;

    invoke-direct {v0, p0}, Lcom/oppo/tribune/ui/ContentListLayout$1;-><init>(Lcom/oppo/tribune/ui/ContentListLayout;)V

    iput-object v0, p0, Lcom/oppo/tribune/ui/ContentListLayout;->mHideGotoTop:Ljava/lang/Runnable;

    .line 48
    new-instance v0, Lcom/oppo/tribune/ui/ContentListLayout$2;

    invoke-direct {v0, p0}, Lcom/oppo/tribune/ui/ContentListLayout$2;-><init>(Lcom/oppo/tribune/ui/ContentListLayout;)V

    iput-object v0, p0, Lcom/oppo/tribune/ui/ContentListLayout;->mListScrollListener:Lcom/oppo/tribune/ui/pullview/ListScrollListener;

    .line 76
    invoke-direct {p0, p1}, Lcom/oppo/tribune/ui/ContentListLayout;->init(Landroid/content/Context;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    new-instance v0, Lcom/oppo/tribune/ui/ContentListLayout$1;

    invoke-direct {v0, p0}, Lcom/oppo/tribune/ui/ContentListLayout$1;-><init>(Lcom/oppo/tribune/ui/ContentListLayout;)V

    iput-object v0, p0, Lcom/oppo/tribune/ui/ContentListLayout;->mHideGotoTop:Ljava/lang/Runnable;

    .line 48
    new-instance v0, Lcom/oppo/tribune/ui/ContentListLayout$2;

    invoke-direct {v0, p0}, Lcom/oppo/tribune/ui/ContentListLayout$2;-><init>(Lcom/oppo/tribune/ui/ContentListLayout;)V

    iput-object v0, p0, Lcom/oppo/tribune/ui/ContentListLayout;->mListScrollListener:Lcom/oppo/tribune/ui/pullview/ListScrollListener;

    .line 81
    invoke-direct {p0, p1}, Lcom/oppo/tribune/ui/ContentListLayout;->init(Landroid/content/Context;)V

    .line 82
    return-void
.end method

.method static synthetic access$000(Lcom/oppo/tribune/ui/ContentListLayout;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/ui/ContentListLayout;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/oppo/tribune/ui/ContentListLayout;->mHideGotoTop:Ljava/lang/Runnable;

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 85
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 86
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f03001d

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 88
    const v1, 0x7f0b009a

    invoke-virtual {p0, v1}, Lcom/oppo/tribune/ui/ContentListLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;

    iput-object v1, p0, Lcom/oppo/tribune/ui/ContentListLayout;->mPullToRefreshLayout:Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;

    .line 89
    const v1, 0x7f0b009b

    invoke-virtual {p0, v1}, Lcom/oppo/tribune/ui/ContentListLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/oppo/tribune/ui/ContentListLayout;->mContentListView:Landroid/widget/ListView;

    .line 90
    new-instance v1, Lcom/oppo/tribune/ui/pullview/ListScrollHandler;

    invoke-direct {v1}, Lcom/oppo/tribune/ui/pullview/ListScrollHandler;-><init>()V

    iput-object v1, p0, Lcom/oppo/tribune/ui/ContentListLayout;->mListScrollHandler:Lcom/oppo/tribune/ui/pullview/ListScrollHandler;

    .line 91
    iget-object v1, p0, Lcom/oppo/tribune/ui/ContentListLayout;->mContentListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/oppo/tribune/ui/ContentListLayout;->mListScrollHandler:Lcom/oppo/tribune/ui/pullview/ListScrollHandler;

    invoke-virtual {v2}, Lcom/oppo/tribune/ui/pullview/ListScrollHandler;->getOnScrollListener()Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 94
    iget-object v1, p0, Lcom/oppo/tribune/ui/ContentListLayout;->mListScrollHandler:Lcom/oppo/tribune/ui/pullview/ListScrollHandler;

    iget-object v2, p0, Lcom/oppo/tribune/ui/ContentListLayout;->mListScrollListener:Lcom/oppo/tribune/ui/pullview/ListScrollListener;

    invoke-virtual {v1, v2}, Lcom/oppo/tribune/ui/pullview/ListScrollHandler;->addScrollListener(Lcom/oppo/tribune/ui/pullview/ListScrollListener;)V

    .line 96
    const v1, 0x7f0b009d

    invoke-virtual {p0, v1}, Lcom/oppo/tribune/ui/ContentListLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oppo/tribune/ui/LoadingView;

    iput-object v1, p0, Lcom/oppo/tribune/ui/ContentListLayout;->mLoadingView:Lcom/oppo/tribune/ui/LoadingView;

    .line 97
    const v1, 0x7f0b009c

    invoke-virtual {p0, v1}, Lcom/oppo/tribune/ui/ContentListLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/oppo/tribune/ui/ContentListLayout;->mGotoTopView:Landroid/widget/ImageView;

    .line 98
    iget-object v1, p0, Lcom/oppo/tribune/ui/ContentListLayout;->mGotoTopView:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 99
    iget-object v1, p0, Lcom/oppo/tribune/ui/ContentListLayout;->mGotoTopView:Landroid/widget/ImageView;

    new-instance v2, Lcom/oppo/tribune/ui/ContentListLayout$3;

    invoke-direct {v2, p0}, Lcom/oppo/tribune/ui/ContentListLayout$3;-><init>(Lcom/oppo/tribune/ui/ContentListLayout;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    return-void
.end method


# virtual methods
.method public getContentListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/oppo/tribune/ui/ContentListLayout;->mContentListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public getGotoTopView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/oppo/tribune/ui/ContentListLayout;->mGotoTopView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getPullListView()Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/oppo/tribune/ui/ContentListLayout;->mPullToRefreshLayout:Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;

    return-object v0
.end method

.method public getPullListViewVisible()Z
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/oppo/tribune/ui/ContentListLayout;->mPullToRefreshLayout:Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;

    invoke-virtual {v0}, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPullToRefreshLayout()Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/oppo/tribune/ui/ContentListLayout;->mPullToRefreshLayout:Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;

    return-object v0
.end method

.method public hideAllViews()V
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/oppo/tribune/ui/ContentListLayout;->mPullToRefreshLayout:Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->setVisibility(I)V

    .line 135
    iget-object v0, p0, Lcom/oppo/tribune/ui/ContentListLayout;->mLoadingView:Lcom/oppo/tribune/ui/LoadingView;

    invoke-virtual {v0}, Lcom/oppo/tribune/ui/LoadingView;->hideLoadingView()V

    .line 136
    return-void
.end method

.method public hideLoadingLayout()V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/oppo/tribune/ui/ContentListLayout;->mLoadingView:Lcom/oppo/tribune/ui/LoadingView;

    invoke-virtual {v0}, Lcom/oppo/tribune/ui/LoadingView;->hideLoadingView()V

    .line 130
    iget-object v0, p0, Lcom/oppo/tribune/ui/ContentListLayout;->mPullToRefreshLayout:Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->setVisibility(I)V

    .line 131
    return-void
.end method

.method public isListViewVisible()Z
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/oppo/tribune/ui/ContentListLayout;->mPullToRefreshLayout:Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;

    invoke-virtual {v0}, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPullRefreshReady()Z
    .locals 4

    .prologue
    .line 176
    const/4 v1, 0x0

    .line 177
    .local v1, "result":Z
    iget-object v2, p0, Lcom/oppo/tribune/ui/ContentListLayout;->mContentListView:Landroid/widget/ListView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oppo/tribune/ui/ContentListLayout;->mContentListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    if-nez v2, :cond_0

    .line 179
    iget-object v2, p0, Lcom/oppo/tribune/ui/ContentListLayout;->mContentListView:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 181
    .local v0, "childView":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    if-ltz v2, :cond_0

    .line 182
    const/4 v1, 0x1

    .line 185
    .end local v0    # "childView":Landroid/view/View;
    :cond_0
    return v1
.end method

.method public removeDefaultHeadview(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/oppo/tribune/ui/ContentListLayout;->mContentListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    .line 113
    return-void
.end method

.method public setListViewOnRefreshLsn(Lcom/oppo/tribune/ui/pullview/PullRefreshListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/oppo/tribune/ui/pullview/PullRefreshListener;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/oppo/tribune/ui/ContentListLayout;->mPullToRefreshLayout:Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;

    invoke-virtual {v0, p1}, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->setPullRefreshListener(Lcom/oppo/tribune/ui/pullview/PullRefreshListener;)V

    .line 117
    return-void
.end method

.method public showLoadingError(IIIILandroid/view/View$OnClickListener;)V
    .locals 6
    .param p1, "type"    # I
    .param p2, "strTipRes"    # I
    .param p3, "strTipRes2"    # I
    .param p4, "imgId"    # I
    .param p5, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 166
    iget-object v0, p0, Lcom/oppo/tribune/ui/ContentListLayout;->mPullToRefreshLayout:Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->setVisibility(I)V

    .line 167
    iget-object v0, p0, Lcom/oppo/tribune/ui/ContentListLayout;->mLoadingView:Lcom/oppo/tribune/ui/LoadingView;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/oppo/tribune/ui/LoadingView;->showLoadingError(IIIILandroid/view/View$OnClickListener;)V

    .line 169
    return-void
.end method

.method public showLoadingError(ILandroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "cause"    # I
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/oppo/tribune/ui/ContentListLayout;->mPullToRefreshLayout:Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->setVisibility(I)V

    .line 161
    iget-object v0, p0, Lcom/oppo/tribune/ui/ContentListLayout;->mLoadingView:Lcom/oppo/tribune/ui/LoadingView;

    invoke-virtual {v0, p1, p2}, Lcom/oppo/tribune/ui/LoadingView;->showLoadingError(ILandroid/view/View$OnClickListener;)V

    .line 162
    return-void
.end method

.method public showLoadingProgress()V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/oppo/tribune/ui/ContentListLayout;->mPullToRefreshLayout:Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->setVisibility(I)V

    .line 125
    iget-object v0, p0, Lcom/oppo/tribune/ui/ContentListLayout;->mLoadingView:Lcom/oppo/tribune/ui/LoadingView;

    invoke-virtual {v0}, Lcom/oppo/tribune/ui/LoadingView;->showLoadingProcess()V

    .line 126
    return-void
.end method

.method public showToast(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/oppo/tribune/ui/ContentListLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/oppo/tribune/ui/CustomToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 173
    return-void
.end method
