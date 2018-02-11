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

.field mRebuildForeground:Z

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
    .param p1, "this$0"    # Lcom/android/settings_exlib/applications/ApplicationsState;
    .param p2, "callbacks"    # Lcom/android/settings_exlib/applications/ApplicationsState$Callbacks;

    .prologue
    .line 553
    iput-object p1, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 544
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->mRebuildSync:Ljava/lang/Object;

    .line 554
    iput-object p2, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->mCallbacks:Lcom/android/settings_exlib/applications/ApplicationsState$Callbacks;

    .line 553
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
    .line 583
    iget-object v0, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    iget-object v1, v0, Lcom/android/settings_exlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v1

    .line 584
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    iget-object v2, v2, Lcom/android/settings_exlib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 583
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method handleRebuildList()V
    .locals 10

    .prologue
    .line 618
    iget-object v8, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->mRebuildSync:Ljava/lang/Object;

    monitor-enter v8

    .line 619
    :try_start_0
    iget-boolean v7, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->mRebuildRequested:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v7, :cond_0

    monitor-exit v8

    .line 620
    return-void

    .line 623
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->mRebuildFilter:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

    .line 624
    .local v3, "filter":Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;
    iget-object v1, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->mRebuildComparator:Ljava/util/Comparator;

    .line 625
    .local v1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;>;"
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->mRebuildRequested:Z

    .line 626
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->mRebuildFilter:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

    .line 627
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->mRebuildComparator:Ljava/util/Comparator;

    .line 628
    iget-boolean v7, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->mRebuildForeground:Z

    if-eqz v7, :cond_1

    .line 629
    const/4 v7, -0x2

    invoke-static {v7}, Landroid/os/Process;->setThreadPriority(I)V

    .line 630
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->mRebuildForeground:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit v8

    .line 634
    if-eqz v3, :cond_2

    .line 635
    iget-object v7, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    iget-object v7, v7, Lcom/android/settings_exlib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-interface {v3, v7}, Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;->init(Landroid/content/Context;)V

    .line 639
    :cond_2
    iget-object v7, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    iget-object v8, v7, Lcom/android/settings_exlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v8

    .line 640
    :try_start_2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    iget-object v7, v7, Lcom/android/settings_exlib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .local v0, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;>;"
    monitor-exit v8

    .line 643
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 645
    .local v4, "filteredApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_6

    .line 646
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    .line 647
    .local v2, "entry":Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;
    if-eqz v2, :cond_5

    if-eqz v3, :cond_3

    invoke-interface {v3, v2}, Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;->filterApp(Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 648
    :cond_3
    iget-object v7, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    iget-object v8, v7, Lcom/android/settings_exlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v8

    .line 650
    if-eqz v1, :cond_4

    .line 652
    :try_start_3
    iget-object v7, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    iget-object v7, v7, Lcom/android/settings_exlib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v7}, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->ensureLabel(Landroid/content/Context;)V

    .line 655
    :cond_4
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    monitor-exit v8

    .line 645
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 618
    .end local v0    # "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;>;"
    .end local v1    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;>;"
    .end local v2    # "entry":Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;
    .end local v3    # "filter":Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;
    .end local v4    # "filteredApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;>;"
    .end local v5    # "i":I
    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7

    .line 639
    .restart local v1    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;>;"
    .restart local v3    # "filter":Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;
    :catchall_1
    move-exception v7

    monitor-exit v8

    throw v7

    .line 648
    .restart local v0    # "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;>;"
    .restart local v2    # "entry":Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;
    .restart local v4    # "filteredApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;>;"
    .restart local v5    # "i":I
    :catchall_2
    move-exception v7

    monitor-exit v8

    throw v7

    .line 661
    .end local v2    # "entry":Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;
    :cond_6
    if-eqz v1, :cond_7

    .line 662
    invoke-static {v4, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 665
    :cond_7
    iget-object v8, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->mRebuildSync:Ljava/lang/Object;

    monitor-enter v8

    .line 666
    :try_start_4
    iget-boolean v7, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->mRebuildRequested:Z

    if-nez v7, :cond_8

    .line 667
    iput-object v4, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->mLastAppList:Ljava/util/ArrayList;

    .line 668
    iget-boolean v7, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->mRebuildAsync:Z

    if-nez v7, :cond_9

    .line 669
    iput-object v4, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->mRebuildResult:Ljava/util/ArrayList;

    .line 670
    iget-object v7, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->mRebuildSync:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->notifyAll()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :cond_8
    :goto_1
    monitor-exit v8

    .line 681
    const/16 v7, 0xa

    invoke-static {v7}, Landroid/os/Process;->setThreadPriority(I)V

    .line 615
    return-void

    .line 672
    :cond_9
    :try_start_5
    iget-object v7, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    iget-object v7, v7, Lcom/android/settings_exlib/applications/ApplicationsState;->mMainHandler:Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;

    const/4 v9, 0x1

    invoke-virtual {v7, v9, p0}, Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;->hasMessages(ILjava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 673
    iget-object v7, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    iget-object v7, v7, Lcom/android/settings_exlib/applications/ApplicationsState;->mMainHandler:Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;

    .line 674
    const/4 v9, 0x1

    .line 673
    invoke-virtual {v7, v9, p0}, Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 675
    .local v6, "msg":Landroid/os/Message;
    iget-object v7, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    iget-object v7, v7, Lcom/android/settings_exlib/applications/ApplicationsState;->mMainHandler:Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;

    invoke-virtual {v7, v6}, Lcom/android/settings_exlib/applications/ApplicationsState$MainHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_1

    .line 665
    .end local v6    # "msg":Landroid/os/Message;
    :catchall_3
    move-exception v7

    monitor-exit v8

    throw v7
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 571
    iget-object v0, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    iget-object v1, v0, Lcom/android/settings_exlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v1

    .line 572
    :try_start_0
    iget-boolean v0, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->mResumed:Z

    if-eqz v0, :cond_0

    .line 573
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->mResumed:Z

    .line 574
    iget-object v0, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/settings_exlib/applications/ApplicationsState;->mSessionsChanged:Z

    .line 575
    iget-object v0, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p0}, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->removeMessages(ILjava/lang/Object;)V

    .line 576
    iget-object v0, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    invoke-virtual {v0}, Lcom/android/settings_exlib/applications/ApplicationsState;->doPauseIfNeededLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 569
    return-void

    .line 571
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public rebuild(Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;Ljava/util/Comparator;)Ljava/util/ArrayList;
    .locals 1
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
    .line 590
    .local p2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->rebuild(Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;Ljava/util/Comparator;Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public rebuild(Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;Ljava/util/Comparator;Z)Ljava/util/ArrayList;
    .locals 6
    .param p1, "filter"    # Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;
    .param p3, "foreground"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;",
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;",
            ">;Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .local p2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;>;"
    const/4 v5, 0x0

    .line 595
    iget-object v2, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->mRebuildSync:Ljava/lang/Object;

    monitor-enter v2

    .line 596
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    iget-object v3, v1, Lcom/android/settings_exlib/applications/ApplicationsState;->mRebuildingSessions:Ljava/util/ArrayList;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 597
    :try_start_1
    iget-object v1, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    iget-object v1, v1, Lcom/android/settings_exlib/applications/ApplicationsState;->mRebuildingSessions:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 598
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->mRebuildRequested:Z

    .line 599
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->mRebuildAsync:Z

    .line 600
    iput-object p1, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->mRebuildFilter:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

    .line 601
    iput-object p2, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->mRebuildComparator:Ljava/util/Comparator;

    .line 602
    iput-boolean p3, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->mRebuildForeground:Z

    .line 603
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->mRebuildResult:Ljava/util/ArrayList;

    .line 604
    iget-object v1, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    iget-object v1, v1, Lcom/android/settings_exlib/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 605
    iget-object v1, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    iget-object v1, v1, Lcom/android/settings_exlib/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;

    .line 606
    const/4 v4, 0x1

    .line 605
    invoke-virtual {v1, v4}, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 607
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    iget-object v1, v1, Lcom/android/settings_exlib/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;

    invoke-virtual {v1, v0}, Lcom/android/settings_exlib/applications/ApplicationsState$BackgroundHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v2

    .line 611
    return-object v5

    .line 596
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v3

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 595
    :catchall_1
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public release()V
    .locals 2

    .prologue
    .line 685
    invoke-virtual {p0}, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->pause()V

    .line 686
    iget-object v0, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    iget-object v1, v0, Lcom/android/settings_exlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v1

    .line 687
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState;->mSessions:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 684
    return-void

    .line 686
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 559
    iget-object v0, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    iget-object v1, v0, Lcom/android/settings_exlib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v1

    .line 560
    :try_start_0
    iget-boolean v0, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->mResumed:Z

    if-nez v0, :cond_0

    .line 561
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->mResumed:Z

    .line 562
    iget-object v0, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/settings_exlib/applications/ApplicationsState;->mSessionsChanged:Z

    .line 563
    iget-object v0, p0, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->this$0:Lcom/android/settings_exlib/applications/ApplicationsState;

    invoke-virtual {v0}, Lcom/android/settings_exlib/applications/ApplicationsState;->doResumeIfNeededLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 557
    return-void

    .line 559
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
