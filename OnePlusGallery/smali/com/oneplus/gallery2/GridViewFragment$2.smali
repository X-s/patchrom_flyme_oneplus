.class Lcom/oneplus/gallery2/GridViewFragment$2;
.super Lcom/oneplus/gallery2/media/MediaChangeCallback;
.source "GridViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/GridViewFragment;
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
    .line 361
    iput-object p1, p0, Lcom/oneplus/gallery2/GridViewFragment$2;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    invoke-direct {p0}, Lcom/oneplus/gallery2/media/MediaChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaUpdated(Lcom/oneplus/gallery2/media/MediaSource;Lcom/oneplus/gallery2/media/Media;I)V
    .locals 12
    .param p1, "source"    # Lcom/oneplus/gallery2/media/MediaSource;
    .param p2, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p3, "flags"    # I

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 364
    iget-object v8, p0, Lcom/oneplus/gallery2/GridViewFragment$2;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    # getter for: Lcom/oneplus/gallery2/GridViewFragment;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;
    invoke-static {v8}, Lcom/oneplus/gallery2/GridViewFragment;->access$1500(Lcom/oneplus/gallery2/GridViewFragment;)Lcom/oneplus/gallery2/media/MediaList;

    move-result-object v8

    if-nez v8, :cond_1

    .line 419
    :cond_0
    :goto_0
    return-void

    .line 366
    :cond_1
    sget v8, Lcom/oneplus/gallery2/media/GroupedMedia;->FLAG_SUB_MEDIA_COUNT_CHANGED:I

    and-int/2addr v8, p3

    if-eqz v8, :cond_2

    move v3, v9

    .line 367
    .local v3, "isSubMediaCountChange":Z
    :goto_1
    sget v8, Lcom/oneplus/gallery2/media/GroupedMedia;->FLAG_COVER_CHANGED:I

    and-int/2addr v8, p3

    if-eqz v8, :cond_3

    move v4, v9

    .line 368
    .local v4, "isSubMediaCoverChange":Z
    :goto_2
    sget v8, Lcom/oneplus/gallery2/media/Media;->FLAG_LAST_MODIFIED_TIME_CHANGED:I

    and-int/2addr v8, p3

    if-eqz v8, :cond_4

    move v2, v9

    .line 369
    .local v2, "isLastModifiedTimeChanged":Z
    :goto_3
    sget v8, Lcom/oneplus/gallery2/media/Media;->FLAG_FILE_SIZE_CHANGED:I

    and-int/2addr v8, p3

    if-eqz v8, :cond_5

    move v1, v9

    .line 370
    .local v1, "isFileSizeChanged":Z
    :goto_4
    if-nez v3, :cond_6

    if-nez v4, :cond_6

    if-nez v2, :cond_6

    if-nez v1, :cond_6

    .line 372
    iget-object v8, p0, Lcom/oneplus/gallery2/GridViewFragment$2;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    # getter for: Lcom/oneplus/gallery2/GridViewFragment;->TAG:Ljava/lang/String;
    invoke-static {v8}, Lcom/oneplus/gallery2/GridViewFragment;->access$1600(Lcom/oneplus/gallery2/GridViewFragment;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "onMediaUpdated() - skip thumbnail update"

    invoke-static {v8, v9}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v1    # "isFileSizeChanged":Z
    .end local v2    # "isLastModifiedTimeChanged":Z
    .end local v3    # "isSubMediaCountChange":Z
    .end local v4    # "isSubMediaCoverChange":Z
    :cond_2
    move v3, v10

    .line 366
    goto :goto_1

    .restart local v3    # "isSubMediaCountChange":Z
    :cond_3
    move v4, v10

    .line 367
    goto :goto_2

    .restart local v4    # "isSubMediaCoverChange":Z
    :cond_4
    move v2, v10

    .line 368
    goto :goto_3

    .restart local v2    # "isLastModifiedTimeChanged":Z
    :cond_5
    move v1, v10

    .line 369
    goto :goto_4

    .line 375
    .restart local v1    # "isFileSizeChanged":Z
    :cond_6
    iget-object v8, p0, Lcom/oneplus/gallery2/GridViewFragment$2;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    # getter for: Lcom/oneplus/gallery2/GridViewFragment;->m_ItemAdapter:Lcom/oneplus/gallery2/GridViewItemAdapter;
    invoke-static {v8}, Lcom/oneplus/gallery2/GridViewFragment;->access$1700(Lcom/oneplus/gallery2/GridViewFragment;)Lcom/oneplus/gallery2/GridViewItemAdapter;

    move-result-object v8

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/oneplus/gallery2/GridViewFragment$2;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    # getter for: Lcom/oneplus/gallery2/GridViewFragment;->m_ItemAdapter:Lcom/oneplus/gallery2/GridViewItemAdapter;
    invoke-static {v8}, Lcom/oneplus/gallery2/GridViewFragment;->access$1700(Lcom/oneplus/gallery2/GridViewFragment;)Lcom/oneplus/gallery2/GridViewItemAdapter;

    move-result-object v8

    invoke-virtual {v8, p2}, Lcom/oneplus/gallery2/GridViewItemAdapter;->findViewHolder(Lcom/oneplus/gallery2/media/Media;)Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;

    move-result-object v5

    .line 376
    .local v5, "itemHolder":Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;
    :goto_5
    if-nez v5, :cond_8

    .line 378
    iget-object v8, p0, Lcom/oneplus/gallery2/GridViewFragment$2;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    # getter for: Lcom/oneplus/gallery2/GridViewFragment;->TAG:Ljava/lang/String;
    invoke-static {v8}, Lcom/oneplus/gallery2/GridViewFragment;->access$1800(Lcom/oneplus/gallery2/GridViewFragment;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "onMediaUpdated() - itemHolder is null"

    invoke-static {v8, v9}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 375
    .end local v5    # "itemHolder":Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;
    :cond_7
    const/4 v5, 0x0

    goto :goto_5

    .line 383
    .restart local v5    # "itemHolder":Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;
    :cond_8
    if-eqz v3, :cond_9

    .line 385
    invoke-static {p2}, Lcom/oneplus/gallery2/media/MediaUtils;->containsMultipleSubMedia(Lcom/oneplus/gallery2/media/Media;)Z

    move-result v8

    if-eqz v8, :cond_b

    move-object v8, p2

    .line 387
    check-cast v8, Lcom/oneplus/gallery2/media/GroupedMedia;

    invoke-interface {v8}, Lcom/oneplus/gallery2/media/GroupedMedia;->getSubMediaCount()I

    move-result v6

    .line 388
    .local v6, "subMediaCount":I
    iget-object v8, v5, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;->itemInfoTextView:Landroid/widget/TextView;

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 389
    iget-object v8, v5, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;->typeIconView:Landroid/widget/ImageView;

    const v11, 0x7f020095

    invoke-virtual {v8, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 390
    iget-object v8, v5, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;->typeIconView:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    invoke-virtual {v8, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 391
    iget-object v8, p0, Lcom/oneplus/gallery2/GridViewFragment$2;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    # getter for: Lcom/oneplus/gallery2/GridViewFragment;->TAG:Ljava/lang/String;
    invoke-static {v8}, Lcom/oneplus/gallery2/GridViewFragment;->access$1900(Lcom/oneplus/gallery2/GridViewFragment;)Ljava/lang/String;

    move-result-object v8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onMediaUpdated() - update sub media count:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",media:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    .end local v6    # "subMediaCount":I
    :cond_9
    :goto_6
    iget-object v8, p0, Lcom/oneplus/gallery2/GridViewFragment$2;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    # getter for: Lcom/oneplus/gallery2/GridViewFragment;->m_ThumbnailInfoTable:Ljava/util/Map;
    invoke-static {v8}, Lcom/oneplus/gallery2/GridViewFragment;->access$2000(Lcom/oneplus/gallery2/GridViewFragment;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oneplus/gallery2/GridViewFragment$ThumbnailInfo;

    .line 401
    .local v7, "thumbInfo":Lcom/oneplus/gallery2/GridViewFragment$ThumbnailInfo;
    if-nez v4, :cond_a

    if-nez v2, :cond_a

    if-eqz v1, :cond_0

    .line 403
    :cond_a
    if-eqz v7, :cond_c

    .line 404
    invoke-virtual {v7, v9}, Lcom/oneplus/gallery2/GridViewFragment$ThumbnailInfo;->dropThumbnailImages(Z)Z

    .line 408
    :goto_7
    iget-object v8, p0, Lcom/oneplus/gallery2/GridViewFragment$2;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    # getter for: Lcom/oneplus/gallery2/GridViewFragment;->TAG:Ljava/lang/String;
    invoke-static {v8}, Lcom/oneplus/gallery2/GridViewFragment;->access$2100(Lcom/oneplus/gallery2/GridViewFragment;)Ljava/lang/String;

    move-result-object v8

    const-string v10, "onMediaUpdated() - Refresh thumbnail image: "

    invoke-static {v8, v10, p2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 411
    invoke-virtual {v7}, Lcom/oneplus/gallery2/GridViewFragment$ThumbnailInfo;->getHQThumbnailImage()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 412
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_d

    .line 414
    iget-object v8, p0, Lcom/oneplus/gallery2/GridViewFragment$2;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    # invokes: Lcom/oneplus/gallery2/GridViewFragment;->updateItemViewHolderBitmap(Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;Landroid/graphics/Bitmap;)V
    invoke-static {v8, v5, v0}, Lcom/oneplus/gallery2/GridViewFragment;->access$2200(Lcom/oneplus/gallery2/GridViewFragment;Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 395
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v7    # "thumbInfo":Lcom/oneplus/gallery2/GridViewFragment$ThumbnailInfo;
    :cond_b
    iget-object v8, v5, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;->typeIconView:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    const/16 v10, 0x8

    invoke-virtual {v8, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_6

    .line 406
    .restart local v7    # "thumbInfo":Lcom/oneplus/gallery2/GridViewFragment$ThumbnailInfo;
    :cond_c
    iget-object v8, p0, Lcom/oneplus/gallery2/GridViewFragment$2;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    invoke-virtual {v8, p2}, Lcom/oneplus/gallery2/GridViewFragment;->getThumbnailInfo(Lcom/oneplus/gallery2/media/Media;)Lcom/oneplus/gallery2/GridViewFragment$ThumbnailInfo;

    move-result-object v7

    goto :goto_7

    .line 417
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_d
    invoke-virtual {v7, v9}, Lcom/oneplus/gallery2/GridViewFragment$ThumbnailInfo;->decodeThumbnailImages(Z)V

    goto/16 :goto_0
.end method
