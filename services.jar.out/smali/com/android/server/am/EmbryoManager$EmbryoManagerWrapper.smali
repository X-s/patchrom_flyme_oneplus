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

    .line 493
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 489
    new-instance v0, Lcom/android/server/am/EmbryoManager$UselessManager;

    invoke-direct {v0, v1}, Lcom/android/server/am/EmbryoManager$UselessManager;-><init>(Lcom/android/server/am/EmbryoManager$UselessManager;)V

    iput-object v0, p0, Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;->nullImpl:Lcom/android/server/am/IEmbryoManager;

    .line 494
    invoke-static {}, Lcom/android/server/am/EmbryoManager;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/am/EmbryoManager;->-get1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 495
    new-instance v0, Lcom/android/server/am/EmbryoManager;

    invoke-direct {v0, v1}, Lcom/android/server/am/EmbryoManager;-><init>(Lcom/android/server/am/EmbryoManager;)V

    iput-object v0, p0, Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;->realImpl:Lcom/android/server/am/EmbryoManager;

    .line 496
    iget-object v0, p0, Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;->realImpl:Lcom/android/server/am/EmbryoManager;

    iput-object v0, p0, Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;->target:Lcom/android/server/am/IEmbryoManager;

    .line 493
    :goto_0
    return-void

    .line 498
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

    .line 518
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
    .line 548
    invoke-direct {p0}, Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;->getImpl()Lcom/android/server/am/IEmbryoManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/server/am/IEmbryoManager;->activityTransition(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)V

    .line 547
    return-void
.end method

.method public attach(Landroid/app/IApplicationThread;I)Z
    .locals 1
    .param p1, "thread"    # Landroid/app/IApplicationThread;
    .param p2, "pid"    # I

    .prologue
    .line 533
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
    .line 593
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
    .line 573
    invoke-direct {p0}, Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;->getImpl()Lcom/android/server/am/IEmbryoManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/server/am/IEmbryoManager;->dumpsys(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 572
    return-void
.end method

.method public goingToSleep()V
    .locals 1

    .prologue
    .line 553
    invoke-direct {p0}, Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;->getImpl()Lcom/android/server/am/IEmbryoManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/am/IEmbryoManager;->goingToSleep()V

    .line 552
    return-void
.end method

.method public declared-synchronized hotSwitch(ZZ)V
    .locals 1
    .param p1, "newState"    # Z
    .param p2, "oldState"    # Z

    .prologue
    monitor-enter p0

    .line 503
    if-eqz p1, :cond_0

    .line 506
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;->nullImpl:Lcom/android/server/am/IEmbryoManager;

    iput-object v0, p0, Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;->target:Lcom/android/server/am/IEmbryoManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    .line 502
    return-void

    .line 508
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;->realImpl:Lcom/android/server/am/EmbryoManager;

    if-eqz v0, :cond_1

    .line 509
    iget-object v0, p0, Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;->realImpl:Lcom/android/server/am/EmbryoManager;

    invoke-virtual {v0}, Lcom/android/server/am/EmbryoManager;->shutdown()V

    .line 510
    iget-object v0, p0, Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;->realImpl:Lcom/android/server/am/EmbryoManager;

    invoke-virtual {v0}, Lcom/android/server/am/EmbryoManager;->cleanup()V

    .line 511
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;->realImpl:Lcom/android/server/am/EmbryoManager;

    .line 513
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
    .line 543
    invoke-direct {p0}, Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;->getImpl()Lcom/android/server/am/IEmbryoManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/am/IEmbryoManager;->initiate(Landroid/content/Context;)V

    .line 542
    return-void
.end method

.method public obtain(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Landroid/app/IApplicationThread;
    .locals 1
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "hostingType"    # Ljava/lang/String;

    .prologue
    .line 528
    invoke-direct {p0}, Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;->getImpl()Lcom/android/server/am/IEmbryoManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/server/am/IEmbryoManager;->obtain(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Landroid/app/IApplicationThread;

    move-result-object v0

    return-object v0
.end method

.method public packageChanged(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 568
    invoke-direct {p0}, Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;->getImpl()Lcom/android/server/am/IEmbryoManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/server/am/IEmbryoManager;->packageChanged(Ljava/lang/String;I)V

    .line 567
    return-void
.end method

.method public packageInstalled(Landroid/content/pm/ApplicationInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 563
    invoke-direct {p0}, Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;->getImpl()Lcom/android/server/am/IEmbryoManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/am/IEmbryoManager;->packageInstalled(Landroid/content/pm/ApplicationInfo;)V

    .line 562
    return-void
.end method

.method public prepare(Lcom/android/server/am/ProcessRecord;)V
    .locals 1
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 523
    invoke-direct {p0}, Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;->getImpl()Lcom/android/server/am/IEmbryoManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/am/IEmbryoManager;->prepare(Lcom/android/server/am/ProcessRecord;)V

    .line 522
    return-void
.end method

.method public resolveConfig(Lorg/json/JSONArray;)V
    .locals 1
    .param p1, "jsonArray"    # Lorg/json/JSONArray;

    .prologue
    .line 588
    invoke-direct {p0}, Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;->getImpl()Lcom/android/server/am/IEmbryoManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/am/IEmbryoManager;->resolveConfig(Lorg/json/JSONArray;)V

    .line 587
    return-void
.end method

.method public scheduleAttach(Landroid/app/IApplicationThread;I)V
    .locals 1
    .param p1, "thread"    # Landroid/app/IApplicationThread;
    .param p2, "pid"    # I

    .prologue
    .line 598
    invoke-direct {p0}, Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;->getImpl()Lcom/android/server/am/IEmbryoManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/server/am/IEmbryoManager;->scheduleAttach(Landroid/app/IApplicationThread;I)V

    .line 597
    return-void
.end method

.method public setBlackList(Ljava/util/List;)V
    .locals 1
    .param p1, "list"    # Ljava/util/List;

    .prologue
    .line 578
    invoke-direct {p0}, Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;->getImpl()Lcom/android/server/am/IEmbryoManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/am/IEmbryoManager;->setBlackList(Ljava/util/List;)V

    .line 577
    return-void
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 538
    invoke-direct {p0}, Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;->getImpl()Lcom/android/server/am/IEmbryoManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/am/IEmbryoManager;->shutdown()V

    .line 537
    return-void
.end method

.method public updateConfig()V
    .locals 1

    .prologue
    .line 583
    invoke-direct {p0}, Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;->getImpl()Lcom/android/server/am/IEmbryoManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/am/IEmbryoManager;->updateConfig()V

    .line 582
    return-void
.end method

.method public wakingUp()V
    .locals 1

    .prologue
    .line 558
    invoke-direct {p0}, Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;->getImpl()Lcom/android/server/am/IEmbryoManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/am/IEmbryoManager;->wakingUp()V

    .line 557
    return-void
.end method
