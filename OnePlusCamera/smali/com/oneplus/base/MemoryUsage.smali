.class public Lcom/oneplus/base/MemoryUsage;
.super Ljava/lang/Object;
.source "MemoryUsage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/base/MemoryUsage$MemoryUsageHandle;
    }
.end annotation


# static fields
.field private static final SYNC_OBJ:Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final m_MaxMemoryUsageBytes:J

.field private final m_MemoryUsageHandles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/base/MemoryUsage$MemoryUsageHandle;",
            ">;"
        }
    .end annotation
.end field

.field private volatile m_TotalMemoryUsage:J

.field private final m_WaitingMemoryUsageHandles:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Lcom/oneplus/base/MemoryUsage;Lcom/oneplus/base/MemoryUsage$MemoryUsageHandle;)V
    .locals 0
    .param p1, "handle"    # Lcom/oneplus/base/MemoryUsage$MemoryUsageHandle;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/base/MemoryUsage;->releaseMemoryUsage(Lcom/oneplus/base/MemoryUsage$MemoryUsageHandle;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/oneplus/base/MemoryUsage;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/base/MemoryUsage;->TAG:Ljava/lang/String;

    .line 13
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/oneplus/base/MemoryUsage;->SYNC_OBJ:Ljava/lang/Object;

    .line 9
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .param p1, "maxMemoryUsageBytes"    # J

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/base/MemoryUsage;->m_MemoryUsageHandles:Ljava/util/List;

    .line 20
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/base/MemoryUsage;->m_WaitingMemoryUsageHandles:Ljava/util/LinkedList;

    .line 53
    iput-wide p1, p0, Lcom/oneplus/base/MemoryUsage;->m_MaxMemoryUsageBytes:J

    .line 51
    return-void
.end method

.method private releaseMemoryUsage(Lcom/oneplus/base/MemoryUsage$MemoryUsageHandle;)V
    .locals 6
    .param p1, "handle"    # Lcom/oneplus/base/MemoryUsage$MemoryUsageHandle;

    .prologue
    .line 70
    sget-object v1, Lcom/oneplus/base/MemoryUsage;->SYNC_OBJ:Ljava/lang/Object;

    monitor-enter v1

    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/base/MemoryUsage;->m_MemoryUsageHandles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 74
    iget-wide v2, p0, Lcom/oneplus/base/MemoryUsage;->m_TotalMemoryUsage:J

    iget-wide v4, p1, Lcom/oneplus/base/MemoryUsage$MemoryUsageHandle;->memoryUsage:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/oneplus/base/MemoryUsage;->m_TotalMemoryUsage:J

    .line 76
    sget-object v0, Lcom/oneplus/base/MemoryUsage;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "releaseMemoryUsage() - Remaining memory usage: "

    iget-wide v4, p0, Lcom/oneplus/base/MemoryUsage;->m_TotalMemoryUsage:J

    invoke-static {v4, v5}, Lcom/oneplus/io/FileUtils;->getFileSizeDescription(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 79
    sget-object v0, Lcom/oneplus/base/MemoryUsage;->SYNC_OBJ:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 68
    return-void

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getCurrentMemoryUsage()J
    .locals 2

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/oneplus/base/MemoryUsage;->m_TotalMemoryUsage:J

    return-wide v0
.end method

.method public requestMemoryUsage(J)Lcom/oneplus/base/Handle;
    .locals 9
    .param p1, "bytes"    # J

    .prologue
    .line 91
    sget-object v3, Lcom/oneplus/base/MemoryUsage;->SYNC_OBJ:Ljava/lang/Object;

    monitor-enter v3

    .line 94
    :try_start_0
    new-instance v1, Lcom/oneplus/base/MemoryUsage$MemoryUsageHandle;

    invoke-direct {v1, p0, p1, p2}, Lcom/oneplus/base/MemoryUsage$MemoryUsageHandle;-><init>(Lcom/oneplus/base/MemoryUsage;J)V

    .line 97
    .local v1, "handle":Lcom/oneplus/base/MemoryUsage$MemoryUsageHandle;
    iget-wide v4, p0, Lcom/oneplus/base/MemoryUsage;->m_TotalMemoryUsage:J

    add-long/2addr v4, p1

    iget-wide v6, p0, Lcom/oneplus/base/MemoryUsage;->m_MaxMemoryUsageBytes:J

    cmp-long v2, v4, v6

    if-lez v2, :cond_1

    .line 100
    iget-object v2, p0, Lcom/oneplus/base/MemoryUsage;->m_WaitingMemoryUsageHandles:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    :cond_0
    :try_start_1
    sget-object v2, Lcom/oneplus/base/MemoryUsage;->SYNC_OBJ:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    :goto_0
    :try_start_2
    iget-object v2, p0, Lcom/oneplus/base/MemoryUsage;->m_WaitingMemoryUsageHandles:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_0

    .line 112
    iget-wide v4, p0, Lcom/oneplus/base/MemoryUsage;->m_TotalMemoryUsage:J

    add-long/2addr v4, p1

    iget-wide v6, p0, Lcom/oneplus/base/MemoryUsage;->m_MaxMemoryUsageBytes:J

    cmp-long v2, v4, v6

    if-gtz v2, :cond_0

    .line 117
    iget-object v2, p0, Lcom/oneplus/base/MemoryUsage;->m_WaitingMemoryUsageHandles:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    .line 121
    :cond_1
    iget-object v2, p0, Lcom/oneplus/base/MemoryUsage;->m_MemoryUsageHandles:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    iget-wide v4, p0, Lcom/oneplus/base/MemoryUsage;->m_TotalMemoryUsage:J

    add-long/2addr v4, p1

    iput-wide v4, p0, Lcom/oneplus/base/MemoryUsage;->m_TotalMemoryUsage:J

    .line 124
    sget-object v2, Lcom/oneplus/base/MemoryUsage;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "requestMemoryUsage() - Total memory usage: "

    iget-wide v6, p0, Lcom/oneplus/base/MemoryUsage;->m_TotalMemoryUsage:J

    invoke-static {v6, v7}, Lcom/oneplus/io/FileUtils;->getFileSizeDescription(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v3

    .line 127
    return-object v1

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    sget-object v2, Lcom/oneplus/base/MemoryUsage;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Error to wait for memory usage"

    invoke-static {v2, v4, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 91
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "handle":Lcom/oneplus/base/MemoryUsage$MemoryUsageHandle;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method
