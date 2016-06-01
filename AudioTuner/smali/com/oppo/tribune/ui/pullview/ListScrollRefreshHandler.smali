.class public Lcom/oppo/tribune/ui/pullview/ListScrollRefreshHandler;
.super Ljava/lang/Object;
.source "ListScrollRefreshHandler.java"

# interfaces
.implements Lcom/oppo/tribune/ui/pullview/ListScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/tribune/ui/pullview/ListScrollRefreshHandler$IAdapter;
    }
.end annotation


# instance fields
.field protected mAdapter:Lcom/oppo/tribune/ui/pullview/ListScrollRefreshHandler$IAdapter;


# direct methods
.method public constructor <init>(Lcom/oppo/tribune/ui/pullview/ListScrollRefreshHandler$IAdapter;)V
    .locals 0
    .param p1, "adapter"    # Lcom/oppo/tribune/ui/pullview/ListScrollRefreshHandler$IAdapter;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/oppo/tribune/ui/pullview/ListScrollRefreshHandler;->mAdapter:Lcom/oppo/tribune/ui/pullview/ListScrollRefreshHandler$IAdapter;

    .line 25
    return-void
.end method


# virtual methods
.method protected loadHolderData(Landroid/view/ViewGroup;Lcom/oppo/tribune/ui/pullview/ListScrollRefreshHandler$IAdapter;Z)V
    .locals 3
    .param p1, "listView"    # Landroid/view/ViewGroup;
    .param p2, "adapter"    # Lcom/oppo/tribune/ui/pullview/ListScrollRefreshHandler$IAdapter;
    .param p3, "realLoad"    # Z

    .prologue
    .line 29
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 39
    :cond_0
    return-void

    .line 32
    :cond_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 33
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 34
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 35
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_2

    .line 36
    invoke-interface {p2, v2, p3}, Lcom/oppo/tribune/ui/pullview/ListScrollRefreshHandler$IAdapter;->loadHolderData(Landroid/view/View;Z)V

    .line 33
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public onScroll(Landroid/view/ViewGroup;III)V
    .locals 0
    .param p1, "view"    # Landroid/view/ViewGroup;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 66
    return-void
.end method

.method public onScrollStateChanged(Landroid/view/ViewGroup;I)V
    .locals 2
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "scrollState"    # I

    .prologue
    const/4 v1, 0x1

    .line 43
    iget-object v0, p0, Lcom/oppo/tribune/ui/pullview/ListScrollRefreshHandler;->mAdapter:Lcom/oppo/tribune/ui/pullview/ListScrollRefreshHandler$IAdapter;

    if-nez v0, :cond_0

    .line 60
    :goto_0
    return-void

    .line 46
    :cond_0
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 51
    :pswitch_0
    iget-object v0, p0, Lcom/oppo/tribune/ui/pullview/ListScrollRefreshHandler;->mAdapter:Lcom/oppo/tribune/ui/pullview/ListScrollRefreshHandler$IAdapter;

    invoke-interface {v0, v1}, Lcom/oppo/tribune/ui/pullview/ListScrollRefreshHandler$IAdapter;->setBitmapRealLoad(Z)V

    .line 52
    iget-object v0, p0, Lcom/oppo/tribune/ui/pullview/ListScrollRefreshHandler;->mAdapter:Lcom/oppo/tribune/ui/pullview/ListScrollRefreshHandler$IAdapter;

    invoke-virtual {p0, p1, v0, v1}, Lcom/oppo/tribune/ui/pullview/ListScrollRefreshHandler;->loadHolderData(Landroid/view/ViewGroup;Lcom/oppo/tribune/ui/pullview/ListScrollRefreshHandler$IAdapter;Z)V

    goto :goto_0

    .line 48
    :pswitch_1
    iget-object v0, p0, Lcom/oppo/tribune/ui/pullview/ListScrollRefreshHandler;->mAdapter:Lcom/oppo/tribune/ui/pullview/ListScrollRefreshHandler$IAdapter;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oppo/tribune/ui/pullview/ListScrollRefreshHandler$IAdapter;->setBitmapRealLoad(Z)V

    goto :goto_0

    .line 55
    :pswitch_2
    iget-object v0, p0, Lcom/oppo/tribune/ui/pullview/ListScrollRefreshHandler;->mAdapter:Lcom/oppo/tribune/ui/pullview/ListScrollRefreshHandler$IAdapter;

    invoke-interface {v0, v1}, Lcom/oppo/tribune/ui/pullview/ListScrollRefreshHandler$IAdapter;->setBitmapRealLoad(Z)V

    goto :goto_0

    .line 46
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
