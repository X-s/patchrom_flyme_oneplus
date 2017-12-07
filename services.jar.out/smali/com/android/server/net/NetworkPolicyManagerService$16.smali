.class Lcom/android/server/net/NetworkPolicyManagerService$16;
.super Ljava/lang/Object;
.source "NetworkPolicyManagerService.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkPolicyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .prologue
    .line 3473
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 38
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 3476
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v30, v0

    sparse-switch v30, :sswitch_data_0

    .line 3653
    const/16 v30, 0x0

    return v30

    .line 3478
    :sswitch_0
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v24, v0

    .line 3479
    .local v24, "uid":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v25, v0

    .line 3480
    .local v25, "uidRules":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/android/server/net/NetworkPolicyManagerService;->-get2(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/net/INetworkPolicyListener;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap6(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;II)V

    .line 3481
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/server/net/NetworkPolicyManagerService;->-get4(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v11

    .line 3482
    .local v11, "length":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v11, :cond_0

    .line 3483
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/server/net/NetworkPolicyManagerService;->-get4(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v8}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v12

    check-cast v12, Landroid/net/INetworkPolicyListener;

    .line 3484
    .local v12, "listener":Landroid/net/INetworkPolicyListener;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v0, v12, v1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap6(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;II)V

    .line 3482
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 3486
    .end local v12    # "listener":Landroid/net/INetworkPolicyListener;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/server/net/NetworkPolicyManagerService;->-get4(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 3487
    const/16 v30, 0x1

    return v30

    .line 3490
    .end local v8    # "i":I
    .end local v11    # "length":I
    .end local v24    # "uid":I
    .end local v25    # "uidRules":I
    :sswitch_1
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, [Ljava/lang/String;

    .line 3491
    .local v13, "meteredIfaces":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/android/server/net/NetworkPolicyManagerService;->-get2(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/net/INetworkPolicyListener;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-static {v0, v1, v13}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap2(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;[Ljava/lang/String;)V

    .line 3492
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/server/net/NetworkPolicyManagerService;->-get4(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v11

    .line 3493
    .restart local v11    # "length":I
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_1
    if-ge v8, v11, :cond_1

    .line 3494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/server/net/NetworkPolicyManagerService;->-get4(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v8}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v12

    check-cast v12, Landroid/net/INetworkPolicyListener;

    .line 3495
    .restart local v12    # "listener":Landroid/net/INetworkPolicyListener;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-static {v0, v12, v13}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap2(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;[Ljava/lang/String;)V

    .line 3493
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 3497
    .end local v12    # "listener":Landroid/net/INetworkPolicyListener;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/server/net/NetworkPolicyManagerService;->-get4(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 3498
    const/16 v30, 0x1

    return v30

    .line 3501
    .end local v8    # "i":I
    .end local v11    # "length":I
    .end local v13    # "meteredIfaces":[Ljava/lang/String;
    :sswitch_2
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    .line 3503
    .local v9, "iface":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/server/net/NetworkPolicyManagerService;->maybeRefreshTrustedTime()V

    .line 3504
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    move-object/from16 v31, v0

    monitor-enter v31

    .line 3505
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/server/net/NetworkPolicyManagerService;->-get5(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/ArraySet;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v9}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v30

    if-eqz v30, :cond_2

    .line 3509
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/server/net/NetworkPolicyManagerService;->-get6(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/net/INetworkStatsService;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Landroid/net/INetworkStatsService;->forceUpdate()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3514
    :goto_2
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledNL()V

    .line 3515
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsNL()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    monitor-exit v31

    .line 3518
    const/16 v30, 0x1

    return v30

    .line 3504
    :catchall_0
    move-exception v30

    monitor-exit v31

    throw v30

    .line 3521
    .end local v9    # "iface":Ljava/lang/String;
    :sswitch_3
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v30, v0

    if-eqz v30, :cond_3

    const/16 v22, 0x1

    .line 3522
    .local v22, "restrictBackground":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/android/server/net/NetworkPolicyManagerService;->-get2(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/net/INetworkPolicyListener;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap4(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;Z)V

    .line 3523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/server/net/NetworkPolicyManagerService;->-get4(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v11

    .line 3524
    .restart local v11    # "length":I
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_4
    if-ge v8, v11, :cond_4

    .line 3525
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/server/net/NetworkPolicyManagerService;->-get4(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v8}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v12

    check-cast v12, Landroid/net/INetworkPolicyListener;

    .line 3526
    .restart local v12    # "listener":Landroid/net/INetworkPolicyListener;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v22

    invoke-static {v0, v12, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap4(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;Z)V

    .line 3524
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 3521
    .end local v8    # "i":I
    .end local v11    # "length":I
    .end local v12    # "listener":Landroid/net/INetworkPolicyListener;
    .end local v22    # "restrictBackground":Z
    :cond_3
    const/16 v22, 0x0

    .restart local v22    # "restrictBackground":Z
    goto :goto_3

    .line 3528
    .restart local v8    # "i":I
    .restart local v11    # "length":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/server/net/NetworkPolicyManagerService;->-get4(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 3530
    new-instance v10, Landroid/content/Intent;

    const-string/jumbo v30, "android.net.conn.RESTRICT_BACKGROUND_CHANGED"

    move-object/from16 v0, v30

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3531
    .local v10, "intent":Landroid/content/Intent;
    const/high16 v30, 0x40000000    # 2.0f

    move/from16 v0, v30

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3532
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/server/net/NetworkPolicyManagerService;->-get3(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/content/Context;

    move-result-object v30

    sget-object v31, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-virtual {v0, v10, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3533
    const/16 v30, 0x1

    return v30

    .line 3546
    .end local v8    # "i":I
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v11    # "length":I
    .end local v22    # "restrictBackground":Z
    :sswitch_4
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v24, v0

    .line 3547
    .restart local v24    # "uid":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v30, v0

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_5

    const/4 v6, 0x1

    .line 3548
    .local v6, "changed":Z
    :goto_5
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Ljava/lang/Boolean;

    .line 3551
    .local v28, "whitelisted":Ljava/lang/Boolean;
    if-eqz v28, :cond_7

    .line 3552
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    .line 3553
    .local v29, "whitelistedBool":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/android/server/net/NetworkPolicyManagerService;->-get2(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/net/INetworkPolicyListener;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move/from16 v2, v24

    move/from16 v3, v29

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap5(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;IZ)V

    .line 3555
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/server/net/NetworkPolicyManagerService;->-get4(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v11

    .line 3556
    .restart local v11    # "length":I
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_6
    if-ge v8, v11, :cond_6

    .line 3557
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/server/net/NetworkPolicyManagerService;->-get4(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v8}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v12

    check-cast v12, Landroid/net/INetworkPolicyListener;

    .line 3558
    .restart local v12    # "listener":Landroid/net/INetworkPolicyListener;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v24

    move/from16 v2, v29

    invoke-static {v0, v12, v1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap5(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;IZ)V

    .line 3556
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 3547
    .end local v6    # "changed":Z
    .end local v8    # "i":I
    .end local v11    # "length":I
    .end local v12    # "listener":Landroid/net/INetworkPolicyListener;
    .end local v28    # "whitelisted":Ljava/lang/Boolean;
    .end local v29    # "whitelistedBool":Z
    :cond_5
    const/4 v6, 0x0

    .restart local v6    # "changed":Z
    goto :goto_5

    .line 3561
    .restart local v8    # "i":I
    .restart local v11    # "length":I
    .restart local v28    # "whitelisted":Ljava/lang/Boolean;
    .restart local v29    # "whitelistedBool":Z
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/server/net/NetworkPolicyManagerService;->-get4(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 3563
    .end local v8    # "i":I
    .end local v11    # "length":I
    .end local v29    # "whitelistedBool":Z
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/server/net/NetworkPolicyManagerService;->-get3(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/content/Context;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    .line 3564
    .local v20, "pm":Landroid/content/pm/PackageManager;
    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v17

    .line 3565
    .local v17, "packages":[Ljava/lang/String;
    if-eqz v6, :cond_8

    if-eqz v17, :cond_8

    .line 3567
    invoke-static/range {v24 .. v24}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v27

    .line 3568
    .local v27, "userId":I
    const/16 v30, 0x0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v31, v0

    :goto_7
    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_8

    aget-object v16, v17, v30

    .line 3569
    .local v16, "packageName":Ljava/lang/String;
    new-instance v10, Landroid/content/Intent;

    .line 3570
    const-string/jumbo v32, "android.net.conn.RESTRICT_BACKGROUND_CHANGED"

    .line 3569
    move-object/from16 v0, v32

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3571
    .restart local v10    # "intent":Landroid/content/Intent;
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 3572
    const/high16 v32, 0x40000000    # 2.0f

    move/from16 v0, v32

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3573
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/net/NetworkPolicyManagerService;->-get3(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/content/Context;

    move-result-object v32

    invoke-static/range {v27 .. v27}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual {v0, v10, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3568
    add-int/lit8 v30, v30, 0x1

    goto :goto_7

    .line 3576
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v16    # "packageName":Ljava/lang/String;
    .end local v27    # "userId":I
    :cond_8
    const/16 v30, 0x1

    return v30

    .line 3579
    .end local v6    # "changed":Z
    .end local v17    # "packages":[Ljava/lang/String;
    .end local v20    # "pm":Landroid/content/pm/PackageManager;
    .end local v24    # "uid":I
    .end local v28    # "whitelisted":Ljava/lang/Boolean;
    :sswitch_5
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v24, v0

    .line 3580
    .restart local v24    # "uid":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v30, v0

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_9

    const/4 v4, 0x1

    .line 3582
    .local v4, "blacklisted":Z
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/android/server/net/NetworkPolicyManagerService;->-get2(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/net/INetworkPolicyListener;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move/from16 v2, v24

    invoke-static {v0, v1, v2, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap3(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;IZ)V

    .line 3584
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/server/net/NetworkPolicyManagerService;->-get4(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v11

    .line 3585
    .restart local v11    # "length":I
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_9
    if-ge v8, v11, :cond_a

    .line 3586
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/server/net/NetworkPolicyManagerService;->-get4(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v8}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v12

    check-cast v12, Landroid/net/INetworkPolicyListener;

    .line 3587
    .restart local v12    # "listener":Landroid/net/INetworkPolicyListener;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v24

    invoke-static {v0, v12, v1, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap3(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;IZ)V

    .line 3585
    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    .line 3580
    .end local v4    # "blacklisted":Z
    .end local v8    # "i":I
    .end local v11    # "length":I
    .end local v12    # "listener":Landroid/net/INetworkPolicyListener;
    :cond_9
    const/4 v4, 0x0

    .restart local v4    # "blacklisted":Z
    goto :goto_8

    .line 3590
    .restart local v8    # "i":I
    .restart local v11    # "length":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/server/net/NetworkPolicyManagerService;->-get4(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 3591
    const/16 v30, 0x1

    return v30

    .line 3594
    .end local v4    # "blacklisted":Z
    .end local v8    # "i":I
    .end local v11    # "length":I
    .end local v24    # "uid":I
    :sswitch_6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Ljava/lang/Long;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 3598
    .local v14, "lowestRule":J
    const-wide/16 v30, 0x3e8

    :try_start_3
    div-long v18, v14, v30

    .line 3599
    .local v18, "persistThreshold":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/server/net/NetworkPolicyManagerService;->-get6(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/net/INetworkStatsService;

    move-result-object v30

    move-object/from16 v0, v30

    move-wide/from16 v1, v18

    invoke-interface {v0, v1, v2}, Landroid/net/INetworkStatsService;->advisePersistThreshold(J)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 3603
    .end local v18    # "persistThreshold":J
    :goto_a
    const/16 v30, 0x1

    return v30

    .line 3606
    .end local v14    # "lowestRule":J
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap19(Lcom/android/server/net/NetworkPolicyManagerService;)V

    .line 3607
    const/16 v30, 0x1

    return v30

    .line 3610
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v31, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Ljava/lang/String;

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap10(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/lang/String;)V

    .line 3612
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v31, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Ljava/lang/String;

    .line 3613
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-long v0, v0

    move-wide/from16 v32, v0

    const/16 v34, 0x20

    shl-long v32, v32, v34

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v34, v0

    move/from16 v0, v34

    int-to-long v0, v0

    move-wide/from16 v34, v0

    const-wide v36, 0xffffffffL

    and-long v34, v34, v36

    or-long v32, v32, v34

    .line 3612
    move-object/from16 v0, v31

    move-object/from16 v1, v30

    move-wide/from16 v2, v32

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap12(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/lang/String;J)V

    .line 3614
    const/16 v30, 0x1

    return v30

    .line 3617
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v31, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Ljava/lang/String;

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap10(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/lang/String;)V

    .line 3618
    const/16 v30, 0x1

    return v30

    .line 3621
    :sswitch_a
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    .line 3622
    .local v5, "chain":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v23, v0

    .line 3623
    .local v23, "toggle":I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Landroid/util/SparseIntArray;

    .line 3624
    .local v26, "uidRules":Landroid/util/SparseIntArray;
    if-eqz v26, :cond_b

    .line 3625
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v26

    invoke-static {v0, v5, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap13(Lcom/android/server/net/NetworkPolicyManagerService;ILandroid/util/SparseIntArray;)V

    .line 3627
    :cond_b
    if-eqz v23, :cond_c

    .line 3628
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v31, v0

    const/16 v30, 0x1

    move/from16 v0, v23

    move/from16 v1, v30

    if-ne v0, v1, :cond_d

    const/16 v30, 0x1

    :goto_b
    move-object/from16 v0, v31

    move/from16 v1, v30

    invoke-static {v0, v5, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap7(Lcom/android/server/net/NetworkPolicyManagerService;IZ)V

    .line 3630
    :cond_c
    const/16 v30, 0x1

    return v30

    .line 3628
    :cond_d
    const/16 v30, 0x0

    goto :goto_b

    .line 3633
    .end local v5    # "chain":I
    .end local v23    # "toggle":I
    .end local v26    # "uidRules":Landroid/util/SparseIntArray;
    :sswitch_b
    const-string/jumbo v30, "onUidStateChanged"

    const-wide/32 v32, 0x200000

    move-wide/from16 v0, v32

    move-object/from16 v2, v30

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3635
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    move-object/from16 v31, v0

    monitor-enter v31
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 3636
    :try_start_5
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v24, v0

    .line 3637
    .restart local v24    # "uid":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v21, v0

    .line 3638
    .local v21, "procState":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v24

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap20(Lcom/android/server/net/NetworkPolicyManagerService;II)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    monitor-exit v31
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 3641
    const-wide/32 v30, 0x200000

    invoke-static/range {v30 .. v31}, Landroid/os/Trace;->traceEnd(J)V

    .line 3643
    const/16 v30, 0x1

    return v30

    .line 3635
    .end local v21    # "procState":I
    .end local v24    # "uid":I
    :catchall_1
    move-exception v30

    :try_start_7
    monitor-exit v31

    throw v30
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 3640
    :catchall_2
    move-exception v30

    .line 3641
    const-wide/32 v32, 0x200000

    invoke-static/range {v32 .. v33}, Landroid/os/Trace;->traceEnd(J)V

    .line 3640
    throw v30

    .line 3646
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    move-object/from16 v31, v0

    monitor-enter v31

    .line 3647
    :try_start_8
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v24, v0

    .line 3648
    .restart local v24    # "uid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v24

    invoke-static {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap11(Lcom/android/server/net/NetworkPolicyManagerService;I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    monitor-exit v31

    .line 3650
    const/16 v30, 0x1

    return v30

    .line 3646
    .end local v24    # "uid":I
    :catchall_3
    move-exception v30

    monitor-exit v31

    throw v30

    .line 3600
    .restart local v14    # "lowestRule":J
    :catch_0
    move-exception v7

    .local v7, "e":Landroid/os/RemoteException;
    goto/16 :goto_a

    .line 3510
    .end local v7    # "e":Landroid/os/RemoteException;
    .end local v14    # "lowestRule":J
    .restart local v9    # "iface":Ljava/lang/String;
    :catch_1
    move-exception v7

    .restart local v7    # "e":Landroid/os/RemoteException;
    goto/16 :goto_2

    .line 3476
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x5 -> :sswitch_2
        0x6 -> :sswitch_3
        0x7 -> :sswitch_6
        0x8 -> :sswitch_7
        0x9 -> :sswitch_4
        0xa -> :sswitch_8
        0xb -> :sswitch_9
        0xc -> :sswitch_5
        0xd -> :sswitch_a
        0x1e6c -> :sswitch_b
        0xd348 -> :sswitch_c
    .end sparse-switch
.end method
