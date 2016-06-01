.class public Lcom/oppo/tribune/cache/BitmapDownload;
.super Ljava/lang/Object;
.source "BitmapDownload.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/tribune/cache/BitmapDownload$DownloadRequest;,
        Lcom/oppo/tribune/cache/BitmapDownload$DownloadTarget;,
        Lcom/oppo/tribune/cache/BitmapDownload$State;
    }
.end annotation


# static fields
.field private static singleton:Lcom/oppo/tribune/cache/BitmapDownload;


# instance fields
.field private final mMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/oppo/tribune/cache/BitmapDownload$DownloadTarget;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mService:Ljava/util/concurrent/ExecutorService;

.field private final mTarget:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 331
    new-instance v0, Lcom/oppo/tribune/cache/BitmapDownload;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/oppo/tribune/cache/BitmapDownload;-><init>(I)V

    sput-object v0, Lcom/oppo/tribune/cache/BitmapDownload;->singleton:Lcom/oppo/tribune/cache/BitmapDownload;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 2
    .param p1, "nThreads"    # I

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/cache/BitmapDownload;->mMap:Ljava/util/Map;

    .line 40
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oppo/tribune/cache/BitmapDownload;->mTarget:Landroid/os/Handler;

    .line 43
    new-instance v0, Lcom/oppo/tribune/cache/BitmapDownload$1;

    invoke-direct {v0, p0}, Lcom/oppo/tribune/cache/BitmapDownload$1;-><init>(Lcom/oppo/tribune/cache/BitmapDownload;)V

    invoke-static {p1, v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/cache/BitmapDownload;->mService:Ljava/util/concurrent/ExecutorService;

    .line 54
    return-void
.end method

.method static synthetic access$200(Lcom/oppo/tribune/cache/BitmapDownload;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/cache/BitmapDownload;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/oppo/tribune/cache/BitmapDownload;->mMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oppo/tribune/cache/BitmapDownload;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/cache/BitmapDownload;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/oppo/tribune/cache/BitmapDownload;->mTarget:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800()Lcom/oppo/tribune/cache/BitmapDownload;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/oppo/tribune/cache/BitmapDownload;->singleton:Lcom/oppo/tribune/cache/BitmapDownload;

    return-object v0
.end method

.method public static declared-synchronized requestFinish()V
    .locals 2

    .prologue
    .line 334
    const-class v1, Lcom/oppo/tribune/cache/BitmapDownload;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/oppo/tribune/cache/BitmapDownload;->singleton:Lcom/oppo/tribune/cache/BitmapDownload;

    if-eqz v0, :cond_0

    .line 335
    sget-object v0, Lcom/oppo/tribune/cache/BitmapDownload;->singleton:Lcom/oppo/tribune/cache/BitmapDownload;

    invoke-virtual {v0}, Lcom/oppo/tribune/cache/BitmapDownload;->shutdown()V

    .line 336
    const/4 v0, 0x0

    sput-object v0, Lcom/oppo/tribune/cache/BitmapDownload;->singleton:Lcom/oppo/tribune/cache/BitmapDownload;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    :cond_0
    monitor-exit v1

    return-void

    .line 334
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized requestDownload(Lcom/oppo/tribune/cache/BitmapDownload$DownloadRequest;)V
    .locals 7
    .param p1, "r"    # Lcom/oppo/tribune/cache/BitmapDownload$DownloadRequest;

    .prologue
    .line 57
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/oppo/tribune/cache/BitmapDownload;->mService:Ljava/util/concurrent/ExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 77
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 61
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/oppo/tribune/cache/BitmapDownload$DownloadRequest;->getPathname()Ljava/lang/String;

    move-result-object v6

    .line 62
    .local v6, "pathname":Ljava/lang/String;
    iget-object v1, p0, Lcom/oppo/tribune/cache/BitmapDownload;->mMap:Ljava/util/Map;

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/cache/BitmapDownload$DownloadTarget;

    .line 63
    .local v0, "target":Lcom/oppo/tribune/cache/BitmapDownload$DownloadTarget;
    if-eqz v0, :cond_2

    # invokes: Lcom/oppo/tribune/cache/BitmapDownload$DownloadTarget;->tryAddRequest(Lcom/oppo/tribune/cache/BitmapDownload$DownloadRequest;)Z
    invoke-static {v0, p1}, Lcom/oppo/tribune/cache/BitmapDownload$DownloadTarget;->access$000(Lcom/oppo/tribune/cache/BitmapDownload$DownloadTarget;Lcom/oppo/tribune/cache/BitmapDownload$DownloadRequest;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 73
    :cond_2
    new-instance v0, Lcom/oppo/tribune/cache/BitmapDownload$DownloadTarget;

    .end local v0    # "target":Lcom/oppo/tribune/cache/BitmapDownload$DownloadTarget;
    invoke-virtual {p1}, Lcom/oppo/tribune/cache/BitmapDownload$DownloadRequest;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Lcom/oppo/tribune/cache/BitmapDownload$DownloadRequest;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/oppo/tribune/cache/BitmapDownload$DownloadRequest;->getPathname()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/oppo/tribune/cache/BitmapDownload$DownloadTarget;-><init>(Lcom/oppo/tribune/cache/BitmapDownload;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/oppo/tribune/cache/BitmapDownload$1;)V

    .line 74
    .restart local v0    # "target":Lcom/oppo/tribune/cache/BitmapDownload$DownloadTarget;
    # invokes: Lcom/oppo/tribune/cache/BitmapDownload$DownloadTarget;->tryAddRequest(Lcom/oppo/tribune/cache/BitmapDownload$DownloadRequest;)Z
    invoke-static {v0, p1}, Lcom/oppo/tribune/cache/BitmapDownload$DownloadTarget;->access$000(Lcom/oppo/tribune/cache/BitmapDownload$DownloadTarget;Lcom/oppo/tribune/cache/BitmapDownload$DownloadRequest;)Z

    .line 75
    iget-object v1, p0, Lcom/oppo/tribune/cache/BitmapDownload;->mMap:Ljava/util/Map;

    invoke-interface {v1, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object v1, p0, Lcom/oppo/tribune/cache/BitmapDownload;->mService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 57
    .end local v0    # "target":Lcom/oppo/tribune/cache/BitmapDownload$DownloadTarget;
    .end local v6    # "pathname":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized shutdown()V
    .locals 1

    .prologue
    .line 100
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/oppo/tribune/cache/BitmapDownload;->mService:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/oppo/tribune/cache/BitmapDownload;->mService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/tribune/cache/BitmapDownload;->mService:Ljava/util/concurrent/ExecutorService;

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/cache/BitmapDownload;->mMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    monitor-exit p0

    return-void

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
