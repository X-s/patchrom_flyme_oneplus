.class public Lcom/oppo/tribune/square/SquareTopLineModel;
.super Ljava/lang/Object;
.source "SquareTopLineModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;,
        Lcom/oppo/tribune/square/SquareTopLineModel$DownDataCallBack;
    }
.end annotation


# instance fields
.field public CONFIG_LOCAL:I

.field public CONFIG_NOTSHAREDID:I

.field private mBgRefreshTask:Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;

.field private mCategoryId:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCurrentPage:I

.field private mDownDataCallBack:Lcom/oppo/tribune/square/SquareTopLineModel$DownDataCallBack;

.field private mHasMore:Z

.field private mInitByDBTask:Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;

.field private mLoadMoreTask:Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;

.field private mOrder:Ljava/lang/String;

.field private mPullRefreshTask:Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;

.field private mRecentlyUsedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSearchString:Ljava/lang/String;

.field private mSearchThreadList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mToInitTask:Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;

.field private mTopThreadDao:Lcom/oppo/tribune/provider/forum/dao/SimpleThreadDao;

.field private mType:I

.field private mUserCollectionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mUserConfigList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/oppo/tribune/square/SquareTopLineModel$DownDataCallBack;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Lcom/oppo/tribune/square/SquareTopLineModel$DownDataCallBack;
    .param p3, "type"    # I

    .prologue
    const-wide/16 v4, -0x1

    const/4 v2, 0x1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput v2, p0, Lcom/oppo/tribune/square/SquareTopLineModel;->CONFIG_LOCAL:I

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lcom/oppo/tribune/square/SquareTopLineModel;->CONFIG_NOTSHAREDID:I

    .line 54
    iput v2, p0, Lcom/oppo/tribune/square/SquareTopLineModel;->mCurrentPage:I

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/tribune/square/SquareTopLineModel;->mHasMore:Z

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/tribune/square/SquareTopLineModel;->mSearchString:Ljava/lang/String;

    .line 76
    iput-object p1, p0, Lcom/oppo/tribune/square/SquareTopLineModel;->mContext:Landroid/content/Context;

    .line 77
    iput-object p2, p0, Lcom/oppo/tribune/square/SquareTopLineModel;->mDownDataCallBack:Lcom/oppo/tribune/square/SquareTopLineModel$DownDataCallBack;

    .line 78
    iput p3, p0, Lcom/oppo/tribune/square/SquareTopLineModel;->mType:I

    .line 79
    iget v0, p0, Lcom/oppo/tribune/square/SquareTopLineModel;->mType:I

    if-ne v0, v2, :cond_1

    .line 80
    new-instance v0, Lcom/oppo/tribune/provider/forum/dao/SimpleThreadDao;

    iget-object v1, p0, Lcom/oppo/tribune/square/SquareTopLineModel;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/oppo/tribune/provider/forum/dao/SimpleThreadDao;-><init>(Landroid/content/Context;IJ)V

    iput-object v0, p0, Lcom/oppo/tribune/square/SquareTopLineModel;->mTopThreadDao:Lcom/oppo/tribune/provider/forum/dao/SimpleThreadDao;

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    iget v0, p0, Lcom/oppo/tribune/square/SquareTopLineModel;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oppo/tribune/square/SquareTopLineModel;->mSearchThreadList:Ljava/util/List;

    goto :goto_0

    .line 85
    :cond_2
    iget v0, p0, Lcom/oppo/tribune/square/SquareTopLineModel;->mType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oppo/tribune/square/SquareTopLineModel;->mRecentlyUsedList:Ljava/util/List;

    goto :goto_0

    .line 91
    :cond_3
    iget v0, p0, Lcom/oppo/tribune/square/SquareTopLineModel;->mType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oppo/tribune/square/SquareTopLineModel;->mUserCollectionList:Ljava/util/List;

    goto :goto_0

    .line 97
    :cond_4
    iget v0, p0, Lcom/oppo/tribune/square/SquareTopLineModel;->mType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 98
    new-instance v0, Lcom/oppo/tribune/provider/forum/dao/SimpleThreadDao;

    iget-object v1, p0, Lcom/oppo/tribune/square/SquareTopLineModel;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/oppo/tribune/provider/forum/dao/SimpleThreadDao;-><init>(Landroid/content/Context;IJ)V

    iput-object v0, p0, Lcom/oppo/tribune/square/SquareTopLineModel;->mTopThreadDao:Lcom/oppo/tribune/provider/forum/dao/SimpleThreadDao;

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oppo/tribune/square/SquareTopLineModel;->mUserConfigList:Ljava/util/List;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/oppo/tribune/square/SquareTopLineModel$DownDataCallBack;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Lcom/oppo/tribune/square/SquareTopLineModel$DownDataCallBack;
    .param p3, "type"    # I
    .param p4, "categoryId"    # Ljava/lang/String;
    .param p5, "order"    # Ljava/lang/String;

    .prologue
    const-wide/16 v4, -0x1

    const/4 v2, 0x1

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput v2, p0, Lcom/oppo/tribune/square/SquareTopLineModel;->CONFIG_LOCAL:I

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lcom/oppo/tribune/square/SquareTopLineModel;->CONFIG_NOTSHAREDID:I

    .line 54
    iput v2, p0, Lcom/oppo/tribune/square/SquareTopLineModel;->mCurrentPage:I

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/tribune/square/SquareTopLineModel;->mHasMore:Z

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/tribune/square/SquareTopLineModel;->mSearchString:Ljava/lang/String;

    .line 111
    iput-object p1, p0, Lcom/oppo/tribune/square/SquareTopLineModel;->mContext:Landroid/content/Context;

    .line 112
    iput-object p2, p0, Lcom/oppo/tribune/square/SquareTopLineModel;->mDownDataCallBack:Lcom/oppo/tribune/square/SquareTopLineModel$DownDataCallBack;

    .line 113
    iput p3, p0, Lcom/oppo/tribune/square/SquareTopLineModel;->mType:I

    .line 114
    iput-object p4, p0, Lcom/oppo/tribune/square/SquareTopLineModel;->mCategoryId:Ljava/lang/String;

    .line 115
    iput-object p5, p0, Lcom/oppo/tribune/square/SquareTopLineModel;->mOrder:Ljava/lang/String;

    .line 116
    iget v0, p0, Lcom/oppo/tribune/square/SquareTopLineModel;->mType:I

    if-ne v0, v2, :cond_1

    .line 117
    new-instance v0, Lcom/oppo/tribune/provider/forum/dao/SimpleThreadDao;

    iget-object v1, p0, Lcom/oppo/tribune/square/SquareTopLineModel;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/oppo/tribune/provider/forum/dao/SimpleThreadDao;-><init>(Landroid/content/Context;IJ)V

    iput-object v0, p0, Lcom/oppo/tribune/square/SquareTopLineModel;->mTopThreadDao:Lcom/oppo/tribune/provider/forum/dao/SimpleThreadDao;

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    iget v0, p0, Lcom/oppo/tribune/square/SquareTopLineModel;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oppo/tribune/square/SquareTopLineModel;->mSearchThreadList:Ljava/util/List;

    goto :goto_0

    .line 122
    :cond_2
    iget v0, p0, Lcom/oppo/tribune/square/SquareTopLineModel;->mType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oppo/tribune/square/SquareTopLineModel;->mRecentlyUsedList:Ljava/util/List;

    goto :goto_0

    .line 128
    :cond_3
    iget v0, p0, Lcom/oppo/tribune/square/SquareTopLineModel;->mType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oppo/tribune/square/SquareTopLineModel;->mUserCollectionList:Ljava/util/List;

    goto :goto_0

    .line 134
    :cond_4
    iget v0, p0, Lcom/oppo/tribune/square/SquareTopLineModel;->mType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 135
    new-instance v0, Lcom/oppo/tribune/provider/forum/dao/SimpleThreadDao;

    iget-object v1, p0, Lcom/oppo/tribune/square/SquareTopLineModel;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/oppo/tribune/provider/forum/dao/SimpleThreadDao;-><init>(Landroid/content/Context;IJ)V

    iput-object v0, p0, Lcom/oppo/tribune/square/SquareTopLineModel;->mTopThreadDao:Lcom/oppo/tribune/provider/forum/dao/SimpleThreadDao;

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oppo/tribune/square/SquareTopLineModel;->mUserConfigList:Ljava/util/List;

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/oppo/tribune/square/SquareTopLineModel;)I
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/square/SquareTopLineModel;

    .prologue
    .line 27
    iget v0, p0, Lcom/oppo/tribune/square/SquareTopLineModel;->mType:I

    return v0
.end method

.method static synthetic access$1000(Lcom/oppo/tribune/square/SquareTopLineModel;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/square/SquareTopLineModel;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/oppo/tribune/square/SquareTopLineModel;->mUserCollectionList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/oppo/tribune/square/SquareTopLineModel;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/square/SquareTopLineModel;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/oppo/tribune/square/SquareTopLineModel;->mRecentlyUsedList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/oppo/tribune/square/SquareTopLineModel;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/square/SquareTopLineModel;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/oppo/tribune/square/SquareTopLineModel;->mUserConfigList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/oppo/tribune/square/SquareTopLineModel;Ljava/util/List;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/square/SquareTopLineModel;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/oppo/tribune/square/SquareTopLineModel;->insertDatabase(Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/oppo/tribune/square/SquareTopLineModel;Lcom/oppo/tribune/square/RefreshType;)V
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/square/SquareTopLineModel;
    .param p1, "x1"    # Lcom/oppo/tribune/square/RefreshType;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/oppo/tribune/square/SquareTopLineModel;->updateCurrentPage(Lcom/oppo/tribune/square/RefreshType;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/oppo/tribune/square/SquareTopLineModel;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/square/SquareTopLineModel;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/oppo/tribune/square/SquareTopLineModel;->setHasMore(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/oppo/tribune/square/SquareTopLineModel;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/square/SquareTopLineModel;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/oppo/tribune/square/SquareTopLineModel;->mCategoryId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oppo/tribune/square/SquareTopLineModel;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/square/SquareTopLineModel;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/oppo/tribune/square/SquareTopLineModel;->mOrder:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oppo/tribune/square/SquareTopLineModel;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/square/SquareTopLineModel;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/oppo/tribune/square/SquareTopLineModel;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oppo/tribune/square/SquareTopLineModel;)Lcom/oppo/tribune/square/SquareTopLineModel$DownDataCallBack;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/square/SquareTopLineModel;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/oppo/tribune/square/SquareTopLineModel;->mDownDataCallBack:Lcom/oppo/tribune/square/SquareTopLineModel$DownDataCallBack;

    return-object v0
.end method

.method static synthetic access$600(Lcom/oppo/tribune/square/SquareTopLineModel;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/square/SquareTopLineModel;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/oppo/tribune/square/SquareTopLineModel;->readFirstPageFormDB()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/oppo/tribune/square/SquareTopLineModel;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/square/SquareTopLineModel;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/oppo/tribune/square/SquareTopLineModel;->mSearchThreadList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$800(Lcom/oppo/tribune/square/SquareTopLineModel;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/square/SquareTopLineModel;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/oppo/tribune/square/SquareTopLineModel;->mSearchString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/oppo/tribune/square/SquareTopLineModel;Ljava/util/List;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/square/SquareTopLineModel;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/oppo/tribune/square/SquareTopLineModel;->updateDataBase(Ljava/util/List;I)Z

    move-result v0

    return v0
.end method

.method private cancelTask(Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;)V
    .locals 0
    .param p1, "task"    # Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;

    .prologue
    .line 183
    if-eqz p1, :cond_0

    .line 184
    invoke-virtual {p1}, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;->cancelTask()V

    .line 186
    :cond_0
    return-void
.end method

.method private insertDatabase(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 403
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;>;"
    iget-object v0, p0, Lcom/oppo/tribune/square/SquareTopLineModel;->mTopThreadDao:Lcom/oppo/tribune/provider/forum/dao/SimpleThreadDao;

    invoke-virtual {v0, p1}, Lcom/oppo/tribune/provider/forum/dao/SimpleThreadDao;->insert(Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method private readFirstPageFormDB()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 411
    iget-object v0, p0, Lcom/oppo/tribune/square/SquareTopLineModel;->mTopThreadDao:Lcom/oppo/tribune/provider/forum/dao/SimpleThreadDao;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/provider/forum/dao/SimpleThreadDao;->queryPage(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private readFormDataBase()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 415
    iget-object v0, p0, Lcom/oppo/tribune/square/SquareTopLineModel;->mTopThreadDao:Lcom/oppo/tribune/provider/forum/dao/SimpleThreadDao;

    invoke-virtual {v0}, Lcom/oppo/tribune/provider/forum/dao/SimpleThreadDao;->query()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private setHasMore(Z)V
    .locals 0
    .param p1, "hasMore"    # Z

    .prologue
    .line 395
    iput-boolean p1, p0, Lcom/oppo/tribune/square/SquareTopLineModel;->mHasMore:Z

    .line 396
    return-void
.end method

.method private updateCurrentPage(Lcom/oppo/tribune/square/RefreshType;)V
    .locals 1
    .param p1, "refreshType"    # Lcom/oppo/tribune/square/RefreshType;

    .prologue
    .line 387
    sget-object v0, Lcom/oppo/tribune/square/RefreshType;->LOAD_MORE:Lcom/oppo/tribune/square/RefreshType;

    if-ne p1, v0, :cond_0

    .line 388
    iget v0, p0, Lcom/oppo/tribune/square/SquareTopLineModel;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/tribune/square/SquareTopLineModel;->mCurrentPage:I

    .line 392
    :goto_0
    return-void

    .line 390
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/oppo/tribune/square/SquareTopLineModel;->mCurrentPage:I

    goto :goto_0
.end method

.method private updateDataBase(Ljava/util/List;I)Z
    .locals 1
    .param p2, "page"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 407
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;>;"
    iget-object v0, p0, Lcom/oppo/tribune/square/SquareTopLineModel;->mTopThreadDao:Lcom/oppo/tribune/provider/forum/dao/SimpleThreadDao;

    invoke-virtual {v0, p1, p2}, Lcom/oppo/tribune/provider/forum/dao/SimpleThreadDao;->update(Ljava/util/List;I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public cancelAllTask()V
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/oppo/tribune/square/SquareTopLineModel;->mInitByDBTask:Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;

    invoke-direct {p0, v0}, Lcom/oppo/tribune/square/SquareTopLineModel;->cancelTask(Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;)V

    .line 420
    iget-object v0, p0, Lcom/oppo/tribune/square/SquareTopLineModel;->mPullRefreshTask:Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;

    invoke-direct {p0, v0}, Lcom/oppo/tribune/square/SquareTopLineModel;->cancelTask(Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;)V

    .line 421
    iget-object v0, p0, Lcom/oppo/tribune/square/SquareTopLineModel;->mLoadMoreTask:Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;

    invoke-direct {p0, v0}, Lcom/oppo/tribune/square/SquareTopLineModel;->cancelTask(Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;)V

    .line 422
    iget-object v0, p0, Lcom/oppo/tribune/square/SquareTopLineModel;->mBgRefreshTask:Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;

    invoke-direct {p0, v0}, Lcom/oppo/tribune/square/SquareTopLineModel;->cancelTask(Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;)V

    .line 423
    return-void
.end method

.method public doLoadMore()V
    .locals 4

    .prologue
    .line 177
    iget-object v0, p0, Lcom/oppo/tribune/square/SquareTopLineModel;->mBgRefreshTask:Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;

    invoke-direct {p0, v0}, Lcom/oppo/tribune/square/SquareTopLineModel;->cancelTask(Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;)V

    .line 178
    new-instance v0, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;

    sget-object v1, Lcom/oppo/tribune/square/RefreshType;->LOAD_MORE:Lcom/oppo/tribune/square/RefreshType;

    invoke-direct {v0, p0, v1}, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;-><init>(Lcom/oppo/tribune/square/SquareTopLineModel;Lcom/oppo/tribune/square/RefreshType;)V

    iput-object v0, p0, Lcom/oppo/tribune/square/SquareTopLineModel;->mLoadMoreTask:Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;

    .line 179
    iget-object v0, p0, Lcom/oppo/tribune/square/SquareTopLineModel;->mLoadMoreTask:Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    iget v3, p0, Lcom/oppo/tribune/square/SquareTopLineModel;->mCurrentPage:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 180
    return-void
.end method

.method public doPullRefresh()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 163
    iget-object v0, p0, Lcom/oppo/tribune/square/SquareTopLineModel;->mBgRefreshTask:Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;

    invoke-direct {p0, v0}, Lcom/oppo/tribune/square/SquareTopLineModel;->cancelTask(Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;)V

    .line 164
    new-instance v0, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;

    sget-object v1, Lcom/oppo/tribune/square/RefreshType;->PULL_REFRESH:Lcom/oppo/tribune/square/RefreshType;

    invoke-direct {v0, p0, v1}, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;-><init>(Lcom/oppo/tribune/square/SquareTopLineModel;Lcom/oppo/tribune/square/RefreshType;)V

    iput-object v0, p0, Lcom/oppo/tribune/square/SquareTopLineModel;->mPullRefreshTask:Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;

    .line 165
    iget-object v0, p0, Lcom/oppo/tribune/square/SquareTopLineModel;->mPullRefreshTask:Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;

    new-array v1, v3, [Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 166
    return-void
.end method

.method public downDataToInit()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 153
    new-instance v0, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;

    sget-object v1, Lcom/oppo/tribune/square/RefreshType;->TO_INIT:Lcom/oppo/tribune/square/RefreshType;

    invoke-direct {v0, p0, v1}, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;-><init>(Lcom/oppo/tribune/square/SquareTopLineModel;Lcom/oppo/tribune/square/RefreshType;)V

    iput-object v0, p0, Lcom/oppo/tribune/square/SquareTopLineModel;->mToInitTask:Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;

    .line 154
    iget-object v0, p0, Lcom/oppo/tribune/square/SquareTopLineModel;->mToInitTask:Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;

    new-array v1, v3, [Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 155
    return-void
.end method

.method public hasMore()Z
    .locals 1

    .prologue
    .line 399
    iget-boolean v0, p0, Lcom/oppo/tribune/square/SquareTopLineModel;->mHasMore:Z

    return v0
.end method

.method public initByDB(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/oppo/tribune/square/SquareTopLineModel;->mSearchString:Ljava/lang/String;

    .line 148
    new-instance v0, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;

    sget-object v1, Lcom/oppo/tribune/square/RefreshType;->INIT_BY_DB:Lcom/oppo/tribune/square/RefreshType;

    invoke-direct {v0, p0, v1}, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;-><init>(Lcom/oppo/tribune/square/SquareTopLineModel;Lcom/oppo/tribune/square/RefreshType;)V

    iput-object v0, p0, Lcom/oppo/tribune/square/SquareTopLineModel;->mInitByDBTask:Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;

    .line 149
    iget-object v0, p0, Lcom/oppo/tribune/square/SquareTopLineModel;->mInitByDBTask:Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 150
    return-void
.end method

.method public isOnLoadMore()Z
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/oppo/tribune/square/SquareTopLineModel;->mLoadMoreTask:Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/tribune/square/SquareTopLineModel;->mLoadMoreTask:Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;

    # getter for: Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;->isRunning:Z
    invoke-static {v0}, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;->access$000(Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOnPullRefresh()Z
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/oppo/tribune/square/SquareTopLineModel;->mPullRefreshTask:Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/tribune/square/SquareTopLineModel;->mPullRefreshTask:Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;

    # getter for: Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;->isRunning:Z
    invoke-static {v0}, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;->access$000(Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public refrehDataInBg()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 158
    new-instance v0, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;

    sget-object v1, Lcom/oppo/tribune/square/RefreshType;->AFTER_INIT:Lcom/oppo/tribune/square/RefreshType;

    invoke-direct {v0, p0, v1}, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;-><init>(Lcom/oppo/tribune/square/SquareTopLineModel;Lcom/oppo/tribune/square/RefreshType;)V

    iput-object v0, p0, Lcom/oppo/tribune/square/SquareTopLineModel;->mBgRefreshTask:Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;

    .line 159
    iget-object v0, p0, Lcom/oppo/tribune/square/SquareTopLineModel;->mBgRefreshTask:Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;

    new-array v1, v3, [Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/square/SquareTopLineModel$RefreshTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 160
    return-void
.end method
