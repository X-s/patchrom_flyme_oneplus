.class Lcom/oneplus/gallery2/media/MediaStoreMediaSource$21;
.super Ljava/lang/Object;
.source "MediaStoreMediaSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->updateSceneDetectionResult(Lcom/oneplus/gallery2/media/MediaStoreMedia;JJLjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

.field private final synthetic val$media:Lcom/oneplus/gallery2/media/MediaStoreMedia;

.field private final synthetic val$result:Ljava/util/List;

.field private final synthetic val$sceneDetectionFileTime:J

.field private final synthetic val$sceneDetectionVersion:J


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Lcom/oneplus/gallery2/media/MediaStoreMedia;JJLjava/util/List;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$21;->this$0:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    iput-object p2, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$21;->val$media:Lcom/oneplus/gallery2/media/MediaStoreMedia;

    iput-wide p3, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$21;->val$sceneDetectionVersion:J

    iput-wide p5, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$21;->val$sceneDetectionFileTime:J

    iput-object p7, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$21;->val$result:Ljava/util/List;

    .line 2430
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2435
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$21;->val$media:Lcom/oneplus/gallery2/media/MediaStoreMedia;

    invoke-virtual {v0}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->isReleased()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2437
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$21;->val$media:Lcom/oneplus/gallery2/media/MediaStoreMedia;

    invoke-virtual {v0}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->getMediaId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/oneplus/gallery2/media/GalleryDatabase;->getExtraMediaInfo(J)Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;

    move-result-object v0

    .line 2438
    if-eqz v0, :cond_2

    .line 2440
    :goto_0
    iget-wide v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$21;->val$sceneDetectionVersion:J

    iput-wide v2, v0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->sceneDetectionVersion:J

    .line 2441
    iget-wide v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$21;->val$sceneDetectionFileTime:J

    iput-wide v2, v0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->sceneDetectionFileTime:J

    .line 2442
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$21;->val$result:Ljava/util/List;

    if-nez v1, :cond_3

    .line 2453
    :cond_0
    iput-object v4, v0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->sceneDetectionResult:Ljava/util/List;

    .line 2454
    :goto_1
    invoke-static {v0}, Lcom/oneplus/gallery2/media/GalleryDatabase;->updateExtraMediaInfo(Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2456
    :goto_2
    return-void

    .line 2436
    :cond_1
    return-void

    .line 2439
    :cond_2
    new-instance v0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;

    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$21;->val$media:Lcom/oneplus/gallery2/media/MediaStoreMedia;

    invoke-virtual {v1}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->getMediaId()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;-><init>(J)V

    goto :goto_0

    .line 2442
    :cond_3
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$21;->val$result:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2444
    iget-object v1, v0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->sceneDetectionResult:Ljava/util/List;

    if-eqz v1, :cond_4

    .line 2448
    iget-object v1, v0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->sceneDetectionResult:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 2449
    iget-object v1, v0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->sceneDetectionResult:Ljava/util/List;

    iget-object v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$21;->val$result:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 2445
    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$21;->val$result:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->sceneDetectionResult:Ljava/util/List;

    goto :goto_1

    .line 2455
    :cond_5
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$21;->this$0:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    invoke-static {v0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->access$8(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "updateSceneDetectionResult() - Fail to update scene detection result for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$21;->val$media:Lcom/oneplus/gallery2/media/MediaStoreMedia;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method
