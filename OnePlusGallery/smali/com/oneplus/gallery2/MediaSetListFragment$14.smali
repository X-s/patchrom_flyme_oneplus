.class Lcom/oneplus/gallery2/MediaSetListFragment$14;
.super Ljava/lang/Object;
.source "MediaSetListFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/MediaSetListFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/MediaSetListFragment;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/MediaSetListFragment;)V
    .locals 0

    .prologue
    .line 1294
    iput-object p1, p0, Lcom/oneplus/gallery2/MediaSetListFragment$14;->this$0:Lcom/oneplus/gallery2/MediaSetListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 5
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v4, 0x1

    .line 1300
    iget-object v1, p0, Lcom/oneplus/gallery2/MediaSetListFragment$14;->this$0:Lcom/oneplus/gallery2/MediaSetListFragment;

    sget-object v2, Lcom/oneplus/gallery2/MediaSetListFragment;->PROP_IS_SELECTION_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/oneplus/gallery2/MediaSetListFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1301
    iget-object v1, p0, Lcom/oneplus/gallery2/MediaSetListFragment$14;->this$0:Lcom/oneplus/gallery2/MediaSetListFragment;

    sget-object v2, Lcom/oneplus/gallery2/MediaSetListFragment;->PROP_IS_SELECTION_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/gallery2/MediaSetListFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1304
    :cond_0
    iget-object v1, p0, Lcom/oneplus/gallery2/MediaSetListFragment$14;->this$0:Lcom/oneplus/gallery2/MediaSetListFragment;

    # getter for: Lcom/oneplus/gallery2/MediaSetListFragment;->m_MediaSetList:Lcom/oneplus/gallery2/media/MediaSetList;
    invoke-static {v1}, Lcom/oneplus/gallery2/MediaSetListFragment;->access$3900(Lcom/oneplus/gallery2/MediaSetListFragment;)Lcom/oneplus/gallery2/media/MediaSetList;

    move-result-object v1

    invoke-interface {v1, p3}, Lcom/oneplus/gallery2/media/MediaSetList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaSet;

    .line 1305
    .local v0, "set":Lcom/oneplus/gallery2/media/MediaSet;
    iget-object v1, p0, Lcom/oneplus/gallery2/MediaSetListFragment$14;->this$0:Lcom/oneplus/gallery2/MediaSetListFragment;

    # invokes: Lcom/oneplus/gallery2/MediaSetListFragment;->updateSelectedMediaSet(Lcom/oneplus/gallery2/media/MediaSet;)V
    invoke-static {v1, v0}, Lcom/oneplus/gallery2/MediaSetListFragment;->access$4000(Lcom/oneplus/gallery2/MediaSetListFragment;Lcom/oneplus/gallery2/media/MediaSet;)V

    .line 1307
    return v4
.end method
