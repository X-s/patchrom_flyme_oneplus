.class Lcom/oneplus/gallery/GridViewFragment$2;
.super Ljava/lang/Object;
.source "GridViewFragment.java"

# interfaces
.implements Lcom/oneplus/gallery/media/MediaManager$MediaChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/GridViewFragment;
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
    .line 357
    iput-object p1, p0, Lcom/oneplus/gallery/GridViewFragment$2;->this$0:Lcom/oneplus/gallery/GridViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaCreated(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;I)V
    .locals 0
    .param p1, "id"    # J
    .param p3, "mediaType"    # Lcom/oneplus/gallery/media/MediaType;
    .param p4, "media"    # Lcom/oneplus/gallery/media/Media;
    .param p5, "flags"    # I

    .prologue
    .line 400
    return-void
.end method

.method public onMediaDeleted(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;I)V
    .locals 0
    .param p1, "id"    # J
    .param p3, "mediaType"    # Lcom/oneplus/gallery/media/MediaType;
    .param p4, "media"    # Lcom/oneplus/gallery/media/Media;
    .param p5, "flags"    # I

    .prologue
    .line 395
    return-void
.end method

.method public onMediaRecycled(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;I)V
    .locals 0
    .param p1, "id"    # J
    .param p3, "mediaType"    # Lcom/oneplus/gallery/media/MediaType;
    .param p4, "media"    # Lcom/oneplus/gallery/media/Media;
    .param p5, "flags"    # I

    .prologue
    .line 390
    return-void
.end method

.method public onMediaRestored(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;I)V
    .locals 0
    .param p1, "id"    # J
    .param p3, "mediaType"    # Lcom/oneplus/gallery/media/MediaType;
    .param p4, "media"    # Lcom/oneplus/gallery/media/Media;
    .param p5, "flags"    # I

    .prologue
    .line 385
    return-void
.end method

.method public onMediaUpdated(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;I)V
    .locals 5
    .param p1, "id"    # J
    .param p3, "mediaType"    # Lcom/oneplus/gallery/media/MediaType;
    .param p4, "media"    # Lcom/oneplus/gallery/media/Media;
    .param p5, "flags"    # I

    .prologue
    const/4 v4, 0x1

    .line 361
    iget-object v2, p0, Lcom/oneplus/gallery/GridViewFragment$2;->this$0:Lcom/oneplus/gallery/GridViewFragment;

    # getter for: Lcom/oneplus/gallery/GridViewFragment;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;
    invoke-static {v2}, Lcom/oneplus/gallery/GridViewFragment;->access$1500(Lcom/oneplus/gallery/GridViewFragment;)Lcom/oneplus/gallery/media/MediaList;

    move-result-object v2

    if-nez v2, :cond_1

    .line 380
    :cond_0
    :goto_0
    return-void

    .line 364
    :cond_1
    and-int/lit8 v2, p5, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 366
    iget-object v2, p0, Lcom/oneplus/gallery/GridViewFragment$2;->this$0:Lcom/oneplus/gallery/GridViewFragment;

    # getter for: Lcom/oneplus/gallery/GridViewFragment;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/oneplus/gallery/GridViewFragment;->access$1600(Lcom/oneplus/gallery/GridViewFragment;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "onMediaUpdated() - skip thumbnail update"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 369
    :cond_2
    iget-object v2, p0, Lcom/oneplus/gallery/GridViewFragment$2;->this$0:Lcom/oneplus/gallery/GridViewFragment;

    # getter for: Lcom/oneplus/gallery/GridViewFragment;->m_ThumbnailInfoTable:Ljava/util/Map;
    invoke-static {v2}, Lcom/oneplus/gallery/GridViewFragment;->access$1700(Lcom/oneplus/gallery/GridViewFragment;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;

    .line 370
    .local v1, "thumbInfo":Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;
    if-eqz v1, :cond_3

    .line 371
    invoke-virtual {v1, v4}, Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;->dropThumbnailImages(Z)Z

    .line 372
    :cond_3
    iget-object v2, p0, Lcom/oneplus/gallery/GridViewFragment$2;->this$0:Lcom/oneplus/gallery/GridViewFragment;

    # getter for: Lcom/oneplus/gallery/GridViewFragment;->m_ItemAdapter:Lcom/oneplus/gallery/GridViewItemAdapter;
    invoke-static {v2}, Lcom/oneplus/gallery/GridViewFragment;->access$1800(Lcom/oneplus/gallery/GridViewFragment;)Lcom/oneplus/gallery/GridViewItemAdapter;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/oneplus/gallery/GridViewFragment$2;->this$0:Lcom/oneplus/gallery/GridViewFragment;

    # getter for: Lcom/oneplus/gallery/GridViewFragment;->m_ItemAdapter:Lcom/oneplus/gallery/GridViewItemAdapter;
    invoke-static {v2}, Lcom/oneplus/gallery/GridViewFragment;->access$1800(Lcom/oneplus/gallery/GridViewFragment;)Lcom/oneplus/gallery/GridViewItemAdapter;

    move-result-object v2

    invoke-virtual {v2, p4}, Lcom/oneplus/gallery/GridViewItemAdapter;->findViewHolder(Lcom/oneplus/gallery/media/Media;)Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;

    move-result-object v0

    .line 373
    .local v0, "itemHolder":Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;
    :goto_1
    if-eqz v0, :cond_0

    .line 375
    iget-object v2, p0, Lcom/oneplus/gallery/GridViewFragment$2;->this$0:Lcom/oneplus/gallery/GridViewFragment;

    # getter for: Lcom/oneplus/gallery/GridViewFragment;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/oneplus/gallery/GridViewFragment;->access$1900(Lcom/oneplus/gallery/GridViewFragment;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "onMediaUpdated() - Refresh thumbnail image: "

    invoke-static {v2, v3, p4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 376
    if-nez v1, :cond_4

    .line 377
    iget-object v2, p0, Lcom/oneplus/gallery/GridViewFragment$2;->this$0:Lcom/oneplus/gallery/GridViewFragment;

    invoke-virtual {v2, p4}, Lcom/oneplus/gallery/GridViewFragment;->getThumbnailInfo(Lcom/oneplus/gallery/media/Media;)Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;

    move-result-object v1

    .line 378
    :cond_4
    invoke-virtual {v1, v4}, Lcom/oneplus/gallery/GridViewFragment$ThumbnailInfo;->decodeThumbnailImages(Z)V

    goto :goto_0

    .line 372
    .end local v0    # "itemHolder":Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;
    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method
