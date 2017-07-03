.class Lcom/oneplus/gallery/GridViewFragment$14;
.super Ljava/lang/Object;
.source "GridViewFragment.java"

# interfaces
.implements Landroid/widget/Toolbar$OnMenuItemClickListener;


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
    .line 2389
    iput-object p1, p0, Lcom/oneplus/gallery/GridViewFragment$14;->this$0:Lcom/oneplus/gallery/GridViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 2392
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 2417
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 2395
    :sswitch_0
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment$14;->this$0:Lcom/oneplus/gallery/GridViewFragment;

    invoke-virtual {v0}, Lcom/oneplus/gallery/GridViewFragment;->getGallery()Lcom/oneplus/gallery/Gallery;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/OPGallery;

    iget-object v1, p0, Lcom/oneplus/gallery/GridViewFragment$14;->this$0:Lcom/oneplus/gallery/GridViewFragment;

    invoke-virtual {v1}, Lcom/oneplus/gallery/GridViewFragment;->getSelectedMedia()Ljava/util/List;

    move-result-object v2

    iget-object v1, p0, Lcom/oneplus/gallery/GridViewFragment$14;->this$0:Lcom/oneplus/gallery/GridViewFragment;

    sget-object v3, Lcom/oneplus/gallery/GridViewFragment;->PROP_MEDIA_SET:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v3}, Lcom/oneplus/gallery/GridViewFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery/media/MediaSet;

    iget-object v3, p0, Lcom/oneplus/gallery/GridViewFragment$14;->this$0:Lcom/oneplus/gallery/GridViewFragment;

    # getter for: Lcom/oneplus/gallery/GridViewFragment;->m_AddToCallback:Lcom/oneplus/base/OperationCallback;
    invoke-static {v3}, Lcom/oneplus/gallery/GridViewFragment;->access$8600(Lcom/oneplus/gallery/GridViewFragment;)Lcom/oneplus/base/OperationCallback;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/gallery/GridViewFragment$14;->this$0:Lcom/oneplus/gallery/GridViewFragment;

    invoke-virtual {v4}, Lcom/oneplus/gallery/GridViewFragment;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/oneplus/gallery/OPGallery;->addTo(Ljava/util/List;Lcom/oneplus/gallery/media/MediaSet;Lcom/oneplus/base/OperationCallback;Landroid/os/Handler;)Z

    goto :goto_0

    .line 2398
    :sswitch_1
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment$14;->this$0:Lcom/oneplus/gallery/GridViewFragment;

    invoke-virtual {v0}, Lcom/oneplus/gallery/GridViewFragment;->getGallery()Lcom/oneplus/gallery/Gallery;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery/GridViewFragment$14;->this$0:Lcom/oneplus/gallery/GridViewFragment;

    invoke-virtual {v1}, Lcom/oneplus/gallery/GridViewFragment;->getSelectedMedia()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/gallery/GridViewFragment$14;->this$0:Lcom/oneplus/gallery/GridViewFragment;

    # getter for: Lcom/oneplus/gallery/GridViewFragment;->m_SharingMediaCB:Lcom/oneplus/gallery/Gallery$ShareMediaResultCallback;
    invoke-static {v2}, Lcom/oneplus/gallery/GridViewFragment;->access$8700(Lcom/oneplus/gallery/GridViewFragment;)Lcom/oneplus/gallery/Gallery$ShareMediaResultCallback;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery/Gallery;->shareMedia(Ljava/util/Collection;Lcom/oneplus/gallery/Gallery$ShareMediaResultCallback;)Z

    .line 2399
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment$14;->this$0:Lcom/oneplus/gallery/GridViewFragment;

    const/4 v1, 0x1

    # setter for: Lcom/oneplus/gallery/GridViewFragment;->m_ToolbarActionShared:Z
    invoke-static {v0, v1}, Lcom/oneplus/gallery/GridViewFragment;->access$8802(Lcom/oneplus/gallery/GridViewFragment;Z)Z

    goto :goto_0

    .line 2402
    :sswitch_2
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment$14;->this$0:Lcom/oneplus/gallery/GridViewFragment;

    invoke-virtual {v0}, Lcom/oneplus/gallery/GridViewFragment;->getGallery()Lcom/oneplus/gallery/Gallery;

    move-result-object v1

    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment$14;->this$0:Lcom/oneplus/gallery/GridViewFragment;

    sget-object v2, Lcom/oneplus/gallery/GridViewFragment;->PROP_MEDIA_SET:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v2}, Lcom/oneplus/gallery/GridViewFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/media/MediaSet;

    iget-object v2, p0, Lcom/oneplus/gallery/GridViewFragment$14;->this$0:Lcom/oneplus/gallery/GridViewFragment;

    invoke-virtual {v2}, Lcom/oneplus/gallery/GridViewFragment;->getSelectedMedia()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/gallery/GridViewFragment$14;->this$0:Lcom/oneplus/gallery/GridViewFragment;

    # getter for: Lcom/oneplus/gallery/GridViewFragment;->m_DeleteCallback:Lcom/oneplus/gallery/Gallery$MediaDeletionCallback;
    invoke-static {v3}, Lcom/oneplus/gallery/GridViewFragment;->access$8900(Lcom/oneplus/gallery/GridViewFragment;)Lcom/oneplus/gallery/Gallery$MediaDeletionCallback;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/oneplus/gallery/Gallery;->deleteMedia(Lcom/oneplus/gallery/media/MediaSet;Ljava/util/Collection;Lcom/oneplus/gallery/Gallery$MediaDeletionCallback;)Z

    goto :goto_0

    .line 2405
    :sswitch_3
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment$14;->this$0:Lcom/oneplus/gallery/GridViewFragment;

    sget-object v1, Lcom/oneplus/gallery/GridViewFragment;->PROP_MEDIA_SET:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/GridViewFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/oneplus/gallery/media/AlbumMediaSet;

    if-eqz v0, :cond_0

    .line 2406
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment$14;->this$0:Lcom/oneplus/gallery/GridViewFragment;

    invoke-virtual {v0}, Lcom/oneplus/gallery/GridViewFragment;->getGallery()Lcom/oneplus/gallery/Gallery;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/OPGallery;

    iget-object v1, p0, Lcom/oneplus/gallery/GridViewFragment$14;->this$0:Lcom/oneplus/gallery/GridViewFragment;

    sget-object v2, Lcom/oneplus/gallery/GridViewFragment;->PROP_MEDIA_SET:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/oneplus/gallery/GridViewFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery/media/MediaSet;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/OPGallery;->renameMediaSet(Lcom/oneplus/gallery/media/MediaSet;)Z

    goto/16 :goto_0

    .line 2408
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment$14;->this$0:Lcom/oneplus/gallery/GridViewFragment;

    # getter for: Lcom/oneplus/gallery/GridViewFragment;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/oneplus/gallery/GridViewFragment;->access$9000(Lcom/oneplus/gallery/GridViewFragment;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onMenuItemClick() - media set did not support rename."

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2411
    :sswitch_4
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment$14;->this$0:Lcom/oneplus/gallery/GridViewFragment;

    sget-object v1, Lcom/oneplus/gallery/GridViewFragment;->EVENT_PICKER_SELECTION_DONE:Lcom/oneplus/base/EventKey;

    sget-object v2, Lcom/oneplus/base/EventArgs;->EMPTY:Lcom/oneplus/base/EventArgs;

    # invokes: Lcom/oneplus/gallery/GridViewFragment;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V
    invoke-static {v0, v1, v2}, Lcom/oneplus/gallery/GridViewFragment;->access$9100(Lcom/oneplus/gallery/GridViewFragment;Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    goto/16 :goto_0

    .line 2392
    :sswitch_data_0
    .sparse-switch
        0x7f06009c -> :sswitch_2
        0x7f0600a3 -> :sswitch_4
        0x7f0600a7 -> :sswitch_0
        0x7f0600a8 -> :sswitch_1
        0x7f0600aa -> :sswitch_3
    .end sparse-switch
.end method
