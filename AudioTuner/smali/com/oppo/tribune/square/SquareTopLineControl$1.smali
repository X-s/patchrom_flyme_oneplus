.class Lcom/oppo/tribune/square/SquareTopLineControl$1;
.super Ljava/lang/Object;
.source "SquareTopLineControl.java"

# interfaces
.implements Lcom/oppo/tribune/square/SquareTopLineModel$DownDataCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/tribune/square/SquareTopLineControl;->getDownDataCallBack()Lcom/oppo/tribune/square/SquareTopLineModel$DownDataCallBack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/tribune/square/SquareTopLineControl;


# direct methods
.method constructor <init>(Lcom/oppo/tribune/square/SquareTopLineControl;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/oppo/tribune/square/SquareTopLineControl$1;->this$0:Lcom/oppo/tribune/square/SquareTopLineControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnDownDataComplete(Lcom/oppo/tribune/square/RefreshType;Ljava/util/List;)V
    .locals 2
    .param p1, "type"    # Lcom/oppo/tribune/square/RefreshType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oppo/tribune/square/RefreshType;",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 136
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;>;"
    const-string v0, "shuqi"

    const-string v1, "OnDownDataComplete"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v0, p0, Lcom/oppo/tribune/square/SquareTopLineControl$1;->this$0:Lcom/oppo/tribune/square/SquareTopLineControl;

    const/4 v1, 0x0

    # invokes: Lcom/oppo/tribune/square/SquareTopLineControl;->doOnRefreshComplete(Lcom/oppo/tribune/square/RefreshType;Ljava/util/List;Z)V
    invoke-static {v0, p1, p2, v1}, Lcom/oppo/tribune/square/SquareTopLineControl;->access$200(Lcom/oppo/tribune/square/SquareTopLineControl;Lcom/oppo/tribune/square/RefreshType;Ljava/util/List;Z)V

    .line 138
    return-void
.end method

.method public onDownDataCompleteByAddList(Lcom/oppo/tribune/square/RefreshType;Ljava/util/List;)V
    .locals 2
    .param p1, "type"    # Lcom/oppo/tribune/square/RefreshType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oppo/tribune/square/RefreshType;",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 143
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;>;"
    iget-object v0, p0, Lcom/oppo/tribune/square/SquareTopLineControl$1;->this$0:Lcom/oppo/tribune/square/SquareTopLineControl;

    const/4 v1, 0x1

    # invokes: Lcom/oppo/tribune/square/SquareTopLineControl;->doOnRefreshComplete(Lcom/oppo/tribune/square/RefreshType;Ljava/util/List;Z)V
    invoke-static {v0, p1, p2, v1}, Lcom/oppo/tribune/square/SquareTopLineControl;->access$200(Lcom/oppo/tribune/square/SquareTopLineControl;Lcom/oppo/tribune/square/RefreshType;Ljava/util/List;Z)V

    .line 144
    return-void
.end method

.method public onDownPostDataCompleteInThread(Lcom/oppo/tribune/square/RefreshType;)V
    .locals 2
    .param p1, "type"    # Lcom/oppo/tribune/square/RefreshType;

    .prologue
    .line 130
    const-string v0, "shuqi"

    const-string v1, "onDownPostDataCompleteInThread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    return-void
.end method

.method public onInitByDBComplete(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 119
    .local p1, "postList":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;>;"
    const-string v0, "shuqi"

    const-string v1, "onInitByDBComplete"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v0, p0, Lcom/oppo/tribune/square/SquareTopLineControl$1;->this$0:Lcom/oppo/tribune/square/SquareTopLineControl;

    # getter for: Lcom/oppo/tribune/square/SquareTopLineControl;->mTopLineView:Lcom/oppo/tribune/square/SquareTopLineView;
    invoke-static {v0}, Lcom/oppo/tribune/square/SquareTopLineControl;->access$000(Lcom/oppo/tribune/square/SquareTopLineControl;)Lcom/oppo/tribune/square/SquareTopLineView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/oppo/tribune/square/SquareTopLineView;->showList(Ljava/util/List;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/oppo/tribune/square/SquareTopLineControl$1;->this$0:Lcom/oppo/tribune/square/SquareTopLineControl;

    # getter for: Lcom/oppo/tribune/square/SquareTopLineControl;->mTopLineModel:Lcom/oppo/tribune/square/SquareTopLineModel;
    invoke-static {v0}, Lcom/oppo/tribune/square/SquareTopLineControl;->access$100(Lcom/oppo/tribune/square/SquareTopLineControl;)Lcom/oppo/tribune/square/SquareTopLineModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/square/SquareTopLineModel;->downDataToInit()V

    .line 126
    :goto_0
    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/square/SquareTopLineControl$1;->this$0:Lcom/oppo/tribune/square/SquareTopLineControl;

    # getter for: Lcom/oppo/tribune/square/SquareTopLineControl;->mTopLineView:Lcom/oppo/tribune/square/SquareTopLineView;
    invoke-static {v0}, Lcom/oppo/tribune/square/SquareTopLineControl;->access$000(Lcom/oppo/tribune/square/SquareTopLineControl;)Lcom/oppo/tribune/square/SquareTopLineView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/square/SquareTopLineView;->hideLoadingLayout()V

    goto :goto_0
.end method
