.class public Lcom/android/settings_exlib/wifi/WifiStatusTracker;
.super Ljava/lang/Object;
.source "WifiStatusTracker.java"


# instance fields
.field public connected:Z

.field public enabled:Z

.field public level:I

.field private final mWifiManager:Landroid/net/wifi/WifiManager;

.field public rssi:I

.field public ssid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiManager;)V
    .locals 0
    .param p1, "wifiManager"    # Landroid/net/wifi/WifiManager;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/android/settings_exlib/wifi/WifiStatusTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 30
    return-void
.end method

.method private getSsid(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;
    .locals 7
    .param p1, "info"    # Landroid/net/wifi/WifiInfo;

    .prologue
    const/4 v6, 0x0

    .line 65
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    .line 66
    .local v3, "ssid":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 67
    return-object v3

    .line 70
    :cond_0
    iget-object v4, p0, Lcom/android/settings_exlib/wifi/WifiStatusTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    .line 71
    .local v2, "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 72
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 73
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    iget v4, v4, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 74
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    return-object v4

    .line 72
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 77
    :cond_2
    return-object v6
.end method


# virtual methods
.method public handleBroadcast(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 35
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v4, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 37
    const-string/jumbo v4, "wifi_state"

    .line 38
    const/4 v5, 0x4

    .line 37
    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 38
    const/4 v5, 0x3

    .line 37
    if-ne v4, v5, :cond_0

    const/4 v3, 0x1

    :cond_0
    iput-boolean v3, p0, Lcom/android/settings_exlib/wifi/WifiStatusTracker;->enabled:Z

    .line 34
    :cond_1
    :goto_0
    return-void

    .line 39
    :cond_2
    const-string/jumbo v4, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 41
    const-string/jumbo v4, "networkInfo"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    .line 42
    .local v2, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    :cond_3
    iput-boolean v3, p0, Lcom/android/settings_exlib/wifi/WifiStatusTracker;->connected:Z

    .line 44
    iget-boolean v3, p0, Lcom/android/settings_exlib/wifi/WifiStatusTracker;->connected:Z

    if-eqz v3, :cond_6

    .line 46
    const-string/jumbo v3, "wifiInfo"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 47
    const-string/jumbo v3, "wifiInfo"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiInfo;

    move-object v1, v3

    .line 49
    .local v1, "info":Landroid/net/wifi/WifiInfo;
    :goto_1
    if-eqz v1, :cond_5

    .line 50
    invoke-direct {p0, v1}, Lcom/android/settings_exlib/wifi/WifiStatusTracker;->getSsid(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_exlib/wifi/WifiStatusTracker;->ssid:Ljava/lang/String;

    goto :goto_0

    .line 48
    .end local v1    # "info":Landroid/net/wifi/WifiInfo;
    :cond_4
    iget-object v3, p0, Lcom/android/settings_exlib/wifi/WifiStatusTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    goto :goto_1

    .line 52
    .restart local v1    # "info":Landroid/net/wifi/WifiInfo;
    :cond_5
    iput-object v5, p0, Lcom/android/settings_exlib/wifi/WifiStatusTracker;->ssid:Ljava/lang/String;

    goto :goto_0

    .line 54
    .end local v1    # "info":Landroid/net/wifi/WifiInfo;
    :cond_6
    iget-boolean v3, p0, Lcom/android/settings_exlib/wifi/WifiStatusTracker;->connected:Z

    if-nez v3, :cond_1

    .line 55
    iput-object v5, p0, Lcom/android/settings_exlib/wifi/WifiStatusTracker;->ssid:Ljava/lang/String;

    goto :goto_0

    .line 57
    .end local v2    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_7
    const-string/jumbo v3, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 59
    const-string/jumbo v3, "newRssi"

    const/16 v4, -0xc8

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings_exlib/wifi/WifiStatusTracker;->rssi:I

    .line 60
    iget v3, p0, Lcom/android/settings_exlib/wifi/WifiStatusTracker;->rssi:I

    const/4 v4, 0x5

    invoke-static {v3, v4}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v3

    iput v3, p0, Lcom/android/settings_exlib/wifi/WifiStatusTracker;->level:I

    goto :goto_0
.end method
