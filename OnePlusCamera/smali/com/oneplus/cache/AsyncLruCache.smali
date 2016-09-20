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
.field private volatile m_WorkerThread:Landroid/os/HandlerThread;

.field private volatile m_WorkerThreadHandler:Landroid/os/Handler;


# direct methods
.method protected constructor <init>(J)V
    .locals 1
    .param p1, "capacity"    # J

    .prologue
    .line 37
    .local p0, "this":Lcom/oneplus/cache/AsyncLruCache;, "Lcom/oneplus/cache/AsyncLruCache<TTKey;TTValue;>;"
    invoke-direct {p0, p1, p2}, Lcom/oneplus/cache/LruCache;-><init>(J)V

    .line 38
    return-void
.end method

.method private checkWorkerThread()Z
    .locals 5

    .prologue
    .local p0, "this":Lcom/oneplus/cache/AsyncLruCache;, "Lcom/oneplus/cache/AsyncLruCache<TTKey;TTValue;>;"
    const/4 v0, 0x1

    .line 69
    iget-object v1, p0, Lcom/oneplus/cache/AsyncLruCache;->m_WorkerThreadHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 92
    :goto_0
    return v0

    .line 71
    :cond_0
    iget-object v1, p0, Lcom/oneplus/cache/AsyncLruCache;->syncLock:Ljava/lang/Object;

    monitor-enter v1

    .line 73
    :try_start_0
    iget-object v2, p0, Lcom/oneplus/cache/AsyncLruCache;->m_WorkerThreadHandler:Landroid/os/Handler;

    if-nez v2, :cond_2

    .line 75
    invoke-virtual {p0}, Lcom/oneplus/cache/AsyncLruCache;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 77
    iget-object v0, p0, Lcom/oneplus/cache/AsyncLruCache;->TAG:Ljava/lang/String;

    const-string v2, "checkWorkerThread() - Cache is closed"

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 80
    :cond_1
    :try_start_1
    new-instance v2, Landroid/os/HandlerThread;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/oneplus/cache/AsyncLruCache;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " worker thread"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/oneplus/cache/AsyncLruCache;->m_WorkerThread:Landroid/os/HandlerThread;

    .line 81
    iget-object v2, p0, Lcom/oneplus/cache/AsyncLruCache;->m_WorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 82
    new-instance v2, Lcom/oneplus/cache/AsyncLruCache$1;

    iget-object v3, p0, Lcom/oneplus/cache/AsyncLruCache;->m_WorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/oneplus/cache/AsyncLruCache$1;-><init>(Lcom/oneplus/cache/AsyncLruCache;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/oneplus/cache/AsyncLruCache;->m_WorkerThreadHandler:Landroid/os/Handler;

    .line 91
    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public add(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTKey;TTValue;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/oneplus/cache/AsyncLruCache;, "Lcom/oneplus/cache/AsyncLruCache<TTKey;TTValue;>;"
    .local p1, "key":Ljava/lang/Object;, "TTKey;"
    .local p2, "value":Ljava/lang/Object;, "TTValue;"
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 45
    if-nez p1, :cond_1

    .line 47
    iget-object v1, p0, Lcom/oneplus/cache/AsyncLruCache;->TAG:Ljava/lang/String;

    const-string v2, "add() - No key"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :cond_0
    :goto_0
    return v0

    .line 50
    :cond_1
    if-nez p2, :cond_2

    .line 52
    iget-object v1, p0, Lcom/oneplus/cache/AsyncLruCache;->TAG:Ljava/lang/String;

    const-string v2, "add() - No value"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 55
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/cache/AsyncLruCache;->checkWorkerThread()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/oneplus/cache/AsyncLruCache;->isWorkerThread()Z

    move-result v2

    if-nez v2, :cond_3

    .line 59
    iget-object v2, p0, Lcom/oneplus/cache/AsyncLruCache;->m_WorkerThreadHandler:Landroid/os/Handler;

    const/16 v3, -0x2710

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v0

    aput-object p2, v4, v1

    invoke-static {v2, v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    move v0, v1

    .line 60
    goto :goto_0

    .line 62
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/oneplus/cache/LruCache;->add(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 100
    .local p0, "this":Lcom/oneplus/cache/AsyncLruCache;, "Lcom/oneplus/cache/AsyncLruCache<TTKey;TTValue;>;"
    invoke-direct {p0}, Lcom/oneplus/cache/AsyncLruCache;->checkWorkerThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    :goto_0
    return-void

    .line 102
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/cache/AsyncLruCache;->isWorkerThread()Z

    move-result v0

    if-nez v0, :cond_1

    .line 103
    iget-object v0, p0, Lcom/oneplus/cache/AsyncLruCache;->m_WorkerThreadHandler:Landroid/os/Handler;

    const/16 v1, -0x2714

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 105
    :cond_1
    invoke-super {p0}, Lcom/oneplus/cache/LruCache;->clear()V

    goto :goto_0
.end method

.method public close()V
    .locals 3

    .prologue
    .line 113
    .local p0, "this":Lcom/oneplus/cache/AsyncLruCache;, "Lcom/oneplus/cache/AsyncLruCache<TTKey;TTValue;>;"
    iget-object v1, p0, Lcom/oneplus/cache/AsyncLruCache;->syncLock:Ljava/lang/Object;

    monitor-enter v1

    .line 116
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/cache/AsyncLruCache;->m_WorkerThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/oneplus/cache/AsyncLruCache;->m_WorkerThreadHandler:Landroid/os/Handler;

    const/16 v2, -0x2710

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 119
    iget-object v0, p0, Lcom/oneplus/cache/AsyncLruCache;->m_WorkerThreadHandler:Landroid/os/Handler;

    const/16 v2, -0x2711

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/cache/AsyncLruCache;->m_WorkerThreadHandler:Landroid/os/Handler;

    .line 121
    iget-object v0, p0, Lcom/oneplus/cache/AsyncLruCache;->m_WorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/cache/AsyncLruCache;->m_WorkerThread:Landroid/os/HandlerThread;

    .line 126
    :cond_0
    invoke-super {p0}, Lcom/oneplus/cache/LruCache;->close()V

    .line 127
    monitor-exit v1

    .line 128
    return-void

    .line 127
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
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

    .line 136
    if-nez p1, :cond_1

    .line 138
    iget-object v3, p0, Lcom/oneplus/cache/AsyncLruCache;->TAG:Ljava/lang/String;

    const-string v4, "get() - No key"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    .end local p2    # "defaultValue":Ljava/lang/Object;, "TTValue;"
    :cond_0
    :goto_0
    return-object p2

    .line 141
    .restart local p2    # "defaultValue":Ljava/lang/Object;, "TTValue;"
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/cache/AsyncLruCache;->checkWorkerThread()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 143
    new-instance v1, Lcom/oneplus/base/SimpleRef;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/oneplus/base/SimpleRef;-><init>(Ljava/lang/Object;)V

    .line 144
    .local v1, "isCancelled":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Boolean;>;"
    invoke-virtual {p0}, Lcom/oneplus/cache/AsyncLruCache;->isWorkerThread()Z

    move-result v3

    if-nez v3, :cond_3

    .line 146
    cmp-long v3, p3, v6

    if-eqz v3, :cond_0

    .line 148
    monitor-enter v1

    .line 150
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

    .line 151
    .local v2, "params":[Ljava/lang/Object;
    iget-object v3, p0, Lcom/oneplus/cache/AsyncLruCache;->m_WorkerThreadHandler:Landroid/os/Handler;

    const/16 v4, -0x2711

    invoke-static {v3, v4, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    cmp-long v3, p3, v6

    if-gez v3, :cond_2

    .line 155
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 164
    :goto_1
    const/4 v3, 0x1

    :try_start_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/oneplus/base/Ref;->set(Ljava/lang/Object;)V

    .line 165
    const/4 v3, 0x3

    aget-object p2, v2, v3

    .end local p2    # "defaultValue":Ljava/lang/Object;, "TTValue;"
    monitor-exit v1

    goto :goto_0

    .line 166
    .end local v2    # "params":[Ljava/lang/Object;
    :catchall_0
    move-exception v3

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 157
    .restart local v2    # "params":[Ljava/lang/Object;
    .restart local p2    # "defaultValue":Ljava/lang/Object;, "TTValue;"
    :cond_2
    :try_start_3
    invoke-virtual {v1, p3, p4}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 159
    :catch_0
    move-exception v0

    .line 161
    .local v0, "ex":Ljava/lang/InterruptedException;
    const/4 v3, 0x1

    :try_start_4
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/oneplus/base/Ref;->set(Ljava/lang/Object;)V

    .line 162
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 168
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    .end local v2    # "params":[Ljava/lang/Object;
    :cond_3
    invoke-super {p0, p1, p2, p3, p4}, Lcom/oneplus/cache/LruCache;->get(Ljava/lang/Object;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0
.end method

.method protected final getWorkerThreadHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 178
    .local p0, "this":Lcom/oneplus/cache/AsyncLruCache;, "Lcom/oneplus/cache/AsyncLruCache<TTKey;TTValue;>;"
    invoke-direct {p0}, Lcom/oneplus/cache/AsyncLruCache;->checkWorkerThread()Z

    .line 179
    iget-object v0, p0, Lcom/oneplus/cache/AsyncLruCache;->m_WorkerThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method protected handleWorkerThreadMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .local p0, "this":Lcom/oneplus/cache/AsyncLruCache;, "Lcom/oneplus/cache/AsyncLruCache<TTKey;TTValue;>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 190
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 194
    :pswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    move-object v1, v2

    check-cast v1, [Ljava/lang/Object;

    .line 195
    .local v1, "params":[Ljava/lang/Object;
    aget-object v2, v1, v3

    aget-object v3, v1, v4

    invoke-super {p0, v2, v3}, Lcom/oneplus/cache/LruCache;->add(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 201
    .end local v1    # "params":[Ljava/lang/Object;
    :pswitch_1
    invoke-super {p0}, Lcom/oneplus/cache/LruCache;->clear()V

    goto :goto_0

    .line 207
    :pswitch_2
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    move-object v1, v2

    check-cast v1, [Ljava/lang/Object;

    .line 208
    .restart local v1    # "params":[Ljava/lang/Object;
    const/4 v2, 0x2

    aget-object v0, v1, v2

    check-cast v0, Lcom/oneplus/base/Ref;

    .line 209
    .local v0, "isCancelled":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Boolean;>;"
    invoke-interface {v0}, Lcom/oneplus/base/Ref;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    .line 211
    const/4 v2, 0x3

    aget-object v3, v1, v3

    aget-object v4, v1, v4

    const-wide/16 v6, -0x1

    invoke-super {p0, v3, v4, v6, v7}, Lcom/oneplus/cache/LruCache;->get(Ljava/lang/Object;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    .line 212
    monitor-enter v0

    .line 214
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 215
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 222
    .end local v0    # "isCancelled":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Boolean;>;"
    .end local v1    # "params":[Ljava/lang/Object;
    :pswitch_3
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-super {p0, v2}, Lcom/oneplus/cache/LruCache;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 228
    :pswitch_4
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/oneplus/cache/Cache$RemovingPredication;

    invoke-super {p0, v2}, Lcom/oneplus/cache/LruCache;->remove(Lcom/oneplus/cache/Cache$RemovingPredication;)V

    goto :goto_0

    .line 190
    nop

    :pswitch_data_0
    .packed-switch -0x2714
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method protected final isWorkerThread()Z
    .locals 2

    .prologue
    .line 241
    .local p0, "this":Lcom/oneplus/cache/AsyncLruCache;, "Lcom/oneplus/cache/AsyncLruCache<TTKey;TTValue;>;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/cache/AsyncLruCache;->m_WorkerThread:Landroid/os/HandlerThread;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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
    .line 266
    .local p0, "this":Lcom/oneplus/cache/AsyncLruCache;, "Lcom/oneplus/cache/AsyncLruCache<TTKey;TTValue;>;"
    .local p1, "predication":Lcom/oneplus/cache/Cache$RemovingPredication;, "Lcom/oneplus/cache/Cache$RemovingPredication<TTKey;>;"
    if-nez p1, :cond_1

    .line 276
    :cond_0
    :goto_0
    return-void

    .line 268
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/cache/AsyncLruCache;->checkWorkerThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    invoke-virtual {p0}, Lcom/oneplus/cache/AsyncLruCache;->isWorkerThread()Z

    move-result v0

    if-nez v0, :cond_2

    .line 272
    iget-object v0, p0, Lcom/oneplus/cache/AsyncLruCache;->m_WorkerThreadHandler:Landroid/os/Handler;

    const/16 v1, -0x2713

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 275
    :cond_2
    invoke-super {p0, p1}, Lcom/oneplus/cache/LruCache;->remove(Lcom/oneplus/cache/Cache$RemovingPredication;)V

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTKey;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/oneplus/cache/AsyncLruCache;, "Lcom/oneplus/cache/AsyncLruCache<TTKey;TTValue;>;"
    .local p1, "key":Ljava/lang/Object;, "TTKey;"
    const/4 v0, 0x0

    .line 249
    if-nez p1, :cond_1

    .line 258
    :cond_0
    :goto_0
    return v0

    .line 251
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/cache/AsyncLruCache;->checkWorkerThread()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 253
    invoke-virtual {p0}, Lcom/oneplus/cache/AsyncLruCache;->isWorkerThread()Z

    move-result v0

    if-nez v0, :cond_2

    .line 255
    iget-object v0, p0, Lcom/oneplus/cache/AsyncLruCache;->m_WorkerThreadHandler:Landroid/os/Handler;

    const/16 v1, -0x2712

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 256
    const/4 v0, 0x1

    goto :goto_0

    .line 258
    :cond_2
    invoke-super {p0, p1}, Lcom/oneplus/cache/LruCache;->remove(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method
