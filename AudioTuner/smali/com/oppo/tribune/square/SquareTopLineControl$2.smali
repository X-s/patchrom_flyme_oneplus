.class Lcom/oppo/tribune/square/SquareTopLineControl$2;
.super Ljava/lang/Object;
.source "SquareTopLineControl.java"

# interfaces
.implements Lcom/oppo/tribune/ui/pullview/PullRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/tribune/square/SquareTopLineControl;->getListPullRefreshListener()Lcom/oppo/tribune/ui/pullview/PullRefreshListener;
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
    .line 150
    iput-object p1, p0, Lcom/oppo/tribune/square/SquareTopLineControl$2;->this$0:Lcom/oppo/tribune/square/SquareTopLineControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isRefreshReady()Z
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/oppo/tribune/square/SquareTopLineControl$2;->this$0:Lcom/oppo/tribune/square/SquareTopLineControl;

    # getter for: Lcom/oppo/tribune/square/SquareTopLineControl;->mTopLineView:Lcom/oppo/tribune/square/SquareTopLineView;
    invoke-static {v0}, Lcom/oppo/tribune/square/SquareTopLineControl;->access$000(Lcom/oppo/tribune/square/SquareTopLineControl;)Lcom/oppo/tribune/square/SquareTopLineView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/square/SquareTopLineView;->isPullRefreshReady()Z

    move-result v0

    return v0
.end method

.method public onRefresh()V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/oppo/tribune/square/SquareTopLineControl$2;->this$0:Lcom/oppo/tribune/square/SquareTopLineControl;

    # invokes: Lcom/oppo/tribune/square/SquareTopLineControl;->doOnPullRefresh()V
    invoke-static {v0}, Lcom/oppo/tribune/square/SquareTopLineControl;->access$300(Lcom/oppo/tribune/square/SquareTopLineControl;)V

    .line 153
    return-void
.end method
