.class public abstract Lcom/oneplus/cache/AsyncLruCache;
.super Lcom/oneplus/cache/LruCache;
.source "AsyncLruCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TKey:",
        "Ljava/lang/Object;",
        "TValue:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/oneplus/cache/LruCache",
        "<TTKey;TTValue;>;"
    }
.end annotation


# static fields
.field private static final MSG_ADD:I = -0x2710

.field private static final MSG_CLEAR:I = -0x2714

.field private static final MSG_GET:I = -0x2711

.field private static final MSG_REMOVE:I = -0x2712

.field private static final MSG_REMOVE_MULTIPLE:I = -0x2713


# instance fields
.field private final m_HandleWorkerThreadMessageRunnable:Ljava/lang/Runnable;

.field private volatile m_IsStatisticEnabled:Z

.field private final m_StatisticLock:Ljava/lang/Object;

.field private volatile m_TotalGetCount:J

.field private volatile m_TotalGetTime:J

.field private final m_WorkerThreadCount:I

.field private volatile m_WorkerThreadExecutor:Ljava/util/concurrent/ExecutorService;

.field private final m_WorkerThreadMessageQueue:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(J)V
    .locals 1
    .param p1, "capacity"    # J

    .prologue
    .line 65
    .local p0, "this":Lcom/oneplus/cache/AsyncLruCache;, "Lcom/oneplus/cache/AsyncLruCache<TTKey;TTValue;>;"
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/cache/AsyncLruCache;-><init>(JI)V

    .line 66
    return-void
.end method

.method protected constructor <init>(JI)V
    .locals 3
    .param p1, "capacity"    # J
    .param p3, "threadCount"    # I

    .prologue
    .line 76
    .local p0, "this":Lcom/oneplus/cache/AsyncLruCache;, "Lcom/oneplus/cache/AsyncLruCache<TTKey;TTValue;>;"
    invoke-direct {p0, p1, p2}, Lcom/oneplus/cache/LruCache;-><init>(J)V

    .line 33
    new-instance v0, Lcom/oneplus/cache/AsyncLruCache$1;

    invoke-direct {v0, p0}, Lcom/oneplus/cache/AsyncLruCache$1;-><init>(Lcom/oneplus/cache/AsyncLruCache;)V

    iput-object v0, p0, Lcom/oneplus/cache/AsyncLruCache;->m_HandleWorkerThreadMessageRunnable:Ljava/lang/Runnable;

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oneplus/cache/AsyncLruCache;->m_StatisticLock:Ljava/lang/Object;

    .line 56
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/cache/AsyncLruCache;->m_WorkerThreadMessageQueue:Ljava/util/Deque;

    .line 77
    if-gtz p3, :cond_0

    .line 78
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid thread count : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_0
    iput p3, p0, Lcom/oneplus/cache/AsyncLruCache;->m_WorkerThreadCount:I

    .line 80
    return-void
.end method

.method static synthetic access$0(Lcom/oneplus/cache/AsyncLruCache;)Ljava/util/Deque;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/oneplus/cache/AsyncLruCache;->m_WorkerThreadMessageQueue:Ljava/util/Deque;

    return-object v0
.end method

.method private checkWorkerThread()Z
    .locals 3

    .prologue
    .local p0, "this":Lcom/oneplus/cache/AsyncLruCache;, "Lcom/oneplus/cache/AsyncLruCache<TTKey;TTValue;>;"
    const/4 v2, 0x1

    .line 127
    iget-object v0, p0, Lcom/oneplus/cache/AsyncLruCache;->m_WorkerThreadExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    .line 134
    :goto_0
    return v2

    .line 129
    :cond_0
    iget-object v1, p0, Lcom/oneplus/cache/AsyncLruCache;->syncLock:Ljava/lang/Object;

    monitor-enter v1

    .line 131
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/cache/AsyncLruCache;->m_WorkerThreadExecutor:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_1

    .line 132
    iget v0, p0, Lcom/oneplus/cache/AsyncLruCache;->m_WorkerThreadCount:I

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/cache/AsyncLruCache;->m_WorkerThreadExecutor:Ljava/util/concurrent/ExecutorService;

    .line 129
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTKey;TTValue;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/oneplus/cache/AsyncLruCache;, "Lcom/oneplus/cache/AsyncLruCache<TTKey;TTValue;>;"
    .local p1, "key":Ljava/lang/Object;, "TTKey;"
    .local p2, "value":Ljava/lang/Object;, "TTValue;"
    const/4 v5, 0x1

    const/16 v10, -0x2710

    const/4 v4, 0x0

    .line 87
    if-nez p1, :cond_1

    .line 89
    iget-object v5, p0, Lcom/oneplus/cache/AsyncLruCache;->TAG:Ljava/lang/String;

    const-string v6, "add() - No key"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :cond_0
    :goto_0
    return v4

    .line 92
    :cond_1
    if-nez p2, :cond_2

    .line 94
    iget-object v5, p0, Lcom/oneplus/cache/AsyncLruCache;->TAG:Ljava/lang/String;

    const-string v6, "add() - No value"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 97
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/cache/AsyncLruCache;->checkWorkerThread()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 99
    const/4 v3, 0x0

    .line 100
    .local v3, "numOfCancelledOp":I
    iget-object v6, p0, Lcom/oneplus/cache/AsyncLruCache;->m_WorkerThreadMessageQueue:Ljava/util/Deque;

    monitor-enter v6

    .line 102
    :try_start_0
    iget-object v7, p0, Lcom/oneplus/cache/AsyncLruCache;->m_WorkerThreadMessageQueue:Ljava/util/Deque;

    invoke-interface {v7}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 103
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/Message;>;"
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_5

    .line 100
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    if-lez v3, :cond_4

    .line 118
    iget-object v6, p0, Lcom/oneplus/cache/AsyncLruCache;->TAG:Ljava/lang/String;

    const-string v7, "add() - Cancel "

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, " pending value adding"

    invoke-static {v6, v7, v8, v9}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 119
    :cond_4
    const/4 v6, 0x0

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v4

    aput-object p2, v7, v5

    invoke-static {v6, v10, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/oneplus/cache/AsyncLruCache;->sendMessageToWorkerThread(Landroid/os/Message;)Z

    move v4, v5

    .line 120
    goto :goto_0

    .line 105
    :cond_5
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    .line 106
    .local v2, "msg":Landroid/os/Message;
    iget v7, v2, Landroid/os/Message;->what:I

    if-ne v7, v10, :cond_3

    .line 108
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 109
    .local v0, "args":[Ljava/lang/Object;
    const/4 v7, 0x0

    aget-object v7, v0, v7

    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 111
    add-int/lit8 v3, v3, 0x1

    .line 112
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 100
    .end local v0    # "args":[Ljava/lang/Object;
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/Message;>;"
    .end local v2    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v4

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 142
    .local p0, "this":Lcom/oneplus/cache/AsyncLruCache;, "Lcom/oneplus/cache/AsyncLruCache<TTKey;TTValue;>;"
    invoke-direct {p0}, Lcom/oneplus/cache/AsyncLruCache;->checkWorkerThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 145
    :goto_0
    return-void

    .line 144
    :cond_0
    const/4 v0, 0x0

    const/16 v1, -0x2714

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/cache/AsyncLruCache;->sendMessageToWorkerThread(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public close()V
    .locals 2

    .prologue
    .line 152
    .local p0, "this":Lcom/oneplus/cache/AsyncLruCache;, "Lcom/oneplus/cache/AsyncLruCache<TTKey;TTValue;>;"
    iget-object v1, p0, Lcom/oneplus/cache/AsyncLruCache;->syncLock:Ljava/lang/Object;

    monitor-enter v1

    .line 155
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/cache/AsyncLruCache;->m_WorkerThreadExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/oneplus/cache/AsyncLruCache;->m_WorkerThreadExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 158
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/cache/AsyncLruCache;->m_WorkerThreadExecutor:Ljava/util/concurrent/ExecutorService;

    .line 162
    :cond_0
    invoke-super {p0}, Lcom/oneplus/cache/LruCache;->close()V

    .line 152
    monitor-exit v1

    .line 164
    return-void

    .line 152
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public disableStatistic()V
    .locals 1

    .prologue
    .line 172
    .local p0, "this":Lcom/oneplus/cache/AsyncLruCache;, "Lcom/oneplus/cache/AsyncLruCache<TTKey;TTValue;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/cache/AsyncLruCache;->m_IsStatisticEnabled:Z

    .line 173
    return-void
.end method

.method public enableStatistic()V
    .locals 4

    .prologue
    .line 181
    .local p0, "this":Lcom/oneplus/cache/AsyncLruCache;, "Lcom/oneplus/cache/AsyncLruCache<TTKey;TTValue;>;"
    iget-object v1, p0, Lcom/oneplus/cache/AsyncLruCache;->m_StatisticLock:Ljava/lang/Object;

    monitor-enter v1

    .line 183
    :try_start_0
    iget-boolean v0, p0, Lcom/oneplus/cache/AsyncLruCache;->m_IsStatisticEnabled:Z

    if-nez v0, :cond_0

    .line 185
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/cache/AsyncLruCache;->m_IsStatisticEnabled:Z

    .line 186
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/oneplus/cache/AsyncLruCache;->m_TotalGetCount:J

    .line 187
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/oneplus/cache/AsyncLruCache;->m_TotalGetTime:J

    .line 181
    :cond_0
    monitor-exit v1

    .line 190
    return-void

    .line 181
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected executeInWorkerThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 199
    .local p0, "this":Lcom/oneplus/cache/AsyncLruCache;, "Lcom/oneplus/cache/AsyncLruCache<TTKey;TTValue;>;"
    invoke-direct {p0}, Lcom/oneplus/cache/AsyncLruCache;->checkWorkerThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/oneplus/cache/AsyncLruCache;->m_WorkerThreadExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 201
    :cond_0
    return-void
.end method

.method public get(Ljava/lang/Object;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 9
    .param p3, "timeoutMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTKey;TTValue;J)TTValue;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/oneplus/cache/AsyncLruCache;, "Lcom/oneplus/cache/AsyncLruCache<TTKey;TTValue;>;"
    .local p1, "key":Ljava/lang/Object;, "TTKey;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TTValue;"
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    .line 209
    if-nez p1, :cond_1

    .line 211
    iget-object v3, p0, Lcom/oneplus/cache/AsyncLruCache;->TAG:Ljava/lang/String;

    const-string v4, "get() - No key"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    .end local p2    # "defaultValue":Ljava/lang/Object;, "TTValue;"
    :cond_0
    :goto_0
    return-object p2

    .line 214
    .restart local p2    # "defaultValue":Ljava/lang/Object;, "TTValue;"
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/cache/AsyncLruCache;->checkWorkerThread()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 216
    new-instance v1, Lcom/oneplus/base/SimpleRef;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/oneplus/base/SimpleRef;-><init>(Ljava/lang/Object;)V

    .line 217
    .local v1, "isCancelled":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Boolean;>;"
    cmp-long v3, p3, v6

    if-eqz v3, :cond_0

    .line 219
    monitor-enter v1

    .line 221
    const/4 v3, 0x4

    :try_start_0
    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object v1, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    .line 222
    .local v2, "params":[Ljava/lang/Object;
    const/4 v3, 0x0

    const/16 v4, -0x2711

    invoke-static {v3, v4, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/oneplus/cache/AsyncLruCache;->sendMessageToWorkerThread(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    cmp-long v3, p3, v6

    if-gez v3, :cond_2

    .line 226
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 235
    :goto_1
    const/4 v3, 0x1

    :try_start_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/oneplus/base/Ref;->set(Ljava/lang/Object;)V

    .line 236
    const/4 v3, 0x3

    aget-object p2, v2, v3

    .end local p2    # "defaultValue":Ljava/lang/Object;, "TTValue;"
    monitor-exit v1

    goto :goto_0

    .line 219
    .end local v2    # "params":[Ljava/lang/Object;
    :catchall_0
    move-exception v3

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 228
    .restart local v2    # "params":[Ljava/lang/Object;
    .restart local p2    # "defaultValue":Ljava/lang/Object;, "TTValue;"
    :cond_2
    :try_start_3
    invoke-virtual {v1, p3, p4}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 230
    :catch_0
    move-exception v0

    .line 232
    .local v0, "ex":Ljava/lang/InterruptedException;
    const/4 v3, 0x1

    :try_start_4
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/oneplus/base/Ref;->set(Ljava/lang/Object;)V

    .line 233
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method protected handleWorkerThreadMessage(Landroid/os/Message;)V
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 248
    .local p0, "this":Lcom/oneplus/cache/AsyncLruCache;, "Lcom/oneplus/cache/AsyncLruCache<TTKey;TTValue;>;"
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 309
    :cond_0
    :goto_0
    return-void

    .line 252
    :pswitch_0
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    .line 253
    .local v3, "params":[Ljava/lang/Object;
    const/4 v6, 0x0

    aget-object v6, v3, v6

    const/4 v7, 0x1

    aget-object v7, v3, v7

    invoke-super {p0, v6, v7}, Lcom/oneplus/cache/LruCache;->add(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 259
    .end local v3    # "params":[Ljava/lang/Object;
    :pswitch_1
    invoke-super {p0}, Lcom/oneplus/cache/LruCache;->clear()V

    goto :goto_0

    .line 265
    :pswitch_2
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    .line 266
    .restart local v3    # "params":[Ljava/lang/Object;
    const/4 v6, 0x2

    aget-object v2, v3, v6

    check-cast v2, Lcom/oneplus/base/Ref;

    .line 267
    .local v2, "isCancelled":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Boolean;>;"
    invoke-interface {v2}, Lcom/oneplus/base/Ref;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_0

    .line 269
    iget-boolean v6, p0, Lcom/oneplus/cache/AsyncLruCache;->m_IsStatisticEnabled:Z

    if-eqz v6, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 270
    .local v4, "time":J
    :goto_1
    const/4 v6, 0x3

    const/4 v7, 0x0

    aget-object v7, v3, v7

    const/4 v8, 0x1

    aget-object v8, v3, v8

    const-wide/16 v10, -0x1

    invoke-super {p0, v7, v8, v10, v11}, Lcom/oneplus/cache/LruCache;->get(Ljava/lang/Object;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v3, v6

    .line 271
    iget-boolean v6, p0, Lcom/oneplus/cache/AsyncLruCache;->m_IsStatisticEnabled:Z

    if-eqz v6, :cond_2

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_2

    .line 273
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v4, v6, v4

    .line 274
    const-wide/16 v0, 0x0

    .line 275
    .local v0, "avgTime":D
    iget-object v7, p0, Lcom/oneplus/cache/AsyncLruCache;->m_StatisticLock:Ljava/lang/Object;

    monitor-enter v7

    .line 277
    :try_start_0
    iget-wide v8, p0, Lcom/oneplus/cache/AsyncLruCache;->m_TotalGetCount:J

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    iput-wide v8, p0, Lcom/oneplus/cache/AsyncLruCache;->m_TotalGetCount:J

    .line 278
    iget-wide v8, p0, Lcom/oneplus/cache/AsyncLruCache;->m_TotalGetTime:J

    add-long/2addr v8, v4

    iput-wide v8, p0, Lcom/oneplus/cache/AsyncLruCache;->m_TotalGetTime:J

    .line 279
    iget-wide v8, p0, Lcom/oneplus/cache/AsyncLruCache;->m_TotalGetCount:J

    const-wide/16 v10, 0x10

    rem-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long v6, v8, v10

    if-nez v6, :cond_1

    .line 281
    iget-wide v8, p0, Lcom/oneplus/cache/AsyncLruCache;->m_TotalGetTime:J

    long-to-double v8, v8

    iget-wide v10, p0, Lcom/oneplus/cache/AsyncLruCache;->m_TotalGetCount:J

    long-to-double v10, v10

    div-double v0, v8, v10

    .line 282
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/oneplus/cache/AsyncLruCache;->m_TotalGetTime:J

    .line 283
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/oneplus/cache/AsyncLruCache;->m_TotalGetCount:J

    .line 275
    :cond_1
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 286
    const-wide/16 v6, 0x0

    cmpl-double v6, v0, v6

    if-lez v6, :cond_2

    .line 287
    iget-object v6, p0, Lcom/oneplus/cache/AsyncLruCache;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "[Statistic] Average get time : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "%.2f ms"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v8, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    .end local v0    # "avgTime":D
    :cond_2
    monitor-enter v2

    .line 291
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 289
    monitor-exit v2

    goto/16 :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 269
    .end local v4    # "time":J
    :cond_3
    const-wide/16 v4, 0x0

    goto/16 :goto_1

    .line 275
    .restart local v0    # "avgTime":D
    .restart local v4    # "time":J
    :catchall_1
    move-exception v6

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v6

    .line 299
    .end local v0    # "avgTime":D
    .end local v2    # "isCancelled":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Boolean;>;"
    .end local v3    # "params":[Ljava/lang/Object;
    .end local v4    # "time":J
    :pswitch_3
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-super {p0, v6}, Lcom/oneplus/cache/LruCache;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 305
    :pswitch_4
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/oneplus/cache/Cache$RemovingPredication;

    invoke-super {p0, v6}, Lcom/oneplus/cache/LruCache;->remove(Lcom/oneplus/cache/Cache$RemovingPredication;)V

    goto/16 :goto_0

    .line 248
    :pswitch_data_0
    .packed-switch -0x2714
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public remove(Lcom/oneplus/cache/Cache$RemovingPredication;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/cache/Cache$RemovingPredication",
            "<TTKey;>;)V"
        }
    .end annotation

    .prologue
    .line 349
    .local p0, "this":Lcom/oneplus/cache/AsyncLruCache;, "Lcom/oneplus/cache/AsyncLruCache<TTKey;TTValue;>;"
    .local p1, "predication":Lcom/oneplus/cache/Cache$RemovingPredication;, "Lcom/oneplus/cache/Cache$RemovingPredication<TTKey;>;"
    if-nez p1, :cond_1

    .line 354
    :cond_0
    :goto_0
    return-void

    .line 351
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/cache/AsyncLruCache;->checkWorkerThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    const/4 v0, 0x0

    const/16 v1, -0x2713

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/cache/AsyncLruCache;->sendMessageToWorkerThread(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTKey;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/oneplus/cache/AsyncLruCache;, "Lcom/oneplus/cache/AsyncLruCache<TTKey;TTValue;>;"
    .local p1, "key":Ljava/lang/Object;, "TTKey;"
    const/4 v4, 0x0

    .line 316
    if-nez p1, :cond_1

    .line 341
    :cond_0
    :goto_0
    return v4

    .line 318
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/cache/AsyncLruCache;->checkWorkerThread()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 320
    const/4 v3, 0x0

    .line 321
    .local v3, "numOfCancelledOp":I
    iget-object v5, p0, Lcom/oneplus/cache/AsyncLruCache;->m_WorkerThreadMessageQueue:Ljava/util/Deque;

    monitor-enter v5

    .line 323
    :try_start_0
    iget-object v4, p0, Lcom/oneplus/cache/AsyncLruCache;->m_WorkerThreadMessageQueue:Ljava/util/Deque;

    invoke-interface {v4}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 324
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/Message;>;"
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_4

    .line 321
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    if-lez v3, :cond_3

    .line 339
    iget-object v4, p0, Lcom/oneplus/cache/AsyncLruCache;->TAG:Ljava/lang/String;

    const-string v5, "remove() - Cancel "

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, " pending value adding"

    invoke-static {v4, v5, v6, v7}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 340
    :cond_3
    const/4 v4, 0x0

    const/16 v5, -0x2712

    invoke-static {v4, v5, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/oneplus/cache/AsyncLruCache;->sendMessageToWorkerThread(Landroid/os/Message;)Z

    .line 341
    const/4 v4, 0x1

    goto :goto_0

    .line 326
    :cond_4
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    .line 327
    .local v2, "msg":Landroid/os/Message;
    iget v4, v2, Landroid/os/Message;->what:I

    const/16 v6, -0x2710

    if-ne v4, v6, :cond_2

    .line 329
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 330
    .local v0, "args":[Ljava/lang/Object;
    const/4 v4, 0x0

    aget-object v4, v0, v4

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 332
    add-int/lit8 v3, v3, 0x1

    .line 333
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 321
    .end local v0    # "args":[Ljava/lang/Object;
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/Message;>;"
    .end local v2    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method protected removeWorkerThreadMessages(I)V
    .locals 4
    .param p1, "what"    # I

    .prologue
    .line 363
    .local p0, "this":Lcom/oneplus/cache/AsyncLruCache;, "Lcom/oneplus/cache/AsyncLruCache<TTKey;TTValue;>;"
    iget-object v3, p0, Lcom/oneplus/cache/AsyncLruCache;->m_WorkerThreadMessageQueue:Ljava/util/Deque;

    monitor-enter v3

    .line 365
    :try_start_0
    iget-object v2, p0, Lcom/oneplus/cache/AsyncLruCache;->m_WorkerThreadMessageQueue:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 366
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/Message;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 363
    monitor-exit v3

    .line 373
    return-void

    .line 368
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    .line 369
    .local v1, "msg":Landroid/os/Message;
    iget v2, v1, Landroid/os/Message;->what:I

    if-ne v2, p1, :cond_0

    .line 370
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 363
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/Message;>;"
    .end local v1    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method protected sendMessageToWorkerThread(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 383
    .local p0, "this":Lcom/oneplus/cache/AsyncLruCache;, "Lcom/oneplus/cache/AsyncLruCache<TTKey;TTValue;>;"
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/oneplus/cache/AsyncLruCache;->checkWorkerThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 385
    iget-object v1, p0, Lcom/oneplus/cache/AsyncLruCache;->m_WorkerThreadMessageQueue:Ljava/util/Deque;

    monitor-enter v1

    .line 387
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/cache/AsyncLruCache;->m_WorkerThreadMessageQueue:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 385
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 389
    iget-object v0, p0, Lcom/oneplus/cache/AsyncLruCache;->m_WorkerThreadExecutor:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/oneplus/cache/AsyncLruCache;->m_HandleWorkerThreadMessageRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 390
    const/4 v0, 0x1

    .line 392
    :goto_0
    return v0

    .line 385
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 392
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
