.class Lcom/android/server/am/OnePlusProcessManager$resumeProcessHandler;
.super Landroid/os/Handler;
.source "OnePlusProcessManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusProcessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "resumeProcessHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OnePlusProcessManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/OnePlusProcessManager;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/OnePlusProcessManager;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1040
    iput-object p1, p0, Lcom/android/server/am/OnePlusProcessManager$resumeProcessHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    .line 1041
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1040
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1046
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1047
    .local v0, "suspendDelayTime":I
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 1048
    .local v1, "uid":I
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 1049
    .local v2, "why":Ljava/lang/String;
    const/16 v3, 0x2710

    if-ge v1, v3, :cond_0

    .line 1050
    return-void

    .line 1052
    :cond_0
    sget-boolean v3, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 1053
    const-string/jumbo v3, "OnePlusProcessManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "resumeProcessHandler handleMessage uid ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    :cond_1
    invoke-static {v1}, Lcom/android/server/am/OnePlusProcessManager;->isUidSuspended(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1056
    iget-object v3, p0, Lcom/android/server/am/OnePlusProcessManager$resumeProcessHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    sget-wide v4, Lcom/android/server/am/OnePlusProcessManager;->suspendUidDelayTime:J

    invoke-static {v3, v1, v4, v5}, Lcom/android/server/am/OnePlusProcessManager;->-wrap15(Lcom/android/server/am/OnePlusProcessManager;IJ)V

    .line 1057
    return-void

    .line 1061
    :cond_2
    iget-object v3, p0, Lcom/android/server/am/OnePlusProcessManager$resumeProcessHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-static {v3}, Lcom/android/server/am/OnePlusProcessManager;->-get19(Lcom/android/server/am/OnePlusProcessManager;)Landroid/os/Handler;

    move-result-object v3

    add-int/lit16 v4, v1, -0x2710

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1062
    iget-object v3, p0, Lcom/android/server/am/OnePlusProcessManager$resumeProcessHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-static {v3, v1}, Lcom/android/server/am/OnePlusProcessManager;->-wrap17(Lcom/android/server/am/OnePlusProcessManager;I)V

    .line 1063
    sget-boolean v3, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v3, :cond_3

    .line 1064
    const-string/jumbo v3, "OnePlusProcessManager"

    const-string/jumbo v4, "resumeProcessHandler startResumeUid done "

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    :cond_3
    iget-object v3, p0, Lcom/android/server/am/OnePlusProcessManager$resumeProcessHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-static {v3, v1}, Lcom/android/server/am/OnePlusProcessManager;->-wrap13(Lcom/android/server/am/OnePlusProcessManager;I)V

    .line 1068
    sget-object v4, Lcom/android/server/am/OnePlusProcessManager;->mUnFrozenReasonUids:Landroid/util/ArrayMap;

    monitor-enter v4

    .line 1069
    :try_start_0
    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mUnFrozenReasonUids:Landroid/util/ArrayMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1070
    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mUnFrozenReasonUids:Landroid/util/ArrayMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "resumeProcessHandler ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    .line 1073
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->-get12()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1074
    const/4 v3, 0x2

    if-ne v0, v3, :cond_7

    .line 1075
    iget-object v3, p0, Lcom/android/server/am/OnePlusProcessManager$resumeProcessHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    const-wide/16 v4, 0x4e20

    invoke-static {v3, v1, v4, v5}, Lcom/android/server/am/OnePlusProcessManager;->-wrap15(Lcom/android/server/am/OnePlusProcessManager;IJ)V

    .line 1080
    :cond_4
    :goto_0
    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mDoThawedUids:Ljava/util/HashSet;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1081
    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mDoThawedUids:Ljava/util/HashSet;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1082
    sget v3, Lcom/android/server/am/OnePlusProcessManager;->mPendingUid:I

    if-eq v3, v1, :cond_5

    .line 1083
    sget-object v4, Lcom/android/server/am/OnePlusProcessManager;->mAdjustUids:Ljava/util/HashSet;

    monitor-enter v4

    .line 1084
    :try_start_1
    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mAdjustUids:Ljava/util/HashSet;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v4

    .line 1087
    :cond_5
    sget-boolean v3, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v3, :cond_6

    .line 1088
    const-string/jumbo v3, "OnePlusProcessManager"

    const-string/jumbo v4, "resumeProcessHandler end ---------"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    :cond_6
    return-void

    .line 1068
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 1077
    :cond_7
    iget-object v3, p0, Lcom/android/server/am/OnePlusProcessManager$resumeProcessHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    sget-wide v4, Lcom/android/server/am/OnePlusProcessManager;->suspendUidDelayTime:J

    invoke-static {v3, v1, v4, v5}, Lcom/android/server/am/OnePlusProcessManager;->-wrap15(Lcom/android/server/am/OnePlusProcessManager;IJ)V

    goto :goto_0

    .line 1083
    :catchall_1
    move-exception v3

    monitor-exit v4

    throw v3
.end method
