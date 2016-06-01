.class public abstract Lcom/oppo/tribune/packshow/parse/SubmitInfoModel;
.super Ljava/lang/Object;
.source "SubmitInfoModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/tribune/packshow/parse/SubmitInfoModel$SubmitInfoTask;,
        Lcom/oppo/tribune/packshow/parse/SubmitInfoModel$SubmitInfoListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mIsCancel:Z

.field private mSubmitInfoListener:Lcom/oppo/tribune/packshow/parse/SubmitInfoModel$SubmitInfoListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oppo/tribune/packshow/parse/SubmitInfoModel$SubmitInfoListener",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mSubmitInfoTask:Lcom/oppo/tribune/packshow/parse/SubmitInfoModel$SubmitInfoTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oppo/tribune/packshow/parse/SubmitInfoModel",
            "<TV;TT;>.SubmitInfoTask;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    .local p0, "this":Lcom/oppo/tribune/packshow/parse/SubmitInfoModel;, "Lcom/oppo/tribune/packshow/parse/SubmitInfoModel<TV;TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/tribune/packshow/parse/SubmitInfoModel;->mIsCancel:Z

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/oppo/tribune/packshow/parse/SubmitInfoModel;)Lcom/oppo/tribune/packshow/parse/SubmitInfoModel$SubmitInfoListener;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/packshow/parse/SubmitInfoModel;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/oppo/tribune/packshow/parse/SubmitInfoModel;->mSubmitInfoListener:Lcom/oppo/tribune/packshow/parse/SubmitInfoModel$SubmitInfoListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oppo/tribune/packshow/parse/SubmitInfoModel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/packshow/parse/SubmitInfoModel;

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/oppo/tribune/packshow/parse/SubmitInfoModel;->mIsCancel:Z

    return v0
.end method


# virtual methods
.method public cancelSubmitTask()V
    .locals 3

    .prologue
    .local p0, "this":Lcom/oppo/tribune/packshow/parse/SubmitInfoModel;, "Lcom/oppo/tribune/packshow/parse/SubmitInfoModel<TV;TT;>;"
    const/4 v2, 0x1

    .line 51
    iget-object v0, p0, Lcom/oppo/tribune/packshow/parse/SubmitInfoModel;->mSubmitInfoTask:Lcom/oppo/tribune/packshow/parse/SubmitInfoModel$SubmitInfoTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/tribune/packshow/parse/SubmitInfoModel;->mSubmitInfoTask:Lcom/oppo/tribune/packshow/parse/SubmitInfoModel$SubmitInfoTask;

    invoke-virtual {v0}, Lcom/oppo/tribune/packshow/parse/SubmitInfoModel$SubmitInfoTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    .line 53
    iput-boolean v2, p0, Lcom/oppo/tribune/packshow/parse/SubmitInfoModel;->mIsCancel:Z

    .line 54
    iget-object v0, p0, Lcom/oppo/tribune/packshow/parse/SubmitInfoModel;->mSubmitInfoTask:Lcom/oppo/tribune/packshow/parse/SubmitInfoModel$SubmitInfoTask;

    invoke-virtual {v0, v2}, Lcom/oppo/tribune/packshow/parse/SubmitInfoModel$SubmitInfoTask;->cancel(Z)Z

    .line 56
    :cond_0
    return-void
.end method

.method public setSubmitInfoListener(Lcom/oppo/tribune/packshow/parse/SubmitInfoModel$SubmitInfoListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oppo/tribune/packshow/parse/SubmitInfoModel$SubmitInfoListener",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, "this":Lcom/oppo/tribune/packshow/parse/SubmitInfoModel;, "Lcom/oppo/tribune/packshow/parse/SubmitInfoModel<TV;TT;>;"
    .local p1, "listener":Lcom/oppo/tribune/packshow/parse/SubmitInfoModel$SubmitInfoListener;, "Lcom/oppo/tribune/packshow/parse/SubmitInfoModel$SubmitInfoListener<TT;>;"
    iput-object p1, p0, Lcom/oppo/tribune/packshow/parse/SubmitInfoModel;->mSubmitInfoListener:Lcom/oppo/tribune/packshow/parse/SubmitInfoModel$SubmitInfoListener;

    .line 42
    return-void
.end method

.method public startSubmitTask(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TV;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "this":Lcom/oppo/tribune/packshow/parse/SubmitInfoModel;, "Lcom/oppo/tribune/packshow/parse/SubmitInfoModel<TV;TT;>;"
    .local p2, "v":Ljava/lang/Object;, "TV;"
    new-instance v0, Lcom/oppo/tribune/packshow/parse/SubmitInfoModel$SubmitInfoTask;

    invoke-direct {v0, p0, p1}, Lcom/oppo/tribune/packshow/parse/SubmitInfoModel$SubmitInfoTask;-><init>(Lcom/oppo/tribune/packshow/parse/SubmitInfoModel;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oppo/tribune/packshow/parse/SubmitInfoModel;->mSubmitInfoTask:Lcom/oppo/tribune/packshow/parse/SubmitInfoModel$SubmitInfoTask;

    .line 47
    iget-object v0, p0, Lcom/oppo/tribune/packshow/parse/SubmitInfoModel;->mSubmitInfoTask:Lcom/oppo/tribune/packshow/parse/SubmitInfoModel$SubmitInfoTask;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/packshow/parse/SubmitInfoModel$SubmitInfoTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 48
    return-void
.end method

.method protected abstract submitInfo(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TV;)TT;"
        }
    .end annotation
.end method
