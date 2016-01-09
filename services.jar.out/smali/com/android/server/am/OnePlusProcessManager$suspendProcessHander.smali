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
    .line 556
    iput-object p1, p0, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHander;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    .line 557
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 558
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v7, 0x2710

    .line 563
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 564
    .local v2, "pid":I
    iget v5, p1, Landroid/os/Message;->arg2:I

    .line 565
    .local v5, "uid":I
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/am/OnePlusProcessManager$SuspendMsgObj;

    .line 566
    .local v3, "smo":Lcom/android/server/am/OnePlusProcessManager$SuspendMsgObj;
    iget-object v0, v3, Lcom/android/server/am/OnePlusProcessManager$SuspendMsgObj;->app:Lcom/android/server/am/ProcessRecord;

    .line 568
    .local v0, "app":Lcom/android/server/am/ProcessRecord;
    if-lt v5, v7, :cond_0

    if-nez v0, :cond_1

    .line 605
    :cond_0
    :goto_0
    return-void

    .line 573
    :cond_1
    if-eqz v0, :cond_0

    .line 577
    iget v6, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    if-lt v6, v7, :cond_0

    .line 580
    iget-object v6, p0, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHander;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    # invokes: Lcom/android/server/am/OnePlusProcessManager;->checkUidExceedTraffic(Lcom/android/server/am/OnePlusProcessManager$SuspendMsgObj;)I
    invoke-static {v6, v3}, Lcom/android/server/am/OnePlusProcessManager;->access$600(Lcom/android/server/am/OnePlusProcessManager;Lcom/android/server/am/OnePlusProcessManager$SuspendMsgObj;)I

    move-result v6

    if-lez v6, :cond_2

    .line 582
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

    goto :goto_0

    .line 585
    :cond_2
    iget-object v6, p0, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHander;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    # invokes: Lcom/android/server/am/OnePlusProcessManager;->checkIsSuspendProcess(Lcom/android/server/am/ProcessRecord;)I
    invoke-static {v6, v0}, Lcom/android/server/am/OnePlusProcessManager;->access$700(Lcom/android/server/am/OnePlusProcessManager;Lcom/android/server/am/ProcessRecord;)I

    move-result v4

    .line 587
    .local v4, "susResture":I
    if-eqz v4, :cond_3

    const/4 v6, 0x3

    if-eq v4, v6, :cond_3

    const/4 v6, 0x4

    if-ne v4, v6, :cond_4

    .line 588
    :cond_3
    const-string v6, "OnePlusProcessManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "---->#checkIsSuspendProcess false uid ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 591
    :cond_4
    iget-object v6, p0, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHander;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    # invokes: Lcom/android/server/am/OnePlusProcessManager;->checkIsSuspendRelateProcess(Lcom/android/server/am/ProcessRecord;)Landroid/util/ArrayMap;
    invoke-static {v6, v0}, Lcom/android/server/am/OnePlusProcessManager;->access$800(Lcom/android/server/am/OnePlusProcessManager;Lcom/android/server/am/ProcessRecord;)Landroid/util/ArrayMap;

    move-result-object v1

    .line 593
    .local v1, "checkRelateReture":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-nez v1, :cond_5

    .line 594
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

    goto :goto_0

    .line 598
    :cond_5
    const/4 v6, 0x2

    if-ne v4, v6, :cond_6

    sget-object v6, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mFocusedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v6, :cond_6

    sget-object v6, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mFocusedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v6, v6, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eq v0, v6, :cond_6

    .line 599
    sget-object v6, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/android/server/am/ActivityManagerService;->forceStopPackage(Ljava/lang/String;I)V

    .line 601
    :cond_6
    iget-object v6, p0, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHander;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    # invokes: Lcom/android/server/am/OnePlusProcessManager;->cancelNotifications(Lcom/android/server/am/ProcessRecord;)V
    invoke-static {v6, v0}, Lcom/android/server/am/OnePlusProcessManager;->access$900(Lcom/android/server/am/OnePlusProcessManager;Lcom/android/server/am/ProcessRecord;)V

    .line 602
    iget-object v6, p0, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHander;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    # invokes: Lcom/android/server/am/OnePlusProcessManager;->suspendProcessRelate(Landroid/util/ArrayMap;)Z
    invoke-static {v6, v1}, Lcom/android/server/am/OnePlusProcessManager;->access$1000(Lcom/android/server/am/OnePlusProcessManager;Landroid/util/ArrayMap;)Z

    .line 603
    iget-object v6, p0, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHander;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    iget v7, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lcom/android/server/am/OnePlusProcessManager;->setCGroupState(IZ)V

    goto/16 :goto_0
.end method
