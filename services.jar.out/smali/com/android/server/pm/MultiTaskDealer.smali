.class public Lcom/android/server/pm/MultiTaskDealer;
.super Ljava/lang/Object;
.source "MultiTaskDealer.java"


# static fields
.field private static final DEBUG_TASK:Z = false

.field public static final PACKAGEMANAGER_SCANER:Ljava/lang/String; = "packagescan"

.field public static final TAG:Ljava/lang/String; = "MultiTaskDealer"

.field private static map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/server/pm/MultiTaskDealer;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private mLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mNeedNotifyEnd:Z

.field private mObjWaitAll:Ljava/lang/Object;

.field private mTaskCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/pm/MultiTaskDealer;->map:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "taskCount"    # I

    .prologue
    const/4 v0, 0x0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput v0, p0, Lcom/android/server/pm/MultiTaskDealer;->mTaskCount:I

    .line 76
    iput-boolean v0, p0, Lcom/android/server/pm/MultiTaskDealer;->mNeedNotifyEnd:Z

    .line 77
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/MultiTaskDealer;->mObjWaitAll:Ljava/lang/Object;

    .line 78
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/MultiTaskDealer;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 81
    move-object v9, p1

    .line 82
    .local v9, "taskName":Ljava/lang/String;
    new-instance v8, Lcom/android/server/pm/MultiTaskDealer$1;

    invoke-direct {v8, p0, v9}, Lcom/android/server/pm/MultiTaskDealer$1;-><init>(Lcom/android/server/pm/MultiTaskDealer;Ljava/lang/String;)V

    .line 91
    .local v8, "factory":Ljava/util/concurrent/ThreadFactory;
    new-instance v0, Lcom/android/server/pm/MultiTaskDealer$2;

    const-wide/16 v4, 0x5

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    move-object v1, p0

    move v2, p2

    move v3, p2

    invoke-direct/range {v0 .. v8}, Lcom/android/server/pm/MultiTaskDealer$2;-><init>(Lcom/android/server/pm/MultiTaskDealer;IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lcom/android/server/pm/MultiTaskDealer;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 106
    return-void
.end method

.method private TaskCompleteNotify(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 117
    iget-object v1, p0, Lcom/android/server/pm/MultiTaskDealer;->mObjWaitAll:Ljava/lang/Object;

    monitor-enter v1

    .line 118
    :try_start_0
    iget v0, p0, Lcom/android/server/pm/MultiTaskDealer;->mTaskCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/pm/MultiTaskDealer;->mTaskCount:I

    .line 119
    iget v0, p0, Lcom/android/server/pm/MultiTaskDealer;->mTaskCount:I

    if-gtz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/pm/MultiTaskDealer;->mNeedNotifyEnd:Z

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/android/server/pm/MultiTaskDealer;->mObjWaitAll:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 123
    :cond_0
    monitor-exit v1

    .line 124
    return-void

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic access$000(Lcom/android/server/pm/MultiTaskDealer;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/MultiTaskDealer;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/server/pm/MultiTaskDealer;->TaskCompleteNotify(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static getDealer(Ljava/lang/String;)Lcom/android/server/pm/MultiTaskDealer;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 51
    sget-object v2, Lcom/android/server/pm/MultiTaskDealer;->map:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 52
    .local v1, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/pm/MultiTaskDealer;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/MultiTaskDealer;

    move-object v0, v2

    .line 53
    .local v0, "dealer":Lcom/android/server/pm/MultiTaskDealer;
    :goto_0
    return-object v0

    .line 52
    .end local v0    # "dealer":Lcom/android/server/pm/MultiTaskDealer;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static startDealer(Ljava/lang/String;I)Lcom/android/server/pm/MultiTaskDealer;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "taskCount"    # I

    .prologue
    .line 57
    invoke-static {p0}, Lcom/android/server/pm/MultiTaskDealer;->getDealer(Ljava/lang/String;)Lcom/android/server/pm/MultiTaskDealer;

    move-result-object v0

    .line 58
    .local v0, "dealer":Lcom/android/server/pm/MultiTaskDealer;
    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lcom/android/server/pm/MultiTaskDealer;

    .end local v0    # "dealer":Lcom/android/server/pm/MultiTaskDealer;
    invoke-direct {v0, p0, p1}, Lcom/android/server/pm/MultiTaskDealer;-><init>(Ljava/lang/String;I)V

    .line 60
    .restart local v0    # "dealer":Lcom/android/server/pm/MultiTaskDealer;
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 61
    .local v1, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/pm/MultiTaskDealer;>;"
    sget-object v2, Lcom/android/server/pm/MultiTaskDealer;->map:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .end local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/pm/MultiTaskDealer;>;"
    :cond_0
    return-object v0
.end method


# virtual methods
.method public addTask(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 109
    iget-object v1, p0, Lcom/android/server/pm/MultiTaskDealer;->mObjWaitAll:Ljava/lang/Object;

    monitor-enter v1

    .line 110
    :try_start_0
    iget v0, p0, Lcom/android/server/pm/MultiTaskDealer;->mTaskCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/pm/MultiTaskDealer;->mTaskCount:I

    .line 111
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    iget-object v0, p0, Lcom/android/server/pm/MultiTaskDealer;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 114
    return-void

    .line 111
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public endLock()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/server/pm/MultiTaskDealer;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 72
    return-void
.end method

.method public startLock()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/server/pm/MultiTaskDealer;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 68
    return-void
.end method

.method public waitAll()V
    .locals 2

    .prologue
    .line 128
    iget-object v1, p0, Lcom/android/server/pm/MultiTaskDealer;->mObjWaitAll:Ljava/lang/Object;

    monitor-enter v1

    .line 129
    :try_start_0
    iget v0, p0, Lcom/android/server/pm/MultiTaskDealer;->mTaskCount:I

    if-lez v0, :cond_0

    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/MultiTaskDealer;->mNeedNotifyEnd:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    :try_start_1
    iget-object v0, p0, Lcom/android/server/pm/MultiTaskDealer;->mObjWaitAll:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 135
    :goto_0
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/android/server/pm/MultiTaskDealer;->mNeedNotifyEnd:Z

    .line 138
    :cond_0
    monitor-exit v1

    return-void

    .line 139
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 133
    :catch_0
    move-exception v0

    goto :goto_0
.end method
