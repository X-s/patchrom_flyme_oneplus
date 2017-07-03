.class Lcom/oneplus/gallery/GridViewFragment$13;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "GridViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/GridViewFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/GridViewFragment;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/GridViewFragment;)V
    .locals 0

    .prologue
    .line 2330
    iput-object p1, p0, Lcom/oneplus/gallery/GridViewFragment$13;->this$0:Lcom/oneplus/gallery/GridViewFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 3
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "newState"    # I

    .prologue
    .line 2340
    if-nez p2, :cond_1

    .line 2342
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment$13;->this$0:Lcom/oneplus/gallery/GridViewFragment;

    sget-object v1, Lcom/oneplus/gallery/GridViewFragment;->PROP_IS_SCROLLING:Lcom/oneplus/base/PropertyKey;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    # invokes: Lcom/oneplus/gallery/GridViewFragment;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    invoke-static {v0, v1, v2}, Lcom/oneplus/gallery/GridViewFragment;->access$8300(Lcom/oneplus/gallery/GridViewFragment;Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2343
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment$13;->this$0:Lcom/oneplus/gallery/GridViewFragment;

    # getter for: Lcom/oneplus/gallery/GridViewFragment;->m_PeriodicMessageDispatcher:Lcom/oneplus/base/PeriodicMessageDispatcher;
    invoke-static {v0}, Lcom/oneplus/gallery/GridViewFragment;->access$8400(Lcom/oneplus/gallery/GridViewFragment;)Lcom/oneplus/base/PeriodicMessageDispatcher;

    move-result-object v0

    invoke-interface {v0}, Lcom/oneplus/base/PeriodicMessageDispatcher;->resume()V

    .line 2350
    :cond_0
    :goto_0
    return-void

    .line 2347
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment$13;->this$0:Lcom/oneplus/gallery/GridViewFragment;

    sget-object v1, Lcom/oneplus/gallery/GridViewFragment;->PROP_IS_SCROLLING:Lcom/oneplus/base/PropertyKey;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    # invokes: Lcom/oneplus/gallery/GridViewFragment;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    invoke-static {v0, v1, v2}, Lcom/oneplus/gallery/GridViewFragment;->access$8500(Lcom/oneplus/gallery/GridViewFragment;Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2348
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment$13;->this$0:Lcom/oneplus/gallery/GridViewFragment;

    # getter for: Lcom/oneplus/gallery/GridViewFragment;->m_PeriodicMessageDispatcher:Lcom/oneplus/base/PeriodicMessageDispatcher;
    invoke-static {v0}, Lcom/oneplus/gallery/GridViewFragment;->access$8400(Lcom/oneplus/gallery/GridViewFragment;)Lcom/oneplus/base/PeriodicMessageDispatcher;

    move-result-object v0

    invoke-interface {v0}, Lcom/oneplus/base/PeriodicMessageDispatcher;->pause()V

    goto :goto_0
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 1
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .prologue
    .line 2334
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment$13;->this$0:Lcom/oneplus/gallery/GridViewFragment;

    # invokes: Lcom/oneplus/gallery/GridViewFragment;->reportScrollOffsets(II)V
    invoke-static {v0, p2, p3}, Lcom/oneplus/gallery/GridViewFragment;->access$8200(Lcom/oneplus/gallery/GridViewFragment;II)V

    .line 2335
    return-void
.end method
