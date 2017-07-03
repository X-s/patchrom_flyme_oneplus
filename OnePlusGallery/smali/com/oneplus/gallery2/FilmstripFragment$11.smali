.class Lcom/oneplus/gallery2/FilmstripFragment$11;
.super Lcom/oneplus/gallery2/media/MediaChangeCallback;
.source "FilmstripFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/FilmstripFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/FilmstripFragment;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/FilmstripFragment;)V
    .locals 0

    .prologue
    .line 317
    iput-object p1, p0, Lcom/oneplus/gallery2/FilmstripFragment$11;->this$0:Lcom/oneplus/gallery2/FilmstripFragment;

    invoke-direct {p0}, Lcom/oneplus/gallery2/media/MediaChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaUpdated(Lcom/oneplus/gallery2/media/MediaSource;Lcom/oneplus/gallery2/media/Media;I)V
    .locals 10
    .param p1, "source"    # Lcom/oneplus/gallery2/media/MediaSource;
    .param p2, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p3, "flags"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 321
    iget-object v9, p0, Lcom/oneplus/gallery2/FilmstripFragment$11;->this$0:Lcom/oneplus/gallery2/FilmstripFragment;

    # getter for: Lcom/oneplus/gallery2/FilmstripFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;
    invoke-static {v9}, Lcom/oneplus/gallery2/FilmstripFragment;->access$1300(Lcom/oneplus/gallery2/FilmstripFragment;)Lcom/oneplus/gallery2/media/MediaList;

    move-result-object v9

    if-nez v9, :cond_1

    .line 362
    :cond_0
    :goto_0
    return-void

    .line 324
    :cond_1
    sget v9, Lcom/oneplus/gallery2/media/GroupedMedia;->FLAG_SUB_MEDIA_COUNT_CHANGED:I

    and-int/2addr v9, p3

    if-eqz v9, :cond_2

    move v4, v7

    .line 325
    .local v4, "isSubMediaCountChange":Z
    :goto_1
    sget v9, Lcom/oneplus/gallery2/media/GroupedMedia;->FLAG_COVER_CHANGED:I

    and-int/2addr v9, p3

    if-eqz v9, :cond_3

    move v5, v7

    .line 326
    .local v5, "isSubMediaCoverChange":Z
    :goto_2
    sget v9, Lcom/oneplus/gallery2/media/Media;->FLAG_LAST_MODIFIED_TIME_CHANGED:I

    and-int/2addr v9, p3

    if-eqz v9, :cond_4

    move v3, v7

    .line 327
    .local v3, "isLastModifiedTimeChanged":Z
    :goto_3
    sget v9, Lcom/oneplus/gallery2/media/Media;->FLAG_FILE_SIZE_CHANGED:I

    and-int/2addr v9, p3

    if-eqz v9, :cond_5

    move v1, v7

    .line 328
    .local v1, "isFileSizeChanged":Z
    :goto_4
    if-nez v4, :cond_6

    if-nez v5, :cond_6

    if-nez v3, :cond_6

    if-nez v1, :cond_6

    .line 330
    iget-object v7, p0, Lcom/oneplus/gallery2/FilmstripFragment$11;->this$0:Lcom/oneplus/gallery2/FilmstripFragment;

    # getter for: Lcom/oneplus/gallery2/FilmstripFragment;->TAG:Ljava/lang/String;
    invoke-static {v7}, Lcom/oneplus/gallery2/FilmstripFragment;->access$1400(Lcom/oneplus/gallery2/FilmstripFragment;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "onMediaUpdated() - skip media update"

    invoke-static {v7, v8}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v1    # "isFileSizeChanged":Z
    .end local v3    # "isLastModifiedTimeChanged":Z
    .end local v4    # "isSubMediaCountChange":Z
    .end local v5    # "isSubMediaCoverChange":Z
    :cond_2
    move v4, v8

    .line 324
    goto :goto_1

    .restart local v4    # "isSubMediaCountChange":Z
    :cond_3
    move v5, v8

    .line 325
    goto :goto_2

    .restart local v5    # "isSubMediaCoverChange":Z
    :cond_4
    move v3, v8

    .line 326
    goto :goto_3

    .restart local v3    # "isLastModifiedTimeChanged":Z
    :cond_5
    move v1, v8

    .line 327
    goto :goto_4

    .line 333
    .restart local v1    # "isFileSizeChanged":Z
    :cond_6
    iget-object v7, p0, Lcom/oneplus/gallery2/FilmstripFragment$11;->this$0:Lcom/oneplus/gallery2/FilmstripFragment;

    invoke-interface {p2}, Lcom/oneplus/gallery2/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v8

    # invokes: Lcom/oneplus/gallery2/FilmstripFragment;->searchMediaListIndex(Landroid/net/Uri;)I
    invoke-static {v7, v8}, Lcom/oneplus/gallery2/FilmstripFragment;->access$1500(Lcom/oneplus/gallery2/FilmstripFragment;Landroid/net/Uri;)I

    move-result v6

    .line 334
    .local v6, "mediaIndex":I
    if-gez v6, :cond_7

    .line 336
    iget-object v7, p0, Lcom/oneplus/gallery2/FilmstripFragment$11;->this$0:Lcom/oneplus/gallery2/FilmstripFragment;

    # getter for: Lcom/oneplus/gallery2/FilmstripFragment;->TAG:Ljava/lang/String;
    invoke-static {v7}, Lcom/oneplus/gallery2/FilmstripFragment;->access$1600(Lcom/oneplus/gallery2/FilmstripFragment;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onMediaUpdated() - search index:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "is less than 0."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 339
    :cond_7
    iget-object v7, p0, Lcom/oneplus/gallery2/FilmstripFragment$11;->this$0:Lcom/oneplus/gallery2/FilmstripFragment;

    # invokes: Lcom/oneplus/gallery2/FilmstripFragment;->findFilmstripItemFromPosition(I)Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;
    invoke-static {v7, v6}, Lcom/oneplus/gallery2/FilmstripFragment;->access$1700(Lcom/oneplus/gallery2/FilmstripFragment;I)Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;

    move-result-object v0

    .line 340
    .local v0, "filmstripItem":Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;
    if-nez v0, :cond_8

    .line 342
    iget-object v7, p0, Lcom/oneplus/gallery2/FilmstripFragment$11;->this$0:Lcom/oneplus/gallery2/FilmstripFragment;

    # getter for: Lcom/oneplus/gallery2/FilmstripFragment;->TAG:Ljava/lang/String;
    invoke-static {v7}, Lcom/oneplus/gallery2/FilmstripFragment;->access$1800(Lcom/oneplus/gallery2/FilmstripFragment;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "onMediaUpdated() - item is null"

    invoke-static {v7, v8}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 345
    :cond_8
    instance-of v2, p2, Lcom/oneplus/gallery2/media/GroupedMedia;

    .line 346
    .local v2, "isGroupedMedia":Z
    if-eqz v2, :cond_a

    if-nez v4, :cond_9

    if-eqz v5, :cond_a

    .line 348
    :cond_9
    invoke-virtual {v0, p2}, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->updateMedia(Lcom/oneplus/gallery2/media/Media;)V

    .line 350
    :cond_a
    if-eqz v2, :cond_b

    if-nez v5, :cond_c

    :cond_b
    if-nez v3, :cond_c

    if-eqz v1, :cond_0

    .line 353
    :cond_c
    sget-object v7, Lcom/oneplus/gallery2/FilmstripFragment$ImageDecodeState;->NONE:Lcom/oneplus/gallery2/FilmstripFragment$ImageDecodeState;

    invoke-virtual {v0, v7}, Lcom/oneplus/gallery2/FilmstripFragment$FilmstripItem;->setImageDecodeState(Lcom/oneplus/gallery2/FilmstripFragment$ImageDecodeState;)V

    .line 356
    iget-object v7, p0, Lcom/oneplus/gallery2/FilmstripFragment$11;->this$0:Lcom/oneplus/gallery2/FilmstripFragment;

    # invokes: Lcom/oneplus/gallery2/FilmstripFragment;->checkImageDecoding(I)V
    invoke-static {v7, v6}, Lcom/oneplus/gallery2/FilmstripFragment;->access$1900(Lcom/oneplus/gallery2/FilmstripFragment;I)V

    .line 359
    sget v7, Lcom/oneplus/gallery2/media/Media;->FLAG_FAVORITE_CHANGED:I

    and-int/2addr v7, p3

    if-eqz v7, :cond_0

    .line 360
    iget-object v7, p0, Lcom/oneplus/gallery2/FilmstripFragment$11;->this$0:Lcom/oneplus/gallery2/FilmstripFragment;

    # invokes: Lcom/oneplus/gallery2/FilmstripFragment;->updateCollectButtonSelection()V
    invoke-static {v7}, Lcom/oneplus/gallery2/FilmstripFragment;->access$2000(Lcom/oneplus/gallery2/FilmstripFragment;)V

    goto/16 :goto_0
.end method
