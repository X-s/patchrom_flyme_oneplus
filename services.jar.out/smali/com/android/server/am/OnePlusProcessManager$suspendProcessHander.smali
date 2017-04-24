.class Lcom/android/server/am/OnePlusProcessManager$suspendProcessHander;
.super Landroid/os/Handler;
.source "OnePlusProcessManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusProcessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "suspendProcessHander"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OnePlusProcessManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/OnePlusProcessManager;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 771
    iput-object p1, p0, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHander;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    .line 772
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 773
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 17
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 777
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg1:I

    .line 778
    .local v11, "uid":I
    const/16 v12, 0x2710

    if-ge v11, v12, :cond_1

    .line 877
    :cond_0
    :goto_0
    return-void

    .line 781
    :cond_1
    # getter for: Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$100()Z

    move-result v12

    if-eqz v12, :cond_0

    # getter for: Lcom/android/server/am/OnePlusProcessManager;->mBPMStatusing:Z
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$200()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 784
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHander;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v13, v12, Lcom/android/server/am/OnePlusProcessManager;->mRulesLock:Ljava/lang/Object;

    monitor-enter v13

    .line 785
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHander;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v12, v12, Lcom/android/server/am/OnePlusProcessManager;->mUidPidState:Landroid/util/SparseArray;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v12, v14}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v5

    .line 786
    .local v5, "index":I
    if-gez v5, :cond_2

    .line 787
    sget-object v14, Lcom/android/server/am/OnePlusProcessManager;->mUnFrozenReasonUids:Landroid/util/ArrayMap;

    monitor-enter v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 788
    :try_start_1
    sget-object v12, Lcom/android/server/am/OnePlusProcessManager;->mUnFrozenReasonUids:Landroid/util/ArrayMap;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v12, v15}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 789
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 790
    :try_start_2
    monitor-exit v13

    goto :goto_0

    .line 792
    .end local v5    # "index":I
    :catchall_0
    move-exception v12

    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v12

    .line 789
    .restart local v5    # "index":I
    :catchall_1
    move-exception v12

    :try_start_3
    monitor-exit v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v12

    .line 792
    :cond_2
    monitor-exit v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 793
    invoke-static {v11}, Lcom/android/server/am/OnePlusProcessManager;->isSuspendUid(I)Z

    move-result v12

    if-nez v12, :cond_0

    .line 796
    sget-object v13, Lcom/android/server/am/OnePlusProcessManager;->mAdjustUids:Ljava/util/HashSet;

    monitor-enter v13

    .line 797
    :try_start_5
    sget-object v12, Lcom/android/server/am/OnePlusProcessManager;->mAdjustUids:Ljava/util/HashSet;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 798
    monitor-exit v13
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 799
    # getter for: Lcom/android/server/am/OnePlusProcessManager;->mCharging:Z
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$300()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 800
    sget-object v12, Lcom/android/server/am/OnePlusProcessManager;->mDoThawedUids:Ljava/util/HashSet;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 801
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHander;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    # getter for: Lcom/android/server/am/OnePlusProcessManager;->mSuspendProcessHander:Landroid/os/Handler;
    invoke-static {v12}, Lcom/android/server/am/OnePlusProcessManager;->access$400(Lcom/android/server/am/OnePlusProcessManager;)Landroid/os/Handler;

    move-result-object v12

    add-int/lit16 v13, v11, -0x2710

    invoke-virtual {v12, v13}, Landroid/os/Handler;->removeMessages(I)V

    .line 802
    sget-boolean v12, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v12, :cond_0

    .line 803
    const-string v12, "OnePlusProcessManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "suspendProcessHander mCharging  so drop uid ="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 798
    :catchall_2
    move-exception v12

    :try_start_6
    monitor-exit v13
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v12

    .line 807
    :cond_3
    sput v11, Lcom/android/server/am/OnePlusProcessManager;->mPendingUid:I

    .line 808
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHander;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    # getter for: Lcom/android/server/am/OnePlusProcessManager;->mSuspendProcessHander:Landroid/os/Handler;
    invoke-static {v12}, Lcom/android/server/am/OnePlusProcessManager;->access$400(Lcom/android/server/am/OnePlusProcessManager;)Landroid/os/Handler;

    move-result-object v12

    add-int/lit16 v13, v11, -0x2710

    invoke-virtual {v12, v13}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 809
    sget-boolean v12, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v12, :cond_0

    .line 810
    const-string v12, "OnePlusProcessManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "suspendProcessHander hasMessages  so drop uid ="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 813
    :cond_4
    sget-boolean v12, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v12, :cond_5

    .line 814
    const-string v12, "OnePlusProcessManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "suspendProcessHander handleMessage uid ="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHander;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    # invokes: Lcom/android/server/am/OnePlusProcessManager;->checkSuspendUid(I)D
    invoke-static {v12, v11}, Lcom/android/server/am/OnePlusProcessManager;->access$500(Lcom/android/server/am/OnePlusProcessManager;I)D

    move-result-wide v8

    .line 816
    .local v8, "suspendReturn":D
    const/4 v7, 0x0

    .line 817
    .local v7, "suspendRelateUids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHander;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    # getter for: Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_OK:D
    invoke-static {v12}, Lcom/android/server/am/OnePlusProcessManager;->access$600(Lcom/android/server/am/OnePlusProcessManager;)D

    move-result-wide v12

    cmpl-double v12, v8, v12

    if-nez v12, :cond_6

    .line 818
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHander;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    # invokes: Lcom/android/server/am/OnePlusProcessManager;->suspendRelateUid(I)Ljava/util/ArrayList;
    invoke-static {v12, v11}, Lcom/android/server/am/OnePlusProcessManager;->access$700(Lcom/android/server/am/OnePlusProcessManager;I)Ljava/util/ArrayList;

    move-result-object v7

    .line 820
    :cond_6
    const/4 v10, 0x1

    .line 821
    .local v10, "suspendSuccess":Z
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHander;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    # getter for: Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_OK:D
    invoke-static {v12}, Lcom/android/server/am/OnePlusProcessManager;->access$600(Lcom/android/server/am/OnePlusProcessManager;)D

    move-result-wide v12

    cmpl-double v12, v8, v12

    if-nez v12, :cond_7

    if-eqz v7, :cond_7

    .line 822
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHander;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    # invokes: Lcom/android/server/am/OnePlusProcessManager;->startSuspendUids(I)Z
    invoke-static {v12, v11}, Lcom/android/server/am/OnePlusProcessManager;->access$800(Lcom/android/server/am/OnePlusProcessManager;I)Z

    move-result v10

    .line 823
    sget-object v13, Lcom/android/server/am/OnePlusProcessManager;->mUnFrozenReasonUids:Landroid/util/ArrayMap;

    monitor-enter v13

    .line 824
    :try_start_7
    sget-object v12, Lcom/android/server/am/OnePlusProcessManager;->mUnFrozenReasonUids:Landroid/util/ArrayMap;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v14}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 825
    monitor-exit v13
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 826
    if-eqz v10, :cond_b

    .line 827
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v4, v12, :cond_b

    .line 828
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHander;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    # invokes: Lcom/android/server/am/OnePlusProcessManager;->startSuspendUids(I)Z
    invoke-static {v13, v12}, Lcom/android/server/am/OnePlusProcessManager;->access$800(Lcom/android/server/am/OnePlusProcessManager;I)Z

    .line 827
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 825
    .end local v4    # "i":I
    :catchall_3
    move-exception v12

    :try_start_8
    monitor-exit v13
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v12

    .line 832
    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHander;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    # invokes: Lcom/android/server/am/OnePlusProcessManager;->addSuspendDelayCount(I)J
    invoke-static {v12, v11}, Lcom/android/server/am/OnePlusProcessManager;->access$900(Lcom/android/server/am/OnePlusProcessManager;I)J

    move-result-wide v2

    .line 833
    .local v2, "delay":J
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHander;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    # getter for: Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_FAIL_NOTRY:D
    invoke-static {v12}, Lcom/android/server/am/OnePlusProcessManager;->access$1000(Lcom/android/server/am/OnePlusProcessManager;)D

    move-result-wide v12

    cmpl-double v12, v8, v12

    if-nez v12, :cond_9

    .line 834
    sget-boolean v12, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_ONEPLUS:Z

    if-eqz v12, :cond_8

    .line 835
    const-string v12, "OnePlusProcessManager"

    const-string v13, "suspendProcessHander SUSPEND_FAIL_NOTRY suspendReturn ="

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    :cond_8
    sget-object v13, Lcom/android/server/am/OnePlusProcessManager;->mAdjustUids:Ljava/util/HashSet;

    monitor-enter v13

    .line 837
    :try_start_9
    sget-object v12, Lcom/android/server/am/OnePlusProcessManager;->mAdjustUids:Ljava/util/HashSet;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 838
    monitor-exit v13
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 839
    sget-object v12, Lcom/android/server/am/OnePlusProcessManager;->mDoThawedUids:Ljava/util/HashSet;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 840
    const/4 v12, 0x0

    sput v12, Lcom/android/server/am/OnePlusProcessManager;->mPendingUid:I

    goto/16 :goto_0

    .line 838
    :catchall_4
    move-exception v12

    :try_start_a
    monitor-exit v13
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    throw v12

    .line 842
    :cond_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHander;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    # getter for: Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_FAIL_LONG:D
    invoke-static {v12}, Lcom/android/server/am/OnePlusProcessManager;->access$1100(Lcom/android/server/am/OnePlusProcessManager;)D

    move-result-wide v12

    cmpl-double v12, v8, v12

    if-nez v12, :cond_d

    .line 843
    const-wide/16 v12, 0x5

    mul-long/2addr v2, v12

    .line 860
    :cond_a
    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHander;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    # invokes: Lcom/android/server/am/OnePlusProcessManager;->sendSuspendUid(IJ)V
    invoke-static {v12, v11, v2, v3}, Lcom/android/server/am/OnePlusProcessManager;->access$1500(Lcom/android/server/am/OnePlusProcessManager;IJ)V

    .line 863
    sget-object v13, Lcom/android/server/am/OnePlusProcessManager;->mUnFrozenReasonUids:Landroid/util/ArrayMap;

    monitor-enter v13

    .line 864
    :try_start_b
    sget-object v12, Lcom/android/server/am/OnePlusProcessManager;->mUnFrozenReasonUids:Landroid/util/ArrayMap;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v14}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 865
    sget-object v12, Lcom/android/server/am/OnePlusProcessManager;->mUnFrozenReasonUids:Landroid/util/ArrayMap;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "suspendReturn ="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 866
    monitor-exit v13
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 868
    .end local v2    # "delay":J
    :cond_b
    if-eqz v10, :cond_c

    .line 869
    sget-object v13, Lcom/android/server/am/OnePlusProcessManager;->mAdjustUids:Ljava/util/HashSet;

    monitor-enter v13

    .line 870
    :try_start_c
    sget-object v12, Lcom/android/server/am/OnePlusProcessManager;->mAdjustUids:Ljava/util/HashSet;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 871
    monitor-exit v13
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 872
    sget-object v12, Lcom/android/server/am/OnePlusProcessManager;->mDoThawedUids:Ljava/util/HashSet;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 874
    :cond_c
    const/4 v12, 0x0

    sput v12, Lcom/android/server/am/OnePlusProcessManager;->mPendingUid:I

    .line 875
    sget-boolean v12, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v12, :cond_0

    .line 876
    const-string v12, "OnePlusProcessManager"

    const-string v13, "suspendProcessHander ms"

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 844
    .restart local v2    # "delay":J
    :cond_d
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHander;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    # getter for: Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_FAIL_SLEEP:D
    invoke-static {v12}, Lcom/android/server/am/OnePlusProcessManager;->access$1200(Lcom/android/server/am/OnePlusProcessManager;)D

    move-result-wide v12

    cmpl-double v12, v8, v12

    if-lez v12, :cond_e

    .line 845
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHander;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    # getter for: Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_FAIL_SLEEP:D
    invoke-static {v12}, Lcom/android/server/am/OnePlusProcessManager;->access$1200(Lcom/android/server/am/OnePlusProcessManager;)D

    move-result-wide v12

    sub-double v12, v8, v12

    double-to-long v12, v12

    const-wide/16 v14, 0x1

    add-long/2addr v12, v14

    const-wide/16 v14, 0x3e8

    mul-long v2, v12, v14

    goto :goto_2

    .line 847
    :cond_e
    # getter for: Lcom/android/server/am/OnePlusProcessManager;->isAlarmAdjust:Z
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$1300()Z

    move-result v12

    if-eqz v12, :cond_a

    .line 848
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHander;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v12, v12, Lcom/android/server/am/OnePlusProcessManager;->mAlarmAdjust:Ljava/util/HashSet;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_a

    .line 849
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHander;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v12, v12, Lcom/android/server/am/OnePlusProcessManager;->mAlarmAdjust:Ljava/util/HashSet;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 850
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHander;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    # invokes: Lcom/android/server/am/OnePlusProcessManager;->getPackageNameForUid(I)Ljava/lang/String;
    invoke-static {v12, v11}, Lcom/android/server/am/OnePlusProcessManager;->access$1400(Lcom/android/server/am/OnePlusProcessManager;I)Ljava/lang/String;

    move-result-object v6

    .line 851
    .local v6, "packageName":Ljava/lang/String;
    if-eqz v6, :cond_a

    .line 853
    :try_start_d
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHander;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v12, v12, Lcom/android/server/am/OnePlusProcessManager;->mAlarm:Landroid/app/IAlarmManager;

    const/4 v13, 0x1

    const/4 v14, 0x1

    invoke-interface {v12, v6, v13, v14}, Landroid/app/IAlarmManager;->setBlockAlarmUid(Ljava/lang/String;ZI)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_0

    goto/16 :goto_2

    .line 854
    :catch_0
    move-exception v12

    goto/16 :goto_2

    .line 866
    .end local v6    # "packageName":Ljava/lang/String;
    :catchall_5
    move-exception v12

    :try_start_e
    monitor-exit v13
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    throw v12

    .line 871
    .end local v2    # "delay":J
    :catchall_6
    move-exception v12

    :try_start_f
    monitor-exit v13
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    throw v12
.end method
