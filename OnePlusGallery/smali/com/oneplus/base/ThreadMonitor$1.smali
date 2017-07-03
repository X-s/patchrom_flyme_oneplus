.class Lcom/oneplus/base/ThreadMonitor$1;
.super Ljava/lang/Object;
.source "ThreadMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/base/ThreadMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 55
    # getter for: Lcom/oneplus/base/ThreadMonitor;->m_CurrentThreadInfo:Ljava/lang/ThreadLocal;
    invoke-static {}, Lcom/oneplus/base/ThreadMonitor;->access$0()Ljava/lang/ThreadLocal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/base/ThreadMonitor$ThreadInfo;

    .line 56
    .local v0, "threadInfo":Lcom/oneplus/base/ThreadMonitor$ThreadInfo;
    if-nez v0, :cond_0

    .line 68
    :goto_0
    return-void

    .line 58
    :cond_0
    monitor-enter v0

    .line 60
    :try_start_0
    iget v1, v0, Lcom/oneplus/base/ThreadMonitor$ThreadInfo;->pendingResponseCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/oneplus/base/ThreadMonitor$ThreadInfo;->pendingResponseCount:I

    .line 61
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/oneplus/base/ThreadMonitor$ThreadInfo;->lastResponseTime:J

    .line 62
    iget-boolean v1, v0, Lcom/oneplus/base/ThreadMonitor$ThreadInfo;->notResponding:Z

    if-eqz v1, :cond_1

    iget v1, v0, Lcom/oneplus/base/ThreadMonitor$ThreadInfo;->pendingResponseCount:I

    if-gtz v1, :cond_1

    .line 64
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/oneplus/base/ThreadMonitor$ThreadInfo;->notResponding:Z

    .line 65
    const-string v1, "ThreadMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Get response from thread \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/oneplus/base/ThreadMonitor$ThreadInfo;->thread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/oneplus/base/ThreadMonitor$ThreadInfo;->threadId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
