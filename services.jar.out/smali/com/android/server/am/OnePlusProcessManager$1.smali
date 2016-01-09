.class Lcom/android/server/am/OnePlusProcessManager$1;
.super Landroid/os/Handler;
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
    .line 194
    iput-object p1, p0, Lcom/android/server/am/OnePlusProcessManager$1;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 197
    sget-boolean v7, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v7, :cond_0

    .line 198
    const-string v7, "OnePlusProcessManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[FO]handleMessage # msg="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_0
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    .line 284
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    .line 203
    :pswitch_1
    iget-object v7, p0, Lcom/android/server/am/OnePlusProcessManager$1;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    new-instance v8, Lcom/android/server/am/OnePlusProcessManager$FileObserverPolicy;

    iget-object v9, p0, Lcom/android/server/am/OnePlusProcessManager$1;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    const-string v10, "/data/data_bpm/"

    invoke-direct {v8, v9, v10}, Lcom/android/server/am/OnePlusProcessManager$FileObserverPolicy;-><init>(Lcom/android/server/am/OnePlusProcessManager;Ljava/lang/String;)V

    # setter for: Lcom/android/server/am/OnePlusProcessManager;->mDataBpmDirFileObserver:Lcom/android/server/am/OnePlusProcessManager$FileObserverPolicy;
    invoke-static {v7, v8}, Lcom/android/server/am/OnePlusProcessManager;->access$002(Lcom/android/server/am/OnePlusProcessManager;Lcom/android/server/am/OnePlusProcessManager$FileObserverPolicy;)Lcom/android/server/am/OnePlusProcessManager$FileObserverPolicy;

    .line 204
    iget-object v7, p0, Lcom/android/server/am/OnePlusProcessManager$1;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    # getter for: Lcom/android/server/am/OnePlusProcessManager;->mDataBpmDirFileObserver:Lcom/android/server/am/OnePlusProcessManager$FileObserverPolicy;
    invoke-static {v7}, Lcom/android/server/am/OnePlusProcessManager;->access$000(Lcom/android/server/am/OnePlusProcessManager;)Lcom/android/server/am/OnePlusProcessManager$FileObserverPolicy;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/am/OnePlusProcessManager$FileObserverPolicy;->startWatching()V

    goto :goto_0

    .line 209
    :pswitch_2
    iget-object v7, p0, Lcom/android/server/am/OnePlusProcessManager$1;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-virtual {v7}, Lcom/android/server/am/OnePlusProcessManager;->loadNPMConfigFiles()V

    .line 213
    :pswitch_3
    # getter for: Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$100()Z

    move-result v1

    .line 215
    .local v1, "oldStatus":Z
    const-string v7, "/data/data_bpm/bpm_sts.xml"

    invoke-static {v7}, Lcom/android/server/am/OnePlusProcessManager;->loadStateLocked(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 216
    .local v3, "pl":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-ne v7, v4, :cond_4

    .line 217
    sget-boolean v7, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v7, :cond_2

    .line 218
    const-string v7, "OnePlusProcessManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[FO]UPDATE_STS: before: mBPMStatus="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    # getter for: Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$100()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_2
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v9, "true"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 221
    .local v4, "temp":Z
    :goto_1
    iget-object v7, p0, Lcom/android/server/am/OnePlusProcessManager$1;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    # getter for: Lcom/android/server/am/OnePlusProcessManager;->mPkgList:Ljava/util/List;
    invoke-static {v7}, Lcom/android/server/am/OnePlusProcessManager;->access$200(Lcom/android/server/am/OnePlusProcessManager;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/server/am/OnePlusProcessManager$1;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    # getter for: Lcom/android/server/am/OnePlusProcessManager;->mBrdList:Ljava/util/List;
    invoke-static {v7}, Lcom/android/server/am/OnePlusProcessManager;->access$300(Lcom/android/server/am/OnePlusProcessManager;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_7

    .line 222
    :cond_3
    iget-object v7, p0, Lcom/android/server/am/OnePlusProcessManager$1;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-virtual {v7, v8}, Lcom/android/server/am/OnePlusProcessManager;->setBPMEnable(Z)V

    .line 227
    .end local v4    # "temp":Z
    :cond_4
    :goto_2
    sget-boolean v7, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v7, :cond_5

    .line 228
    const-string v7, "OnePlusProcessManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[FO]UPDATE_STS: after: mBPMStatus="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    # getter for: Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$100()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_5
    iget-object v7, p0, Lcom/android/server/am/OnePlusProcessManager$1;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-virtual {v7}, Lcom/android/server/am/OnePlusProcessManager;->updateProperties()V

    .line 230
    # getter for: Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$100()Z

    move-result v7

    if-eq v7, v1, :cond_1

    .line 231
    iget-object v7, p0, Lcom/android/server/am/OnePlusProcessManager$1;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    # getter for: Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$100()Z

    move-result v8

    # invokes: Lcom/android/server/am/OnePlusProcessManager;->updateProcessStateForChanged(Z)V
    invoke-static {v7, v8}, Lcom/android/server/am/OnePlusProcessManager;->access$400(Lcom/android/server/am/OnePlusProcessManager;Z)V

    goto/16 :goto_0

    :cond_6
    move v4, v8

    .line 220
    goto :goto_1

    .line 224
    .restart local v4    # "temp":Z
    :cond_7
    iget-object v7, p0, Lcom/android/server/am/OnePlusProcessManager$1;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-virtual {v7, v4}, Lcom/android/server/am/OnePlusProcessManager;->setBPMEnable(Z)V

    goto :goto_2

    .line 238
    .end local v1    # "oldStatus":Z
    .end local v3    # "pl":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "temp":Z
    :pswitch_4
    iget-object v7, p0, Lcom/android/server/am/OnePlusProcessManager$1;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    const-string v8, "/data/data_bpm/brd.xml"

    invoke-static {v8}, Lcom/android/server/am/OnePlusProcessManager;->loadStateLocked(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    # setter for: Lcom/android/server/am/OnePlusProcessManager;->mBrdList:Ljava/util/List;
    invoke-static {v7, v8}, Lcom/android/server/am/OnePlusProcessManager;->access$302(Lcom/android/server/am/OnePlusProcessManager;Ljava/util/List;)Ljava/util/List;

    goto/16 :goto_0

    .line 243
    :pswitch_5
    iget-object v7, p0, Lcom/android/server/am/OnePlusProcessManager$1;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    const-string v8, "/data/data_bpm/pkg.xml"

    invoke-static {v8}, Lcom/android/server/am/OnePlusProcessManager;->loadStateLocked(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    # setter for: Lcom/android/server/am/OnePlusProcessManager;->mPkgList:Ljava/util/List;
    invoke-static {v7, v8}, Lcom/android/server/am/OnePlusProcessManager;->access$202(Lcom/android/server/am/OnePlusProcessManager;Ljava/util/List;)Ljava/util/List;

    goto/16 :goto_0

    .line 247
    :pswitch_6
    iget v5, p1, Landroid/os/Message;->arg1:I

    .line 248
    .local v5, "uid":I
    sget-object v7, Lcom/android/server/am/OnePlusProcessManager;->mSuspendFailUidsCount:Landroid/util/ArrayMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 249
    .local v0, "count":Ljava/lang/Integer;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-lez v7, :cond_1

    .line 250
    sget-object v7, Lcom/android/server/am/OnePlusProcessManager;->mSuspendFailUidsBeahavier:Landroid/util/ArrayMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v7, v9, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 255
    .end local v0    # "count":Ljava/lang/Integer;
    .end local v5    # "uid":I
    :pswitch_7
    iget v6, p1, Landroid/os/Message;->arg1:I

    .line 256
    .local v6, "uidDelay":I
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 258
    .local v2, "pidDelay":I
    # invokes: Lcom/android/server/am/OnePlusProcessManager;->writePidToTasksFile(IIZ)V
    invoke-static {v6, v2, v8}, Lcom/android/server/am/OnePlusProcessManager;->access$500(IIZ)V

    goto/16 :goto_0

    .line 200
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
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
