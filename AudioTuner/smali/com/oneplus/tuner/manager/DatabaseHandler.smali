.class public Lcom/oneplus/tuner/manager/DatabaseHandler;
.super Landroid/os/Handler;
.source "DatabaseHandler.java"


# static fields
.field private static final MSG_PROCESS:I = 0x3e8


# instance fields
.field private mCommonRunnables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mInitRunnables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1
    .param p1, "l"    # Landroid/os/Looper;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 13
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oneplus/tuner/manager/DatabaseHandler;->mLock:Ljava/lang/Object;

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/tuner/manager/DatabaseHandler;->mInitRunnables:Ljava/util/ArrayList;

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/tuner/manager/DatabaseHandler;->mCommonRunnables:Ljava/util/ArrayList;

    .line 23
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v2, 0x3e8

    .line 28
    if-eqz p1, :cond_1

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v2, :cond_1

    .line 30
    iget-object v2, p0, Lcom/oneplus/tuner/manager/DatabaseHandler;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 32
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/tuner/manager/DatabaseHandler;->mInitRunnables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 34
    iget-object v1, p0, Lcom/oneplus/tuner/manager/DatabaseHandler;->mInitRunnables:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 36
    .local v0, "r":Ljava/lang/Runnable;
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 38
    const/16 v1, 0x3e8

    invoke-virtual {p0, v1}, Lcom/oneplus/tuner/manager/DatabaseHandler;->sendEmptyMessage(I)Z

    .line 50
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    :goto_0
    monitor-exit v2

    .line 54
    :cond_1
    return-void

    .line 40
    :cond_2
    iget-object v1, p0, Lcom/oneplus/tuner/manager/DatabaseHandler;->mCommonRunnables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 42
    iget-object v1, p0, Lcom/oneplus/tuner/manager/DatabaseHandler;->mCommonRunnables:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 44
    .restart local v0    # "r":Ljava/lang/Runnable;
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 46
    const/16 v1, 0x3e8

    invoke-virtual {p0, v1}, Lcom/oneplus/tuner/manager/DatabaseHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 50
    .end local v0    # "r":Ljava/lang/Runnable;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public postCommon(Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 74
    iget-object v1, p0, Lcom/oneplus/tuner/manager/DatabaseHandler;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 76
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/tuner/manager/DatabaseHandler;->mCommonRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    const/4 v0, 0x1

    iget-object v2, p0, Lcom/oneplus/tuner/manager/DatabaseHandler;->mCommonRunnables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 80
    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/oneplus/tuner/manager/DatabaseHandler;->sendEmptyMessage(I)Z

    .line 84
    :cond_0
    monitor-exit v1

    .line 86
    return-void

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public postInit(Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 58
    iget-object v1, p0, Lcom/oneplus/tuner/manager/DatabaseHandler;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 60
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/tuner/manager/DatabaseHandler;->mInitRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    const/4 v0, 0x1

    iget-object v2, p0, Lcom/oneplus/tuner/manager/DatabaseHandler;->mInitRunnables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 64
    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/oneplus/tuner/manager/DatabaseHandler;->sendEmptyMessage(I)Z

    .line 68
    :cond_0
    monitor-exit v1

    .line 70
    return-void

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
