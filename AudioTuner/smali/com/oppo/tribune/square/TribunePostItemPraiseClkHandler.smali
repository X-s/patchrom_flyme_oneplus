.class public Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler;
.super Lcom/oppo/tribune/packshow/list/PraiseClickHandler;
.source "TribunePostItemPraiseClkHandler.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/oppo/tribune/packshow/list/PraiseClickHandler;-><init>(Landroid/content/Context;)V

    .line 21
    return-void
.end method

.method static synthetic access$000(Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler;Landroid/widget/TextView;)V
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler;->startScaleAnim(Landroid/widget/TextView;)V

    return-void
.end method

.method static synthetic access$100(Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler;)Lcom/oppo/tribune/packshow/list/PraiseClickHandler$PraisePostCallback;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler;->mPraisePostCallback:Lcom/oppo/tribune/packshow/list/PraiseClickHandler$PraisePostCallback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler;J)Z
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler;
    .param p1, "x1"    # J

    .prologue
    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler;->checkPraiseSelf(J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler;ZLandroid/widget/TextView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Landroid/widget/TextView;

    .prologue
    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler;->checkHavePraise(ZLandroid/widget/TextView;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler;

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler;->checkNetwork()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler;Landroid/widget/TextView;)Lcom/oppo/tribune/packshow/HandlePackPraiseModel;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler;->getTagModelFromTxv(Landroid/widget/TextView;)Lcom/oppo/tribune/packshow/HandlePackPraiseModel;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler;ILcom/oppo/tribune/square/TribunePostItemView;Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;Landroid/widget/TextView;)Lcom/oppo/tribune/packshow/HandlePraiseModel$OnPraiseFinishListener;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/oppo/tribune/square/TribunePostItemView;
    .param p3, "x3"    # Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;
    .param p4, "x4"    # Landroid/widget/TextView;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler;->getPraiseListener(ILcom/oppo/tribune/square/TribunePostItemView;Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;Landroid/widget/TextView;)Lcom/oppo/tribune/packshow/HandlePraiseModel$OnPraiseFinishListener;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler;)Lcom/oppo/tribune/packshow/list/PraiseClickHandler$PraisePostCallback;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler;->mPraisePostCallback:Lcom/oppo/tribune/packshow/list/PraiseClickHandler$PraisePostCallback;

    return-object v0
.end method

.method private getPraiseListener(ILcom/oppo/tribune/square/TribunePostItemView;Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;Landroid/widget/TextView;)Lcom/oppo/tribune/packshow/HandlePraiseModel$OnPraiseFinishListener;
    .locals 6
    .param p1, "position"    # I
    .param p2, "itemView"    # Lcom/oppo/tribune/square/TribunePostItemView;
    .param p3, "entity"    # Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;
    .param p4, "praiseTxv"    # Landroid/widget/TextView;

    .prologue
    .line 83
    new-instance v0, Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler$2;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p2

    move-object v4, p3

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler$2;-><init>(Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler;Landroid/widget/TextView;Lcom/oppo/tribune/square/TribunePostItemView;Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;I)V

    return-object v0
.end method


# virtual methods
.method public clearTxvTag(Landroid/widget/TextView;)V
    .locals 3
    .param p1, "praiseTxv"    # Landroid/widget/TextView;

    .prologue
    .line 24
    if-eqz p1, :cond_1

    .line 25
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler;->getTagModelFromTxv(Landroid/widget/TextView;)Lcom/oppo/tribune/packshow/HandlePackPraiseModel;

    move-result-object v0

    .line 26
    .local v0, "model":Lcom/oppo/tribune/packshow/HandlePraiseModel;
    if-eqz v0, :cond_0

    .line 27
    invoke-interface {v0}, Lcom/oppo/tribune/packshow/HandlePraiseModel;->cancelHandle()V

    .line 29
    :cond_0
    const v1, 0x7f0b000e

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 30
    const v1, 0x7f0b0010

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 32
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 34
    .end local v0    # "model":Lcom/oppo/tribune/packshow/HandlePraiseModel;
    :cond_1
    return-void
.end method

.method public getPraiseClkListener(ILcom/oppo/tribune/square/TribunePostItemView;Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p1, "position"    # I
    .param p2, "itemView"    # Lcom/oppo/tribune/square/TribunePostItemView;
    .param p3, "entity"    # Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;

    .prologue
    .line 39
    new-instance v0, Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler$1;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler$1;-><init>(Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler;Lcom/oppo/tribune/square/TribunePostItemView;Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;I)V

    return-object v0
.end method
