.class Lcom/oneplus/gallery2/MediaSetPickerFragment$7;
.super Ljava/lang/Object;
.source "MediaSetPickerFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/MediaSetPickerFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/MediaSetPickerFragment;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/MediaSetPickerFragment;)V
    .locals 0

    .prologue
    .line 299
    iput-object p1, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$7;->this$0:Lcom/oneplus/gallery2/MediaSetPickerFragment;

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
    .line 303
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$7;->this$0:Lcom/oneplus/gallery2/MediaSetPickerFragment;

    sget-object v2, Lcom/oneplus/base/BaseFragment;->PROP_IS_RUNNING:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/oneplus/gallery2/MediaSetPickerFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 304
    iget-object v1, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$7;->this$0:Lcom/oneplus/gallery2/MediaSetPickerFragment;

    # getter for: Lcom/oneplus/gallery2/MediaSetPickerFragment;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/oneplus/gallery2/MediaSetPickerFragment;->access$700(Lcom/oneplus/gallery2/MediaSetPickerFragment;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "onItemClick() - Fragment is not running"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    :goto_0
    return-void

    .line 307
    :cond_0
    iget-object v1, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$7;->this$0:Lcom/oneplus/gallery2/MediaSetPickerFragment;

    # getter for: Lcom/oneplus/gallery2/MediaSetPickerFragment;->m_MediaSetList:Lcom/oneplus/gallery2/media/MediaSetList;
    invoke-static {v1}, Lcom/oneplus/gallery2/MediaSetPickerFragment;->access$800(Lcom/oneplus/gallery2/MediaSetPickerFragment;)Lcom/oneplus/gallery2/media/MediaSetList;

    move-result-object v1

    invoke-interface {v1, p3}, Lcom/oneplus/gallery2/media/MediaSetList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaSet;

    .line 309
    .local v0, "set":Lcom/oneplus/gallery2/media/MediaSet;
    if-eqz v0, :cond_2

    sget-object v1, Lcom/oneplus/gallery2/media/MediaSet;->PROP_MEDIA_COUNT:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/oneplus/gallery2/media/MediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/oneplus/gallery2/media/MediaSet;->PROP_MEDIA_COUNT:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/oneplus/gallery2/media/MediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gtz v1, :cond_2

    .line 311
    :cond_1
    iget-object v1, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$7;->this$0:Lcom/oneplus/gallery2/MediaSetPickerFragment;

    # getter for: Lcom/oneplus/gallery2/MediaSetPickerFragment;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/oneplus/gallery2/MediaSetPickerFragment;->access$900(Lcom/oneplus/gallery2/MediaSetPickerFragment;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "onItemClick() - Media set is empty"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 315
    :cond_2
    iget-object v1, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$7;->this$0:Lcom/oneplus/gallery2/MediaSetPickerFragment;

    sget-object v2, Lcom/oneplus/gallery2/MediaSetPickerFragment;->EVENT_MEDIA_SET_CLICKED:Lcom/oneplus/base/EventKey;

    new-instance v3, Lcom/oneplus/gallery2/ListItemEventArgs;

    invoke-direct {v3, p3, v0}, Lcom/oneplus/gallery2/ListItemEventArgs;-><init>(ILjava/lang/Object;)V

    # invokes: Lcom/oneplus/gallery2/MediaSetPickerFragment;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V
    invoke-static {v1, v2, v3}, Lcom/oneplus/gallery2/MediaSetPickerFragment;->access$1000(Lcom/oneplus/gallery2/MediaSetPickerFragment;Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    goto :goto_0
.end method
