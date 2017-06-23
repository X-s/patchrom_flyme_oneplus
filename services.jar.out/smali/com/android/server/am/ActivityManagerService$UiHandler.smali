.class final Lcom/android/server/am/ActivityManagerService$UiHandler;
.super Landroid/os/Handler;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "UiHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 3

    .prologue
    .line 1562
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 1563
    invoke-static {}, Lcom/android/server/UiThread;->get()Lcom/android/server/UiThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/UiThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 1564
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 33
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1568
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 1771
    :cond_0
    :goto_0
    return-void

    .line 1570
    :sswitch_0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Ljava/util/HashMap;

    .line 1571
    .local v22, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "anr_show_background"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_2

    const/16 v29, 0x1

    .line 1573
    .local v29, "showBackground":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 1574
    :try_start_0
    const-string v2, "app"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/server/am/ProcessRecord;

    .line 1575
    .local v27, "proc":Lcom/android/server/am/ProcessRecord;
    const-string v2, "result"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/server/am/AppErrorResult;

    .line 1576
    .local v28, "res":Lcom/android/server/am/AppErrorResult;
    if-eqz v27, :cond_3

    move-object/from16 v0, v27

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    if-eqz v2, :cond_3

    .line 1577
    const-string v2, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "App already has crash dialog: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1578
    if-eqz v28, :cond_1

    .line 1579
    const/4 v2, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Lcom/android/server/am/AppErrorResult;->set(I)V

    .line 1581
    :cond_1
    monitor-exit v3

    goto :goto_0

    .line 1608
    .end local v27    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v28    # "res":Lcom/android/server/am/AppErrorResult;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1571
    .end local v29    # "showBackground":Z
    :cond_2
    const/16 v29, 0x0

    goto :goto_1

    .line 1583
    .restart local v27    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v28    # "res":Lcom/android/server/am/AppErrorResult;
    .restart local v29    # "showBackground":Z
    :cond_3
    :try_start_1
    move-object/from16 v0, v27

    iget v2, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    const/16 v4, 0x2710

    if-lt v2, v4, :cond_4

    move-object/from16 v0, v27

    iget v2, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    sget v4, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v2, v4, :cond_4

    const/16 v24, 0x1

    .line 1586
    .local v24, "isBackground":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v2, Lcom/android/server/am/ActivityManagerService;->mCurrentProfileIds:[I

    move-object/from16 v21, v0

    .local v21, "arr$":[I
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v25, v0

    .local v25, "len$":I
    const/16 v23, 0x0

    .local v23, "i$":I
    :goto_3
    move/from16 v0, v23

    move/from16 v1, v25

    if-ge v0, v1, :cond_6

    aget v31, v21, v23

    .line 1587
    .local v31, "userId":I
    move-object/from16 v0, v27

    iget v2, v0, Lcom/android/server/am/ProcessRecord;->userId:I

    move/from16 v0, v31

    if-eq v2, v0, :cond_5

    const/4 v2, 0x1

    :goto_4
    and-int v24, v24, v2

    .line 1586
    add-int/lit8 v23, v23, 0x1

    goto :goto_3

    .line 1583
    .end local v21    # "arr$":[I
    .end local v23    # "i$":I
    .end local v24    # "isBackground":Z
    .end local v25    # "len$":I
    .end local v31    # "userId":I
    :cond_4
    const/16 v24, 0x0

    goto :goto_2

    .line 1587
    .restart local v21    # "arr$":[I
    .restart local v23    # "i$":I
    .restart local v24    # "isBackground":Z
    .restart local v25    # "len$":I
    .restart local v31    # "userId":I
    :cond_5
    const/4 v2, 0x0

    goto :goto_4

    .line 1589
    .end local v31    # "userId":I
    :cond_6
    if-eqz v24, :cond_8

    if-nez v29, :cond_8

    .line 1590
    const-string v2, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Skipping crash dialog of "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ": background"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1591
    if-eqz v28, :cond_7

    .line 1592
    const/4 v2, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Lcom/android/server/am/AppErrorResult;->set(I)V

    .line 1594
    :cond_7
    monitor-exit v3

    goto/16 :goto_0

    .line 1596
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mShowDialogs:Z
    invoke-static {v2}, Lcom/android/server/am/ActivityManagerService;->access$600(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v2

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mSleeping:Z
    invoke-static {v2}, Lcom/android/server/am/ActivityManagerService;->access$700(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v2

    if-nez v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerService;->mShuttingDown:Z

    if-nez v2, :cond_a

    .line 1597
    new-instance v6, Lcom/android/server/am/AppErrorDialog;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-direct {v6, v2, v4, v0, v1}, Lcom/android/server/am/AppErrorDialog;-><init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/AppErrorResult;Lcom/android/server/am/ProcessRecord;)V

    .line 1599
    .local v6, "d":Landroid/app/Dialog;
    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    .line 1600
    move-object/from16 v0, v27

    iput-object v6, v0, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    .line 1608
    .end local v6    # "d":Landroid/app/Dialog;
    :cond_9
    :goto_5
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1610
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    goto/16 :goto_0

    .line 1604
    :cond_a
    if-eqz v28, :cond_9

    .line 1605
    const/4 v2, 0x0

    :try_start_2
    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Lcom/android/server/am/AppErrorResult;->set(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    .line 1613
    .end local v21    # "arr$":[I
    .end local v22    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v23    # "i$":I
    .end local v24    # "isBackground":Z
    .end local v25    # "len$":I
    .end local v27    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v28    # "res":Lcom/android/server/am/AppErrorResult;
    .end local v29    # "showBackground":Z
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v32, v0

    monitor-enter v32

    .line 1614
    :try_start_3
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Ljava/util/HashMap;

    .line 1615
    .restart local v22    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "app"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/server/am/ProcessRecord;

    .line 1616
    .restart local v27    # "proc":Lcom/android/server/am/ProcessRecord;
    if-eqz v27, :cond_b

    move-object/from16 v0, v27

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;

    if-eqz v2, :cond_b

    .line 1617
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "App already has anr dialog: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1618
    monitor-exit v32

    goto/16 :goto_0

    .line 1640
    .end local v22    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v27    # "proc":Lcom/android/server/am/ProcessRecord;
    :catchall_1
    move-exception v2

    monitor-exit v32
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    .line 1621
    .restart local v22    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v27    # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_b
    :try_start_4
    new-instance v5, Landroid/content/Intent;

    const-string v2, "android.intent.action.ANR"

    invoke-direct {v5, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1622
    .local v5, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessesReady:Z

    if-nez v2, :cond_c

    .line 1623
    const/high16 v2, 0x50000000

    invoke-virtual {v5, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1626
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    sget v16, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/16 v17, 0x3e8

    const/16 v18, 0x0

    # invokes: Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I
    invoke-static/range {v2 .. v18}, Lcom/android/server/am/ActivityManagerService;->access$800(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I

    .line 1630
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mShowDialogs:Z
    invoke-static {v2}, Lcom/android/server/am/ActivityManagerService;->access$600(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1631
    new-instance v6, Lcom/android/server/am/AppNotRespondingDialog;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_d

    const/4 v11, 0x1

    :goto_6
    move-object/from16 v9, v27

    invoke-direct/range {v6 .. v11}, Lcom/android/server/am/AppNotRespondingDialog;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Z)V

    .line 1634
    .restart local v6    # "d":Landroid/app/Dialog;
    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    .line 1635
    move-object/from16 v0, v27

    iput-object v6, v0, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;

    .line 1640
    .end local v6    # "d":Landroid/app/Dialog;
    :goto_7
    monitor-exit v32
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1642
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    goto/16 :goto_0

    .line 1631
    :cond_d
    const/4 v11, 0x0

    goto :goto_6

    .line 1638
    :cond_e
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v2, v0, v3}, Lcom/android/server/am/ActivityManagerService;->killAppAtUsersRequest(Lcom/android/server/am/ProcessRecord;Landroid/app/Dialog;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_7

    .line 1645
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v22    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v27    # "proc":Lcom/android/server/am/ProcessRecord;
    :sswitch_2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Ljava/util/HashMap;

    .line 1646
    .restart local v22    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 1647
    :try_start_6
    const-string v2, "app"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/server/am/ProcessRecord;

    .line 1648
    .restart local v27    # "proc":Lcom/android/server/am/ProcessRecord;
    if-nez v27, :cond_f

    .line 1649
    const-string v2, "ActivityManager"

    const-string v4, "App not found when showing strict mode dialog."

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1650
    monitor-exit v3

    goto/16 :goto_0

    .line 1667
    .end local v27    # "proc":Lcom/android/server/am/ProcessRecord;
    :catchall_2
    move-exception v2

    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v2

    .line 1652
    .restart local v27    # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_f
    :try_start_7
    move-object/from16 v0, v27

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    if-eqz v2, :cond_10

    .line 1653
    const-string v2, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "App already has strict mode dialog: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1654
    monitor-exit v3

    goto/16 :goto_0

    .line 1656
    :cond_10
    const-string v2, "result"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/server/am/AppErrorResult;

    .line 1657
    .restart local v28    # "res":Lcom/android/server/am/AppErrorResult;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mShowDialogs:Z
    invoke-static {v2}, Lcom/android/server/am/ActivityManagerService;->access$600(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v2

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mSleeping:Z
    invoke-static {v2}, Lcom/android/server/am/ActivityManagerService;->access$700(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v2

    if-nez v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerService;->mShuttingDown:Z

    if-nez v2, :cond_11

    .line 1658
    new-instance v6, Lcom/android/server/am/StrictModeViolationDialog;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-direct {v6, v2, v4, v0, v1}, Lcom/android/server/am/StrictModeViolationDialog;-><init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/AppErrorResult;Lcom/android/server/am/ProcessRecord;)V

    .line 1660
    .restart local v6    # "d":Landroid/app/Dialog;
    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    .line 1661
    move-object/from16 v0, v27

    iput-object v6, v0, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    .line 1667
    .end local v6    # "d":Landroid/app/Dialog;
    :goto_8
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 1668
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    goto/16 :goto_0

    .line 1665
    :cond_11
    const/4 v2, 0x0

    :try_start_8
    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Lcom/android/server/am/AppErrorResult;->set(I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_8

    .line 1671
    .end local v22    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v27    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v28    # "res":Lcom/android/server/am/AppErrorResult;
    :sswitch_3
    new-instance v6, Lcom/android/server/am/FactoryErrorDialog;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "msg"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {v6, v2, v3}, Lcom/android/server/am/FactoryErrorDialog;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 1673
    .restart local v6    # "d":Landroid/app/Dialog;
    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    .line 1674
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    goto/16 :goto_0

    .line 1677
    .end local v6    # "d":Landroid/app/Dialog;
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 1678
    :try_start_9
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Lcom/android/server/am/ProcessRecord;

    .line 1679
    .local v19, "app":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_13

    .line 1680
    move-object/from16 v0, v19

    iget-boolean v2, v0, Lcom/android/server/am/ProcessRecord;->waitedForDebugger:Z

    if-nez v2, :cond_12

    .line 1681
    new-instance v6, Lcom/android/server/am/AppWaitingForDebuggerDialog;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v19

    invoke-direct {v6, v2, v4, v0}, Lcom/android/server/am/AppWaitingForDebuggerDialog;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/ProcessRecord;)V

    .line 1684
    .restart local v6    # "d":Landroid/app/Dialog;
    move-object/from16 v0, v19

    iput-object v6, v0, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;

    .line 1685
    const/4 v2, 0x1

    move-object/from16 v0, v19

    iput-boolean v2, v0, Lcom/android/server/am/ProcessRecord;->waitedForDebugger:Z

    .line 1686
    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    .line 1694
    .end local v6    # "d":Landroid/app/Dialog;
    :cond_12
    :goto_9
    monitor-exit v3

    goto/16 :goto_0

    .end local v19    # "app":Lcom/android/server/am/ProcessRecord;
    :catchall_3
    move-exception v2

    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v2

    .line 1689
    .restart local v19    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_13
    :try_start_a
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;

    if-eqz v2, :cond_12

    .line 1690
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 1691
    const/4 v2, 0x0

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_9

    .line 1697
    .end local v19    # "app":Lcom/android/server/am/ProcessRecord;
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mShowDialogs:Z
    invoke-static {v2}, Lcom/android/server/am/ActivityManagerService;->access$600(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1698
    new-instance v6, Lcom/android/server/am/BaseErrorDialog;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v6, v2}, Lcom/android/server/am/BaseErrorDialog;-><init>(Landroid/content/Context;)V

    .line 1699
    .local v6, "d":Landroid/app/AlertDialog;
    invoke-virtual {v6}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7da

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 1700
    const/4 v2, 0x0

    invoke-virtual {v6, v2}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 1701
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v3, 0x1040156

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1702
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v3, 0x10405ba

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1703
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v4, 0x104000a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const/16 v4, 0x30

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Lcom/android/server/am/ActivityManagerService$UiHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v6, v2, v3, v4}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 1705
    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 1709
    .end local v6    # "d":Landroid/app/AlertDialog;
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mShowDialogs:Z
    invoke-static {v2}, Lcom/android/server/am/ActivityManagerService;->access$600(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1710
    new-instance v6, Lcom/android/server/am/BaseErrorDialog;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v6, v2}, Lcom/android/server/am/BaseErrorDialog;-><init>(Landroid/content/Context;)V

    .line 1711
    .restart local v6    # "d":Landroid/app/AlertDialog;
    invoke-virtual {v6}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7da

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 1712
    const/4 v2, 0x0

    invoke-virtual {v6, v2}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 1713
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v3, 0x1040156

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1714
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v3, 0x10405bb

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1715
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v4, 0x104000a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const/16 v4, 0x30

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Lcom/android/server/am/ActivityManagerService$UiHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v6, v2, v3, v4}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 1717
    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 1721
    .end local v6    # "d":Landroid/app/AlertDialog;
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 1722
    :try_start_b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Lcom/android/server/am/ActivityRecord;

    .line 1723
    .local v20, "ar":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mCompatModeDialog:Lcom/android/server/am/CompatModeDialog;

    if-eqz v2, :cond_15

    .line 1724
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mCompatModeDialog:Lcom/android/server/am/CompatModeDialog;

    iget-object v2, v2, Lcom/android/server/am/CompatModeDialog;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1726
    monitor-exit v3

    goto/16 :goto_0

    .line 1745
    .end local v20    # "ar":Lcom/android/server/am/ActivityRecord;
    :catchall_4
    move-exception v2

    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    throw v2

    .line 1728
    .restart local v20    # "ar":Lcom/android/server/am/ActivityRecord;
    :cond_14
    :try_start_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mCompatModeDialog:Lcom/android/server/am/CompatModeDialog;

    invoke-virtual {v2}, Lcom/android/server/am/CompatModeDialog;->dismiss()V

    .line 1729
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x0

    iput-object v4, v2, Lcom/android/server/am/ActivityManagerService;->mCompatModeDialog:Lcom/android/server/am/CompatModeDialog;

    .line 1731
    :cond_15
    if-eqz v20, :cond_16

    .line 1745
    :cond_16
    monitor-exit v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    goto/16 :goto_0

    .line 1749
    .end local v20    # "ar":Lcom/android/server/am/ActivityRecord;
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    # invokes: Lcom/android/server/am/ActivityManagerService;->showUserSwitchDialog(ILjava/lang/String;)V
    invoke-static {v3, v4, v2}, Lcom/android/server/am/ActivityManagerService;->access$900(Lcom/android/server/am/ActivityManagerService;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1753
    :sswitch_9
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/app/Dialog;

    .line 1754
    .local v6, "d":Landroid/app/Dialog;
    invoke-virtual {v6}, Landroid/app/Dialog;->dismiss()V

    goto/16 :goto_0

    .line 1758
    .end local v6    # "d":Landroid/app/Dialog;
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    # invokes: Lcom/android/server/am/ActivityManagerService;->dispatchProcessesChanged()V
    invoke-static {v2}, Lcom/android/server/am/ActivityManagerService;->access$1000(Lcom/android/server/am/ActivityManagerService;)V

    goto/16 :goto_0

    .line 1762
    :sswitch_b
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v26, v0

    .line 1763
    .local v26, "pid":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v30, v0

    .line 1764
    .local v30, "uid":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move/from16 v0, v26

    move/from16 v1, v30

    # invokes: Lcom/android/server/am/ActivityManagerService;->dispatchProcessDied(II)V
    invoke-static {v2, v0, v1}, Lcom/android/server/am/ActivityManagerService;->access$1100(Lcom/android/server/am/ActivityManagerService;II)V

    goto/16 :goto_0

    .line 1768
    .end local v26    # "pid":I
    .end local v30    # "uid":I
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    # invokes: Lcom/android/server/am/ActivityManagerService;->dispatchUidsChanged()V
    invoke-static {v2}, Lcom/android/server/am/ActivityManagerService;->access$1200(Lcom/android/server/am/ActivityManagerService;)V

    goto/16 :goto_0

    .line 1568
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_3
        0x6 -> :sswitch_4
        0xe -> :sswitch_5
        0xf -> :sswitch_6
        0x1a -> :sswitch_2
        0x1e -> :sswitch_7
        0x1f -> :sswitch_a
        0x20 -> :sswitch_b
        0x2e -> :sswitch_8
        0x30 -> :sswitch_9
        0x36 -> :sswitch_c
    .end sparse-switch
.end method
