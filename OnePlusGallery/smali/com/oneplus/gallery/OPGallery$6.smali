.class Lcom/oneplus/gallery/OPGallery$6;
.super Ljava/lang/Object;
.source "OPGallery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/OPGallery;->addToInternal(Ljava/util/List;Lcom/oneplus/gallery/media/MediaSet;Lcom/oneplus/base/OperationCallback;Landroid/os/Handler;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/OPGallery;

.field final synthetic val$callbackHelper:Lcom/oneplus/base/OperationCallbackHelper;

.field final synthetic val$dialogFragment:Lcom/oneplus/gallery/GalleryDialogFragment;

.field final synthetic val$flags:I

.field final synthetic val$media:Ljava/util/List;

.field final synthetic val$mediaManager:Lcom/oneplus/gallery/media/OPMediaManager;

.field final synthetic val$mediaSet:Lcom/oneplus/gallery/media/MediaSet;

.field final synthetic val$progressBar:Landroid/widget/ProgressBar;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/OPGallery;Lcom/oneplus/gallery/media/MediaSet;Ljava/util/List;Lcom/oneplus/gallery/media/OPMediaManager;Landroid/widget/ProgressBar;ILcom/oneplus/gallery/GalleryDialogFragment;Lcom/oneplus/base/OperationCallbackHelper;)V
    .locals 0

    .prologue
    .line 431
    iput-object p1, p0, Lcom/oneplus/gallery/OPGallery$6;->this$0:Lcom/oneplus/gallery/OPGallery;

    iput-object p2, p0, Lcom/oneplus/gallery/OPGallery$6;->val$mediaSet:Lcom/oneplus/gallery/media/MediaSet;

    iput-object p3, p0, Lcom/oneplus/gallery/OPGallery$6;->val$media:Ljava/util/List;

    iput-object p4, p0, Lcom/oneplus/gallery/OPGallery$6;->val$mediaManager:Lcom/oneplus/gallery/media/OPMediaManager;

    iput-object p5, p0, Lcom/oneplus/gallery/OPGallery$6;->val$progressBar:Landroid/widget/ProgressBar;

    iput p6, p0, Lcom/oneplus/gallery/OPGallery$6;->val$flags:I

    iput-object p7, p0, Lcom/oneplus/gallery/OPGallery$6;->val$dialogFragment:Lcom/oneplus/gallery/GalleryDialogFragment;

    iput-object p8, p0, Lcom/oneplus/gallery/OPGallery$6;->val$callbackHelper:Lcom/oneplus/base/OperationCallbackHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private updateProgressCount(I)V
    .locals 2
    .param p1, "progress"    # I

    .prologue
    .line 477
    iget-object v0, p0, Lcom/oneplus/gallery/OPGallery$6;->this$0:Lcom/oneplus/gallery/OPGallery;

    new-instance v1, Lcom/oneplus/gallery/OPGallery$6$2;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/gallery/OPGallery$6$2;-><init>(Lcom/oneplus/gallery/OPGallery$6;I)V

    invoke-static {v0, v1}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    .line 485
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 435
    iget-object v5, p0, Lcom/oneplus/gallery/OPGallery$6;->val$mediaSet:Lcom/oneplus/gallery/media/MediaSet;

    instance-of v5, v5, Lcom/oneplus/gallery/media/AlbumMediaSet;

    if-eqz v5, :cond_1

    .line 437
    iget-object v5, p0, Lcom/oneplus/gallery/OPGallery$6;->val$mediaSet:Lcom/oneplus/gallery/media/MediaSet;

    check-cast v5, Lcom/oneplus/gallery/media/AlbumMediaSet;

    invoke-virtual {v5}, Lcom/oneplus/gallery/media/AlbumMediaSet;->getAlbumId()J

    move-result-wide v0

    .line 438
    .local v0, "albumId":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v5, p0, Lcom/oneplus/gallery/OPGallery$6;->val$media:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 440
    iget-object v5, p0, Lcom/oneplus/gallery/OPGallery$6;->val$media:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/gallery/media/Media;

    .line 441
    .local v3, "m":Lcom/oneplus/gallery/media/Media;
    iget-object v5, p0, Lcom/oneplus/gallery/OPGallery$6;->val$mediaManager:Lcom/oneplus/gallery/media/OPMediaManager;

    invoke-interface {v3}, Lcom/oneplus/gallery/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v6

    invoke-static {v6}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6

    invoke-interface {v5, v0, v1, v6, v7}, Lcom/oneplus/gallery/media/OPMediaManager;->addMediaToAlbum(JJ)Z

    .line 442
    add-int/lit8 v5, v2, 0x1

    int-to-float v5, v5

    iget-object v6, p0, Lcom/oneplus/gallery/OPGallery$6;->val$media:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    iget-object v6, p0, Lcom/oneplus/gallery/OPGallery$6;->val$progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v6}, Landroid/widget/ProgressBar;->getMax()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 443
    .local v4, "progress":I
    iget-object v5, p0, Lcom/oneplus/gallery/OPGallery$6;->val$media:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v2, v5, :cond_0

    .line 444
    iget-object v5, p0, Lcom/oneplus/gallery/OPGallery$6;->val$progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v5}, Landroid/widget/ProgressBar;->getMax()I

    move-result v4

    .line 445
    :cond_0
    invoke-direct {p0, v4}, Lcom/oneplus/gallery/OPGallery$6;->updateProgressCount(I)V

    .line 438
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 448
    .end local v0    # "albumId":J
    .end local v2    # "i":I
    .end local v3    # "m":Lcom/oneplus/gallery/media/Media;
    .end local v4    # "progress":I
    :cond_1
    iget-object v5, p0, Lcom/oneplus/gallery/OPGallery$6;->val$mediaSet:Lcom/oneplus/gallery/media/MediaSet;

    if-nez v5, :cond_3

    iget v5, p0, Lcom/oneplus/gallery/OPGallery$6;->val$flags:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    .line 450
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    iget-object v5, p0, Lcom/oneplus/gallery/OPGallery$6;->val$media:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 452
    iget-object v5, p0, Lcom/oneplus/gallery/OPGallery$6;->val$media:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/gallery/media/Media;

    .line 453
    .restart local v3    # "m":Lcom/oneplus/gallery/media/Media;
    iget-object v5, p0, Lcom/oneplus/gallery/OPGallery$6;->val$mediaManager:Lcom/oneplus/gallery/media/OPMediaManager;

    invoke-interface {v3}, Lcom/oneplus/gallery/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x1

    invoke-interface {v5, v6, v7}, Lcom/oneplus/gallery/media/OPMediaManager;->setFavorite(Landroid/net/Uri;Z)Z

    .line 454
    add-int/lit8 v5, v2, 0x1

    int-to-float v5, v5

    iget-object v6, p0, Lcom/oneplus/gallery/OPGallery$6;->val$media:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    iget-object v6, p0, Lcom/oneplus/gallery/OPGallery$6;->val$progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v6}, Landroid/widget/ProgressBar;->getMax()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 455
    .restart local v4    # "progress":I
    iget-object v5, p0, Lcom/oneplus/gallery/OPGallery$6;->val$media:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v2, v5, :cond_2

    .line 456
    iget-object v5, p0, Lcom/oneplus/gallery/OPGallery$6;->val$progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v5}, Landroid/widget/ProgressBar;->getMax()I

    move-result v4

    .line 457
    :cond_2
    invoke-direct {p0, v4}, Lcom/oneplus/gallery/OPGallery$6;->updateProgressCount(I)V

    .line 450
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 462
    .end local v2    # "i":I
    .end local v3    # "m":Lcom/oneplus/gallery/media/Media;
    .end local v4    # "progress":I
    :cond_3
    iget-object v5, p0, Lcom/oneplus/gallery/OPGallery$6;->this$0:Lcom/oneplus/gallery/OPGallery;

    new-instance v6, Lcom/oneplus/gallery/OPGallery$6$1;

    invoke-direct {v6, p0}, Lcom/oneplus/gallery/OPGallery$6$1;-><init>(Lcom/oneplus/gallery/OPGallery$6;)V

    invoke-static {v5, v6}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    .line 472
    iget-object v5, p0, Lcom/oneplus/gallery/OPGallery$6;->val$callbackHelper:Lcom/oneplus/base/OperationCallbackHelper;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/oneplus/base/OperationCallbackHelper;->callOnCompleted(Ljava/lang/Object;)V

    .line 473
    return-void
.end method
