.class Lcom/oneplus/gallery2/BurstViewerFragment$18;
.super Ljava/lang/Object;
.source "BurstViewerFragment.java"

# interfaces
.implements Landroid/widget/Toolbar$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/BurstViewerFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/BurstViewerFragment;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/BurstViewerFragment;)V
    .locals 0

    .prologue
    .line 1420
    iput-object p1, p0, Lcom/oneplus/gallery2/BurstViewerFragment$18;->this$0:Lcom/oneplus/gallery2/BurstViewerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 7
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x0

    .line 1423
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 1439
    :cond_0
    :goto_0
    return v2

    .line 1426
    :pswitch_0
    iget-object v3, p0, Lcom/oneplus/gallery2/BurstViewerFragment$18;->this$0:Lcom/oneplus/gallery2/BurstViewerFragment;

    # getter for: Lcom/oneplus/gallery2/BurstViewerFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;
    invoke-static {v3}, Lcom/oneplus/gallery2/BurstViewerFragment;->access$700(Lcom/oneplus/gallery2/BurstViewerFragment;)Lcom/oneplus/gallery2/media/MediaList;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/oneplus/gallery2/BurstViewerFragment$18;->this$0:Lcom/oneplus/gallery2/BurstViewerFragment;

    # getter for: Lcom/oneplus/gallery2/BurstViewerFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;
    invoke-static {v3}, Lcom/oneplus/gallery2/BurstViewerFragment;->access$700(Lcom/oneplus/gallery2/BurstViewerFragment;)Lcom/oneplus/gallery2/media/MediaList;

    move-result-object v3

    invoke-interface {v3}, Lcom/oneplus/gallery2/media/MediaList;->size()I

    move-result v0

    .line 1427
    .local v0, "mediaListSize":I
    :goto_1
    iget-object v3, p0, Lcom/oneplus/gallery2/BurstViewerFragment$18;->this$0:Lcom/oneplus/gallery2/BurstViewerFragment;

    # getter for: Lcom/oneplus/gallery2/BurstViewerFragment;->m_SelectedMediaList:Ljava/util/List;
    invoke-static {v3}, Lcom/oneplus/gallery2/BurstViewerFragment;->access$3600(Lcom/oneplus/gallery2/BurstViewerFragment;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 1429
    .local v1, "selectedSize":I
    if-lez v1, :cond_0

    if-ge v1, v0, :cond_0

    .line 1430
    iget-object v3, p0, Lcom/oneplus/gallery2/BurstViewerFragment$18;->this$0:Lcom/oneplus/gallery2/BurstViewerFragment;

    # invokes: Lcom/oneplus/gallery2/BurstViewerFragment;->saveMediasAndDeleteOthers()V
    invoke-static {v3}, Lcom/oneplus/gallery2/BurstViewerFragment;->access$4100(Lcom/oneplus/gallery2/BurstViewerFragment;)V

    goto :goto_0

    .end local v0    # "mediaListSize":I
    .end local v1    # "selectedSize":I
    :cond_1
    move v0, v2

    .line 1426
    goto :goto_1

    .line 1433
    :pswitch_1
    iget-object v3, p0, Lcom/oneplus/gallery2/BurstViewerFragment$18;->this$0:Lcom/oneplus/gallery2/BurstViewerFragment;

    invoke-virtual {v3}, Lcom/oneplus/gallery2/BurstViewerFragment;->getGallery()Lcom/oneplus/gallery2/Gallery;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/oneplus/gallery2/BurstViewerFragment$18;->this$0:Lcom/oneplus/gallery2/BurstViewerFragment;

    # invokes: Lcom/oneplus/gallery2/BurstViewerFragment;->getSelectedMedia()Ljava/util/List;
    invoke-static {v5}, Lcom/oneplus/gallery2/BurstViewerFragment;->access$4200(Lcom/oneplus/gallery2/BurstViewerFragment;)Ljava/util/List;

    move-result-object v5

    iget-object v6, p0, Lcom/oneplus/gallery2/BurstViewerFragment$18;->this$0:Lcom/oneplus/gallery2/BurstViewerFragment;

    # getter for: Lcom/oneplus/gallery2/BurstViewerFragment;->m_DeleteCallback:Lcom/oneplus/gallery2/Gallery$MediaDeletionCallback;
    invoke-static {v6}, Lcom/oneplus/gallery2/BurstViewerFragment;->access$4300(Lcom/oneplus/gallery2/BurstViewerFragment;)Lcom/oneplus/gallery2/Gallery$MediaDeletionCallback;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v2, v6}, Lcom/oneplus/gallery2/Gallery;->deleteMedia(Lcom/oneplus/gallery2/media/MediaSet;Ljava/util/Collection;ILcom/oneplus/gallery2/Gallery$MediaDeletionCallback;)Z

    goto :goto_0

    .line 1423
    :pswitch_data_0
    .packed-switch 0x7f06009b
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
