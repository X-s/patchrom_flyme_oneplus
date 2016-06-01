.class public Lcom/oppo/music/manager/AsyncRequestManager;
.super Ljava/lang/Object;
.source "AsyncRequestManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/music/manager/AsyncRequestManager$RequestHandler;,
        Lcom/oppo/music/manager/AsyncRequestManager$RequestWrap;,
        Lcom/oppo/music/manager/AsyncRequestManager$AsyncRequestListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AsyncRequestManager"

.field private static final THREAD_POOL_ALIVE_TIME:I = 0x1e

.field private static final THREAD_POOL_CORE_SIZE:I = 0x0

.field private static final THREAD_POOL_MAX_SIZE:I = 0xa

.field private static sInstance:Lcom/oppo/music/manager/AsyncRequestManager;


# instance fields
.field private mBlocked:Z

.field private mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private mHandler:Landroid/os/Handler;

.field private mLock:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oppo/music/manager/AsyncRequestManager;->mLock:Ljava/lang/Object;

    .line 53
    iput-boolean v2, p0, Lcom/oppo/music/manager/AsyncRequestManager;->mBlocked:Z

    .line 54
    new-instance v0, Lcom/oppo/music/manager/AsyncRequestManager$RequestHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oppo/music/manager/AsyncRequestManager$RequestHandler;-><init>(Lcom/oppo/music/manager/AsyncRequestManager;Lcom/oppo/music/manager/AsyncRequestManager$1;)V

    iput-object v0, p0, Lcom/oppo/music/manager/AsyncRequestManager;->mHandler:Landroid/os/Handler;

    .line 55
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/16 v3, 0xa

    const-wide/16 v4, 0x1e

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;

    invoke-direct {v9}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;-><init>()V

    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v1, p0, Lcom/oppo/music/manager/AsyncRequestManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 59
    return-void
.end method

.method static synthetic access$100(Lcom/oppo/music/manager/AsyncRequestManager;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/music/manager/AsyncRequestManager;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/oppo/music/manager/AsyncRequestManager;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oppo/music/manager/AsyncRequestManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oppo/music/manager/AsyncRequestManager;

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/oppo/music/manager/AsyncRequestManager;->mBlocked:Z

    return v0
.end method

.method static synthetic access$400(Lcom/oppo/music/manager/AsyncRequestManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/music/manager/AsyncRequestManager;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/oppo/music/manager/AsyncRequestManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static getInstance()Lcom/oppo/music/manager/AsyncRequestManager;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/oppo/music/manager/AsyncRequestManager;->sInstance:Lcom/oppo/music/manager/AsyncRequestManager;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Lcom/oppo/music/manager/AsyncRequestManager;

    invoke-direct {v0}, Lcom/oppo/music/manager/AsyncRequestManager;-><init>()V

    sput-object v0, Lcom/oppo/music/manager/AsyncRequestManager;->sInstance:Lcom/oppo/music/manager/AsyncRequestManager;

    .line 65
    :cond_0
    sget-object v0, Lcom/oppo/music/manager/AsyncRequestManager;->sInstance:Lcom/oppo/music/manager/AsyncRequestManager;

    return-object v0
.end method


# virtual methods
.method public block()V
    .locals 2

    .prologue
    .line 69
    const-string v0, "AsyncRequestManager"

    const-string v1, "block()"

    invoke-static {v0, v1}, Lcom/oppo/music/utils/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object v1, p0, Lcom/oppo/music/manager/AsyncRequestManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 72
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/oppo/music/manager/AsyncRequestManager;->mBlocked:Z

    .line 73
    monitor-exit v1

    .line 74
    return-void

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 128
    sput-object v1, Lcom/oppo/music/manager/AsyncRequestManager;->sInstance:Lcom/oppo/music/manager/AsyncRequestManager;

    .line 129
    iput-object v1, p0, Lcom/oppo/music/manager/AsyncRequestManager;->mLock:Ljava/lang/Object;

    .line 130
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/music/manager/AsyncRequestManager;->mBlocked:Z

    .line 131
    iget-object v0, p0, Lcom/oppo/music/manager/AsyncRequestManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 132
    iput-object v1, p0, Lcom/oppo/music/manager/AsyncRequestManager;->mHandler:Landroid/os/Handler;

    .line 133
    iget-object v0, p0, Lcom/oppo/music/manager/AsyncRequestManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 134
    iput-object v1, p0, Lcom/oppo/music/manager/AsyncRequestManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 135
    return-void
.end method

.method public isBlocked()Z
    .locals 2

    .prologue
    .line 86
    iget-object v1, p0, Lcom/oppo/music/manager/AsyncRequestManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 87
    :try_start_0
    iget-boolean v0, p0, Lcom/oppo/music/manager/AsyncRequestManager;->mBlocked:Z

    monitor-exit v1

    return v0

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public request(Lcom/oppo/music/manager/Request;Lcom/oppo/music/manager/AsyncRequestManager$AsyncRequestListener;)V
    .locals 6
    .param p1, "request"    # Lcom/oppo/music/manager/Request;
    .param p2, "listener"    # Lcom/oppo/music/manager/AsyncRequestManager$AsyncRequestListener;

    .prologue
    .line 92
    const-string v2, "AsyncRequestManager"

    const-string v3, "request() request=%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oppo/music/utils/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    if-eqz p1, :cond_0

    .line 95
    new-instance v1, Lcom/oppo/music/manager/AsyncRequestManager$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/oppo/music/manager/AsyncRequestManager$1;-><init>(Lcom/oppo/music/manager/AsyncRequestManager;Lcom/oppo/music/manager/Request;Lcom/oppo/music/manager/AsyncRequestManager$AsyncRequestListener;)V

    .line 120
    .local v1, "task":Ljava/lang/Runnable;
    iget-object v2, p0, Lcom/oppo/music/manager/AsyncRequestManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 121
    .local v0, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    invoke-virtual {p1, v0}, Lcom/oppo/music/manager/Request;->setFuture(Ljava/util/concurrent/Future;)V

    .line 125
    .end local v0    # "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    .end local v1    # "task":Ljava/lang/Runnable;
    :goto_0
    return-void

    .line 123
    :cond_0
    const-string v2, "AsyncRequestManager"

    const-string v3, "request() parameters are invalid!"

    invoke-static {v2, v3}, Lcom/oppo/music/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unBlock()V
    .locals 2

    .prologue
    .line 77
    const-string v0, "AsyncRequestManager"

    const-string v1, "unBlock()"

    invoke-static {v0, v1}, Lcom/oppo/music/utils/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object v1, p0, Lcom/oppo/music/manager/AsyncRequestManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 80
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/oppo/music/manager/AsyncRequestManager;->mBlocked:Z

    .line 81
    iget-object v0, p0, Lcom/oppo/music/manager/AsyncRequestManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 82
    monitor-exit v1

    .line 83
    return-void

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
