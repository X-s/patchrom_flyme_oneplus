.class Lcom/android/settings_ex/wifi/WifiSettings$SummaryProvider;
.super Landroid/content/BroadcastReceiver;
.source "WifiSettings.java"

# interfaces
.implements Lcom/android/settings_ex/dashboard/SummaryLoader$SummaryProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/wifi/WifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SummaryProvider"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mSummaryLoader:Lcom/android/settings_ex/dashboard/SummaryLoader;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;

.field private final mWifiTracker:Lcom/android/settings_exlib/wifi/WifiStatusTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings_ex/dashboard/SummaryLoader;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "summaryLoader"    # Lcom/android/settings_ex/dashboard/SummaryLoader;

    .prologue
    .line 1182
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1183
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiSettings$SummaryProvider;->mContext:Landroid/content/Context;

    .line 1184
    iput-object p2, p0, Lcom/android/settings_ex/wifi/WifiSettings$SummaryProvider;->mSummaryLoader:Lcom/android/settings_ex/dashboard/SummaryLoader;

    .line 1185
    const-class v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings$SummaryProvider;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 1186
    new-instance v0, Lcom/android/settings_exlib/wifi/WifiStatusTracker;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings$SummaryProvider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-direct {v0, v1}, Lcom/android/settings_exlib/wifi/WifiStatusTracker;-><init>(Landroid/net/wifi/WifiManager;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings$SummaryProvider;->mWifiTracker:Lcom/android/settings_exlib/wifi/WifiStatusTracker;

    .line 1182
    return-void
.end method

.method private getSummary()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 1190
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings$SummaryProvider;->mWifiTracker:Lcom/android/settings_exlib/wifi/WifiStatusTracker;

    iget-boolean v0, v0, Lcom/android/settings_exlib/wifi/WifiStatusTracker;->enabled:Z

    if-nez v0, :cond_0

    .line 1191
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings$SummaryProvider;->mContext:Landroid/content/Context;

    const v1, 0x7f0e002b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1193
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings$SummaryProvider;->mWifiTracker:Lcom/android/settings_exlib/wifi/WifiStatusTracker;

    iget-boolean v0, v0, Lcom/android/settings_exlib/wifi/WifiStatusTracker;->connected:Z

    if-nez v0, :cond_1

    .line 1194
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings$SummaryProvider;->mContext:Landroid/content/Context;

    const v1, 0x7f0e0fad

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1196
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings$SummaryProvider;->mWifiTracker:Lcom/android/settings_exlib/wifi/WifiStatusTracker;

    iget-object v0, v0, Lcom/android/settings_exlib/wifi/WifiStatusTracker;->ssid:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1212
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings$SummaryProvider;->mWifiTracker:Lcom/android/settings_exlib/wifi/WifiStatusTracker;

    invoke-virtual {v0, p2}, Lcom/android/settings_exlib/wifi/WifiStatusTracker;->handleBroadcast(Landroid/content/Intent;)V

    .line 1213
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings$SummaryProvider;->mSummaryLoader:Lcom/android/settings_ex/dashboard/SummaryLoader;

    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettings$SummaryProvider;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/settings_ex/dashboard/SummaryLoader;->setSummary(Lcom/android/settings_ex/dashboard/SummaryLoader$SummaryProvider;Ljava/lang/CharSequence;)V

    .line 1211
    return-void
.end method

.method public setListening(Z)V
    .locals 2
    .param p1, "listening"    # Z

    .prologue
    .line 1201
    if-eqz p1, :cond_0

    .line 1202
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1203
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1204
    const-string/jumbo v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1205
    const-string/jumbo v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1206
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings$SummaryProvider;->mSummaryLoader:Lcom/android/settings_ex/dashboard/SummaryLoader;

    invoke-virtual {v1, p0, v0}, Lcom/android/settings_ex/dashboard/SummaryLoader;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 1200
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method
