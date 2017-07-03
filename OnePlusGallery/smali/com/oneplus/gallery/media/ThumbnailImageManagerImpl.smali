.class final Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;
.super Lcom/oneplus/base/component/BasicComponent;
.source "ThumbnailImageManagerImpl.java"

# interfaces
.implements Lcom/oneplus/gallery/media/ThumbnailImageManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;,
        Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingHandle;,
        Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$CallbackHandler;
    }
.end annotation


# static fields
.field private static final DURATION_CLEAR_INVALID_THUMBS_DELAY:J = 0x5dcL

.field private static final DURATION_DECODING_DELAY:J = 0xfL

.field private static final DURATION_MAX_CLEAR_INVALID_THUMBS:J = 0x3e8L

.field private static final MAX_CACHE_WAITING_TIME:J = 0x3e8L

.field private static final PRINT_PERFORMANCE_LOGS:Z = false

.field private static final TAG:Ljava/lang/String; = "ThumbnailImageManager"

.field private static final TEMP_THUMB_CACHE:Lcom/oneplus/cache/MemoryBitmapLruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/cache/MemoryBitmapLruCache",
            "<",
            "Lcom/oneplus/gallery/media/Media;",
            ">;"
        }
    .end annotation
.end field


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

.field private m_CacheManager:Lcom/oneplus/gallery/cache/CacheManager;

.field private m_CacheManagerActivateHandle:Lcom/oneplus/base/Handle;

.field private final m_CallbackHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$CallbackHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final m_ClearInvalidThumbsDelayedRunnable:Ljava/lang/Runnable;

.field private final m_ClearInvalidThumbsRunnable:Ljava/lang/Runnable;

.field private final m_DecodeSmallThumbRunnable:Ljava/lang/Runnable;

.field private final m_DecodeThumbRunnable:Ljava/lang/Runnable;

.field private final m_Lock:Ljava/lang/Object;

.field private volatile m_SmallThumbDecodeExecutor:Ljava/util/concurrent/Executor;

.field private volatile m_SmallThumbDecodeQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedDeque",
            "<",
            "Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;",
            ">;"
        }
    .end annotation
.end field

.field private volatile m_SmallThumbDecoder:Lcom/oneplus/media/BitmapPool;

.field private volatile m_SmallThumbHeight:I

.field private volatile m_SmallThumbWidth:I

.field private volatile m_ThumbDecodeExecutor:Ljava/util/concurrent/Executor;

.field private volatile m_ThumbDecodeQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedDeque",
            "<",
            "Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;",
            ">;"
        }
    .end annotation
.end field

.field private volatile m_ThumbDecoder:Lcom/oneplus/media/BitmapPool;

.field private m_ThumbDecoderActivationHandle:Lcom/oneplus/base/Handle;

.field private volatile m_ThumbHeight:I

.field private volatile m_ThumbWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 49
    new-instance v0, Lcom/oneplus/cache/MemoryBitmapLruCache;

    const-wide/32 v2, 0x2000000

    invoke-direct {v0, v2, v3}, Lcom/oneplus/cache/MemoryBitmapLruCache;-><init>(J)V

    sput-object v0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->TEMP_THUMB_CACHE:Lcom/oneplus/cache/MemoryBitmapLruCache;

    return-void
.end method

.method constructor <init>(Lcom/oneplus/gallery/GalleryApplication;)V
    .locals 2
    .param p1, "application"    # Lcom/oneplus/gallery/GalleryApplication;

    .prologue
    .line 394
    const-string v0, "Thumbnail image manager"

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/oneplus/base/component/BasicComponent;-><init>(Ljava/lang/String;Lcom/oneplus/base/component/ComponentOwner;Z)V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->m_ActivationHandles:Ljava/util/List;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->m_CallbackHandlers:Ljava/util/List;

    .line 57
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->m_Lock:Ljava/lang/Object;

    .line 72
    new-instance v0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$1;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$1;-><init>(Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;)V

    iput-object v0, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->m_ClearInvalidThumbsRunnable:Ljava/lang/Runnable;

    .line 80
    new-instance v0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$2;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$2;-><init>(Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;)V

    iput-object v0, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->m_ClearInvalidThumbsDelayedRunnable:Ljava/lang/Runnable;

    .line 89
    new-instance v0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$3;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$3;-><init>(Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;)V

    iput-object v0, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->m_DecodeSmallThumbRunnable:Ljava/lang/Runnable;

    .line 99
    new-instance v0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$4;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$4;-><init>(Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;)V

    iput-object v0, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->m_DecodeThumbRunnable:Ljava/lang/Runnable;

    .line 395
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->clearInvalidThumbnailImages()V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;)Ljava/util/concurrent/Executor;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->m_SmallThumbDecodeExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->m_ClearInvalidThumbsRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;)Ljava/util/concurrent/ConcurrentLinkedDeque;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->m_SmallThumbDecodeQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;)Ljava/util/concurrent/ConcurrentLinkedDeque;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->m_ThumbDecodeQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    return-object v0
.end method

.method static synthetic access$700(Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;
    .param p1, "x1"    # Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->onDecodingTaskCompleted(Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;)V

    return-void
.end method

.method static synthetic access$800(Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->sleepForNextDecoding()V

    return-void
.end method

.method static synthetic access$900(Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;Lcom/oneplus/base/Handle;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;
    .param p1, "x1"    # Lcom/oneplus/base/Handle;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->deactivate(Lcom/oneplus/base/Handle;)V

    return-void
.end method

.method private clearInvalidThumbnailImages()V
    .locals 12

    .prologue
    .line 446
    iget-object v0, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->m_CacheManager:Lcom/oneplus/gallery/cache/CacheManager;

    if-nez v0, :cond_1

    .line 493
    :cond_0
    :goto_0
    return-void

    .line 448
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->m_CacheManager:Lcom/oneplus/gallery/cache/CacheManager;

    invoke-interface {v0}, Lcom/oneplus/gallery/cache/CacheManager;->getSmallThumbnailImageCache()Lcom/oneplus/cache/HybridBitmapLruCache;

    move-result-object v6

    .line 449
    .local v6, "cache":Lcom/oneplus/cache/Cache;, "Lcom/oneplus/cache/Cache<Lcom/oneplus/gallery/cache/ImageCacheKey;Landroid/graphics/Bitmap;>;"
    if-eqz v6, :cond_0

    .line 453
    const-string v0, "ThumbnailImageManager"

    const-string v1, "clearInvalidThumbnailImages() - Start"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 455
    .local v8, "startTime":J
    const/4 v0, 0x1

    new-array v7, v0, [I

    .line 456
    .local v7, "count":[I
    new-instance v0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$6;

    invoke-direct {v0, p0, v8, v9, v7}, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$6;-><init>(Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;J[I)V

    invoke-interface {v6, v0}, Lcom/oneplus/cache/Cache;->remove(Lcom/oneplus/cache/Cache$RemovingPredication;)V

    .line 491
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long v10, v0, v8

    .line 492
    .local v10, "time":J
    const-string v0, "ThumbnailImageManager"

    const-string v1, "clearInvalidThumbnailImages() - Take "

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, " ms to removed "

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
    .line 500
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->verifyAccess()V

    .line 503
    iget-object v0, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->m_ActivationHandles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 521
    :cond_0
    :goto_0
    return-void

    .line 506
    :cond_1
    const-string v0, "ThumbnailImageManager"

    const-string v1, "deactivate() - Handle count : "

    iget-object v2, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->m_ActivationHandles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 509
    iget-object v0, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->m_ActivationHandles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 513
    iget-object v0, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->m_CacheManagerActivateHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->m_CacheManagerActivateHandle:Lcom/oneplus/base/Handle;

    .line 514
    iget-object v0, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->m_ThumbDecoderActivationHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->m_ThumbDecoderActivationHandle:Lcom/oneplus/base/Handle;

    .line 517
    invoke-static {}, Lcom/oneplus/gallery/GalleryApplication;->current()Lcom/oneplus/gallery/GalleryApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/gallery/GalleryApplication;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->m_ClearInvalidThumbsDelayedRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 520
    sget-object v0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->PROP_IS_ACTIVE:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private invalidateThumbnailImages(Lcom/oneplus/gallery/cache/ImageCacheKey;I)V
    .locals 2
    .param p1, "key"    # Lcom/oneplus/gallery/cache/ImageCacheKey;
    .param p2, "flags"    # I

    .prologue
    .line 800
    iget-object v0, p1, Lcom/oneplus/gallery/cache/ImageCacheKey;->filePath:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 802
    iget-object v0, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->m_SmallThumbDecoder:Lcom/oneplus/media/BitmapPool;

    iget-object v1, p1, Lcom/oneplus/gallery/cache/ImageCacheKey;->filePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oneplus/media/BitmapPool;->invalidate(Ljava/lang/String;)V

    .line 803
    iget-object v0, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->m_ThumbDecoder:Lcom/oneplus/media/BitmapPool;

    iget-object v1, p1, Lcom/oneplus/gallery/cache/ImageCacheKey;->filePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oneplus/media/BitmapPool;->invalidate(Ljava/lang/String;)V

    .line 810
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->m_CacheManager:Lcom/oneplus/gallery/cache/CacheManager;

    invoke-interface {v0}, Lcom/oneplus/gallery/cache/CacheManager;->getSmallThumbnailImageCache()Lcom/oneplus/cache/HybridBitmapLruCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oneplus/cache/HybridBitmapLruCache;->remove(Ljava/io/Serializable;)Z

    .line 811
    iget-object v0, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->m_CacheManager:Lcom/oneplus/gallery/cache/CacheManager;

    invoke-interface {v0}, Lcom/oneplus/gallery/cache/CacheManager;->getThumbnailImageCache()Lcom/oneplus/cache/HybridBitmapLruCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oneplus/cache/HybridBitmapLruCache;->remove(Ljava/io/Serializable;)Z

    .line 812
    return-void

    .line 805
    :cond_1
    iget-object v0, p1, Lcom/oneplus/gallery/cache/ImageCacheKey;->contentUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 807
    iget-object v0, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->m_SmallThumbDecoder:Lcom/oneplus/media/BitmapPool;

    iget-object v1, p1, Lcom/oneplus/gallery/cache/ImageCacheKey;->contentUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/oneplus/media/BitmapPool;->invalidate(Landroid/net/Uri;)V

    .line 808
    iget-object v0, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->m_ThumbDecoder:Lcom/oneplus/media/BitmapPool;

    iget-object v1, p1, Lcom/oneplus/gallery/cache/ImageCacheKey;->contentUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/oneplus/media/BitmapPool;->invalidate(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method private obtainDecodingTask()Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;
    .locals 2

    .prologue
    .line 818
    new-instance v0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;-><init>(Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$1;)V

    return-object v0
.end method

.method private onDecodingTaskCompleted(Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;)V
    .locals 0
    .param p1, "task"    # Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;

    .prologue
    .line 824
    return-void
.end method

.method private sleepForNextDecoding()V
    .locals 0

    .prologue
    .line 932
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 933
    return-void
.end method


# virtual methods
.method public activate(I)Lcom/oneplus/base/Handle;
    .locals 5
    .param p1, "flags"    # I

    .prologue
    const/4 v4, 0x1

    .line 406
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->verifyAccess()V

    .line 407
    invoke-virtual {p0, v4}, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->isRunningOrInitializing(Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 408
    const/4 v0, 0x0

    .line 438
    :cond_0
    :goto_0
    return-object v0

    .line 411
    :cond_1
    new-instance v0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$5;

    const-string v1, "ActivateThumbImageManager"

    invoke-direct {v0, p0, v1}, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$5;-><init>(Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;Ljava/lang/String;)V

    .line 419
    .local v0, "handle":Lcom/oneplus/base/Handle;
    iget-object v1, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->m_ActivationHandles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 420
    const-string v1, "ThumbnailImageManager"

    const-string v2, "activate() : Handle count : "

    iget-object v3, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->m_ActivationHandles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 421
    iget-object v1, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->m_ActivationHandles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 422
    sget-object v1, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->PROP_IS_ACTIVE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 427
    iget-object v1, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->m_CacheManagerActivateHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->m_CacheManager:Lcom/oneplus/gallery/cache/CacheManager;

    if-eqz v1, :cond_2

    .line 428
    iget-object v1, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->m_CacheManager:Lcom/oneplus/gallery/cache/CacheManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/oneplus/gallery/cache/CacheManager;->activate(I)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->m_CacheManagerActivateHandle:Lcom/oneplus/base/Handle;

    .line 431
    :cond_2
    iget-object v1, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->m_ThumbDecoderActivationHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 432
    iget-object v1, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->m_ThumbDecoder:Lcom/oneplus/media/BitmapPool;

    invoke-virtual {v1}, Lcom/oneplus/media/BitmapPool;->activate()Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->m_ThumbDecoderActivationHandle:Lcom/oneplus/base/Handle;

    .line 435
    :cond_3
    invoke-static {}, Lcom/oneplus/gallery/GalleryApplication;->current()Lcom/oneplus/gallery/GalleryApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/gallery/GalleryApplication;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->m_ClearInvalidThumbsDelayedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public decodeSmallThumbnailImage(Lcom/oneplus/gallery/media/Media;ILcom/oneplus/gallery/media/ThumbnailImageManager$DecodingCallback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;
    .locals 12
    .param p1, "media"    # Lcom/oneplus/gallery/media/Media;
    .param p2, "flags"    # I
    .param p3, "callback"    # Lcom/oneplus/gallery/media/ThumbnailImageManager$DecodingCallback;
    .param p4, "handler"    # Landroid/os/Handler;

    .prologue
    .line 558
    if-nez p1, :cond_0

    .line 560
    const-string v8, "ThumbnailImageManager"

    const-string v9, "decodeSmallThumbnailImage() - No media to decode"

    invoke-static {v8, v9}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    const/4 v4, 0x0

    .line 625
    :goto_0
    return-object v4

    .line 565
    :cond_0
    if-nez p4, :cond_1

    .line 566
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->getHandler()Landroid/os/Handler;

    move-result-object p4

    .line 567
    :cond_1
    invoke-virtual/range {p4 .. p4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    .line 568
    .local v2, "callbackLooper":Landroid/os/Looper;
    const/4 v1, 0x0

    .line 569
    .local v1, "callbackHandler":Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$CallbackHandler;
    iget-object v8, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->m_CallbackHandlers:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v5, v8, -0x1

    .local v5, "i":I
    :goto_1
    if-ltz v5, :cond_2

    .line 571
    iget-object v8, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->m_CallbackHandlers:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$CallbackHandler;

    .line 572
    .local v3, "candHandler":Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$CallbackHandler;
    invoke-virtual {v3}, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$CallbackHandler;->getLooper()Landroid/os/Looper;

    move-result-object v8

    if-ne v8, v2, :cond_5

    .line 574
    move-object v1, v3

    .line 578
    .end local v3    # "candHandler":Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$CallbackHandler;
    :cond_2
    if-nez v1, :cond_3

    .line 580
    new-instance v1, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$CallbackHandler;

    .end local v1    # "callbackHandler":Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$CallbackHandler;
    invoke-direct {v1, p0, v2}, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$CallbackHandler;-><init>(Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;Landroid/os/Looper;)V

    .line 581
    .restart local v1    # "callbackHandler":Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$CallbackHandler;
    iget-object v8, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->m_CallbackHandlers:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 585
    :cond_3
    iget-object v8, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->m_CacheManager:Lcom/oneplus/gallery/cache/CacheManager;

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->m_CacheManager:Lcom/oneplus/gallery/cache/CacheManager;

    invoke-interface {v8}, Lcom/oneplus/gallery/cache/CacheManager;->getSmallThumbnailImageCache()Lcom/oneplus/cache/HybridBitmapLruCache;

    move-result-object v0

    .line 586
    .local v0, "cache":Lcom/oneplus/cache/HybridBitmapLruCache;, "Lcom/oneplus/cache/HybridBitmapLruCache<Lcom/oneplus/gallery/cache/ImageCacheKey;>;"
    :goto_2
    invoke-direct {p0}, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->obtainDecodingTask()Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;

    move-result-object v6

    .line 587
    .local v6, "task":Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;
    iget-object v8, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->m_SmallThumbDecoder:Lcom/oneplus/media/BitmapPool;

    iput-object v8, v6, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;->bitmapDecoder:Lcom/oneplus/media/BitmapPool;

    .line 588
    iput-object v0, v6, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;->cache:Lcom/oneplus/cache/Cache;

    .line 589
    iput-object p3, v6, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;->callback:Lcom/oneplus/gallery/media/ThumbnailImageManager$DecodingCallback;

    .line 590
    iput-object v1, v6, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;->callbackHandler:Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$CallbackHandler;

    .line 591
    const/4 v8, 0x1

    iput-boolean v8, v6, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;->centerCrop:Z

    .line 592
    iput p2, v6, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;->flags:I

    .line 593
    iput-object p1, v6, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;->media:Lcom/oneplus/gallery/media/Media;

    .line 594
    iget v8, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->m_SmallThumbHeight:I

    iput v8, v6, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;->targetHeight:I

    .line 595
    iget v8, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->m_SmallThumbWidth:I

    iput v8, v6, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;->targetWidth:I

    .line 598
    iget-object v9, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->m_Lock:Ljava/lang/Object;

    monitor-enter v9

    .line 600
    :try_start_0
    iget-object v8, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->m_SmallThumbDecodeQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    if-nez v8, :cond_4

    .line 601
    new-instance v8, Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-direct {v8}, Ljava/util/concurrent/ConcurrentLinkedDeque;-><init>()V

    iput-object v8, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->m_SmallThumbDecodeQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    .line 602
    :cond_4
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 605
    new-instance v4, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingHandle;

    iget-object v8, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->m_SmallThumbDecodeQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-direct {v4, p0, v8, v6}, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingHandle;-><init>(Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;Ljava/util/Collection;Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;)V

    .line 606
    .local v4, "handle":Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingHandle;
    iput-object v4, v6, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;->decodingHandle:Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingHandle;

    .line 609
    and-int/lit8 v8, p2, 0x1

    if-nez v8, :cond_7

    .line 611
    new-instance v8, Lcom/oneplus/gallery/cache/ImageCacheKey;

    invoke-direct {v8, p1}, Lcom/oneplus/gallery/cache/ImageCacheKey;-><init>(Lcom/oneplus/gallery/media/Media;)V

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    invoke-virtual {v0, v8, v9, v10, v11}, Lcom/oneplus/cache/HybridBitmapLruCache;->get(Ljava/io/Serializable;Landroid/graphics/Bitmap;J)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 612
    .local v7, "thumb":Landroid/graphics/Bitmap;
    if-eqz v7, :cond_7

    .line 614
    const/4 v8, 0x1

    invoke-virtual {v1, v6, v7, v8}, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$CallbackHandler;->callOnThumbnailImageDecoded(Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;Landroid/graphics/Bitmap;Z)V

    goto/16 :goto_0

    .line 569
    .end local v0    # "cache":Lcom/oneplus/cache/HybridBitmapLruCache;, "Lcom/oneplus/cache/HybridBitmapLruCache<Lcom/oneplus/gallery/cache/ImageCacheKey;>;"
    .end local v4    # "handle":Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingHandle;
    .end local v6    # "task":Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;
    .end local v7    # "thumb":Landroid/graphics/Bitmap;
    .restart local v3    # "candHandler":Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$CallbackHandler;
    :cond_5
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 585
    .end local v3    # "candHandler":Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$CallbackHandler;
    :cond_6
    const/4 v0, 0x0

    goto :goto_2

    .line 602
    .restart local v0    # "cache":Lcom/oneplus/cache/HybridBitmapLruCache;, "Lcom/oneplus/cache/HybridBitmapLruCache<Lcom/oneplus/gallery/cache/ImageCacheKey;>;"
    .restart local v6    # "task":Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;
    :catchall_0
    move-exception v8

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8

    .line 620
    .restart local v4    # "handle":Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingHandle;
    :cond_7
    and-int/lit8 v8, p2, 0x2

    if-nez v8, :cond_8

    .line 621
    iget-object v8, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->m_SmallThumbDecodeQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v8, v6}, Ljava/util/concurrent/ConcurrentLinkedDeque;->addLast(Ljava/lang/Object;)V

    .line 624
    :goto_3
    iget-object v8, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->m_SmallThumbDecodeExecutor:Ljava/util/concurrent/Executor;

    iget-object v9, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->m_DecodeSmallThumbRunnable:Ljava/lang/Runnable;

    invoke-interface {v8, v9}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 623
    :cond_8
    iget-object v8, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->m_SmallThumbDecodeQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v8, v6}, Ljava/util/concurrent/ConcurrentLinkedDeque;->addFirst(Ljava/lang/Object;)V

    goto :goto_3
.end method

.method public decodeSmallThumbnailImage(Lcom/oneplus/gallery/media/Media;Lcom/oneplus/gallery/media/ThumbnailImageManager$DecodingCallback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;
    .locals 1
    .param p1, "media"    # Lcom/oneplus/gallery/media/Media;
    .param p2, "callback"    # Lcom/oneplus/gallery/media/ThumbnailImageManager$DecodingCallback;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 538
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->decodeSmallThumbnailImage(Lcom/oneplus/gallery/media/Media;ILcom/oneplus/gallery/media/ThumbnailImageManager$DecodingCallback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;

    move-result-object v0

    return-object v0
.end method

.method public decodeThumbnailImage(Lcom/oneplus/gallery/media/Media;ILcom/oneplus/gallery/media/ThumbnailImageManager$DecodingCallback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;
    .locals 12
    .param p1, "media"    # Lcom/oneplus/gallery/media/Media;
    .param p2, "flags"    # I
    .param p3, "callback"    # Lcom/oneplus/gallery/media/ThumbnailImageManager$DecodingCallback;
    .param p4, "handler"    # Landroid/os/Handler;

    .prologue
    .line 634
    if-nez p1, :cond_0

    .line 636
    const-string v8, "ThumbnailImageManager"

    const-string v9, "decodeThumbnailImage() - No media to decode"

    invoke-static {v8, v9}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    const/4 v4, 0x0

    .line 704
    :goto_0
    return-object v4

    .line 641
    :cond_0
    if-nez p4, :cond_1

    .line 642
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->getHandler()Landroid/os/Handler;

    move-result-object p4

    .line 643
    :cond_1
    invoke-virtual/range {p4 .. p4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    .line 644
    .local v2, "callbackLooper":Landroid/os/Looper;
    const/4 v1, 0x0

    .line 645
    .local v1, "callbackHandler":Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$CallbackHandler;
    iget-object v8, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->m_CallbackHandlers:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v5, v8, -0x1

    .local v5, "i":I
    :goto_1
    if-ltz v5, :cond_2

    .line 647
    iget-object v8, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->m_CallbackHandlers:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$CallbackHandler;

    .line 648
    .local v3, "candHandler":Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$CallbackHandler;
    invoke-virtual {v3}, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$CallbackHandler;->getLooper()Landroid/os/Looper;

    move-result-object v8

    if-ne v8, v2, :cond_5

    .line 650
    move-object v1, v3

    .line 654
    .end local v3    # "candHandler":Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$CallbackHandler;
    :cond_2
    if-nez v1, :cond_3

    .line 656
    new-instance v1, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$CallbackHandler;

    .end local v1    # "callbackHandler":Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$CallbackHandler;
    invoke-direct {v1, p0, v2}, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$CallbackHandler;-><init>(Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;Landroid/os/Looper;)V

    .line 657
    .restart local v1    # "callbackHandler":Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$CallbackHandler;
    iget-object v8, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->m_CallbackHandlers:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 661
    :cond_3
    iget-object v8, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->m_CacheManager:Lcom/oneplus/gallery/cache/CacheManager;

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->m_CacheManager:Lcom/oneplus/gallery/cache/CacheManager;

    invoke-interface {v8}, Lcom/oneplus/gallery/cache/CacheManager;->getThumbnailImageCache()Lcom/oneplus/cache/HybridBitmapLruCache;

    move-result-object v0

    .line 662
    .local v0, "cache":Lcom/oneplus/cache/HybridBitmapLruCache;, "Lcom/oneplus/cache/HybridBitmapLruCache<Lcom/oneplus/gallery/cache/ImageCacheKey;>;"
    :goto_2
    invoke-direct {p0}, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->obtainDecodingTask()Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;

    move-result-object v6

    .line 663
    .local v6, "task":Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;
    iget-object v8, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->m_ThumbDecoder:Lcom/oneplus/media/BitmapPool;

    iput-object v8, v6, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;->bitmapDecoder:Lcom/oneplus/media/BitmapPool;

    .line 664
    iput-object v0, v6, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;->cache:Lcom/oneplus/cache/Cache;

    .line 665
    iput-object p3, v6, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;->callback:Lcom/oneplus/gallery/media/ThumbnailImageManager$DecodingCallback;

    .line 666
    iput-object v1, v6, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;->callbackHandler:Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$CallbackHandler;

    .line 667
    const/4 v8, 0x0

    iput-boolean v8, v6, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;->centerCrop:Z

    .line 668
    iput p2, v6, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;->flags:I

    .line 669
    iput-object p1, v6, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;->media:Lcom/oneplus/gallery/media/Media;

    .line 670
    iget v8, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->m_ThumbHeight:I

    iput v8, v6, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;->targetHeight:I

    .line 671
    iget v8, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->m_ThumbWidth:I

    iput v8, v6, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;->targetWidth:I

    .line 674
    iget-object v9, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->m_Lock:Ljava/lang/Object;

    monitor-enter v9

    .line 676
    :try_start_0
    iget-object v8, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->m_ThumbDecodeQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    if-nez v8, :cond_4

    .line 677
    new-instance v8, Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-direct {v8}, Ljava/util/concurrent/ConcurrentLinkedDeque;-><init>()V

    iput-object v8, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->m_ThumbDecodeQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    .line 678
    :cond_4
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 681
    new-instance v4, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingHandle;

    iget-object v8, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->m_ThumbDecodeQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-direct {v4, p0, v8, v6}, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingHandle;-><init>(Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;Ljava/util/Collection;Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;)V

    .line 682
    .local v4, "handle":Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingHandle;
    iput-object v4, v6, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;->decodingHandle:Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingHandle;

    .line 685
    and-int/lit8 v8, p2, 0x1

    if-nez v8, :cond_7

    .line 687
    new-instance v8, Lcom/oneplus/gallery/cache/ImageCacheKey;

    invoke-direct {v8, p1}, Lcom/oneplus/gallery/cache/ImageCacheKey;-><init>(Lcom/oneplus/gallery/media/Media;)V

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    invoke-virtual {v0, v8, v9, v10, v11}, Lcom/oneplus/cache/HybridBitmapLruCache;->get(Ljava/io/Serializable;Landroid/graphics/Bitmap;J)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 688
    .local v7, "thumb":Landroid/graphics/Bitmap;
    if-eqz v7, :cond_7

    .line 690
    const/4 v8, 0x1

    invoke-virtual {v1, v6, v7, v8}, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$CallbackHandler;->callOnThumbnailImageDecoded(Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;Landroid/graphics/Bitmap;Z)V

    goto/16 :goto_0

    .line 645
    .end local v0    # "cache":Lcom/oneplus/cache/HybridBitmapLruCache;, "Lcom/oneplus/cache/HybridBitmapLruCache<Lcom/oneplus/gallery/cache/ImageCacheKey;>;"
    .end local v4    # "handle":Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingHandle;
    .end local v6    # "task":Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;
    .end local v7    # "thumb":Landroid/graphics/Bitmap;
    .restart local v3    # "candHandler":Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$CallbackHandler;
    :cond_5
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 661
    .end local v3    # "candHandler":Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$CallbackHandler;
    :cond_6
    const/4 v0, 0x0

    goto :goto_2

    .line 678
    .restart local v0    # "cache":Lcom/oneplus/cache/HybridBitmapLruCache;, "Lcom/oneplus/cache/HybridBitmapLruCache<Lcom/oneplus/gallery/cache/ImageCacheKey;>;"
    .restart local v6    # "task":Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingTask;
    :catchall_0
    move-exception v8

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8

    .line 696
    .restart local v4    # "handle":Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$DecodingHandle;
    :cond_7
    iget-object v9, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->m_Lock:Ljava/lang/Object;

    monitor-enter v9

    .line 698
    and-int/lit8 v8, p2, 0x2

    if-nez v8, :cond_8

    .line 699
    :try_start_2
    iget-object v8, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->m_ThumbDecodeQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v8, v6}, Ljava/util/concurrent/ConcurrentLinkedDeque;->addLast(Ljava/lang/Object;)V

    .line 702
    :goto_3
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 703
    iget-object v8, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->m_ThumbDecodeExecutor:Ljava/util/concurrent/Executor;

    iget-object v9, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->m_DecodeThumbRunnable:Ljava/lang/Runnable;

    invoke-interface {v8, v9}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 701
    :cond_8
    :try_start_3
    iget-object v8, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->m_ThumbDecodeQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v8, v6}, Ljava/util/concurrent/ConcurrentLinkedDeque;->addFirst(Ljava/lang/Object;)V

    goto :goto_3

    .line 702
    :catchall_1
    move-exception v8

    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v8
.end method

.method public getCachedSmallThumbnailImage(Lcom/oneplus/gallery/media/Media;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "media"    # Lcom/oneplus/gallery/media/Media;

    .prologue
    const/4 v4, 0x0

    .line 715
    if-nez p1, :cond_1

    move-object v3, v4

    .line 734
    :cond_0
    :goto_0
    return-object v3

    .line 717
    :cond_1
    iget-object v5, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->m_CacheManager:Lcom/oneplus/gallery/cache/CacheManager;

    if-nez v5, :cond_2

    move-object v3, v4

    .line 718
    goto :goto_0

    .line 719
    :cond_2
    iget-object v5, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->m_CacheManager:Lcom/oneplus/gallery/cache/CacheManager;

    invoke-interface {v5}, Lcom/oneplus/gallery/cache/CacheManager;->getSmallThumbnailImageCache()Lcom/oneplus/cache/HybridBitmapLruCache;

    move-result-object v0

    .line 720
    .local v0, "cache":Lcom/oneplus/cache/Cache;, "Lcom/oneplus/cache/Cache<Lcom/oneplus/gallery/cache/ImageCacheKey;Landroid/graphics/Bitmap;>;"
    if-nez v0, :cond_3

    move-object v3, v4

    .line 721
    goto :goto_0

    .line 722
    :cond_3
    new-instance v5, Lcom/oneplus/gallery/cache/ImageCacheKey;

    invoke-direct {v5, p1}, Lcom/oneplus/gallery/cache/ImageCacheKey;-><init>(Lcom/oneplus/gallery/media/Media;)V

    const-wide/16 v6, 0x0

    invoke-interface {v0, v5, v4, v6, v7}, Lcom/oneplus/cache/Cache;->get(Ljava/lang/Object;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    .line 723
    .local v3, "thumb":Landroid/graphics/Bitmap;
    if-nez v3, :cond_0

    .line 725
    iget-object v5, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->m_SmallThumbDecoder:Lcom/oneplus/media/BitmapPool;

    if-eqz v5, :cond_5

    .line 727
    invoke-interface {p1}, Lcom/oneplus/gallery/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v2

    .line 728
    .local v2, "filePath":Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 729
    iget-object v4, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->m_SmallThumbDecoder:Lcom/oneplus/media/BitmapPool;

    invoke-virtual {v4, v2}, Lcom/oneplus/media/BitmapPool;->getCachedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_0

    .line 730
    :cond_4
    invoke-interface {p1}, Lcom/oneplus/gallery/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    .line 731
    .local v1, "contentUri":Landroid/net/Uri;
    if-eqz v1, :cond_5

    .line 732
    iget-object v4, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->m_SmallThumbDecoder:Lcom/oneplus/media/BitmapPool;

    invoke-virtual {v4, v1}, Lcom/oneplus/media/BitmapPool;->getCachedBitmap(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_0

    .end local v1    # "contentUri":Landroid/net/Uri;
    .end local v2    # "filePath":Ljava/lang/String;
    :cond_5
    move-object v3, v4

    .line 734
    goto :goto_0
.end method

.method public getCachedThumbnailImage(Lcom/oneplus/gallery/media/Media;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "media"    # Lcom/oneplus/gallery/media/Media;

    .prologue
    const/4 v4, 0x0

    .line 742
    if-nez p1, :cond_1

    move-object v3, v4

    .line 761
    :cond_0
    :goto_0
    return-object v3

    .line 744
    :cond_1
    iget-object v5, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->m_CacheManager:Lcom/oneplus/gallery/cache/CacheManager;

    if-nez v5, :cond_2

    move-object v3, v4

    .line 745
    goto :goto_0

    .line 746
    :cond_2
    iget-object v5, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->m_CacheManager:Lcom/oneplus/gallery/cache/CacheManager;

    invoke-interface {v5}, Lcom/oneplus/gallery/cache/CacheManager;->getThumbnailImageCache()Lcom/oneplus/cache/HybridBitmapLruCache;

    move-result-object v0

    .line 747
    .local v0, "cache":Lcom/oneplus/cache/Cache;, "Lcom/oneplus/cache/Cache<Lcom/oneplus/gallery/cache/ImageCacheKey;Landroid/graphics/Bitmap;>;"
    if-nez v0, :cond_3

    move-object v3, v4

    .line 748
    goto :goto_0

    .line 749
    :cond_3
    new-instance v5, Lcom/oneplus/gallery/cache/ImageCacheKey;

    invoke-direct {v5, p1}, Lcom/oneplus/gallery/cache/ImageCacheKey;-><init>(Lcom/oneplus/gallery/media/Media;)V

    const-wide/16 v6, 0x0

    invoke-interface {v0, v5, v4, v6, v7}, Lcom/oneplus/cache/Cache;->get(Ljava/lang/Object;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    .line 750
    .local v3, "thumb":Landroid/graphics/Bitmap;
    if-nez v3, :cond_0

    .line 752
    iget-object v5, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->m_ThumbDecoder:Lcom/oneplus/media/BitmapPool;

    if-eqz v5, :cond_5

    .line 754
    invoke-interface {p1}, Lcom/oneplus/gallery/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v2

    .line 755
    .local v2, "filePath":Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 756
    iget-object v4, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->m_ThumbDecoder:Lcom/oneplus/media/BitmapPool;

    invoke-virtual {v4, v2}, Lcom/oneplus/media/BitmapPool;->getCachedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_0

    .line 757
    :cond_4
    invoke-interface {p1}, Lcom/oneplus/gallery/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    .line 758
    .local v1, "contentUri":Landroid/net/Uri;
    if-eqz v1, :cond_5

    .line 759
    iget-object v4, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->m_ThumbDecoder:Lcom/oneplus/media/BitmapPool;

    invoke-virtual {v4, v1}, Lcom/oneplus/media/BitmapPool;->getCachedBitmap(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_0

    .end local v1    # "contentUri":Landroid/net/Uri;
    .end local v2    # "filePath":Ljava/lang/String;
    :cond_5
    move-object v3, v4

    .line 761
    goto :goto_0
.end method

.method public getTempThumbnailImage(Lcom/oneplus/gallery/media/Media;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "media"    # Lcom/oneplus/gallery/media/Media;

    .prologue
    const/4 v0, 0x0

    .line 769
    if-eqz p1, :cond_0

    .line 770
    sget-object v1, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->TEMP_THUMB_CACHE:Lcom/oneplus/cache/MemoryBitmapLruCache;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, p1, v0, v2, v3}, Lcom/oneplus/cache/MemoryBitmapLruCache;->get(Ljava/lang/Object;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 771
    :cond_0
    return-object v0
.end method

.method public invalidateThumbnailImages(Lcom/oneplus/gallery/media/Media;I)V
    .locals 2
    .param p1, "media"    # Lcom/oneplus/gallery/media/Media;
    .param p2, "flags"    # I

    .prologue
    .line 780
    if-nez p1, :cond_1

    .line 794
    :cond_0
    :goto_0
    return-void

    .line 784
    :cond_1
    iget-object v1, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->m_CacheManager:Lcom/oneplus/gallery/cache/CacheManager;

    if-eqz v1, :cond_0

    .line 786
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->isRunningOrInitializing(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 790
    new-instance v0, Lcom/oneplus/gallery/cache/ImageCacheKey;

    invoke-direct {v0, p1}, Lcom/oneplus/gallery/cache/ImageCacheKey;-><init>(Lcom/oneplus/gallery/media/Media;)V

    .line 791
    .local v0, "key":Lcom/oneplus/gallery/cache/ImageCacheKey;
    invoke-direct {p0, v0, p2}, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->invalidateThumbnailImages(Lcom/oneplus/gallery/cache/ImageCacheKey;I)V

    .line 792
    and-int/lit8 v1, p2, 0x4

    if-nez v1, :cond_0

    .line 793
    sget-object v1, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->TEMP_THUMB_CACHE:Lcom/oneplus/cache/MemoryBitmapLruCache;

    invoke-virtual {v1, p1}, Lcom/oneplus/cache/MemoryBitmapLruCache;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected onDeinitialize()V
    .locals 2

    .prologue
    .line 832
    iget-object v0, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->m_ActivationHandles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 833
    iget-object v0, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->m_CacheManagerActivateHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->m_CacheManagerActivateHandle:Lcom/oneplus/base/Handle;

    .line 834
    sget-object v0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->PROP_IS_ACTIVE:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 837
    invoke-super {p0}, Lcom/oneplus/base/component/BasicComponent;->onDeinitialize()V

    .line 838
    return-void
.end method

.method protected onInitialize()V
    .locals 11

    .prologue
    .line 846
    invoke-super {p0}, Lcom/oneplus/base/component/BasicComponent;->onInitialize()V

    .line 849
    invoke-static {}, Lcom/oneplus/gallery/GalleryApplication;->current()Lcom/oneplus/gallery/GalleryApplication;

    move-result-object v0

    const-class v1, Lcom/oneplus/gallery/cache/CacheManager;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/GalleryApplication;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/cache/CacheManager;

    iput-object v0, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->m_CacheManager:Lcom/oneplus/gallery/cache/CacheManager;

    .line 850
    invoke-static {}, Lcom/oneplus/gallery/GalleryApplication;->current()Lcom/oneplus/gallery/GalleryApplication;

    move-result-object v0

    const-class v1, Lcom/oneplus/gallery/media/OPMediaManager;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/GalleryApplication;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v9

    check-cast v9, Lcom/oneplus/gallery/media/OPMediaManager;

    .line 851
    .local v9, "mediaManager":Lcom/oneplus/gallery/media/OPMediaManager;
    if-eqz v9, :cond_0

    .line 853
    new-instance v0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$7;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$7;-><init>(Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;)V

    invoke-virtual {p0}, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-interface {v9, v0, v1}, Lcom/oneplus/gallery/media/OPMediaManager;->registerMediaChangeCallback(Lcom/oneplus/gallery/media/MediaManager$MediaChangeCallback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;

    .line 888
    :cond_0
    new-instance v0, Lcom/oneplus/media/BitmapPool;

    const-string v1, "SmallThumbDecoder"

    const-wide/16 v2, 0x0

    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const/4 v5, 0x2

    const/16 v6, 0xc

    invoke-direct/range {v0 .. v6}, Lcom/oneplus/media/BitmapPool;-><init>(Ljava/lang/String;JLandroid/graphics/Bitmap$Config;II)V

    iput-object v0, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->m_SmallThumbDecoder:Lcom/oneplus/media/BitmapPool;

    .line 889
    new-instance v0, Lcom/oneplus/media/BitmapPool;

    const-string v1, "ThumbDecoder"

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const/4 v7, 0x2

    const/16 v8, 0x1c

    invoke-direct/range {v0 .. v8}, Lcom/oneplus/media/BitmapPool;-><init>(Ljava/lang/String;JJLandroid/graphics/Bitmap$Config;II)V

    iput-object v0, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->m_ThumbDecoder:Lcom/oneplus/media/BitmapPool;

    .line 892
    invoke-static {}, Lcom/oneplus/gallery/GalleryApplication;->current()Lcom/oneplus/gallery/GalleryApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/gallery/GalleryApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 893
    .local v10, "res":Landroid/content/res/Resources;
    const v0, 0x7f050100

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->m_SmallThumbWidth:I

    .line 894
    const v0, 0x7f050101

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->m_SmallThumbHeight:I

    .line 895
    const v0, 0x7f0500fe

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->m_ThumbWidth:I

    .line 896
    const v0, 0x7f0500ff

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->m_ThumbHeight:I

    .line 899
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->m_SmallThumbDecodeExecutor:Ljava/util/concurrent/Executor;

    .line 900
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->m_ThumbDecodeExecutor:Ljava/util/concurrent/Executor;

    .line 901
    return-void
.end method

.method public setTempThumbnailImage(Lcom/oneplus/gallery/media/Media;Landroid/graphics/Bitmap;I)Z
    .locals 3
    .param p1, "media"    # Lcom/oneplus/gallery/media/Media;
    .param p2, "thumb"    # Landroid/graphics/Bitmap;
    .param p3, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 909
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->verifyAccess()V

    .line 910
    invoke-virtual {p0, v1}, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->isRunningOrInitializing(Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 925
    :goto_0
    return v0

    .line 912
    :cond_0
    if-nez p1, :cond_1

    .line 914
    const-string v1, "ThumbnailImageManager"

    const-string v2, "replaceSmallThumbnailImage() - No media"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 919
    :cond_1
    if-eqz p2, :cond_2

    .line 920
    sget-object v0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->TEMP_THUMB_CACHE:Lcom/oneplus/cache/MemoryBitmapLruCache;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/cache/MemoryBitmapLruCache;->add(Ljava/lang/Object;Ljava/lang/Object;)Z

    :goto_1
    move v0, v1

    .line 925
    goto :goto_0

    .line 922
    :cond_2
    sget-object v0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl;->TEMP_THUMB_CACHE:Lcom/oneplus/cache/MemoryBitmapLruCache;

    invoke-virtual {v0, p1}, Lcom/oneplus/cache/MemoryBitmapLruCache;->remove(Ljava/lang/Object;)Z

    goto :goto_1
.end method
