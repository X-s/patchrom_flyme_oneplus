.class Lcom/oneplus/gallery2/BurstViewerFragment$20$2;
.super Ljava/lang/Object;
.source "BurstViewerFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/BurstViewerFragment$20;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/gallery2/BurstViewerFragment$20;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/BurstViewerFragment$20;)V
    .locals 0

    .prologue
    .line 2301
    iput-object p1, p0, Lcom/oneplus/gallery2/BurstViewerFragment$20$2;->this$1:Lcom/oneplus/gallery2/BurstViewerFragment$20;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 2305
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 2306
    iget-object v3, p0, Lcom/oneplus/gallery2/BurstViewerFragment$20$2;->this$1:Lcom/oneplus/gallery2/BurstViewerFragment$20;

    iget-object v3, v3, Lcom/oneplus/gallery2/BurstViewerFragment$20;->this$0:Lcom/oneplus/gallery2/BurstViewerFragment;

    # getter for: Lcom/oneplus/gallery2/BurstViewerFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;
    invoke-static {v3}, Lcom/oneplus/gallery2/BurstViewerFragment;->access$700(Lcom/oneplus/gallery2/BurstViewerFragment;)Lcom/oneplus/gallery2/media/MediaList;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/oneplus/gallery2/BurstViewerFragment$20$2;->this$1:Lcom/oneplus/gallery2/BurstViewerFragment$20;

    iget-object v3, v3, Lcom/oneplus/gallery2/BurstViewerFragment$20;->this$0:Lcom/oneplus/gallery2/BurstViewerFragment;

    # getter for: Lcom/oneplus/gallery2/BurstViewerFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;
    invoke-static {v3}, Lcom/oneplus/gallery2/BurstViewerFragment;->access$700(Lcom/oneplus/gallery2/BurstViewerFragment;)Lcom/oneplus/gallery2/media/MediaList;

    move-result-object v3

    invoke-interface {v3}, Lcom/oneplus/gallery2/media/MediaList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2316
    :cond_0
    :goto_0
    return-void

    .line 2309
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2310
    .local v2, "otherMedias":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/media/Media;>;"
    iget-object v3, p0, Lcom/oneplus/gallery2/BurstViewerFragment$20$2;->this$1:Lcom/oneplus/gallery2/BurstViewerFragment$20;

    iget-object v3, v3, Lcom/oneplus/gallery2/BurstViewerFragment$20;->this$0:Lcom/oneplus/gallery2/BurstViewerFragment;

    # getter for: Lcom/oneplus/gallery2/BurstViewerFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;
    invoke-static {v3}, Lcom/oneplus/gallery2/BurstViewerFragment;->access$700(Lcom/oneplus/gallery2/BurstViewerFragment;)Lcom/oneplus/gallery2/media/MediaList;

    move-result-object v3

    invoke-interface {v3}, Lcom/oneplus/gallery2/media/MediaList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/Media;

    .line 2312
    .local v1, "media":Lcom/oneplus/gallery2/media/Media;
    iget-object v3, p0, Lcom/oneplus/gallery2/BurstViewerFragment$20$2;->this$1:Lcom/oneplus/gallery2/BurstViewerFragment$20;

    iget-object v3, v3, Lcom/oneplus/gallery2/BurstViewerFragment$20;->this$0:Lcom/oneplus/gallery2/BurstViewerFragment;

    # getter for: Lcom/oneplus/gallery2/BurstViewerFragment;->m_SelectedMediaList:Ljava/util/List;
    invoke-static {v3}, Lcom/oneplus/gallery2/BurstViewerFragment;->access$3600(Lcom/oneplus/gallery2/BurstViewerFragment;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2313
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2315
    .end local v1    # "media":Lcom/oneplus/gallery2/media/Media;
    :cond_3
    iget-object v3, p0, Lcom/oneplus/gallery2/BurstViewerFragment$20$2;->this$1:Lcom/oneplus/gallery2/BurstViewerFragment$20;

    iget-object v3, v3, Lcom/oneplus/gallery2/BurstViewerFragment$20;->this$0:Lcom/oneplus/gallery2/BurstViewerFragment;

    invoke-virtual {v3}, Lcom/oneplus/gallery2/BurstViewerFragment;->getGallery()Lcom/oneplus/gallery2/Gallery;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    iget-object v6, p0, Lcom/oneplus/gallery2/BurstViewerFragment$20$2;->this$1:Lcom/oneplus/gallery2/BurstViewerFragment$20;

    iget-object v6, v6, Lcom/oneplus/gallery2/BurstViewerFragment$20;->this$0:Lcom/oneplus/gallery2/BurstViewerFragment;

    # getter for: Lcom/oneplus/gallery2/BurstViewerFragment;->m_SaveCallback:Lcom/oneplus/gallery2/Gallery$MediaDeletionCallback;
    invoke-static {v6}, Lcom/oneplus/gallery2/BurstViewerFragment;->access$4700(Lcom/oneplus/gallery2/BurstViewerFragment;)Lcom/oneplus/gallery2/Gallery$MediaDeletionCallback;

    move-result-object v6

    invoke-virtual {v3, v4, v2, v5, v6}, Lcom/oneplus/gallery2/Gallery;->deleteMedia(Lcom/oneplus/gallery2/media/MediaSet;Ljava/util/Collection;ILcom/oneplus/gallery2/Gallery$MediaDeletionCallback;)Z

    goto :goto_0
.end method
