.class Lcom/android/server/job/JobSchedulerService$JobHandler;
.super Landroid/os/Handler;
.source "JobSchedulerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobSchedulerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JobHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/job/JobSchedulerService;


# direct methods
.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 572
    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 573
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 574
    return-void
.end method

.method private isReadyToBeCancelledLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 1
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .prologue
    .line 723
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    # invokes: Lcom/android/server/job/JobSchedulerService;->isCurrentlyActiveLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    invoke-static {v0, p1}, Lcom/android/server/job/JobSchedulerService;->access$100(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isReadyToBeExecutedLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 6
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .prologue
    .line 705
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->isReady()Z

    move-result v2

    .line 706
    .local v2, "jobReady":Z
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v4, v4, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 707
    .local v1, "jobPending":Z
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    # invokes: Lcom/android/server/job/JobSchedulerService;->isCurrentlyActiveLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    invoke-static {v4, p1}, Lcom/android/server/job/JobSchedulerService;->access$100(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    .line 708
    .local v0, "jobActive":Z
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v4, v4, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUserId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    .line 714
    .local v3, "userRunning":Z
    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private maybeQueueReadyJobsForExecutionLockedH()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 648
    const/4 v1, 0x0

    .line 649
    .local v1, "chargingCount":I
    const/4 v4, 0x0

    .line 650
    .local v4, "idleCount":I
    const/4 v0, 0x0

    .line 651
    .local v0, "backoffCount":I
    const/4 v2, 0x0

    .line 652
    .local v2, "connectivityCount":I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 653
    .local v7, "runnableJobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    iget-object v8, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v8, v8, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v8}, Lcom/android/server/job/JobStore;->getJobs()Landroid/util/ArraySet;

    move-result-object v6

    .line 654
    .local v6, "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v8

    if-ge v3, v8, :cond_7

    .line 655
    invoke-virtual {v6, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/job/controllers/JobStatus;

    .line 656
    .local v5, "job":Lcom/android/server/job/controllers/JobStatus;
    invoke-direct {p0, v5}, Lcom/android/server/job/JobSchedulerService$JobHandler;->isReadyToBeExecutedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 657
    invoke-virtual {v5}, Lcom/android/server/job/controllers/JobStatus;->getNumFailures()I

    move-result v8

    if-lez v8, :cond_0

    .line 658
    add-int/lit8 v0, v0, 0x1

    .line 660
    :cond_0
    invoke-virtual {v5}, Lcom/android/server/job/controllers/JobStatus;->hasIdleConstraint()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 661
    add-int/lit8 v4, v4, 0x1

    .line 663
    :cond_1
    invoke-virtual {v5}, Lcom/android/server/job/controllers/JobStatus;->hasConnectivityConstraint()Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {v5}, Lcom/android/server/job/controllers/JobStatus;->hasUnmeteredConstraint()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 664
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 666
    :cond_3
    invoke-virtual {v5}, Lcom/android/server/job/controllers/JobStatus;->hasChargingConstraint()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 667
    add-int/lit8 v1, v1, 0x1

    .line 669
    :cond_4
    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 654
    :cond_5
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 670
    :cond_6
    invoke-direct {p0, v5}, Lcom/android/server/job/JobSchedulerService$JobHandler;->isReadyToBeCancelledLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 671
    iget-object v8, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    # invokes: Lcom/android/server/job/JobSchedulerService;->stopJobOnServiceContextLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    invoke-static {v8, v5}, Lcom/android/server/job/JobSchedulerService;->access$000(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/JobStatus;)Z

    goto :goto_1

    .line 674
    .end local v5    # "job":Lcom/android/server/job/controllers/JobStatus;
    :cond_7
    if-gtz v0, :cond_8

    if-ge v4, v9, :cond_8

    if-ge v2, v9, :cond_8

    if-ge v1, v9, :cond_8

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x2

    if-lt v8, v9, :cond_9

    .line 682
    :cond_8
    const/4 v3, 0x0

    :goto_2
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-ge v3, v8, :cond_9

    .line 683
    iget-object v8, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v8, v8, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 682
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 695
    :cond_9
    return-void
.end method

.method private maybeRunPendingJobsH()V
    .locals 9

    .prologue
    .line 732
    iget-object v6, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v7, v6, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    monitor-enter v7

    .line 733
    :try_start_0
    iget-object v6, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-boolean v6, v6, Lcom/android/server/job/JobSchedulerService;->mDeviceIdleMode:Z

    if-eqz v6, :cond_0

    .line 735
    monitor-exit v7

    .line 772
    :goto_0
    return-void

    .line 737
    :cond_0
    iget-object v6, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v6, v6, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 741
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/job/controllers/JobStatus;>;"
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 742
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/controllers/JobStatus;

    .line 743
    .local v4, "nextPending":Lcom/android/server/job/controllers/JobStatus;
    const/4 v0, 0x0

    .line 744
    .local v0, "availableContext":Lcom/android/server/job/JobServiceContext;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v6, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v6, v6, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_2

    .line 745
    iget-object v6, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v6, v6, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/JobServiceContext;

    .line 746
    .local v3, "jsc":Lcom/android/server/job/JobServiceContext;
    invoke-virtual {v3}, Lcom/android/server/job/JobServiceContext;->getRunningJob()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v5

    .line 747
    .local v5, "running":Lcom/android/server/job/controllers/JobStatus;
    if-eqz v5, :cond_4

    invoke-virtual {v4}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v6

    invoke-virtual {v4}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v8

    invoke-virtual {v5, v6, v8}, Lcom/android/server/job/controllers/JobStatus;->matches(II)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 750
    const/4 v0, 0x0

    .line 757
    .end local v3    # "jsc":Lcom/android/server/job/JobServiceContext;
    .end local v5    # "running":Lcom/android/server/job/controllers/JobStatus;
    :cond_2
    if-eqz v0, :cond_1

    .line 762
    invoke-virtual {v0, v4}, Lcom/android/server/job/JobServiceContext;->executeRunnableJob(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 766
    iget-object v6, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v6, v6, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v6, v4}, Lcom/android/server/job/JobStore;->remove(Lcom/android/server/job/controllers/JobStatus;)Z

    .line 768
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 771
    .end local v0    # "availableContext":Lcom/android/server/job/JobServiceContext;
    .end local v1    # "i":I
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v4    # "nextPending":Lcom/android/server/job/controllers/JobStatus;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 753
    .restart local v0    # "availableContext":Lcom/android/server/job/JobServiceContext;
    .restart local v1    # "i":I
    .restart local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/job/controllers/JobStatus;>;"
    .restart local v3    # "jsc":Lcom/android/server/job/JobServiceContext;
    .restart local v4    # "nextPending":Lcom/android/server/job/controllers/JobStatus;
    .restart local v5    # "running":Lcom/android/server/job/controllers/JobStatus;
    :cond_4
    :try_start_1
    invoke-virtual {v3}, Lcom/android/server/job/JobServiceContext;->isAvailable()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 754
    move-object v0, v3

    .line 744
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 771
    .end local v0    # "availableContext":Lcom/android/server/job/JobServiceContext;
    .end local v1    # "i":I
    .end local v3    # "jsc":Lcom/android/server/job/JobServiceContext;
    .end local v4    # "nextPending":Lcom/android/server/job/controllers/JobStatus;
    .end local v5    # "running":Lcom/android/server/job/controllers/JobStatus;
    :cond_6
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private queueReadyJobsForExecutionLockedH()V
    .locals 4

    .prologue
    .line 613
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v3, v3, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v3}, Lcom/android/server/job/JobStore;->getJobs()Landroid/util/ArraySet;

    move-result-object v2

    .line 617
    .local v2, "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 618
    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    .line 619
    .local v1, "job":Lcom/android/server/job/controllers/JobStatus;
    invoke-direct {p0, v1}, Lcom/android/server/job/JobSchedulerService$JobHandler;->isReadyToBeExecutedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 623
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v3, v3, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 617
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 624
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/server/job/JobSchedulerService$JobHandler;->isReadyToBeCancelledLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 625
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    # invokes: Lcom/android/server/job/JobSchedulerService;->stopJobOnServiceContextLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    invoke-static {v3, v1}, Lcom/android/server/job/JobSchedulerService;->access$000(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/JobStatus;)Z

    goto :goto_1

    .line 636
    .end local v1    # "job":Lcom/android/server/job/controllers/JobStatus;
    :cond_2
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 578
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    monitor-enter v2

    .line 579
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-boolean v1, v1, Lcom/android/server/job/JobSchedulerService;->mReadyToRock:Z

    if-nez v1, :cond_0

    .line 580
    monitor-exit v2

    .line 606
    :goto_0
    return-void

    .line 582
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 583
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 603
    :goto_1
    invoke-direct {p0}, Lcom/android/server/job/JobSchedulerService$JobHandler;->maybeRunPendingJobsH()V

    .line 605
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/job/JobSchedulerService$JobHandler;->removeMessages(I)V

    goto :goto_0

    .line 582
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 585
    :pswitch_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    monitor-enter v2

    .line 586
    :try_start_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/job/controllers/JobStatus;

    .line 589
    .local v0, "runNow":Lcom/android/server/job/controllers/JobStatus;
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v1, v0}, Lcom/android/server/job/JobStore;->containsJob(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 591
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 593
    :cond_1
    invoke-direct {p0}, Lcom/android/server/job/JobSchedulerService$JobHandler;->queueReadyJobsForExecutionLockedH()V

    .line 594
    monitor-exit v2

    goto :goto_1

    .end local v0    # "runNow":Lcom/android/server/job/controllers/JobStatus;
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 597
    :pswitch_1
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    monitor-enter v2

    .line 599
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/job/JobSchedulerService$JobHandler;->maybeQueueReadyJobsForExecutionLockedH()V

    .line 600
    monitor-exit v2

    goto :goto_1

    :catchall_2
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v1

    .line 583
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
