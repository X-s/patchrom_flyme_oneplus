.class Lcom/oneplus/cache/AsyncLruCache$1;
.super Ljava/lang/Object;
.source "AsyncLruCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/cache/AsyncLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/cache/AsyncLruCache;


# direct methods
.method constructor <init>(Lcom/oneplus/cache/AsyncLruCache;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/cache/AsyncLruCache$1;->this$0:Lcom/oneplus/cache/AsyncLruCache;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 39
    iget-object v1, p0, Lcom/oneplus/cache/AsyncLruCache$1;->this$0:Lcom/oneplus/cache/AsyncLruCache;

    # getter for: Lcom/oneplus/cache/AsyncLruCache;->m_WorkerThreadMessageQueue:Ljava/util/Deque;
    invoke-static {v1}, Lcom/oneplus/cache/AsyncLruCache;->access$0(Lcom/oneplus/cache/AsyncLruCache;)Ljava/util/Deque;

    move-result-object v2

    monitor-enter v2

    .line 41
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/cache/AsyncLruCache$1;->this$0:Lcom/oneplus/cache/AsyncLruCache;

    # getter for: Lcom/oneplus/cache/AsyncLruCache;->m_WorkerThreadMessageQueue:Ljava/util/Deque;
    invoke-static {v1}, Lcom/oneplus/cache/AsyncLruCache;->access$0(Lcom/oneplus/cache/AsyncLruCache;)Ljava/util/Deque;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Deque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    .line 39
    .local v0, "msg":Landroid/os/Message;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    if-eqz v0, :cond_0

    .line 45
    iget-object v1, p0, Lcom/oneplus/cache/AsyncLruCache$1;->this$0:Lcom/oneplus/cache/AsyncLruCache;

    invoke-virtual {v1, v0}, Lcom/oneplus/cache/AsyncLruCache;->handleWorkerThreadMessage(Landroid/os/Message;)V

    .line 46
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    .line 48
    :cond_0
    return-void

    .line 39
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
