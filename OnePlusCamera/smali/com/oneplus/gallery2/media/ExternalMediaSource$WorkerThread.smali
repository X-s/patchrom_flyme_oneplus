.class public Lcom/oneplus/gallery2/media/ExternalMediaSource$WorkerThread;
.super Lcom/oneplus/base/BaseThread;
.source "ExternalMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/media/ExternalMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WorkerThread"
.end annotation


# instance fields
.field private final m_StartLock:Ljava/lang/Object;

.field final synthetic this$0:Lcom/oneplus/gallery2/media/ExternalMediaSource;


# direct methods
.method public constructor <init>(Lcom/oneplus/gallery2/media/ExternalMediaSource;Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 70
    iput-object p1, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource$WorkerThread;->this$0:Lcom/oneplus/gallery2/media/ExternalMediaSource;

    .line 71
    invoke-direct {p0, p2, v0, v0}, Lcom/oneplus/base/BaseThread;-><init>(Ljava/lang/String;Lcom/oneplus/base/BaseThread$ThreadStartCallback;Landroid/os/Handler;)V

    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource$WorkerThread;->m_StartLock:Ljava/lang/Object;

    .line 72
    return-void
.end method


# virtual methods
.method protected handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource$WorkerThread;->this$0:Lcom/oneplus/gallery2/media/ExternalMediaSource;

    invoke-virtual {v0, p1}, Lcom/oneplus/gallery2/media/ExternalMediaSource;->handleWorkerThreadMessage(Landroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    :goto_0
    return-void

    .line 79
    :cond_0
    invoke-super {p0, p1}, Lcom/oneplus/base/BaseThread;->handleMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method protected onStarted()V
    .locals 2

    .prologue
    .line 86
    invoke-super {p0}, Lcom/oneplus/base/BaseThread;->onStarted()V

    .line 87
    iget-object v1, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource$WorkerThread;->m_StartLock:Ljava/lang/Object;

    monitor-enter v1

    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource$WorkerThread;->m_StartLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 87
    monitor-exit v1

    .line 91
    return-void

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final startSync()V
    .locals 3

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/ExternalMediaSource$WorkerThread;->start()V

    .line 97
    iget-object v1, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource$WorkerThread;->m_StartLock:Ljava/lang/Object;

    monitor-enter v1

    .line 101
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource$WorkerThread;->m_StartLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    :try_start_1
    monitor-exit v1

    .line 108
    return-void

    .line 102
    :catch_0
    move-exception v0

    .line 105
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
