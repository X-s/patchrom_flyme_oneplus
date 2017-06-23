.class Lcom/android/server/am/OnePlusProcessManager$resumeProcessHander;
.super Landroid/os/Handler;
.source "OnePlusProcessManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusProcessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "resumeProcessHander"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OnePlusProcessManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/OnePlusProcessManager;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 839
    iput-object p1, p0, Lcom/android/server/am/OnePlusProcessManager$resumeProcessHander;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    .line 840
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 841
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 845
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 846
    .local v0, "suspendDelayTime":I
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 847
    .local v1, "uid":I
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 848
    .local v2, "why":Ljava/lang/String;
    const/16 v3, 0x2710

    if-ge v1, v3, :cond_1

    .line 879
    :cond_0
    :goto_0
    return-void

    .line 851
    :cond_1
    # getter for: Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$100()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 854
    sget-boolean v3, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 855
    const-string v3, "OnePlusProcessManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resumeProcessHander handleMessage uid ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    :cond_2
    invoke-static {v1}, Lcom/android/server/am/OnePlusProcessManager;->isSuspendUid(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 861
    iget-object v3, p0, Lcom/android/server/am/OnePlusProcessManager$resumeProcessHander;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    # getter for: Lcom/android/server/am/OnePlusProcessManager;->mSuspendProcessHander:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/server/am/OnePlusProcessManager;->access$200(Lcom/android/server/am/OnePlusProcessManager;)Landroid/os/Handler;

    move-result-object v3

    add-int/lit16 v4, v1, -0x2710

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 862
    iget-object v3, p0, Lcom/android/server/am/OnePlusProcessManager$resumeProcessHander;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    # invokes: Lcom/android/server/am/OnePlusProcessManager;->startResumeUid(I)V
    invoke-static {v3, v1}, Lcom/android/server/am/OnePlusProcessManager;->access$1100(Lcom/android/server/am/OnePlusProcessManager;I)V

    .line 863
    sget-boolean v3, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v3, :cond_3

    .line 864
    const-string v3, "OnePlusProcessManager"

    const-string v4, "resumeProcessHander end "

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    :cond_3
    iget-object v3, p0, Lcom/android/server/am/OnePlusProcessManager$resumeProcessHander;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    # invokes: Lcom/android/server/am/OnePlusProcessManager;->resumeRelateUid(I)V
    invoke-static {v3, v1}, Lcom/android/server/am/OnePlusProcessManager;->access$1200(Lcom/android/server/am/OnePlusProcessManager;I)V

    .line 868
    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mUnFrozenReasonUids:Landroid/util/ArrayMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 869
    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mUnFrozenReasonUids:Landroid/util/ArrayMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "resumeProcessHander ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 870
    const/4 v3, 0x2

    if-ne v0, v3, :cond_4

    .line 871
    iget-object v3, p0, Lcom/android/server/am/OnePlusProcessManager$resumeProcessHander;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    const-wide/16 v4, 0x4e20

    # invokes: Lcom/android/server/am/OnePlusProcessManager;->sendSuspendUid(IJ)V
    invoke-static {v3, v1, v4, v5}, Lcom/android/server/am/OnePlusProcessManager;->access$1000(Lcom/android/server/am/OnePlusProcessManager;IJ)V

    .line 875
    :goto_1
    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mDoThawedUids:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 876
    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mDoThawedUids:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 877
    sget-boolean v3, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 878
    const-string v3, "OnePlusProcessManager"

    const-string v4, "resumeProcessHander end ---------"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 873
    :cond_4
    iget-object v3, p0, Lcom/android/server/am/OnePlusProcessManager$resumeProcessHander;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    sget-wide v4, Lcom/android/server/am/OnePlusProcessManager;->suspendUidDelayTime:J

    # invokes: Lcom/android/server/am/OnePlusProcessManager;->sendSuspendUid(IJ)V
    invoke-static {v3, v1, v4, v5}, Lcom/android/server/am/OnePlusProcessManager;->access$1000(Lcom/android/server/am/OnePlusProcessManager;IJ)V

    goto :goto_1
.end method
