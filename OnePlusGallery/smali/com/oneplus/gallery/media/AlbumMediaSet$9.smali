.class Lcom/oneplus/gallery/media/AlbumMediaSet$9;
.super Ljava/lang/Object;
.source "AlbumMediaSet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/media/AlbumMediaSet;->onMediaRestored(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/media/AlbumMediaSet;

.field final synthetic val$id:J

.field final synthetic val$media:Lcom/oneplus/gallery/media/Media;

.field final synthetic val$mediaType:Lcom/oneplus/gallery/media/MediaType;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/media/AlbumMediaSet;JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;)V
    .locals 0

    .prologue
    .line 373
    iput-object p1, p0, Lcom/oneplus/gallery/media/AlbumMediaSet$9;->this$0:Lcom/oneplus/gallery/media/AlbumMediaSet;

    iput-wide p2, p0, Lcom/oneplus/gallery/media/AlbumMediaSet$9;->val$id:J

    iput-object p4, p0, Lcom/oneplus/gallery/media/AlbumMediaSet$9;->val$mediaType:Lcom/oneplus/gallery/media/MediaType;

    iput-object p5, p0, Lcom/oneplus/gallery/media/AlbumMediaSet$9;->val$media:Lcom/oneplus/gallery/media/Media;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 377
    iget-object v1, p0, Lcom/oneplus/gallery/media/AlbumMediaSet$9;->this$0:Lcom/oneplus/gallery/media/AlbumMediaSet;

    # getter for: Lcom/oneplus/gallery/media/AlbumMediaSet;->m_AlbumId:J
    invoke-static {v1}, Lcom/oneplus/gallery/media/AlbumMediaSet;->access$400(Lcom/oneplus/gallery/media/AlbumMediaSet;)J

    move-result-wide v2

    iget-wide v4, p0, Lcom/oneplus/gallery/media/AlbumMediaSet$9;->val$id:J

    invoke-static {v2, v3, v4, v5}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->isMediaContainedInAlbum(JJ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 379
    sget-object v1, Lcom/oneplus/gallery/media/AlbumMediaSet$13;->$SwitchMap$com$oneplus$gallery$media$MediaType:[I

    iget-object v2, p0, Lcom/oneplus/gallery/media/AlbumMediaSet$9;->val$mediaType:Lcom/oneplus/gallery/media/MediaType;

    invoke-virtual {v2}, Lcom/oneplus/gallery/media/MediaType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 396
    :cond_0
    :goto_0
    return-void

    .line 382
    :pswitch_0
    iget-object v1, p0, Lcom/oneplus/gallery/media/AlbumMediaSet$9;->this$0:Lcom/oneplus/gallery/media/AlbumMediaSet;

    new-array v2, v7, [J

    iget-wide v4, p0, Lcom/oneplus/gallery/media/AlbumMediaSet$9;->val$id:J

    aput-wide v4, v2, v6

    invoke-virtual {v1, v2, v8}, Lcom/oneplus/gallery/media/AlbumMediaSet;->updatePhotoIdTable([J[J)Z

    .line 390
    :goto_1
    iget-object v0, p0, Lcom/oneplus/gallery/media/AlbumMediaSet$9;->val$media:Lcom/oneplus/gallery/media/Media;

    .line 391
    .local v0, "newMedia":Lcom/oneplus/gallery/media/Media;
    if-nez v0, :cond_1

    .line 392
    iget-object v1, p0, Lcom/oneplus/gallery/media/AlbumMediaSet$9;->this$0:Lcom/oneplus/gallery/media/AlbumMediaSet;

    invoke-virtual {v1}, Lcom/oneplus/gallery/media/AlbumMediaSet;->getMediaManager()Lcom/oneplus/gallery/media/OPMediaManager;

    move-result-object v1

    iget-wide v2, p0, Lcom/oneplus/gallery/media/AlbumMediaSet$9;->val$id:J

    invoke-interface {v1, v2, v3}, Lcom/oneplus/gallery/media/OPMediaManager;->obtainMedia(J)Lcom/oneplus/gallery/media/Media;

    move-result-object v0

    .line 393
    :cond_1
    if-eqz v0, :cond_0

    .line 394
    iget-object v1, p0, Lcom/oneplus/gallery/media/AlbumMediaSet$9;->this$0:Lcom/oneplus/gallery/media/AlbumMediaSet;

    invoke-virtual {v1, v0}, Lcom/oneplus/gallery/media/AlbumMediaSet;->addMediaToActiveMediaLists(Lcom/oneplus/gallery/media/Media;)V

    goto :goto_0

    .line 385
    .end local v0    # "newMedia":Lcom/oneplus/gallery/media/Media;
    :pswitch_1
    iget-object v1, p0, Lcom/oneplus/gallery/media/AlbumMediaSet$9;->this$0:Lcom/oneplus/gallery/media/AlbumMediaSet;

    new-array v2, v7, [J

    iget-wide v4, p0, Lcom/oneplus/gallery/media/AlbumMediaSet$9;->val$id:J

    aput-wide v4, v2, v6

    invoke-virtual {v1, v2, v8}, Lcom/oneplus/gallery/media/AlbumMediaSet;->updateVideoIdTable([J[J)Z

    goto :goto_1

    .line 379
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
