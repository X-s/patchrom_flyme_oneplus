.class Lcom/android/server/am/OnePlusProcessManager$oneplusProcessHander;
.super Landroid/os/Handler;
.source "OnePlusProcessManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusProcessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "oneplusProcessHander"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OnePlusProcessManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/OnePlusProcessManager;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 896
    iput-object p1, p0, Lcom/android/server/am/OnePlusProcessManager$oneplusProcessHander;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    .line 897
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 898
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 24
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 901
    sget-boolean v19, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v19, :cond_0

    .line 902
    const-string v19, "OnePlusProcessManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "[FO]handleMessage(): msg="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    :cond_0
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v19, v0

    packed-switch v19, :pswitch_data_0

    .line 1006
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    .line 906
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager$oneplusProcessHander;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    move-object/from16 v19, v0

    new-instance v20, Lcom/android/server/am/OnePlusProcessManager$FileObserverPolicy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager$oneplusProcessHander;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    move-object/from16 v21, v0

    const-string v22, "/data/data_bpm/"

    invoke-direct/range {v20 .. v22}, Lcom/android/server/am/OnePlusProcessManager$FileObserverPolicy;-><init>(Lcom/android/server/am/OnePlusProcessManager;Ljava/lang/String;)V

    # setter for: Lcom/android/server/am/OnePlusProcessManager;->mDataBpmDirFileObserver:Lcom/android/server/am/OnePlusProcessManager$FileObserverPolicy;
    invoke-static/range {v19 .. v20}, Lcom/android/server/am/OnePlusProcessManager;->access$1302(Lcom/android/server/am/OnePlusProcessManager;Lcom/android/server/am/OnePlusProcessManager$FileObserverPolicy;)Lcom/android/server/am/OnePlusProcessManager$FileObserverPolicy;

    .line 907
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager$oneplusProcessHander;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/am/OnePlusProcessManager;->mDataBpmDirFileObserver:Lcom/android/server/am/OnePlusProcessManager$FileObserverPolicy;
    invoke-static/range {v19 .. v19}, Lcom/android/server/am/OnePlusProcessManager;->access$1300(Lcom/android/server/am/OnePlusProcessManager;)Lcom/android/server/am/OnePlusProcessManager$FileObserverPolicy;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/am/OnePlusProcessManager$FileObserverPolicy;->startWatching()V

    goto :goto_0

    .line 911
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager$oneplusProcessHander;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/am/OnePlusProcessManager;->loadNPMConfigFiles()V

    goto :goto_0

    .line 915
    :pswitch_3
    # getter for: Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$100()Z

    move-result v13

    .line 917
    .local v13, "oldStatus":Z
    const-string v19, "/data/data_bpm/bpm_sts.xml"

    invoke-static/range {v19 .. v19}, Lcom/android/server/am/OnePlusProcessManager;->loadStateLocked(Ljava/lang/String;)Ljava/util/List;

    move-result-object v15

    .line 918
    .local v15, "pl":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v15, :cond_4

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    .line 919
    sget-boolean v19, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v19, :cond_2

    .line 920
    const-string v19, "OnePlusProcessManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "[FO]UPDATE_STS: before: mBPMStatus="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    # getter for: Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$100()Z

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    :cond_2
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    const-string v20, "true"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5

    const/16 v16, 0x1

    .line 923
    .local v16, "temp":Z
    :goto_1
    move/from16 v0, v16

    if-eq v13, v0, :cond_3

    .line 924
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 925
    .local v7, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v20, "BPMStatus"

    if-eqz v16, :cond_6

    const-string v19, "true"

    :goto_2
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 926
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager$oneplusProcessHander;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager;->appTracker:Lnet/oneplus/odm/insight/tracker/AppTracker;

    move-object/from16 v19, v0

    if-eqz v19, :cond_3

    .line 927
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager$oneplusProcessHander;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager;->appTracker:Lnet/oneplus/odm/insight/tracker/AppTracker;

    move-object/from16 v19, v0

    const-string v20, "OnePlusProcessManager"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v7}, Lnet/oneplus/odm/insight/tracker/AppTracker;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 936
    .end local v7    # "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager$oneplusProcessHander;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/am/OnePlusProcessManager;->setBPMEnable(Z)V

    .line 940
    .end local v16    # "temp":Z
    :cond_4
    const-string v19, "OnePlusProcessManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "[FO]UPDATE_STS: after: mBPMStatus="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    # getter for: Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$100()Z

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager$oneplusProcessHander;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/am/OnePlusProcessManager;->updateProperties()V

    goto/16 :goto_0

    .line 922
    :cond_5
    const/16 v16, 0x0

    goto :goto_1

    .line 925
    .restart local v7    # "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v16    # "temp":Z
    :cond_6
    const-string v19, "false"

    goto :goto_2

    .line 946
    .end local v7    # "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v13    # "oldStatus":Z
    .end local v15    # "pl":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v16    # "temp":Z
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager$oneplusProcessHander;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    move-object/from16 v19, v0

    const-string v20, "/data/data_bpm/brd.xml"

    invoke-static/range {v20 .. v20}, Lcom/android/server/am/OnePlusProcessManager;->loadStateLocked(Ljava/lang/String;)Ljava/util/List;

    move-result-object v20

    # setter for: Lcom/android/server/am/OnePlusProcessManager;->mBrdList:Ljava/util/List;
    invoke-static/range {v19 .. v20}, Lcom/android/server/am/OnePlusProcessManager;->access$1402(Lcom/android/server/am/OnePlusProcessManager;Ljava/util/List;)Ljava/util/List;

    .line 947
    const-string v19, "OnePlusProcessManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "[FO]UPDATE_STS: after: mBrdList="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager$oneplusProcessHander;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    move-object/from16 v21, v0

    # getter for: Lcom/android/server/am/OnePlusProcessManager;->mBrdList:Ljava/util/List;
    invoke-static/range {v21 .. v21}, Lcom/android/server/am/OnePlusProcessManager;->access$1400(Lcom/android/server/am/OnePlusProcessManager;)Ljava/util/List;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 958
    :pswitch_5
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v18, v0

    .line 959
    .local v18, "uidDelay":I
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg2:I

    .line 962
    .local v14, "pidDelay":I
    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    # invokes: Lcom/android/server/am/OnePlusProcessManager;->writePidToTasksFile(IIZ)V
    invoke-static {v0, v14, v1}, Lcom/android/server/am/OnePlusProcessManager;->access$1500(IIZ)V

    goto/16 :goto_0

    .line 965
    .end local v14    # "pidDelay":I
    .end local v18    # "uidDelay":I
    :pswitch_6
    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    .line 966
    .local v6, "childpid":I
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    .line 968
    .local v4, "addUid":I
    # invokes: Lcom/android/server/am/OnePlusProcessManager;->writePidToTasksFile(II)V
    invoke-static {v4, v6}, Lcom/android/server/am/OnePlusProcessManager;->access$1600(II)V

    .line 969
    # getter for: Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$100()Z

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    .line 970
    # getter for: Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$1700()Lcom/android/server/am/OnePlusProcessManager;

    move-result-object v19

    const-wide/16 v20, 0x2

    sget-wide v22, Lcom/android/server/am/OnePlusProcessManager;->suspendUidDelayTime:J

    mul-long v20, v20, v22

    move-object/from16 v0, v19

    move-wide/from16 v1, v20

    # invokes: Lcom/android/server/am/OnePlusProcessManager;->sendSuspendUid(IJ)V
    invoke-static {v0, v4, v1, v2}, Lcom/android/server/am/OnePlusProcessManager;->access$1000(Lcom/android/server/am/OnePlusProcessManager;IJ)V

    goto/16 :goto_0

    .line 974
    .end local v4    # "addUid":I
    .end local v6    # "childpid":I
    :pswitch_7
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v17, v0

    .line 975
    .local v17, "uid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager$oneplusProcessHander;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager;->mFontActivityUids:Ljava/util/HashSet;

    move-object/from16 v19, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_1

    .line 978
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager$oneplusProcessHander;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v17

    # invokes: Lcom/android/server/am/OnePlusProcessManager;->computeUidTraffic(I)I
    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusProcessManager;->access$1800(Lcom/android/server/am/OnePlusProcessManager;I)I

    move-result v5

    .line 979
    .local v5, "again":I
    const/16 v19, 0x1

    move/from16 v0, v19

    if-lt v5, v0, :cond_1

    .line 980
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v12

    .line 981
    .local v12, "msg2":Landroid/os/Message;
    const/16 v19, 0x74

    move/from16 v0, v19

    iput v0, v12, Landroid/os/Message;->what:I

    .line 982
    move/from16 v0, v17

    iput v0, v12, Landroid/os/Message;->arg1:I

    .line 983
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager$oneplusProcessHander;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/am/OnePlusProcessManager;->mOneplusProcessHander:Landroid/os/Handler;
    invoke-static/range {v19 .. v19}, Lcom/android/server/am/OnePlusProcessManager;->access$000(Lcom/android/server/am/OnePlusProcessManager;)Landroid/os/Handler;

    move-result-object v19

    sget-wide v20, Lcom/android/server/am/OnePlusProcessManager;->computeTrafficTime:J

    int-to-long v0, v5

    move-wide/from16 v22, v0

    mul-long v20, v20, v22

    move-object/from16 v0, v19

    move-wide/from16 v1, v20

    invoke-virtual {v0, v12, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 987
    .end local v5    # "again":I
    .end local v12    # "msg2":Landroid/os/Message;
    .end local v17    # "uid":I
    :pswitch_8
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg1:I

    .line 988
    .local v11, "mUid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager$oneplusProcessHander;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager;->mResumeUidBroadcasts:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/ArrayMap;

    .line 990
    .local v9, "mBroadcasts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 991
    .local v10, "mCount":Ljava/lang/Integer;
    if-eqz v9, :cond_1

    .line 992
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_3
    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v8, v0, :cond_1

    .line 993
    invoke-virtual {v9, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "mCount":Ljava/lang/Integer;
    check-cast v10, Ljava/lang/Integer;

    .line 994
    .restart local v10    # "mCount":Ljava/lang/Integer;
    if-eqz v10, :cond_7

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v19

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_7

    .line 995
    invoke-virtual {v9, v8}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 992
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 904
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
