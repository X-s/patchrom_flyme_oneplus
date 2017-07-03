.class public final Lcom/oneplus/gallery2/MediaContentThread;
.super Lcom/oneplus/base/BaseThread;
.source "MediaContentThread.java"


# static fields
.field private static volatile m_Current:Lcom/oneplus/gallery2/MediaContentThread;

.field private static final m_StartLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/oneplus/gallery2/MediaContentThread;->m_StartLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 22
    const-string v0, "Media content thread"

    invoke-direct {p0, v0, v1, v1}, Lcom/oneplus/base/BaseThread;-><init>(Ljava/lang/String;Lcom/oneplus/base/BaseThread$ThreadStartCallback;Landroid/os/Handler;)V

    .line 23
    return-void
.end method

.method public static current()Lcom/oneplus/gallery2/MediaContentThread;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/oneplus/gallery2/MediaContentThread;->m_Current:Lcom/oneplus/gallery2/MediaContentThread;

    return-object v0
.end method

.method public static startSync()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 168
    sget-object v2, Lcom/oneplus/gallery2/MediaContentThread;->m_StartLock:Ljava/lang/Object;

    monitor-enter v2

    .line 170
    :try_start_0
    sget-object v1, Lcom/oneplus/gallery2/MediaContentThread;->m_Current:Lcom/oneplus/gallery2/MediaContentThread;

    if-eqz v1, :cond_0

    .line 171
    monitor-exit v2

    .line 178
    .local v0, "thread":Lcom/oneplus/gallery2/MediaContentThread;
    :goto_0
    return-void

    .line 172
    .end local v0    # "thread":Lcom/oneplus/gallery2/MediaContentThread;
    :cond_0
    const-string v1, "MediaContentThread"

    const-string v3, "startSync()"

    invoke-static {v1, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    new-instance v0, Lcom/oneplus/gallery2/MediaContentThread;

    invoke-direct {v0}, Lcom/oneplus/gallery2/MediaContentThread;-><init>()V

    .line 174
    .restart local v0    # "thread":Lcom/oneplus/gallery2/MediaContentThread;
    invoke-virtual {v0}, Lcom/oneplus/gallery2/MediaContentThread;->start()V

    .line 175
    sget-object v1, Lcom/oneplus/gallery2/MediaContentThread;->m_StartLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 176
    sput-object v0, Lcom/oneplus/gallery2/MediaContentThread;->m_Current:Lcom/oneplus/gallery2/MediaContentThread;

    .line 177
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public invoke(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 99
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    if-nez p1, :cond_0

    .line 100
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "No callable to call"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 103
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/oneplus/gallery2/MediaContentThread;->isDependencyThread()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 104
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v2

    .line 133
    :goto_0
    return-object v2

    .line 107
    :cond_1
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/Object;

    .line 108
    .local v1, "resultArray":[Ljava/lang/Object;
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 110
    :try_start_1
    new-instance v2, Lcom/oneplus/gallery2/MediaContentThread$2;

    invoke-direct {v2, p0, v1, p1}, Lcom/oneplus/gallery2/MediaContentThread$2;-><init>(Lcom/oneplus/gallery2/MediaContentThread;[Ljava/lang/Object;Ljava/util/concurrent/Callable;)V

    invoke-static {p0, v2}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 130
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 131
    const/4 v2, 0x1

    aget-object v2, v1, v2

    if-eqz v2, :cond_2

    .line 132
    const/4 v2, 0x1

    aget-object v2, v1, v2

    check-cast v2, Ljava/lang/Exception;

    throw v2

    .line 137
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 140
    .end local v1    # "resultArray":[Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 142
    .local v0, "ex":Ljava/lang/Exception;
    :goto_1
    throw v0

    .line 133
    .end local v0    # "ex":Ljava/lang/Exception;
    .restart local v1    # "resultArray":[Ljava/lang/Object;
    :cond_2
    const/4 v2, 0x0

    :try_start_3
    aget-object v2, v1, v2

    monitor-exit v1

    goto :goto_0

    .line 136
    :cond_3
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Fail to post to content thread"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 144
    .end local v1    # "resultArray":[Ljava/lang/Object;
    :catch_1
    move-exception v0

    .line 146
    .restart local v0    # "ex":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Unhandled error"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 140
    .end local v0    # "ex":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method public invoke(Ljava/lang/Runnable;J)Z
    .locals 8
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "timeoutMillis"    # J

    .prologue
    const-wide/16 v6, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 44
    if-nez p1, :cond_0

    .line 45
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "No runnable to call"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 46
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/gallery2/MediaContentThread;->isDependencyThread()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 48
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 86
    :goto_0
    return v2

    .line 51
    :cond_1
    cmp-long v4, p2, v6

    if-nez v4, :cond_2

    .line 53
    invoke-static {p0, p1}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    move v2, v3

    .line 54
    goto :goto_0

    .line 56
    :cond_2
    new-array v1, v2, [Z

    .line 57
    .local v1, "result":[Z
    monitor-enter v1

    .line 59
    :try_start_0
    new-instance v2, Lcom/oneplus/gallery2/MediaContentThread$1;

    invoke-direct {v2, p0, p1, v1}, Lcom/oneplus/gallery2/MediaContentThread$1;-><init>(Lcom/oneplus/gallery2/MediaContentThread;Ljava/lang/Runnable;[Z)V

    invoke-static {p0, v2}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_4

    .line 75
    cmp-long v2, p2, v6

    if-gez v2, :cond_3

    .line 76
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 79
    :goto_1
    const/4 v2, 0x0

    aget-boolean v2, v1, v2
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v1

    goto :goto_0

    .line 87
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 78
    :cond_3
    :try_start_3
    invoke-virtual {v1, p2, p3}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 81
    :catch_0
    move-exception v0

    .line 83
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_4
    monitor-exit v1

    move v2, v3

    goto :goto_0

    .line 86
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :cond_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move v2, v3

    goto :goto_0
.end method

.method protected onStarted()V
    .locals 2

    .prologue
    .line 155
    invoke-super {p0}, Lcom/oneplus/base/BaseThread;->onStarted()V

    .line 156
    sget-object v1, Lcom/oneplus/gallery2/MediaContentThread;->m_StartLock:Ljava/lang/Object;

    monitor-enter v1

    .line 158
    :try_start_0
    sget-object v0, Lcom/oneplus/gallery2/MediaContentThread;->m_StartLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 159
    monitor-exit v1

    .line 160
    return-void

    .line 159
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
