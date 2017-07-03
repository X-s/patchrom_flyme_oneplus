.class final Lcom/oneplus/base/ThreadMonitor$ThreadInfo;
.super Ljava/lang/Object;
.source "ThreadMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/base/ThreadMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ThreadInfo"
.end annotation


# instance fields
.field public final activeHandles:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/oneplus/base/ThreadMonitor$ThreadMonitorHandle;",
            ">;"
        }
    .end annotation
.end field

.field public final handler:Landroid/os/Handler;

.field public volatile lastResponseTime:J

.field public volatile notResponding:Z

.field public volatile pendingResponseCount:I

.field public final thread:Ljava/lang/Thread;

.field public final threadId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/base/ThreadMonitor$ThreadInfo;->activeHandles:Ljava/util/LinkedList;

    .line 40
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/base/ThreadMonitor$ThreadInfo;->thread:Ljava/lang/Thread;

    .line 41
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    iput v0, p0, Lcom/oneplus/base/ThreadMonitor$ThreadInfo;->threadId:I

    .line 42
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oneplus/base/ThreadMonitor$ThreadInfo;->handler:Landroid/os/Handler;

    .line 43
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oneplus/base/ThreadMonitor$ThreadInfo;->lastResponseTime:J

    .line 44
    # getter for: Lcom/oneplus/base/ThreadMonitor;->m_CurrentThreadInfo:Ljava/lang/ThreadLocal;
    invoke-static {}, Lcom/oneplus/base/ThreadMonitor;->access$0()Ljava/lang/ThreadLocal;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 45
    return-void
.end method
