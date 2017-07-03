.class Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$6;
.super Ljava/lang/Object;
.source "ThumbnailImageManagerImpl.java"

# interfaces
.implements Lcom/oneplus/cache/Cache$RemovingPredication;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->clearInvalidThumbnailImages()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oneplus/cache/Cache$RemovingPredication",
        "<",
        "Lcom/oneplus/gallery/cache/ImageCacheKey;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;

.field final synthetic val$count:[I

.field final synthetic val$startTime:J


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;J[I)V
    .locals 0

    .prologue
    .line 457
    iput-object p1, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$6;->this$0:Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;

    iput-wide p2, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$6;->val$startTime:J

    iput-object p4, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$6;->val$count:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canRemove(Lcom/oneplus/gallery/cache/ImageCacheKey;Lcom/oneplus/base/Ref;)Z
    .locals 8
    .param p1, "key"    # Lcom/oneplus/gallery/cache/ImageCacheKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/gallery/cache/ImageCacheKey;",
            "Lcom/oneplus/base/Ref",
            "<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "isCancelled":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Boolean;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 462
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$6;->val$startTime:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    cmp-long v4, v4, v6

    if-ltz v4, :cond_1

    .line 464
    const-string v4, "ThumbnailImageManager"

    const-string v5, "clearInvalidThumbnailImages() - Take long time to clear, interrupt"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {p2, v3}, Lcom/oneplus/base/Ref;->set(Ljava/lang/Object;)V

    .line 488
    :cond_0
    :goto_0
    return v2

    .line 470
    :cond_1
    iget-object v4, p1, Lcom/oneplus/gallery/cache/ImageCacheKey;->filePath:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 474
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v4, p1, Lcom/oneplus/gallery/cache/ImageCacheKey;->filePath:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 475
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    iget-wide v6, p1, Lcom/oneplus/gallery/cache/ImageCacheKey;->lastModifiedTime:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    iget-wide v6, p1, Lcom/oneplus/gallery/cache/ImageCacheKey;->fileSize:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 477
    :cond_2
    iget-object v4, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$6;->val$count:[I

    const/4 v5, 0x0

    aget v6, v4, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v4, v5
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    .line 478
    goto :goto_0

    .line 482
    .end local v1    # "file":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 484
    .local v0, "ex":Ljava/lang/Throwable;
    iget-object v4, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$6;->val$count:[I

    aget v5, v4, v2

    add-int/lit8 v5, v5, 0x1

    aput v5, v4, v2

    move v2, v3

    .line 485
    goto :goto_0

    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_3
    move v2, v3

    .line 488
    goto :goto_0
.end method

.method public bridge synthetic canRemove(Ljava/lang/Object;Lcom/oneplus/base/Ref;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lcom/oneplus/base/Ref;

    .prologue
    .line 457
    check-cast p1, Lcom/oneplus/gallery/cache/ImageCacheKey;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$6;->canRemove(Lcom/oneplus/gallery/cache/ImageCacheKey;Lcom/oneplus/base/Ref;)Z

    move-result v0

    return v0
.end method
