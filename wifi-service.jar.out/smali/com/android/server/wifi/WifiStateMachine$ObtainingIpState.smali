.class Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ObtainingIpState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0

    .prologue
    .line 8959
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const v10, 0x20010

    .line 8962
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$300()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 8963
    const-string v4, ""

    .line 8964
    .local v4, "key":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 8965
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v4

    .line 8967
    :cond_0
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "enter ObtainingIpState netId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->access$5700(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " roam="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mAutoRoaming:I
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->access$16000(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " static="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->access$3900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->access$5700(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/server/wifi/WifiConfigStore;->isUsingStaticIp(I)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " watchdog= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget v8, v8, Lcom/android/server/wifi/WifiStateMachine;->obtainingIpWatchdogCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 8976
    .end local v4    # "key":Ljava/lang/String;
    :cond_1
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->linkDebouncing:Z
    invoke-static {v6, v11}, Lcom/android/server/wifi/WifiStateMachine;->access$14802(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 8979
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    sget-object v7, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setNetworkDetailedState(Landroid/net/NetworkInfo$DetailedState;)Z
    invoke-static {v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->access$10800(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/NetworkInfo$DetailedState;)Z

    .line 8984
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v7, "ObtainingIpAddress"

    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->clearCurrentConfigBSSID(Ljava/lang/String;)V

    .line 8987
    :try_start_0
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->access$800(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDataInterfaceName:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->access$4100(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Landroid/os/INetworkManagementService;->enableIpv6(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 8994
    :goto_0
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->access$3900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->access$5700(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiConfigStore;->isUsingStaticIp(I)Z

    move-result v6

    if-nez v6, :cond_3

    .line 8995
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiStateMachine;->isRoaming()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 8996
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiStateMachine;->renewDhcp()V

    .line 9004
    :goto_1
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget v7, v6, Lcom/android/server/wifi/WifiStateMachine;->obtainingIpWatchdogCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lcom/android/server/wifi/WifiStateMachine;->obtainingIpWatchdogCount:I

    .line 9005
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Start Dhcp Watchdog "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget v8, v8, Lcom/android/server/wifi/WifiStateMachine;->obtainingIpWatchdogCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 9007
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->getWifiLinkLayerStats(Z)Landroid/net/wifi/WifiLinkLayerStats;

    .line 9008
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v8, 0x2005d

    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget v9, v9, Lcom/android/server/wifi/WifiStateMachine;->obtainingIpWatchdogCount:I

    invoke-virtual {v7, v8, v9, v11}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    const-wide/32 v8, 0x9c40

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 9036
    :goto_2
    return-void

    .line 8988
    :catch_0
    move-exception v5

    .line 8989
    .local v5, "re":Landroid/os/RemoteException;
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to enable IPv6: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 8990
    .end local v5    # "re":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 8991
    .local v2, "e":Ljava/lang/IllegalStateException;
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to enable IPv6: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 9001
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :cond_2
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDataInterfaceName:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->access$4100(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->clearIPv4Address(Ljava/lang/String;)Z
    invoke-static {v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->access$22500(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Z

    .line 9002
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiStateMachine;->startDhcp()V

    goto/16 :goto_1

    .line 9012
    :cond_3
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiStateMachine;->stopDhcp()V

    .line 9013
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->access$3900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->access$5700(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiConfigStore;->getStaticIpConfiguration(I)Landroid/net/StaticIpConfiguration;

    move-result-object v0

    .line 9015
    .local v0, "config":Landroid/net/StaticIpConfiguration;
    iget-object v6, v0, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    if-nez v6, :cond_4

    .line 9016
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v7, "Static IP lacks address"

    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 9017
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v6, v10}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    goto :goto_2

    .line 9019
    :cond_4
    new-instance v3, Landroid/net/InterfaceConfiguration;

    invoke-direct {v3}, Landroid/net/InterfaceConfiguration;-><init>()V

    .line 9020
    .local v3, "ifcg":Landroid/net/InterfaceConfiguration;
    iget-object v6, v0, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v3, v6}, Landroid/net/InterfaceConfiguration;->setLinkAddress(Landroid/net/LinkAddress;)V

    .line 9021
    invoke-virtual {v3}, Landroid/net/InterfaceConfiguration;->setInterfaceUp()V

    .line 9023
    :try_start_1
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->access$800(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDataInterfaceName:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->access$4100(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v3}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V

    .line 9024
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$300()Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v7, "Static IP configuration succeeded"

    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 9025
    :cond_5
    new-instance v1, Landroid/net/DhcpResults;

    invoke-direct {v1, v0}, Landroid/net/DhcpResults;-><init>(Landroid/net/StaticIpConfiguration;)V

    .line 9026
    .local v1, "dhcpResults":Landroid/net/DhcpResults;
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v7, 0x2000f

    invoke-virtual {v6, v7, v1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(ILjava/lang/Object;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_3

    goto/16 :goto_2

    .line 9027
    .end local v1    # "dhcpResults":Landroid/net/DhcpResults;
    :catch_2
    move-exception v5

    .line 9028
    .restart local v5    # "re":Landroid/os/RemoteException;
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Static IP configuration failed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 9029
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v6, v10}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    goto/16 :goto_2

    .line 9030
    .end local v5    # "re":Landroid/os/RemoteException;
    :catch_3
    move-exception v2

    .line 9031
    .restart local v2    # "e":Ljava/lang/IllegalStateException;
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Static IP configuration failed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 9032
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v6, v10}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    goto/16 :goto_2
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 9039
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->logStateAndMessage(Landroid/os/Message;Ljava/lang/String;)V
    invoke-static {v0, p1, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$1100(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Ljava/lang/String;)V

    .line 9041
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 9078
    const/4 v0, 0x0

    .line 9080
    :goto_0
    return v0

    .line 9043
    :sswitch_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/DhcpResults;

    const v2, 0x2000f

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->handleIPv4Success(Landroid/net/DhcpResults;I)V
    invoke-static {v1, v0, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$19700(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/DhcpResults;I)V

    .line 9080
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 9046
    :sswitch_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v1, 0x20010

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->handleIPv4Failure(I)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$19800(Lcom/android/server/wifi/WifiStateMachine;I)V

    goto :goto_1

    .line 9050
    :sswitch_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_DISCARD:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$2000()I

    move-result v1

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$1902(Lcom/android/server/wifi/WifiStateMachine;I)I

    goto :goto_1

    .line 9054
    :sswitch_3
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_DEFERRED:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$6700()I

    move-result v1

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$1902(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 9055
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->access$22600(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto :goto_1

    .line 9059
    :sswitch_4
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_DEFERRED:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$6700()I

    move-result v1

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$1902(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 9060
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->access$22700(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto :goto_1

    .line 9064
    :sswitch_5
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_DEFERRED:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$6700()I

    move-result v1

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$1902(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 9065
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->access$22800(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto :goto_1

    .line 9068
    :sswitch_6
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget v1, v1, Lcom/android/server/wifi/WifiStateMachine;->obtainingIpWatchdogCount:I

    if-ne v0, v1, :cond_0

    .line 9069
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ObtainingIpAddress: Watchdog Triggered, count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget v2, v2, Lcom/android/server/wifi/WifiStateMachine;->obtainingIpWatchdogCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 9071
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->handleIpConfigurationLost()V
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$20200(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 9072
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$16300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$22900(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 9075
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_DISCARD:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$2000()I

    move-result v1

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$1902(Lcom/android/server/wifi/WifiStateMachine;I)I

    goto :goto_1

    .line 9041
    nop

    :sswitch_data_0
    .sparse-switch
        0x2000f -> :sswitch_0
        0x20010 -> :sswitch_1
        0x20047 -> :sswitch_5
        0x2004d -> :sswitch_4
        0x2005d -> :sswitch_6
        0x2008f -> :sswitch_2
        0x20091 -> :sswitch_2
        0x20092 -> :sswitch_3
        0x25007 -> :sswitch_3
    .end sparse-switch
.end method
