.class Lcom/android/server/connectivity/Tethering$DnsmasqThread;
.super Ljava/lang/Thread;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DnsmasqThread"
.end annotation


# instance fields
.field private mDevice:Landroid/net/wifi/WifiDevice;

.field private mInterval:I

.field private mMaxTimes:I

.field private final mTethering:Lcom/android/server/connectivity/Tethering;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/Tethering;Landroid/net/wifi/WifiDevice;II)V
    .locals 1
    .param p1, "tethering"    # Lcom/android/server/connectivity/Tethering;
    .param p2, "device"    # Landroid/net/wifi/WifiDevice;
    .param p3, "interval"    # I
    .param p4, "maxTimes"    # I

    .prologue
    .line 903
    const-string/jumbo v0, "Tethering"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 904
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$DnsmasqThread;->mTethering:Lcom/android/server/connectivity/Tethering;

    .line 905
    iput p3, p0, Lcom/android/server/connectivity/Tethering$DnsmasqThread;->mInterval:I

    .line 906
    iput p4, p0, Lcom/android/server/connectivity/Tethering$DnsmasqThread;->mMaxTimes:I

    .line 907
    iput-object p2, p0, Lcom/android/server/connectivity/Tethering$DnsmasqThread;->mDevice:Landroid/net/wifi/WifiDevice;

    .line 902
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 911
    const/4 v2, 0x0

    .line 914
    :goto_0
    :try_start_0
    iget v3, p0, Lcom/android/server/connectivity/Tethering$DnsmasqThread;->mMaxTimes:I

    if-lez v3, :cond_0

    .line 915
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$DnsmasqThread;->mTethering:Lcom/android/server/connectivity/Tethering;

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$DnsmasqThread;->mDevice:Landroid/net/wifi/WifiDevice;

    invoke-static {v3, v4}, Lcom/android/server/connectivity/Tethering;->-wrap2(Lcom/android/server/connectivity/Tethering;Landroid/net/wifi/WifiDevice;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 916
    .local v2, "result":Z
    if-eqz v2, :cond_4

    .line 929
    .end local v2    # "result":Z
    :cond_0
    :goto_1
    if-nez v2, :cond_1

    .line 938
    :cond_1
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$DnsmasqThread;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-static {v3}, Lcom/android/server/connectivity/Tethering;->-get6(Lcom/android/server/connectivity/Tethering;)Ljava/util/HashMap;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$DnsmasqThread;->mDevice:Landroid/net/wifi/WifiDevice;

    iget-object v4, v4, Landroid/net/wifi/WifiDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiDevice;

    .line 939
    .local v1, "other":Landroid/net/wifi/WifiDevice;
    if-eqz v1, :cond_3

    iget v3, v1, Landroid/net/wifi/WifiDevice;->deviceState:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 940
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$DnsmasqThread;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-static {v3}, Lcom/android/server/connectivity/Tethering;->-get1(Lcom/android/server/connectivity/Tethering;)Ljava/util/HashMap;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$DnsmasqThread;->mDevice:Landroid/net/wifi/WifiDevice;

    iget-object v4, v4, Landroid/net/wifi/WifiDevice;->deviceAddress:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$DnsmasqThread;->mDevice:Landroid/net/wifi/WifiDevice;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 942
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->-get11()Ljava/util/HashMap;

    move-result-object v4

    monitor-enter v4

    .line 943
    :try_start_1
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->-get11()Ljava/util/HashMap;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$DnsmasqThread;->mDevice:Landroid/net/wifi/WifiDevice;

    iget-object v5, v5, Landroid/net/wifi/WifiDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 944
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->-get11()Ljava/util/HashMap;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$DnsmasqThread;->mDevice:Landroid/net/wifi/WifiDevice;

    iget-object v5, v5, Landroid/net/wifi/WifiDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 946
    :cond_2
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->-get11()Ljava/util/HashMap;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$DnsmasqThread;->mDevice:Landroid/net/wifi/WifiDevice;

    iget-object v5, v5, Landroid/net/wifi/WifiDevice;->deviceAddress:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/connectivity/Tethering$DnsmasqThread;->mDevice:Landroid/net/wifi/WifiDevice;

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    .line 949
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$DnsmasqThread;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-static {v3}, Lcom/android/server/connectivity/Tethering;->-wrap9(Lcom/android/server/connectivity/Tethering;)V

    .line 910
    :cond_3
    return-void

    .line 921
    .end local v1    # "other":Landroid/net/wifi/WifiDevice;
    .restart local v2    # "result":Z
    :cond_4
    :try_start_2
    iget v3, p0, Lcom/android/server/connectivity/Tethering$DnsmasqThread;->mMaxTimes:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/android/server/connectivity/Tethering$DnsmasqThread;->mMaxTimes:I

    .line 922
    iget v3, p0, Lcom/android/server/connectivity/Tethering$DnsmasqThread;->mInterval:I

    int-to-long v4, v3

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 924
    .end local v2    # "result":Z
    :catch_0
    move-exception v0

    .line 925
    .local v0, "ex":Ljava/lang/Exception;
    const/4 v2, 0x0

    .line 926
    .local v2, "result":Z
    const-string/jumbo v3, "Tethering"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Pulling "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$DnsmasqThread;->mDevice:Landroid/net/wifi/WifiDevice;

    iget-object v5, v5, Landroid/net/wifi/WifiDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "error"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 942
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v2    # "result":Z
    .restart local v1    # "other":Landroid/net/wifi/WifiDevice;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method
