.class Lcom/oneplus/gallery/MediaSetListFragment$13;
.super Ljava/lang/Object;
.source "MediaSetListFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 1320
    iput-object p1, p0, Lcom/oneplus/gallery/MediaSetListFragment$13;->this$0:Lcom/oneplus/gallery/MediaSetListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1325
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/oneplus/gallery/MediaSetListFragment$13;->this$0:Lcom/oneplus/gallery/MediaSetListFragment;

    sget-object v2, Lcom/oneplus/base/BaseFragment;->PROP_IS_RUNNING:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/oneplus/gallery/MediaSetListFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1326
    iget-object v1, p0, Lcom/oneplus/gallery/MediaSetListFragment$13;->this$0:Lcom/oneplus/gallery/MediaSetListFragment;

    # getter for: Lcom/oneplus/gallery/MediaSetListFragment;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/oneplus/gallery/MediaSetListFragment;->access$3600(Lcom/oneplus/gallery/MediaSetListFragment;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "onItemClick() - Fragment is not running"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1335
    :goto_0
    return-void

    .line 1329
    :cond_0
    iget-object v1, p0, Lcom/oneplus/gallery/MediaSetListFragment$13;->this$0:Lcom/oneplus/gallery/MediaSetListFragment;

    # getter for: Lcom/oneplus/gallery/MediaSetListFragment;->m_MediaSetList:Lcom/oneplus/gallery/media/MediaSetList;
    invoke-static {v1}, Lcom/oneplus/gallery/MediaSetListFragment;->access$3700(Lcom/oneplus/gallery/MediaSetListFragment;)Lcom/oneplus/gallery/media/MediaSetList;

    move-result-object v1

    invoke-interface {v1, p3}, Lcom/oneplus/gallery/media/MediaSetList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/media/MediaSet;

    .line 1331
    .local v0, "set":Lcom/oneplus/gallery/media/MediaSet;
    iget-object v1, p0, Lcom/oneplus/gallery/MediaSetListFragment$13;->this$0:Lcom/oneplus/gallery/MediaSetListFragment;

    sget-object v2, Lcom/oneplus/gallery/MediaSetListFragment;->PROP_IS_SELECTION_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/oneplus/gallery/MediaSetListFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1332
    iget-object v1, p0, Lcom/oneplus/gallery/MediaSetListFragment$13;->this$0:Lcom/oneplus/gallery/MediaSetListFragment;

    # invokes: Lcom/oneplus/gallery/MediaSetListFragment;->updateSelectedMediaSet(Lcom/oneplus/gallery/media/MediaSet;)V
    invoke-static {v1, v0}, Lcom/oneplus/gallery/MediaSetListFragment;->access$3800(Lcom/oneplus/gallery/MediaSetListFragment;Lcom/oneplus/gallery/media/MediaSet;)V

    goto :goto_0

    .line 1334
    :cond_1
    iget-object v1, p0, Lcom/oneplus/gallery/MediaSetListFragment$13;->this$0:Lcom/oneplus/gallery/MediaSetListFragment;

    sget-object v2, Lcom/oneplus/gallery/MediaSetListFragment;->EVENT_MEDIA_SET_CLICKED:Lcom/oneplus/base/EventKey;

    new-instance v3, Lcom/oneplus/gallery/ListItemEventArgs;

    invoke-direct {v3, p3, v0}, Lcom/oneplus/gallery/ListItemEventArgs;-><init>(ILjava/lang/Object;)V

    # invokes: Lcom/oneplus/gallery/MediaSetListFragment;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V
    invoke-static {v1, v2, v3}, Lcom/oneplus/gallery/MediaSetListFragment;->access$3900(Lcom/oneplus/gallery/MediaSetListFragment;Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    goto :goto_0
.end method
