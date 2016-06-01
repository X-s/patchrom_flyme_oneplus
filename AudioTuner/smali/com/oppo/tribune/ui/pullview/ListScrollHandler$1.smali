.class Lcom/oppo/tribune/ui/pullview/ListScrollHandler$1;
.super Ljava/lang/Object;
.source "ListScrollHandler.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/tribune/ui/pullview/ListScrollHandler;->getOnScrollListener()Landroid/widget/AbsListView$OnScrollListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/tribune/ui/pullview/ListScrollHandler;


# direct methods
.method constructor <init>(Lcom/oppo/tribune/ui/pullview/ListScrollHandler;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/oppo/tribune/ui/pullview/ListScrollHandler$1;->this$0:Lcom/oppo/tribune/ui/pullview/ListScrollHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 3
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 48
    iget-object v2, p0, Lcom/oppo/tribune/ui/pullview/ListScrollHandler$1;->this$0:Lcom/oppo/tribune/ui/pullview/ListScrollHandler;

    # getter for: Lcom/oppo/tribune/ui/pullview/ListScrollHandler;->mScrollListeners:Ljava/util/Set;
    invoke-static {v2}, Lcom/oppo/tribune/ui/pullview/ListScrollHandler;->access$000(Lcom/oppo/tribune/ui/pullview/ListScrollHandler;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/tribune/ui/pullview/ListScrollListener;

    .line 49
    .local v1, "listener":Lcom/oppo/tribune/ui/pullview/ListScrollListener;
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/oppo/tribune/ui/pullview/ListScrollListener;->onScroll(Landroid/view/ViewGroup;III)V

    goto :goto_0

    .line 52
    .end local v1    # "listener":Lcom/oppo/tribune/ui/pullview/ListScrollListener;
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 3
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 40
    iget-object v2, p0, Lcom/oppo/tribune/ui/pullview/ListScrollHandler$1;->this$0:Lcom/oppo/tribune/ui/pullview/ListScrollHandler;

    # getter for: Lcom/oppo/tribune/ui/pullview/ListScrollHandler;->mScrollListeners:Ljava/util/Set;
    invoke-static {v2}, Lcom/oppo/tribune/ui/pullview/ListScrollHandler;->access$000(Lcom/oppo/tribune/ui/pullview/ListScrollHandler;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/tribune/ui/pullview/ListScrollListener;

    .line 41
    .local v1, "listener":Lcom/oppo/tribune/ui/pullview/ListScrollListener;
    invoke-interface {v1, p1, p2}, Lcom/oppo/tribune/ui/pullview/ListScrollListener;->onScrollStateChanged(Landroid/view/ViewGroup;I)V

    goto :goto_0

    .line 43
    .end local v1    # "listener":Lcom/oppo/tribune/ui/pullview/ListScrollListener;
    :cond_0
    return-void
.end method
