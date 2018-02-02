.class public final Lcom/amap/api/mapcore2d/el;
.super Ljava/lang/Object;
.source "ThreadPool.java"


# static fields
.field private static a:Lcom/amap/api/mapcore2d/el;


# instance fields
.field private b:Ljava/util/concurrent/ExecutorService;

.field private c:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Lcom/amap/api/mapcore2d/em;",
            "Ljava/util/concurrent/Future",
            "<*>;>;"
        }
    .end annotation
.end field

.field private d:Lcom/amap/api/mapcore2d/em$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 22
    sput-object v0, Lcom/amap/api/mapcore2d/el;->a:Lcom/amap/api/mapcore2d/el;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 3

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/el;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 27
    new-instance v0, Lcom/amap/api/mapcore2d/el$1;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore2d/el$1;-><init>(Lcom/amap/api/mapcore2d/el;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/el;->d:Lcom/amap/api/mapcore2d/em$a;

    .line 77
    :try_start_0
    invoke-static {p1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/el;->b:Ljava/util/concurrent/ExecutorService;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :goto_0
    return-void

    .line 81
    :catch_0
    move-exception v0

    const-string/jumbo v1, "TPool"

    const-string/jumbo v2, "ThreadPool"

    .line 79
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/db;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static declared-synchronized a(I)Lcom/amap/api/mapcore2d/el;
    .locals 2

    .prologue
    const-class v1, Lcom/amap/api/mapcore2d/el;

    monitor-enter v1

    .line 57
    :try_start_0
    sget-object v0, Lcom/amap/api/mapcore2d/el;->a:Lcom/amap/api/mapcore2d/el;

    if-eqz v0, :cond_0

    .line 60
    :goto_0
    sget-object v0, Lcom/amap/api/mapcore2d/el;->a:Lcom/amap/api/mapcore2d/el;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 58
    :cond_0
    :try_start_1
    new-instance v0, Lcom/amap/api/mapcore2d/el;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore2d/el;-><init>(I)V

    sput-object v0, Lcom/amap/api/mapcore2d/el;->a:Lcom/amap/api/mapcore2d/el;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/amap/api/mapcore2d/el;Lcom/amap/api/mapcore2d/em;Z)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/amap/api/mapcore2d/el;->a(Lcom/amap/api/mapcore2d/em;Z)V

    return-void
.end method

.method private declared-synchronized a(Lcom/amap/api/mapcore2d/em;Z)V
    .locals 3

    .prologue
    monitor-enter p0

    .line 187
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/el;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    if-nez p2, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    .line 197
    return-void

    .line 188
    :cond_1
    if-eqz v0, :cond_0

    .line 189
    const/4 v1, 0x1

    :try_start_1
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 195
    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v1, "TPool"

    const-string/jumbo v2, "removeQueue"

    .line 193
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/db;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
