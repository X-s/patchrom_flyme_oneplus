.class final Lcom/oneplus/gallery/cache/CacheManagerImpl;
.super Lcom/oneplus/base/component/BasicComponent;
.source "CacheManagerImpl.java"

# interfaces
.implements Lcom/oneplus/gallery/cache/CacheManager;


# static fields
.field private static final CAPACITY_SMALL_THUMB_CMEM_CACHE:J = 0x4000000L

.field private static final CAPACITY_SMALL_THUMB_CMEM_CACHE_IDLE:J = 0x1000000L

.field private static final CAPACITY_SMALL_THUMB_DISK_CACHE:J = 0x8000000L

.field private static final CAPACITY_SMALL_THUMB_MEM_CACHE:J = 0x8000000L

.field private static final CAPACITY_SMALL_THUMB_MEM_CACHE_IDLE:J = 0x1000000L

.field private static final CAPACITY_THUMB_DISK_CACHE:J = 0x0L

.field private static final CAPACITY_THUMB_MEM_CACHE:J = 0x2000000L

.field private static final CAPACITY_THUMB_MEM_CACHE_IDLE:J = 0x800000L

.field private static final TAG:Ljava/lang/String; = "CacheManager"

.field private static final m_GlobalActivationHandles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/base/Handle;",
            ">;"
        }
    .end annotation
.end field

.field private static final m_Lock:Ljava/lang/Object;

.field private static volatile m_SmallThumbImageCache:Lcom/oneplus/cache/HybridBitmapLruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/cache/HybridBitmapLruCache",
            "<",
            "Lcom/oneplus/gallery/cache/ImageCacheKey;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile m_ThumbImageCache:Lcom/oneplus/cache/HybridBitmapLruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/cache/HybridBitmapLruCache",
            "<",
            "Lcom/oneplus/gallery/cache/ImageCacheKey;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final m_LocalActivationHandles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/base/Handle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/oneplus/gallery/cache/CacheManagerImpl;->m_GlobalActivationHandles:Ljava/util/List;

    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/oneplus/gallery/cache/CacheManagerImpl;->m_Lock:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Lcom/oneplus/gallery/GalleryApplication;)V
    .locals 2
    .param p1, "application"    # Lcom/oneplus/gallery/GalleryApplication;

    .prologue
    .line 45
    const-string v0, "Cache manager"

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/oneplus/base/component/BasicComponent;-><init>(Ljava/lang/String;Lcom/oneplus/base/component/ComponentOwner;Z)V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/cache/CacheManagerImpl;->m_LocalActivationHandles:Ljava/util/List;

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/gallery/cache/CacheManagerImpl;Lcom/oneplus/base/Handle;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/cache/CacheManagerImpl;
    .param p1, "x1"    # Lcom/oneplus/base/Handle;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/cache/CacheManagerImpl;->deactivate(Lcom/oneplus/base/Handle;)V

    return-void
.end method

.method private deactivate(Lcom/oneplus/base/Handle;)V
    .locals 6
    .param p1, "handle"    # Lcom/oneplus/base/Handle;

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/oneplus/gallery/cache/CacheManagerImpl;->verifyAccess()V

    .line 94
    iget-object v0, p0, Lcom/oneplus/gallery/cache/CacheManagerImpl;->m_LocalActivationHandles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    sget-object v0, Lcom/oneplus/gallery/cache/CacheManagerImpl;->m_GlobalActivationHandles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 97
    const-string v0, "CacheManager"

    const-string v1, "deactivate() - Local handles : "

    iget-object v2, p0, Lcom/oneplus/gallery/cache/CacheManagerImpl;->m_LocalActivationHandles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, ", global handles : "

    sget-object v4, Lcom/oneplus/gallery/cache/CacheManagerImpl;->m_GlobalActivationHandles:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 98
    sget-object v0, Lcom/oneplus/gallery/cache/CacheManagerImpl;->m_GlobalActivationHandles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    sget-object v1, Lcom/oneplus/gallery/cache/CacheManagerImpl;->m_Lock:Ljava/lang/Object;

    monitor-enter v1

    .line 104
    :try_start_0
    sget-object v0, Lcom/oneplus/gallery/cache/CacheManagerImpl;->m_SmallThumbImageCache:Lcom/oneplus/cache/HybridBitmapLruCache;

    if-eqz v0, :cond_2

    .line 106
    sget-object v0, Lcom/oneplus/gallery/cache/CacheManagerImpl;->m_SmallThumbImageCache:Lcom/oneplus/cache/HybridBitmapLruCache;

    invoke-virtual {v0}, Lcom/oneplus/cache/HybridBitmapLruCache;->flush()V

    .line 107
    sget-object v0, Lcom/oneplus/gallery/cache/CacheManagerImpl;->m_SmallThumbImageCache:Lcom/oneplus/cache/HybridBitmapLruCache;

    const-wide/32 v2, 0x1000000

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-wide/32 v4, 0x1000000

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/oneplus/cache/HybridBitmapLruCache;->setCapacity(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 109
    :cond_2
    sget-object v0, Lcom/oneplus/gallery/cache/CacheManagerImpl;->m_ThumbImageCache:Lcom/oneplus/cache/HybridBitmapLruCache;

    if-eqz v0, :cond_3

    .line 110
    sget-object v0, Lcom/oneplus/gallery/cache/CacheManagerImpl;->m_ThumbImageCache:Lcom/oneplus/cache/HybridBitmapLruCache;

    const-wide/32 v2, 0x800000

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/cache/HybridBitmapLruCache;->setCapacity(Ljava/lang/Long;Ljava/lang/Long;)V

    .line 111
    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    sget-object v0, Lcom/oneplus/gallery/cache/CacheManagerImpl;->PROP_IS_ACTIVE:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery/cache/CacheManagerImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 111
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public activate(I)Lcom/oneplus/base/Handle;
    .locals 10
    .param p1, "flags"    # I

    .prologue
    const-wide/32 v8, 0x8000000

    const/4 v6, 0x1

    .line 57
    invoke-virtual {p0}, Lcom/oneplus/gallery/cache/CacheManagerImpl;->verifyAccess()V

    .line 58
    invoke-virtual {p0, v6}, Lcom/oneplus/gallery/cache/CacheManagerImpl;->isRunningOrInitializing(Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 59
    const/4 v0, 0x0

    .line 83
    :cond_0
    :goto_0
    return-object v0

    .line 62
    :cond_1
    new-instance v0, Lcom/oneplus/gallery/cache/CacheManagerImpl$1;

    const-string v1, "ActivateCacheManager"

    invoke-direct {v0, p0, v1}, Lcom/oneplus/gallery/cache/CacheManagerImpl$1;-><init>(Lcom/oneplus/gallery/cache/CacheManagerImpl;Ljava/lang/String;)V

    .line 70
    .local v0, "handle":Lcom/oneplus/base/Handle;
    iget-object v1, p0, Lcom/oneplus/gallery/cache/CacheManagerImpl;->m_LocalActivationHandles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    sget-object v1, Lcom/oneplus/gallery/cache/CacheManagerImpl;->m_GlobalActivationHandles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    const-string v1, "CacheManager"

    const-string v2, "activate() - Local handles : "

    iget-object v3, p0, Lcom/oneplus/gallery/cache/CacheManagerImpl;->m_LocalActivationHandles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, ", global handles : "

    sget-object v5, Lcom/oneplus/gallery/cache/CacheManagerImpl;->m_GlobalActivationHandles:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v1, v2, v3, v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 73
    sget-object v1, Lcom/oneplus/gallery/cache/CacheManagerImpl;->m_GlobalActivationHandles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v6, :cond_0

    .line 75
    sget-object v1, Lcom/oneplus/gallery/cache/CacheManagerImpl;->m_SmallThumbImageCache:Lcom/oneplus/cache/HybridBitmapLruCache;

    if-eqz v1, :cond_2

    .line 76
    sget-object v1, Lcom/oneplus/gallery/cache/CacheManagerImpl;->m_SmallThumbImageCache:Lcom/oneplus/cache/HybridBitmapLruCache;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-wide/32 v4, 0x4000000

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/oneplus/cache/HybridBitmapLruCache;->setCapacity(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 77
    :cond_2
    sget-object v1, Lcom/oneplus/gallery/cache/CacheManagerImpl;->m_ThumbImageCache:Lcom/oneplus/cache/HybridBitmapLruCache;

    if-eqz v1, :cond_3

    .line 78
    sget-object v1, Lcom/oneplus/gallery/cache/CacheManagerImpl;->m_ThumbImageCache:Lcom/oneplus/cache/HybridBitmapLruCache;

    const-wide/32 v2, 0x2000000

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/cache/HybridBitmapLruCache;->setCapacity(Ljava/lang/Long;Ljava/lang/Long;)V

    .line 79
    :cond_3
    sget-object v1, Lcom/oneplus/gallery/cache/CacheManagerImpl;->PROP_IS_ACTIVE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/gallery/cache/CacheManagerImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getSmallThumbnailImageCache()Lcom/oneplus/cache/HybridBitmapLruCache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/oneplus/cache/HybridBitmapLruCache",
            "<",
            "Lcom/oneplus/gallery/cache/ImageCacheKey;",
            ">;"
        }
    .end annotation

    .prologue
    .line 125
    sget-object v0, Lcom/oneplus/gallery/cache/CacheManagerImpl;->m_SmallThumbImageCache:Lcom/oneplus/cache/HybridBitmapLruCache;

    return-object v0
.end method

.method public getThumbnailImageCache()Lcom/oneplus/cache/HybridBitmapLruCache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/oneplus/cache/HybridBitmapLruCache",
            "<",
            "Lcom/oneplus/gallery/cache/ImageCacheKey;",
            ">;"
        }
    .end annotation

    .prologue
    .line 133
    sget-object v0, Lcom/oneplus/gallery/cache/CacheManagerImpl;->m_ThumbImageCache:Lcom/oneplus/cache/HybridBitmapLruCache;

    return-object v0
.end method

.method protected onDeinitialize()V
    .locals 4

    .prologue
    .line 142
    iget-object v2, p0, Lcom/oneplus/gallery/cache/CacheManagerImpl;->m_LocalActivationHandles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 144
    iget-object v2, p0, Lcom/oneplus/gallery/cache/CacheManagerImpl;->m_LocalActivationHandles:Ljava/util/List;

    const/4 v3, 0x0

    new-array v3, v3, [Lcom/oneplus/base/Handle;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/base/Handle;

    .line 145
    .local v0, "handles":[Lcom/oneplus/base/Handle;
    array-length v2, v0

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 146
    aget-object v2, v0, v1

    invoke-direct {p0, v2}, Lcom/oneplus/gallery/cache/CacheManagerImpl;->deactivate(Lcom/oneplus/base/Handle;)V

    .line 145
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 150
    .end local v0    # "handles":[Lcom/oneplus/base/Handle;
    .end local v1    # "i":I
    :cond_0
    invoke-super {p0}, Lcom/oneplus/base/component/BasicComponent;->onDeinitialize()V

    .line 151
    return-void
.end method

.method protected onInitialize()V
    .locals 13

    .prologue
    .line 159
    invoke-super {p0}, Lcom/oneplus/base/component/BasicComponent;->onInitialize()V

    .line 162
    sget-object v12, Lcom/oneplus/gallery/cache/CacheManagerImpl;->m_Lock:Ljava/lang/Object;

    monitor-enter v12

    .line 164
    :try_start_0
    sget-object v0, Lcom/oneplus/gallery/cache/CacheManagerImpl;->m_SmallThumbImageCache:Lcom/oneplus/cache/HybridBitmapLruCache;

    if-nez v0, :cond_0

    .line 165
    new-instance v1, Lcom/oneplus/cache/HybridBitmapLruCache;

    invoke-static {}, Lcom/oneplus/gallery/GalleryApplication;->current()Lcom/oneplus/gallery/GalleryApplication;

    move-result-object v2

    const-string v3, "SmallThumbnail"

    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const-wide/32 v6, 0x8000000

    const-wide/32 v8, 0x4000000

    const-wide/32 v10, 0x8000000

    invoke-direct/range {v1 .. v11}, Lcom/oneplus/cache/HybridBitmapLruCache;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap$Config;Landroid/graphics/Bitmap$CompressFormat;JJJ)V

    sput-object v1, Lcom/oneplus/gallery/cache/CacheManagerImpl;->m_SmallThumbImageCache:Lcom/oneplus/cache/HybridBitmapLruCache;

    .line 166
    :cond_0
    sget-object v0, Lcom/oneplus/gallery/cache/CacheManagerImpl;->m_ThumbImageCache:Lcom/oneplus/cache/HybridBitmapLruCache;

    if-nez v0, :cond_1

    .line 167
    new-instance v1, Lcom/oneplus/cache/HybridBitmapLruCache;

    invoke-static {}, Lcom/oneplus/gallery/GalleryApplication;->current()Lcom/oneplus/gallery/GalleryApplication;

    move-result-object v2

    const-string v3, "Thumbnail"

    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const-wide/32 v6, 0x2000000

    const-wide/16 v8, 0x0

    invoke-direct/range {v1 .. v9}, Lcom/oneplus/cache/HybridBitmapLruCache;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap$Config;Landroid/graphics/Bitmap$CompressFormat;JJ)V

    sput-object v1, Lcom/oneplus/gallery/cache/CacheManagerImpl;->m_ThumbImageCache:Lcom/oneplus/cache/HybridBitmapLruCache;

    .line 168
    :cond_1
    monitor-exit v12

    .line 169
    return-void

    .line 168
    :catchall_0
    move-exception v0

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
