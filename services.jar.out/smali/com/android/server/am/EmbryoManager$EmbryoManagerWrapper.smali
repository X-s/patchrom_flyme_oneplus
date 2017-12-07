.class final Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;
.super Ljava/lang/Object;
.source "EmbryoManager.java"

# interfaces
.implements Lcom/android/server/am/IEmbryoManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/EmbryoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EmbryoManagerWrapper"
.end annotation


# instance fields
.field private final nullImpl:Lcom/android/server/am/IEmbryoManager;

.field private realImpl:Lcom/android/server/am/EmbryoManager;

.field private target:Lcom/android/server/am/IEmbryoManager;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 465
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 461
    new-instance v0, Lcom/android/server/am/EmbryoManager$UselessManager;

    invoke-direct {v0, v1}, Lcom/android/server/am/EmbryoManager$UselessManager;-><init>(Lcom/android/server/am/EmbryoManager$UselessManager;)V

    iput-object v0, p0, Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;->nullImpl:Lcom/android/server/am/IEmbryoManager;

    .line 466
    invoke-static {}, Lcom/android/server/am/EmbryoManager;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/am/EmbryoManager;->-get1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 467
    new-instance v0, Lcom/android/server/am/EmbryoManager;

    invoke-direct {v0, v1}, Lcom/android/server/am/EmbryoManager;-><init>(Lcom/android/server/am/EmbryoManager;)V

    iput-object v0, p0, Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;->realImpl:Lcom/android/server/am/EmbryoManager;

    .line 468
    iget-object v0, p0, Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;->realImpl:Lcom/android/server/am/EmbryoManager;

    iput-object v0, p0, Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;->target:Lcom/android/server/am/IEmbryoManager;

    .line 465
    :goto_0
    return-void

    .line 470
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;->nullImpl:Lcom/android/server/am/IEmbryoManager;

    iput-object v0, p0, Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;->target:Lcom/android/server/am/IEmbryoManager;

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;-><init>()V

    return-void
.end method

.method private declared-synchronized getImpl()Lcom/android/server/am/IEmbryoManager;
    .locals 1

    .prologue
    monitor-enter p0

    .line 490
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;->target:Lcom/android/server/am/IEmbryoManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public activityTransition(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)V
    .locals 1
    .param p1, "prev"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "next"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 520
    invoke-direct {p0}, Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;->getImpl()Lcom/android/server/am/IEmbryoManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/server/am/IEmbryoManager;->activityTransition(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)V

    .line 519
    return-void
.end method

.method public attach(Landroid/app/IApplicationThread;I)Z
    .locals 1
    .param p1, "thread"    # Landroid/app/IApplicationThread;
    .param p2, "pid"    # I

    .prologue
    .line 505
    invoke-direct {p0}, Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;->getImpl()Lcom/android/server/am/IEmbryoManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/server/am/IEmbryoManager;->attach(Landroid/app/IApplicationThread;I)Z

    move-result v0

    return v0
.end method

.method public checkBackgroundLevel(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 565
    .local p1, "lruProcesses":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ProcessRecord;>;"
    invoke-direct {p0}, Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;->getImpl()Lcom/android/server/am/IEmbryoManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/am/IEmbryoManager;->checkBackgroundLevel(Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public dumpsys(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .prologue
    .line 545
    invoke-direct {p0}, Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;->getImpl()Lcom/android/server/am/IEmbryoManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/server/am/IEmbryoManager;->dumpsys(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 544
    return-void
.end method

.method public goingToSleep()V
    .locals 1

    .prologue
    .line 525
    invoke-direct {p0}, Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;->getImpl()Lcom/android/server/am/IEmbryoManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/am/IEmbryoManager;->goingToSleep()V

    .line 524
    return-void
.end method

.method public declared-synchronized hotSwitch(ZZ)V
    .locals 1
    .param p1, "newState"    # Z
    .param p2, "oldState"    # Z

    .prologue
    monitor-enter p0

    .line 475
    if-eqz p1, :cond_0

    .line 478
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;->nullImpl:Lcom/android/server/am/IEmbryoManager;

    iput-object v0, p0, Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;->target:Lcom/android/server/am/IEmbryoManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    .line 474
    return-void

    .line 480
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;->realImpl:Lcom/android/server/am/EmbryoManager;

    if-eqz v0, :cond_1

    .line 481
    iget-object v0, p0, Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;->realImpl:Lcom/android/server/am/EmbryoManager;

    invoke-virtual {v0}, Lcom/android/server/am/EmbryoManager;->shutdown()V

    .line 482
    iget-object v0, p0, Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;->realImpl:Lcom/android/server/am/EmbryoManager;

    invoke-virtual {v0}, Lcom/android/server/am/EmbryoManager;->cleanup()V

    .line 483
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;->realImpl:Lcom/android/server/am/EmbryoManager;

    .line 485
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;->nullImpl:Lcom/android/server/am/IEmbryoManager;

    iput-object v0, p0, Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;->target:Lcom/android/server/am/IEmbryoManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public initiate(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 515
    invoke-direct {p0}, Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;->getImpl()Lcom/android/server/am/IEmbryoManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/am/IEmbryoManager;->initiate(Landroid/content/Context;)V

    .line 514
    return-void
.end method

.method public obtain(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Landroid/app/IApplicationThread;
    .locals 1
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "hostingType"    # Ljava/lang/String;

    .prologue
    .line 500
    invoke-direct {p0}, Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;->getImpl()Lcom/android/server/am/IEmbryoManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/server/am/IEmbryoManager;->obtain(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Landroid/app/IApplicationThread;

    move-result-object v0

    return-object v0
.end method

.method public packageChanged(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 540
    invoke-direct {p0}, Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;->getImpl()Lcom/android/server/am/IEmbryoManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/am/IEmbryoManager;->packageChanged(Ljava/lang/String;)V

    .line 539
    return-void
.end method

.method public packageInstalled(Landroid/content/pm/ApplicationInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 535
    invoke-direct {p0}, Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;->getImpl()Lcom/android/server/am/IEmbryoManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/am/IEmbryoManager;->packageInstalled(Landroid/content/pm/ApplicationInfo;)V

    .line 534
    return-void
.end method

.method public prepare(Lcom/android/server/am/ProcessRecord;)V
    .locals 1
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 495
    invoke-direct {p0}, Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;->getImpl()Lcom/android/server/am/IEmbryoManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/am/IEmbryoManager;->prepare(Lcom/android/server/am/ProcessRecord;)V

    .line 494
    return-void
.end method

.method public resolveConfig(Lorg/json/JSONArray;)V
    .locals 1
    .param p1, "jsonArray"    # Lorg/json/JSONArray;

    .prologue
    .line 560
    invoke-direct {p0}, Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;->getImpl()Lcom/android/server/am/IEmbryoManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/am/IEmbryoManager;->resolveConfig(Lorg/json/JSONArray;)V

    .line 559
    return-void
.end method

.method public setBlackList(Ljava/util/List;)V
    .locals 1
    .param p1, "list"    # Ljava/util/List;

    .prologue
    .line 550
    invoke-direct {p0}, Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;->getImpl()Lcom/android/server/am/IEmbryoManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/am/IEmbryoManager;->setBlackList(Ljava/util/List;)V

    .line 549
    return-void
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 510
    invoke-direct {p0}, Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;->getImpl()Lcom/android/server/am/IEmbryoManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/am/IEmbryoManager;->shutdown()V

    .line 509
    return-void
.end method

.method public updateConfig()V
    .locals 1

    .prologue
    .line 555
    invoke-direct {p0}, Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;->getImpl()Lcom/android/server/am/IEmbryoManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/am/IEmbryoManager;->updateConfig()V

    .line 554
    return-void
.end method

.method public wakingUp()V
    .locals 1

    .prologue
    .line 530
    invoke-direct {p0}, Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;->getImpl()Lcom/android/server/am/IEmbryoManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/am/IEmbryoManager;->wakingUp()V

    .line 529
    return-void
.end method
