.class Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$ThumbnailImageDecoder;
.super Ljava/lang/Object;
.source "ThumbnailImageManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ThumbnailImageDecoder"
.end annotation


# instance fields
.field public volatile canUseEmbeddedThumbnail:Z

.field public final config:Landroid/graphics/Bitmap$Config;

.field private final m_ActiveDecodingTasks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;",
            ">;"
        }
    .end annotation
.end field

.field private final m_DecodingEntryRunnable:Ljava/lang/Runnable;

.field private final m_DecodingExecutor:Ljava/util/concurrent/Executor;

.field private final m_DecodingQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedDeque",
            "<",
            "Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;",
            ">;"
        }
    .end annotation
.end field

.field public volatile opaque:Z

.field public volatile preferQualityOverSpeed:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ILandroid/graphics/Bitmap$Config;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "decodingThreadCount"    # I
    .param p3, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    const/4 v1, 0x1

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$ThumbnailImageDecoder;->m_ActiveDecodingTasks:Ljava/util/Set;

    .line 106
    iput-boolean v1, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$ThumbnailImageDecoder;->canUseEmbeddedThumbnail:Z

    .line 108
    new-instance v0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$ThumbnailImageDecoder$1;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$ThumbnailImageDecoder$1;-><init>(Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$ThumbnailImageDecoder;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$ThumbnailImageDecoder;->m_DecodingEntryRunnable:Ljava/lang/Runnable;

    .line 135
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$ThumbnailImageDecoder;->m_DecodingQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    .line 136
    iput-boolean v1, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$ThumbnailImageDecoder;->opaque:Z

    .line 137
    iput-boolean v1, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$ThumbnailImageDecoder;->preferQualityOverSpeed:Z

    .line 142
    invoke-static {p2}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$ThumbnailImageDecoder;->m_DecodingExecutor:Ljava/util/concurrent/Executor;

    .line 143
    iput-object p3, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$ThumbnailImageDecoder;->config:Landroid/graphics/Bitmap$Config;

    .line 144
    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$ThumbnailImageDecoder;)Ljava/util/concurrent/ConcurrentLinkedDeque;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$ThumbnailImageDecoder;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$ThumbnailImageDecoder;->m_DecodingQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$ThumbnailImageDecoder;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$ThumbnailImageDecoder;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$ThumbnailImageDecoder;->m_ActiveDecodingTasks:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method public cancel(Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;)Z
    .locals 1
    .param p1, "task"    # Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;

    .prologue
    .line 149
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$ThumbnailImageDecoder;->m_DecodingQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public decode(Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;Z)V
    .locals 2
    .param p1, "task"    # Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;
    .param p2, "urgent"    # Z

    .prologue
    .line 155
    if-eqz p2, :cond_0

    .line 156
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$ThumbnailImageDecoder;->m_DecodingQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->addFirst(Ljava/lang/Object;)V

    .line 159
    :goto_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$ThumbnailImageDecoder;->m_DecodingExecutor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$ThumbnailImageDecoder;->m_DecodingEntryRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 160
    return-void

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$ThumbnailImageDecoder;->m_DecodingQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->addLast(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public invalidate(Lcom/oneplus/gallery2/media/Media;)V
    .locals 4
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;

    .prologue
    .line 165
    iget-object v3, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$ThumbnailImageDecoder;->m_ActiveDecodingTasks:Ljava/util/Set;

    monitor-enter v3

    .line 167
    :try_start_0
    iget-object v2, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$ThumbnailImageDecoder;->m_ActiveDecodingTasks:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;

    .line 169
    .local v1, "task":Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 171
    const/4 v2, 0x1

    :try_start_1
    iput-boolean v2, v1, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;->isInvalidated:Z

    .line 172
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2

    .line 174
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "task":Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 175
    return-void
.end method
