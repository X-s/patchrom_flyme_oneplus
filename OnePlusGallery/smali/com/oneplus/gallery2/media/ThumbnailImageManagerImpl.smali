.class final Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;
.super Lcom/oneplus/base/component/BasicComponent;
.source "ThumbnailImageManagerImpl.java"

# interfaces
.implements Lcom/oneplus/gallery2/media/ThumbnailImageManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$8;,
        Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;,
        Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingHandle;,
        Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$CallbackHandler;,
        Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$ThumbnailImageDecoder;
    }
.end annotation


# static fields
.field private static final DURATION_CLEAR_INVALID_THUMBS_DELAY:J = 0x5dcL

.field private static final DURATION_MAX_CLEAR_INVALID_THUMBS:J = 0x3e8L

.field private static final LARGE_VIDEO_FILE_SIZE:J = 0x40000000L

.field private static final MAX_CACHE_WAITING_TIME:J = 0x3e8L

.field private static final PRINT_PERFORMANCE_LOGS:Z = false

.field private static final TAG:Ljava/lang/String; = "ThumbnailImageManager"

.field private static final TEMP_THUMB_CACHE:Lcom/oneplus/cache/MemoryBitmapLruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/cache/MemoryBitmapLruCache",
            "<",
            "Lcom/oneplus/gallery2/media/Media;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile m_LargeVideoThumbDecoder:Lcom/oneplus/media/BitmapPool;

.field private static volatile m_VideoThumbDecoder:Lcom/oneplus/media/BitmapPool;


# instance fields
.field private final m_ActivationHandles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/base/Handle;",
            ">;"
        }
    .end annotation
.end field

.field private m_CacheManager:Lcom/oneplus/gallery2/CacheManager;

.field private m_CacheManagerActivateHandle:Lcom/oneplus/base/Handle;

.field private final m_CallbackHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$CallbackHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final m_ClearInvalidThumbsDelayedRunnable:Ljava/lang/Runnable;

.field private final m_ClearInvalidThumbsRunnable:Ljava/lang/Runnable;

.field private volatile m_MicroThumbDecoder:Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$ThumbnailImageDecoder;

.field private volatile m_MicroThumbHeight:I

.field private final m_MicroThumbSizeObtainingSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingHandle;",
            ">;"
        }
    .end annotation
.end field

.field private volatile m_MicroThumbWidth:I

.field private volatile m_SmallThumbDecoder:Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$ThumbnailImageDecoder;

.field private volatile m_SmallThumbHeight:I

.field private final m_SmallThumbSizeObtainingSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingHandle;",
            ">;"
        }
    .end annotation
.end field

.field private volatile m_SmallThumbWidth:I

.field private volatile m_ThumbDecoder:Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$ThumbnailImageDecoder;

.field private m_ThumbDecoderActivationHandle:Lcom/oneplus/base/Handle;

.field private volatile m_ThumbHeight:I

.field private final m_ThumbSizeObtainingSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingHandle;",
            ">;"
        }
    .end annotation
.end field

.field private volatile m_ThumbWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 55
    new-instance v0, Lcom/oneplus/cache/MemoryBitmapLruCache;

    const-wide/32 v2, 0x2000000

    invoke-direct {v0, v2, v3}, Lcom/oneplus/cache/MemoryBitmapLruCache;-><init>(J)V

    sput-object v0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->TEMP_THUMB_CACHE:Lcom/oneplus/cache/MemoryBitmapLruCache;

    return-void
.end method

.method constructor <init>(Lcom/oneplus/base/BaseApplication;)V
    .locals 2
    .param p1, "application"    # Lcom/oneplus/base/BaseApplication;

    .prologue
    .line 525
    const-string v0, "Thumbnail image manager"

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/oneplus/base/component/BasicComponent;-><init>(Ljava/lang/String;Lcom/oneplus/base/component/ComponentOwner;Z)V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->m_ActivationHandles:Ljava/util/List;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->m_CallbackHandlers:Ljava/util/List;

    .line 66
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->m_MicroThumbSizeObtainingSet:Ljava/util/Set;

    .line 70
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->m_SmallThumbSizeObtainingSet:Ljava/util/Set;

    .line 76
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->m_ThumbSizeObtainingSet:Ljava/util/Set;

    .line 81
    new-instance v0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$1;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$1;-><init>(Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->m_ClearInvalidThumbsRunnable:Ljava/lang/Runnable;

    .line 89
    new-instance v0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$2;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$2;-><init>(Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->m_ClearInvalidThumbsDelayedRunnable:Ljava/lang/Runnable;

    .line 526
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->clearInvalidThumbnailImages()V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->m_ClearInvalidThumbsRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1000()Lcom/oneplus/media/BitmapPool;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->m_VideoThumbDecoder:Lcom/oneplus/media/BitmapPool;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;Lcom/oneplus/base/Handle;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;
    .param p1, "x1"    # Lcom/oneplus/base/Handle;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->deactivate(Lcom/oneplus/base/Handle;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingHandle;II)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;
    .param p1, "x1"    # Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingHandle;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->onMediaSizeGet(Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingHandle;II)V

    return-void
.end method

.method static synthetic access$600(Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;
    .param p1, "x1"    # Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->onDecodingTaskCompleted(Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;)V

    return-void
.end method

.method static synthetic access$800(Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->sleepForNextDecoding()V

    return-void
.end method

.method static synthetic access$900()Lcom/oneplus/media/BitmapPool;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->m_LargeVideoThumbDecoder:Lcom/oneplus/media/BitmapPool;

    return-object v0
.end method

.method private clearInvalidThumbnailImages()V
    .locals 12

    .prologue
    .line 573
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->m_CacheManager:Lcom/oneplus/gallery2/CacheManager;

    if-nez v0, :cond_1

    .line 607
    :cond_0
    :goto_0
    return-void

    .line 575
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->m_CacheManager:Lcom/oneplus/gallery2/CacheManager;

    invoke-interface {v0}, Lcom/oneplus/gallery2/CacheManager;->getSmallThumbnailImageCache()Lcom/oneplus/cache/HybridBitmapLruCache;

    move-result-object v6

    .line 576
    .local v6, "cache":Lcom/oneplus/cache/Cache;, "Lcom/oneplus/cache/Cache<Lcom/oneplus/gallery2/media/MediaCacheKey;Landroid/graphics/Bitmap;>;"
    if-eqz v6, :cond_0

    .line 580
    const-string v0, "ThumbnailImageManager"

    const-string v1, "clearInvalidThumbnailImages() - Start"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 582
    .local v8, "startTime":J
    const/4 v0, 0x1

    new-array v7, v0, [I

    .line 583
    .local v7, "count":[I
    new-instance v0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$4;

    invoke-direct {v0, p0, v8, v9, v7}, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$4;-><init>(Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;J[I)V

    invoke-interface {v6, v0}, Lcom/oneplus/cache/Cache;->remove(Lcom/oneplus/cache/Cache$RemovingPredication;)V

    .line 605
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long v10, v0, v8

    .line 606
    .local v10, "time":J
    const-string v0, "ThumbnailImageManager"

    const-string v1, "clearInvalidThumbnailImages() - Take "

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, " ms to remove "

    const/4 v4, 0x0

    aget v4, v7, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, " invalid images"

    invoke-static/range {v0 .. v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private deactivate(Lcom/oneplus/base/Handle;)V
    .locals 4
    .param p1, "handle"    # Lcom/oneplus/base/Handle;

    .prologue
    .line 614
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->verifyAccess()V

    .line 617
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->m_ActivationHandles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 635
    :cond_0
    :goto_0
    return-void

    .line 620
    :cond_1
    const-string v0, "ThumbnailImageManager"

    const-string v1, "deactivate() - Handle count : "

    iget-object v2, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->m_ActivationHandles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 623
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->m_ActivationHandles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 627
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->m_CacheManagerActivateHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->m_CacheManagerActivateHandle:Lcom/oneplus/base/Handle;

    .line 628
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->m_ThumbDecoderActivationHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->m_ThumbDecoderActivationHandle:Lcom/oneplus/base/Handle;

    .line 631
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/base/BaseApplication;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->m_ClearInvalidThumbsDelayedRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 634
    sget-object v0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->PROP_IS_ACTIVE:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private invalidateThumbnailImages(Lcom/oneplus/gallery2/media/MediaCacheKey;I)V
    .locals 3
    .param p1, "key"    # Lcom/oneplus/gallery2/media/MediaCacheKey;
    .param p2, "flags"    # I

    .prologue
    .line 836
    if-eqz p1, :cond_0

    sget-object v2, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->m_VideoThumbDecoder:Lcom/oneplus/media/BitmapPool;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->m_LargeVideoThumbDecoder:Lcom/oneplus/media/BitmapPool;

    if-nez v2, :cond_1

    .line 852
    :cond_0
    :goto_0
    return-void

    .line 838
    :cond_1
    invoke-interface {p1}, Lcom/oneplus/gallery2/media/MediaCacheKey;->getFilePath()Ljava/lang/String;

    move-result-object v1

    .line 839
    .local v1, "filePath":Ljava/lang/String;
    invoke-interface {p1}, Lcom/oneplus/gallery2/media/MediaCacheKey;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    .line 840
    .local v0, "contentUri":Landroid/net/Uri;
    if-eqz v1, :cond_2

    .line 842
    sget-object v2, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->m_VideoThumbDecoder:Lcom/oneplus/media/BitmapPool;

    invoke-virtual {v2, v1}, Lcom/oneplus/media/BitmapPool;->invalidate(Ljava/lang/String;)V

    .line 843
    sget-object v2, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->m_LargeVideoThumbDecoder:Lcom/oneplus/media/BitmapPool;

    invoke-virtual {v2, v1}, Lcom/oneplus/media/BitmapPool;->invalidate(Ljava/lang/String;)V

    .line 845
    :cond_2
    if-eqz v0, :cond_3

    .line 847
    sget-object v2, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->m_VideoThumbDecoder:Lcom/oneplus/media/BitmapPool;

    invoke-virtual {v2, v0}, Lcom/oneplus/media/BitmapPool;->invalidate(Landroid/net/Uri;)V

    .line 848
    sget-object v2, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->m_LargeVideoThumbDecoder:Lcom/oneplus/media/BitmapPool;

    invoke-virtual {v2, v0}, Lcom/oneplus/media/BitmapPool;->invalidate(Landroid/net/Uri;)V

    .line 850
    :cond_3
    iget-object v2, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->m_CacheManager:Lcom/oneplus/gallery2/CacheManager;

    invoke-interface {v2}, Lcom/oneplus/gallery2/CacheManager;->getSmallThumbnailImageCache()Lcom/oneplus/cache/HybridBitmapLruCache;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/oneplus/cache/HybridBitmapLruCache;->remove(Ljava/io/Serializable;)Z

    .line 851
    iget-object v2, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->m_CacheManager:Lcom/oneplus/gallery2/CacheManager;

    invoke-interface {v2}, Lcom/oneplus/gallery2/CacheManager;->getThumbnailImageCache()Lcom/oneplus/cache/HybridBitmapLruCache;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/oneplus/cache/HybridBitmapLruCache;->remove(Ljava/io/Serializable;)Z

    goto :goto_0
.end method

.method private obtainDecodingTask()Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;
    .locals 2

    .prologue
    .line 858
    new-instance v0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;-><init>(Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$1;)V

    return-object v0
.end method

.method private onDecodingTaskCompleted(Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;)V
    .locals 0
    .param p1, "task"    # Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;

    .prologue
    .line 864
    return-void
.end method

.method private onMediaSizeGet(Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingHandle;II)V
    .locals 3
    .param p1, "handle"    # Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingHandle;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 939
    invoke-static {p1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 946
    :goto_0
    return-void

    .line 943
    :cond_0
    iget-object v0, p1, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingHandle;->decodingTask:Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;

    iput p2, v0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;->mediaWidth:I

    .line 944
    iget-object v0, p1, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingHandle;->decodingTask:Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;

    iput p3, v0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;->mediaHeight:I

    .line 945
    iget-object v1, p1, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingHandle;->decoder:Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$ThumbnailImageDecoder;

    iget-object v2, p1, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingHandle;->decodingTask:Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;

    iget v0, p1, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingHandle;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v2, v0}, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$ThumbnailImageDecoder;->decode(Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private selectCache(Lcom/oneplus/gallery2/media/ThumbnailImageManager$ThumbnailImageType;)Lcom/oneplus/cache/HybridBitmapLruCache;
    .locals 3
    .param p1, "thumbType"    # Lcom/oneplus/gallery2/media/ThumbnailImageManager$ThumbnailImageType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/gallery2/media/ThumbnailImageManager$ThumbnailImageType;",
            ")",
            "Lcom/oneplus/cache/HybridBitmapLruCache",
            "<",
            "Lcom/oneplus/gallery2/media/MediaCacheKey;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 952
    iget-object v1, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->m_CacheManager:Lcom/oneplus/gallery2/CacheManager;

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 963
    :cond_0
    :goto_0
    return-object v0

    .line 954
    :cond_1
    sget-object v1, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$8;->$SwitchMap$com$oneplus$gallery2$media$ThumbnailImageManager$ThumbnailImageType:[I

    invoke-virtual {p1}, Lcom/oneplus/gallery2/media/ThumbnailImageManager$ThumbnailImageType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 957
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->m_CacheManager:Lcom/oneplus/gallery2/CacheManager;

    invoke-interface {v0}, Lcom/oneplus/gallery2/CacheManager;->getThumbnailImageCache()Lcom/oneplus/cache/HybridBitmapLruCache;

    move-result-object v0

    goto :goto_0

    .line 959
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->m_CacheManager:Lcom/oneplus/gallery2/CacheManager;

    invoke-interface {v0}, Lcom/oneplus/gallery2/CacheManager;->getSmallThumbnailImageCache()Lcom/oneplus/cache/HybridBitmapLruCache;

    move-result-object v0

    goto :goto_0

    .line 961
    :pswitch_2
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->m_CacheManager:Lcom/oneplus/gallery2/CacheManager;

    invoke-interface {v0}, Lcom/oneplus/gallery2/CacheManager;->getMicroThumbnailImageCache()Lcom/oneplus/cache/HybridBitmapLruCache;

    move-result-object v0

    goto :goto_0

    .line 954
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private sleepForNextDecoding()V
    .locals 0

    .prologue
    .line 996
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 997
    return-void
.end method


# virtual methods
.method public activate(I)Lcom/oneplus/base/Handle;
    .locals 5
    .param p1, "flags"    # I

    .prologue
    const/4 v4, 0x1

    .line 537
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->verifyAccess()V

    .line 538
    invoke-virtual {p0, v4}, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->isRunningOrInitializing(Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 539
    const/4 v0, 0x0

    .line 565
    :cond_0
    :goto_0
    return-object v0

    .line 542
    :cond_1
    new-instance v0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$3;

    const-string v1, "ActivateThumbImageManager"

    invoke-direct {v0, p0, v1}, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$3;-><init>(Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;Ljava/lang/String;)V

    .line 550
    .local v0, "handle":Lcom/oneplus/base/Handle;
    iget-object v1, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->m_ActivationHandles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 551
    const-string v1, "ThumbnailImageManager"

    const-string v2, "activate() : Handle count : "

    iget-object v3, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->m_ActivationHandles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 552
    iget-object v1, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->m_ActivationHandles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 553
    sget-object v1, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->PROP_IS_ACTIVE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 558
    iget-object v1, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->m_CacheManagerActivateHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->m_CacheManager:Lcom/oneplus/gallery2/CacheManager;

    if-eqz v1, :cond_2

    .line 559
    iget-object v1, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->m_CacheManager:Lcom/oneplus/gallery2/CacheManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/oneplus/gallery2/CacheManager;->activate(I)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->m_CacheManagerActivateHandle:Lcom/oneplus/base/Handle;

    .line 562
    :cond_2
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/base/BaseApplication;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->m_ClearInvalidThumbsDelayedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public decodeThumbnailImage(Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery2/media/ThumbnailImageManager$ThumbnailImageType;ILcom/oneplus/gallery2/media/ThumbnailImageManager$DecodingCallback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;
    .locals 26
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p2, "thumbType"    # Lcom/oneplus/gallery2/media/ThumbnailImageManager$ThumbnailImageType;
    .param p3, "flags"    # I
    .param p4, "callback"    # Lcom/oneplus/gallery2/media/ThumbnailImageManager$DecodingCallback;
    .param p5, "handler"    # Landroid/os/Handler;

    .prologue
    .line 643
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->verifyAccess()V

    .line 644
    if-nez p1, :cond_1

    .line 646
    const-string v5, "ThumbnailImageManager"

    const-string v9, "decodeThumbnailImage() - No media to decode"

    invoke-static {v5, v9}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    const/4 v4, 0x0

    .line 776
    :cond_0
    :goto_0
    return-object v4

    .line 649
    :cond_1
    if-nez p2, :cond_2

    .line 651
    const-string v5, "ThumbnailImageManager"

    const-string v9, "decodeThumbnailImage() - No thumbnail image type specified"

    invoke-static {v5, v9}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    const/4 v4, 0x0

    goto :goto_0

    .line 656
    :cond_2
    if-nez p5, :cond_3

    .line 657
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->getHandler()Landroid/os/Handler;

    move-result-object p5

    .line 658
    :cond_3
    invoke-virtual/range {p5 .. p5}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v13

    .line 659
    .local v13, "callbackLooper":Landroid/os/Looper;
    const/4 v12, 0x0

    .line 660
    .local v12, "callbackHandler":Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$CallbackHandler;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->m_CallbackHandlers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v16, v5, -0x1

    .local v16, "i":I
    :goto_1
    if-ltz v16, :cond_4

    .line 662
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->m_CallbackHandlers:Ljava/util/List;

    move/from16 v0, v16

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$CallbackHandler;

    .line 663
    .local v14, "candHandler":Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$CallbackHandler;
    invoke-virtual {v14}, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$CallbackHandler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    if-ne v5, v13, :cond_6

    .line 665
    move-object v12, v14

    .line 669
    .end local v14    # "candHandler":Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$CallbackHandler;
    :cond_4
    if-nez v12, :cond_5

    .line 671
    new-instance v12, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$CallbackHandler;

    .end local v12    # "callbackHandler":Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$CallbackHandler;
    move-object/from16 v0, p0

    invoke-direct {v12, v0, v13}, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$CallbackHandler;-><init>(Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;Landroid/os/Looper;)V

    .line 672
    .restart local v12    # "callbackHandler":Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$CallbackHandler;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->m_CallbackHandlers:Ljava/util/List;

    invoke-interface {v5, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 677
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->selectCache(Lcom/oneplus/gallery2/media/ThumbnailImageManager$ThumbnailImageType;)Lcom/oneplus/cache/HybridBitmapLruCache;

    move-result-object v10

    .line 679
    .local v10, "cache":Lcom/oneplus/cache/HybridBitmapLruCache;, "Lcom/oneplus/cache/HybridBitmapLruCache<Lcom/oneplus/gallery2/media/MediaCacheKey;>;"
    const/4 v15, 0x1

    .line 681
    .local v15, "centerCrop":Z
    sget-object v5, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$8;->$SwitchMap$com$oneplus$gallery2$media$ThumbnailImageManager$ThumbnailImageType:[I

    invoke-virtual/range {p2 .. p2}, Lcom/oneplus/gallery2/media/ThumbnailImageManager$ThumbnailImageType;->ordinal()I

    move-result v9

    aget v5, v5, v9

    packed-switch v5, :pswitch_data_0

    .line 703
    const-string v5, "ThumbnailImageManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "decodeThumbnailImage() - Unsupported thumbnail image type : "

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    const/4 v4, 0x0

    goto :goto_0

    .line 660
    .end local v10    # "cache":Lcom/oneplus/cache/HybridBitmapLruCache;, "Lcom/oneplus/cache/HybridBitmapLruCache<Lcom/oneplus/gallery2/media/MediaCacheKey;>;"
    .end local v15    # "centerCrop":Z
    .restart local v14    # "candHandler":Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$CallbackHandler;
    :cond_6
    add-int/lit8 v16, v16, -0x1

    goto :goto_1

    .line 684
    .end local v14    # "candHandler":Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$CallbackHandler;
    .restart local v10    # "cache":Lcom/oneplus/cache/HybridBitmapLruCache;, "Lcom/oneplus/cache/HybridBitmapLruCache<Lcom/oneplus/gallery2/media/MediaCacheKey;>;"
    .restart local v15    # "centerCrop":Z
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->m_ThumbDecoder:Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$ThumbnailImageDecoder;

    .line 685
    .local v6, "decoder":Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$ThumbnailImageDecoder;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->m_ThumbWidth:I

    move/from16 v22, v0

    .line 686
    .local v22, "thumbWidth":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->m_ThumbHeight:I

    move/from16 v21, v0

    .line 687
    .local v21, "thumbHeight":I
    const/4 v15, 0x0

    .line 688
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->m_ThumbSizeObtainingSet:Ljava/util/Set;

    .line 708
    .local v7, "sizeObtainingHandleSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingHandle;>;"
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->obtainDecodingTask()Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;

    move-result-object v8

    .line 709
    .local v8, "task":Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;
    iput-object v6, v8, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;->decoder:Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$ThumbnailImageDecoder;

    .line 710
    iput-object v10, v8, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;->cache:Lcom/oneplus/cache/Cache;

    .line 711
    move-object/from16 v0, p4

    iput-object v0, v8, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;->callback:Lcom/oneplus/gallery2/media/ThumbnailImageManager$DecodingCallback;

    .line 712
    iput-object v12, v8, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;->callbackHandler:Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$CallbackHandler;

    .line 713
    iput-boolean v15, v8, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;->centerCrop:Z

    .line 714
    move/from16 v0, p3

    iput v0, v8, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;->flags:I

    .line 715
    move-object/from16 v0, p1

    iput-object v0, v8, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;->media:Lcom/oneplus/gallery2/media/Media;

    .line 716
    move/from16 v0, v21

    iput v0, v8, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;->targetHeight:I

    .line 717
    move/from16 v0, v22

    iput v0, v8, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;->targetWidth:I

    .line 720
    new-instance v4, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingHandle;

    move-object/from16 v5, p0

    move/from16 v9, p3

    invoke-direct/range {v4 .. v9}, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingHandle;-><init>(Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$ThumbnailImageDecoder;Ljava/util/Collection;Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;I)V

    .line 721
    .local v4, "handle":Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingHandle;
    iput-object v4, v8, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;->decodingHandle:Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingHandle;

    .line 724
    and-int/lit8 v5, p3, 0x1

    if-nez v5, :cond_7

    if-eqz v10, :cond_7

    .line 726
    invoke-interface/range {p1 .. p1}, Lcom/oneplus/gallery2/media/Media;->getCacheKey()Lcom/oneplus/gallery2/media/MediaCacheKey;

    move-result-object v11

    .line 727
    .local v11, "cacheKey":Lcom/oneplus/gallery2/media/MediaCacheKey;
    if-eqz v11, :cond_7

    .line 729
    const/4 v5, 0x0

    const-wide/16 v24, 0x0

    move-wide/from16 v0, v24

    invoke-virtual {v10, v11, v5, v0, v1}, Lcom/oneplus/cache/HybridBitmapLruCache;->get(Ljava/io/Serializable;Landroid/graphics/Bitmap;J)Landroid/graphics/Bitmap;

    move-result-object v20

    .line 730
    .local v20, "thumb":Landroid/graphics/Bitmap;
    if-eqz v20, :cond_7

    .line 732
    const/4 v5, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v12, v8, v0, v5}, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$CallbackHandler;->callOnThumbnailImageDecoded(Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;Landroid/graphics/Bitmap;Z)V

    goto/16 :goto_0

    .line 691
    .end local v4    # "handle":Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingHandle;
    .end local v6    # "decoder":Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$ThumbnailImageDecoder;
    .end local v7    # "sizeObtainingHandleSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingHandle;>;"
    .end local v8    # "task":Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;
    .end local v11    # "cacheKey":Lcom/oneplus/gallery2/media/MediaCacheKey;
    .end local v20    # "thumb":Landroid/graphics/Bitmap;
    .end local v21    # "thumbHeight":I
    .end local v22    # "thumbWidth":I
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->m_SmallThumbDecoder:Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$ThumbnailImageDecoder;

    .line 692
    .restart local v6    # "decoder":Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$ThumbnailImageDecoder;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->m_SmallThumbWidth:I

    move/from16 v22, v0

    .line 693
    .restart local v22    # "thumbWidth":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->m_SmallThumbHeight:I

    move/from16 v21, v0

    .line 694
    .restart local v21    # "thumbHeight":I
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->m_SmallThumbSizeObtainingSet:Ljava/util/Set;

    .line 695
    .restart local v7    # "sizeObtainingHandleSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingHandle;>;"
    goto :goto_2

    .line 697
    .end local v6    # "decoder":Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$ThumbnailImageDecoder;
    .end local v7    # "sizeObtainingHandleSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingHandle;>;"
    .end local v21    # "thumbHeight":I
    .end local v22    # "thumbWidth":I
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->m_MicroThumbDecoder:Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$ThumbnailImageDecoder;

    .line 698
    .restart local v6    # "decoder":Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$ThumbnailImageDecoder;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->m_MicroThumbWidth:I

    move/from16 v22, v0

    .line 699
    .restart local v22    # "thumbWidth":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->m_MicroThumbHeight:I

    move/from16 v21, v0

    .line 700
    .restart local v21    # "thumbHeight":I
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->m_MicroThumbSizeObtainingSet:Ljava/util/Set;

    .line 701
    .restart local v7    # "sizeObtainingHandleSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingHandle;>;"
    goto :goto_2

    .line 739
    .restart local v4    # "handle":Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingHandle;
    .restart local v8    # "task":Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;
    :cond_7
    invoke-interface/range {p1 .. p1}, Lcom/oneplus/gallery2/media/Media;->peekSize()Landroid/util/Size;

    move-result-object v17

    .line 740
    .local v17, "mediaSize":Landroid/util/Size;
    if-eqz v17, :cond_8

    .line 741
    invoke-virtual/range {v17 .. v17}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual/range {v17 .. v17}, Landroid/util/Size;->getHeight()I

    move-result v9

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v9}, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->onMediaSizeGet(Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingHandle;II)V

    goto/16 :goto_0

    .line 744
    :cond_8
    invoke-interface {v7, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 745
    new-instance v5, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$5;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v7, v4}, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$5;-><init>(Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;Ljava/util/Set;Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingHandle;)V

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Lcom/oneplus/gallery2/media/Media;->getSize(Lcom/oneplus/gallery2/media/Media$SizeCallback;)Lcom/oneplus/base/Handle;

    move-result-object v5

    iput-object v5, v4, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingHandle;->sizeObtainingHandle:Lcom/oneplus/base/Handle;

    .line 754
    iget-object v5, v4, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingHandle;->sizeObtainingHandle:Lcom/oneplus/base/Handle;

    invoke-static {v5}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 756
    const-string v5, "ThumbnailImageManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "decodeThumbnailImage() - Fail to start getting size of "

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    invoke-interface {v7, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 758
    and-int/lit8 v5, p3, 0x1

    if-nez v5, :cond_9

    .line 759
    const/4 v5, 0x0

    const/4 v9, 0x1

    invoke-virtual {v12, v8, v5, v9}, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$CallbackHandler;->callOnThumbnailImageDecoded(Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;Landroid/graphics/Bitmap;Z)V

    .line 773
    :goto_3
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 762
    :cond_9
    move-object/from16 v18, v12

    .line 763
    .local v18, "postCallbackHandler":Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$CallbackHandler;
    move-object/from16 v19, v8

    .line 764
    .local v19, "postTask":Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;
    new-instance v5, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$6;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v5, v0, v1, v2}, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$6;-><init>(Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$CallbackHandler;Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;)V

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    goto :goto_3

    .line 681
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getCachedThumbnailImage(Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery2/media/ThumbnailImageManager$ThumbnailImageType;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p2, "thumbType"    # Lcom/oneplus/gallery2/media/ThumbnailImageManager$ThumbnailImageType;

    .prologue
    const/4 v2, 0x0

    .line 784
    if-nez p1, :cond_1

    .line 792
    :cond_0
    :goto_0
    return-object v2

    .line 786
    :cond_1
    invoke-direct {p0, p2}, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->selectCache(Lcom/oneplus/gallery2/media/ThumbnailImageManager$ThumbnailImageType;)Lcom/oneplus/cache/HybridBitmapLruCache;

    move-result-object v0

    .line 787
    .local v0, "cache":Lcom/oneplus/cache/Cache;, "Lcom/oneplus/cache/Cache<Lcom/oneplus/gallery2/media/MediaCacheKey;Landroid/graphics/Bitmap;>;"
    if-eqz v0, :cond_0

    .line 789
    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->getCacheKey()Lcom/oneplus/gallery2/media/MediaCacheKey;

    move-result-object v1

    .line 790
    .local v1, "cacheKey":Lcom/oneplus/gallery2/media/MediaCacheKey;
    if-eqz v1, :cond_0

    .line 792
    const-wide/16 v4, 0x0

    invoke-interface {v0, v1, v2, v4, v5}, Lcom/oneplus/cache/Cache;->get(Ljava/lang/Object;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public getTempThumbnailImage(Lcom/oneplus/gallery2/media/Media;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;

    .prologue
    const/4 v0, 0x0

    .line 800
    if-eqz p1, :cond_0

    .line 801
    sget-object v1, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->TEMP_THUMB_CACHE:Lcom/oneplus/cache/MemoryBitmapLruCache;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, p1, v0, v2, v3}, Lcom/oneplus/cache/MemoryBitmapLruCache;->get(Ljava/lang/Object;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 802
    :cond_0
    return-object v0
.end method

.method public invalidateThumbnailImages(Lcom/oneplus/gallery2/media/Media;I)V
    .locals 1
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p2, "flags"    # I

    .prologue
    .line 811
    if-nez p1, :cond_1

    .line 830
    :cond_0
    :goto_0
    return-void

    .line 815
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->m_CacheManager:Lcom/oneplus/gallery2/CacheManager;

    if-eqz v0, :cond_0

    .line 817
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->isRunningOrInitializing(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 821
    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->getCacheKey()Lcom/oneplus/gallery2/media/MediaCacheKey;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->invalidateThumbnailImages(Lcom/oneplus/gallery2/media/MediaCacheKey;I)V

    .line 822
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->m_MicroThumbDecoder:Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$ThumbnailImageDecoder;

    if-eqz v0, :cond_2

    .line 823
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->m_MicroThumbDecoder:Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$ThumbnailImageDecoder;

    invoke-virtual {v0, p1}, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$ThumbnailImageDecoder;->invalidate(Lcom/oneplus/gallery2/media/Media;)V

    .line 824
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->m_SmallThumbDecoder:Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$ThumbnailImageDecoder;

    if-eqz v0, :cond_3

    .line 825
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->m_SmallThumbDecoder:Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$ThumbnailImageDecoder;

    invoke-virtual {v0, p1}, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$ThumbnailImageDecoder;->invalidate(Lcom/oneplus/gallery2/media/Media;)V

    .line 826
    :cond_3
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->m_ThumbDecoder:Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$ThumbnailImageDecoder;

    if-eqz v0, :cond_4

    .line 827
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->m_ThumbDecoder:Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$ThumbnailImageDecoder;

    invoke-virtual {v0, p1}, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$ThumbnailImageDecoder;->invalidate(Lcom/oneplus/gallery2/media/Media;)V

    .line 828
    :cond_4
    and-int/lit8 v0, p2, 0x4

    if-nez v0, :cond_0

    .line 829
    sget-object v0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->TEMP_THUMB_CACHE:Lcom/oneplus/cache/MemoryBitmapLruCache;

    invoke-virtual {v0, p1}, Lcom/oneplus/cache/MemoryBitmapLruCache;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected onDeinitialize()V
    .locals 2

    .prologue
    .line 872
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->m_ActivationHandles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 873
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->m_CacheManagerActivateHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->m_CacheManagerActivateHandle:Lcom/oneplus/base/Handle;

    .line 874
    sget-object v0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->PROP_IS_ACTIVE:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 877
    invoke-super {p0}, Lcom/oneplus/base/component/BasicComponent;->onDeinitialize()V

    .line 878
    return-void
.end method

.method protected onInitialize()V
    .locals 11

    .prologue
    const-wide/16 v2, 0x0

    const/4 v9, 0x4

    const/4 v5, 0x1

    const/4 v10, 0x0

    .line 886
    invoke-super {p0}, Lcom/oneplus/base/component/BasicComponent;->onInitialize()V

    .line 889
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v6

    .line 890
    .local v6, "app":Lcom/oneplus/base/BaseApplication;
    const-class v0, Lcom/oneplus/gallery2/CacheManager;

    invoke-virtual {v6, v0}, Lcom/oneplus/base/BaseApplication;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/CacheManager;

    iput-object v0, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->m_CacheManager:Lcom/oneplus/gallery2/CacheManager;

    .line 891
    const-class v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    invoke-virtual {v6, v0}, Lcom/oneplus/base/BaseApplication;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v7

    check-cast v7, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    .line 892
    .local v7, "mediaStoreMediaSource":Lcom/oneplus/gallery2/media/MediaStoreMediaSource;
    if-eqz v7, :cond_0

    .line 894
    new-instance v0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$7;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$7;-><init>(Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;)V

    invoke-virtual {v7, v0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->addMediaChangedCallback(Lcom/oneplus/gallery2/media/MediaChangeCallback;)Lcom/oneplus/base/Handle;

    .line 913
    :cond_0
    new-instance v0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$ThumbnailImageDecoder;

    const-string v1, "MicroThumbDecoder"

    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-direct {v0, v1, v9, v4}, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$ThumbnailImageDecoder;-><init>(Ljava/lang/String;ILandroid/graphics/Bitmap$Config;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->m_MicroThumbDecoder:Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$ThumbnailImageDecoder;

    .line 914
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->m_MicroThumbDecoder:Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$ThumbnailImageDecoder;

    iput-boolean v10, v0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$ThumbnailImageDecoder;->preferQualityOverSpeed:Z

    .line 915
    new-instance v0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$ThumbnailImageDecoder;

    const-string v1, "SmallThumbDecoder"

    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-direct {v0, v1, v9, v4}, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$ThumbnailImageDecoder;-><init>(Ljava/lang/String;ILandroid/graphics/Bitmap$Config;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->m_SmallThumbDecoder:Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$ThumbnailImageDecoder;

    .line 916
    new-instance v0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$ThumbnailImageDecoder;

    const-string v1, "ThumbDecoder"

    const/4 v4, 0x2

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-direct {v0, v1, v4, v9}, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$ThumbnailImageDecoder;-><init>(Ljava/lang/String;ILandroid/graphics/Bitmap$Config;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->m_ThumbDecoder:Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$ThumbnailImageDecoder;

    .line 917
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->m_ThumbDecoder:Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$ThumbnailImageDecoder;

    iput-boolean v10, v0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$ThumbnailImageDecoder;->canUseEmbeddedThumbnail:Z

    .line 918
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->m_ThumbDecoder:Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$ThumbnailImageDecoder;

    iput-boolean v10, v0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$ThumbnailImageDecoder;->opaque:Z

    .line 919
    sget-object v0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->m_VideoThumbDecoder:Lcom/oneplus/media/BitmapPool;

    if-nez v0, :cond_1

    .line 920
    new-instance v0, Lcom/oneplus/media/BitmapPool;

    const-string v1, "VideoThumbDecoder"

    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/media/BitmapPool;-><init>(Ljava/lang/String;JLandroid/graphics/Bitmap$Config;I)V

    sput-object v0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->m_VideoThumbDecoder:Lcom/oneplus/media/BitmapPool;

    .line 921
    :cond_1
    sget-object v0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->m_LargeVideoThumbDecoder:Lcom/oneplus/media/BitmapPool;

    if-nez v0, :cond_2

    .line 922
    new-instance v0, Lcom/oneplus/media/BitmapPool;

    const-string v1, "LargeVideoThumbDecoder"

    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/media/BitmapPool;-><init>(Ljava/lang/String;JLandroid/graphics/Bitmap$Config;I)V

    sput-object v0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->m_LargeVideoThumbDecoder:Lcom/oneplus/media/BitmapPool;

    .line 925
    :cond_2
    invoke-virtual {v6}, Lcom/oneplus/base/BaseApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 926
    .local v8, "res":Landroid/content/res/Resources;
    const v0, 0x7f050102

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->m_MicroThumbWidth:I

    .line 927
    const v0, 0x7f050103

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->m_MicroThumbHeight:I

    .line 928
    const v0, 0x7f050100

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->m_SmallThumbWidth:I

    .line 929
    const v0, 0x7f050101

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->m_SmallThumbHeight:I

    .line 930
    const v0, 0x7f0500fe

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->m_ThumbWidth:I

    .line 931
    const v0, 0x7f0500ff

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->m_ThumbHeight:I

    .line 932
    return-void
.end method

.method public setTempThumbnailImage(Lcom/oneplus/gallery2/media/Media;Landroid/graphics/Bitmap;I)Z
    .locals 3
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p2, "thumb"    # Landroid/graphics/Bitmap;
    .param p3, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 973
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->verifyAccess()V

    .line 974
    invoke-virtual {p0, v1}, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->isRunningOrInitializing(Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 989
    :goto_0
    return v0

    .line 976
    :cond_0
    if-nez p1, :cond_1

    .line 978
    const-string v1, "ThumbnailImageManager"

    const-string v2, "replaceSmallThumbnailImage() - No media"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 983
    :cond_1
    if-eqz p2, :cond_2

    .line 984
    sget-object v0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->TEMP_THUMB_CACHE:Lcom/oneplus/cache/MemoryBitmapLruCache;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/cache/MemoryBitmapLruCache;->add(Ljava/lang/Object;Ljava/lang/Object;)Z

    :goto_1
    move v0, v1

    .line 989
    goto :goto_0

    .line 986
    :cond_2
    sget-object v0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->TEMP_THUMB_CACHE:Lcom/oneplus/cache/MemoryBitmapLruCache;

    invoke-virtual {v0, p1}, Lcom/oneplus/cache/MemoryBitmapLruCache;->remove(Ljava/lang/Object;)Z

    goto :goto_1
.end method
