.class final Lcom/oneplus/gallery2/media/ExternalMediaSource$SyncRunnable;
.super Ljava/lang/Object;
.source "ExternalMediaSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/media/ExternalMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SyncRunnable"
.end annotation


# instance fields
.field private final m_Action:Ljava/lang/Runnable;

.field private volatile m_Error:Ljava/lang/Throwable;

.field private volatile m_IsRun:Z


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput-object p1, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource$SyncRunnable;->m_Action:Ljava/lang/Runnable;

    .line 124
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 132
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource$SyncRunnable;->m_Action:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :goto_0
    monitor-enter p0

    .line 140
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource$SyncRunnable;->m_IsRun:Z

    .line 141
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 138
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 143
    return-void

    .line 133
    :catch_0
    move-exception v0

    .line 136
    iput-object v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource$SyncRunnable;->m_Error:Ljava/lang/Throwable;

    goto :goto_0

    .line 138
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public declared-synchronized waitForCompletion()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 148
    :try_start_0
    iget-boolean v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource$SyncRunnable;->m_IsRun:Z

    if-eqz v0, :cond_0

    .line 150
    :goto_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource$SyncRunnable;->m_Error:Ljava/lang/Throwable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    monitor-exit p0

    .line 152
    return-void

    .line 149
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 151
    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/reflect/InvocationTargetException;

    iget-object v1, p0, Lcom/oneplus/gallery2/media/ExternalMediaSource$SyncRunnable;->m_Error:Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Ljava/lang/reflect/InvocationTargetException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method
