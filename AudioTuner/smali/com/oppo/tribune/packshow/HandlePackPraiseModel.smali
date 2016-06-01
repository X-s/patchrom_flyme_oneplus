.class public Lcom/oppo/tribune/packshow/HandlePackPraiseModel;
.super Ljava/lang/Object;
.source "HandlePackPraiseModel.java"

# interfaces
.implements Lcom/oppo/tribune/packshow/HandlePraiseModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/tribune/packshow/HandlePackPraiseModel$Task;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPraiseListener:Lcom/oppo/tribune/packshow/HandlePraiseModel$OnPraiseFinishListener;

.field private mTaskPraise:Lcom/oppo/tribune/packshow/HandlePackPraiseModel$Task;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/oppo/tribune/packshow/HandlePraiseModel$OnPraiseFinishListener;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "praiseListener"    # Lcom/oppo/tribune/packshow/HandlePraiseModel$OnPraiseFinishListener;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/oppo/tribune/packshow/HandlePackPraiseModel;->mContext:Landroid/content/Context;

    .line 25
    iput-object p2, p0, Lcom/oppo/tribune/packshow/HandlePackPraiseModel;->mPraiseListener:Lcom/oppo/tribune/packshow/HandlePraiseModel$OnPraiseFinishListener;

    .line 26
    return-void
.end method

.method static synthetic access$100(Lcom/oppo/tribune/packshow/HandlePackPraiseModel;)Lcom/oppo/tribune/packshow/HandlePraiseModel$OnPraiseFinishListener;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/packshow/HandlePackPraiseModel;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/oppo/tribune/packshow/HandlePackPraiseModel;->mPraiseListener:Lcom/oppo/tribune/packshow/HandlePraiseModel$OnPraiseFinishListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oppo/tribune/packshow/HandlePackPraiseModel;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/packshow/HandlePackPraiseModel;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/oppo/tribune/packshow/HandlePackPraiseModel;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oppo/tribune/packshow/HandlePackPraiseModel;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/packshow/HandlePackPraiseModel;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/oppo/tribune/packshow/HandlePackPraiseModel;->onFinishPraise(ILjava/lang/String;)V

    return-void
.end method

.method private onFinishPraise(ILjava/lang/String;)V
    .locals 3
    .param p1, "msgCode"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    const v2, 0x7f0c06ce

    .line 99
    iget-object v1, p0, Lcom/oppo/tribune/packshow/HandlePackPraiseModel;->mPraiseListener:Lcom/oppo/tribune/packshow/HandlePraiseModel$OnPraiseFinishListener;

    if-nez v1, :cond_1

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    const/4 v1, -0x5

    if-eq p1, v1, :cond_0

    .line 114
    if-nez p1, :cond_3

    const/4 v0, 0x1

    .line 116
    .local v0, "isSucess":Z
    :goto_1
    invoke-static {p2}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 118
    const/4 v1, 0x4

    if-ne p1, v1, :cond_4

    .line 119
    iget-object v1, p0, Lcom/oppo/tribune/packshow/HandlePackPraiseModel;->mContext:Landroid/content/Context;

    const v2, 0x7f0c06cc

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 135
    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/oppo/tribune/packshow/HandlePackPraiseModel;->mPraiseListener:Lcom/oppo/tribune/packshow/HandlePraiseModel$OnPraiseFinishListener;

    invoke-interface {v1, v0, p1, p2}, Lcom/oppo/tribune/packshow/HandlePraiseModel$OnPraiseFinishListener;->onFinishPraise(ZILjava/lang/String;)V

    goto :goto_0

    .line 114
    .end local v0    # "isSucess":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 121
    .restart local v0    # "isSucess":Z
    :cond_4
    const/4 v1, -0x1

    if-ne p1, v1, :cond_5

    .line 122
    iget-object v1, p0, Lcom/oppo/tribune/packshow/HandlePackPraiseModel;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0620

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    .line 123
    :cond_5
    if-nez p1, :cond_6

    .line 124
    iget-object v1, p0, Lcom/oppo/tribune/packshow/HandlePackPraiseModel;->mContext:Landroid/content/Context;

    const v2, 0x7f0c06cd

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    .line 125
    :cond_6
    const/4 v1, 0x2

    if-ne p1, v1, :cond_7

    .line 126
    iget-object v1, p0, Lcom/oppo/tribune/packshow/HandlePackPraiseModel;->mContext:Landroid/content/Context;

    const v2, 0x7f0c06cf

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    .line 128
    :cond_7
    iget-object v1, p0, Lcom/oppo/tribune/packshow/HandlePackPraiseModel;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    .line 130
    :cond_8
    const-string v1, "HandlePraiseResult.praise.error"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 132
    iget-object v1, p0, Lcom/oppo/tribune/packshow/HandlePackPraiseModel;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_2
.end method


# virtual methods
.method public addPraise(J)V
    .locals 3
    .param p1, "configId"    # J

    .prologue
    .line 29
    new-instance v0, Lcom/oppo/tribune/packshow/HandlePackPraiseModel$Task;

    invoke-direct {v0, p0, p1, p2}, Lcom/oppo/tribune/packshow/HandlePackPraiseModel$Task;-><init>(Lcom/oppo/tribune/packshow/HandlePackPraiseModel;J)V

    iput-object v0, p0, Lcom/oppo/tribune/packshow/HandlePackPraiseModel;->mTaskPraise:Lcom/oppo/tribune/packshow/HandlePackPraiseModel$Task;

    .line 30
    iget-object v0, p0, Lcom/oppo/tribune/packshow/HandlePackPraiseModel;->mTaskPraise:Lcom/oppo/tribune/packshow/HandlePackPraiseModel$Task;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/packshow/HandlePackPraiseModel$Task;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 33
    iget-object v0, p0, Lcom/oppo/tribune/packshow/HandlePackPraiseModel;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oppo/tribune/util/SpecialStatistics;->packPraise(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method public cancelHandle()V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/oppo/tribune/packshow/HandlePackPraiseModel;->mTaskPraise:Lcom/oppo/tribune/packshow/HandlePackPraiseModel$Task;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/oppo/tribune/packshow/HandlePackPraiseModel;->mTaskPraise:Lcom/oppo/tribune/packshow/HandlePackPraiseModel$Task;

    invoke-virtual {v0}, Lcom/oppo/tribune/packshow/HandlePackPraiseModel$Task;->cancelTask()V

    .line 40
    :cond_0
    return-void
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/oppo/tribune/packshow/HandlePackPraiseModel;->mTaskPraise:Lcom/oppo/tribune/packshow/HandlePackPraiseModel$Task;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/tribune/packshow/HandlePackPraiseModel;->mTaskPraise:Lcom/oppo/tribune/packshow/HandlePackPraiseModel$Task;

    # getter for: Lcom/oppo/tribune/packshow/HandlePackPraiseModel$Task;->mIsRunning:Z
    invoke-static {v0}, Lcom/oppo/tribune/packshow/HandlePackPraiseModel$Task;->access$000(Lcom/oppo/tribune/packshow/HandlePackPraiseModel$Task;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
