.class Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;
.super Ljava/lang/Object;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UpstreamNetworkMonitor"
.end annotation


# static fields
.field static final EVENT_ON_AVAILABLE:I = 0x1

.field static final EVENT_ON_CAPABILITIES:I = 0x2

.field static final EVENT_ON_LINKPROPERTIES:I = 0x3

.field static final EVENT_ON_LOST:I = 0x4


# instance fields
.field mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field mDunTetheringCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field final mNetworkMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Network;",
            "Landroid/net/NetworkState;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/connectivity/Tethering;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/Tethering;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    .line 1573
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1579
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->mNetworkMap:Ljava/util/HashMap;

    .line 1573
    return-void
.end method


# virtual methods
.method lookup(Landroid/net/Network;)Landroid/net/NetworkState;
    .locals 1
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    const/4 v0, 0x0

    .line 1614
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkState;

    :cond_0
    return-object v0
.end method

.method processCallback(ILjava/lang/Object;)Landroid/net/NetworkState;
    .locals 15
    .param p1, "arg1"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1618
    packed-switch p1, :pswitch_data_0

    .line 1697
    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    move-object/from16 v4, p2

    .line 1620
    check-cast v4, Landroid/net/Network;

    .line 1622
    .local v4, "network":Landroid/net/Network;
    const-string/jumbo v0, "Tethering"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "EVENT_ON_AVAILABLE for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1624
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1625
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->mNetworkMap:Ljava/util/HashMap;

    .line 1626
    new-instance v0, Landroid/net/NetworkState;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/net/NetworkState;-><init>(Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;Landroid/net/Network;Ljava/lang/String;Ljava/lang/String;)V

    .line 1625
    invoke-virtual {v7, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1629
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->-wrap0(Lcom/android/server/connectivity/Tethering;)Landroid/net/ConnectivityManager;

    move-result-object v12

    .line 1631
    .local v12, "cm":Landroid/net/ConnectivityManager;
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v0, :cond_1

    .line 1632
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v12, v0}, Landroid/net/ConnectivityManager;->requestNetworkCapabilities(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 1633
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v12, v0}, Landroid/net/ConnectivityManager;->requestLinkProperties(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 1649
    :cond_1
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkState;

    return-object v0

    .end local v4    # "network":Landroid/net/Network;
    .end local v12    # "cm":Landroid/net/ConnectivityManager;
    :pswitch_1
    move-object/from16 v13, p2

    .line 1652
    check-cast v13, Landroid/net/NetworkState;

    .line 1653
    .local v13, "ns":Landroid/net/NetworkState;
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->mNetworkMap:Ljava/util/HashMap;

    iget-object v1, v13, Landroid/net/NetworkState;->network:Landroid/net/Network;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1657
    const/4 v0, 0x0

    return-object v0

    .line 1660
    :cond_2
    const-string/jumbo v0, "Tethering"

    const-string/jumbo v1, "EVENT_ON_CAPABILITIES for %s: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 1661
    iget-object v3, v13, Landroid/net/NetworkState;->network:Landroid/net/Network;

    const/4 v5, 0x0

    aput-object v3, v2, v5

    iget-object v3, v13, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 1660
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1664
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->mNetworkMap:Ljava/util/HashMap;

    iget-object v1, v13, Landroid/net/NetworkState;->network:Landroid/net/Network;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/NetworkState;

    .line 1665
    .local v14, "prev":Landroid/net/NetworkState;
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->mNetworkMap:Ljava/util/HashMap;

    iget-object v1, v13, Landroid/net/NetworkState;->network:Landroid/net/Network;

    .line 1666
    new-instance v5, Landroid/net/NetworkState;

    iget-object v7, v14, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    iget-object v8, v13, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 1667
    iget-object v9, v13, Landroid/net/NetworkState;->network:Landroid/net/Network;

    .line 1666
    const/4 v6, 0x0

    .line 1667
    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 1666
    invoke-direct/range {v5 .. v11}, Landroid/net/NetworkState;-><init>(Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;Landroid/net/Network;Ljava/lang/String;Ljava/lang/String;)V

    .line 1665
    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1668
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->mNetworkMap:Ljava/util/HashMap;

    iget-object v1, v13, Landroid/net/NetworkState;->network:Landroid/net/Network;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkState;

    return-object v0

    .end local v13    # "ns":Landroid/net/NetworkState;
    .end local v14    # "prev":Landroid/net/NetworkState;
    :pswitch_2
    move-object/from16 v13, p2

    .line 1671
    check-cast v13, Landroid/net/NetworkState;

    .line 1672
    .restart local v13    # "ns":Landroid/net/NetworkState;
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->mNetworkMap:Ljava/util/HashMap;

    iget-object v1, v13, Landroid/net/NetworkState;->network:Landroid/net/Network;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1676
    const/4 v0, 0x0

    return-object v0

    .line 1679
    :cond_3
    const-string/jumbo v0, "Tethering"

    const-string/jumbo v1, "EVENT_ON_LINKPROPERTIES for %s: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 1680
    iget-object v3, v13, Landroid/net/NetworkState;->network:Landroid/net/Network;

    const/4 v5, 0x0

    aput-object v3, v2, v5

    iget-object v3, v13, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 1679
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1683
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->mNetworkMap:Ljava/util/HashMap;

    iget-object v1, v13, Landroid/net/NetworkState;->network:Landroid/net/Network;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/NetworkState;

    .line 1684
    .restart local v14    # "prev":Landroid/net/NetworkState;
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->mNetworkMap:Ljava/util/HashMap;

    iget-object v1, v13, Landroid/net/NetworkState;->network:Landroid/net/Network;

    .line 1685
    new-instance v5, Landroid/net/NetworkState;

    iget-object v7, v13, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    iget-object v8, v14, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 1686
    iget-object v9, v13, Landroid/net/NetworkState;->network:Landroid/net/Network;

    .line 1685
    const/4 v6, 0x0

    .line 1686
    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 1685
    invoke-direct/range {v5 .. v11}, Landroid/net/NetworkState;-><init>(Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;Landroid/net/Network;Ljava/lang/String;Ljava/lang/String;)V

    .line 1684
    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1687
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->mNetworkMap:Ljava/util/HashMap;

    iget-object v1, v13, Landroid/net/NetworkState;->network:Landroid/net/Network;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkState;

    return-object v0

    .end local v13    # "ns":Landroid/net/NetworkState;
    .end local v14    # "prev":Landroid/net/NetworkState;
    :pswitch_3
    move-object/from16 v4, p2

    .line 1690
    check-cast v4, Landroid/net/Network;

    .line 1692
    .restart local v4    # "network":Landroid/net/Network;
    const-string/jumbo v0, "Tethering"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "EVENT_ON_LOST for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1694
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkState;

    return-object v0

    .line 1618
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method start()V
    .locals 3

    .prologue
    .line 1584
    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->stop()V

    .line 1586
    new-instance v1, Lcom/android/server/connectivity/Tethering$UpstreamNetworkCallback;

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-direct {v1, v2}, Lcom/android/server/connectivity/Tethering$UpstreamNetworkCallback;-><init>(Lcom/android/server/connectivity/Tethering;)V

    iput-object v1, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 1587
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->-wrap0(Lcom/android/server/connectivity/Tethering;)Landroid/net/ConnectivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 1589
    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 1590
    const/4 v2, 0x0

    .line 1589
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    .line 1591
    const/16 v2, 0xd

    .line 1589
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    .line 1592
    const/4 v2, 0x2

    .line 1589
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    .line 1594
    .local v0, "dunTetheringRequest":Landroid/net/NetworkRequest;
    new-instance v1, Lcom/android/server/connectivity/Tethering$UpstreamNetworkCallback;

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-direct {v1, v2}, Lcom/android/server/connectivity/Tethering$UpstreamNetworkCallback;-><init>(Lcom/android/server/connectivity/Tethering;)V

    iput-object v1, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->mDunTetheringCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 1595
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->-wrap0(Lcom/android/server/connectivity/Tethering;)Landroid/net/ConnectivityManager;

    move-result-object v1

    .line 1596
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->mDunTetheringCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 1595
    invoke-virtual {v1, v0, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 1583
    return-void
.end method

.method stop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1600
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v0, :cond_0

    .line 1601
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->-wrap0(Lcom/android/server/connectivity/Tethering;)Landroid/net/ConnectivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 1602
    iput-object v2, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 1605
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->mDunTetheringCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v0, :cond_1

    .line 1606
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->-wrap0(Lcom/android/server/connectivity/Tethering;)Landroid/net/ConnectivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->mDunTetheringCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 1607
    iput-object v2, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->mDunTetheringCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 1610
    :cond_1
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1599
    return-void
.end method
