.class final Lcom/oneplus/gallery2/CacheManagerImpl;
.super Lcom/oneplus/base/component/BasicComponent;
.source "CacheManagerImpl.java"

# interfaces
.implements Lcom/oneplus/gallery2/CacheManager;


# static fields
.field private static final CAPACITY_MICRO_THUMB_CMEM_CACHE:J = 0x0L

.field private static final CAPACITY_MICRO_THUMB_CMEM_CACHE_IDLE:J = 0x0L

.field private static final CAPACITY_MICRO_THUMB_DISK_CACHE:J = 0x8000000L

.field private static final CAPACITY_MICRO_THUMB_MEM_CACHE:J = 0x1000000L

.field private static final CAPACITY_MICRO_THUMB_MEM_CACHE_IDLE:J = 0x800000L

.field private static final CAPACITY_SMALL_THUMB_CMEM_CACHE:J = 0x0L

.field private static final CAPACITY_SMALL_THUMB_CMEM_CACHE_IDLE:J = 0x0L

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

.field private static volatile m_MicroThumbImageCache:Lcom/oneplus/cache/HybridBitmapLruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/cache/HybridBitmapLruCache",
            "<",
            "Lcom/oneplus/gallery2/media/MediaCacheKey;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile m_SmallThumbImageCache:Lcom/oneplus/cache/HybridBitmapLruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/cache/HybridBitmapLruCache",
            "<",
            "Lcom/oneplus/gallery2/media/MediaCacheKey;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile m_ThumbImageCache:Lcom/oneplus/cache/HybridBitmapLruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/cache/HybridBitmapLruCache",
            "<",
            "Lcom/oneplus/gallery2/media/MediaCacheKey;",
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
    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/oneplus/gallery2/CacheManagerImpl;->m_GlobalActivationHandles:Ljava/util/List;

    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/oneplus/gallery2/CacheManagerImpl;->m_Lock:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Lcom/oneplus/base/BaseApplication;)V
    .locals 2
    .param p1, "application"    # Lcom/oneplus/base/BaseApplication;

    .prologue
    .line 52
    const-string v0, "Cache manager"

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/oneplus/base/component/BasicComponent;-><init>(Ljava/lang/String;Lcom/oneplus/base/component/ComponentOwner;Z)V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/CacheManagerImpl;->m_LocalActivationHandles:Ljava/util/List;

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/gallery2/CacheManagerImpl;Lcom/oneplus/base/Handle;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/CacheManagerImpl;
    .param p1, "x1"    # Lcom/oneplus/base/Handle;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/CacheManagerImpl;->deactivate(Lcom/oneplus/base/Handle;)V

    return-void
.end method

.method private deactivate(Lcom/oneplus/base/Handle;)V
    .locals 6
    .param p1, "handle"    # Lcom/oneplus/base/Handle;

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/oneplus/gallery2/CacheManagerImpl;->verifyAccess()V

    .line 103
    iget-object v0, p0, Lcom/oneplus/gallery2/CacheManagerImpl;->m_LocalActivationHandles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    sget-object v0, Lcom/oneplus/gallery2/CacheManagerImpl;->m_GlobalActivationHandles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 106
    const-string v0, "CacheManager"

    const-string v1, "deactivate() - Local handles : "

    iget-object v2, p0, Lcom/oneplus/gallery2/CacheManagerImpl;->m_LocalActivationHandles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, ", global handles : "

    sget-object v4, Lcom/oneplus/gallery2/CacheManagerImpl;->m_GlobalActivationHandles:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 107
    sget-object v0, Lcom/oneplus/gallery2/CacheManagerImpl;->m_GlobalActivationHandles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    sget-object v1, Lcom/oneplus/gallery2/CacheManagerImpl;->m_Lock:Ljava/lang/Object;

    monitor-enter v1

    .line 113
    :try_start_0
    sget-object v0, Lcom/oneplus/gallery2/CacheManagerImpl;->m_MicroThumbImageCache:Lcom/oneplus/cache/HybridBitmapLruCache;

    if-eqz v0, :cond_2

    .line 115
    sget-object v0, Lcom/oneplus/gallery2/CacheManagerImpl;->m_MicroThumbImageCache:Lcom/oneplus/cache/HybridBitmapLruCache;

    invoke-virtual {v0}, Lcom/oneplus/cache/HybridBitmapLruCache;->flush()V

    .line 116
    sget-object v0, Lcom/oneplus/gallery2/CacheManagerImpl;->m_MicroThumbImageCache:Lcom/oneplus/cache/HybridBitmapLruCache;

    const-wide/32 v2, 0x800000

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/oneplus/cache/HybridBitmapLruCache;->setCapacity(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 118
    :cond_2
    sget-object v0, Lcom/oneplus/gallery2/CacheManagerImpl;->m_SmallThumbImageCache:Lcom/oneplus/cache/HybridBitmapLruCache;

    if-eqz v0, :cond_3

    .line 120
    sget-object v0, Lcom/oneplus/gallery2/CacheManagerImpl;->m_SmallThumbImageCache:Lcom/oneplus/cache/HybridBitmapLruCache;

    invoke-virtual {v0}, Lcom/oneplus/cache/HybridBitmapLruCache;->flush()V

    .line 121
    sget-object v0, Lcom/oneplus/gallery2/CacheManagerImpl;->m_SmallThumbImageCache:Lcom/oneplus/cache/HybridBitmapLruCache;

    const-wide/32 v2, 0x1000000

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/oneplus/cache/HybridBitmapLruCache;->setCapacity(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 123
    :cond_3
    sget-object v0, Lcom/oneplus/gallery2/CacheManagerImpl;->m_ThumbImageCache:Lcom/oneplus/cache/HybridBitmapLruCache;

    if-eqz v0, :cond_4

    .line 124
    sget-object v0, Lcom/oneplus/gallery2/CacheManagerImpl;->m_ThumbImageCache:Lcom/oneplus/cache/HybridBitmapLruCache;

    const-wide/32 v2, 0x800000

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/cache/HybridBitmapLruCache;->setCapacity(Ljava/lang/Long;Ljava/lang/Long;)V

    .line 125
    :cond_4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    sget-object v0, Lcom/oneplus/gallery2/CacheManagerImpl;->PROP_IS_ACTIVE:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery2/CacheManagerImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 125
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
    const-wide/16 v8, 0x0

    const/4 v1, 0x0

    const/4 v7, 0x1

    .line 64
    invoke-virtual {p0}, Lcom/oneplus/gallery2/CacheManagerImpl;->verifyAccess()V

    .line 65
    invoke-virtual {p0, v7}, Lcom/oneplus/gallery2/CacheManagerImpl;->isRunningOrInitializing(Z)Z

    move-result v2

    if-nez v2, :cond_1

    move-object v0, v1

    .line 92
    :cond_0
    :goto_0
    return-object v0

    .line 69
    :cond_1
    new-instance v0, Lcom/oneplus/gallery2/CacheManagerImpl$1;

    const-string v2, "ActivateCacheManager"

    invoke-direct {v0, p0, v2}, Lcom/oneplus/gallery2/CacheManagerImpl$1;-><init>(Lcom/oneplus/gallery2/CacheManagerImpl;Ljava/lang/String;)V

    .line 77
    .local v0, "handle":Lcom/oneplus/base/Handle;
    iget-object v2, p0, Lcom/oneplus/gallery2/CacheManagerImpl;->m_LocalActivationHandles:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    sget-object v2, Lcom/oneplus/gallery2/CacheManagerImpl;->m_GlobalActivationHandles:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    const-string v2, "CacheManager"

    const-string v3, "activate() - Local handles : "

    iget-object v4, p0, Lcom/oneplus/gallery2/CacheManagerImpl;->m_LocalActivationHandles:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, ", global handles : "

    sget-object v6, Lcom/oneplus/gallery2/CacheManagerImpl;->m_GlobalActivationHandles:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2, v3, v4, v5, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 80
    sget-object v2, Lcom/oneplus/gallery2/CacheManagerImpl;->m_GlobalActivationHandles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v7, :cond_0

    .line 82
    sget-object v2, Lcom/oneplus/gallery2/CacheManagerImpl;->m_MicroThumbImageCache:Lcom/oneplus/cache/HybridBitmapLruCache;

    if-eqz v2, :cond_2

    .line 83
    sget-object v2, Lcom/oneplus/gallery2/CacheManagerImpl;->m_MicroThumbImageCache:Lcom/oneplus/cache/HybridBitmapLruCache;

    const-wide/32 v4, 0x1000000

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Lcom/oneplus/cache/HybridBitmapLruCache;->setCapacity(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 84
    :cond_2
    sget-object v2, Lcom/oneplus/gallery2/CacheManagerImpl;->m_SmallThumbImageCache:Lcom/oneplus/cache/HybridBitmapLruCache;

    if-eqz v2, :cond_3

    .line 85
    sget-object v2, Lcom/oneplus/gallery2/CacheManagerImpl;->m_SmallThumbImageCache:Lcom/oneplus/cache/HybridBitmapLruCache;

    const-wide/32 v4, 0x8000000

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Lcom/oneplus/cache/HybridBitmapLruCache;->setCapacity(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 86
    :cond_3
    sget-object v1, Lcom/oneplus/gallery2/CacheManagerImpl;->m_ThumbImageCache:Lcom/oneplus/cache/HybridBitmapLruCache;

    if-eqz v1, :cond_4

    .line 87
    sget-object v1, Lcom/oneplus/gallery2/CacheManagerImpl;->m_ThumbImageCache:Lcom/oneplus/cache/HybridBitmapLruCache;

    const-wide/32 v2, 0x2000000

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/cache/HybridBitmapLruCache;->setCapacity(Ljava/lang/Long;Ljava/lang/Long;)V

    .line 88
    :cond_4
    sget-object v1, Lcom/oneplus/gallery2/CacheManagerImpl;->PROP_IS_ACTIVE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/gallery2/CacheManagerImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getMicroThumbnailImageCache()Lcom/oneplus/cache/HybridBitmapLruCache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/oneplus/cache/HybridBitmapLruCache",
            "<",
            "Lcom/oneplus/gallery2/media/MediaCacheKey;",
            ">;"
        }
    .end annotation

    .prologue
    .line 136
    sget-object v0, Lcom/oneplus/gallery2/CacheManagerImpl;->m_MicroThumbImageCache:Lcom/oneplus/cache/HybridBitmapLruCache;

    return-object v0
.end method

.method public getSmallThumbnailImageCache()Lcom/oneplus/cache/HybridBitmapLruCache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/oneplus/cache/HybridBitmapLruCache",
            "<",
            "Lcom/oneplus/gallery2/media/MediaCacheKey;",
            ">;"
        }
    .end annotation

    .prologue
    .line 147
    sget-object v0, Lcom/oneplus/gallery2/CacheManagerImpl;->m_SmallThumbImageCache:Lcom/oneplus/cache/HybridBitmapLruCache;

    return-object v0
.end method

.method public getThumbnailImageCache()Lcom/oneplus/cache/HybridBitmapLruCache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/oneplus/cache/HybridBitmapLruCache",
            "<",
            "Lcom/oneplus/gallery2/media/MediaCacheKey;",
            ">;"
        }
    .end annotation

    .prologue
    .line 155
    sget-object v0, Lcom/oneplus/gallery2/CacheManagerImpl;->m_ThumbImageCache:Lcom/oneplus/cache/HybridBitmapLruCache;

    return-object v0
.end method

.method protected onDeinitialize()V
    .locals 4

    .prologue
    .line 164
    iget-object v2, p0, Lcom/oneplus/gallery2/CacheManagerImpl;->m_LocalActivationHandles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 166
    iget-object v2, p0, Lcom/oneplus/gallery2/CacheManagerImpl;->m_LocalActivationHandles:Ljava/util/List;

    const/4 v3, 0x0

    new-array v3, v3, [Lcom/oneplus/base/Handle;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/base/Handle;

    .line 167
    .local v0, "handles":[Lcom/oneplus/base/Handle;
    array-length v2, v0

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 168
    aget-object v2, v0, v1

    invoke-direct {p0, v2}, Lcom/oneplus/gallery2/CacheManagerImpl;->deactivate(Lcom/oneplus/base/Handle;)V

    .line 167
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 172
    .end local v0    # "handles":[Lcom/oneplus/base/Handle;
    .end local v1    # "i":I
    :cond_0
    invoke-super {p0}, Lcom/oneplus/base/component/BasicComponent;->onDeinitialize()V

    .line 173
    return-void
.end method

.method protected onInitialize()V
    .locals 13

    .prologue
    .line 181
    invoke-super {p0}, Lcom/oneplus/base/component/BasicComponent;->onInitialize()V

    .line 184
    sget-object v12, Lcom/oneplus/gallery2/CacheManagerImpl;->m_Lock:Ljava/lang/Object;

    monitor-enter v12

    .line 186
    :try_start_0
    sget-object v0, Lcom/oneplus/gallery2/CacheManagerImpl;->m_MicroThumbImageCache:Lcom/oneplus/cache/HybridBitmapLruCache;

    if-nez v0, :cond_0

    .line 187
    new-instance v1, Lcom/oneplus/cache/HybridBitmapLruCache;

    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v2

    const-string v3, "MicroThumbnail2"

    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const-wide/32 v6, 0x1000000

    const-wide/16 v8, 0x0

    const-wide/32 v10, 0x8000000

    invoke-direct/range {v1 .. v11}, Lcom/oneplus/cache/HybridBitmapLruCache;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap$Config;Landroid/graphics/Bitmap$CompressFormat;JJJ)V

    sput-object v1, Lcom/oneplus/gallery2/CacheManagerImpl;->m_MicroThumbImageCache:Lcom/oneplus/cache/HybridBitmapLruCache;

    .line 188
    :cond_0
    sget-object v0, Lcom/oneplus/gallery2/CacheManagerImpl;->m_SmallThumbImageCache:Lcom/oneplus/cache/HybridBitmapLruCache;

    if-nez v0, :cond_1

    .line 189
    new-instance v1, Lcom/oneplus/cache/HybridBitmapLruCache;

    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v2

    const-string v3, "SmallThumbnail2"

    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const-wide/32 v6, 0x8000000

    const-wide/16 v8, 0x0

    const-wide/32 v10, 0x8000000

    invoke-direct/range {v1 .. v11}, Lcom/oneplus/cache/HybridBitmapLruCache;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap$Config;Landroid/graphics/Bitmap$CompressFormat;JJJ)V

    sput-object v1, Lcom/oneplus/gallery2/CacheManagerImpl;->m_SmallThumbImageCache:Lcom/oneplus/cache/HybridBitmapLruCache;

    .line 190
    :cond_1
    sget-object v0, Lcom/oneplus/gallery2/CacheManagerImpl;->m_ThumbImageCache:Lcom/oneplus/cache/HybridBitmapLruCache;

    if-nez v0, :cond_2

    .line 191
    new-instance v1, Lcom/oneplus/cache/HybridBitmapLruCache;

    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v2

    const-string v3, "Thumbnail2"

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const-wide/32 v6, 0x2000000

    const-wide/16 v8, 0x0

    invoke-direct/range {v1 .. v9}, Lcom/oneplus/cache/HybridBitmapLruCache;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap$Config;Landroid/graphics/Bitmap$CompressFormat;JJ)V

    sput-object v1, Lcom/oneplus/gallery2/CacheManagerImpl;->m_ThumbImageCache:Lcom/oneplus/cache/HybridBitmapLruCache;

    .line 192
    :cond_2
    monitor-exit v12

    .line 193
    return-void

    .line 192
    :catchall_0
    move-exception v0

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
