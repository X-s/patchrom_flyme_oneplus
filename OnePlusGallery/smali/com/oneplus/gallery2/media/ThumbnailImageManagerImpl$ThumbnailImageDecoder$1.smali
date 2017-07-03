.class Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$ThumbnailImageDecoder$1;
.super Ljava/lang/Object;
.source "ThumbnailImageManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$ThumbnailImageDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$ThumbnailImageDecoder;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$ThumbnailImageDecoder;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$ThumbnailImageDecoder$1;->this$0:Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$ThumbnailImageDecoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 113
    iget-object v1, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$ThumbnailImageDecoder$1;->this$0:Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$ThumbnailImageDecoder;

    # getter for: Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$ThumbnailImageDecoder;->m_DecodingQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;
    invoke-static {v1}, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$ThumbnailImageDecoder;->access$200(Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$ThumbnailImageDecoder;)Ljava/util/concurrent/ConcurrentLinkedDeque;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;

    .line 114
    .local v0, "task":Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;
    if-eqz v0, :cond_0

    .line 116
    iget-object v1, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$ThumbnailImageDecoder$1;->this$0:Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$ThumbnailImageDecoder;

    # getter for: Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$ThumbnailImageDecoder;->m_ActiveDecodingTasks:Ljava/util/Set;
    invoke-static {v1}, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$ThumbnailImageDecoder;->access$300(Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$ThumbnailImageDecoder;)Ljava/util/Set;

    move-result-object v2

    monitor-enter v2

    .line 118
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$ThumbnailImageDecoder$1;->this$0:Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$ThumbnailImageDecoder;

    # getter for: Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$ThumbnailImageDecoder;->m_ActiveDecodingTasks:Ljava/util/Set;
    invoke-static {v1}, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$ThumbnailImageDecoder;->access$300(Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$ThumbnailImageDecoder;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 119
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    :try_start_1
    invoke-virtual {v0}, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 126
    iget-object v1, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$ThumbnailImageDecoder$1;->this$0:Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$ThumbnailImageDecoder;

    # getter for: Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$ThumbnailImageDecoder;->m_ActiveDecodingTasks:Ljava/util/Set;
    invoke-static {v1}, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$ThumbnailImageDecoder;->access$300(Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$ThumbnailImageDecoder;)Ljava/util/Set;

    move-result-object v2

    monitor-enter v2

    .line 128
    :try_start_2
    iget-object v1, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$ThumbnailImageDecoder$1;->this$0:Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$ThumbnailImageDecoder;

    # getter for: Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$ThumbnailImageDecoder;->m_ActiveDecodingTasks:Ljava/util/Set;
    invoke-static {v1}, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$ThumbnailImageDecoder;->access$300(Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$ThumbnailImageDecoder;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 129
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 132
    :cond_0
    return-void

    .line 119
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 129
    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1

    .line 126
    :catchall_2
    move-exception v1

    iget-object v2, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$ThumbnailImageDecoder$1;->this$0:Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$ThumbnailImageDecoder;

    # getter for: Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$ThumbnailImageDecoder;->m_ActiveDecodingTasks:Ljava/util/Set;
    invoke-static {v2}, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$ThumbnailImageDecoder;->access$300(Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$ThumbnailImageDecoder;)Ljava/util/Set;

    move-result-object v2

    monitor-enter v2

    .line 128
    :try_start_5
    iget-object v3, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$ThumbnailImageDecoder$1;->this$0:Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$ThumbnailImageDecoder;

    # getter for: Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$ThumbnailImageDecoder;->m_ActiveDecodingTasks:Ljava/util/Set;
    invoke-static {v3}, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$ThumbnailImageDecoder;->access$300(Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$ThumbnailImageDecoder;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 129
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v1

    :catchall_3
    move-exception v1

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v1
.end method
