.class public Lcom/android/settings_exlib/applications/ApplicationsState$Session;
.super Ljava/lang/Object;
.source "ApplicationsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_exlib/applications/ApplicationsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Session"
.end annotation


# instance fields
.field final mCallbacks:Lcom/android/settings_exlib/applications/ApplicationsState$Callbacks;

.field mLastAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field mRebuildAsync:Z

.field mRebuildComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field mRebuildFilter:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

.field mRebuildRequested:Z

.field mRebuildResult:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field final mRebuildSync:Ljava/lang/Object;

.field mResumed:Z

.field final synthetic this$0:Lcom/android/settings_exlib/applications/ApplicationsState;


# direct methods
.method constructor <init>(Lcom/android/settings_exlib/applications/ApplicationsState;Lcom/android/settings_exlib/applications/ApplicationsState$Callbacks;)V
    .locals 1
    .param p2, "callbacks"    # Lcom/android/settings_exlib/applications/ApplicationsState$Callbacks;

    .prologue
    .line 537
    iput-object p1, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 529
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->mRebuildSync:Ljava/lang/Object;

    .line 538
    iput-object p2, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->mCallbacks:Lcom/android/settings_exlib/applications/ApplicationsState$Callbacks;

    .line 539
    return-void
.end method


# virtual methods
.method public getAllApps()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 567
    iget-object v0, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    iget-object v1, v0, Lcom/android/settings_exlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v1

    .line 568
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    iget-object v2, v2, Lcom/android/settings_exlib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1

    return-object v0

    .line 569
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method handleRebuildList()V
    .locals 10

    .prologue
    .line 612
    iget-object v8, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->mRebuildSync:Ljava/lang/Object;

    monitor-enter v8

    .line 613
    :try_start_0
    iget-boolean v7, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->mRebuildRequested:Z

    if-nez v7, :cond_0

    .line 614
    monitor-exit v8

    .line 669
    :goto_0
    return-void

    .line 617
    :cond_0
    iget-object v3, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->mRebuildFilter:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

    .line 618
    .local v3, "filter":Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;
    iget-object v1, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->mRebuildComparator:Ljava/util/Comparator;

    .line 619
    .local v1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;>;"
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->mRebuildRequested:Z

    .line 620
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->mRebuildFilter:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

    .line 621
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->mRebuildComparator:Ljava/util/Comparator;

    .line 622
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 624
    const/4 v7, -0x2

    invoke-static {v7}, Landroid/os/Process;->setThreadPriority(I)V

    .line 626
    if-eqz v3, :cond_1

    .line 627
    invoke-interface {v3}, Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;->init()V

    .line 631
    :cond_1
    iget-object v7, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    iget-object v8, v7, Lcom/android/settings_exlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v8

    .line 632
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    iget-object v7, v7, Lcom/android/settings_exlib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 633
    .local v0, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;>;"
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 635
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 637
    .local v4, "filteredApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_4

    .line 638
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    .line 639
    .local v2, "entry":Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;
    if-eqz v3, :cond_2

    invoke-interface {v3, v2}, Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;->filterApp(Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 640
    :cond_2
    iget-object v7, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    iget-object v8, v7, Lcom/android/settings_exlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v8

    .line 642
    :try_start_2
    iget-object v7, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    iget-object v7, v7, Lcom/android/settings_exlib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v7}, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->ensureLabel(Landroid/content/Context;)V

    .line 644
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 646
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 637
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 622
    .end local v0    # "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;>;"
    .end local v1    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;>;"
    .end local v2    # "entry":Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;
    .end local v3    # "filter":Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;
    .end local v4    # "filteredApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;>;"
    .end local v5    # "i":I
    :catchall_0
    move-exception v7

    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v7

    .line 633
    .restart local v1    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;>;"
    .restart local v3    # "filter":Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;
    :catchall_1
    move-exception v7

    :try_start_4
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v7

    .line 646
    .restart local v0    # "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;>;"
    .restart local v2    # "entry":Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;
    .restart local v4    # "filteredApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;>;"
    .restart local v5    # "i":I
    :catchall_2
    move-exception v7

    :try_start_5
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v7

    .line 650
    .end local v2    # "entry":Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;
    :cond_4
    invoke-static {v4, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 652
    iget-object v8, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->mRebuildSync:Ljava/lang/Object;

    monitor-enter v8

    .line 653
    :try_start_6
    iget-boolean v7, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->mRebuildRequested:Z

    if-nez v7, :cond_5

    .line 654
    iput-object v4, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->mLastAppList:Ljava/util/ArrayList;

    .line 655
    iget-boolean v7, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->mRebuildAsync:Z

    if-nez v7, :cond_6

    .line 656
    iput-object v4, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->mRebuildResult:Ljava/util/ArrayList;

    .line 657
    iget-object v7, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->mRebuildSync:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->notifyAll()V

    .line 666
    :cond_5
    :goto_2
    monitor-exit v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 668
    const/16 v7, 0xa

    invoke-static {v7}, Landroid/os/Process;->setThreadPriority(I)V

    goto :goto_0

    .line 659
    :cond_6
    :try_start_7
    iget-object v7, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    iget-object v7, v7, Lcom/android/settings_exlib/applications/ApplicationsState;->mMainHandler:Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;

    const/4 v9, 0x1

    invoke-virtual {v7, v9, p0}, Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;->hasMessages(ILjava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 660
    iget-object v7, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    iget-object v7, v7, Lcom/android/settings_exlib/applications/ApplicationsState;->mMainHandler:Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;

    const/4 v9, 0x1

    invoke-virtual {v7, v9, p0}, Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 662
    .local v6, "msg":Landroid/os/Message;
    iget-object v7, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    iget-object v7, v7, Lcom/android/settings_exlib/applications/ApplicationsState;->mMainHandler:Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;

    invoke-virtual {v7, v6}, Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .line 666
    .end local v6    # "msg":Landroid/os/Message;
    :catchall_3
    move-exception v7

    monitor-exit v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v7
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 555
    iget-object v0, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    iget-object v1, v0, Lcom/android/settings_exlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v1

    .line 556
    :try_start_0
    iget-boolean v0, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->mResumed:Z

    if-eqz v0, :cond_0

    .line 557
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->mResumed:Z

    .line 558
    iget-object v0, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/settings_exlib/applications/ApplicationsState;->mSessionsChanged:Z

    .line 559
    iget-object v0, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p0}, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->removeMessages(ILjava/lang/Object;)V

    .line 560
    iget-object v0, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    invoke-virtual {v0}, Lcom/android/settings_exlib/applications/ApplicationsState;->doPauseIfNeededLocked()V

    .line 563
    :cond_0
    monitor-exit v1

    .line 564
    return-void

    .line 563
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public rebuild(Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;Ljava/util/Comparator;)Ljava/util/ArrayList;
    .locals 12
    .param p1, "filter"    # Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;",
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 574
    .local p2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;>;"
    iget-object v6, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->mRebuildSync:Ljava/lang/Object;

    monitor-enter v6

    .line 575
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    iget-object v7, v1, Lcom/android/settings_exlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 576
    :try_start_1
    iget-object v1, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    iget-object v1, v1, Lcom/android/settings_exlib/applications/ApplicationsState;->mRebuildingSessions:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 577
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->mRebuildRequested:Z

    .line 578
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->mRebuildAsync:Z

    .line 579
    iput-object p1, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->mRebuildFilter:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

    .line 580
    iput-object p2, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->mRebuildComparator:Ljava/util/Comparator;

    .line 581
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->mRebuildResult:Ljava/util/ArrayList;

    .line 582
    iget-object v1, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    iget-object v1, v1, Lcom/android/settings_exlib/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;

    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 583
    iget-object v1, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    iget-object v1, v1, Lcom/android/settings_exlib/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;

    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 585
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    iget-object v1, v1, Lcom/android/settings_exlib/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;

    invoke-virtual {v1, v0}, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->sendMessage(Landroid/os/Message;)Z

    .line 587
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 590
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0xfa

    add-long v4, v8, v10

    .line 592
    .local v4, "waitend":J
    :goto_0
    iget-object v1, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->mRebuildResult:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 593
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 594
    .local v2, "now":J
    cmp-long v1, v2, v4

    if-ltz v1, :cond_2

    .line 603
    .end local v2    # "now":J
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->mRebuildAsync:Z

    .line 605
    iget-object v1, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->mRebuildResult:Ljava/util/ArrayList;

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v1

    .line 587
    .end local v4    # "waitend":J
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    .line 606
    :catchall_1
    move-exception v1

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1

    .line 598
    .restart local v2    # "now":J
    .restart local v4    # "waitend":J
    :cond_2
    :try_start_5
    iget-object v1, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->mRebuildSync:Ljava/lang/Object;

    sub-long v8, v4, v2

    invoke-virtual {v1, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    .line 599
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public release()V
    .locals 2

    .prologue
    .line 672
    invoke-virtual {p0}, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->pause()V

    .line 673
    iget-object v0, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    iget-object v1, v0, Lcom/android/settings_exlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v1

    .line 674
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState;->mSessions:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 675
    monitor-exit v1

    .line 676
    return-void

    .line 675
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 543
    iget-object v0, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    iget-object v1, v0, Lcom/android/settings_exlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v1

    .line 544
    :try_start_0
    iget-boolean v0, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->mResumed:Z

    if-nez v0, :cond_0

    .line 545
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->mResumed:Z

    .line 546
    iget-object v0, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/settings_exlib/applications/ApplicationsState;->mSessionsChanged:Z

    .line 547
    iget-object v0, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    invoke-virtual {v0}, Lcom/android/settings_exlib/applications/ApplicationsState;->doResumeIfNeededLocked()V

    .line 549
    :cond_0
    monitor-exit v1

    .line 551
    return-void

    .line 549
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
