.class Lcom/oppo/tribune/square/SquareTopLineControl$3;
.super Ljava/lang/Object;
.source "SquareTopLineControl.java"

# interfaces
.implements Lcom/oppo/tribune/ui/pullview/LoadMoreHandler$LoadMoreListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/tribune/square/SquareTopLineControl;->getLoadMoreListener()Lcom/oppo/tribune/ui/pullview/LoadMoreHandler$LoadMoreListener;
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
    .line 163
    iput-object p1, p0, Lcom/oppo/tribune/square/SquareTopLineControl$3;->this$0:Lcom/oppo/tribune/square/SquareTopLineControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadMore()V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/oppo/tribune/square/SquareTopLineControl$3;->this$0:Lcom/oppo/tribune/square/SquareTopLineControl;

    # invokes: Lcom/oppo/tribune/square/SquareTopLineControl;->doOnLoadMore()V
    invoke-static {v0}, Lcom/oppo/tribune/square/SquareTopLineControl;->access$400(Lcom/oppo/tribune/square/SquareTopLineControl;)V

    .line 168
    return-void
.end method
