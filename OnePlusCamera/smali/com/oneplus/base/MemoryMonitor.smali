.class public final Lcom/oneplus/base/MemoryMonitor;
.super Ljava/lang/Object;
.source "MemoryMonitor.java"


# static fields
.field private static final DURATION_MONITOR_DANGEROUS:J = 0x1f4L

.field private static final DURATION_MONITOR_HIGH_RISK:J = 0x3e8L

.field private static final DURATION_MONITOR_NORMAL:J = 0xbb8L

.field private static final DURATION_MONITOR_WARNING:J = 0x7d0L

.field private static final MEMORY_STATE_DANGEROUS:I = 0x3

.field private static final MEMORY_STATE_HIGH_RISK:I = 0x2

.field private static final MEMORY_STATE_NORMAL:I = 0x0

.field private static final MEMORY_STATE_WARNING:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MemoryMonitor"

.field private static volatile m_DangerousThreshold:J

.field private static volatile m_HighRiskThreshold:J

.field private static m_MemoryState:I

.field private static volatile m_MonitorThread:Ljava/lang/Thread;

.field private static m_Runtime:Ljava/lang/Runtime;

.field private static volatile m_WarningThreshold:J


# direct methods
.method static synthetic -wrap0()V
    .locals 0

    invoke-static {}, Lcom/oneplus/base/MemoryMonitor;->monitorProc()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    sput v0, Lcom/oneplus/base/MemoryMonitor;->m_MemoryState:I

    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkMemory()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 39
    sget-object v6, Lcom/oneplus/base/MemoryMonitor;->m_Runtime:Ljava/lang/Runtime;

    invoke-virtual {v6}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v4

    .line 40
    .local v4, "total":J
    sget-object v6, Lcom/oneplus/base/MemoryMonitor;->m_Runtime:Ljava/lang/Runtime;

    invoke-virtual {v6}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v2

    .line 41
    .local v2, "free":J
    sub-long v0, v4, v2

    .line 42
    .local v0, "allocated":J
    sget-wide v6, Lcom/oneplus/base/MemoryMonitor;->m_DangerousThreshold:J

    cmp-long v6, v0, v6

    if-ltz v6, :cond_0

    .line 44
    const-string/jumbo v6, "MemoryMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[DANGEROUS] "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0, v1}, Lcom/oneplus/io/FileUtils;->getFileSizeDescription(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const/4 v6, 0x3

    sput v6, Lcom/oneplus/base/MemoryMonitor;->m_MemoryState:I

    .line 37
    :goto_0
    return-void

    .line 47
    :cond_0
    sget-wide v6, Lcom/oneplus/base/MemoryMonitor;->m_HighRiskThreshold:J

    cmp-long v6, v0, v6

    if-ltz v6, :cond_1

    .line 49
    const-string/jumbo v6, "MemoryMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[HIGH-RISK] "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0, v1}, Lcom/oneplus/io/FileUtils;->getFileSizeDescription(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const/4 v6, 0x2

    sput v6, Lcom/oneplus/base/MemoryMonitor;->m_MemoryState:I

    goto :goto_0

    .line 52
    :cond_1
    sget-wide v6, Lcom/oneplus/base/MemoryMonitor;->m_WarningThreshold:J

    cmp-long v6, v0, v6

    if-ltz v6, :cond_2

    .line 54
    const-string/jumbo v6, "MemoryMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[WARNING] "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0, v1}, Lcom/oneplus/io/FileUtils;->getFileSizeDescription(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const/4 v6, 0x1

    sput v6, Lcom/oneplus/base/MemoryMonitor;->m_MemoryState:I

    goto :goto_0

    .line 59
    :cond_2
    sget v6, Lcom/oneplus/base/MemoryMonitor;->m_MemoryState:I

    if-eqz v6, :cond_3

    .line 60
    const-string/jumbo v6, "MemoryMonitor"

    const-string/jumbo v7, "Memory state becomes normal"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    :cond_3
    sput v8, Lcom/oneplus/base/MemoryMonitor;->m_MemoryState:I

    goto :goto_0
.end method

.method private static monitorProc()V
    .locals 6

    .prologue
    .line 71
    :try_start_0
    const-string/jumbo v4, "MemoryMonitor"

    const-string/jumbo v5, "Monitor started"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    sput-object v4, Lcom/oneplus/base/MemoryMonitor;->m_Runtime:Ljava/lang/Runtime;

    .line 75
    .local v0, "delay":J
    :goto_0
    invoke-static {}, Lcom/oneplus/base/MemoryMonitor;->checkMemory()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 79
    :try_start_1
    sget v4, Lcom/oneplus/base/MemoryMonitor;->m_MemoryState:I

    packed-switch v4, :pswitch_data_0

    .line 91
    const-wide/16 v0, 0xbb8

    .line 94
    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 97
    :catch_0
    move-exception v2

    .local v2, "ex":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 82
    .end local v2    # "ex":Ljava/lang/InterruptedException;
    :pswitch_0
    const-wide/16 v0, 0x7d0

    .line 83
    goto :goto_1

    .line 85
    :pswitch_1
    const-wide/16 v0, 0x3e8

    .line 86
    goto :goto_1

    .line 88
    :pswitch_2
    const-wide/16 v0, 0x1f4

    .line 89
    goto :goto_1

    .line 101
    :catch_1
    move-exception v3

    .line 102
    .local v3, "ex":Ljava/lang/Throwable;
    const-string/jumbo v4, "MemoryMonitor"

    const-string/jumbo v5, "monitorProc() - Unhandled error"

    invoke-static {v4, v5, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 67
    return-void

    .line 79
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static declared-synchronized start(JJJ)V
    .locals 4
    .param p0, "warningThreshold"    # J
    .param p2, "highRiskThreshold"    # J
    .param p4, "dangerousThreshold"    # J

    .prologue
    const-class v1, Lcom/oneplus/base/MemoryMonitor;

    monitor-enter v1

    .line 112
    :try_start_0
    sget-object v0, Lcom/oneplus/base/MemoryMonitor;->m_MonitorThread:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit v1

    .line 113
    return-void

    .line 114
    :cond_0
    :try_start_1
    const-string/jumbo v0, "MemoryMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "start() - Thresholds : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 115
    invoke-static {p0, p1}, Lcom/oneplus/io/FileUtils;->getFileSizeDescription(J)Ljava/lang/String;

    move-result-object v3

    .line 114
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 115
    const-string/jumbo v3, " / "

    .line 114
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 116
    invoke-static {p2, p3}, Lcom/oneplus/io/FileUtils;->getFileSizeDescription(J)Ljava/lang/String;

    move-result-object v3

    .line 114
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 116
    const-string/jumbo v3, " / "

    .line 114
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 117
    invoke-static {p4, p5}, Lcom/oneplus/io/FileUtils;->getFileSizeDescription(J)Ljava/lang/String;

    move-result-object v3

    .line 114
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    sput-wide p0, Lcom/oneplus/base/MemoryMonitor;->m_WarningThreshold:J

    .line 119
    sput-wide p2, Lcom/oneplus/base/MemoryMonitor;->m_HighRiskThreshold:J

    .line 120
    sput-wide p4, Lcom/oneplus/base/MemoryMonitor;->m_DangerousThreshold:J

    .line 121
    new-instance v0, Lcom/oneplus/base/MemoryMonitor$1;

    const-string/jumbo v2, "Memory monitor thread"

    invoke-direct {v0, v2}, Lcom/oneplus/base/MemoryMonitor$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/oneplus/base/MemoryMonitor;->m_MonitorThread:Ljava/lang/Thread;

    .line 129
    sget-object v0, Lcom/oneplus/base/MemoryMonitor;->m_MonitorThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 110
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
