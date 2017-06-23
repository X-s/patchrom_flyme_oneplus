.class Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DriverStartedState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0

    .prologue
    .line 6568
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 8

    .prologue
    const/high16 v7, 0x40000

    const/4 v6, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 6572
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->PDBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$10300()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6573
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v5, "DriverStartedState enter"

    invoke-virtual {v2, v5}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 6576
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiLogger:Lcom/android/server/wifi/DummyWifiLogger;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$2500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/DummyWifiLogger;

    move-result-object v5

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mVerboseLoggingLevel:I
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$10400(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v2

    if-lez v2, :cond_5

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Lcom/android/server/wifi/DummyWifiLogger;->startLogging(Z)V

    .line 6577
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mIsRunning:Z
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$10502(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 6578
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mInDelayedStop:Z
    invoke-static {v2, v4}, Lcom/android/server/wifi/WifiStateMachine;->access$10602(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 6579
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # operator++ for: Lcom/android/server/wifi/WifiStateMachine;->mDelayedStopCounter:I
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$10708(Lcom/android/server/wifi/WifiStateMachine;)I

    .line 6580
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/android/server/wifi/WifiStateMachine;->updateBatteryWorkSource(Landroid/os/WorkSource;)V

    .line 6581
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mNumSelectiveChannelScan:I
    invoke-static {v2, v4}, Lcom/android/server/wifi/WifiStateMachine;->access$8502(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 6587
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$3500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v2

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mBluetoothConnectionActive:Z
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$1300(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v5

    invoke-virtual {v2, v5}, Lcom/android/server/wifi/WifiNative;->setBluetoothCoexistenceScanMode(Z)Z

    .line 6589
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setNetworkDetailedState(Landroid/net/NetworkInfo$DetailedState;)Z
    invoke-static {v2, v5}, Lcom/android/server/wifi/WifiStateMachine;->access$10800(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/NetworkInfo$DetailedState;)Z

    .line 6592
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$3500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiNative;->stopFilteringMulticastV6Packets()Z

    .line 6595
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mFilteringMulticastV4Packets:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$10900(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 6596
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$3500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiNative;->startFilteringMulticastV4Packets()Z

    .line 6601
    :goto_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mDhcpActive:Z
    invoke-static {v2, v4}, Lcom/android/server/wifi/WifiStateMachine;->access$11002(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 6603
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mOperationalMode:I
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$8900(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v2

    if-eq v2, v3, :cond_7

    .line 6604
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$3500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    .line 6605
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$3900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiConfigStore;->disableAllNetworks()V

    .line 6606
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mOperationalMode:I
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$8900(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v2

    if-ne v2, v6, :cond_1

    .line 6607
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setWifiState(I)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$4400(Lcom/android/server/wifi/WifiStateMachine;I)V

    .line 6609
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mScanModeState:Lcom/android/internal/util/State;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$11100(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v5

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v5}, Lcom/android/server/wifi/WifiStateMachine;->access$11200(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 6624
    :goto_2
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mScreenBroadcastReceived:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$11600(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_8

    .line 6625
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v2

    const-string v4, "power"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 6627
    .local v1, "powerManager":Landroid/os/PowerManager;
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v4

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->handleScreenStateChanged(Z)V
    invoke-static {v2, v4}, Lcom/android/server/wifi/WifiStateMachine;->access$1800(Lcom/android/server/wifi/WifiStateMachine;Z)V

    .line 6633
    .end local v1    # "powerManager":Landroid/os/PowerManager;
    :goto_3
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$3500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiNative;->setPowerSave(Z)V

    .line 6635
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mP2pSupported:Z
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$4200(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6636
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mOperationalMode:I
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$8900(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v2

    if-ne v2, v3, :cond_2

    .line 6637
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$1200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v2

    const v4, 0x20083

    invoke-virtual {v2, v4}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 6645
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v2, "wifi_scan_available"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6646
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v2, 0x4000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 6647
    const-string v2, "scan_enabled"

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6648
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v2

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v4}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 6650
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {}, Lcom/android/server/wifi/WifiNative;->getSupportedFeatureSet()I

    move-result v4

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mHalFeatureSet:I
    invoke-static {v2, v4}, Lcom/android/server/wifi/WifiStateMachine;->access$11802(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 6651
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mHalFeatureSet:I
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$11800(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v2

    and-int/2addr v2, v7

    if-ne v2, v7, :cond_3

    .line 6653
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mHalBasedPnoDriverSupported:Z
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$11902(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 6657
    :cond_3
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$3500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    const-string v2, "wlan0"

    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiNative;->setWifiLinkLayerStats(Ljava/lang/String;I)V

    .line 6659
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->PDBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$10300()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 6660
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Driverstarted State enter done, epno="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mHalBasedPnoDriverSupported:Z
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$11900(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " feature="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mHalFeatureSet:I
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$11800(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 6663
    :cond_4
    return-void

    .end local v0    # "intent":Landroid/content/Intent;
    :cond_5
    move v2, v4

    .line 6576
    goto/16 :goto_0

    .line 6598
    :cond_6
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$3500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiNative;->stopFilteringMulticastV4Packets()Z

    goto/16 :goto_1

    .line 6617
    :cond_7
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$3500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiNative;->status()Ljava/lang/String;

    .line 6619
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$11300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v5

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v5}, Lcom/android/server/wifi/WifiStateMachine;->access$11400(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 6620
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$11300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v5

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v5}, Lcom/android/server/wifi/WifiStateMachine;->access$11500(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_2

    .line 6630
    :cond_8
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$3500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v2

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSuspendOptNeedsDisabled:I
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$11700(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v5

    if-nez v5, :cond_9

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mUserWantsSuspendOpt:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$600(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-eqz v5, :cond_9

    move v4, v3

    :cond_9
    invoke-virtual {v2, v4}, Lcom/android/server/wifi/WifiNative;->setSuspendOptimizations(Z)Z

    goto/16 :goto_3
.end method

.method public exit()V
    .locals 3

    .prologue
    .line 6825
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiLogger:Lcom/android/server/wifi/DummyWifiLogger;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$2500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/DummyWifiLogger;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wifi/DummyWifiLogger;->stopLogging()V

    .line 6827
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mIsRunning:Z
    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$10502(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 6828
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->updateBatteryWorkSource(Landroid/os/WorkSource;)V

    .line 6829
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mScanResults:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$13102(Lcom/android/server/wifi/WifiStateMachine;Ljava/util/List;)Ljava/util/List;

    .line 6831
    new-instance v0, Landroid/content/Intent;

    const-string v1, "wifi_scan_available"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6832
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 6833
    const-string v1, "scan_enabled"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6834
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 6835
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->noteScanEnd()V
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$8100(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 6836
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mBufferedScanMsg:Ljava/util/Queue;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$8800(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    .line 6837
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 14
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v11, 0x4

    const/4 v12, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 6667
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->logStateAndMessage(Landroid/os/Message;Ljava/lang/String;)V
    invoke-static {v7, p1, v10}, Lcom/android/server/wifi/WifiStateMachine;->access$1100(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Ljava/lang/String;)V

    .line 6669
    iget v7, p1, Landroid/os/Message;->what:I

    sparse-switch v7, :sswitch_data_0

    .line 6820
    :goto_0
    return v9

    .line 6671
    :sswitch_0
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->handleScanRequest(ILandroid/os/Message;)V
    invoke-static {v7, v8, p1}, Lcom/android/server/wifi/WifiStateMachine;->access$12000(Lcom/android/server/wifi/WifiStateMachine;ILandroid/os/Message;)V

    :cond_0
    :goto_1
    move v9, v8

    .line 6820
    goto :goto_0

    .line 6674
    :sswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 6675
    .local v0, "band":I
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$300()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "set frequency band "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 6676
    :cond_1
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->access$3500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/android/server/wifi/WifiNative;->setBand(I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 6678
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->PDBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$10300()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "did set frequency band "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 6680
    :cond_2
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mFrequencyBand:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->access$12100(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 6681
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->access$3900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/android/server/wifi/WifiConfigStore;->setConfiguredBand(I)V

    .line 6683
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->access$3500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/wifi/WifiNative;->bssFlush()V

    .line 6684
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mFrequencyBand:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->access$12100(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v7

    if-ne v7, v12, :cond_4

    .line 6685
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->access$3500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v7

    invoke-virtual {v7, v8}, Lcom/android/server/wifi/WifiNative;->disable5GHzFrequencies(Z)Z

    .line 6686
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mDisabled5GhzFrequencies:Z
    invoke-static {v7, v8}, Lcom/android/server/wifi/WifiStateMachine;->access$12202(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 6695
    :cond_3
    :goto_2
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->PDBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$10300()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "done set frequency band "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 6687
    :cond_4
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mFrequencyBand:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->access$12100(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v7

    if-eq v7, v12, :cond_3

    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDisabled5GhzFrequencies:Z
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->access$12200(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 6689
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->access$3500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v7

    invoke-virtual {v7, v9}, Lcom/android/server/wifi/WifiNative;->disable5GHzFrequencies(Z)Z

    .line 6690
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mDisabled5GhzFrequencies:Z
    invoke-static {v7, v9}, Lcom/android/server/wifi/WifiStateMachine;->access$12202(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    goto :goto_2

    .line 6698
    :cond_5
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to set frequency band "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 6702
    .end local v0    # "band":I
    :sswitch_2
    iget-object v10, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget v7, p1, Landroid/os/Message;->arg1:I

    if-eqz v7, :cond_6

    move v7, v8

    :goto_3
    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mBluetoothConnectionActive:Z
    invoke-static {v10, v7}, Lcom/android/server/wifi/WifiStateMachine;->access$1302(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 6704
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->access$3500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v7

    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mBluetoothConnectionActive:Z
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->access$1300(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v9

    invoke-virtual {v7, v9}, Lcom/android/server/wifi/WifiNative;->setBluetoothCoexistenceScanMode(Z)Z

    goto/16 :goto_1

    :cond_6
    move v7, v9

    .line 6702
    goto :goto_3

    .line 6707
    :sswitch_3
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 6710
    .local v3, "mode":I
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mInDelayedStop:Z
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->access$10600(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 6711
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$300()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v9, "Already in delayed stop"

    invoke-virtual {v7, v9}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 6715
    :cond_7
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->access$3900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/wifi/WifiConfigStore;->disableAllNetworks()V

    .line 6717
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mInDelayedStop:Z
    invoke-static {v7, v8}, Lcom/android/server/wifi/WifiStateMachine;->access$10602(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 6718
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # operator++ for: Lcom/android/server/wifi/WifiStateMachine;->mDelayedStopCounter:I
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->access$10708(Lcom/android/server/wifi/WifiStateMachine;)I

    .line 6719
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$300()Z

    move-result v7

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Delayed stop message "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDelayedStopCounter:I
    invoke-static {v11}, Lcom/android/server/wifi/WifiStateMachine;->access$10700(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 6722
    :cond_8
    new-instance v1, Landroid/content/Intent;

    const-string v7, "com.android.server.WifiManager.action.DELAYED_DRIVER_STOP"

    const/4 v10, 0x0

    invoke-direct {v1, v7, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 6723
    .local v1, "driverStopIntent":Landroid/content/Intent;
    const-string v7, "android"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 6724
    const-string v7, "DelayedStopCounter"

    iget-object v10, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDelayedStopCounter:I
    invoke-static {v10}, Lcom/android/server/wifi/WifiStateMachine;->access$10700(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v10

    invoke-virtual {v1, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6725
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v10, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v10

    const/high16 v11, 0x8000000

    invoke-static {v10, v9, v1, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mDriverStopIntent:Landroid/app/PendingIntent;
    invoke-static {v7, v10}, Lcom/android/server/wifi/WifiStateMachine;->access$12302(Lcom/android/server/wifi/WifiStateMachine;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    .line 6729
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->access$12500(Lcom/android/server/wifi/WifiStateMachine;)Landroid/app/AlarmManager;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget-object v12, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDriverStopDelayMs:I
    invoke-static {v12}, Lcom/android/server/wifi/WifiStateMachine;->access$12400(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v12

    int-to-long v12, v12

    add-long/2addr v10, v12

    iget-object v12, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDriverStopIntent:Landroid/app/PendingIntent;
    invoke-static {v12}, Lcom/android/server/wifi/WifiStateMachine;->access$12300(Lcom/android/server/wifi/WifiStateMachine;)Landroid/app/PendingIntent;

    move-result-object v12

    invoke-virtual {v7, v9, v10, v11, v12}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_1

    .line 6733
    .end local v1    # "driverStopIntent":Landroid/content/Intent;
    .end local v3    # "mode":I
    :sswitch_4
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mInDelayedStop:Z
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->access$10600(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 6734
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mInDelayedStop:Z
    invoke-static {v7, v9}, Lcom/android/server/wifi/WifiStateMachine;->access$10602(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 6735
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # operator++ for: Lcom/android/server/wifi/WifiStateMachine;->mDelayedStopCounter:I
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->access$10708(Lcom/android/server/wifi/WifiStateMachine;)I

    .line 6736
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->access$12500(Lcom/android/server/wifi/WifiStateMachine;)Landroid/app/AlarmManager;

    move-result-object v7

    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDriverStopIntent:Landroid/app/PendingIntent;
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->access$12300(Lcom/android/server/wifi/WifiStateMachine;)Landroid/app/PendingIntent;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 6737
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$300()Z

    move-result v7

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v9, "Delayed stop ignored due to start"

    invoke-virtual {v7, v9}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 6738
    :cond_9
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mOperationalMode:I
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->access$8900(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v7

    if-ne v7, v8, :cond_0

    .line 6739
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x112000c

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v7}, Lcom/android/server/wifi/WifiStateMachine;->shouldAutoConnect()Z

    move-result v7

    if-nez v7, :cond_a

    .line 6741
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$300()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 6742
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v9, "Auto connect disabled, skip enable networks"

    invoke-virtual {v7, v9}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 6745
    :cond_a
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->access$3900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/wifi/WifiConfigStore;->enableAllNetworks()V

    goto/16 :goto_1

    .line 6751
    :sswitch_5
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$300()Z

    move-result v7

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "delayed stop "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDelayedStopCounter:I
    invoke-static {v10}, Lcom/android/server/wifi/WifiStateMachine;->access$10700(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 6752
    :cond_b
    iget v7, p1, Landroid/os/Message;->arg1:I

    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDelayedStopCounter:I
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->access$10700(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v9

    if-ne v7, v9, :cond_0

    .line 6753
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->access$12600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v7

    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->access$11300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v9

    if-eq v7, v9, :cond_c

    .line 6754
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->access$3500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    .line 6755
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->handleNetworkDisconnect()V
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->access$7800(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 6757
    :cond_c
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->access$10100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 6758
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->access$3500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/wifi/WifiNative;->stopDriver()Z

    .line 6759
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->access$10100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 6760
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mP2pSupported:Z
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->access$4200(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 6761
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWaitForP2pDisableState:Lcom/android/internal/util/State;
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->access$7300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v9

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v7, v9}, Lcom/android/server/wifi/WifiStateMachine;->access$12700(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 6763
    :cond_d
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDriverStoppingState:Lcom/android/internal/util/State;
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->access$12800(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v9

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v7, v9}, Lcom/android/server/wifi/WifiStateMachine;->access$12900(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 6767
    :sswitch_6
    iget v7, p1, Landroid/os/Message;->arg1:I

    if-ne v7, v8, :cond_e

    .line 6768
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->access$3500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/wifi/WifiNative;->startFilteringMulticastV6Packets()Z

    goto/16 :goto_1

    .line 6769
    :cond_e
    iget v7, p1, Landroid/os/Message;->arg1:I

    if-nez v7, :cond_f

    .line 6770
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->access$3500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/wifi/WifiNative;->startFilteringMulticastV4Packets()Z

    goto/16 :goto_1

    .line 6772
    :cond_f
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v9, "Illegal arugments to CMD_START_PACKET_FILTERING"

    invoke-virtual {v7, v9}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 6776
    :sswitch_7
    iget v7, p1, Landroid/os/Message;->arg1:I

    if-ne v7, v8, :cond_10

    .line 6777
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->access$3500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/wifi/WifiNative;->stopFilteringMulticastV6Packets()Z

    goto/16 :goto_1

    .line 6778
    :cond_10
    iget v7, p1, Landroid/os/Message;->arg1:I

    if-nez v7, :cond_11

    .line 6779
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->access$3500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/wifi/WifiNative;->stopFilteringMulticastV4Packets()Z

    goto/16 :goto_1

    .line 6781
    :cond_11
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v9, "Illegal arugments to CMD_STOP_PACKET_FILTERING"

    invoke-virtual {v7, v9}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 6785
    :sswitch_8
    iget v7, p1, Landroid/os/Message;->arg1:I

    if-ne v7, v8, :cond_12

    .line 6786
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setSuspendOptimizationsNative(IZ)V
    invoke-static {v7, v11, v8}, Lcom/android/server/wifi/WifiStateMachine;->access$13000(Lcom/android/server/wifi/WifiStateMachine;IZ)V

    .line 6787
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSuspendWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->access$2300(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_1

    .line 6789
    :cond_12
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setSuspendOptimizationsNative(IZ)V
    invoke-static {v7, v11, v9}, Lcom/android/server/wifi/WifiStateMachine;->access$13000(Lcom/android/server/wifi/WifiStateMachine;IZ)V

    goto/16 :goto_1

    .line 6793
    :sswitch_9
    iget v7, p1, Landroid/os/Message;->arg1:I

    if-ne v7, v8, :cond_13

    .line 6794
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setSuspendOptimizationsNative(IZ)V
    invoke-static {v7, v12, v9}, Lcom/android/server/wifi/WifiStateMachine;->access$13000(Lcom/android/server/wifi/WifiStateMachine;IZ)V

    goto/16 :goto_1

    .line 6796
    :cond_13
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setSuspendOptimizationsNative(IZ)V
    invoke-static {v7, v12, v8}, Lcom/android/server/wifi/WifiStateMachine;->access$13000(Lcom/android/server/wifi/WifiStateMachine;IZ)V

    goto/16 :goto_1

    .line 6800
    :sswitch_a
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v7, :cond_0

    .line 6801
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 6802
    .local v4, "remoteAddress":Ljava/lang/String;
    iget v7, p1, Landroid/os/Message;->arg1:I

    if-ne v7, v8, :cond_14

    move v2, v8

    .line 6803
    .local v2, "enable":Z
    :goto_4
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->access$3500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v7

    invoke-virtual {v7, v4, v2}, Lcom/android/server/wifi/WifiNative;->startTdls(Ljava/lang/String;Z)V

    goto/16 :goto_1

    .end local v2    # "enable":Z
    :cond_14
    move v2, v9

    .line 6802
    goto :goto_4

    .line 6807
    .end local v4    # "remoteAddress":Ljava/lang/String;
    :sswitch_b
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->access$3900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v10

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Long;

    iget v11, p1, Landroid/os/Message;->arg1:I

    if-eqz v11, :cond_15

    move v9, v8

    :cond_15
    invoke-virtual {v10, v7, v9}, Lcom/android/server/wifi/WifiConfigStore;->notifyANQPDone(Ljava/lang/Long;Z)V

    goto/16 :goto_1

    .line 6810
    :sswitch_c
    iget v6, p1, Landroid/os/Message;->arg1:I

    .line 6811
    .local v6, "slot":I
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v7, v6}, Lcom/android/server/wifi/WifiStateMachine;->stopWifiIPPacketOffload(I)I

    move-result v5

    .line 6812
    .local v5, "ret":I
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->access$3300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 6813
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->access$3300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    move-result-object v7

    invoke-virtual {v7, v6, v5}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->onPacketKeepaliveEvent(II)V

    goto/16 :goto_1

    .line 6669
    nop

    :sswitch_data_0
    .sparse-switch
        0x2000d -> :sswitch_4
        0x2000e -> :sswitch_3
        0x20012 -> :sswitch_5
        0x2001f -> :sswitch_2
        0x20047 -> :sswitch_0
        0x2004d -> :sswitch_9
        0x20054 -> :sswitch_6
        0x20055 -> :sswitch_7
        0x20056 -> :sswitch_8
        0x2005a -> :sswitch_1
        0x2005c -> :sswitch_a
        0x200a1 -> :sswitch_c
        0x2402c -> :sswitch_b
    .end sparse-switch
.end method
