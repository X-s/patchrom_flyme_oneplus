.class Lcom/oneplus/gallery/media/SelfieMediaSet$1;
.super Ljava/lang/Object;
.source "SelfieMediaSet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/media/SelfieMediaSet;->checkMediaCount()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/media/SelfieMediaSet;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/media/SelfieMediaSet;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/oneplus/gallery/media/SelfieMediaSet$1;->this$0:Lcom/oneplus/gallery/media/SelfieMediaSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 59
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .local v5, "photoIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .local v6, "videoIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v7, p0, Lcom/oneplus/gallery/media/SelfieMediaSet$1;->this$0:Lcom/oneplus/gallery/media/SelfieMediaSet;

    invoke-virtual {v7}, Lcom/oneplus/gallery/media/SelfieMediaSet;->getMediaManager()Lcom/oneplus/gallery/media/OPMediaManager;

    move-result-object v7

    iget-object v8, p0, Lcom/oneplus/gallery/media/SelfieMediaSet$1;->this$0:Lcom/oneplus/gallery/media/SelfieMediaSet;

    invoke-virtual {v8}, Lcom/oneplus/gallery/media/SelfieMediaSet;->getTargetMediaType()Lcom/oneplus/gallery/media/MediaType;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/oneplus/gallery/media/OPMediaManager;->iterateMediaId(Lcom/oneplus/gallery/media/MediaType;)Lcom/oneplus/gallery/media/OPMediaManager$MediaIdIterator;

    move-result-object v1

    .line 62
    .local v1, "iterator":Lcom/oneplus/gallery/media/OPMediaManager$MediaIdIterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Lcom/oneplus/gallery/media/OPMediaManager$MediaIdIterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 64
    invoke-interface {v1}, Lcom/oneplus/gallery/media/OPMediaManager$MediaIdIterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 65
    .local v2, "id":J
    invoke-static {v2, v3}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->getExtraMediaInfo(J)Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;

    move-result-object v0

    .line 66
    .local v0, "extraInfo":Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;
    if-eqz v0, :cond_0

    iget v7, v0, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;->oneplusFlags:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_0

    .line 68
    invoke-interface {v1}, Lcom/oneplus/gallery/media/OPMediaManager$MediaIdIterator;->nextMediaType()Lcom/oneplus/gallery/media/MediaType;

    move-result-object v4

    .line 69
    .local v4, "mediaType":Lcom/oneplus/gallery/media/MediaType;
    sget-object v7, Lcom/oneplus/gallery/media/SelfieMediaSet$8;->$SwitchMap$com$oneplus$gallery$media$MediaType:[I

    invoke-virtual {v4}, Lcom/oneplus/gallery/media/MediaType;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    goto :goto_0

    .line 72
    :pswitch_0
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 75
    :pswitch_1
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 79
    .end local v0    # "extraInfo":Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;
    .end local v2    # "id":J
    .end local v4    # "mediaType":Lcom/oneplus/gallery/media/MediaType;
    :cond_1
    iget-object v7, p0, Lcom/oneplus/gallery/media/SelfieMediaSet$1;->this$0:Lcom/oneplus/gallery/media/SelfieMediaSet;

    invoke-static {v5}, Lcom/oneplus/util/CollectionUtils;->toLongArray(Ljava/util/Collection;)[J

    move-result-object v8

    invoke-virtual {v7, v8, v9}, Lcom/oneplus/gallery/media/SelfieMediaSet;->updatePhotoIdTable([J[J)Z

    .line 80
    iget-object v7, p0, Lcom/oneplus/gallery/media/SelfieMediaSet$1;->this$0:Lcom/oneplus/gallery/media/SelfieMediaSet;

    invoke-static {v6}, Lcom/oneplus/util/CollectionUtils;->toLongArray(Ljava/util/Collection;)[J

    move-result-object v8

    invoke-virtual {v7, v8, v9}, Lcom/oneplus/gallery/media/SelfieMediaSet;->updateVideoIdTable([J[J)Z

    .line 81
    return-void

    .line 69
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
