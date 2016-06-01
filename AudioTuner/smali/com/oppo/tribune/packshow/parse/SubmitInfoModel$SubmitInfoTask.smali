.class Lcom/oppo/tribune/packshow/parse/SubmitInfoModel$SubmitInfoTask;
.super Landroid/os/AsyncTask;
.source "SubmitInfoModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/packshow/parse/SubmitInfoModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SubmitInfoTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<TV;",
        "Ljava/lang/Void;",
        "TT;>;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/oppo/tribune/packshow/parse/SubmitInfoModel;


# direct methods
.method public constructor <init>(Lcom/oppo/tribune/packshow/parse/SubmitInfoModel;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    .local p0, "this":Lcom/oppo/tribune/packshow/parse/SubmitInfoModel$SubmitInfoTask;, "Lcom/oppo/tribune/packshow/parse/SubmitInfoModel<TV;TT;>.SubmitInfoTask;"
    iput-object p1, p0, Lcom/oppo/tribune/packshow/parse/SubmitInfoModel$SubmitInfoTask;->this$0:Lcom/oppo/tribune/packshow/parse/SubmitInfoModel;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 63
    iput-object p2, p0, Lcom/oppo/tribune/packshow/parse/SubmitInfoModel$SubmitInfoTask;->mContext:Landroid/content/Context;

    .line 64
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TV;)TT;"
        }
    .end annotation

    .prologue
    .line 77
    .local p0, "this":Lcom/oppo/tribune/packshow/parse/SubmitInfoModel$SubmitInfoTask;, "Lcom/oppo/tribune/packshow/parse/SubmitInfoModel<TV;TT;>.SubmitInfoTask;"
    .local p1, "params":[Ljava/lang/Object;, "[TV;"
    iget-object v0, p0, Lcom/oppo/tribune/packshow/parse/SubmitInfoModel$SubmitInfoTask;->this$0:Lcom/oppo/tribune/packshow/parse/SubmitInfoModel;

    # getter for: Lcom/oppo/tribune/packshow/parse/SubmitInfoModel;->mIsCancel:Z
    invoke-static {v0}, Lcom/oppo/tribune/packshow/parse/SubmitInfoModel;->access$100(Lcom/oppo/tribune/packshow/parse/SubmitInfoModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    const/4 v0, 0x0

    .line 80
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/packshow/parse/SubmitInfoModel$SubmitInfoTask;->this$0:Lcom/oppo/tribune/packshow/parse/SubmitInfoModel;

    iget-object v1, p0, Lcom/oppo/tribune/packshow/parse/SubmitInfoModel$SubmitInfoTask;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v0, v1, v2}, Lcom/oppo/tribune/packshow/parse/SubmitInfoModel;->submitInfo(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method protected onCancelled()V
    .locals 1

    .prologue
    .line 95
    .local p0, "this":Lcom/oppo/tribune/packshow/parse/SubmitInfoModel$SubmitInfoTask;, "Lcom/oppo/tribune/packshow/parse/SubmitInfoModel<TV;TT;>.SubmitInfoTask;"
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 96
    iget-object v0, p0, Lcom/oppo/tribune/packshow/parse/SubmitInfoModel$SubmitInfoTask;->this$0:Lcom/oppo/tribune/packshow/parse/SubmitInfoModel;

    # getter for: Lcom/oppo/tribune/packshow/parse/SubmitInfoModel;->mSubmitInfoListener:Lcom/oppo/tribune/packshow/parse/SubmitInfoModel$SubmitInfoListener;
    invoke-static {v0}, Lcom/oppo/tribune/packshow/parse/SubmitInfoModel;->access$000(Lcom/oppo/tribune/packshow/parse/SubmitInfoModel;)Lcom/oppo/tribune/packshow/parse/SubmitInfoModel$SubmitInfoListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/oppo/tribune/packshow/parse/SubmitInfoModel$SubmitInfoTask;->this$0:Lcom/oppo/tribune/packshow/parse/SubmitInfoModel;

    # getter for: Lcom/oppo/tribune/packshow/parse/SubmitInfoModel;->mSubmitInfoListener:Lcom/oppo/tribune/packshow/parse/SubmitInfoModel$SubmitInfoListener;
    invoke-static {v0}, Lcom/oppo/tribune/packshow/parse/SubmitInfoModel;->access$000(Lcom/oppo/tribune/packshow/parse/SubmitInfoModel;)Lcom/oppo/tribune/packshow/parse/SubmitInfoModel$SubmitInfoListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/oppo/tribune/packshow/parse/SubmitInfoModel$SubmitInfoListener;->onCancelSumbit()V

    .line 99
    :cond_0
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p0, "this":Lcom/oppo/tribune/packshow/parse/SubmitInfoModel$SubmitInfoTask;, "Lcom/oppo/tribune/packshow/parse/SubmitInfoModel<TV;TT;>.SubmitInfoTask;"
    .local p1, "result":Ljava/lang/Object;, "TT;"
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 88
    iget-object v0, p0, Lcom/oppo/tribune/packshow/parse/SubmitInfoModel$SubmitInfoTask;->this$0:Lcom/oppo/tribune/packshow/parse/SubmitInfoModel;

    # getter for: Lcom/oppo/tribune/packshow/parse/SubmitInfoModel;->mSubmitInfoListener:Lcom/oppo/tribune/packshow/parse/SubmitInfoModel$SubmitInfoListener;
    invoke-static {v0}, Lcom/oppo/tribune/packshow/parse/SubmitInfoModel;->access$000(Lcom/oppo/tribune/packshow/parse/SubmitInfoModel;)Lcom/oppo/tribune/packshow/parse/SubmitInfoModel$SubmitInfoListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/tribune/packshow/parse/SubmitInfoModel$SubmitInfoTask;->this$0:Lcom/oppo/tribune/packshow/parse/SubmitInfoModel;

    # getter for: Lcom/oppo/tribune/packshow/parse/SubmitInfoModel;->mIsCancel:Z
    invoke-static {v0}, Lcom/oppo/tribune/packshow/parse/SubmitInfoModel;->access$100(Lcom/oppo/tribune/packshow/parse/SubmitInfoModel;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/oppo/tribune/packshow/parse/SubmitInfoModel$SubmitInfoTask;->this$0:Lcom/oppo/tribune/packshow/parse/SubmitInfoModel;

    # getter for: Lcom/oppo/tribune/packshow/parse/SubmitInfoModel;->mSubmitInfoListener:Lcom/oppo/tribune/packshow/parse/SubmitInfoModel$SubmitInfoListener;
    invoke-static {v0}, Lcom/oppo/tribune/packshow/parse/SubmitInfoModel;->access$000(Lcom/oppo/tribune/packshow/parse/SubmitInfoModel;)Lcom/oppo/tribune/packshow/parse/SubmitInfoModel$SubmitInfoListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/oppo/tribune/packshow/parse/SubmitInfoModel$SubmitInfoListener;->onFinishSumbit(Ljava/lang/Object;)V

    .line 91
    :cond_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 68
    .local p0, "this":Lcom/oppo/tribune/packshow/parse/SubmitInfoModel$SubmitInfoTask;, "Lcom/oppo/tribune/packshow/parse/SubmitInfoModel<TV;TT;>.SubmitInfoTask;"
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 70
    iget-object v0, p0, Lcom/oppo/tribune/packshow/parse/SubmitInfoModel$SubmitInfoTask;->this$0:Lcom/oppo/tribune/packshow/parse/SubmitInfoModel;

    # getter for: Lcom/oppo/tribune/packshow/parse/SubmitInfoModel;->mSubmitInfoListener:Lcom/oppo/tribune/packshow/parse/SubmitInfoModel$SubmitInfoListener;
    invoke-static {v0}, Lcom/oppo/tribune/packshow/parse/SubmitInfoModel;->access$000(Lcom/oppo/tribune/packshow/parse/SubmitInfoModel;)Lcom/oppo/tribune/packshow/parse/SubmitInfoModel$SubmitInfoListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/oppo/tribune/packshow/parse/SubmitInfoModel$SubmitInfoTask;->this$0:Lcom/oppo/tribune/packshow/parse/SubmitInfoModel;

    # getter for: Lcom/oppo/tribune/packshow/parse/SubmitInfoModel;->mSubmitInfoListener:Lcom/oppo/tribune/packshow/parse/SubmitInfoModel$SubmitInfoListener;
    invoke-static {v0}, Lcom/oppo/tribune/packshow/parse/SubmitInfoModel;->access$000(Lcom/oppo/tribune/packshow/parse/SubmitInfoModel;)Lcom/oppo/tribune/packshow/parse/SubmitInfoModel$SubmitInfoListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/oppo/tribune/packshow/parse/SubmitInfoModel$SubmitInfoListener;->onPreSumbit()V

    .line 73
    :cond_0
    return-void
.end method
