.class Lcom/oneplus/gallery/media/FavoriteMediaSet$7;
.super Ljava/lang/Object;
.source "FavoriteMediaSet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/media/FavoriteMediaSet;->queryFavoriteMediaCount()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/media/FavoriteMediaSet;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/media/FavoriteMediaSet;)V
    .locals 0

    .prologue
    .line 475
    iput-object p1, p0, Lcom/oneplus/gallery/media/FavoriteMediaSet$7;->this$0:Lcom/oneplus/gallery/media/FavoriteMediaSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 480
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 481
    .local v4, "photoIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 482
    .local v5, "videoIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v6, p0, Lcom/oneplus/gallery/media/FavoriteMediaSet$7;->this$0:Lcom/oneplus/gallery/media/FavoriteMediaSet;

    # getter for: Lcom/oneplus/gallery/media/FavoriteMediaSet;->m_MediaManager:Lcom/oneplus/gallery/media/OPMediaManager;
    invoke-static {v6}, Lcom/oneplus/gallery/media/FavoriteMediaSet;->access$000(Lcom/oneplus/gallery/media/FavoriteMediaSet;)Lcom/oneplus/gallery/media/OPMediaManager;

    move-result-object v6

    iget-object v7, p0, Lcom/oneplus/gallery/media/FavoriteMediaSet$7;->this$0:Lcom/oneplus/gallery/media/FavoriteMediaSet;

    invoke-virtual {v7}, Lcom/oneplus/gallery/media/FavoriteMediaSet;->getTargetMediaType()Lcom/oneplus/gallery/media/MediaType;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/oneplus/gallery/media/OPMediaManager;->iterateMediaId(Lcom/oneplus/gallery/media/MediaType;)Lcom/oneplus/gallery/media/OPMediaManager$MediaIdIterator;

    move-result-object v2

    .line 483
    .local v2, "iterator":Lcom/oneplus/gallery/media/OPMediaManager$MediaIdIterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Lcom/oneplus/gallery/media/OPMediaManager$MediaIdIterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 485
    invoke-interface {v2}, Lcom/oneplus/gallery/media/OPMediaManager$MediaIdIterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 486
    .local v0, "id":J
    iget-object v6, p0, Lcom/oneplus/gallery/media/FavoriteMediaSet$7;->this$0:Lcom/oneplus/gallery/media/FavoriteMediaSet;

    # getter for: Lcom/oneplus/gallery/media/FavoriteMediaSet;->m_MediaManager:Lcom/oneplus/gallery/media/OPMediaManager;
    invoke-static {v6}, Lcom/oneplus/gallery/media/FavoriteMediaSet;->access$000(Lcom/oneplus/gallery/media/FavoriteMediaSet;)Lcom/oneplus/gallery/media/OPMediaManager;

    move-result-object v6

    invoke-interface {v6, v0, v1}, Lcom/oneplus/gallery/media/OPMediaManager;->isFavorite(J)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 488
    invoke-interface {v2}, Lcom/oneplus/gallery/media/OPMediaManager$MediaIdIterator;->nextMediaType()Lcom/oneplus/gallery/media/MediaType;

    move-result-object v3

    .line 489
    .local v3, "mediaType":Lcom/oneplus/gallery/media/MediaType;
    sget-object v6, Lcom/oneplus/gallery/media/FavoriteMediaSet$8;->$SwitchMap$com$oneplus$gallery$media$MediaType:[I

    invoke-virtual {v3}, Lcom/oneplus/gallery/media/MediaType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    goto :goto_0

    .line 492
    :pswitch_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 495
    :pswitch_1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 499
    .end local v0    # "id":J
    .end local v3    # "mediaType":Lcom/oneplus/gallery/media/MediaType;
    :cond_1
    iget-object v6, p0, Lcom/oneplus/gallery/media/FavoriteMediaSet$7;->this$0:Lcom/oneplus/gallery/media/FavoriteMediaSet;

    invoke-static {v4}, Lcom/oneplus/util/CollectionUtils;->toLongArray(Ljava/util/Collection;)[J

    move-result-object v7

    invoke-virtual {v6, v7, v8}, Lcom/oneplus/gallery/media/FavoriteMediaSet;->updatePhotoIdTable([J[J)Z

    .line 500
    iget-object v6, p0, Lcom/oneplus/gallery/media/FavoriteMediaSet$7;->this$0:Lcom/oneplus/gallery/media/FavoriteMediaSet;

    invoke-static {v5}, Lcom/oneplus/util/CollectionUtils;->toLongArray(Ljava/util/Collection;)[J

    move-result-object v7

    invoke-virtual {v6, v7, v8}, Lcom/oneplus/gallery/media/FavoriteMediaSet;->updateVideoIdTable([J[J)Z

    .line 501
    return-void

    .line 489
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
