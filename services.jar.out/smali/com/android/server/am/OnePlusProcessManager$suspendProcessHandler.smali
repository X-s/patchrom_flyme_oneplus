.class Lcom/android/server/am/OnePlusProcessManager$suspendProcessHandler;
.super Landroid/os/Handler;
.source "OnePlusProcessManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusProcessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "suspendProcessHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OnePlusProcessManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/OnePlusProcessManager;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/OnePlusProcessManager;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 862
    iput-object p1, p0, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    .line 863
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 862
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 18
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 868
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    .line 869
    .local v12, "uid":I
    invoke-static {v12}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v13

    if-nez v13, :cond_0

    .line 870
    return-void

    .line 872
    :cond_0
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->-get8()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->-get9()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 875
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v14, v13, Lcom/android/server/am/OnePlusProcessManager;->mRulesLock:Ljava/lang/Object;

    monitor-enter v14

    .line 876
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v13, v13, Lcom/android/server/am/OnePlusProcessManager;->mUidPidState:Landroid/util/SparseArray;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v13, v15}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v6

    .line 877
    .local v6, "index":I
    if-gez v6, :cond_2

    .line 878
    sget-object v15, Lcom/android/server/am/OnePlusProcessManager;->mUnFrozenReasonUids:Landroid/util/ArrayMap;

    monitor-enter v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 879
    :try_start_1
    sget-object v13, Lcom/android/server/am/OnePlusProcessManager;->mUnFrozenReasonUids:Landroid/util/ArrayMap;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v14

    .line 881
    return-void

    .line 873
    .end local v6    # "index":I
    :cond_1
    return-void

    .line 878
    .restart local v6    # "index":I
    :catchall_0
    move-exception v13

    :try_start_3
    monitor-exit v15

    throw v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 875
    .end local v6    # "index":I
    :catchall_1
    move-exception v13

    monitor-exit v14

    throw v13

    .restart local v6    # "index":I
    :cond_2
    monitor-exit v14

    .line 884
    invoke-static {v12}, Lcom/android/server/am/OnePlusProcessManager;->isUidSuspended(I)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 885
    return-void

    .line 889
    :cond_3
    sget-object v14, Lcom/android/server/am/OnePlusProcessManager;->mAdjustUids:Ljava/util/HashSet;

    monitor-enter v14

    .line 890
    :try_start_4
    sget-object v13, Lcom/android/server/am/OnePlusProcessManager;->mAdjustUids:Ljava/util/HashSet;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    monitor-exit v14

    .line 893
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->-get12()Z

    move-result v13

    if-eqz v13, :cond_5

    .line 894
    sget-object v13, Lcom/android/server/am/OnePlusProcessManager;->mDoThawedUids:Ljava/util/HashSet;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 895
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-static {v13}, Lcom/android/server/am/OnePlusProcessManager;->-get19(Lcom/android/server/am/OnePlusProcessManager;)Landroid/os/Handler;

    move-result-object v13

    add-int/lit16 v14, v12, -0x2710

    invoke-virtual {v13, v14}, Landroid/os/Handler;->removeMessages(I)V

    .line 896
    sget-boolean v13, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v13, :cond_4

    .line 897
    const-string/jumbo v13, "OnePlusProcessManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "suspendProcessHandler mCharging  so skip uid ="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    :cond_4
    return-void

    .line 889
    :catchall_2
    move-exception v13

    monitor-exit v14

    throw v13

    .line 901
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-static {v13}, Lcom/android/server/am/OnePlusProcessManager;->-get19(Lcom/android/server/am/OnePlusProcessManager;)Landroid/os/Handler;

    move-result-object v13

    add-int/lit16 v14, v12, -0x2710

    invoke-virtual {v13, v14}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 902
    sget-boolean v13, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v13, :cond_6

    .line 903
    const-string/jumbo v13, "OnePlusProcessManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "suspendProcessHandler hasMessages alreay so skip uid ="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    :cond_6
    return-void

    .line 906
    :cond_7
    sput v12, Lcom/android/server/am/OnePlusProcessManager;->mPendingUid:I

    .line 907
    sget-boolean v13, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v13, :cond_8

    .line 908
    const-string/jumbo v13, "OnePlusProcessManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "suspendProcessHandler handleMessage uid ="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    :cond_8
    const/4 v8, 0x0

    .line 911
    .local v8, "suspendRelateUids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v9, 0x0

    .line 913
    .local v9, "suspendSuccess":Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-static {v13, v12}, Lcom/android/server/am/OnePlusProcessManager;->-wrap3(Lcom/android/server/am/OnePlusProcessManager;I)D

    move-result-wide v10

    .line 914
    .local v10, "suspendReturn":D
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-static {v13}, Lcom/android/server/am/OnePlusProcessManager;->-get4(Lcom/android/server/am/OnePlusProcessManager;)D

    move-result-wide v14

    cmpl-double v13, v10, v14

    if-nez v13, :cond_9

    .line 916
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-static {v13, v12}, Lcom/android/server/am/OnePlusProcessManager;->-wrap6(Lcom/android/server/am/OnePlusProcessManager;I)Ljava/util/ArrayList;

    move-result-object v8

    .line 918
    .end local v8    # "suspendRelateUids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-static {v13}, Lcom/android/server/am/OnePlusProcessManager;->-get4(Lcom/android/server/am/OnePlusProcessManager;)D

    move-result-wide v14

    cmpl-double v13, v10, v14

    if-nez v13, :cond_a

    if-eqz v8, :cond_a

    .line 919
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-static {v13, v12}, Lcom/android/server/am/OnePlusProcessManager;->-wrap2(Lcom/android/server/am/OnePlusProcessManager;I)Z

    move-result v9

    .line 921
    .local v9, "suspendSuccess":Z
    sget-object v14, Lcom/android/server/am/OnePlusProcessManager;->mUnFrozenReasonUids:Landroid/util/ArrayMap;

    monitor-enter v14

    .line 922
    :try_start_5
    sget-object v13, Lcom/android/server/am/OnePlusProcessManager;->mUnFrozenReasonUids:Landroid/util/ArrayMap;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v15}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    monitor-exit v14

    .line 924
    if-eqz v9, :cond_e

    .line 925
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v5, v13, :cond_e

    .line 926
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v14, v13}, Lcom/android/server/am/OnePlusProcessManager;->-wrap2(Lcom/android/server/am/OnePlusProcessManager;I)Z

    .line 925
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 921
    .end local v5    # "i":I
    :catchall_3
    move-exception v13

    monitor-exit v14

    throw v13

    .line 930
    .local v9, "suspendSuccess":Z
    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-static {v13, v12}, Lcom/android/server/am/OnePlusProcessManager;->-wrap7(Lcom/android/server/am/OnePlusProcessManager;I)J

    move-result-wide v2

    .line 931
    .local v2, "delay":J
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-static {v13}, Lcom/android/server/am/OnePlusProcessManager;->-get2(Lcom/android/server/am/OnePlusProcessManager;)D

    move-result-wide v14

    cmpl-double v13, v10, v14

    if-nez v13, :cond_c

    .line 932
    sget-boolean v13, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_ONEPLUS:Z

    if-eqz v13, :cond_b

    .line 933
    const-string/jumbo v13, "OnePlusProcessManager"

    const-string/jumbo v14, "suspendProcessHandler skip suspend: SUSPEND_FAIL_NOTRY"

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    :cond_b
    sget-object v14, Lcom/android/server/am/OnePlusProcessManager;->mAdjustUids:Ljava/util/HashSet;

    monitor-enter v14

    .line 935
    :try_start_6
    sget-object v13, Lcom/android/server/am/OnePlusProcessManager;->mAdjustUids:Ljava/util/HashSet;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    monitor-exit v14

    .line 937
    sget-object v13, Lcom/android/server/am/OnePlusProcessManager;->mDoThawedUids:Ljava/util/HashSet;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 938
    const/4 v13, 0x0

    sput v13, Lcom/android/server/am/OnePlusProcessManager;->mPendingUid:I

    .line 939
    return-void

    .line 934
    :catchall_4
    move-exception v13

    monitor-exit v14

    throw v13

    .line 940
    :cond_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-static {v13}, Lcom/android/server/am/OnePlusProcessManager;->-get1(Lcom/android/server/am/OnePlusProcessManager;)D

    move-result-wide v14

    cmpl-double v13, v10, v14

    if-nez v13, :cond_11

    .line 941
    const-wide/16 v14, 0x5

    mul-long/2addr v2, v14

    .line 958
    :cond_d
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-static {v13, v12, v2, v3}, Lcom/android/server/am/OnePlusProcessManager;->-wrap14(Lcom/android/server/am/OnePlusProcessManager;IJ)V

    .line 961
    sget-object v14, Lcom/android/server/am/OnePlusProcessManager;->mUnFrozenReasonUids:Landroid/util/ArrayMap;

    monitor-enter v14

    .line 962
    :try_start_7
    sget-object v13, Lcom/android/server/am/OnePlusProcessManager;->mUnFrozenReasonUids:Landroid/util/ArrayMap;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v15}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 963
    sget-object v13, Lcom/android/server/am/OnePlusProcessManager;->mUnFrozenReasonUids:Landroid/util/ArrayMap;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "suspendReturn ="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    monitor-exit v14

    .line 966
    .end local v2    # "delay":J
    .end local v9    # "suspendSuccess":Z
    :cond_e
    if-eqz v9, :cond_f

    .line 967
    sget-object v14, Lcom/android/server/am/OnePlusProcessManager;->mAdjustUids:Ljava/util/HashSet;

    monitor-enter v14

    .line 968
    :try_start_8
    sget-object v13, Lcom/android/server/am/OnePlusProcessManager;->mAdjustUids:Ljava/util/HashSet;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    monitor-exit v14

    .line 970
    sget-object v13, Lcom/android/server/am/OnePlusProcessManager;->mDoThawedUids:Ljava/util/HashSet;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 972
    :cond_f
    const/4 v13, 0x0

    sput v13, Lcom/android/server/am/OnePlusProcessManager;->mPendingUid:I

    .line 973
    sget-boolean v13, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v13, :cond_10

    .line 974
    const-string/jumbo v13, "OnePlusProcessManager"

    const-string/jumbo v14, "suspendProcessHandler end"

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    :cond_10
    return-void

    .line 942
    .restart local v2    # "delay":J
    .restart local v9    # "suspendSuccess":Z
    :cond_11
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-static {v13}, Lcom/android/server/am/OnePlusProcessManager;->-get3(Lcom/android/server/am/OnePlusProcessManager;)D

    move-result-wide v14

    cmpl-double v13, v10, v14

    if-lez v13, :cond_12

    .line 943
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-static {v13}, Lcom/android/server/am/OnePlusProcessManager;->-get3(Lcom/android/server/am/OnePlusProcessManager;)D

    move-result-wide v14

    sub-double v14, v10, v14

    double-to-long v14, v14

    const-wide/16 v16, 0x1

    add-long v14, v14, v16

    const-wide/16 v16, 0x3e8

    mul-long v2, v14, v16

    goto :goto_1

    .line 945
    :cond_12
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->-get5()Z

    move-result v13

    if-eqz v13, :cond_d

    .line 946
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v13, v13, Lcom/android/server/am/OnePlusProcessManager;->mAlarmAdjust:Ljava/util/HashSet;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_d

    .line 947
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v13, v13, Lcom/android/server/am/OnePlusProcessManager;->mAlarmAdjust:Ljava/util/HashSet;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 948
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-static {v13, v12}, Lcom/android/server/am/OnePlusProcessManager;->-wrap5(Lcom/android/server/am/OnePlusProcessManager;I)Ljava/lang/String;

    move-result-object v7

    .line 949
    .local v7, "packageName":Ljava/lang/String;
    if-eqz v7, :cond_d

    .line 951
    :try_start_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v13, v13, Lcom/android/server/am/OnePlusProcessManager;->mAlarm:Landroid/app/IAlarmManager;

    const/4 v14, 0x1

    const/4 v15, 0x1

    invoke-interface {v13, v7, v14, v15}, Landroid/app/IAlarmManager;->setBlockAlarmUid(Ljava/lang/String;ZI)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_1

    .line 952
    :catch_0
    move-exception v4

    .local v4, "e":Landroid/os/RemoteException;
    goto/16 :goto_1

    .line 961
    .end local v4    # "e":Landroid/os/RemoteException;
    .end local v7    # "packageName":Ljava/lang/String;
    :catchall_5
    move-exception v13

    monitor-exit v14

    throw v13

    .line 967
    .end local v2    # "delay":J
    .end local v9    # "suspendSuccess":Z
    :catchall_6
    move-exception v13

    monitor-exit v14

    throw v13
.end method
