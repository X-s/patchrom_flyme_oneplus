.class Lcom/oneplus/gallery2/GridViewFragment$14;
.super Ljava/lang/Object;
.source "GridViewFragment.java"

# interfaces
.implements Landroid/widget/Toolbar$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/GridViewFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/GridViewFragment;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/GridViewFragment;)V
    .locals 0

    .prologue
    .line 2420
    iput-object p1, p0, Lcom/oneplus/gallery2/GridViewFragment$14;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 6
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v5, 0x0

    .line 2423
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 2448
    :goto_0
    return v5

    .line 2426
    :sswitch_0
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment$14;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    invoke-virtual {v0}, Lcom/oneplus/gallery2/GridViewFragment;->getGallery()Lcom/oneplus/gallery2/Gallery;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/OPGallery;

    iget-object v1, p0, Lcom/oneplus/gallery2/GridViewFragment$14;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    invoke-virtual {v1}, Lcom/oneplus/gallery2/GridViewFragment;->getSelectedMedia()Ljava/util/List;

    move-result-object v2

    iget-object v1, p0, Lcom/oneplus/gallery2/GridViewFragment$14;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    sget-object v3, Lcom/oneplus/gallery2/GridViewFragment;->PROP_MEDIA_SET:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v3}, Lcom/oneplus/gallery2/GridViewFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/MediaSet;

    iget-object v3, p0, Lcom/oneplus/gallery2/GridViewFragment$14;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    # getter for: Lcom/oneplus/gallery2/GridViewFragment;->m_AddToCallback:Lcom/oneplus/base/OperationCallback;
    invoke-static {v3}, Lcom/oneplus/gallery2/GridViewFragment;->access$9000(Lcom/oneplus/gallery2/GridViewFragment;)Lcom/oneplus/base/OperationCallback;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/gallery2/GridViewFragment$14;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    invoke-virtual {v4}, Lcom/oneplus/gallery2/GridViewFragment;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/oneplus/gallery2/OPGallery;->addTo(Ljava/util/List;Lcom/oneplus/gallery2/media/MediaSet;Lcom/oneplus/base/OperationCallback;Landroid/os/Handler;)Z

    goto :goto_0

    .line 2429
    :sswitch_1
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment$14;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    invoke-virtual {v0}, Lcom/oneplus/gallery2/GridViewFragment;->getGallery()Lcom/oneplus/gallery2/Gallery;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery2/GridViewFragment$14;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    invoke-virtual {v1}, Lcom/oneplus/gallery2/GridViewFragment;->getSelectedMedia()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/gallery2/GridViewFragment$14;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    # getter for: Lcom/oneplus/gallery2/GridViewFragment;->m_SharingMediaCB:Lcom/oneplus/gallery2/Gallery$ShareMediaResultCallback;
    invoke-static {v2}, Lcom/oneplus/gallery2/GridViewFragment;->access$9100(Lcom/oneplus/gallery2/GridViewFragment;)Lcom/oneplus/gallery2/Gallery$ShareMediaResultCallback;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery2/Gallery;->shareMedia(Ljava/util/Collection;Lcom/oneplus/gallery2/Gallery$ShareMediaResultCallback;)Z

    .line 2430
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment$14;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    const/4 v1, 0x1

    # setter for: Lcom/oneplus/gallery2/GridViewFragment;->m_ToolbarActionShared:Z
    invoke-static {v0, v1}, Lcom/oneplus/gallery2/GridViewFragment;->access$9202(Lcom/oneplus/gallery2/GridViewFragment;Z)Z

    goto :goto_0

    .line 2433
    :sswitch_2
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment$14;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    invoke-virtual {v0}, Lcom/oneplus/gallery2/GridViewFragment;->getGallery()Lcom/oneplus/gallery2/Gallery;

    move-result-object v1

    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment$14;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    sget-object v2, Lcom/oneplus/gallery2/GridViewFragment;->PROP_MEDIA_SET:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v2}, Lcom/oneplus/gallery2/GridViewFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaSet;

    iget-object v2, p0, Lcom/oneplus/gallery2/GridViewFragment$14;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    invoke-virtual {v2}, Lcom/oneplus/gallery2/GridViewFragment;->getSelectedMedia()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/gallery2/GridViewFragment$14;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    # getter for: Lcom/oneplus/gallery2/GridViewFragment;->m_DeleteCallback:Lcom/oneplus/gallery2/Gallery$MediaDeletionCallback;
    invoke-static {v3}, Lcom/oneplus/gallery2/GridViewFragment;->access$9300(Lcom/oneplus/gallery2/GridViewFragment;)Lcom/oneplus/gallery2/Gallery$MediaDeletionCallback;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v5, v3}, Lcom/oneplus/gallery2/Gallery;->deleteMedia(Lcom/oneplus/gallery2/media/MediaSet;Ljava/util/Collection;ILcom/oneplus/gallery2/Gallery$MediaDeletionCallback;)Z

    goto :goto_0

    .line 2436
    :sswitch_3
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment$14;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    sget-object v1, Lcom/oneplus/gallery2/GridViewFragment;->PROP_MEDIA_SET:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery2/GridViewFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/oneplus/gallery2/media/AlbumMediaSet;

    if-eqz v0, :cond_0

    .line 2437
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment$14;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    invoke-virtual {v0}, Lcom/oneplus/gallery2/GridViewFragment;->getGallery()Lcom/oneplus/gallery2/Gallery;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/OPGallery;

    iget-object v1, p0, Lcom/oneplus/gallery2/GridViewFragment$14;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    sget-object v2, Lcom/oneplus/gallery2/GridViewFragment;->PROP_MEDIA_SET:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/oneplus/gallery2/GridViewFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/MediaSet;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery2/OPGallery;->renameMediaSet(Lcom/oneplus/gallery2/media/MediaSet;)Z

    goto/16 :goto_0

    .line 2439
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment$14;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    # getter for: Lcom/oneplus/gallery2/GridViewFragment;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/oneplus/gallery2/GridViewFragment;->access$9400(Lcom/oneplus/gallery2/GridViewFragment;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onMenuItemClick() - media set did not support rename."

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2442
    :sswitch_4
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment$14;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    sget-object v1, Lcom/oneplus/gallery2/GridViewFragment;->EVENT_PICKER_SELECTION_DONE:Lcom/oneplus/base/EventKey;

    sget-object v2, Lcom/oneplus/base/EventArgs;->EMPTY:Lcom/oneplus/base/EventArgs;

    # invokes: Lcom/oneplus/gallery2/GridViewFragment;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V
    invoke-static {v0, v1, v2}, Lcom/oneplus/gallery2/GridViewFragment;->access$9500(Lcom/oneplus/gallery2/GridViewFragment;Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    goto/16 :goto_0

    .line 2423
    :sswitch_data_0
    .sparse-switch
        0x7f06009c -> :sswitch_2
        0x7f0600a3 -> :sswitch_4
        0x7f0600a7 -> :sswitch_0
        0x7f0600a8 -> :sswitch_1
        0x7f0600aa -> :sswitch_3
    .end sparse-switch
.end method
