.class final Lcom/android/server/DeviceIdleController$MyHandler;
.super Landroid/os/Handler;
.source "DeviceIdleController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceIdleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DeviceIdleController;


# direct methods
.method constructor <init>(Lcom/android/server/DeviceIdleController;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 730
    iput-object p1, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    .line 731
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 732
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 735
    const-string v4, "DeviceIdleController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleMessage("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 785
    :goto_0
    return-void

    .line 738
    :pswitch_0
    iget-object v4, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v4}, Lcom/android/server/DeviceIdleController;->handleWriteConfigFile()V

    goto :goto_0

    .line 741
    :pswitch_1
    invoke-static {}, Lcom/android/server/EventLogTags;->writeDeviceIdleOnStart()V

    .line 742
    iget-object v4, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;
    invoke-static {v4}, Lcom/android/server/DeviceIdleController;->access$000(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManagerInternal;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/os/PowerManagerInternal;->setDeviceIdleMode(Z)V

    .line 744
    :try_start_0
    iget-object v4, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mNetworkPolicyManager:Landroid/net/INetworkPolicyManager;
    invoke-static {v4}, Lcom/android/server/DeviceIdleController;->access$100(Lcom/android/server/DeviceIdleController;)Landroid/net/INetworkPolicyManager;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Landroid/net/INetworkPolicyManager;->setDeviceIdleMode(Z)V

    .line 745
    iget-object v4, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;
    invoke-static {v4}, Lcom/android/server/DeviceIdleController;->access$200(Lcom/android/server/DeviceIdleController;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v7

    invoke-interface {v4, v5, v6, v7}, Lcom/android/internal/app/IBatteryStats;->noteDeviceIdleMode(ZLjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    .line 748
    :goto_1
    iget-object v4, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mIdleIntent:Landroid/content/Intent;
    invoke-static {v4}, Lcom/android/server/DeviceIdleController;->access$300(Lcom/android/server/DeviceIdleController;)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "stopGps"

    sget-boolean v6, Lcom/android/server/DeviceIdleController;->mStopGps:Z

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 749
    iget-object v4, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v4}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mIdleIntent:Landroid/content/Intent;
    invoke-static {v5}, Lcom/android/server/DeviceIdleController;->access$300(Lcom/android/server/DeviceIdleController;)Landroid/content/Intent;

    move-result-object v5

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 750
    invoke-static {}, Lcom/android/server/EventLogTags;->writeDeviceIdleOnComplete()V

    goto :goto_0

    .line 753
    :pswitch_2
    const-string v4, "unknown"

    invoke-static {v4}, Lcom/android/server/EventLogTags;->writeDeviceIdleOffStart(Ljava/lang/String;)V

    .line 754
    iget-object v4, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;
    invoke-static {v4}, Lcom/android/server/DeviceIdleController;->access$000(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManagerInternal;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/os/PowerManagerInternal;->setDeviceIdleMode(Z)V

    .line 756
    :try_start_1
    iget-object v4, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mNetworkPolicyManager:Landroid/net/INetworkPolicyManager;
    invoke-static {v4}, Lcom/android/server/DeviceIdleController;->access$100(Lcom/android/server/DeviceIdleController;)Landroid/net/INetworkPolicyManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/net/INetworkPolicyManager;->setDeviceIdleMode(Z)V

    .line 757
    iget-object v4, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;
    invoke-static {v4}, Lcom/android/server/DeviceIdleController;->access$200(Lcom/android/server/DeviceIdleController;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v7

    invoke-interface {v4, v5, v6, v7}, Lcom/android/internal/app/IBatteryStats;->noteDeviceIdleMode(ZLjava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 760
    :goto_2
    iget-object v4, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v4}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mIdleIntent:Landroid/content/Intent;
    invoke-static {v5}, Lcom/android/server/DeviceIdleController;->access$300(Lcom/android/server/DeviceIdleController;)Landroid/content/Intent;

    move-result-object v5

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 761
    invoke-static {}, Lcom/android/server/EventLogTags;->writeDeviceIdleOffComplete()V

    goto/16 :goto_0

    .line 764
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 765
    .local v0, "activeReason":Ljava/lang/String;
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 766
    .local v1, "activeUid":I
    iget v4, p1, Landroid/os/Message;->arg2:I

    if-eqz v4, :cond_1

    .line 767
    .local v2, "needBroadcast":Z
    :goto_3
    if-eqz v0, :cond_2

    move-object v4, v0

    :goto_4
    invoke-static {v4}, Lcom/android/server/EventLogTags;->writeDeviceIdleOffStart(Ljava/lang/String;)V

    .line 769
    iget-object v4, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;
    invoke-static {v4}, Lcom/android/server/DeviceIdleController;->access$000(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManagerInternal;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/os/PowerManagerInternal;->setDeviceIdleMode(Z)V

    .line 771
    :try_start_2
    iget-object v4, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mNetworkPolicyManager:Landroid/net/INetworkPolicyManager;
    invoke-static {v4}, Lcom/android/server/DeviceIdleController;->access$100(Lcom/android/server/DeviceIdleController;)Landroid/net/INetworkPolicyManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/net/INetworkPolicyManager;->setDeviceIdleMode(Z)V

    .line 772
    iget-object v4, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;
    invoke-static {v4}, Lcom/android/server/DeviceIdleController;->access$200(Lcom/android/server/DeviceIdleController;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5, v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteDeviceIdleMode(ZLjava/lang/String;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 775
    :goto_5
    if-eqz v2, :cond_0

    .line 776
    iget-object v4, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v4}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mIdleIntent:Landroid/content/Intent;
    invoke-static {v5}, Lcom/android/server/DeviceIdleController;->access$300(Lcom/android/server/DeviceIdleController;)Landroid/content/Intent;

    move-result-object v5

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 778
    :cond_0
    invoke-static {}, Lcom/android/server/EventLogTags;->writeDeviceIdleOffComplete()V

    goto/16 :goto_0

    .end local v2    # "needBroadcast":Z
    :cond_1
    move v2, v5

    .line 766
    goto :goto_3

    .line 767
    .restart local v2    # "needBroadcast":Z
    :cond_2
    const-string v4, "unknown"

    goto :goto_4

    .line 781
    .end local v0    # "activeReason":Ljava/lang/String;
    .end local v1    # "activeUid":I
    .end local v2    # "needBroadcast":Z
    :pswitch_4
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 782
    .local v3, "uid":I
    iget-object v4, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v4, v3}, Lcom/android/server/DeviceIdleController;->checkTempAppWhitelistTimeout(I)V

    goto/16 :goto_0

    .line 773
    .end local v3    # "uid":I
    .restart local v0    # "activeReason":Ljava/lang/String;
    .restart local v1    # "activeUid":I
    .restart local v2    # "needBroadcast":Z
    :catch_0
    move-exception v4

    goto :goto_5

    .line 758
    .end local v0    # "activeReason":Ljava/lang/String;
    .end local v1    # "activeUid":I
    .end local v2    # "needBroadcast":Z
    :catch_1
    move-exception v4

    goto :goto_2

    .line 746
    :catch_2
    move-exception v4

    goto/16 :goto_1

    .line 736
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
