.class public abstract Lcom/oneplus/gallery2/media/ExternalMediaSource;
.super Lcom/oneplus/gallery2/media/BaseMediaSource;
.source "ExternalMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;,
        Lcom/oneplus/gallery2/media/ExternalMediaSource$SyncRunnable;,
        Lcom/oneplus/gallery2/media/ExternalMediaSource$WorkerThread;
    }
.end annotation


# static fields
.field protected static final DEFAULT_MEDIA_DATA_CACHE_CAPACITY:J = 0x4000000L

.field private static final MEDIA_CACHE_STATE_FILE:Ljava/lang/String; = "_STATE"


# instance fields
.field private volatile m_MediaDataCacheCapacity:J

.field private m_MediaDataCacheDirectory:Ljava/io/File;

.field private volatile m_MediaDataCacheHead:Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;

.field private final m_MediaDataCacheLock:Ljava/lang/Object;

.field private volatile m_MediaDataCacheSize:J

.field private final m_MediaDataCacheTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/io/Serializable;",
            "Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;",
            ">;"
        }
    .end annotation
.end field

.field private volatile m_MediaDataCacheTail:Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;

.field private volatile m_MediaDataCacheTouchCount:I

.field private volatile m_WorkerThread:Lcom/oneplus/gallery2/media/ExternalMediaSource$WorkerThread;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lcom/oneplus/base/BaseApplication;)V
    .locals 2

    .prologue
    const-wide/16 v0, -0x1

    .line 376
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/oneplus/gallery2/media/ExternalMediaSource;-><init>(Ljava/lang/String;Lcom/oneplus/base/BaseApplication;J)V

    .line 377
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/oneplus/base/BaseApplication;J)V
    .locals 3

    .prologue
    .line 387
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery2/media/BaseMediaSource;-><init>(Ljava/lang/String;Lcom/oneplus/base/BaseApplication;)V

    const-wide/32 v0, 0x4000000

    .line 46
    iput-wide v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheCapacity:J

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheLock:Ljava/lang/Object;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheTable:Ljava/util/Map;

    const-wide/16 v0, 0x0

    .line 388
    cmp-long v0, p3, v0

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_0

    .line 389
    iput-wide p3, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheCapacity:J

    .line 390
    :cond_0
    return-void

    .line 388
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/oneplus/gallery2/media/ExternalMediaSource;Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;)V
    .locals 0

    .prologue
    .line 965
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/media/ExternalMediaSource;->touchCachedMediaData(Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;)V

    return-void
.end method

.method static synthetic access$1(Lcom/oneplus/gallery2/media/ExternalMediaSource;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/oneplus/gallery2/media/ExternalMediaSource;Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;JJ)V
    .locals 0

    .prologue
    .line 637
    invoke-direct/range {p0 .. p5}, Lcom/oneplus/gallery2/media/ExternalMediaSource;->onCachedMediaDataSizeChanged(Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;JJ)V

    return-void
.end method

.method static synthetic access$3(Lcom/oneplus/gallery2/media/ExternalMediaSource;)V
    .locals 0

    .prologue
    .line 930
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/ExternalMediaSource;->setupMediaDataCache()V

    return-void
.end method

.method private checkMediaDataCacheSize()Z
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 490
    iget-object v5, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheLock:Ljava/lang/Object;

    monitor-enter v5

    .line 492
    :try_start_0
    iget-wide v6, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheSize:J

    iget-wide v8, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheCapacity:J

    cmp-long v0, v6, v8

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    .line 493
    monitor-exit v5

    return v1

    :cond_0
    move v0, v2

    .line 492
    goto :goto_0

    .line 495
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheTail:Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;

    move-object v4, v0

    move v0, v2

    .line 496
    :goto_1
    iget-wide v6, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheSize:J

    iget-wide v8, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheCapacity:J

    cmp-long v3, v6, v8

    if-gtz v3, :cond_3

    move v3, v1

    :goto_2
    if-nez v3, :cond_4

    if-eqz v4, :cond_4

    .line 498
    invoke-static {v4}, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->access$4(Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;)Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;

    move-result-object v3

    .line 499
    invoke-virtual {p0, v4}, Lcom/oneplus/gallery2/media/ExternalMediaSource;->onRemovingCachedMediaData(Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;)Z

    move-result v6

    if-nez v6, :cond_2

    :goto_3
    move-object v4, v3

    .line 505
    goto :goto_1

    .line 501
    :cond_2
    iget-wide v6, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheSize:J

    invoke-virtual {v4}, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->getSize()J

    move-result-wide v8

    sub-long/2addr v6, v8

    iput-wide v6, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheSize:J

    .line 502
    invoke-direct {p0, v4}, Lcom/oneplus/gallery2/media/ExternalMediaSource;->removeCachedMediaDataDirectly(Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;)V

    .line 503
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    move v3, v2

    .line 496
    goto :goto_2

    .line 507
    :cond_4
    if-gtz v0, :cond_5

    .line 509
    :goto_4
    iget-wide v6, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheSize:J

    iget-wide v8, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheCapacity:J

    cmp-long v0, v6, v8

    if-lez v0, :cond_6

    move v0, v1

    :goto_5
    if-nez v0, :cond_7

    move v0, v1

    :goto_6
    monitor-exit v5

    return v0

    .line 508
    :cond_5
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/ExternalMediaSource;->touchMediaDataCache()V

    goto :goto_4

    .line 509
    :catchall_0
    move-exception v0

    .line 490
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_6
    move v0, v2

    .line 509
    goto :goto_5

    :cond_7
    move v0, v2

    goto :goto_6
.end method

.method private generateEmptyFile(Ljava/io/File;)Ljava/io/File;
    .locals 6

    .prologue
    const/16 v0, 0x10

    .line 517
    new-array v1, v0, [C

    .line 521
    :cond_0
    array-length v0, v1

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_2

    .line 523
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x4042000000000000L    # 36.0

    mul-double/2addr v2, v4

    double-to-int v2, v2

    const/16 v3, 0xa

    .line 524
    if-lt v2, v3, :cond_1

    .line 527
    add-int/lit8 v2, v2, -0xa

    add-int/lit8 v2, v2, 0x61

    int-to-char v2, v2

    int-to-char v2, v2

    aput-char v2, v1, v0

    goto :goto_0

    .line 525
    :cond_1
    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    int-to-char v2, v2

    aput-char v2, v1, v0

    goto :goto_0

    .line 529
    :cond_2
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    invoke-direct {v0, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 530
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 531
    return-object v0
.end method

.method private onCachedMediaDataSizeChanged(Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;JJ)V
    .locals 4

    .prologue
    .line 639
    cmp-long v0, p2, p4

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    .line 640
    return-void

    .line 639
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 641
    :cond_1
    iget-object v1, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 643
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheTable:Ljava/util/Map;

    iget-object v2, p1, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->key:Ljava/io/Serializable;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_2

    .line 645
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/ExternalMediaSource;->checkMediaDataCacheSize()Z

    .line 641
    monitor-exit v1

    .line 647
    return-void

    .line 644
    :cond_2
    monitor-exit v1

    return-void

    .line 641
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private removeCachedMediaDataDirectly(Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 891
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheTable:Ljava/util/Map;

    iget-object v1, p1, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->key:Ljava/io/Serializable;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 893
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheHead:Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;

    if-eq v0, p1, :cond_1

    .line 895
    :goto_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheTail:Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;

    if-eq v0, p1, :cond_2

    .line 897
    :goto_1
    invoke-static {p1}, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->access$4(Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;)Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;

    move-result-object v0

    if-nez v0, :cond_3

    .line 899
    :goto_2
    invoke-static {p1}, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->access$5(Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;)Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;

    move-result-object v0

    if-nez v0, :cond_4

    .line 901
    :goto_3
    invoke-static {p1, v2}, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->access$2(Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;)V

    .line 902
    invoke-static {p1, v2}, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->access$3(Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;)V

    .line 903
    invoke-virtual {p1}, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->invalidate()V

    .line 904
    return-void

    .line 892
    :cond_0
    return-void

    .line 894
    :cond_1
    invoke-static {p1}, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->access$5(Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;)Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheHead:Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;

    goto :goto_0

    .line 896
    :cond_2
    invoke-static {p1}, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->access$4(Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;)Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheTail:Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;

    goto :goto_1

    .line 898
    :cond_3
    invoke-static {p1}, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->access$4(Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;)Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;

    move-result-object v0

    invoke-static {p1}, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->access$5(Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;)Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->access$3(Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;)V

    goto :goto_2

    .line 900
    :cond_4
    invoke-static {p1}, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->access$5(Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;)Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;

    move-result-object v0

    invoke-static {p1}, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->access$4(Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;)Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->access$2(Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;)V

    goto :goto_3
.end method

.method private setupMediaDataCache()V
    .locals 4

    .prologue
    .line 932
    iget-object v1, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 935
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setupMediaDataCache()"

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 936
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/media/ExternalMediaSource;->onSetupMediaDataCacheDirectory(Lcom/oneplus/base/BaseApplication;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheDirectory:Ljava/io/File;

    .line 937
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheDirectory:Ljava/io/File;

    if-eqz v0, :cond_1

    .line 942
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 951
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 959
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheDirectory:Ljava/io/File;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/media/ExternalMediaSource;->onSetupMediaDataCache(Ljava/io/File;)V

    .line 932
    monitor-exit v1

    .line 961
    return-void

    .line 939
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setupMediaDataCache() - No directory"

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 940
    monitor-exit v1

    return-void

    .line 944
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    .line 946
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setupMediaDataCache() - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheDirectory:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is not a directory"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 947
    iput-object v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheDirectory:Ljava/io/File;

    .line 948
    monitor-exit v1

    return-void

    .line 953
    :cond_3
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setupMediaDataCache() - Fail to create "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheDirectory:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 954
    iput-object v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheDirectory:Ljava/io/File;

    .line 955
    monitor-exit v1

    return-void

    .line 932
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private touchCachedMediaData(Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;)V
    .locals 3

    .prologue
    .line 967
    iget-object v1, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 969
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheHead:Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;

    if-eq v0, p1, :cond_0

    .line 971
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheHead:Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;

    if-nez v0, :cond_1

    .line 973
    :goto_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheTail:Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;

    if-eq v0, p1, :cond_2

    .line 975
    :goto_1
    invoke-static {p1}, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->access$4(Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;)Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;

    move-result-object v0

    if-nez v0, :cond_3

    .line 977
    :goto_2
    invoke-static {p1}, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->access$5(Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;)Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;

    move-result-object v0

    if-nez v0, :cond_4

    .line 979
    :goto_3
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheHead:Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;

    invoke-static {p1, v0}, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->access$3(Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;)V

    const/4 v0, 0x0

    .line 980
    invoke-static {p1, v0}, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->access$2(Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;)V

    .line 981
    iput-object p1, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheHead:Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;

    .line 982
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/ExternalMediaSource;->touchMediaDataCache()V

    .line 967
    monitor-exit v1

    .line 984
    return-void

    .line 970
    :cond_0
    monitor-exit v1

    return-void

    .line 972
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheHead:Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;

    invoke-static {v0, p1}, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->access$2(Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;)V

    goto :goto_0

    .line 967
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 974
    :cond_2
    :try_start_1
    invoke-static {p1}, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->access$4(Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;)Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheTail:Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;

    goto :goto_1

    .line 976
    :cond_3
    invoke-static {p1}, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->access$4(Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;)Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;

    move-result-object v0

    invoke-static {p1}, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->access$5(Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;)Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->access$3(Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;)V

    goto :goto_2

    .line 978
    :cond_4
    invoke-static {p1}, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->access$5(Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;)Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;

    move-result-object v0

    invoke-static {p1}, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->access$4(Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;)Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->access$2(Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3
.end method

.method private touchMediaDataCache()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 990
    iget-object v2, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheLock:Ljava/lang/Object;

    monitor-enter v2

    .line 993
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheDirectory:Ljava/io/File;

    if-eqz v0, :cond_1

    .line 997
    iget v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheTouchCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheTouchCount:I

    .line 998
    iget v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheTouchCount:I

    const/16 v3, 0x20

    if-lt v0, v3, :cond_2

    const/4 v0, 0x0

    .line 1000
    iput v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheTouchCount:I

    .line 1003
    new-instance v3, Ljava/io/File;

    iget-object v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheDirectory:Ljava/io/File;

    const-string/jumbo v4, "_STATE"

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1004
    invoke-virtual {v3}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result v0

    if-nez v0, :cond_3

    .line 1011
    :cond_0
    :try_start_1
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    new-instance v5, Ljava/io/ObjectOutputStream;

    invoke-direct {v5, v4}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1013
    :try_start_3
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheTable:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1014
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheHead:Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;

    .line 1015
    :goto_0
    if-eqz v0, :cond_4

    .line 1017
    iget-object v6, v0, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->key:Ljava/io/Serializable;

    invoke-virtual {v5, v6}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1018
    invoke-static {v0}, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->access$6(Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/oneplus/io/Path;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1019
    invoke-static {v0}, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->access$5(Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;)Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-result-object v0

    goto :goto_0

    .line 994
    :cond_1
    :try_start_4
    monitor-exit v2

    return-void

    .line 999
    :cond_2
    monitor-exit v2

    return-void

    .line 1004
    :cond_3
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1006
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "touchMediaDataCache() - Fail to delete old state file "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1007
    monitor-exit v2

    return-void

    .line 1021
    :cond_4
    if-nez v5, :cond_5

    :goto_1
    if-nez v4, :cond_7

    .line 990
    :goto_2
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1027
    return-void

    .line 1021
    :cond_5
    :try_start_5
    invoke-virtual {v5}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v1, :cond_8

    if-ne v1, v0, :cond_9

    :goto_4
    if-nez v4, :cond_a

    :goto_5
    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v0

    :goto_6
    if-eqz v1, :cond_b

    if-ne v1, v0, :cond_c

    :goto_7
    :try_start_7
    throw v1
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catch_0
    move-exception v0

    .line 1024
    :try_start_8
    iget-object v1, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "touchMediaDataCache() - Fail to save state to "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 990
    :catchall_2
    move-exception v0

    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v0

    .line 1021
    :catchall_3
    move-exception v0

    if-nez v5, :cond_6

    :goto_8
    :try_start_9
    throw v0

    :catchall_4
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_3

    :cond_6
    invoke-virtual {v5}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto :goto_8

    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_6

    :cond_7
    :try_start_a
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    goto :goto_2

    :cond_8
    move-object v1, v0

    goto :goto_4

    :cond_9
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_a
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_5

    :cond_b
    move-object v1, v0

    goto :goto_7

    :cond_c
    :try_start_b
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    goto :goto_7
.end method


# virtual methods
.method protected addFileToMediaDataCache(Ljava/io/Serializable;Ljava/io/File;Z)Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 404
    const/4 v0, 0x1

    .line 405
    iget-object v3, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheLock:Ljava/lang/Object;

    monitor-enter v3

    .line 408
    :try_start_0
    iget-object v4, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheDirectory:Ljava/io/File;

    if-eqz v4, :cond_2

    .line 415
    invoke-virtual {p0, p1}, Lcom/oneplus/gallery2/media/ExternalMediaSource;->removeCachedMediaData(Ljava/io/Serializable;)Z

    .line 416
    if-eqz p2, :cond_3

    .line 418
    invoke-virtual {p2}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_4

    .line 428
    :try_start_1
    iget-object v4, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheDirectory:Ljava/io/File;

    invoke-direct {p0, v4}, Lcom/oneplus/gallery2/media/ExternalMediaSource;->generateEmptyFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v4

    .line 429
    if-nez p3, :cond_5

    .line 437
    :cond_0
    :goto_0
    new-instance v1, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;

    invoke-direct {v1, p0, p1, v4}, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;-><init>(Lcom/oneplus/gallery2/media/ExternalMediaSource;Ljava/io/Serializable;Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 444
    :try_start_2
    iget-object v4, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheHead:Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;

    if-nez v4, :cond_7

    .line 446
    :goto_1
    iget-object v4, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheTail:Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;

    if-eqz v4, :cond_8

    .line 448
    :goto_2
    iget-object v4, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheHead:Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;

    invoke-static {v1, v4}, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->access$3(Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;)V

    .line 449
    iput-object v1, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheHead:Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;

    .line 450
    iget-object v4, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheTable:Ljava/util/Map;

    invoke-interface {v4, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    iget-wide v4, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheSize:J

    invoke-virtual {v1}, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->getSize()J

    move-result-wide v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheSize:J

    .line 452
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/ExternalMediaSource;->checkMediaDataCacheSize()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 458
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/ExternalMediaSource;->touchMediaDataCache()V

    .line 405
    monitor-exit v3

    .line 462
    if-nez v0, :cond_a

    .line 483
    :cond_1
    :goto_3
    return-object v1

    .line 410
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "addFileToMediaDataCache() - No cache"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    monitor-exit v3

    return-object v2

    .line 417
    :cond_3
    monitor-exit v3

    return-object v2

    .line 420
    :cond_4
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "addFileToMediaDataCache() - File "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, " does not exist"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v2

    .line 431
    :cond_5
    :try_start_3
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 432
    invoke-virtual {p2, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 434
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 435
    :try_start_4
    monitor-exit v3

    return-object v2

    :cond_6
    move v0, v1

    .line 433
    goto :goto_0

    .line 438
    :catch_0
    move-exception v0

    .line 441
    iget-object v1, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "addFileToMediaDataCache() - Fail to create cached file"

    invoke-static {v1, v4, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 442
    monitor-exit v3

    return-object v2

    .line 445
    :cond_7
    iget-object v4, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheHead:Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;

    invoke-static {v4, v1}, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->access$2(Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;)V

    goto :goto_1

    .line 405
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 447
    :cond_8
    :try_start_5
    iput-object v1, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheTail:Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;

    goto :goto_2

    .line 454
    :cond_9
    iget-wide v4, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheSize:J

    invoke-virtual {v1}, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->getSize()J

    move-result-wide v6

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheSize:J

    .line 455
    invoke-direct {p0, v1}, Lcom/oneplus/gallery2/media/ExternalMediaSource;->removeCachedMediaDataDirectly(Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;)V

    .line 456
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    return-object v2

    .line 464
    :cond_a
    :try_start_6
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    invoke-virtual {v1}, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->openOutputStream()Ljava/io/OutputStream;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-result-object v4

    const/16 v0, 0x1000

    .line 466
    :try_start_8
    new-array v5, v0, [B

    .line 467
    invoke-virtual {v3, v5}, Ljava/io/FileInputStream;->read([B)I

    move-result v0

    .line 468
    :goto_4
    if-lez v0, :cond_b

    const/4 v6, 0x0

    .line 470
    invoke-virtual {v4, v5, v6, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 471
    invoke-virtual {v3, v5}, Ljava/io/FileInputStream;->read([B)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    move-result v0

    goto :goto_4

    .line 473
    :cond_b
    if-nez v4, :cond_c

    :goto_5
    if-eqz v3, :cond_1

    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/16 :goto_3

    :catchall_1
    move-exception v0

    move-object v1, v2

    :goto_6
    if-eqz v1, :cond_11

    if-ne v1, v0, :cond_12

    :goto_7
    :try_start_a
    throw v1
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1

    :catch_1
    move-exception v0

    .line 476
    iget-object v1, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "addFileToMediaDataCache() - Fail to copy data to cache"

    invoke-static {v1, v3, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 477
    invoke-virtual {p0, p1}, Lcom/oneplus/gallery2/media/ExternalMediaSource;->removeCachedMediaData(Ljava/io/Serializable;)Z

    .line 478
    return-object v2

    .line 473
    :cond_c
    :try_start_b
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v1, v2

    :goto_8
    if-eqz v1, :cond_e

    if-ne v1, v0, :cond_f

    :goto_9
    if-nez v3, :cond_10

    :goto_a
    :try_start_c
    throw v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :catchall_3
    move-exception v0

    goto :goto_6

    :catchall_4
    move-exception v0

    if-nez v4, :cond_d

    :goto_b
    :try_start_d
    throw v0

    :catchall_5
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_8

    :cond_d
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    goto :goto_b

    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_6

    :cond_e
    move-object v1, v0

    goto :goto_9

    :cond_f
    :try_start_e
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_9

    :cond_10
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    goto :goto_a

    :cond_11
    move-object v1, v0

    goto :goto_7

    :cond_12
    :try_start_f
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_1

    goto :goto_7
.end method

.method protected getCachedMediaData(Ljava/io/Serializable;)Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;
    .locals 2

    .prologue
    .line 543
    iget-object v1, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 545
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheTable:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;

    .line 546
    if-nez v0, :cond_0

    .line 548
    :goto_0
    monitor-exit v1

    return-object v0

    .line 547
    :cond_0
    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/media/ExternalMediaSource;->touchCachedMediaData(Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;)V

    goto :goto_0

    .line 548
    :catchall_0
    move-exception v0

    .line 543
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected final getWorkerThread()Lcom/oneplus/gallery2/media/ExternalMediaSource$WorkerThread;
    .locals 1

    .prologue
    .line 559
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_WorkerThread:Lcom/oneplus/gallery2/media/ExternalMediaSource$WorkerThread;

    return-object v0
.end method

.method protected handleWorkerThreadMessage(Landroid/os/Message;)Z
    .locals 1

    .prologue
    .line 570
    const/4 v0, 0x0

    return v0
.end method

.method protected final isWorkerThread()Z
    .locals 2

    .prologue
    .line 580
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_WorkerThread:Lcom/oneplus/gallery2/media/ExternalMediaSource$WorkerThread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected moveFileFromMediaDataCache(Ljava/io/Serializable;)Ljava/io/File;
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 591
    iget-object v1, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 594
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheTable:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 595
    if-eqz v0, :cond_0

    :try_start_1
    const-string/jumbo v2, "__tmp_external_media__"

    const/4 v3, 0x0

    .line 602
    invoke-static {v2, v3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 611
    :try_start_2
    invoke-virtual {v0}, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->getSize()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v4

    .line 614
    :try_start_3
    invoke-virtual {v0, v2}, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->moveFileTo(Ljava/io/File;)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    .line 627
    :try_start_4
    iget-wide v6, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheSize:J

    sub-long v4, v6, v4

    iput-wide v4, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheSize:J

    .line 628
    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/media/ExternalMediaSource;->removeCachedMediaDataDirectly(Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;)V

    .line 631
    monitor-exit v1

    return-object v2

    .line 596
    :cond_0
    monitor-exit v1

    return-object v6

    .line 603
    :catch_0
    move-exception v0

    .line 606
    iget-object v2, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "moveFileFromMediaDataCache() - Fail to create temporary file"

    invoke-static {v2, v3, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 607
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-object v6

    .line 616
    :cond_1
    :try_start_5
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "moveFileFromMediaDataCache() - Fail to move file"

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 617
    :try_start_6
    monitor-exit v1

    return-object v6

    :catch_1
    move-exception v0

    .line 622
    iget-object v2, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "moveFileFromMediaDataCache() - Fail to move file"

    invoke-static {v2, v3, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 623
    monitor-exit v1

    return-object v6

    .line 631
    :catchall_0
    move-exception v0

    .line 591
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v0
.end method

.method protected onCreateWorkerThread()Lcom/oneplus/gallery2/media/ExternalMediaSource$WorkerThread;
    .locals 3

    .prologue
    .line 656
    new-instance v0, Lcom/oneplus/gallery2/media/ExternalMediaSource$WorkerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Worker thread ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oneplus/gallery2/media/ExternalMediaSource$WorkerThread;-><init>(Lcom/oneplus/gallery2/media/ExternalMediaSource;Ljava/lang/String;)V

    return-object v0
.end method

.method protected onDeinitialize()V
    .locals 1

    .prologue
    .line 665
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_WorkerThread:Lcom/oneplus/gallery2/media/ExternalMediaSource$WorkerThread;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/media/ExternalMediaSource;->onWorkerThreadStopping(Lcom/oneplus/gallery2/media/ExternalMediaSource$WorkerThread;)V

    .line 666
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_WorkerThread:Lcom/oneplus/gallery2/media/ExternalMediaSource$WorkerThread;

    invoke-virtual {v0}, Lcom/oneplus/gallery2/media/ExternalMediaSource$WorkerThread;->release()V

    .line 669
    invoke-super {p0}, Lcom/oneplus/gallery2/media/BaseMediaSource;->onDeinitialize()V

    .line 670
    return-void
.end method

.method protected onInitialize()V
    .locals 1

    .prologue
    .line 678
    invoke-super {p0}, Lcom/oneplus/gallery2/media/BaseMediaSource;->onInitialize()V

    .line 681
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/ExternalMediaSource;->onCreateWorkerThread()Lcom/oneplus/gallery2/media/ExternalMediaSource$WorkerThread;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_WorkerThread:Lcom/oneplus/gallery2/media/ExternalMediaSource$WorkerThread;

    .line 682
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_WorkerThread:Lcom/oneplus/gallery2/media/ExternalMediaSource$WorkerThread;

    invoke-virtual {v0}, Lcom/oneplus/gallery2/media/ExternalMediaSource$WorkerThread;->startSync()V

    .line 683
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_WorkerThread:Lcom/oneplus/gallery2/media/ExternalMediaSource$WorkerThread;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/media/ExternalMediaSource;->onWorkerThreadStarted(Lcom/oneplus/gallery2/media/ExternalMediaSource$WorkerThread;)V

    .line 684
    return-void
.end method

.method protected onRemovingCachedMediaData(Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 694
    invoke-virtual {p1}, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->isAccessing()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected onSetupMediaDataCache(Ljava/io/File;)V
    .locals 13

    .prologue
    const/4 v1, 0x0

    .line 705
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheDirectory:Ljava/io/File;

    if-eqz v0, :cond_4

    .line 709
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 712
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 713
    array-length v0, v2

    :cond_0
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    .line 715
    aget-object v4, v2, v0

    .line 716
    invoke-static {v4}, Lcom/oneplus/io/Path;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "_STATE"

    .line 717
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 718
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 720
    :catch_0
    move-exception v0

    .line 723
    iget-object v2, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "onSetupMediaDataCache() - Fail to list files in "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheDirectory:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 727
    :cond_1
    new-instance v4, Ljava/io/File;

    iget-object v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheDirectory:Ljava/io/File;

    const-string/jumbo v2, "_STATE"

    invoke-direct {v4, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 728
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_5

    .line 765
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onSetupMediaDataCache() - No state file"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    :cond_2
    :goto_1
    invoke-virtual {v3}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 781
    :cond_3
    return-void

    .line 706
    :cond_4
    return-void

    .line 730
    :cond_5
    :try_start_1
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    new-instance v6, Ljava/io/ObjectInputStream;

    invoke-direct {v6, v5}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 732
    :try_start_3
    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    move v2, v0

    :goto_2
    if-lez v2, :cond_a

    .line 734
    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Serializable;

    .line 735
    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;

    move-result-object v7

    .line 736
    iget-object v8, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheTable:Ljava/util/Map;

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_7

    .line 732
    :cond_6
    :goto_3
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_2

    .line 736
    :cond_7
    invoke-virtual {v3, v7}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 738
    new-instance v8, Ljava/io/File;

    iget-object v9, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheDirectory:Ljava/io/File;

    invoke-direct {v8, v9, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 739
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 741
    new-instance v7, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;

    invoke-direct {v7, p0, v0, v8}, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;-><init>(Lcom/oneplus/gallery2/media/ExternalMediaSource;Ljava/io/Serializable;Ljava/io/File;)V

    .line 742
    iget-object v8, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheHead:Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;

    if-nez v8, :cond_8

    .line 744
    :goto_4
    iget-object v8, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheTail:Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;

    if-eqz v8, :cond_9

    .line 746
    :goto_5
    iget-object v8, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheHead:Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;

    invoke-static {v7, v8}, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->access$3(Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;)V

    .line 747
    iput-object v7, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheHead:Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;

    .line 748
    iget-wide v8, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheSize:J

    invoke-virtual {v7}, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->getSize()J

    move-result-wide v10

    add-long/2addr v8, v10

    iput-wide v8, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheSize:J

    .line 749
    iget-object v8, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheTable:Ljava/util/Map;

    invoke-interface {v8, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 754
    :catchall_0
    move-exception v0

    if-nez v6, :cond_c

    :goto_6
    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v1

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    :goto_7
    if-eqz v1, :cond_d

    if-ne v1, v0, :cond_e

    :goto_8
    if-nez v5, :cond_f

    :goto_9
    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v0

    :goto_a
    if-eqz v1, :cond_10

    if-ne v1, v0, :cond_11

    :goto_b
    :try_start_6
    throw v1
    :try_end_6
    .catch Ljava/io/EOFException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2

    :catch_1
    move-exception v0

    .line 757
    iget-object v1, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "onSetupMediaDataCache() - Inconsistent data in state file "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 743
    :cond_8
    :try_start_7
    iget-object v8, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheHead:Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;

    invoke-static {v8, v7}, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->access$2(Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;)V

    goto :goto_4

    .line 754
    :catchall_3
    move-exception v0

    goto :goto_7

    .line 745
    :cond_9
    iput-object v7, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheTail:Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_5

    .line 757
    :catch_2
    move-exception v0

    .line 761
    iget-object v1, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "onSetupMediaDataCache() - Fail to read state file "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 753
    :cond_a
    :try_start_8
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onSetupMediaDataCache() - "

    iget-object v7, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheTable:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string/jumbo v8, " valid data in cache"

    invoke-static {v0, v2, v7, v8}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 754
    if-nez v6, :cond_b

    :goto_c
    if-eqz v5, :cond_2

    :try_start_9
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto/16 :goto_1

    :cond_b
    :try_start_a
    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_c

    :cond_c
    :try_start_b
    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_6

    move-exception v1

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    goto :goto_a

    :cond_d
    move-object v1, v0

    goto :goto_8

    :cond_e
    :try_start_c
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_8

    :cond_f
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    goto :goto_9

    :cond_10
    move-object v1, v0

    goto :goto_b

    :cond_11
    :try_start_d
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_d
    .catch Ljava/io/EOFException; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_2

    goto :goto_b

    .line 770
    :cond_12
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onSetupMediaDataCache() - Delete "

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v4, " extra files"

    invoke-static {v0, v1, v2, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 771
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 775
    :try_start_e
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheDirectory:Ljava/io/File;

    invoke-direct {v2, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_3

    goto :goto_d

    .line 776
    :catch_3
    move-exception v0

    goto :goto_d
.end method

.method protected abstract onSetupMediaDataCacheDirectory(Lcom/oneplus/base/BaseApplication;)Ljava/io/File;
.end method

.method protected onWorkerThreadStarted(Lcom/oneplus/gallery2/media/ExternalMediaSource$WorkerThread;)V
    .locals 2

    .prologue
    .line 798
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_WorkerThread:Lcom/oneplus/gallery2/media/ExternalMediaSource$WorkerThread;

    new-instance v1, Lcom/oneplus/gallery2/media/ExternalMediaSource$1;

    invoke-direct {v1, p0}, Lcom/oneplus/gallery2/media/ExternalMediaSource$1;-><init>(Lcom/oneplus/gallery2/media/ExternalMediaSource;)V

    invoke-static {v0, v1}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    .line 806
    return-void
.end method

.method protected onWorkerThreadStopping(Lcom/oneplus/gallery2/media/ExternalMediaSource$WorkerThread;)V
    .locals 0

    .prologue
    .line 814
    return-void
.end method

.method protected openCachedMediaDataInputStream(Ljava/io/Serializable;)Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 824
    iget-object v1, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 826
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/oneplus/gallery2/media/ExternalMediaSource;->getCachedMediaData(Ljava/io/Serializable;)Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;

    move-result-object v0

    .line 827
    if-nez v0, :cond_0

    .line 829
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v2, "Cached data does not exist"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    .line 824
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 828
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->openInputStream()Ljava/io/InputStream;

    move-result-object v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method protected removeCachedMediaData(Lcom/oneplus/cache/Cache$RemovingPredication;)I
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/cache/Cache$RemovingPredication",
            "<",
            "Ljava/io/Serializable;",
            ">;)I"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 864
    iget-object v3, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheLock:Ljava/lang/Object;

    monitor-enter v3

    .line 866
    :try_start_0
    new-instance v4, Lcom/oneplus/base/SimpleRef;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/oneplus/base/SimpleRef;-><init>(Ljava/lang/Object;)V

    .line 867
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheHead:Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;

    move-object v10, v0

    move v0, v1

    move-object v1, v10

    .line 868
    :goto_0
    if-eqz v1, :cond_2

    .line 870
    invoke-static {v1}, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->access$5(Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;)Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;

    move-result-object v2

    .line 871
    iget-object v5, v1, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->key:Ljava/io/Serializable;

    invoke-interface {p1, v5, v4}, Lcom/oneplus/cache/Cache$RemovingPredication;->canRemove(Ljava/lang/Object;Lcom/oneplus/base/Ref;)Z

    move-result v5

    if-nez v5, :cond_0

    move v1, v0

    .line 877
    :goto_1
    invoke-interface {v4}, Lcom/oneplus/base/Ref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    move-object v1, v2

    .line 879
    goto :goto_0

    .line 873
    :cond_0
    iget-wide v6, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheSize:J

    invoke-virtual {v1}, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->getSize()J

    move-result-wide v8

    sub-long/2addr v6, v8

    iput-wide v6, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheSize:J

    .line 874
    invoke-direct {p0, v1}, Lcom/oneplus/gallery2/media/ExternalMediaSource;->removeCachedMediaDataDirectly(Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;)V

    .line 875
    add-int/lit8 v1, v0, 0x1

    goto :goto_1

    :cond_1
    move v0, v1

    .line 881
    :cond_2
    if-gtz v0, :cond_3

    .line 864
    :goto_2
    monitor-exit v3

    .line 884
    return v0

    .line 882
    :cond_3
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/ExternalMediaSource;->touchMediaDataCache()V

    goto :goto_2

    .line 864
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected removeCachedMediaData(Ljava/io/Serializable;)Z
    .locals 6

    .prologue
    .line 841
    iget-object v1, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 843
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheTable:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;

    .line 844
    if-nez v0, :cond_0

    .line 841
    monitor-exit v1

    .line 852
    const/4 v0, 0x0

    return v0

    .line 846
    :cond_0
    iget-wide v2, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheSize:J

    invoke-virtual {v0}, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->getSize()J

    move-result-wide v4

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheSize:J

    .line 847
    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/media/ExternalMediaSource;->removeCachedMediaDataDirectly(Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;)V

    .line 848
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/ExternalMediaSource;->touchMediaDataCache()V

    .line 849
    monitor-exit v1

    const/4 v0, 0x1

    return v0

    .line 841
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected runInWorkerThreadAndWait(Ljava/lang/Runnable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 913
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/ExternalMediaSource;->isWorkerThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 915
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_WorkerThread:Lcom/oneplus/gallery2/media/ExternalMediaSource$WorkerThread;

    if-nez v0, :cond_1

    .line 925
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "No worker thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 914
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 926
    :goto_0
    return-void

    .line 917
    :cond_1
    new-instance v0, Lcom/oneplus/gallery2/media/ExternalMediaSource$SyncRunnable;

    invoke-direct {v0, p1}, Lcom/oneplus/gallery2/media/ExternalMediaSource$SyncRunnable;-><init>(Ljava/lang/Runnable;)V

    .line 918
    iget-object v1, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_WorkerThread:Lcom/oneplus/gallery2/media/ExternalMediaSource$WorkerThread;

    invoke-virtual {v1}, Lcom/oneplus/gallery2/media/ExternalMediaSource$WorkerThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 919
    if-nez v1, :cond_3

    .line 922
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Fail to post to worker thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 919
    :cond_3
    invoke-virtual {v1, v0}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 920
    invoke-virtual {v0}, Lcom/oneplus/gallery2/media/ExternalMediaSource$SyncRunnable;->waitForCompletion()V

    goto :goto_0
.end method
