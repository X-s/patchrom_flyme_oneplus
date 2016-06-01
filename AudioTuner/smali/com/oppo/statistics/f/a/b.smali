.class public abstract Lcom/oppo/statistics/f/a/b;
.super Landroid/os/HandlerThread;


# static fields
.field private static final b:I = 0x65


# instance fields
.field private a:Landroid/os/Handler;

.field private c:Ljava/util/Queue;

.field private d:Landroid/os/Handler$Callback;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/oppo/statistics/f/a/b;->c:Ljava/util/Queue;

    new-instance v0, Lcom/oppo/statistics/f/a/c;

    invoke-direct {v0, p0}, Lcom/oppo/statistics/f/a/c;-><init>(Lcom/oppo/statistics/f/a/b;)V

    iput-object v0, p0, Lcom/oppo/statistics/f/a/b;->d:Landroid/os/Handler$Callback;

    return-void
.end method

.method private declared-synchronized a()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/oppo/statistics/f/a/b;->c:Ljava/util/Queue;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/statistics/f/a/b;->c:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/oppo/statistics/f/a/b;)Z
    .locals 1

    invoke-direct {p0}, Lcom/oppo/statistics/f/a/b;->a()Z

    move-result v0

    return v0
.end method

.method private declared-synchronized b()Ljava/lang/Object;
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/oppo/statistics/f/a/b;->c:Ljava/util/Queue;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oppo/statistics/f/a/b;->c:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/oppo/statistics/f/a/b;->c:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic b(Lcom/oppo/statistics/f/a/b;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/oppo/statistics/f/a/b;->b()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/oppo/statistics/f/a/b;->c:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/oppo/statistics/f/a/b;->c:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v0

    :cond_0
    return v0
.end method


# virtual methods
.method protected abstract a(Ljava/lang/Object;)V
.end method

.method public declared-synchronized a(Ljava/lang/Object;J)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/oppo/statistics/f/a/b;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/statistics/f/a/b;->a:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/statistics/f/a/b;->a:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public start()V
    .locals 3

    invoke-super {p0}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {p0}, Lcom/oppo/statistics/f/a/b;->getLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/oppo/statistics/f/a/b;->d:Landroid/os/Handler$Callback;

    invoke-direct {v1, v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/oppo/statistics/f/a/b;->a:Landroid/os/Handler;

    return-void
.end method
