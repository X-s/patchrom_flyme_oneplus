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
    .line 713
    iput-object p1, p0, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHander;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    .line 714
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 715
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 719
    iget v6, p1, Landroid/os/Message;->arg1:I

    .line 720
    .local v6, "uid":I
    const/16 v7, 0x2710

    if-ge v6, v7, :cond_1

    .line 767
    :cond_0
    :goto_0
    return-void

    .line 723
    :cond_1
    # getter for: Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$100()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 726
    iget-object v7, p0, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHander;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v8, v7, Lcom/android/server/am/OnePlusProcessManager;->mRulesLock:Ljava/lang/Object;

    monitor-enter v8

    .line 727
    :try_start_0
    iget-object v7, p0, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHander;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v7, v7, Lcom/android/server/am/OnePlusProcessManager;->mUidPidState:Landroid/util/SparseArray;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v3

    .line 728
    .local v3, "index":I
    if-gez v3, :cond_2

    .line 729
    sget-object v7, Lcom/android/server/am/OnePlusProcessManager;->mUnFrozenReasonUids:Landroid/util/ArrayMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 730
    monitor-exit v8

    goto :goto_0

    .line 732
    .end local v3    # "index":I
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .restart local v3    # "index":I
    :cond_2
    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 733
    invoke-static {v6}, Lcom/android/server/am/OnePlusProcessManager;->isSuspendUid(I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 736
    sget-object v7, Lcom/android/server/am/OnePlusProcessManager;->mDoThawedUids:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 737
    iget-object v7, p0, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHander;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    # getter for: Lcom/android/server/am/OnePlusProcessManager;->mSuspendProcessHander:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/server/am/OnePlusProcessManager;->access$200(Lcom/android/server/am/OnePlusProcessManager;)Landroid/os/Handler;

    move-result-object v7

    add-int/lit16 v8, v6, -0x2710

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 738
    sget-boolean v7, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v7, :cond_3

    .line 739
    const-string v7, "OnePlusProcessManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "suspendProcessHander handleMessage uid ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    :cond_3
    iget-object v7, p0, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHander;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    # invokes: Lcom/android/server/am/OnePlusProcessManager;->checkSuspendUid(I)I
    invoke-static {v7, v6}, Lcom/android/server/am/OnePlusProcessManager;->access$300(Lcom/android/server/am/OnePlusProcessManager;I)I

    move-result v5

    .line 741
    .local v5, "suspendReturn":I
    const/4 v4, 0x0

    .line 742
    .local v4, "suspendRelateUids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v7, p0, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHander;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    # getter for: Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_OK:I
    invoke-static {v7}, Lcom/android/server/am/OnePlusProcessManager;->access$400(Lcom/android/server/am/OnePlusProcessManager;)I

    move-result v7

    if-ne v5, v7, :cond_4

    .line 743
    iget-object v7, p0, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHander;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    # invokes: Lcom/android/server/am/OnePlusProcessManager;->suspendRelateUid(I)Ljava/util/ArrayList;
    invoke-static {v7, v6}, Lcom/android/server/am/OnePlusProcessManager;->access$500(Lcom/android/server/am/OnePlusProcessManager;I)Ljava/util/ArrayList;

    move-result-object v4

    .line 745
    :cond_4
    iget-object v7, p0, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHander;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    # getter for: Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_OK:I
    invoke-static {v7}, Lcom/android/server/am/OnePlusProcessManager;->access$400(Lcom/android/server/am/OnePlusProcessManager;)I

    move-result v7

    if-ne v5, v7, :cond_5

    if-eqz v4, :cond_5

    .line 746
    iget-object v7, p0, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHander;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    # invokes: Lcom/android/server/am/OnePlusProcessManager;->startSuspendUids(I)Z
    invoke-static {v7, v6}, Lcom/android/server/am/OnePlusProcessManager;->access$600(Lcom/android/server/am/OnePlusProcessManager;I)Z

    .line 747
    sget-object v7, Lcom/android/server/am/OnePlusProcessManager;->mUnFrozenReasonUids:Landroid/util/ArrayMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 748
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_8

    .line 749
    iget-object v8, p0, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHander;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    # invokes: Lcom/android/server/am/OnePlusProcessManager;->startSuspendUids(I)Z
    invoke-static {v8, v7}, Lcom/android/server/am/OnePlusProcessManager;->access$600(Lcom/android/server/am/OnePlusProcessManager;I)Z

    .line 748
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 752
    .end local v2    # "i":I
    :cond_5
    iget-object v7, p0, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHander;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    # invokes: Lcom/android/server/am/OnePlusProcessManager;->addSuspendDelayCount(I)J
    invoke-static {v7, v6}, Lcom/android/server/am/OnePlusProcessManager;->access$700(Lcom/android/server/am/OnePlusProcessManager;I)J

    move-result-wide v0

    .line 753
    .local v0, "delay":J
    iget-object v7, p0, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHander;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    # getter for: Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_FAIL_NOTRY:I
    invoke-static {v7}, Lcom/android/server/am/OnePlusProcessManager;->access$800(Lcom/android/server/am/OnePlusProcessManager;)I

    move-result v7

    if-ne v5, v7, :cond_6

    .line 754
    const-string v7, "OnePlusProcessManager"

    const-string v8, "suspendProcessHander SUSPEND_FAIL_NOTRY suspendReturn ="

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 756
    :cond_6
    iget-object v7, p0, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHander;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    # getter for: Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_FAIL_LONG:I
    invoke-static {v7}, Lcom/android/server/am/OnePlusProcessManager;->access$900(Lcom/android/server/am/OnePlusProcessManager;)I

    move-result v7

    if-ne v5, v7, :cond_7

    .line 757
    const-wide/16 v8, 0x5

    mul-long/2addr v0, v8

    .line 759
    :cond_7
    iget-object v7, p0, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHander;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    # invokes: Lcom/android/server/am/OnePlusProcessManager;->sendSuspendUid(IJ)V
    invoke-static {v7, v6, v0, v1}, Lcom/android/server/am/OnePlusProcessManager;->access$1000(Lcom/android/server/am/OnePlusProcessManager;IJ)V

    .line 762
    sget-object v7, Lcom/android/server/am/OnePlusProcessManager;->mUnFrozenReasonUids:Landroid/util/ArrayMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 763
    sget-object v7, Lcom/android/server/am/OnePlusProcessManager;->mUnFrozenReasonUids:Landroid/util/ArrayMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "suspendReturn ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 765
    .end local v0    # "delay":J
    :cond_8
    sget-boolean v7, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v7, :cond_0

    .line 766
    const-string v7, "OnePlusProcessManager"

    const-string v8, "suspendProcessHander ms"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
