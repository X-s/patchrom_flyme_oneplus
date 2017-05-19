.class Lcom/android/server/am/OnePlusProcessManager$4;
.super Landroid/app/IProcessObserver$Stub;
.source "OnePlusProcessManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusProcessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OnePlusProcessManager;


# direct methods
.method constructor <init>(Lcom/android/server/am/OnePlusProcessManager;)V
    .locals 0

    .prologue
    .line 1526
    iput-object p1, p0, Lcom/android/server/am/OnePlusProcessManager$4;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onForegroundActivitiesChanged(IIZ)V
    .locals 10
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "foregroundActivities"    # Z

    .prologue
    .line 1532
    sget-boolean v5, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v5, :cond_0

    .line 1533
    const-string v5, "OnePlusProcessManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onForegroundActivitiesChanged  uid ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " begin"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1534
    :cond_0
    if-eqz p3, :cond_4

    .line 1535
    iget-object v5, p0, Lcom/android/server/am/OnePlusProcessManager$4;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v5, v5, Lcom/android/server/am/OnePlusProcessManager;->mFontActivityUids:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    iget-object v5, p0, Lcom/android/server/am/OnePlusProcessManager$4;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v5, v5, Lcom/android/server/am/OnePlusProcessManager;->mFontActivityUids:Ljava/util/HashSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1536
    iget-object v5, p0, Lcom/android/server/am/OnePlusProcessManager$4;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v5, v5, Lcom/android/server/am/OnePlusProcessManager;->mFontActivityUids:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1538
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1539
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1540
    .local v3, "mUid":Ljava/lang/Integer;
    # getter for: Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$2300()Lcom/android/server/am/OnePlusProcessManager;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sget-wide v8, Lcom/android/server/am/OnePlusProcessManager;->suspendUidDelayTime:J

    # invokes: Lcom/android/server/am/OnePlusProcessManager;->sendSuspendUid(IJ)V
    invoke-static {v5, v6, v8, v9}, Lcom/android/server/am/OnePlusProcessManager;->access$1500(Lcom/android/server/am/OnePlusProcessManager;IJ)V

    .line 1541
    iget-object v5, p0, Lcom/android/server/am/OnePlusProcessManager$4;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    # invokes: Lcom/android/server/am/OnePlusProcessManager;->startComputeUidTraffic(I)V
    invoke-static {v5, v6}, Lcom/android/server/am/OnePlusProcessManager;->access$3700(Lcom/android/server/am/OnePlusProcessManager;I)V

    .line 1542
    sget-object v5, Lcom/android/server/am/OnePlusProcessManager;->mDoThawedUids:Ljava/util/HashSet;

    invoke-virtual {v5, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1543
    sget-object v5, Lcom/android/server/am/OnePlusProcessManager;->mDoThawedUids:Ljava/util/HashSet;

    invoke-virtual {v5, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1544
    sget-object v6, Lcom/android/server/am/OnePlusProcessManager;->mSensorUids:Ljava/util/ArrayList;

    monitor-enter v6

    .line 1545
    :try_start_0
    sget-object v5, Lcom/android/server/am/OnePlusProcessManager;->mSensorUids:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1546
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 1549
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v3    # "mUid":Ljava/lang/Integer;
    :cond_1
    iget-object v5, p0, Lcom/android/server/am/OnePlusProcessManager$4;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v5, v5, Lcom/android/server/am/OnePlusProcessManager;->mFontActivityUids:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->clear()V

    .line 1550
    iget-object v5, p0, Lcom/android/server/am/OnePlusProcessManager$4;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v5, v5, Lcom/android/server/am/OnePlusProcessManager;->mFontActivityUids:Ljava/util/HashSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1551
    iget-object v5, p0, Lcom/android/server/am/OnePlusProcessManager$4;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v5, v5, Lcom/android/server/am/OnePlusProcessManager;->mFontActivityUids:Ljava/util/HashSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1557
    :cond_2
    :goto_1
    const/4 v4, 0x0

    .line 1558
    .local v4, "pidState":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v5, p0, Lcom/android/server/am/OnePlusProcessManager$4;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v6, v5, Lcom/android/server/am/OnePlusProcessManager;->mRulesLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1559
    :try_start_1
    iget-object v5, p0, Lcom/android/server/am/OnePlusProcessManager$4;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v5, v5, Lcom/android/server/am/OnePlusProcessManager;->mUidPidState:Landroid/util/SparseArray;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/util/ArrayList;

    move-object v4, v0

    .line 1560
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1561
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ltz v5, :cond_3

    .line 1562
    const/16 v5, 0x2710

    if-lt p2, v5, :cond_3

    .line 1563
    if-eqz p3, :cond_5

    .line 1564
    sget-object v5, Lcom/android/server/am/OnePlusProcessManager;->mLoactionFailUidsCount:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1565
    sget-object v5, Lcom/android/server/am/OnePlusProcessManager;->mSuspendFailUidsCount:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1566
    iget-object v5, p0, Lcom/android/server/am/OnePlusProcessManager$4;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v5, v5, Lcom/android/server/am/OnePlusProcessManager;->mResumeUidBroadcasts:Landroid/util/SparseArray;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->remove(I)V

    .line 1567
    iget-object v5, p0, Lcom/android/server/am/OnePlusProcessManager$4;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    # getter for: Lcom/android/server/am/OnePlusProcessManager;->mSuspendProcessHander:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/server/am/OnePlusProcessManager;->access$400(Lcom/android/server/am/OnePlusProcessManager;)Landroid/os/Handler;

    move-result-object v5

    add-int/lit16 v6, p2, -0x2710

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1568
    # getter for: Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$2300()Lcom/android/server/am/OnePlusProcessManager;

    move-result-object v5

    const-string v6, "onForegroundActivitiesChanged"

    # invokes: Lcom/android/server/am/OnePlusProcessManager;->sendResumeUid(ILjava/lang/String;)Z
    invoke-static {v5, p2, v6}, Lcom/android/server/am/OnePlusProcessManager;->access$3800(Lcom/android/server/am/OnePlusProcessManager;ILjava/lang/String;)Z

    .line 1569
    iget-object v5, p0, Lcom/android/server/am/OnePlusProcessManager$4;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    # invokes: Lcom/android/server/am/OnePlusProcessManager;->sendForegroundChangeMessage(I)V
    invoke-static {v5, p2}, Lcom/android/server/am/OnePlusProcessManager;->access$3900(Lcom/android/server/am/OnePlusProcessManager;I)V

    .line 1570
    sget-object v6, Lcom/android/server/am/OnePlusProcessManager;->mSensorUids:Ljava/util/ArrayList;

    monitor-enter v6

    .line 1571
    :try_start_2
    sget-object v5, Lcom/android/server/am/OnePlusProcessManager;->mSensorUids:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1572
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1582
    :goto_2
    sget-boolean v5, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v5, :cond_3

    .line 1583
    const-string v5, "OnePlusProcessManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onForeground mFontActivityUids="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/am/OnePlusProcessManager$4;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v7, v7, Lcom/android/server/am/OnePlusProcessManager;->mFontActivityUids:Ljava/util/HashSet;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1588
    :cond_3
    return-void

    .line 1553
    .end local v4    # "pidState":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_4
    iget-object v5, p0, Lcom/android/server/am/OnePlusProcessManager$4;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v5, v5, Lcom/android/server/am/OnePlusProcessManager;->mFontActivityUids:Ljava/util/HashSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1554
    iget-object v5, p0, Lcom/android/server/am/OnePlusProcessManager$4;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v5, v5, Lcom/android/server/am/OnePlusProcessManager;->mFontActivityUids:Ljava/util/HashSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1560
    .restart local v4    # "pidState":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catchall_1
    move-exception v5

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v5

    .line 1572
    :catchall_2
    move-exception v5

    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v5

    .line 1574
    :cond_5
    # getter for: Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$2300()Lcom/android/server/am/OnePlusProcessManager;

    move-result-object v5

    const-wide/16 v6, 0x4

    sget-wide v8, Lcom/android/server/am/OnePlusProcessManager;->suspendUidDelayTime:J

    mul-long/2addr v6, v8

    # invokes: Lcom/android/server/am/OnePlusProcessManager;->sendSuspendUid(IJ)V
    invoke-static {v5, p2, v6, v7}, Lcom/android/server/am/OnePlusProcessManager;->access$1500(Lcom/android/server/am/OnePlusProcessManager;IJ)V

    .line 1575
    iget-object v5, p0, Lcom/android/server/am/OnePlusProcessManager$4;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    # invokes: Lcom/android/server/am/OnePlusProcessManager;->startComputeUidTraffic(I)V
    invoke-static {v5, p2}, Lcom/android/server/am/OnePlusProcessManager;->access$3700(Lcom/android/server/am/OnePlusProcessManager;I)V

    .line 1576
    sget-object v5, Lcom/android/server/am/OnePlusProcessManager;->mDoThawedUids:Ljava/util/HashSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1577
    sget-object v5, Lcom/android/server/am/OnePlusProcessManager;->mDoThawedUids:Ljava/util/HashSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1578
    sget-object v6, Lcom/android/server/am/OnePlusProcessManager;->mSensorUids:Ljava/util/ArrayList;

    monitor-enter v6

    .line 1579
    :try_start_5
    sget-object v5, Lcom/android/server/am/OnePlusProcessManager;->mSensorUids:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1580
    monitor-exit v6

    goto :goto_2

    :catchall_3
    move-exception v5

    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v5
.end method

.method public onProcessDied(II)V
    .locals 4
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .prologue
    .line 1597
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager$4;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v2, v1, Lcom/android/server/am/OnePlusProcessManager;->mRulesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1598
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager$4;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v1, v1, Lcom/android/server/am/OnePlusProcessManager;->mUidPidState:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1599
    .local v0, "pidState":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v1, "onProcessDied"

    const/4 v3, 0x2

    invoke-static {p2, v1, v3}, Lcom/android/server/am/OnePlusProcessManager;->resumeProcessByUID_out_Delay(ILjava/lang/String;I)V

    .line 1600
    if-eqz v0, :cond_0

    .line 1601
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1602
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_0

    .line 1603
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager$4;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v1, v1, Lcom/android/server/am/OnePlusProcessManager;->mUidPidState:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 1606
    :cond_0
    monitor-exit v2

    .line 1607
    return-void

    .line 1606
    .end local v0    # "pidState":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onProcessStateChanged(III)V
    .locals 0
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "procState"    # I

    .prologue
    .line 1592
    return-void
.end method
