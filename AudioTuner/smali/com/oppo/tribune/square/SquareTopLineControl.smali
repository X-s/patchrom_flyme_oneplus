.class public Lcom/oppo/tribune/square/SquareTopLineControl;
.super Lcom/oppo/tribune/square/TribunePostItemController;
.source "SquareTopLineControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/tribune/square/SquareTopLineControl$5;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsViewDataInit:Z

.field private mLoadErrorClickLsn:Landroid/view/View$OnClickListener;

.field private mOnActivityResume:Z

.field private mTopLineModel:Lcom/oppo/tribune/square/SquareTopLineModel;

.field private mTopLineView:Lcom/oppo/tribune/square/SquareTopLineView;

.field private mType:I

.field private mWriteAndReadConfigNumInfo:Lcom/oneplus/tuner/providers/WriteAndReadConfigNumInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/oppo/tribune/square/SquareTopLineView;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Lcom/oppo/tribune/square/SquareTopLineView;
    .param p3, "type"    # I

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Lcom/oppo/tribune/square/TribunePostItemController;-><init>()V

    .line 32
    iput-boolean v0, p0, Lcom/oppo/tribune/square/SquareTopLineControl;->mIsViewDataInit:Z

    .line 33
    iput-boolean v0, p0, Lcom/oppo/tribune/square/SquareTopLineControl;->mOnActivityResume:Z

    .line 283
    new-instance v0, Lcom/oppo/tribune/square/SquareTopLineControl$4;

    invoke-direct {v0, p0}, Lcom/oppo/tribune/square/SquareTopLineControl$4;-><init>(Lcom/oppo/tribune/square/SquareTopLineControl;)V

    iput-object v0, p0, Lcom/oppo/tribune/square/SquareTopLineControl;->mLoadErrorClickLsn:Landroid/view/View$OnClickListener;

    .line 41
    iput-object p1, p0, Lcom/oppo/tribune/square/SquareTopLineControl;->mContext:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lcom/oppo/tribune/square/SquareTopLineControl;->mTopLineView:Lcom/oppo/tribune/square/SquareTopLineView;

    .line 43
    iput p3, p0, Lcom/oppo/tribune/square/SquareTopLineControl;->mType:I

    .line 45
    iget-object v0, p0, Lcom/oppo/tribune/square/SquareTopLineControl;->mTopLineView:Lcom/oppo/tribune/square/SquareTopLineView;

    invoke-direct {p0}, Lcom/oppo/tribune/square/SquareTopLineControl;->getListPullRefreshListener()Lcom/oppo/tribune/ui/pullview/PullRefreshListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/square/SquareTopLineView;->setListViewOnRefreshLsn(Lcom/oppo/tribune/ui/pullview/PullRefreshListener;)V

    .line 46
    iget-object v0, p0, Lcom/oppo/tribune/square/SquareTopLineControl;->mTopLineView:Lcom/oppo/tribune/square/SquareTopLineView;

    invoke-direct {p0}, Lcom/oppo/tribune/square/SquareTopLineControl;->getLoadMoreListener()Lcom/oppo/tribune/ui/pullview/LoadMoreHandler$LoadMoreListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/square/SquareTopLineView;->setLoadMoreListener(Lcom/oppo/tribune/ui/pullview/LoadMoreHandler$LoadMoreListener;)V

    .line 47
    iget-object v0, p0, Lcom/oppo/tribune/square/SquareTopLineControl;->mTopLineView:Lcom/oppo/tribune/square/SquareTopLineView;

    invoke-virtual {p0, p1}, Lcom/oppo/tribune/square/SquareTopLineControl;->getListItemElementsClkLsn(Landroid/content/Context;)Lcom/oppo/tribune/square/TopLineListAdapter$ItemElementsClkLsn;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/square/SquareTopLineView;->setListItemElementsClkLsn(Lcom/oppo/tribune/square/TopLineListAdapter$ItemElementsClkLsn;)V

    .line 49
    iget-object v0, p0, Lcom/oppo/tribune/square/SquareTopLineControl;->mTopLineView:Lcom/oppo/tribune/square/SquareTopLineView;

    invoke-virtual {v0}, Lcom/oppo/tribune/square/SquareTopLineView;->hideAllViews()V

    .line 59
    new-instance v0, Lcom/oppo/tribune/square/SquareTopLineModel;

    iget-object v1, p0, Lcom/oppo/tribune/square/SquareTopLineControl;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/oppo/tribune/square/SquareTopLineControl;->getDownDataCallBack()Lcom/oppo/tribune/square/SquareTopLineModel$DownDataCallBack;

    move-result-object v2

    iget v3, p0, Lcom/oppo/tribune/square/SquareTopLineControl;->mType:I

    invoke-direct {v0, v1, v2, v3}, Lcom/oppo/tribune/square/SquareTopLineModel;-><init>(Landroid/content/Context;Lcom/oppo/tribune/square/SquareTopLineModel$DownDataCallBack;I)V

    iput-object v0, p0, Lcom/oppo/tribune/square/SquareTopLineControl;->mTopLineModel:Lcom/oppo/tribune/square/SquareTopLineModel;

    .line 62
    new-instance v0, Lcom/oneplus/tuner/providers/WriteAndReadConfigNumInfo;

    iget-object v1, p0, Lcom/oppo/tribune/square/SquareTopLineControl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/oneplus/tuner/providers/WriteAndReadConfigNumInfo;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oppo/tribune/square/SquareTopLineControl;->mWriteAndReadConfigNumInfo:Lcom/oneplus/tuner/providers/WriteAndReadConfigNumInfo;

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/oppo/tribune/square/SquareTopLineView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Lcom/oppo/tribune/square/SquareTopLineView;
    .param p3, "type"    # I
    .param p4, "categoryId"    # Ljava/lang/String;
    .param p5, "order"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 69
    invoke-direct {p0}, Lcom/oppo/tribune/square/TribunePostItemController;-><init>()V

    .line 32
    iput-boolean v0, p0, Lcom/oppo/tribune/square/SquareTopLineControl;->mIsViewDataInit:Z

    .line 33
    iput-boolean v0, p0, Lcom/oppo/tribune/square/SquareTopLineControl;->mOnActivityResume:Z

    .line 283
    new-instance v0, Lcom/oppo/tribune/square/SquareTopLineControl$4;

    invoke-direct {v0, p0}, Lcom/oppo/tribune/square/SquareTopLineControl$4;-><init>(Lcom/oppo/tribune/square/SquareTopLineControl;)V

    iput-object v0, p0, Lcom/oppo/tribune/square/SquareTopLineControl;->mLoadErrorClickLsn:Landroid/view/View$OnClickListener;

    .line 70
    iput-object p1, p0, Lcom/oppo/tribune/square/SquareTopLineControl;->mContext:Landroid/content/Context;

    .line 71
    iput-object p2, p0, Lcom/oppo/tribune/square/SquareTopLineControl;->mTopLineView:Lcom/oppo/tribune/square/SquareTopLineView;

    .line 72
    iput p3, p0, Lcom/oppo/tribune/square/SquareTopLineControl;->mType:I

    .line 74
    iget-object v0, p0, Lcom/oppo/tribune/square/SquareTopLineControl;->mTopLineView:Lcom/oppo/tribune/square/SquareTopLineView;

    invoke-direct {p0}, Lcom/oppo/tribune/square/SquareTopLineControl;->getListPullRefreshListener()Lcom/oppo/tribune/ui/pullview/PullRefreshListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/square/SquareTopLineView;->setListViewOnRefreshLsn(Lcom/oppo/tribune/ui/pullview/PullRefreshListener;)V

    .line 75
    iget-object v0, p0, Lcom/oppo/tribune/square/SquareTopLineControl;->mTopLineView:Lcom/oppo/tribune/square/SquareTopLineView;

    invoke-direct {p0}, Lcom/oppo/tribune/square/SquareTopLineControl;->getLoadMoreListener()Lcom/oppo/tribune/ui/pullview/LoadMoreHandler$LoadMoreListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/square/SquareTopLineView;->setLoadMoreListener(Lcom/oppo/tribune/ui/pullview/LoadMoreHandler$LoadMoreListener;)V

    .line 76
    iget-object v0, p0, Lcom/oppo/tribune/square/SquareTopLineControl;->mTopLineView:Lcom/oppo/tribune/square/SquareTopLineView;

    invoke-virtual {p0, p1}, Lcom/oppo/tribune/square/SquareTopLineControl;->getListItemElementsClkLsn(Landroid/content/Context;)Lcom/oppo/tribune/square/TopLineListAdapter$ItemElementsClkLsn;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/square/SquareTopLineView;->setListItemElementsClkLsn(Lcom/oppo/tribune/square/TopLineListAdapter$ItemElementsClkLsn;)V

    .line 78
    iget-object v0, p0, Lcom/oppo/tribune/square/SquareTopLineControl;->mTopLineView:Lcom/oppo/tribune/square/SquareTopLineView;

    invoke-virtual {v0}, Lcom/oppo/tribune/square/SquareTopLineView;->hideAllViews()V

    .line 90
    new-instance v0, Lcom/oppo/tribune/square/SquareTopLineModel;

    iget-object v1, p0, Lcom/oppo/tribune/square/SquareTopLineControl;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/oppo/tribune/square/SquareTopLineControl;->getDownDataCallBack()Lcom/oppo/tribune/square/SquareTopLineModel$DownDataCallBack;

    move-result-object v2

    iget v3, p0, Lcom/oppo/tribune/square/SquareTopLineControl;->mType:I

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/oppo/tribune/square/SquareTopLineModel;-><init>(Landroid/content/Context;Lcom/oppo/tribune/square/SquareTopLineModel$DownDataCallBack;ILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oppo/tribune/square/SquareTopLineControl;->mTopLineModel:Lcom/oppo/tribune/square/SquareTopLineModel;

    .line 93
    new-instance v0, Lcom/oneplus/tuner/providers/WriteAndReadConfigNumInfo;

    iget-object v1, p0, Lcom/oppo/tribune/square/SquareTopLineControl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/oneplus/tuner/providers/WriteAndReadConfigNumInfo;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oppo/tribune/square/SquareTopLineControl;->mWriteAndReadConfigNumInfo:Lcom/oneplus/tuner/providers/WriteAndReadConfigNumInfo;

    .line 96
    return-void
.end method

.method static synthetic access$000(Lcom/oppo/tribune/square/SquareTopLineControl;)Lcom/oppo/tribune/square/SquareTopLineView;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/square/SquareTopLineControl;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/oppo/tribune/square/SquareTopLineControl;->mTopLineView:Lcom/oppo/tribune/square/SquareTopLineView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oppo/tribune/square/SquareTopLineControl;)Lcom/oppo/tribune/square/SquareTopLineModel;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/square/SquareTopLineControl;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/oppo/tribune/square/SquareTopLineControl;->mTopLineModel:Lcom/oppo/tribune/square/SquareTopLineModel;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oppo/tribune/square/SquareTopLineControl;Lcom/oppo/tribune/square/RefreshType;Ljava/util/List;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/square/SquareTopLineControl;
    .param p1, "x1"    # Lcom/oppo/tribune/square/RefreshType;
    .param p2, "x2"    # Ljava/util/List;
    .param p3, "x3"    # Z

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/oppo/tribune/square/SquareTopLineControl;->doOnRefreshComplete(Lcom/oppo/tribune/square/RefreshType;Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/oppo/tribune/square/SquareTopLineControl;)V
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/square/SquareTopLineControl;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/oppo/tribune/square/SquareTopLineControl;->doOnPullRefresh()V

    return-void
.end method

.method static synthetic access$400(Lcom/oppo/tribune/square/SquareTopLineControl;)V
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/square/SquareTopLineControl;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/oppo/tribune/square/SquareTopLineControl;->doOnLoadMore()V

    return-void
.end method

.method private checkNetWork()Z
    .locals 3

    .prologue
    .line 274
    const/4 v0, 0x0

    .line 275
    .local v0, "result":Z
    iget-object v1, p0, Lcom/oppo/tribune/square/SquareTopLineControl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/oppo/tribune/util/Utils;->isNetWorkActive(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 276
    iget-object v1, p0, Lcom/oppo/tribune/square/SquareTopLineControl;->mTopLineView:Lcom/oppo/tribune/square/SquareTopLineView;

    const v2, 0x7f0c06f0

    invoke-virtual {v1, v2}, Lcom/oppo/tribune/square/SquareTopLineView;->showToast(I)V

    .line 280
    :goto_0
    return v0

    .line 278
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private doOnLoadMore()V
    .locals 3

    .prologue
    .line 185
    iget-object v1, p0, Lcom/oppo/tribune/square/SquareTopLineControl;->mTopLineModel:Lcom/oppo/tribune/square/SquareTopLineModel;

    invoke-virtual {v1}, Lcom/oppo/tribune/square/SquareTopLineModel;->hasMore()Z

    move-result v0

    .line 186
    .local v0, "hasmore":Z
    iget-object v1, p0, Lcom/oppo/tribune/square/SquareTopLineControl;->mTopLineModel:Lcom/oppo/tribune/square/SquareTopLineModel;

    invoke-virtual {v1}, Lcom/oppo/tribune/square/SquareTopLineModel;->isOnPullRefresh()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 187
    iget-object v1, p0, Lcom/oppo/tribune/square/SquareTopLineControl;->mTopLineView:Lcom/oppo/tribune/square/SquareTopLineView;

    const v2, 0x7f0c0656

    invoke-virtual {v1, v2}, Lcom/oppo/tribune/square/SquareTopLineView;->showToast(I)V

    .line 188
    iget-object v1, p0, Lcom/oppo/tribune/square/SquareTopLineControl;->mTopLineView:Lcom/oppo/tribune/square/SquareTopLineView;

    invoke-virtual {v1, v0}, Lcom/oppo/tribune/square/SquareTopLineView;->setListHasMore(Z)V

    .line 196
    :goto_0
    return-void

    .line 189
    :cond_0
    invoke-direct {p0}, Lcom/oppo/tribune/square/SquareTopLineControl;->checkNetWork()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 191
    iget-object v1, p0, Lcom/oppo/tribune/square/SquareTopLineControl;->mTopLineView:Lcom/oppo/tribune/square/SquareTopLineView;

    invoke-virtual {v1}, Lcom/oppo/tribune/square/SquareTopLineView;->getGotoTopView()Landroid/widget/ImageView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 192
    iget-object v1, p0, Lcom/oppo/tribune/square/SquareTopLineControl;->mTopLineModel:Lcom/oppo/tribune/square/SquareTopLineModel;

    invoke-virtual {v1}, Lcom/oppo/tribune/square/SquareTopLineModel;->doLoadMore()V

    goto :goto_0

    .line 194
    :cond_1
    iget-object v1, p0, Lcom/oppo/tribune/square/SquareTopLineControl;->mTopLineView:Lcom/oppo/tribune/square/SquareTopLineView;

    invoke-virtual {v1, v0}, Lcom/oppo/tribune/square/SquareTopLineView;->setListHasMore(Z)V

    goto :goto_0
.end method

.method private doOnPullRefresh()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 173
    iget-object v1, p0, Lcom/oppo/tribune/square/SquareTopLineControl;->mTopLineModel:Lcom/oppo/tribune/square/SquareTopLineModel;

    invoke-virtual {v1}, Lcom/oppo/tribune/square/SquareTopLineModel;->hasMore()Z

    move-result v0

    .line 174
    .local v0, "hasmore":Z
    iget-object v1, p0, Lcom/oppo/tribune/square/SquareTopLineControl;->mTopLineModel:Lcom/oppo/tribune/square/SquareTopLineModel;

    invoke-virtual {v1}, Lcom/oppo/tribune/square/SquareTopLineModel;->isOnLoadMore()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 175
    iget-object v1, p0, Lcom/oppo/tribune/square/SquareTopLineControl;->mTopLineView:Lcom/oppo/tribune/square/SquareTopLineView;

    const v2, 0x7f0c0656

    invoke-virtual {v1, v2}, Lcom/oppo/tribune/square/SquareTopLineView;->showToast(I)V

    .line 176
    iget-object v1, p0, Lcom/oppo/tribune/square/SquareTopLineControl;->mTopLineView:Lcom/oppo/tribune/square/SquareTopLineView;

    invoke-virtual {v1, v3, v0}, Lcom/oppo/tribune/square/SquareTopLineView;->showList(Ljava/util/List;Z)Z

    .line 182
    :goto_0
    return-void

    .line 177
    :cond_0
    invoke-direct {p0}, Lcom/oppo/tribune/square/SquareTopLineControl;->checkNetWork()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 178
    iget-object v1, p0, Lcom/oppo/tribune/square/SquareTopLineControl;->mTopLineModel:Lcom/oppo/tribune/square/SquareTopLineModel;

    invoke-virtual {v1}, Lcom/oppo/tribune/square/SquareTopLineModel;->doPullRefresh()V

    goto :goto_0

    .line 180
    :cond_1
    iget-object v1, p0, Lcom/oppo/tribune/square/SquareTopLineControl;->mTopLineView:Lcom/oppo/tribune/square/SquareTopLineView;

    invoke-virtual {v1, v3, v0}, Lcom/oppo/tribune/square/SquareTopLineView;->showList(Ljava/util/List;Z)Z

    goto :goto_0
.end method

.method private doOnRefreshComplete(Lcom/oppo/tribune/square/RefreshType;Ljava/util/List;Z)V
    .locals 7
    .param p1, "type"    # Lcom/oppo/tribune/square/RefreshType;
    .param p3, "isLoadMoreAndByAddList"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oppo/tribune/square/RefreshType;",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;>;"
    const/4 v6, 0x1

    .line 200
    iget-object v4, p0, Lcom/oppo/tribune/square/SquareTopLineControl;->mTopLineModel:Lcom/oppo/tribune/square/SquareTopLineModel;

    invoke-virtual {v4}, Lcom/oppo/tribune/square/SquareTopLineModel;->hasMore()Z

    move-result v0

    .line 201
    .local v0, "hasMore":Z
    sget-object v4, Lcom/oppo/tribune/square/SquareTopLineControl$5;->$SwitchMap$com$oppo$tribune$square$RefreshType:[I

    invoke-virtual {p1}, Lcom/oppo/tribune/square/RefreshType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 254
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/oppo/tribune/square/SquareTopLineControl;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/oppo/tribune/util/Utils;->isNetWorkActive(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 255
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 256
    :cond_1
    iget-object v4, p0, Lcom/oppo/tribune/square/SquareTopLineControl;->mTopLineView:Lcom/oppo/tribune/square/SquareTopLineView;

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/oppo/tribune/square/SquareTopLineControl;->mLoadErrorClickLsn:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5, v6}, Lcom/oppo/tribune/square/SquareTopLineView;->showLoadingError(ILandroid/view/View$OnClickListener;)V

    .line 264
    :cond_2
    :goto_1
    return-void

    .line 204
    :pswitch_0
    iget-object v4, p0, Lcom/oppo/tribune/square/SquareTopLineControl;->mTopLineView:Lcom/oppo/tribune/square/SquareTopLineView;

    invoke-virtual {v4, p2, v0}, Lcom/oppo/tribune/square/SquareTopLineView;->showList(Ljava/util/List;Z)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 205
    iget-object v4, p0, Lcom/oppo/tribune/square/SquareTopLineControl;->mTopLineView:Lcom/oppo/tribune/square/SquareTopLineView;

    invoke-virtual {v4}, Lcom/oppo/tribune/square/SquareTopLineView;->hideLoadingLayout()V

    .line 206
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/oneplus/tuner/providers/AudioTunerPreference;->putEarphoneConfigEmptyState(Z)V

    goto :goto_0

    .line 215
    :cond_3
    invoke-static {v6}, Lcom/oneplus/tuner/providers/AudioTunerPreference;->putEarphoneConfigEmptyState(Z)V

    .line 217
    invoke-static {}, Lcom/oneplus/tuner/providers/AudioTunerPreference;->getEarphoneTypeId()J

    move-result-wide v2

    .line 218
    .local v2, "type_id":J
    const/4 v1, 0x0

    .line 219
    .local v1, "request_num":I
    iget-object v4, p0, Lcom/oppo/tribune/square/SquareTopLineControl;->mWriteAndReadConfigNumInfo:Lcom/oneplus/tuner/providers/WriteAndReadConfigNumInfo;

    if-eqz v4, :cond_0

    .line 220
    iget-object v4, p0, Lcom/oppo/tribune/square/SquareTopLineControl;->mWriteAndReadConfigNumInfo:Lcom/oneplus/tuner/providers/WriteAndReadConfigNumInfo;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/oneplus/tuner/providers/WriteAndReadConfigNumInfo;->queryRequestNum(Ljava/lang/Long;)J

    move-result-wide v4

    long-to-int v4, v4

    goto :goto_0

    .line 238
    .end local v1    # "request_num":I
    .end local v2    # "type_id":J
    :pswitch_1
    iget-object v4, p0, Lcom/oppo/tribune/square/SquareTopLineControl;->mTopLineView:Lcom/oppo/tribune/square/SquareTopLineView;

    invoke-virtual {v4, p2, v0}, Lcom/oppo/tribune/square/SquareTopLineView;->showList(Ljava/util/List;Z)Z

    goto :goto_0

    .line 241
    :pswitch_2
    iget-object v4, p0, Lcom/oppo/tribune/square/SquareTopLineControl;->mTopLineView:Lcom/oppo/tribune/square/SquareTopLineView;

    invoke-virtual {v4, p2, v0}, Lcom/oppo/tribune/square/SquareTopLineView;->showList(Ljava/util/List;Z)Z

    goto :goto_0

    .line 244
    :pswitch_3
    if-eqz p3, :cond_4

    .line 245
    iget-object v4, p0, Lcom/oppo/tribune/square/SquareTopLineControl;->mTopLineView:Lcom/oppo/tribune/square/SquareTopLineView;

    invoke-virtual {v4, p2, v0}, Lcom/oppo/tribune/square/SquareTopLineView;->updateListByAddList(Ljava/util/List;Z)Z

    goto :goto_0

    .line 247
    :cond_4
    iget-object v4, p0, Lcom/oppo/tribune/square/SquareTopLineControl;->mTopLineView:Lcom/oppo/tribune/square/SquareTopLineView;

    invoke-virtual {v4, p2, v0}, Lcom/oppo/tribune/square/SquareTopLineView;->updateList(Ljava/util/List;Z)Z

    goto :goto_0

    .line 259
    :cond_5
    if-eqz p2, :cond_6

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 260
    :cond_6
    iget-object v4, p0, Lcom/oppo/tribune/square/SquareTopLineControl;->mTopLineView:Lcom/oppo/tribune/square/SquareTopLineView;

    iget-object v5, p0, Lcom/oppo/tribune/square/SquareTopLineControl;->mLoadErrorClickLsn:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v6, v5}, Lcom/oppo/tribune/square/SquareTopLineView;->showLoadingError(ILandroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 201
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getDownDataCallBack()Lcom/oppo/tribune/square/SquareTopLineModel$DownDataCallBack;
    .locals 1

    .prologue
    .line 115
    new-instance v0, Lcom/oppo/tribune/square/SquareTopLineControl$1;

    invoke-direct {v0, p0}, Lcom/oppo/tribune/square/SquareTopLineControl$1;-><init>(Lcom/oppo/tribune/square/SquareTopLineControl;)V

    return-object v0
.end method

.method private getListPullRefreshListener()Lcom/oppo/tribune/ui/pullview/PullRefreshListener;
    .locals 1

    .prologue
    .line 150
    new-instance v0, Lcom/oppo/tribune/square/SquareTopLineControl$2;

    invoke-direct {v0, p0}, Lcom/oppo/tribune/square/SquareTopLineControl$2;-><init>(Lcom/oppo/tribune/square/SquareTopLineControl;)V

    return-object v0
.end method

.method private getLoadMoreListener()Lcom/oppo/tribune/ui/pullview/LoadMoreHandler$LoadMoreListener;
    .locals 1

    .prologue
    .line 163
    new-instance v0, Lcom/oppo/tribune/square/SquareTopLineControl$3;

    invoke-direct {v0, p0}, Lcom/oppo/tribune/square/SquareTopLineControl$3;-><init>(Lcom/oppo/tribune/square/SquareTopLineControl;)V

    return-object v0
.end method


# virtual methods
.method public initViewData()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 99
    iput-boolean v1, p0, Lcom/oppo/tribune/square/SquareTopLineControl;->mIsViewDataInit:Z

    .line 100
    iget v0, p0, Lcom/oppo/tribune/square/SquareTopLineControl;->mType:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/oppo/tribune/square/SquareTopLineControl;->mType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/oppo/tribune/square/SquareTopLineControl;->mType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/oppo/tribune/square/SquareTopLineControl;->mType:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/oppo/tribune/square/SquareTopLineControl;->mType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/square/SquareTopLineControl;->mTopLineView:Lcom/oppo/tribune/square/SquareTopLineView;

    invoke-virtual {v0}, Lcom/oppo/tribune/square/SquareTopLineView;->showLoadingProgress()V

    .line 103
    iget-object v0, p0, Lcom/oppo/tribune/square/SquareTopLineControl;->mTopLineModel:Lcom/oppo/tribune/square/SquareTopLineModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/square/SquareTopLineModel;->initByDB(Ljava/lang/String;)V

    .line 105
    :cond_1
    return-void
.end method

.method public notifyApdater()V
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/oppo/tribune/square/SquareTopLineControl;->mTopLineView:Lcom/oppo/tribune/square/SquareTopLineView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/tribune/square/SquareTopLineControl;->mTopLineView:Lcom/oppo/tribune/square/SquareTopLineView;

    iget-object v0, v0, Lcom/oppo/tribune/square/SquareTopLineView;->mListAdapter:Lcom/oppo/tribune/square/TopLineListAdapter;

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/oppo/tribune/square/SquareTopLineControl;->mTopLineView:Lcom/oppo/tribune/square/SquareTopLineView;

    iget-object v0, v0, Lcom/oppo/tribune/square/SquareTopLineView;->mListAdapter:Lcom/oppo/tribune/square/TopLineListAdapter;

    invoke-virtual {v0}, Lcom/oppo/tribune/square/TopLineListAdapter;->notifyDataSetChanged()V

    .line 326
    :cond_0
    return-void
.end method

.method public onDestory()V
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/oppo/tribune/square/SquareTopLineControl;->mTopLineModel:Lcom/oppo/tribune/square/SquareTopLineModel;

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/oppo/tribune/square/SquareTopLineControl;->mTopLineModel:Lcom/oppo/tribune/square/SquareTopLineModel;

    invoke-virtual {v0}, Lcom/oppo/tribune/square/SquareTopLineModel;->cancelAllTask()V

    .line 345
    :cond_0
    return-void
.end method

.method public onLoadRefresh()V
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/oppo/tribune/square/SquareTopLineControl;->mTopLineView:Lcom/oppo/tribune/square/SquareTopLineView;

    invoke-virtual {v0}, Lcom/oppo/tribune/square/SquareTopLineView;->isListViewVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/tribune/square/SquareTopLineControl;->mTopLineModel:Lcom/oppo/tribune/square/SquareTopLineModel;

    invoke-virtual {v0}, Lcom/oppo/tribune/square/SquareTopLineModel;->isOnPullRefresh()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/tribune/square/SquareTopLineControl;->mTopLineModel:Lcom/oppo/tribune/square/SquareTopLineModel;

    invoke-virtual {v0}, Lcom/oppo/tribune/square/SquareTopLineModel;->isOnLoadMore()Z

    move-result v0

    if-nez v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/oppo/tribune/square/SquareTopLineControl;->mTopLineModel:Lcom/oppo/tribune/square/SquareTopLineModel;

    invoke-virtual {v0}, Lcom/oppo/tribune/square/SquareTopLineModel;->refrehDataInBg()V

    .line 339
    :cond_0
    return-void
.end method

.method public onReLoad()V
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/oppo/tribune/square/SquareTopLineControl;->mTopLineView:Lcom/oppo/tribune/square/SquareTopLineView;

    invoke-virtual {v0}, Lcom/oppo/tribune/square/SquareTopLineView;->showLoadingProgress()V

    .line 330
    iget-object v0, p0, Lcom/oppo/tribune/square/SquareTopLineControl;->mTopLineModel:Lcom/oppo/tribune/square/SquareTopLineModel;

    invoke-virtual {v0}, Lcom/oppo/tribune/square/SquareTopLineModel;->downDataToInit()V

    .line 331
    return-void
.end method

.method public onResume(Z)V
    .locals 2
    .param p1, "activityOnResume"    # Z

    .prologue
    const/4 v1, 0x0

    .line 310
    iget-boolean v0, p0, Lcom/oppo/tribune/square/SquareTopLineControl;->mIsViewDataInit:Z

    if-nez v0, :cond_1

    .line 311
    invoke-virtual {p0}, Lcom/oppo/tribune/square/SquareTopLineControl;->initViewData()V

    .line 312
    iput-boolean v1, p0, Lcom/oppo/tribune/square/SquareTopLineControl;->mOnActivityResume:Z

    .line 320
    :cond_0
    :goto_0
    return-void

    .line 313
    :cond_1
    iget-object v0, p0, Lcom/oppo/tribune/square/SquareTopLineControl;->mTopLineView:Lcom/oppo/tribune/square/SquareTopLineView;

    invoke-virtual {v0}, Lcom/oppo/tribune/square/SquareTopLineView;->isListViewVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    iget-boolean v0, p0, Lcom/oppo/tribune/square/SquareTopLineControl;->mOnActivityResume:Z

    if-nez v0, :cond_2

    if-eqz p1, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/oppo/tribune/square/SquareTopLineControl;->mOnActivityResume:Z

    .line 315
    iget-boolean v0, p0, Lcom/oppo/tribune/square/SquareTopLineControl;->mOnActivityResume:Z

    if-eqz v0, :cond_0

    .line 316
    iput-boolean v1, p0, Lcom/oppo/tribune/square/SquareTopLineControl;->mOnActivityResume:Z

    goto :goto_0

    :cond_3
    move v0, v1

    .line 314
    goto :goto_1
.end method

.method protected onTribuneItemClk(Landroid/content/Context;Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;JI)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "simpleThreadInfo"    # Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;
    .param p3, "tid"    # J
    .param p5, "position"    # I

    .prologue
    .line 296
    invoke-super/range {p0 .. p5}, Lcom/oppo/tribune/square/TribunePostItemController;->onTribuneItemClk(Landroid/content/Context;Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;JI)V

    .line 298
    iget-object v0, p0, Lcom/oppo/tribune/square/SquareTopLineControl;->mTopLineView:Lcom/oppo/tribune/square/SquareTopLineView;

    iget-object v0, v0, Lcom/oppo/tribune/square/SquareTopLineView;->mListAdapter:Lcom/oppo/tribune/square/TopLineListAdapter;

    iget-wide v0, v0, Lcom/oppo/tribune/square/TopLineListAdapter;->mCurrentTid:J

    cmp-long v0, v0, p3

    if-nez v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/oppo/tribune/square/SquareTopLineControl;->mTopLineView:Lcom/oppo/tribune/square/SquareTopLineView;

    iget-object v0, v0, Lcom/oppo/tribune/square/SquareTopLineView;->mListAdapter:Lcom/oppo/tribune/square/TopLineListAdapter;

    const-wide/16 v2, -0x1

    iput-wide v2, v0, Lcom/oppo/tribune/square/TopLineListAdapter;->mCurrentTid:J

    .line 304
    :goto_0
    iget-object v0, p0, Lcom/oppo/tribune/square/SquareTopLineControl;->mTopLineView:Lcom/oppo/tribune/square/SquareTopLineView;

    iget-object v0, v0, Lcom/oppo/tribune/square/SquareTopLineView;->mListAdapter:Lcom/oppo/tribune/square/TopLineListAdapter;

    invoke-virtual {v0}, Lcom/oppo/tribune/square/TopLineListAdapter;->notifyDataSetChanged()V

    .line 306
    iget-object v0, p0, Lcom/oppo/tribune/square/SquareTopLineControl;->mContext:Landroid/content/Context;

    add-int/lit8 v1, p5, 0x1

    invoke-static {v0, v1}, Lcom/oppo/tribune/util/SpecialStatistics;->clickTribuneHotPost(Landroid/content/Context;I)V

    .line 307
    return-void

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/square/SquareTopLineControl;->mTopLineView:Lcom/oppo/tribune/square/SquareTopLineView;

    iget-object v0, v0, Lcom/oppo/tribune/square/SquareTopLineView;->mListAdapter:Lcom/oppo/tribune/square/TopLineListAdapter;

    iput-wide p3, v0, Lcom/oppo/tribune/square/TopLineListAdapter;->mCurrentTid:J

    goto :goto_0
.end method

.method public startSearch(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/tribune/square/SquareTopLineControl;->mIsViewDataInit:Z

    .line 109
    const/4 v0, 0x2

    iput v0, p0, Lcom/oppo/tribune/square/SquareTopLineControl;->mType:I

    .line 110
    iget-object v0, p0, Lcom/oppo/tribune/square/SquareTopLineControl;->mTopLineView:Lcom/oppo/tribune/square/SquareTopLineView;

    invoke-virtual {v0}, Lcom/oppo/tribune/square/SquareTopLineView;->showLoadingProgress()V

    .line 111
    iget-object v0, p0, Lcom/oppo/tribune/square/SquareTopLineControl;->mTopLineModel:Lcom/oppo/tribune/square/SquareTopLineModel;

    invoke-virtual {v0, p1}, Lcom/oppo/tribune/square/SquareTopLineModel;->initByDB(Ljava/lang/String;)V

    .line 112
    return-void
.end method
