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
    .line 221
    iput-object p1, p0, Lcom/android/server/am/OnePlusProcessManager$oneplusProcessHander;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    .line 222
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 223
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x1

    const/4 v9, 0x0

    .line 226
    sget-boolean v8, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v8, :cond_0

    .line 227
    const-string v8, "OnePlusProcessManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[FO]handleMessage(): msg="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_0
    iget v8, p1, Landroid/os/Message;->what:I

    packed-switch v8, :pswitch_data_0

    .line 293
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    .line 231
    :pswitch_1
    iget-object v8, p0, Lcom/android/server/am/OnePlusProcessManager$oneplusProcessHander;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    new-instance v9, Lcom/android/server/am/OnePlusProcessManager$FileObserverPolicy;

    iget-object v10, p0, Lcom/android/server/am/OnePlusProcessManager$oneplusProcessHander;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    const-string v11, "/data/data_bpm/"

    invoke-direct {v9, v10, v11}, Lcom/android/server/am/OnePlusProcessManager$FileObserverPolicy;-><init>(Lcom/android/server/am/OnePlusProcessManager;Ljava/lang/String;)V

    # setter for: Lcom/android/server/am/OnePlusProcessManager;->mDataBpmDirFileObserver:Lcom/android/server/am/OnePlusProcessManager$FileObserverPolicy;
    invoke-static {v8, v9}, Lcom/android/server/am/OnePlusProcessManager;->access$002(Lcom/android/server/am/OnePlusProcessManager;Lcom/android/server/am/OnePlusProcessManager$FileObserverPolicy;)Lcom/android/server/am/OnePlusProcessManager$FileObserverPolicy;

    .line 232
    iget-object v8, p0, Lcom/android/server/am/OnePlusProcessManager$oneplusProcessHander;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    # getter for: Lcom/android/server/am/OnePlusProcessManager;->mDataBpmDirFileObserver:Lcom/android/server/am/OnePlusProcessManager$FileObserverPolicy;
    invoke-static {v8}, Lcom/android/server/am/OnePlusProcessManager;->access$000(Lcom/android/server/am/OnePlusProcessManager;)Lcom/android/server/am/OnePlusProcessManager$FileObserverPolicy;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/am/OnePlusProcessManager$FileObserverPolicy;->startWatching()V

    goto :goto_0

    .line 236
    :pswitch_2
    iget-object v8, p0, Lcom/android/server/am/OnePlusProcessManager$oneplusProcessHander;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-virtual {v8}, Lcom/android/server/am/OnePlusProcessManager;->loadNPMConfigFiles()V

    .line 239
    :pswitch_3
    # getter for: Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$100()Z

    move-result v3

    .line 241
    .local v3, "oldStatus":Z
    const-string v8, "/data/data_bpm/bpm_sts.xml"

    invoke-static {v8}, Lcom/android/server/am/OnePlusProcessManager;->loadStateLocked(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 242
    .local v5, "pl":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v5, :cond_4

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-ne v8, v6, :cond_4

    .line 243
    sget-boolean v8, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v8, :cond_2

    .line 244
    const-string v8, "OnePlusProcessManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[FO]UPDATE_STS: before: mBPMStatus="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    # getter for: Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$100()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_2
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v10, "true"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 247
    .local v6, "temp":Z
    :goto_1
    iget-object v8, p0, Lcom/android/server/am/OnePlusProcessManager$oneplusProcessHander;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    # getter for: Lcom/android/server/am/OnePlusProcessManager;->mPkgList:Ljava/util/List;
    invoke-static {v8}, Lcom/android/server/am/OnePlusProcessManager;->access$200(Lcom/android/server/am/OnePlusProcessManager;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/server/am/OnePlusProcessManager$oneplusProcessHander;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    # getter for: Lcom/android/server/am/OnePlusProcessManager;->mBrdList:Ljava/util/List;
    invoke-static {v8}, Lcom/android/server/am/OnePlusProcessManager;->access$300(Lcom/android/server/am/OnePlusProcessManager;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_6

    .line 248
    :cond_3
    iget-object v8, p0, Lcom/android/server/am/OnePlusProcessManager$oneplusProcessHander;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-virtual {v8, v9}, Lcom/android/server/am/OnePlusProcessManager;->setBPMEnable(Z)V

    .line 254
    .end local v6    # "temp":Z
    :cond_4
    :goto_2
    const-string v8, "OnePlusProcessManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[FO]UPDATE_STS: after: mBPMStatus="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    # getter for: Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$100()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object v8, p0, Lcom/android/server/am/OnePlusProcessManager$oneplusProcessHander;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-virtual {v8}, Lcom/android/server/am/OnePlusProcessManager;->updateProperties()V

    goto/16 :goto_0

    :cond_5
    move v6, v9

    .line 246
    goto :goto_1

    .line 250
    .restart local v6    # "temp":Z
    :cond_6
    iget-object v8, p0, Lcom/android/server/am/OnePlusProcessManager$oneplusProcessHander;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-virtual {v8, v6}, Lcom/android/server/am/OnePlusProcessManager;->setBPMEnable(Z)V

    goto :goto_2

    .line 260
    .end local v3    # "oldStatus":Z
    .end local v5    # "pl":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "temp":Z
    :pswitch_4
    iget-object v8, p0, Lcom/android/server/am/OnePlusProcessManager$oneplusProcessHander;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    const-string v9, "/data/data_bpm/brd.xml"

    invoke-static {v9}, Lcom/android/server/am/OnePlusProcessManager;->loadStateLocked(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    # setter for: Lcom/android/server/am/OnePlusProcessManager;->mBrdList:Ljava/util/List;
    invoke-static {v8, v9}, Lcom/android/server/am/OnePlusProcessManager;->access$302(Lcom/android/server/am/OnePlusProcessManager;Ljava/util/List;)Ljava/util/List;

    goto/16 :goto_0

    .line 264
    :pswitch_5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 265
    .local v2, "mNewPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v8, "/data/data_bpm/pkg.xml"

    invoke-static {v8}, Lcom/android/server/am/OnePlusProcessManager;->loadStateLocked(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 266
    iget-object v8, p0, Lcom/android/server/am/OnePlusProcessManager$oneplusProcessHander;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v9, p0, Lcom/android/server/am/OnePlusProcessManager$oneplusProcessHander;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    # getter for: Lcom/android/server/am/OnePlusProcessManager;->mPkgList:Ljava/util/List;
    invoke-static {v9}, Lcom/android/server/am/OnePlusProcessManager;->access$200(Lcom/android/server/am/OnePlusProcessManager;)Ljava/util/List;

    move-result-object v9

    # invokes: Lcom/android/server/am/OnePlusProcessManager;->handlePackageChange(Ljava/util/List;Ljava/util/List;)V
    invoke-static {v8, v9, v2}, Lcom/android/server/am/OnePlusProcessManager;->access$400(Lcom/android/server/am/OnePlusProcessManager;Ljava/util/List;Ljava/util/List;)V

    .line 267
    iget-object v8, p0, Lcom/android/server/am/OnePlusProcessManager$oneplusProcessHander;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    # setter for: Lcom/android/server/am/OnePlusProcessManager;->mPkgList:Ljava/util/List;
    invoke-static {v8, v2}, Lcom/android/server/am/OnePlusProcessManager;->access$202(Lcom/android/server/am/OnePlusProcessManager;Ljava/util/List;)Ljava/util/List;

    goto/16 :goto_0

    .line 271
    .end local v2    # "mNewPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_6
    iget v7, p1, Landroid/os/Message;->arg1:I

    .line 272
    .local v7, "uidDelay":I
    iget v4, p1, Landroid/os/Message;->arg2:I

    .line 275
    .local v4, "pidDelay":I
    # invokes: Lcom/android/server/am/OnePlusProcessManager;->writePidToTasksFile(IIZ)V
    invoke-static {v7, v4, v9}, Lcom/android/server/am/OnePlusProcessManager;->access$500(IIZ)V

    goto/16 :goto_0

    .line 278
    .end local v4    # "pidDelay":I
    .end local v7    # "uidDelay":I
    :pswitch_7
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 279
    .local v1, "childpid":I
    iget v0, p1, Landroid/os/Message;->arg2:I

    .line 280
    .local v0, "addUid":I
    # invokes: Lcom/android/server/am/OnePlusProcessManager;->writePidToTasksFile(II)V
    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusProcessManager;->access$600(II)V

    .line 281
    # getter for: Lcom/android/server/am/OnePlusProcessManager;->screen_on_forzen_enable:Z
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$700()Z

    move-result v8

    if-nez v8, :cond_7

    sget-boolean v8, Lcom/android/server/am/OnePlusProcessManager;->mScreen_ON_ING:Z

    if-eqz v8, :cond_7

    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->getScreenState()Z

    move-result v8

    if-nez v8, :cond_1

    .line 283
    :cond_7
    # getter for: Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$800()Lcom/android/server/am/OnePlusProcessManager;

    move-result-object v8

    const-string v9, "addPidToCgroupTasksWithJudge"

    # invokes: Lcom/android/server/am/OnePlusProcessManager;->sendResumeProcessMessage(ILjava/lang/String;)Z
    invoke-static {v8, v0, v9}, Lcom/android/server/am/OnePlusProcessManager;->access$900(Lcom/android/server/am/OnePlusProcessManager;ILjava/lang/String;)Z

    .line 285
    const-string v8, "addPidToCgroupTasksWithJudge"

    # invokes: Lcom/android/server/am/OnePlusProcessManager;->checkIsRelateProcess(ILjava/lang/String;Z)Z
    invoke-static {v0, v8, v6}, Lcom/android/server/am/OnePlusProcessManager;->access$1000(ILjava/lang/String;Z)Z

    .line 286
    # getter for: Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$800()Lcom/android/server/am/OnePlusProcessManager;

    move-result-object v8

    # invokes: Lcom/android/server/am/OnePlusProcessManager;->sendSuspendMessageForUid(I)V
    invoke-static {v8, v0}, Lcom/android/server/am/OnePlusProcessManager;->access$1100(Lcom/android/server/am/OnePlusProcessManager;I)V

    goto/16 :goto_0

    .line 229
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
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
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
