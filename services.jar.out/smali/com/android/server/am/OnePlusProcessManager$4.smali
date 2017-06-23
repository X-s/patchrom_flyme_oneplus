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
    .line 1297
    iput-object p1, p0, Lcom/android/server/am/OnePlusProcessManager$4;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onForegroundActivitiesChanged(IIZ)V
    .locals 6
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "foregroundActivities"    # Z

    .prologue
    .line 1303
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v1, :cond_0

    .line 1304
    const-string v1, "OnePlusProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onForegroundActivitiesChanged  uid ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " begin"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1305
    :cond_0
    if-eqz p3, :cond_4

    .line 1306
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager$4;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v1, v1, Lcom/android/server/am/OnePlusProcessManager;->mFontActivityUids:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 1307
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager$4;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v1, v1, Lcom/android/server/am/OnePlusProcessManager;->mFontActivityUids:Ljava/util/HashSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1308
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager$4;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v1, v1, Lcom/android/server/am/OnePlusProcessManager;->mFontActivityUids:Ljava/util/HashSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1314
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager$4;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v2, v1, Lcom/android/server/am/OnePlusProcessManager;->mRulesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1315
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager$4;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v1, v1, Lcom/android/server/am/OnePlusProcessManager;->mUidPidState:Landroid/util/SparseArray;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1316
    .local v0, "pidState":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ltz v1, :cond_3

    .line 1317
    const/16 v1, 0x2710

    if-lt p2, v1, :cond_3

    .line 1318
    if-eqz p3, :cond_5

    .line 1319
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mLoactionFailUidsCount:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1320
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mSuspendFailUidsCount:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1321
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager$4;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v1, v1, Lcom/android/server/am/OnePlusProcessManager;->mResumeUidBroadcasts:Landroid/util/SparseArray;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 1322
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager$4;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    # getter for: Lcom/android/server/am/OnePlusProcessManager;->mSuspendProcessHander:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/am/OnePlusProcessManager;->access$200(Lcom/android/server/am/OnePlusProcessManager;)Landroid/os/Handler;

    move-result-object v1

    add-int/lit16 v3, p2, -0x2710

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1324
    # getter for: Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$1700()Lcom/android/server/am/OnePlusProcessManager;

    move-result-object v1

    const-string v3, "onForegroundActivitiesChanged"

    # invokes: Lcom/android/server/am/OnePlusProcessManager;->sendResumeUid(ILjava/lang/String;)Z
    invoke-static {v1, p2, v3}, Lcom/android/server/am/OnePlusProcessManager;->access$2700(Lcom/android/server/am/OnePlusProcessManager;ILjava/lang/String;)Z

    .line 1326
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager$4;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v1, v1, Lcom/android/server/am/OnePlusProcessManager;->mAlarmAdjust:Ljava/util/HashSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1327
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager$4;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v1, v1, Lcom/android/server/am/OnePlusProcessManager;->mAlarmAdjust:Ljava/util/HashSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1328
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager$4;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    # invokes: Lcom/android/server/am/OnePlusProcessManager;->getPackageNameForUid(I)Ljava/lang/String;
    invoke-static {v1, p2}, Lcom/android/server/am/OnePlusProcessManager;->access$2800(Lcom/android/server/am/OnePlusProcessManager;I)Ljava/lang/String;

    .line 1339
    :cond_2
    :goto_1
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v1, :cond_3

    .line 1340
    const-string v1, "OnePlusProcessManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onForeground mFontActivityUids="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager$4;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v4, v4, Lcom/android/server/am/OnePlusProcessManager;->mFontActivityUids:Ljava/util/HashSet;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1343
    :cond_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1346
    return-void

    .line 1310
    .end local v0    # "pidState":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_4
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager$4;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v1, v1, Lcom/android/server/am/OnePlusProcessManager;->mFontActivityUids:Ljava/util/HashSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1311
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager$4;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v1, v1, Lcom/android/server/am/OnePlusProcessManager;->mFontActivityUids:Ljava/util/HashSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1336
    .restart local v0    # "pidState":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_5
    :try_start_1
    # getter for: Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$1700()Lcom/android/server/am/OnePlusProcessManager;

    move-result-object v1

    sget-wide v4, Lcom/android/server/am/OnePlusProcessManager;->suspendUidDelayTime:J

    # invokes: Lcom/android/server/am/OnePlusProcessManager;->sendSuspendUid(IJ)V
    invoke-static {v1, p2, v4, v5}, Lcom/android/server/am/OnePlusProcessManager;->access$1000(Lcom/android/server/am/OnePlusProcessManager;IJ)V

    .line 1337
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager$4;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    # invokes: Lcom/android/server/am/OnePlusProcessManager;->startComputeUidTraffic(I)V
    invoke-static {v1, p2}, Lcom/android/server/am/OnePlusProcessManager;->access$2900(Lcom/android/server/am/OnePlusProcessManager;I)V

    goto :goto_1

    .line 1343
    .end local v0    # "pidState":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onProcessDied(II)V
    .locals 3
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .prologue
    .line 1355
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager$4;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v2, v1, Lcom/android/server/am/OnePlusProcessManager;->mRulesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1356
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager$4;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v1, v1, Lcom/android/server/am/OnePlusProcessManager;->mUidPidState:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1357
    .local v0, "pidState":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v1, "onProcessDied"

    invoke-static {p2, v1}, Lcom/android/server/am/OnePlusProcessManager;->resumeProcessByUID_out(ILjava/lang/String;)V

    .line 1358
    if-eqz v0, :cond_0

    .line 1359
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1360
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_0

    .line 1361
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager$4;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v1, v1, Lcom/android/server/am/OnePlusProcessManager;->mUidPidState:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 1364
    :cond_0
    monitor-exit v2

    .line 1365
    return-void

    .line 1364
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
    .line 1350
    return-void
.end method
