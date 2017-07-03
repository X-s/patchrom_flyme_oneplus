.class Lcom/oneplus/gallery/media/AlbumMediaSet$3;
.super Ljava/lang/Object;
.source "AlbumMediaSet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/media/AlbumMediaSet;-><init>(JLjava/lang/String;JJJLcom/oneplus/gallery/media/MediaType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/media/AlbumMediaSet;

.field final synthetic val$albumId:J


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/media/AlbumMediaSet;J)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/oneplus/gallery/media/AlbumMediaSet$3;->this$0:Lcom/oneplus/gallery/media/AlbumMediaSet;

    iput-wide p2, p0, Lcom/oneplus/gallery/media/AlbumMediaSet$3;->val$albumId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 123
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .local v4, "photoIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 125
    .local v5, "videoIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v6, p0, Lcom/oneplus/gallery/media/AlbumMediaSet$3;->this$0:Lcom/oneplus/gallery/media/AlbumMediaSet;

    # getter for: Lcom/oneplus/gallery/media/AlbumMediaSet;->m_MediaManager:Lcom/oneplus/gallery/media/OPMediaManager;
    invoke-static {v6}, Lcom/oneplus/gallery/media/AlbumMediaSet;->access$300(Lcom/oneplus/gallery/media/AlbumMediaSet;)Lcom/oneplus/gallery/media/OPMediaManager;

    move-result-object v6

    iget-wide v8, p0, Lcom/oneplus/gallery/media/AlbumMediaSet$3;->val$albumId:J

    iget-object v7, p0, Lcom/oneplus/gallery/media/AlbumMediaSet$3;->this$0:Lcom/oneplus/gallery/media/AlbumMediaSet;

    invoke-virtual {v7}, Lcom/oneplus/gallery/media/AlbumMediaSet;->getTargetMediaType()Lcom/oneplus/gallery/media/MediaType;

    move-result-object v7

    invoke-interface {v6, v8, v9, v7}, Lcom/oneplus/gallery/media/OPMediaManager;->iterateMediaIdInAlbum(JLcom/oneplus/gallery/media/MediaType;)Lcom/oneplus/gallery/media/OPMediaManager$MediaIdIterator;

    move-result-object v2

    .line 126
    .local v2, "iterator":Lcom/oneplus/gallery/media/OPMediaManager$MediaIdIterator;
    :goto_0
    invoke-interface {v2}, Lcom/oneplus/gallery/media/OPMediaManager$MediaIdIterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 128
    invoke-interface {v2}, Lcom/oneplus/gallery/media/OPMediaManager$MediaIdIterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 129
    .local v0, "id":J
    invoke-interface {v2}, Lcom/oneplus/gallery/media/OPMediaManager$MediaIdIterator;->nextMediaType()Lcom/oneplus/gallery/media/MediaType;

    move-result-object v3

    .line 130
    .local v3, "mediaType":Lcom/oneplus/gallery/media/MediaType;
    sget-object v6, Lcom/oneplus/gallery/media/AlbumMediaSet$13;->$SwitchMap$com$oneplus$gallery$media$MediaType:[I

    invoke-virtual {v3}, Lcom/oneplus/gallery/media/MediaType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    goto :goto_0

    .line 133
    :pswitch_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 136
    :pswitch_1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 140
    .end local v0    # "id":J
    .end local v3    # "mediaType":Lcom/oneplus/gallery/media/MediaType;
    :cond_0
    iget-object v6, p0, Lcom/oneplus/gallery/media/AlbumMediaSet$3;->this$0:Lcom/oneplus/gallery/media/AlbumMediaSet;

    invoke-static {v4}, Lcom/oneplus/util/CollectionUtils;->toLongArray(Ljava/util/Collection;)[J

    move-result-object v7

    invoke-virtual {v6, v7, v10}, Lcom/oneplus/gallery/media/AlbumMediaSet;->updatePhotoIdTable([J[J)Z

    .line 141
    iget-object v6, p0, Lcom/oneplus/gallery/media/AlbumMediaSet$3;->this$0:Lcom/oneplus/gallery/media/AlbumMediaSet;

    invoke-static {v5}, Lcom/oneplus/util/CollectionUtils;->toLongArray(Ljava/util/Collection;)[J

    move-result-object v7

    invoke-virtual {v6, v7, v10}, Lcom/oneplus/gallery/media/AlbumMediaSet;->updateVideoIdTable([J[J)Z

    .line 142
    return-void

    .line 130
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
