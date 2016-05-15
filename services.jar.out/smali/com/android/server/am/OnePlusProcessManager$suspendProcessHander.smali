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
    .line 668
    iput-object p1, p0, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHander;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    .line 669
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 670
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v7, 0x2710

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 675
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 676
    .local v3, "pid":I
    iget v5, p1, Landroid/os/Message;->arg2:I

    .line 677
    .local v5, "uid":I
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/OnePlusProcessManager$SuspendMsgObj;

    .line 678
    .local v4, "smo":Lcom/android/server/am/OnePlusProcessManager$SuspendMsgObj;
    iget-object v0, v4, Lcom/android/server/am/OnePlusProcessManager$SuspendMsgObj;->app:Lcom/android/server/am/ProcessRecord;

    .line 680
    .local v0, "app":Lcom/android/server/am/ProcessRecord;
    if-lt v5, v7, :cond_0

    if-nez v0, :cond_1

    .line 761
    :cond_0
    :goto_0
    return-void

    .line 685
    :cond_1
    if-eqz v0, :cond_0

    .line 689
    iget v6, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    if-lt v6, v7, :cond_0

    .line 692
    # getter for: Lcom/android/server/am/OnePlusProcessManager;->screen_on_forzen_enable:Z
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$700()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->getScreenState()Z

    move-result v6

    if-nez v6, :cond_2

    sget-boolean v6, Lcom/android/server/am/OnePlusProcessManager;->mScreen_ON_ING:Z

    if-eqz v6, :cond_3

    .line 693
    :cond_2
    const-string v6, "OnePlusProcessManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "screen_on_forzen_enable false suspend fail uid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 696
    :cond_3
    invoke-static {v5}, Lcom/android/server/am/OnePlusProcessManager;->isSuspendUid(I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 699
    iget-object v6, p0, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHander;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    # invokes: Lcom/android/server/am/OnePlusProcessManager;->checkUidExceedTraffic(Lcom/android/server/am/OnePlusProcessManager$SuspendMsgObj;)I
    invoke-static {v6, v4}, Lcom/android/server/am/OnePlusProcessManager;->access$1300(Lcom/android/server/am/OnePlusProcessManager;Lcom/android/server/am/OnePlusProcessManager$SuspendMsgObj;)I

    move-result v6

    if-lez v6, :cond_4

    .line 701
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "---->#suspend false: traffic exceeded; uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/am/OnePlusProcessManager;->myLog(Ljava/lang/String;)V

    .line 702
    iget-object v6, p0, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHander;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    const/16 v7, 0x80

    # invokes: Lcom/android/server/am/OnePlusProcessManager;->sendDelayMessageSuspendUid(ILcom/android/server/am/ProcessRecord;)V
    invoke-static {v6, v7, v0}, Lcom/android/server/am/OnePlusProcessManager;->access$1400(Lcom/android/server/am/OnePlusProcessManager;ILcom/android/server/am/ProcessRecord;)V

    goto :goto_0

    .line 705
    :cond_4
    const-string v6, "OnePlusProcessManager"

    const-string v7, "mWakeLockFrozen acquire"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    iget-object v6, p0, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHander;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    # invokes: Lcom/android/server/am/OnePlusProcessManager;->checkCurrentProcessCanSuspend(Lcom/android/server/am/ProcessRecord;)I
    invoke-static {v6, v0}, Lcom/android/server/am/OnePlusProcessManager;->access$1500(Lcom/android/server/am/OnePlusProcessManager;Lcom/android/server/am/ProcessRecord;)I

    move-result v2

    .line 707
    .local v2, "flag":I
    and-int/lit8 v6, v2, 0x40

    if-nez v6, :cond_0

    .line 710
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->getScreenState()Z

    move-result v6

    if-ne v6, v9, :cond_7

    .line 711
    and-int/lit16 v6, v2, 0x118

    if-eqz v6, :cond_5

    .line 712
    iget-object v6, p0, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHander;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    # invokes: Lcom/android/server/am/OnePlusProcessManager;->sendDelayMessageSuspendUid(ILcom/android/server/am/ProcessRecord;)V
    invoke-static {v6, v2, v0}, Lcom/android/server/am/OnePlusProcessManager;->access$1400(Lcom/android/server/am/OnePlusProcessManager;ILcom/android/server/am/ProcessRecord;)V

    goto :goto_0

    .line 715
    :cond_5
    and-int/lit8 v6, v2, 0x4

    if-eqz v6, :cond_6

    .line 716
    sget-object v6, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lcom/android/server/am/ActivityManagerService;->forceStopPackage(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 720
    :cond_6
    and-int/lit8 v6, v2, 0x22

    if-eqz v6, :cond_c

    .line 721
    const-string v6, "OnePlusProcessManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkCurrentProcessCanSuspend++++ false uid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    iget-object v6, p0, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHander;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    # invokes: Lcom/android/server/am/OnePlusProcessManager;->sendDelayMessageSuspendUid(ILcom/android/server/am/ProcessRecord;)V
    invoke-static {v6, v2, v0}, Lcom/android/server/am/OnePlusProcessManager;->access$1400(Lcom/android/server/am/OnePlusProcessManager;ILcom/android/server/am/ProcessRecord;)V

    goto/16 :goto_0

    .line 726
    :cond_7
    and-int/lit8 v6, v2, 0x10

    if-eqz v6, :cond_8

    .line 727
    const-string v6, "OnePlusProcessManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkCurrentProcessCanSuspend---- false uid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    iget-object v6, p0, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHander;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    # invokes: Lcom/android/server/am/OnePlusProcessManager;->sendDelayMessageSuspendUid(ILcom/android/server/am/ProcessRecord;)V
    invoke-static {v6, v2, v0}, Lcom/android/server/am/OnePlusProcessManager;->access$1400(Lcom/android/server/am/OnePlusProcessManager;ILcom/android/server/am/ProcessRecord;)V

    goto/16 :goto_0

    .line 732
    :cond_8
    and-int/lit8 v6, v2, 0x4

    if-eqz v6, :cond_a

    .line 733
    and-int/lit16 v6, v2, 0x100

    if-nez v6, :cond_9

    .line 734
    sget-object v6, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lcom/android/server/am/ActivityManagerService;->forceStopPackage(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 737
    :cond_9
    iget-object v6, p0, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHander;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    # invokes: Lcom/android/server/am/OnePlusProcessManager;->sendDelayMessageSuspendUid(ILcom/android/server/am/ProcessRecord;)V
    invoke-static {v6, v2, v0}, Lcom/android/server/am/OnePlusProcessManager;->access$1400(Lcom/android/server/am/OnePlusProcessManager;ILcom/android/server/am/ProcessRecord;)V

    goto/16 :goto_0

    .line 741
    :cond_a
    and-int/lit8 v6, v2, 0x2

    if-eqz v6, :cond_b

    .line 742
    const-string v6, "OnePlusProcessManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkCurrentProcessCanSuspend---- false uid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    iget-object v6, p0, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHander;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    # invokes: Lcom/android/server/am/OnePlusProcessManager;->sendDelayMessageSuspendUid(ILcom/android/server/am/ProcessRecord;)V
    invoke-static {v6, v2, v0}, Lcom/android/server/am/OnePlusProcessManager;->access$1400(Lcom/android/server/am/OnePlusProcessManager;ILcom/android/server/am/ProcessRecord;)V

    goto/16 :goto_0

    .line 746
    :cond_b
    sget-object v6, Lcom/android/server/am/OnePlusProcessManager;->mScreenOffFozenFail:Ljava/util/ArrayList;

    iget v7, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 748
    :cond_c
    const/4 v1, 0x0

    .line 749
    .local v1, "checkRelateReture":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v6, p0, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHander;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    # invokes: Lcom/android/server/am/OnePlusProcessManager;->checkIsSuspendRelateProcess(Lcom/android/server/am/ProcessRecord;)Landroid/util/ArrayMap;
    invoke-static {v6, v0}, Lcom/android/server/am/OnePlusProcessManager;->access$1600(Lcom/android/server/am/OnePlusProcessManager;Lcom/android/server/am/ProcessRecord;)Landroid/util/ArrayMap;

    move-result-object v1

    .line 750
    if-nez v1, :cond_d

    .line 751
    const-string v6, "OnePlusProcessManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "---->#checkRelateReturn false uid ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 754
    :cond_d
    sget-object v6, Lcom/android/server/am/OnePlusProcessManager;->mSuspendFailUidsCount:Landroid/util/ArrayMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 755
    iget-object v6, p0, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHander;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    # invokes: Lcom/android/server/am/OnePlusProcessManager;->cancelNotifications(Lcom/android/server/am/ProcessRecord;)V
    invoke-static {v6, v0}, Lcom/android/server/am/OnePlusProcessManager;->access$1700(Lcom/android/server/am/OnePlusProcessManager;Lcom/android/server/am/ProcessRecord;)V

    .line 756
    if-eqz v1, :cond_e

    .line 757
    iget-object v6, p0, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHander;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    # invokes: Lcom/android/server/am/OnePlusProcessManager;->suspendProcessRelate(Landroid/util/ArrayMap;)Z
    invoke-static {v6, v1}, Lcom/android/server/am/OnePlusProcessManager;->access$1800(Lcom/android/server/am/OnePlusProcessManager;Landroid/util/ArrayMap;)Z

    .line 759
    :cond_e
    iget-object v6, p0, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHander;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    iget v7, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v6, v7, v9}, Lcom/android/server/am/OnePlusProcessManager;->setCGroupState(IZ)V

    .line 760
    const-string v6, "OnePlusProcessManager"

    const-string v7, "mWakeLockFrozen release"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
