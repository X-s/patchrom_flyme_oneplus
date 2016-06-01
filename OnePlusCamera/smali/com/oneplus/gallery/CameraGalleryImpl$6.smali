.class Lcom/oneplus/gallery/CameraGalleryImpl$6;
.super Lcom/oneplus/widget/FilmstripView$Adapter;
.source "CameraGalleryImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/CameraGalleryImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private m_ItemsPool:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/oneplus/gallery/CameraGalleryImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/CameraGalleryImpl;)V
    .locals 1

    .prologue
    .line 513
    iput-object p1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$6;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-direct {p0}, Lcom/oneplus/widget/FilmstripView$Adapter;-><init>()V

    .line 515
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$6;->m_ItemsPool:Ljava/util/Queue;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$6;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    # getter for: Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/camera/media/MediaList;
    invoke-static {v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$1000(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/camera/media/MediaList;

    move-result-object v0

    invoke-interface {v0}, Lcom/oneplus/camera/media/MediaList;->size()I

    move-result v0

    return v0
.end method

.method public getItemWidth(II)I
    .locals 7
    .param p1, "position"    # I
    .param p2, "filmstripWidth"    # I

    .prologue
    .line 527
    sget-object v5, Lcom/oneplus/gallery/CameraGalleryImpl$26;->$SwitchMap$com$oneplus$camera$ui$CameraGallery$GalleryState:[I

    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl$6;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    sget-object v6, Lcom/oneplus/camera/ui/CameraGallery;->PROP_GALLERY_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v4, v6}, Lcom/oneplus/gallery/CameraGalleryImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    invoke-virtual {v4}, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->ordinal()I

    move-result v4

    aget v4, v5, v4

    packed-switch v4, :pswitch_data_0

    .line 555
    .end local p2    # "filmstripWidth":I
    :goto_0
    return p2

    .line 532
    .restart local p2    # "filmstripWidth":I
    :pswitch_0
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl$6;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    # getter for: Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/camera/media/MediaList;
    invoke-static {v4}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$1000(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/camera/media/MediaList;

    move-result-object v4

    iget-object v5, p0, Lcom/oneplus/gallery/CameraGalleryImpl$6;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    # invokes: Lcom/oneplus/gallery/CameraGalleryImpl;->getRotateMediaListIndex(I)I
    invoke-static {v5, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$2400(Lcom/oneplus/gallery/CameraGalleryImpl;I)I

    move-result v5

    invoke-interface {v4, v5}, Lcom/oneplus/camera/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/media/MediaInfo;

    .line 533
    .local v1, "info":Lcom/oneplus/camera/media/MediaInfo;
    invoke-virtual {v1}, Lcom/oneplus/camera/media/MediaInfo;->getWidth()I

    move-result v3

    .line 534
    .local v3, "width":I
    invoke-virtual {v1}, Lcom/oneplus/camera/media/MediaInfo;->getHeight()I

    move-result v0

    .line 535
    .local v0, "height":I
    if-lez v3, :cond_0

    if-gtz v0, :cond_1

    .line 538
    :cond_0
    invoke-virtual {v1}, Lcom/oneplus/camera/media/MediaInfo;->isVideo()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 540
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl$6;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    # getter for: Lcom/oneplus/gallery/CameraGalleryImpl;->m_FakeVideoSize:Landroid/util/Size;
    invoke-static {v4}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$2500(Lcom/oneplus/gallery/CameraGalleryImpl;)Landroid/util/Size;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v3

    .line 541
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl$6;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    # getter for: Lcom/oneplus/gallery/CameraGalleryImpl;->m_FakeVideoSize:Landroid/util/Size;
    invoke-static {v4}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$2500(Lcom/oneplus/gallery/CameraGalleryImpl;)Landroid/util/Size;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v0

    .line 549
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl$6;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    # getter for: Lcom/oneplus/gallery/CameraGalleryImpl;->m_MaxItemWidth:I
    invoke-static {v4}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$2700(Lcom/oneplus/gallery/CameraGalleryImpl;)I

    move-result v4

    iget-object v5, p0, Lcom/oneplus/gallery/CameraGalleryImpl$6;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    # getter for: Lcom/oneplus/gallery/CameraGalleryImpl;->m_MaxItemHeight:I
    invoke-static {v5}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$2800(Lcom/oneplus/gallery/CameraGalleryImpl;)I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v3, v0, v4, v5, v6}, Lcom/oneplus/util/SizeUtils;->getRatioStretchedSize(IIIIZ)Landroid/util/Size;

    move-result-object v2

    .line 550
    .local v2, "size":Landroid/util/Size;
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result p2

    goto :goto_0

    .line 545
    .end local v2    # "size":Landroid/util/Size;
    :cond_2
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl$6;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    # getter for: Lcom/oneplus/gallery/CameraGalleryImpl;->m_FakePhotoSize:Landroid/util/Size;
    invoke-static {v4}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$2600(Lcom/oneplus/gallery/CameraGalleryImpl;)Landroid/util/Size;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v3

    .line 546
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl$6;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    # getter for: Lcom/oneplus/gallery/CameraGalleryImpl;->m_FakePhotoSize:Landroid/util/Size;
    invoke-static {v4}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$2600(Lcom/oneplus/gallery/CameraGalleryImpl;)Landroid/util/Size;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v0

    goto :goto_1

    .line 527
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public prepareItemView(ILandroid/view/ViewGroup;)V
    .locals 7
    .param p1, "position"    # I
    .param p2, "container"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v6, 0x2710

    .line 561
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl$6;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    # getter for: Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$2900(Lcom/oneplus/gallery/CameraGalleryImpl;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "prepareItemView() - Position: "

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 564
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl$6;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    # invokes: Lcom/oneplus/gallery/CameraGalleryImpl;->getRotateMediaListIndex(I)I
    invoke-static {v3, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$2400(Lcom/oneplus/gallery/CameraGalleryImpl;I)I

    move-result v2

    .line 565
    .local v2, "mediaListIndex":I
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl$6;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    # getter for: Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/camera/media/MediaList;
    invoke-static {v3}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$1000(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/camera/media/MediaList;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/oneplus/camera/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/media/MediaInfo;

    .line 568
    .local v1, "info":Lcom/oneplus/camera/media/MediaInfo;
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl$6;->m_ItemsPool:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    .line 569
    .local v0, "galleryItem":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    if-nez v0, :cond_1

    .line 570
    new-instance v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    .end local v0    # "galleryItem":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl$6;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-direct {v0, v3, v1}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/camera/media/MediaInfo;)V

    .line 575
    .restart local v0    # "galleryItem":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    :goto_0
    iget-object v3, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->container:Landroid/view/View;

    invoke-virtual {p2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 576
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 579
    iget-object v3, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->scaleImageView:Lcom/oneplus/widget/ScaleImageView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/oneplus/widget/ScaleImageView;->setTag(Ljava/lang/Object;)V

    .line 584
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl$6;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    # getter for: Lcom/oneplus/gallery/CameraGalleryImpl;->m_GalleryItems:Landroid/util/SparseArray;
    invoke-static {v3}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$3000(Lcom/oneplus/gallery/CameraGalleryImpl;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 587
    sget-object v3, Lcom/oneplus/gallery/CameraGalleryImpl$ImageDecodeState;->NONE:Lcom/oneplus/gallery/CameraGalleryImpl$ImageDecodeState;

    iput-object v3, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->imageDecodeState:Lcom/oneplus/gallery/CameraGalleryImpl$ImageDecodeState;

    .line 588
    iget-object v3, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->scaleImageView:Lcom/oneplus/widget/ScaleImageView;

    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl$6;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    # getter for: Lcom/oneplus/gallery/CameraGalleryImpl;->m_DummyThumbDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v4}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$3100(Lcom/oneplus/gallery/CameraGalleryImpl;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/oneplus/widget/ScaleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 589
    iget-object v3, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->thumbnailDrawable:Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;

    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl$6;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    # getter for: Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsFilmstripScrolling:Z
    invoke-static {v4}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$3200(Lcom/oneplus/gallery/CameraGalleryImpl;)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;->setScrollingState(Z)V

    .line 590
    sget-object v4, Lcom/oneplus/gallery/CameraGalleryImpl$26;->$SwitchMap$com$oneplus$camera$ui$CameraGallery$UIState:[I

    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl$6;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    sget-object v5, Lcom/oneplus/camera/ui/CameraGallery;->PROP_UI_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v3, v5}, Lcom/oneplus/gallery/CameraGalleryImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/camera/ui/CameraGallery$UIState;

    invoke-virtual {v3}, Lcom/oneplus/camera/ui/CameraGallery$UIState;->ordinal()I

    move-result v3

    aget v3, v4, v3

    packed-switch v3, :pswitch_data_0

    .line 598
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl$6;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-virtual {v3}, Lcom/oneplus/gallery/CameraGalleryImpl;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 599
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl$6;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-virtual {v3}, Lcom/oneplus/gallery/CameraGalleryImpl;->getHandler()Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl$6;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-virtual {v4}, Lcom/oneplus/gallery/CameraGalleryImpl;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-static {v4, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 602
    :cond_0
    :goto_1
    return-void

    .line 572
    :cond_1
    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->updateMediaInfo(Lcom/oneplus/camera/media/MediaInfo;)V

    goto :goto_0

    .line 595
    :pswitch_0
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl$6;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-virtual {v1}, Lcom/oneplus/camera/media/MediaInfo;->getFilePath()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    # invokes: Lcom/oneplus/gallery/CameraGalleryImpl;->decodeThumbnailImage(Ljava/lang/String;ZZ)V
    invoke-static {v3, v4, v5, v6}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$3300(Lcom/oneplus/gallery/CameraGalleryImpl;Ljava/lang/String;ZZ)V

    goto :goto_1

    .line 590
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public releaseItemView(ILandroid/view/ViewGroup;)V
    .locals 5
    .param p1, "position"    # I
    .param p2, "container"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x2710

    .line 608
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    .line 609
    .local v0, "reusedItem":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    if-eqz v0, :cond_0

    .line 612
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$6;->m_ItemsPool:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 613
    invoke-virtual {p2, v4}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 614
    iget-object v1, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->scaleImageView:Lcom/oneplus/widget/ScaleImageView;

    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl$6;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    # getter for: Lcom/oneplus/gallery/CameraGalleryImpl;->m_DummyThumbDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$3100(Lcom/oneplus/gallery/CameraGalleryImpl;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/widget/ScaleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 615
    iget-object v1, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->thumbnailDrawable:Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;

    invoke-virtual {v1}, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;->clearThumbnails()V

    .line 618
    iput-object v4, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->mediaInfo:Lcom/oneplus/camera/media/MediaInfo;

    .line 620
    :cond_0
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$6;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    # getter for: Lcom/oneplus/gallery/CameraGalleryImpl;->m_GalleryItems:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$3000(Lcom/oneplus/gallery/CameraGalleryImpl;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 623
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$6;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-virtual {v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 624
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$6;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-virtual {v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl$6;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-virtual {v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 627
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/oneplus/widget/FilmstripView$Adapter;->releaseItemView(ILandroid/view/ViewGroup;)V

    .line 628
    return-void
.end method
