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
    .line 376
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

    .line 377
    return-void
.end method

.method static synthetic access$0(Lcom/oneplus/gallery2/media/ExternalMediaSource;Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;)V
    .locals 0

    .prologue
    .line 952
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
    .line 624
    invoke-direct/range {p0 .. p5}, Lcom/oneplus/gallery2/media/ExternalMediaSource;->onCachedMediaDataSizeChanged(Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;JJ)V

    return-void
.end method

.method static synthetic access$3(Lcom/oneplus/gallery2/media/ExternalMediaSource;)V
    .locals 0

    .prologue
    .line 917
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/ExternalMediaSource;->setupMediaDataCache()V

    return-void
.end method

.method private checkMediaDataCacheSize()Z
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 477
    iget-object v5, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheLock:Ljava/lang/Object;

    monitor-enter v5

    .line 479
    :try_start_0
    iget-wide v6, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheSize:J

    iget-wide v8, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheCapacity:J

    cmp-long v0, v6, v8

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    .line 480
    monitor-exit v5

    return v1

    :cond_0
    move v0, v2

    .line 479
    goto :goto_0

    .line 482
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheTail:Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;

    move-object v4, v0

    move v0, v2

    .line 483
    :goto_1
    iget-wide v6, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheSize:J

    iget-wide v8, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheCapacity:J

    cmp-long v3, v6, v8

    if-gtz v3, :cond_3

    move v3, v1

    :goto_2
    if-nez v3, :cond_4

    if-eqz v4, :cond_4

    .line 485
    invoke-static {v4}, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->access$4(Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;)Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;

    move-result-object v3

    .line 486
    invoke-virtual {p0, v4}, Lcom/oneplus/gallery2/media/ExternalMediaSource;->onRemovingCachedMediaData(Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;)Z

    move-result v6

    if-nez v6, :cond_2

    :goto_3
    move-object v4, v3

    .line 492
    goto :goto_1

    .line 488
    :cond_2
    iget-wide v6, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheSize:J

    invoke-virtual {v4}, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->getSize()J

    move-result-wide v8

    sub-long/2addr v6, v8

    iput-wide v6, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheSize:J

    .line 489
    invoke-direct {p0, v4}, Lcom/oneplus/gallery2/media/ExternalMediaSource;->removeCachedMediaDataDirectly(Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;)V

    .line 490
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    move v3, v2

    .line 483
    goto :goto_2

    .line 494
    :cond_4
    if-gtz v0, :cond_5

    .line 496
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

    .line 495
    :cond_5
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/ExternalMediaSource;->touchMediaDataCache()V

    goto :goto_4

    .line 496
    :catchall_0
    move-exception v0

    .line 477
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_6
    move v0, v2

    .line 496
    goto :goto_5

    :cond_7
    move v0, v2

    goto :goto_6
.end method

.method private generateEmptyFile(Ljava/io/File;)Ljava/io/File;
    .locals 6

    .prologue
    const/16 v0, 0x10

    .line 504
    new-array v1, v0, [C

    .line 508
    :cond_0
    array-length v0, v1

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_2

    .line 510
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x4042000000000000L    # 36.0

    mul-double/2addr v2, v4

    double-to-int v2, v2

    const/16 v3, 0xa

    .line 511
    if-lt v2, v3, :cond_1

    .line 514
    add-int/lit8 v2, v2, -0xa

    add-int/lit8 v2, v2, 0x61

    int-to-char v2, v2

    int-to-char v2, v2

    aput-char v2, v1, v0

    goto :goto_0

    .line 512
    :cond_1
    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    int-to-char v2, v2

    aput-char v2, v1, v0

    goto :goto_0

    .line 516
    :cond_2
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    invoke-direct {v0, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 517
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 518
    return-object v0
.end method

.method private onCachedMediaDataSizeChanged(Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;JJ)V
    .locals 4

    .prologue
    .line 626
    cmp-long v0, p2, p4

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    .line 627
    return-void

    .line 626
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 628
    :cond_1
    iget-object v1, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 630
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheTable:Ljava/util/Map;

    iget-object v2, p1, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->key:Ljava/io/Serializable;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_2

    .line 632
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/ExternalMediaSource;->checkMediaDataCacheSize()Z

    .line 628
    monitor-exit v1

    .line 634
    return-void

    .line 631
    :cond_2
    monitor-exit v1

    return-void

    .line 628
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

    .line 878
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheTable:Ljava/util/Map;

    iget-object v1, p1, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->key:Ljava/io/Serializable;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 880
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheHead:Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;

    if-eq v0, p1, :cond_1

    .line 882
    :goto_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheTail:Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;

    if-eq v0, p1, :cond_2

    .line 884
    :goto_1
    invoke-static {p1}, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->access$4(Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;)Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;

    move-result-object v0

    if-nez v0, :cond_3

    .line 886
    :goto_2
    invoke-static {p1}, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->access$5(Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;)Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;

    move-result-object v0

    if-nez v0, :cond_4

    .line 888
    :goto_3
    invoke-static {p1, v2}, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->access$2(Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;)V

    .line 889
    invoke-static {p1, v2}, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->access$3(Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;)V

    .line 890
    invoke-virtual {p1}, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->invalidate()V

    .line 891
    return-void

    .line 879
    :cond_0
    return-void

    .line 881
    :cond_1
    invoke-static {p1}, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->access$5(Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;)Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheHead:Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;

    goto :goto_0

    .line 883
    :cond_2
    invoke-static {p1}, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->access$4(Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;)Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheTail:Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;

    goto :goto_1

    .line 885
    :cond_3
    invoke-static {p1}, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->access$4(Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;)Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;

    move-result-object v0

    invoke-static {p1}, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->access$5(Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;)Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->access$3(Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;)V

    goto :goto_2

    .line 887
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
    .line 919
    iget-object v1, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 922
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setupMediaDataCache()"

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 923
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/media/ExternalMediaSource;->onSetupMediaDataCacheDirectory(Lcom/oneplus/base/BaseApplication;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheDirectory:Ljava/io/File;

    .line 924
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheDirectory:Ljava/io/File;

    if-eqz v0, :cond_1

    .line 929
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 938
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 946
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheDirectory:Ljava/io/File;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/media/ExternalMediaSource;->onSetupMediaDataCache(Ljava/io/File;)V

    .line 919
    monitor-exit v1

    .line 948
    return-void

    .line 926
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setupMediaDataCache() - No directory"

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 927
    monitor-exit v1

    return-void

    .line 931
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    .line 933
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

    .line 934
    iput-object v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheDirectory:Ljava/io/File;

    .line 935
    monitor-exit v1

    return-void

    .line 940
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

    .line 941
    iput-object v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheDirectory:Ljava/io/File;

    .line 942
    monitor-exit v1

    return-void

    .line 919
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
    .line 954
    iget-object v1, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 956
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheHead:Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;

    if-eq v0, p1, :cond_0

    .line 958
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheHead:Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;

    if-nez v0, :cond_1

    .line 960
    :goto_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheTail:Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;

    if-eq v0, p1, :cond_2

    .line 962
    :goto_1
    invoke-static {p1}, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->access$4(Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;)Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;

    move-result-object v0

    if-nez v0, :cond_3

    .line 964
    :goto_2
    invoke-static {p1}, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->access$5(Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;)Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;

    move-result-object v0

    if-nez v0, :cond_4

    .line 966
    :goto_3
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheHead:Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;

    invoke-static {p1, v0}, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->access$3(Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;)V

    const/4 v0, 0x0

    .line 967
    invoke-static {p1, v0}, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->access$2(Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;)V

    .line 968
    iput-object p1, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheHead:Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;

    .line 969
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/ExternalMediaSource;->touchMediaDataCache()V

    .line 954
    monitor-exit v1

    .line 971
    return-void

    .line 957
    :cond_0
    monitor-exit v1

    return-void

    .line 959
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheHead:Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;

    invoke-static {v0, p1}, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->access$2(Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;)V

    goto :goto_0

    .line 954
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 961
    :cond_2
    :try_start_1
    invoke-static {p1}, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->access$4(Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;)Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheTail:Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;

    goto :goto_1

    .line 963
    :cond_3
    invoke-static {p1}, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->access$4(Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;)Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;

    move-result-object v0

    invoke-static {p1}, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->access$5(Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;)Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->access$3(Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;)V

    goto :goto_2

    .line 965
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

    .line 977
    iget-object v2, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheLock:Ljava/lang/Object;

    monitor-enter v2

    .line 980
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheDirectory:Ljava/io/File;

    if-eqz v0, :cond_1

    .line 984
    iget v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheTouchCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheTouchCount:I

    .line 985
    iget v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheTouchCount:I

    const/16 v3, 0x20

    if-lt v0, v3, :cond_2

    const/4 v0, 0x0

    .line 987
    iput v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheTouchCount:I

    .line 990
    new-instance v3, Ljava/io/File;

    iget-object v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheDirectory:Ljava/io/File;

    const-string/jumbo v4, "_STATE"

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 991
    invoke-virtual {v3}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result v0

    if-nez v0, :cond_3

    .line 998
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

    .line 1000
    :try_start_3
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheTable:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1001
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheHead:Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;

    .line 1002
    :goto_0
    if-eqz v0, :cond_4

    .line 1004
    iget-object v6, v0, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->key:Ljava/io/Serializable;

    invoke-virtual {v5, v6}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1005
    invoke-static {v0}, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->access$6(Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/oneplus/io/Path;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1006
    invoke-static {v0}, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->access$5(Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;)Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-result-object v0

    goto :goto_0

    .line 981
    :cond_1
    :try_start_4
    monitor-exit v2

    return-void

    .line 986
    :cond_2
    monitor-exit v2

    return-void

    .line 991
    :cond_3
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 993
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "touchMediaDataCache() - Fail to delete old state file "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 994
    monitor-exit v2

    return-void

    .line 1008
    :cond_4
    if-nez v5, :cond_5

    :goto_1
    if-nez v4, :cond_7

    .line 977
    :goto_2
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1014
    return-void

    .line 1008
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

    .line 1011
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

    .line 977
    :catchall_2
    move-exception v0

    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v0

    .line 1008
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

    .line 391
    const/4 v0, 0x1

    .line 392
    iget-object v3, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheLock:Ljava/lang/Object;

    monitor-enter v3

    .line 395
    :try_start_0
    iget-object v4, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheDirectory:Ljava/io/File;

    if-eqz v4, :cond_2

    .line 402
    invoke-virtual {p0, p1}, Lcom/oneplus/gallery2/media/ExternalMediaSource;->removeCachedMediaData(Ljava/io/Serializable;)Z

    .line 403
    if-eqz p2, :cond_3

    .line 405
    invoke-virtual {p2}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_4

    .line 415
    :try_start_1
    iget-object v4, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheDirectory:Ljava/io/File;

    invoke-direct {p0, v4}, Lcom/oneplus/gallery2/media/ExternalMediaSource;->generateEmptyFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v4

    .line 416
    if-nez p3, :cond_5

    .line 424
    :cond_0
    :goto_0
    new-instance v1, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;

    invoke-direct {v1, p0, p1, v4}, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;-><init>(Lcom/oneplus/gallery2/media/ExternalMediaSource;Ljava/io/Serializable;Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 431
    :try_start_2
    iget-object v4, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheHead:Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;

    if-nez v4, :cond_7

    .line 433
    :goto_1
    iget-object v4, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheTail:Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;

    if-eqz v4, :cond_8

    .line 435
    :goto_2
    iget-object v4, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheHead:Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;

    invoke-static {v1, v4}, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->access$3(Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;)V

    .line 436
    iput-object v1, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheHead:Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;

    .line 437
    iget-object v4, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheTable:Ljava/util/Map;

    invoke-interface {v4, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    iget-wide v4, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheSize:J

    invoke-virtual {v1}, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->getSize()J

    move-result-wide v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheSize:J

    .line 439
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/ExternalMediaSource;->checkMediaDataCacheSize()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 445
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/ExternalMediaSource;->touchMediaDataCache()V

    .line 392
    monitor-exit v3

    .line 449
    if-nez v0, :cond_a

    .line 470
    :cond_1
    :goto_3
    return-object v1

    .line 397
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "addFileToMediaDataCache() - No cache"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    monitor-exit v3

    return-object v2

    .line 404
    :cond_3
    monitor-exit v3

    return-object v2

    .line 407
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

    .line 408
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v2

    .line 418
    :cond_5
    :try_start_3
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 419
    invoke-virtual {p2, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 421
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 422
    :try_start_4
    monitor-exit v3

    return-object v2

    :cond_6
    move v0, v1

    .line 420
    goto :goto_0

    .line 425
    :catch_0
    move-exception v0

    .line 428
    iget-object v1, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "addFileToMediaDataCache() - Fail to create cached file"

    invoke-static {v1, v4, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 429
    monitor-exit v3

    return-object v2

    .line 432
    :cond_7
    iget-object v4, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheHead:Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;

    invoke-static {v4, v1}, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->access$2(Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;)V

    goto :goto_1

    .line 392
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 434
    :cond_8
    :try_start_5
    iput-object v1, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheTail:Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;

    goto :goto_2

    .line 441
    :cond_9
    iget-wide v4, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheSize:J

    invoke-virtual {v1}, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->getSize()J

    move-result-wide v6

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheSize:J

    .line 442
    invoke-direct {p0, v1}, Lcom/oneplus/gallery2/media/ExternalMediaSource;->removeCachedMediaDataDirectly(Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;)V

    .line 443
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    return-object v2

    .line 451
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

    .line 453
    :try_start_8
    new-array v5, v0, [B

    .line 454
    invoke-virtual {v3, v5}, Ljava/io/FileInputStream;->read([B)I

    move-result v0

    .line 455
    :goto_4
    if-lez v0, :cond_b

    const/4 v6, 0x0

    .line 457
    invoke-virtual {v4, v5, v6, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 458
    invoke-virtual {v3, v5}, Ljava/io/FileInputStream;->read([B)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    move-result v0

    goto :goto_4

    .line 460
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

    .line 463
    iget-object v1, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "addFileToMediaDataCache() - Fail to copy data to cache"

    invoke-static {v1, v3, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 464
    invoke-virtual {p0, p1}, Lcom/oneplus/gallery2/media/ExternalMediaSource;->removeCachedMediaData(Ljava/io/Serializable;)Z

    .line 465
    return-object v2

    .line 460
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
    .line 530
    iget-object v1, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 532
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheTable:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;

    .line 533
    if-nez v0, :cond_0

    .line 535
    :goto_0
    monitor-exit v1

    return-object v0

    .line 534
    :cond_0
    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/media/ExternalMediaSource;->touchCachedMediaData(Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;)V

    goto :goto_0

    .line 535
    :catchall_0
    move-exception v0

    .line 530
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected final getWorkerThread()Lcom/oneplus/gallery2/media/ExternalMediaSource$WorkerThread;
    .locals 1

    .prologue
    .line 546
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_WorkerThread:Lcom/oneplus/gallery2/media/ExternalMediaSource$WorkerThread;

    return-object v0
.end method

.method protected handleWorkerThreadMessage(Landroid/os/Message;)Z
    .locals 1

    .prologue
    .line 557
    const/4 v0, 0x0

    return v0
.end method

.method protected final isWorkerThread()Z
    .locals 2

    .prologue
    .line 567
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

    .line 578
    iget-object v1, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 581
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheTable:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 582
    if-eqz v0, :cond_0

    :try_start_1
    const-string/jumbo v2, "__tmp_external_media__"

    const/4 v3, 0x0

    .line 589
    invoke-static {v2, v3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 598
    :try_start_2
    invoke-virtual {v0}, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->getSize()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v4

    .line 601
    :try_start_3
    invoke-virtual {v0, v2}, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->moveFileTo(Ljava/io/File;)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    .line 614
    :try_start_4
    iget-wide v6, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheSize:J

    sub-long v4, v6, v4

    iput-wide v4, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheSize:J

    .line 615
    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/media/ExternalMediaSource;->removeCachedMediaDataDirectly(Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;)V

    .line 618
    monitor-exit v1

    return-object v2

    .line 583
    :cond_0
    monitor-exit v1

    return-object v6

    .line 590
    :catch_0
    move-exception v0

    .line 593
    iget-object v2, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "moveFileFromMediaDataCache() - Fail to create temporary file"

    invoke-static {v2, v3, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 594
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-object v6

    .line 603
    :cond_1
    :try_start_5
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "moveFileFromMediaDataCache() - Fail to move file"

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 604
    :try_start_6
    monitor-exit v1

    return-object v6

    :catch_1
    move-exception v0

    .line 609
    iget-object v2, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "moveFileFromMediaDataCache() - Fail to move file"

    invoke-static {v2, v3, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 610
    monitor-exit v1

    return-object v6

    .line 618
    :catchall_0
    move-exception v0

    .line 578
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v0
.end method

.method protected onCreateWorkerThread()Lcom/oneplus/gallery2/media/ExternalMediaSource$WorkerThread;
    .locals 3

    .prologue
    .line 643
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
    .line 652
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_WorkerThread:Lcom/oneplus/gallery2/media/ExternalMediaSource$WorkerThread;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/media/ExternalMediaSource;->onWorkerThreadStopping(Lcom/oneplus/gallery2/media/ExternalMediaSource$WorkerThread;)V

    .line 653
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_WorkerThread:Lcom/oneplus/gallery2/media/ExternalMediaSource$WorkerThread;

    invoke-virtual {v0}, Lcom/oneplus/gallery2/media/ExternalMediaSource$WorkerThread;->release()V

    .line 656
    invoke-super {p0}, Lcom/oneplus/gallery2/media/BaseMediaSource;->onDeinitialize()V

    .line 657
    return-void
.end method

.method protected onInitialize()V
    .locals 1

    .prologue
    .line 665
    invoke-super {p0}, Lcom/oneplus/gallery2/media/BaseMediaSource;->onInitialize()V

    .line 668
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/ExternalMediaSource;->onCreateWorkerThread()Lcom/oneplus/gallery2/media/ExternalMediaSource$WorkerThread;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_WorkerThread:Lcom/oneplus/gallery2/media/ExternalMediaSource$WorkerThread;

    .line 669
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_WorkerThread:Lcom/oneplus/gallery2/media/ExternalMediaSource$WorkerThread;

    invoke-virtual {v0}, Lcom/oneplus/gallery2/media/ExternalMediaSource$WorkerThread;->startSync()V

    .line 670
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_WorkerThread:Lcom/oneplus/gallery2/media/ExternalMediaSource$WorkerThread;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/media/ExternalMediaSource;->onWorkerThreadStarted(Lcom/oneplus/gallery2/media/ExternalMediaSource$WorkerThread;)V

    .line 671
    return-void
.end method

.method protected onRemovingCachedMediaData(Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 681
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
    const/4 v2, 0x0

    .line 692
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheDirectory:Ljava/io/File;

    if-eqz v0, :cond_4

    .line 696
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 699
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 700
    array-length v0, v1

    :cond_0
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    .line 702
    aget-object v3, v1, v0

    .line 703
    invoke-static {v3}, Lcom/oneplus/io/Path;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "_STATE"

    .line 704
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 705
    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 707
    :catch_0
    move-exception v0

    .line 710
    iget-object v1, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "onSetupMediaDataCache() - Fail to list files in "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheDirectory:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 714
    :cond_1
    new-instance v5, Ljava/io/File;

    iget-object v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheDirectory:Ljava/io/File;

    const-string/jumbo v1, "_STATE"

    invoke-direct {v5, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 715
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_5

    .line 752
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onSetupMediaDataCache() - No state file"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    :cond_2
    :goto_1
    invoke-virtual {v4}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 768
    :cond_3
    return-void

    .line 693
    :cond_4
    return-void

    .line 717
    :cond_5
    :try_start_1
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    new-instance v7, Ljava/io/ObjectInputStream;

    invoke-direct {v7, v6}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 719
    :try_start_3
    invoke-virtual {v7}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    move v3, v0

    :goto_2
    if-lez v3, :cond_a

    .line 721
    invoke-virtual {v7}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Serializable;

    .line 722
    invoke-virtual {v7}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 723
    iget-object v8, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheTable:Ljava/util/Map;

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_7

    .line 719
    :cond_6
    :goto_3
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_2

    .line 723
    :cond_7
    invoke-virtual {v4, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 725
    new-instance v8, Ljava/io/File;

    iget-object v9, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheDirectory:Ljava/io/File;

    invoke-direct {v8, v9, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 726
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 728
    new-instance v1, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;

    invoke-direct {v1, p0, v0, v8}, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;-><init>(Lcom/oneplus/gallery2/media/ExternalMediaSource;Ljava/io/Serializable;Ljava/io/File;)V

    .line 729
    iget-object v8, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheHead:Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;

    if-nez v8, :cond_8

    .line 731
    :goto_4
    iget-object v8, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheTail:Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;

    if-eqz v8, :cond_9

    .line 733
    :goto_5
    iget-object v8, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheHead:Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;

    invoke-static {v1, v8}, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->access$3(Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;)V

    .line 734
    iput-object v1, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheHead:Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;

    .line 735
    iget-wide v8, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheSize:J

    invoke-virtual {v1}, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->getSize()J

    move-result-wide v10

    add-long/2addr v8, v10

    iput-wide v8, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheSize:J

    .line 736
    iget-object v8, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheTable:Ljava/util/Map;

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 741
    :catchall_0
    move-exception v0

    if-nez v7, :cond_c

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
    move-object v2, v1

    :goto_9
    if-nez v6, :cond_f

    :goto_a
    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v0

    :goto_b
    if-eqz v2, :cond_10

    if-ne v2, v0, :cond_11

    :goto_c
    :try_start_6
    throw v2
    :try_end_6
    .catch Ljava/io/EOFException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2

    :catch_1
    move-exception v0

    .line 744
    iget-object v1, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onSetupMediaDataCache() - Inconsistent data in state file "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 730
    :cond_8
    :try_start_7
    iget-object v8, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheHead:Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;

    invoke-static {v8, v1}, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->access$2(Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;)V

    goto :goto_4

    .line 741
    :catchall_3
    move-exception v0

    move-object v1, v2

    goto :goto_7

    .line 732
    :cond_9
    iput-object v1, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheTail:Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_5

    .line 744
    :catch_2
    move-exception v0

    .line 748
    iget-object v1, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onSetupMediaDataCache() - Fail to read state file "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 740
    :cond_a
    :try_start_8
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onSetupMediaDataCache() - "

    iget-object v3, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheTable:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v8, " valid data in cache"

    invoke-static {v0, v1, v3, v8}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 741
    if-nez v7, :cond_b

    :goto_d
    if-eqz v6, :cond_2

    :try_start_9
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto/16 :goto_1

    :cond_b
    :try_start_a
    invoke-virtual {v7}, Ljava/io/ObjectInputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_d

    :cond_c
    :try_start_b
    invoke-virtual {v7}, Ljava/io/ObjectInputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_6

    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_b

    :cond_d
    move-object v2, v0

    goto :goto_9

    :cond_e
    :try_start_c
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    goto :goto_8

    :catchall_4
    move-exception v0

    move-object v2, v1

    goto :goto_b

    :cond_f
    :try_start_d
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    goto :goto_a

    :cond_10
    move-object v2, v0

    goto :goto_c

    :cond_11
    :try_start_e
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_e
    .catch Ljava/io/EOFException; {:try_start_e .. :try_end_e} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_2

    goto :goto_c

    .line 757
    :cond_12
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onSetupMediaDataCache() - Delete "

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, " extra files"

    invoke-static {v0, v1, v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 758
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 762
    :try_start_f
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheDirectory:Ljava/io/File;

    invoke-direct {v2, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_3

    goto :goto_e

    .line 763
    :catch_3
    move-exception v0

    goto :goto_e
.end method

.method protected abstract onSetupMediaDataCacheDirectory(Lcom/oneplus/base/BaseApplication;)Ljava/io/File;
.end method

.method protected onWorkerThreadStarted(Lcom/oneplus/gallery2/media/ExternalMediaSource$WorkerThread;)V
    .locals 2

    .prologue
    .line 785
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_WorkerThread:Lcom/oneplus/gallery2/media/ExternalMediaSource$WorkerThread;

    new-instance v1, Lcom/oneplus/gallery2/media/ExternalMediaSource$1;

    invoke-direct {v1, p0}, Lcom/oneplus/gallery2/media/ExternalMediaSource$1;-><init>(Lcom/oneplus/gallery2/media/ExternalMediaSource;)V

    invoke-static {v0, v1}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    .line 793
    return-void
.end method

.method protected onWorkerThreadStopping(Lcom/oneplus/gallery2/media/ExternalMediaSource$WorkerThread;)V
    .locals 0

    .prologue
    .line 801
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
    .line 811
    iget-object v1, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 813
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/oneplus/gallery2/media/ExternalMediaSource;->getCachedMediaData(Ljava/io/Serializable;)Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;

    move-result-object v0

    .line 814
    if-nez v0, :cond_0

    .line 816
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v2, "Cached data does not exist"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    .line 811
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 815
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

    .line 851
    iget-object v3, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheLock:Ljava/lang/Object;

    monitor-enter v3

    .line 853
    :try_start_0
    new-instance v4, Lcom/oneplus/base/SimpleRef;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/oneplus/base/SimpleRef;-><init>(Ljava/lang/Object;)V

    .line 854
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheHead:Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;

    move-object v10, v0

    move v0, v1

    move-object v1, v10

    .line 855
    :goto_0
    if-eqz v1, :cond_2

    .line 857
    invoke-static {v1}, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->access$5(Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;)Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;

    move-result-object v2

    .line 858
    iget-object v5, v1, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->key:Ljava/io/Serializable;

    invoke-interface {p1, v5, v4}, Lcom/oneplus/cache/Cache$RemovingPredication;->canRemove(Ljava/lang/Object;Lcom/oneplus/base/Ref;)Z

    move-result v5

    if-nez v5, :cond_0

    move v1, v0

    .line 864
    :goto_1
    invoke-interface {v4}, Lcom/oneplus/base/Ref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    move-object v1, v2

    .line 866
    goto :goto_0

    .line 860
    :cond_0
    iget-wide v6, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheSize:J

    invoke-virtual {v1}, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->getSize()J

    move-result-wide v8

    sub-long/2addr v6, v8

    iput-wide v6, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheSize:J

    .line 861
    invoke-direct {p0, v1}, Lcom/oneplus/gallery2/media/ExternalMediaSource;->removeCachedMediaDataDirectly(Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;)V

    .line 862
    add-int/lit8 v1, v0, 0x1

    goto :goto_1

    :cond_1
    move v0, v1

    .line 868
    :cond_2
    if-gtz v0, :cond_3

    .line 851
    :goto_2
    monitor-exit v3

    .line 871
    return v0

    .line 869
    :cond_3
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/ExternalMediaSource;->touchMediaDataCache()V

    goto :goto_2

    .line 851
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
    .line 828
    iget-object v1, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 830
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheTable:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;

    .line 831
    if-nez v0, :cond_0

    .line 828
    monitor-exit v1

    .line 839
    const/4 v0, 0x0

    return v0

    .line 833
    :cond_0
    iget-wide v2, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheSize:J

    invoke-virtual {v0}, Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;->getSize()J

    move-result-wide v4

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_MediaDataCacheSize:J

    .line 834
    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/media/ExternalMediaSource;->removeCachedMediaDataDirectly(Lcom/oneplus/gallery2/media/ExternalMediaSource$CachedMediaData;)V

    .line 835
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/ExternalMediaSource;->touchMediaDataCache()V

    .line 836
    monitor-exit v1

    const/4 v0, 0x1

    return v0

    .line 828
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
    .line 900
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/ExternalMediaSource;->isWorkerThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 902
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_WorkerThread:Lcom/oneplus/gallery2/media/ExternalMediaSource$WorkerThread;

    if-nez v0, :cond_1

    .line 912
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "No worker thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 901
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 913
    :goto_0
    return-void

    .line 904
    :cond_1
    new-instance v0, Lcom/oneplus/gallery2/media/ExternalMediaSource$SyncRunnable;

    invoke-direct {v0, p1}, Lcom/oneplus/gallery2/media/ExternalMediaSource$SyncRunnable;-><init>(Ljava/lang/Runnable;)V

    .line 905
    iget-object v1, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource;->m_WorkerThread:Lcom/oneplus/gallery2/media/ExternalMediaSource$WorkerThread;

    invoke-virtual {v1}, Lcom/oneplus/gallery2/media/ExternalMediaSource$WorkerThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 906
    if-nez v1, :cond_3

    .line 909
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Fail to post to worker thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 906
    :cond_3
    invoke-virtual {v1, v0}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 907
    invoke-virtual {v0}, Lcom/oneplus/gallery2/media/ExternalMediaSource$SyncRunnable;->waitForCompletion()V

    goto :goto_0
.end method
