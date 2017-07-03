.class Lcom/oneplus/gallery/MediaSetListFragment$15;
.super Ljava/lang/Object;
.source "MediaSetListFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/MediaSetListFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/MediaSetListFragment;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/MediaSetListFragment;)V
    .locals 0

    .prologue
    .line 1355
    iput-object p1, p0, Lcom/oneplus/gallery/MediaSetListFragment$15;->this$0:Lcom/oneplus/gallery/MediaSetListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 1368
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetListFragment$15;->this$0:Lcom/oneplus/gallery/MediaSetListFragment;

    # invokes: Lcom/oneplus/gallery/MediaSetListFragment;->reportScrollOffsets()V
    invoke-static {v0}, Lcom/oneplus/gallery/MediaSetListFragment;->access$4200(Lcom/oneplus/gallery/MediaSetListFragment;)V

    .line 1369
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 3
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 1359
    if-nez p2, :cond_0

    .line 1360
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetListFragment$15;->this$0:Lcom/oneplus/gallery/MediaSetListFragment;

    sget-object v1, Lcom/oneplus/gallery/MediaSetListFragment;->PROP_IS_SCROLLING:Lcom/oneplus/base/PropertyKey;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    # invokes: Lcom/oneplus/gallery/MediaSetListFragment;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    invoke-static {v0, v1, v2}, Lcom/oneplus/gallery/MediaSetListFragment;->access$4000(Lcom/oneplus/gallery/MediaSetListFragment;Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1363
    :goto_0
    return-void

    .line 1362
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/MediaSetListFragment$15;->this$0:Lcom/oneplus/gallery/MediaSetListFragment;

    sget-object v1, Lcom/oneplus/gallery/MediaSetListFragment;->PROP_IS_SCROLLING:Lcom/oneplus/base/PropertyKey;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    # invokes: Lcom/oneplus/gallery/MediaSetListFragment;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    invoke-static {v0, v1, v2}, Lcom/oneplus/gallery/MediaSetListFragment;->access$4100(Lcom/oneplus/gallery/MediaSetListFragment;Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0
.end method
