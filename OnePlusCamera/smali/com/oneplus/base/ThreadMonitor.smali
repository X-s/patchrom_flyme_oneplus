.class public final Lcom/oneplus/base/ThreadMonitor;
.super Ljava/lang/Object;
.source "ThreadMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/base/ThreadMonitor$ThreadInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ThreadMonitor"

.field private static final THREAD_CHECK_INTERVAL:J = 0xbb8L

.field private static final m_AllThreadInfos:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/oneplus/base/ThreadMonitor$ThreadInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final m_CurrentThreadInfo:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/oneplus/base/ThreadMonitor$ThreadInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile m_IsPrepared:Z

.field private static volatile m_MonitorThread:Ljava/lang/Thread;

.field private static final m_ResponseCallback:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/oneplus/base/ThreadMonitor;->m_AllThreadInfos:Ljava/util/LinkedList;

    .line 21
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/oneplus/base/ThreadMonitor;->m_CurrentThreadInfo:Ljava/lang/ThreadLocal;

    .line 48
    new-instance v0, Lcom/oneplus/base/ThreadMonitor$1;

    invoke-direct {v0}, Lcom/oneplus/base/ThreadMonitor$1;-><init>()V

    sput-object v0, Lcom/oneplus/base/ThreadMonitor;->m_ResponseCallback:Ljava/lang/Runnable;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/ThreadLocal;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/oneplus/base/ThreadMonitor;->m_CurrentThreadInfo:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic access$100()V
    .locals 0

    .prologue
    .line 12
    invoke-static {}, Lcom/oneplus/base/ThreadMonitor;->threadMonitorProc()V

    return-void
.end method

.method public static declared-synchronized prepare()V
    .locals 3

    .prologue
    .line 79
    const-class v1, Lcom/oneplus/base/ThreadMonitor;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/oneplus/base/ThreadMonitor;->m_IsPrepared:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 96
    :goto_0
    monitor-exit v1

    return-void

    .line 82
    :cond_0
    :try_start_1
    const-string v0, "ThreadMonitor"

    const-string v2, "prepare()"

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/oneplus/base/ThreadMonitor$2;

    invoke-direct {v2}, Lcom/oneplus/base/ThreadMonitor$2;-><init>()V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v0, Lcom/oneplus/base/ThreadMonitor;->m_MonitorThread:Ljava/lang/Thread;

    .line 93
    sget-object v0, Lcom/oneplus/base/ThreadMonitor;->m_MonitorThread:Ljava/lang/Thread;

    const-string v2, "Thread monitor"

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 94
    sget-object v0, Lcom/oneplus/base/ThreadMonitor;->m_MonitorThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 95
    const/4 v0, 0x1

    sput-boolean v0, Lcom/oneplus/base/ThreadMonitor;->m_IsPrepared:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static printThreadBlockedLogs(Lcom/oneplus/base/ThreadMonitor$ThreadInfo;)V
    .locals 12
    .param p0, "threadInfo"    # Lcom/oneplus/base/ThreadMonitor$ThreadInfo;

    .prologue
    .line 103
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/oneplus/base/ThreadMonitor$ThreadInfo;->lastResponseTime:J

    sub-long v0, v4, v6

    .line 106
    .local v0, "duration":J
    const-string v4, "ThreadMonitor"

    const-string v5, "Thread \'%s\' (%d) is not responding, last response time is %.2f seconds ago. Stack trace :"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/oneplus/base/ThreadMonitor$ThreadInfo;->thread:Ljava/lang/Thread;

    invoke-virtual {v8}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget v8, p0, Lcom/oneplus/base/ThreadMonitor$ThreadInfo;->threadId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    long-to-double v8, v0

    const-wide v10, 0x408f400000000000L    # 1000.0

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v4, p0, Lcom/oneplus/base/ThreadMonitor$ThreadInfo;->thread:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    .line 110
    .local v3, "stackTrace":[Ljava/lang/StackTraceElement;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v3

    if-ge v2, v4, :cond_0

    .line 111
    const-string v4, "ThreadMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v2

    invoke-static {v6}, Lcom/oneplus/base/Log;->formatStackTraceElement(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 112
    :cond_0
    return-void
.end method

.method public static declared-synchronized release()V
    .locals 3

    .prologue
    .line 121
    const-class v1, Lcom/oneplus/base/ThreadMonitor;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/oneplus/base/ThreadMonitor;->m_IsPrepared:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 136
    :goto_0
    monitor-exit v1

    return-void

    .line 124
    :cond_0
    :try_start_1
    const-string v0, "ThreadMonitor"

    const-string v2, "release()"

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    sget-object v0, Lcom/oneplus/base/ThreadMonitor;->m_MonitorThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    .line 129
    sget-object v0, Lcom/oneplus/base/ThreadMonitor;->m_MonitorThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 130
    const/4 v0, 0x0

    sput-object v0, Lcom/oneplus/base/ThreadMonitor;->m_MonitorThread:Ljava/lang/Thread;

    .line 134
    :cond_1
    sget-object v0, Lcom/oneplus/base/ThreadMonitor;->m_AllThreadInfos:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 135
    const/4 v0, 0x0

    sput-boolean v0, Lcom/oneplus/base/ThreadMonitor;->m_IsPrepared:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized startMonitorCurrentThread()V
    .locals 5

    .prologue
    .line 145
    const-class v2, Lcom/oneplus/base/ThreadMonitor;

    monitor-enter v2

    :try_start_0
    sget-boolean v1, Lcom/oneplus/base/ThreadMonitor;->m_IsPrepared:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 156
    .local v0, "threadInfo":Lcom/oneplus/base/ThreadMonitor$ThreadInfo;
    :cond_0
    :goto_0
    monitor-exit v2

    return-void

    .line 147
    .end local v0    # "threadInfo":Lcom/oneplus/base/ThreadMonitor$ThreadInfo;
    :cond_1
    :try_start_1
    sget-object v1, Lcom/oneplus/base/ThreadMonitor;->m_CurrentThreadInfo:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/base/ThreadMonitor$ThreadInfo;

    .line 148
    .restart local v0    # "threadInfo":Lcom/oneplus/base/ThreadMonitor$ThreadInfo;
    if-nez v0, :cond_0

    .line 152
    new-instance v0, Lcom/oneplus/base/ThreadMonitor$ThreadInfo;

    .end local v0    # "threadInfo":Lcom/oneplus/base/ThreadMonitor$ThreadInfo;
    invoke-direct {v0}, Lcom/oneplus/base/ThreadMonitor$ThreadInfo;-><init>()V

    .line 153
    .restart local v0    # "threadInfo":Lcom/oneplus/base/ThreadMonitor$ThreadInfo;
    sget-object v1, Lcom/oneplus/base/ThreadMonitor;->m_AllThreadInfos:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 155
    const-string v1, "ThreadMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Start monitor \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/oneplus/base/ThreadMonitor$ThreadInfo;->thread:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/oneplus/base/ThreadMonitor$ThreadInfo;->threadId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 145
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized stopMonitorCurrentThread()V
    .locals 5

    .prologue
    .line 165
    const-class v2, Lcom/oneplus/base/ThreadMonitor;

    monitor-enter v2

    :try_start_0
    sget-boolean v1, Lcom/oneplus/base/ThreadMonitor;->m_IsPrepared:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 175
    .local v0, "threadInfo":Lcom/oneplus/base/ThreadMonitor$ThreadInfo;
    :cond_0
    :goto_0
    monitor-exit v2

    return-void

    .line 169
    .end local v0    # "threadInfo":Lcom/oneplus/base/ThreadMonitor$ThreadInfo;
    :cond_1
    :try_start_1
    sget-object v1, Lcom/oneplus/base/ThreadMonitor;->m_CurrentThreadInfo:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/base/ThreadMonitor$ThreadInfo;

    .line 170
    .restart local v0    # "threadInfo":Lcom/oneplus/base/ThreadMonitor$ThreadInfo;
    if-eqz v0, :cond_0

    .line 172
    sget-object v1, Lcom/oneplus/base/ThreadMonitor;->m_AllThreadInfos:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 174
    const-string v1, "ThreadMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stop monitor \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/oneplus/base/ThreadMonitor$ThreadInfo;->thread:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/oneplus/base/ThreadMonitor$ThreadInfo;->threadId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 165
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static threadMonitorProc()V
    .locals 5

    .prologue
    .line 181
    const-string v2, "ThreadMonitor"

    const-string v3, "***** Monitor thread start *****"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    .local v0, "i":I
    :goto_0
    :try_start_0
    const-class v3, Lcom/oneplus/base/ThreadMonitor;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 188
    :try_start_1
    sget-object v2, Lcom/oneplus/base/ThreadMonitor;->m_AllThreadInfos:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_1
    if-ltz v0, :cond_1

    .line 191
    sget-object v2, Lcom/oneplus/base/ThreadMonitor;->m_AllThreadInfos:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/base/ThreadMonitor$ThreadInfo;

    .line 192
    .local v1, "threadInfo":Lcom/oneplus/base/ThreadMonitor$ThreadInfo;
    iget v2, v1, Lcom/oneplus/base/ThreadMonitor$ThreadInfo;->pendingResponseCount:I

    if-lez v2, :cond_0

    .line 194
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/oneplus/base/ThreadMonitor$ThreadInfo;->notResponding:Z

    .line 195
    invoke-static {v1}, Lcom/oneplus/base/ThreadMonitor;->printThreadBlockedLogs(Lcom/oneplus/base/ThreadMonitor$ThreadInfo;)V

    .line 188
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 200
    :cond_0
    iget-object v2, v1, Lcom/oneplus/base/ThreadMonitor$ThreadInfo;->handler:Landroid/os/Handler;

    sget-object v4, Lcom/oneplus/base/ThreadMonitor;->m_ResponseCallback:Ljava/lang/Runnable;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 201
    iget v2, v1, Lcom/oneplus/base/ThreadMonitor$ThreadInfo;->pendingResponseCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/oneplus/base/ThreadMonitor$ThreadInfo;->pendingResponseCount:I

    goto :goto_2

    .line 203
    .end local v1    # "threadInfo":Lcom/oneplus/base/ThreadMonitor$ThreadInfo;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 207
    :catch_0
    move-exception v2

    .line 211
    const-string v2, "ThreadMonitor"

    const-string v3, "***** Monitor thread stop *****"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    return-void

    .line 203
    :cond_1
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 204
    const-wide/16 v2, 0xbb8

    :try_start_4
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    .line 211
    :catchall_1
    move-exception v2

    const-string v3, "ThreadMonitor"

    const-string v4, "***** Monitor thread stop *****"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    throw v2
.end method
