.class final Lcom/oneplus/media/BitmapPool$PeriodicCallbackHandler;
.super Landroid/os/Handler;
.source "BitmapPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/media/BitmapPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PeriodicCallbackHandler"
.end annotation


# instance fields
.field private final m_DispatchRunnable:Ljava/lang/Runnable;

.field private volatile m_IsScheduled:Z

.field private final m_Looper:Landroid/os/Looper;

.field private final m_PendingRunnables:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/oneplus/media/BitmapPool;


# direct methods
.method public constructor <init>(Lcom/oneplus/media/BitmapPool;Landroid/os/Looper;)V
    .locals 1
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 207
    iput-object p1, p0, Lcom/oneplus/media/BitmapPool$PeriodicCallbackHandler;->this$0:Lcom/oneplus/media/BitmapPool;

    .line 208
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 193
    new-instance v0, Lcom/oneplus/media/BitmapPool$PeriodicCallbackHandler$1;

    invoke-direct {v0, p0}, Lcom/oneplus/media/BitmapPool$PeriodicCallbackHandler$1;-><init>(Lcom/oneplus/media/BitmapPool$PeriodicCallbackHandler;)V

    iput-object v0, p0, Lcom/oneplus/media/BitmapPool$PeriodicCallbackHandler;->m_DispatchRunnable:Ljava/lang/Runnable;

    .line 203
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/media/BitmapPool$PeriodicCallbackHandler;->m_PendingRunnables:Ljava/util/LinkedList;

    .line 209
    iput-object p2, p0, Lcom/oneplus/media/BitmapPool$PeriodicCallbackHandler;->m_Looper:Landroid/os/Looper;

    .line 210
    return-void
.end method

.method static synthetic access$0(Lcom/oneplus/media/BitmapPool$PeriodicCallbackHandler;)V
    .locals 0

    .prologue
    .line 213
    invoke-direct {p0}, Lcom/oneplus/media/BitmapPool$PeriodicCallbackHandler;->dispatch()V

    return-void
.end method

.method private dispatch()V
    .locals 5

    .prologue
    .line 217
    monitor-enter p0

    .line 219
    const/4 v3, 0x0

    :try_start_0
    iput-boolean v3, p0, Lcom/oneplus/media/BitmapPool$PeriodicCallbackHandler;->m_IsScheduled:Z

    .line 220
    iget-object v3, p0, Lcom/oneplus/media/BitmapPool$PeriodicCallbackHandler;->m_PendingRunnables:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 221
    monitor-exit p0

    .line 229
    :cond_0
    return-void

    .line 222
    :cond_1
    iget-object v3, p0, Lcom/oneplus/media/BitmapPool$PeriodicCallbackHandler;->m_PendingRunnables:Ljava/util/LinkedList;

    iget-object v4, p0, Lcom/oneplus/media/BitmapPool$PeriodicCallbackHandler;->m_PendingRunnables:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Runnable;

    .line 223
    .local v2, "runnables":[Ljava/lang/Runnable;
    iget-object v3, p0, Lcom/oneplus/media/BitmapPool$PeriodicCallbackHandler;->m_PendingRunnables:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->clear()V

    .line 217
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v0, v2

    .local v0, "count":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 228
    aget-object v3, v2, v1

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 227
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 217
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "runnables":[Ljava/lang/Runnable;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method


# virtual methods
.method public isSameLooper(Landroid/os/Handler;)Z
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 234
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/media/BitmapPool$PeriodicCallbackHandler;->m_Looper:Landroid/os/Looper;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized schedule(Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 240
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/oneplus/media/BitmapPool$PeriodicCallbackHandler;->m_PendingRunnables:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 241
    iget-boolean v0, p0, Lcom/oneplus/media/BitmapPool$PeriodicCallbackHandler;->m_IsScheduled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 245
    :goto_0
    monitor-exit p0

    return-void

    .line 243
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/oneplus/media/BitmapPool$PeriodicCallbackHandler;->m_IsScheduled:Z

    .line 244
    iget-object v0, p0, Lcom/oneplus/media/BitmapPool$PeriodicCallbackHandler;->m_DispatchRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {p0, v0, v2, v3}, Lcom/oneplus/media/BitmapPool$PeriodicCallbackHandler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 240
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
