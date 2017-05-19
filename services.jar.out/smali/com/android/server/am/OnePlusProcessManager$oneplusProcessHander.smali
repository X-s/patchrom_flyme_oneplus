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
    .line 1013
    iput-object p1, p0, Lcom/android/server/am/OnePlusProcessManager$oneplusProcessHander;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    .line 1014
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1015
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 26
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1018
    sget-boolean v20, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v20, :cond_0

    .line 1019
    const-string v20, "OnePlusProcessManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "[FO]handleMessage(): msg="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    :cond_0
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v20, v0

    packed-switch v20, :pswitch_data_0

    .line 1135
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    .line 1023
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager$oneplusProcessHander;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    move-object/from16 v20, v0

    new-instance v21, Lcom/android/server/am/OnePlusProcessManager$FileObserverPolicy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager$oneplusProcessHander;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    move-object/from16 v22, v0

    const-string v23, "/data/data_bpm/"

    invoke-direct/range {v21 .. v23}, Lcom/android/server/am/OnePlusProcessManager$FileObserverPolicy;-><init>(Lcom/android/server/am/OnePlusProcessManager;Ljava/lang/String;)V

    # setter for: Lcom/android/server/am/OnePlusProcessManager;->mDataBpmDirFileObserver:Lcom/android/server/am/OnePlusProcessManager$FileObserverPolicy;
    invoke-static/range {v20 .. v21}, Lcom/android/server/am/OnePlusProcessManager;->access$1802(Lcom/android/server/am/OnePlusProcessManager;Lcom/android/server/am/OnePlusProcessManager$FileObserverPolicy;)Lcom/android/server/am/OnePlusProcessManager$FileObserverPolicy;

    .line 1024
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager$oneplusProcessHander;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/am/OnePlusProcessManager;->mDataBpmDirFileObserver:Lcom/android/server/am/OnePlusProcessManager$FileObserverPolicy;
    invoke-static/range {v20 .. v20}, Lcom/android/server/am/OnePlusProcessManager;->access$1800(Lcom/android/server/am/OnePlusProcessManager;)Lcom/android/server/am/OnePlusProcessManager$FileObserverPolicy;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/am/OnePlusProcessManager$FileObserverPolicy;->startWatching()V

    goto :goto_0

    .line 1028
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager$oneplusProcessHander;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/am/OnePlusProcessManager;->loadNPMConfigFiles()V

    .line 1030
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager$oneplusProcessHander;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager;->mAlarm:Landroid/app/IAlarmManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager$oneplusProcessHander;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    move-object/from16 v21, v0

    # getter for: Lcom/android/server/am/OnePlusProcessManager;->mBlackAlarmList:Ljava/util/List;
    invoke-static/range {v21 .. v21}, Lcom/android/server/am/OnePlusProcessManager;->access$1900(Lcom/android/server/am/OnePlusProcessManager;)Ljava/util/List;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Landroid/app/IAlarmManager;->setBlackAlarm(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1031
    :catch_0
    move-exception v20

    goto :goto_0

    .line 1036
    :pswitch_3
    # getter for: Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$100()Z

    move-result v13

    .line 1038
    .local v13, "oldStatus":Z
    const-string v20, "/data/data_bpm/bpm_sts.xml"

    invoke-static/range {v20 .. v20}, Lcom/android/server/am/OnePlusProcessManager;->loadStateLocked(Ljava/lang/String;)Ljava/util/List;

    move-result-object v15

    .line 1039
    .local v15, "pl":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v15, :cond_4

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    .line 1040
    sget-boolean v20, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v20, :cond_2

    .line 1041
    const-string v20, "OnePlusProcessManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "[FO]UPDATE_STS: before: mBPMStatus="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    # getter for: Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$100()Z

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    :cond_2
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    const-string v21, "true"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_5

    const/16 v16, 0x1

    .line 1044
    .local v16, "temp":Z
    :goto_1
    move/from16 v0, v16

    if-eq v13, v0, :cond_3

    .line 1045
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 1046
    .local v7, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v21, "BPMStatus"

    if-eqz v16, :cond_6

    const-string v20, "true"

    :goto_2
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1047
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager$oneplusProcessHander;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager;->appTracker:Lnet/oneplus/odm/insight/tracker/AppTracker;

    move-object/from16 v20, v0

    if-eqz v20, :cond_3

    .line 1048
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager$oneplusProcessHander;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager;->appTracker:Lnet/oneplus/odm/insight/tracker/AppTracker;

    move-object/from16 v20, v0

    const-string v21, "OnePlusProcessManager"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v7}, Lnet/oneplus/odm/insight/tracker/AppTracker;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 1057
    .end local v7    # "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager$oneplusProcessHander;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/am/OnePlusProcessManager;->setBPMEnable(Z)V

    .line 1061
    .end local v16    # "temp":Z
    :cond_4
    const-string v20, "OnePlusProcessManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "[FO]UPDATE_STS: after: mBPMStatus="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    # getter for: Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$100()Z

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager$oneplusProcessHander;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/am/OnePlusProcessManager;->updateProperties()V

    goto/16 :goto_0

    .line 1043
    :cond_5
    const/16 v16, 0x0

    goto :goto_1

    .line 1046
    .restart local v7    # "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v16    # "temp":Z
    :cond_6
    const-string v20, "false"

    goto :goto_2

    .line 1067
    .end local v7    # "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v13    # "oldStatus":Z
    .end local v15    # "pl":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v16    # "temp":Z
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager$oneplusProcessHander;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    move-object/from16 v20, v0

    const-string v21, "/data/data_bpm/brd.xml"

    invoke-static/range {v21 .. v21}, Lcom/android/server/am/OnePlusProcessManager;->loadStateLocked(Ljava/lang/String;)Ljava/util/List;

    move-result-object v21

    # setter for: Lcom/android/server/am/OnePlusProcessManager;->mBrdList:Ljava/util/List;
    invoke-static/range {v20 .. v21}, Lcom/android/server/am/OnePlusProcessManager;->access$2002(Lcom/android/server/am/OnePlusProcessManager;Ljava/util/List;)Ljava/util/List;

    .line 1068
    const-string v20, "OnePlusProcessManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "[FO]UPDATE_STS: after: mBrdList="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager$oneplusProcessHander;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    move-object/from16 v22, v0

    # getter for: Lcom/android/server/am/OnePlusProcessManager;->mBrdList:Ljava/util/List;
    invoke-static/range {v22 .. v22}, Lcom/android/server/am/OnePlusProcessManager;->access$2000(Lcom/android/server/am/OnePlusProcessManager;)Ljava/util/List;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1079
    :pswitch_5
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v19, v0

    .line 1080
    .local v19, "uidDelay":I
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg2:I

    .line 1083
    .local v14, "pidDelay":I
    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    # invokes: Lcom/android/server/am/OnePlusProcessManager;->writePidToTasksFile(IIZ)V
    invoke-static {v0, v14, v1}, Lcom/android/server/am/OnePlusProcessManager;->access$2100(IIZ)V

    goto/16 :goto_0

    .line 1086
    .end local v14    # "pidDelay":I
    .end local v19    # "uidDelay":I
    :pswitch_6
    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    .line 1087
    .local v6, "childpid":I
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    .line 1089
    .local v4, "addUid":I
    # invokes: Lcom/android/server/am/OnePlusProcessManager;->writePidToTasksFile(II)V
    invoke-static {v4, v6}, Lcom/android/server/am/OnePlusProcessManager;->access$2200(II)V

    .line 1090
    # getter for: Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$100()Z

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1

    .line 1091
    # getter for: Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$2300()Lcom/android/server/am/OnePlusProcessManager;

    move-result-object v20

    const-wide/16 v22, 0x2

    sget-wide v24, Lcom/android/server/am/OnePlusProcessManager;->suspendUidDelayTime:J

    mul-long v22, v22, v24

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    # invokes: Lcom/android/server/am/OnePlusProcessManager;->sendSuspendUid(IJ)V
    invoke-static {v0, v4, v1, v2}, Lcom/android/server/am/OnePlusProcessManager;->access$1500(Lcom/android/server/am/OnePlusProcessManager;IJ)V

    goto/16 :goto_0

    .line 1095
    .end local v4    # "addUid":I
    .end local v6    # "childpid":I
    :pswitch_7
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v17, v0

    .line 1096
    .local v17, "uid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager$oneplusProcessHander;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager;->mFontActivityUids:Ljava/util/HashSet;

    move-object/from16 v20, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_1

    .line 1099
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager$oneplusProcessHander;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v17

    # invokes: Lcom/android/server/am/OnePlusProcessManager;->computeUidTraffic(I)I
    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusProcessManager;->access$2400(Lcom/android/server/am/OnePlusProcessManager;I)I

    move-result v5

    .line 1100
    .local v5, "again":I
    const/16 v20, 0x1

    move/from16 v0, v20

    if-lt v5, v0, :cond_1

    .line 1101
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v12

    .line 1102
    .local v12, "msg2":Landroid/os/Message;
    const/16 v20, 0x74

    move/from16 v0, v20

    iput v0, v12, Landroid/os/Message;->what:I

    .line 1103
    move/from16 v0, v17

    iput v0, v12, Landroid/os/Message;->arg1:I

    .line 1104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager$oneplusProcessHander;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/am/OnePlusProcessManager;->mOneplusProcessHander:Landroid/os/Handler;
    invoke-static/range {v20 .. v20}, Lcom/android/server/am/OnePlusProcessManager;->access$000(Lcom/android/server/am/OnePlusProcessManager;)Landroid/os/Handler;

    move-result-object v20

    sget-wide v22, Lcom/android/server/am/OnePlusProcessManager;->computeTrafficTime:J

    int-to-long v0, v5

    move-wide/from16 v24, v0

    mul-long v22, v22, v24

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v12, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1108
    .end local v5    # "again":I
    .end local v12    # "msg2":Landroid/os/Message;
    .end local v17    # "uid":I
    :pswitch_8
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg1:I

    .line 1109
    .local v11, "mUid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager$oneplusProcessHander;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager;->mResumeUidBroadcasts:Landroid/util/SparseArray;

    move-object/from16 v20, v0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/ArrayMap;

    .line 1111
    .local v9, "mBroadcasts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 1112
    .local v10, "mCount":Ljava/lang/Integer;
    if-eqz v9, :cond_1

    .line 1113
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_3
    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v8, v0, :cond_1

    .line 1114
    invoke-virtual {v9, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "mCount":Ljava/lang/Integer;
    check-cast v10, Ljava/lang/Integer;

    .line 1115
    .restart local v10    # "mCount":Ljava/lang/Integer;
    if-eqz v10, :cond_7

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v20

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_7

    .line 1116
    invoke-virtual {v9, v8}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 1113
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 1123
    .end local v8    # "i":I
    .end local v9    # "mBroadcasts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v10    # "mCount":Ljava/lang/Integer;
    .end local v11    # "mUid":I
    :pswitch_9
    # getter for: Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$2300()Lcom/android/server/am/OnePlusProcessManager;

    move-result-object v20

    if-eqz v20, :cond_1

    .line 1124
    # getter for: Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$2300()Lcom/android/server/am/OnePlusProcessManager;

    move-result-object v20

    const-string v21, "updateScreenState"

    invoke-virtual/range {v20 .. v21}, Lcom/android/server/am/OnePlusProcessManager;->resumeAllProcessLock(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1128
    :pswitch_a
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v18, v0

    .line 1129
    .local v18, "uid2":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager$oneplusProcessHander;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v18

    # invokes: Lcom/android/server/am/OnePlusProcessManager;->updateForegroundActivityChange(I)V
    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusProcessManager;->access$2500(Lcom/android/server/am/OnePlusProcessManager;I)V

    goto/16 :goto_0

    .line 1021
    nop

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
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method
