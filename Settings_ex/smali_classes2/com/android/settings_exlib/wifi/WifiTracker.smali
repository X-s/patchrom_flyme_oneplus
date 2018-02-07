.class public Lcom/android/settings_exlib/wifi/WifiTracker;
.super Ljava/lang/Object;
.source "WifiTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_exlib/wifi/WifiTracker$1;,
        Lcom/android/settings_exlib/wifi/WifiTracker$MainHandler;,
        Lcom/android/settings_exlib/wifi/WifiTracker$Multimap;,
        Lcom/android/settings_exlib/wifi/WifiTracker$Scanner;,
        Lcom/android/settings_exlib/wifi/WifiTracker$WifiListener;,
        Lcom/android/settings_exlib/wifi/WifiTracker$WifiTrackerNetworkCallback;,
        Lcom/android/settings_exlib/wifi/WifiTracker$WorkHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final NUM_SCANS_TO_CONFIRM_AP_LOSS:I = 0x3

.field private static final TAG:Ljava/lang/String; = "WifiTracker"

.field private static final WIFI_RESCAN_INTERVAL_MS:I = 0x2710

.field public static sVerboseLogging:I


# instance fields
.field private mAccessPoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_exlib/wifi/AccessPoint;",
            ">;"
        }
    .end annotation
.end field

.field private final mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private final mFilter:Landroid/content/IntentFilter;

.field private final mIncludePasspoints:Z

.field private final mIncludeSaved:Z

.field private final mIncludeScans:Z

.field private mLastInfo:Landroid/net/wifi/WifiInfo;

.field private mLastNetworkInfo:Landroid/net/NetworkInfo;

.field private final mListener:Lcom/android/settings_exlib/wifi/WifiTracker$WifiListener;

.field private final mMainHandler:Lcom/android/settings_exlib/wifi/WifiTracker$MainHandler;

.field private mNetworkCallback:Lcom/android/settings_exlib/wifi/WifiTracker$WifiTrackerNetworkCallback;

.field private final mNetworkRequest:Landroid/net/NetworkRequest;

.field final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRegistered:Z

.field private mSavedNetworksExist:Z

.field private mScanId:Ljava/lang/Integer;

.field private mScanResultCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field mScanner:Lcom/android/settings_exlib/wifi/WifiTracker$Scanner;

.field private mSeenBssids:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mWifiManager:Landroid/net/wifi/WifiManager;

.field private final mWorkHandler:Lcom/android/settings_exlib/wifi/WifiTracker$WorkHandler;


# direct methods
.method static synthetic -get0(Lcom/android/settings_exlib/wifi/WifiTracker;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings_exlib/wifi/WifiTracker;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings_exlib/wifi/WifiTracker;)Lcom/android/settings_exlib/wifi/WifiTracker$WifiListener;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mListener:Lcom/android/settings_exlib/wifi/WifiTracker$WifiListener;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings_exlib/wifi/WifiTracker;)Lcom/android/settings_exlib/wifi/WifiTracker$MainHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mMainHandler:Lcom/android/settings_exlib/wifi/WifiTracker$MainHandler;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/settings_exlib/wifi/WifiTracker;)Landroid/net/wifi/WifiManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/settings_exlib/wifi/WifiTracker;)Lcom/android/settings_exlib/wifi/WifiTracker$WorkHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mWorkHandler:Lcom/android/settings_exlib/wifi/WifiTracker$WorkHandler;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settings_exlib/wifi/WifiTracker;Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiInfo;
    .locals 0

    iput-object p1, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/settings_exlib/wifi/WifiTracker;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;
    .locals 0

    iput-object p1, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mLastNetworkInfo:Landroid/net/NetworkInfo;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/settings_exlib/wifi/WifiTracker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_exlib/wifi/WifiTracker;->handleResume()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings_exlib/wifi/WifiTracker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_exlib/wifi/WifiTracker;->updateAccessPoints()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/settings_exlib/wifi/WifiTracker;Landroid/net/NetworkInfo;)V
    .locals 0
    .param p1, "networkInfo"    # Landroid/net/NetworkInfo;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_exlib/wifi/WifiTracker;->updateNetworkInfo(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/settings_exlib/wifi/WifiTracker;I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_exlib/wifi/WifiTracker;->updateWifiState(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    sput v0, Lcom/android/settings_exlib/wifi/WifiTracker;->sVerboseLogging:I

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings_exlib/wifi/WifiTracker$WifiListener;Landroid/os/Looper;ZZ)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wifiListener"    # Lcom/android/settings_exlib/wifi/WifiTracker$WifiListener;
    .param p3, "workerLooper"    # Landroid/os/Looper;
    .param p4, "includeSaved"    # Z
    .param p5, "includeScans"    # Z

    .prologue
    .line 105
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/settings_exlib/wifi/WifiTracker;-><init>(Landroid/content/Context;Lcom/android/settings_exlib/wifi/WifiTracker$WifiListener;Landroid/os/Looper;ZZZ)V

    .line 104
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings_exlib/wifi/WifiTracker$WifiListener;Landroid/os/Looper;ZZZ)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wifiListener"    # Lcom/android/settings_exlib/wifi/WifiTracker$WifiListener;
    .param p3, "workerLooper"    # Landroid/os/Looper;
    .param p4, "includeSaved"    # Z
    .param p5, "includeScans"    # Z
    .param p6, "includePasspoints"    # Z

    .prologue
    .line 116
    const-class v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiManager;

    .line 117
    const-class v0, Landroid/net/ConnectivityManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/ConnectivityManager;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    .line 115
    invoke-direct/range {v0 .. v9}, Lcom/android/settings_exlib/wifi/WifiTracker;-><init>(Landroid/content/Context;Lcom/android/settings_exlib/wifi/WifiTracker$WifiListener;Landroid/os/Looper;ZZZLandroid/net/wifi/WifiManager;Landroid/net/ConnectivityManager;Landroid/os/Looper;)V

    .line 114
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settings_exlib/wifi/WifiTracker$WifiListener;Landroid/os/Looper;ZZZLandroid/net/wifi/WifiManager;Landroid/net/ConnectivityManager;Landroid/os/Looper;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wifiListener"    # Lcom/android/settings_exlib/wifi/WifiTracker$WifiListener;
    .param p3, "workerLooper"    # Landroid/os/Looper;
    .param p4, "includeSaved"    # Z
    .param p5, "includeScans"    # Z
    .param p6, "includePasspoints"    # Z
    .param p7, "wifiManager"    # Landroid/net/wifi/WifiManager;
    .param p8, "connectivityManager"    # Landroid/net/ConnectivityManager;
    .param p9, "currentLooper"    # Landroid/os/Looper;

    .prologue
    const/4 v1, 0x0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mAccessPoints:Ljava/util/ArrayList;

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mSeenBssids:Ljava/util/HashMap;

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mScanResultCache:Ljava/util/HashMap;

    .line 89
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mScanId:Ljava/lang/Integer;

    .line 544
    new-instance v0, Lcom/android/settings_exlib/wifi/WifiTracker$1;

    invoke-direct {v0, p0}, Lcom/android/settings_exlib/wifi/WifiTracker$1;-><init>(Lcom/android/settings_exlib/wifi/WifiTracker;)V

    iput-object v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 125
    if-nez p4, :cond_0

    if-eqz p5, :cond_2

    .line 128
    :cond_0
    iput-object p1, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mContext:Landroid/content/Context;

    .line 129
    if-nez p9, :cond_1

    .line 131
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p9

    .line 133
    :cond_1
    new-instance v0, Lcom/android/settings_exlib/wifi/WifiTracker$MainHandler;

    invoke-direct {v0, p0, p9}, Lcom/android/settings_exlib/wifi/WifiTracker$MainHandler;-><init>(Lcom/android/settings_exlib/wifi/WifiTracker;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mMainHandler:Lcom/android/settings_exlib/wifi/WifiTracker$MainHandler;

    .line 134
    new-instance v0, Lcom/android/settings_exlib/wifi/WifiTracker$WorkHandler;

    .line 135
    if-eqz p3, :cond_3

    .line 134
    .end local p3    # "workerLooper":Landroid/os/Looper;
    :goto_0
    invoke-direct {v0, p0, p3}, Lcom/android/settings_exlib/wifi/WifiTracker$WorkHandler;-><init>(Lcom/android/settings_exlib/wifi/WifiTracker;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mWorkHandler:Lcom/android/settings_exlib/wifi/WifiTracker$WorkHandler;

    .line 136
    iput-object p7, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 137
    iput-boolean p4, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mIncludeSaved:Z

    .line 138
    iput-boolean p5, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mIncludeScans:Z

    .line 139
    iput-boolean p6, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mIncludePasspoints:Z

    .line 140
    iput-object p2, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mListener:Lcom/android/settings_exlib/wifi/WifiTracker$WifiListener;

    .line 141
    iput-object p8, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 144
    iget-object v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getVerboseLoggingLevel()I

    move-result v0

    sput v0, Lcom/android/settings_exlib/wifi/WifiTracker;->sVerboseLogging:I

    .line 146
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mFilter:Landroid/content/IntentFilter;

    .line 147
    iget-object v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.NETWORK_IDS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "Auth_password_wrong"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 156
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->clearCapabilities()Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 158
    const/4 v1, 0x1

    .line 156
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mNetworkRequest:Landroid/net/NetworkRequest;

    .line 124
    return-void

    .line 126
    .restart local p3    # "workerLooper":Landroid/os/Looper;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Must include either saved or scans"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move-object p3, p9

    .line 135
    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings_exlib/wifi/WifiTracker$WifiListener;ZZ)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wifiListener"    # Lcom/android/settings_exlib/wifi/WifiTracker$WifiListener;
    .param p3, "includeSaved"    # Z
    .param p4, "includeScans"    # Z

    .prologue
    .line 100
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_exlib/wifi/WifiTracker;-><init>(Landroid/content/Context;Lcom/android/settings_exlib/wifi/WifiTracker$WifiListener;Landroid/os/Looper;ZZ)V

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings_exlib/wifi/WifiTracker$WifiListener;ZZZ)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wifiListener"    # Lcom/android/settings_exlib/wifi/WifiTracker$WifiListener;
    .param p3, "includeSaved"    # Z
    .param p4, "includeScans"    # Z
    .param p5, "includePasspoints"    # Z

    .prologue
    .line 110
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/settings_exlib/wifi/WifiTracker;-><init>(Landroid/content/Context;Lcom/android/settings_exlib/wifi/WifiTracker$WifiListener;Landroid/os/Looper;ZZZ)V

    .line 109
    return-void
.end method

.method private fetchScanResults()Ljava/util/Collection;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 290
    iget-object v7, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mScanId:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mScanId:Ljava/lang/Integer;

    .line 291
    iget-object v7, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v4

    .line 292
    .local v4, "newResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "newResult$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    .line 293
    .local v2, "newResult":Landroid/net/wifi/ScanResult;
    iget-object v7, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v7, :cond_0

    iget-object v7, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 296
    iget-object v7, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mScanResultCache:Ljava/util/HashMap;

    iget-object v8, v2, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v7, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    iget-object v7, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mSeenBssids:Ljava/util/HashMap;

    iget-object v8, v2, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mScanId:Ljava/lang/Integer;

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 300
    .end local v2    # "newResult":Landroid/net/wifi/ScanResult;
    :cond_1
    iget-object v7, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mScanId:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x3

    if-le v7, v8, :cond_3

    .line 302
    iget-object v7, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mScanId:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/lit8 v7, v7, -0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 303
    .local v6, "threshold":Ljava/lang/Integer;
    iget-object v7, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mSeenBssids:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 304
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    .line 303
    if-eqz v7, :cond_3

    .line 305
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 306
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ge v7, v8, :cond_2

    .line 307
    iget-object v7, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mScanResultCache:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/ScanResult;

    .line 309
    .local v5, "result":Landroid/net/wifi/ScanResult;
    iget-object v7, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mScanResultCache:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 316
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    .end local v5    # "result":Landroid/net/wifi/ScanResult;
    .end local v6    # "threshold":Ljava/lang/Integer;
    :cond_3
    iget-object v7, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mScanResultCache:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    return-object v7
.end method

.method private getCachedOrCreate(Landroid/net/wifi/ScanResult;Ljava/util/List;)Lcom/android/settings_exlib/wifi/AccessPoint;
    .locals 5
    .param p1, "result"    # Landroid/net/wifi/ScanResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/ScanResult;",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_exlib/wifi/AccessPoint;",
            ">;)",
            "Lcom/android/settings_exlib/wifi/AccessPoint;"
        }
    .end annotation

    .prologue
    .line 470
    .local p2, "cache":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_exlib/wifi/AccessPoint;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 471
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 472
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-virtual {v3, p1}, Lcom/android/settings_exlib/wifi/AccessPoint;->matches(Landroid/net/wifi/ScanResult;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 473
    invoke-interface {p2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_exlib/wifi/AccessPoint;

    .line 474
    .local v2, "ret":Lcom/android/settings_exlib/wifi/AccessPoint;
    invoke-virtual {v2, p1}, Lcom/android/settings_exlib/wifi/AccessPoint;->update(Landroid/net/wifi/ScanResult;)Z

    .line 475
    return-object v2

    .line 471
    .end local v2    # "ret":Lcom/android/settings_exlib/wifi/AccessPoint;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 478
    :cond_1
    new-instance v3, Lcom/android/settings_exlib/wifi/AccessPoint;

    iget-object v4, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, p1}, Lcom/android/settings_exlib/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/ScanResult;)V

    return-object v3
.end method

.method private getCachedOrCreate(Landroid/net/wifi/WifiConfiguration;Ljava/util/List;)Lcom/android/settings_exlib/wifi/AccessPoint;
    .locals 5
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/WifiConfiguration;",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_exlib/wifi/AccessPoint;",
            ">;)",
            "Lcom/android/settings_exlib/wifi/AccessPoint;"
        }
    .end annotation

    .prologue
    .line 482
    .local p2, "cache":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_exlib/wifi/AccessPoint;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 483
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 484
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-virtual {v3, p1}, Lcom/android/settings_exlib/wifi/AccessPoint;->matches(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 485
    invoke-interface {p2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_exlib/wifi/AccessPoint;

    .line 486
    .local v2, "ret":Lcom/android/settings_exlib/wifi/AccessPoint;
    invoke-virtual {v2, p1}, Lcom/android/settings_exlib/wifi/AccessPoint;->loadConfig(Landroid/net/wifi/WifiConfiguration;)V

    .line 487
    return-object v2

    .line 483
    .end local v2    # "ret":Lcom/android/settings_exlib/wifi/AccessPoint;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 490
    :cond_1
    new-instance v3, Lcom/android/settings_exlib/wifi/AccessPoint;

    iget-object v4, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, p1}, Lcom/android/settings_exlib/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V

    return-object v3
.end method

.method public static getCurrentAccessPoints(Landroid/content/Context;ZZZ)Ljava/util/List;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "includeSaved"    # Z
    .param p2, "includeScans"    # Z
    .param p3, "includePasspoints"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "ZZZ)",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_exlib/wifi/AccessPoint;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 537
    new-instance v0, Lcom/android/settings_exlib/wifi/WifiTracker;

    move-object v1, p0

    move-object v3, v2

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/settings_exlib/wifi/WifiTracker;-><init>(Landroid/content/Context;Lcom/android/settings_exlib/wifi/WifiTracker$WifiListener;Landroid/os/Looper;ZZZ)V

    .line 539
    .local v0, "tracker":Lcom/android/settings_exlib/wifi/WifiTracker;
    invoke-virtual {v0}, Lcom/android/settings_exlib/wifi/WifiTracker;->forceUpdate()V

    .line 540
    invoke-virtual {v0}, Lcom/android/settings_exlib/wifi/WifiTracker;->getAccessPoints()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private getWifiConfigurationForNetworkId(I)Landroid/net/wifi/WifiConfiguration;
    .locals 5
    .param p1, "networkId"    # I

    .prologue
    const/4 v4, 0x0

    .line 320
    iget-object v3, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    .line 321
    .local v2, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v2, :cond_2

    .line 322
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "config$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 323
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v3, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v3, :cond_0

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne p1, v3, :cond_0

    .line 324
    iget-boolean v3, v0, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    if-eqz v3, :cond_1

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    if-eqz v3, :cond_0

    .line 325
    :cond_1
    return-object v0

    .line 329
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v1    # "config$iterator":Ljava/util/Iterator;
    :cond_2
    return-object v4
.end method

.method private handleResume()V
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mScanResultCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 285
    iget-object v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mSeenBssids:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 286
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mScanId:Ljava/lang/Integer;

    .line 283
    return-void
.end method

.method private isScanAlwaysAvailable()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 163
    iget-object v2, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 164
    const-string/jumbo v3, "wifi_scan_always_enabled"

    .line 163
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private updateAccessPoints()V
    .locals 24

    .prologue
    .line 334
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_exlib/wifi/WifiTracker;->getAccessPoints()Ljava/util/List;

    move-result-object v7

    .line 335
    .local v7, "cachedAccessPoints":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_exlib/wifi/AccessPoint;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 338
    .local v4, "accessPoints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_exlib/wifi/AccessPoint;>;"
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "accessPoint$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_exlib/wifi/AccessPoint;

    .line 339
    .local v2, "accessPoint":Lcom/android/settings_exlib/wifi/AccessPoint;
    invoke-virtual {v2}, Lcom/android/settings_exlib/wifi/AccessPoint;->clearConfig()V

    goto :goto_0

    .line 344
    .end local v2    # "accessPoint":Lcom/android/settings_exlib/wifi/AccessPoint;
    :cond_0
    new-instance v6, Lcom/android/settings_exlib/wifi/WifiTracker$Multimap;

    const/16 v22, 0x0

    move-object/from16 v0, v22

    invoke-direct {v6, v0}, Lcom/android/settings_exlib/wifi/WifiTracker$Multimap;-><init>(Lcom/android/settings_exlib/wifi/WifiTracker$Multimap;)V

    .line 345
    .local v6, "apMap":Lcom/android/settings_exlib/wifi/WifiTracker$Multimap;, "Lcom/android/settings_exlib/wifi/WifiTracker$Multimap<Ljava/lang/String;Lcom/android/settings_exlib/wifi/AccessPoint;>;"
    const/4 v11, 0x0

    .line 346
    .local v11, "connectionConfig":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v22, v0

    if-eqz v22, :cond_1

    .line 347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/settings_exlib/wifi/WifiTracker;->getWifiConfigurationForNetworkId(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v11

    .line 350
    .end local v11    # "connectionConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_exlib/wifi/WifiTracker;->fetchScanResults()Ljava/util/Collection;

    move-result-object v21

    .line 354
    .local v21, "results":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/wifi/ScanResult;>;"
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v10

    .line 355
    .local v10, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v10, :cond_a

    .line 356
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v22

    if-eqz v22, :cond_11

    const/16 v22, 0x1

    :goto_1
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings_exlib/wifi/WifiTracker;->mSavedNetworksExist:Z

    .line 357
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "config$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/WifiConfiguration;

    .line 358
    .local v8, "config":Landroid/net/wifi/WifiConfiguration;
    iget-boolean v0, v8, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    move/from16 v22, v0

    if-eqz v22, :cond_3

    iget v0, v8, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    move/from16 v22, v0

    if-eqz v22, :cond_2

    .line 361
    :cond_3
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v7}, Lcom/android/settings_exlib/wifi/WifiTracker;->getCachedOrCreate(Landroid/net/wifi/WifiConfiguration;Ljava/util/List;)Lcom/android/settings_exlib/wifi/AccessPoint;

    move-result-object v2

    .line 363
    .restart local v2    # "accessPoint":Lcom/android/settings_exlib/wifi/AccessPoint;
    const/16 v22, 0x0

    move/from16 v0, v22

    iput-boolean v0, v2, Lcom/android/settings_exlib/wifi/AccessPoint;->foundInScanResult:Z

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v22, v0

    if-eqz v22, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/wifi/WifiTracker;->mLastNetworkInfo:Landroid/net/NetworkInfo;

    move-object/from16 v22, v0

    if-eqz v22, :cond_4

    .line 366
    invoke-virtual {v8}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v22

    if-nez v22, :cond_4

    .line 367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/wifi/WifiTracker;->mLastNetworkInfo:Landroid/net/NetworkInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v2, v11, v0, v1}, Lcom/android/settings_exlib/wifi/AccessPoint;->update(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)Z

    .line 370
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_exlib/wifi/WifiTracker;->mIncludeSaved:Z

    move/from16 v22, v0

    if-eqz v22, :cond_12

    .line 371
    invoke-virtual {v8}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v22

    if-eqz v22, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_exlib/wifi/WifiTracker;->mIncludePasspoints:Z

    move/from16 v22, v0

    if-eqz v22, :cond_9

    .line 373
    :cond_5
    const/4 v5, 0x0

    .line 374
    .local v5, "apFound":Z
    invoke-interface/range {v21 .. v21}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, "result$iterator":Ljava/util/Iterator;
    :cond_6
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_7

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/net/wifi/ScanResult;

    .line 375
    .local v19, "result":Landroid/net/wifi/ScanResult;
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual {v2}, Lcom/android/settings_exlib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_6

    .line 376
    const/4 v5, 0x1

    .line 380
    .end local v19    # "result":Landroid/net/wifi/ScanResult;
    :cond_7
    if-nez v5, :cond_8

    .line 381
    const v22, 0x7fffffff

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Lcom/android/settings_exlib/wifi/AccessPoint;->setRssi(I)V

    .line 383
    :cond_8
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    .end local v5    # "apFound":Z
    .end local v20    # "result$iterator":Ljava/util/Iterator;
    :cond_9
    invoke-virtual {v8}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v22

    if-nez v22, :cond_2

    .line 387
    invoke-virtual {v2}, Lcom/android/settings_exlib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v6, v0, v2}, Lcom/android/settings_exlib/wifi/WifiTracker$Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 396
    .end local v2    # "accessPoint":Lcom/android/settings_exlib/wifi/AccessPoint;
    .end local v8    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v9    # "config$iterator":Ljava/util/Iterator;
    .end local v10    # "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :catch_0
    move-exception v12

    .line 400
    :cond_a
    if-eqz v21, :cond_13

    .line 401
    invoke-interface/range {v21 .. v21}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .restart local v20    # "result$iterator":Ljava/util/Iterator;
    :cond_b
    :goto_3
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_13

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/net/wifi/ScanResult;

    .line 403
    .restart local v19    # "result":Landroid/net/wifi/ScanResult;
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_b

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    if-eqz v22, :cond_b

    .line 404
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    move-object/from16 v22, v0

    const-string/jumbo v23, "[IBSS]"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    .line 403
    if-nez v22, :cond_b

    .line 408
    const/4 v13, 0x0

    .line 409
    .local v13, "found":Z
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Lcom/android/settings_exlib/wifi/WifiTracker$Multimap;->getAll(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_exlib/wifi/AccessPoint;

    .line 410
    .restart local v2    # "accessPoint":Lcom/android/settings_exlib/wifi/AccessPoint;
    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/android/settings_exlib/wifi/AccessPoint;->update(Landroid/net/wifi/ScanResult;)Z

    move-result v22

    if-eqz v22, :cond_c

    .line 412
    const/16 v22, 0x1

    move/from16 v0, v22

    iput-boolean v0, v2, Lcom/android/settings_exlib/wifi/AccessPoint;->foundInScanResult:Z

    .line 414
    const/4 v13, 0x1

    .line 418
    .end local v2    # "accessPoint":Lcom/android/settings_exlib/wifi/AccessPoint;
    :cond_d
    if-nez v13, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_exlib/wifi/WifiTracker;->mIncludeScans:Z

    move/from16 v22, v0

    if-eqz v22, :cond_b

    .line 419
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v7}, Lcom/android/settings_exlib/wifi/WifiTracker;->getCachedOrCreate(Landroid/net/wifi/ScanResult;Ljava/util/List;)Lcom/android/settings_exlib/wifi/AccessPoint;

    move-result-object v2

    .line 420
    .restart local v2    # "accessPoint":Lcom/android/settings_exlib/wifi/AccessPoint;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v22, v0

    if-eqz v22, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/wifi/WifiTracker;->mLastNetworkInfo:Landroid/net/NetworkInfo;

    move-object/from16 v22, v0

    if-eqz v22, :cond_e

    .line 421
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/wifi/WifiTracker;->mLastNetworkInfo:Landroid/net/NetworkInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v2, v11, v0, v1}, Lcom/android/settings_exlib/wifi/AccessPoint;->update(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)Z

    .line 424
    :cond_e
    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/ScanResult;->isPasspointNetwork()Z

    move-result v22

    if-eqz v22, :cond_f

    .line 425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->getMatchingWifiConfig(Landroid/net/wifi/ScanResult;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v8

    .line 426
    .restart local v8    # "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v8, :cond_f

    iget-object v0, v8, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_f

    .line 427
    invoke-virtual {v2, v8}, Lcom/android/settings_exlib/wifi/AccessPoint;->update(Landroid/net/wifi/WifiConfiguration;)V

    .line 431
    .end local v8    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v22, v0

    if-eqz v22, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_10

    .line 432
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    .line 431
    if-eqz v22, :cond_10

    .line 433
    if-eqz v11, :cond_10

    invoke-virtual {v11}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v22

    .line 431
    if-eqz v22, :cond_10

    .line 436
    invoke-virtual {v2, v11}, Lcom/android/settings_exlib/wifi/AccessPoint;->update(Landroid/net/wifi/WifiConfiguration;)V

    .line 439
    :cond_10
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 440
    invoke-virtual {v2}, Lcom/android/settings_exlib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v6, v0, v2}, Lcom/android/settings_exlib/wifi/WifiTracker$Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 356
    .end local v2    # "accessPoint":Lcom/android/settings_exlib/wifi/AccessPoint;
    .end local v13    # "found":Z
    .end local v19    # "result":Landroid/net/wifi/ScanResult;
    .end local v20    # "result$iterator":Ljava/util/Iterator;
    .restart local v10    # "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :cond_11
    const/16 v22, 0x0

    goto/16 :goto_1

    .line 392
    .restart local v2    # "accessPoint":Lcom/android/settings_exlib/wifi/AccessPoint;
    .restart local v8    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v9    # "config$iterator":Ljava/util/Iterator;
    :cond_12
    :try_start_1
    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 446
    .end local v2    # "accessPoint":Lcom/android/settings_exlib/wifi/AccessPoint;
    .end local v8    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v9    # "config$iterator":Ljava/util/Iterator;
    .end local v10    # "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :cond_13
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/wifi/WifiTracker;->mAccessPoints:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "prevAccessPoint$iterator":Ljava/util/Iterator;
    :cond_14
    :goto_4
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_17

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/settings_exlib/wifi/AccessPoint;

    .line 451
    .local v16, "prevAccessPoint":Lcom/android/settings_exlib/wifi/AccessPoint;
    invoke-virtual/range {v16 .. v16}, Lcom/android/settings_exlib/wifi/AccessPoint;->getSsid()Ljava/lang/CharSequence;

    move-result-object v22

    if-eqz v22, :cond_14

    .line 452
    invoke-virtual/range {v16 .. v16}, Lcom/android/settings_exlib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v18

    .line 453
    .local v18, "prevSsid":Ljava/lang/String;
    const/4 v13, 0x0

    .line 454
    .restart local v13    # "found":Z
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "newAccessPoint$iterator":Ljava/util/Iterator;
    :cond_15
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_16

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/settings_exlib/wifi/AccessPoint;

    .line 455
    .local v14, "newAccessPoint":Lcom/android/settings_exlib/wifi/AccessPoint;
    invoke-virtual {v14}, Lcom/android/settings_exlib/wifi/AccessPoint;->getSsid()Ljava/lang/CharSequence;

    move-result-object v22

    if-eqz v22, :cond_15

    invoke-virtual {v14}, Lcom/android/settings_exlib/wifi/AccessPoint;->getSsid()Ljava/lang/CharSequence;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_15

    .line 456
    const/4 v13, 0x1

    .line 460
    .end local v14    # "newAccessPoint":Lcom/android/settings_exlib/wifi/AccessPoint;
    :cond_16
    if-eqz v13, :cond_14

    goto :goto_4

    .line 465
    .end local v13    # "found":Z
    .end local v15    # "newAccessPoint$iterator":Ljava/util/Iterator;
    .end local v16    # "prevAccessPoint":Lcom/android/settings_exlib/wifi/AccessPoint;
    .end local v18    # "prevSsid":Ljava/lang/String;
    :cond_17
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings_exlib/wifi/WifiTracker;->mAccessPoints:Ljava/util/ArrayList;

    .line 466
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/wifi/WifiTracker;->mMainHandler:Lcom/android/settings_exlib/wifi/WifiTracker$MainHandler;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    invoke-virtual/range {v22 .. v23}, Lcom/android/settings_exlib/wifi/WifiTracker$MainHandler;->sendEmptyMessage(I)Z

    .line 332
    return-void
.end method

.method private updateNetworkInfo(Landroid/net/NetworkInfo;)V
    .locals 6
    .param p1, "networkInfo"    # Landroid/net/NetworkInfo;

    .prologue
    const/4 v5, 0x4

    .line 495
    iget-object v3, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 496
    iget-object v3, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mMainHandler:Lcom/android/settings_exlib/wifi/WifiTracker$MainHandler;

    invoke-virtual {v3, v5}, Lcom/android/settings_exlib/wifi/WifiTracker$MainHandler;->sendEmptyMessage(I)Z

    .line 497
    return-void

    .line 500
    :cond_0
    if-eqz p1, :cond_4

    .line 501
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-ne v3, v4, :cond_4

    .line 502
    iget-object v3, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mMainHandler:Lcom/android/settings_exlib/wifi/WifiTracker$MainHandler;

    invoke-virtual {v3, v5}, Lcom/android/settings_exlib/wifi/WifiTracker$MainHandler;->sendEmptyMessage(I)Z

    .line 507
    :goto_0
    if-eqz p1, :cond_1

    .line 508
    iput-object p1, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mLastNetworkInfo:Landroid/net/NetworkInfo;

    .line 511
    :cond_1
    const/4 v0, 0x0

    .line 512
    .local v0, "connectionConfig":Landroid/net/wifi/WifiConfiguration;
    iget-object v3, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    .line 513
    iget-object v3, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v3, :cond_2

    .line 514
    iget-object v3, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/settings_exlib/wifi/WifiTracker;->getWifiConfigurationForNetworkId(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 517
    .end local v0    # "connectionConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_2
    const/4 v2, 0x0

    .line 518
    .local v2, "reorder":Z
    iget-object v3, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mAccessPoints:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_5

    .line 519
    iget-object v3, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mAccessPoints:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings_exlib/wifi/AccessPoint;

    iget-object v4, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    iget-object v5, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mLastNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3, v0, v4, v5}, Lcom/android/settings_exlib/wifi/AccessPoint;->update(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 520
    const/4 v2, 0x1

    .line 518
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 504
    .end local v1    # "i":I
    .end local v2    # "reorder":Z
    :cond_4
    iget-object v3, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mMainHandler:Lcom/android/settings_exlib/wifi/WifiTracker$MainHandler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/android/settings_exlib/wifi/WifiTracker$MainHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 523
    .restart local v1    # "i":I
    .restart local v2    # "reorder":Z
    :cond_5
    if-eqz v2, :cond_6

    .line 524
    iget-object v4, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mAccessPoints:Ljava/util/ArrayList;

    monitor-enter v4

    .line 525
    :try_start_0
    iget-object v3, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mAccessPoints:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    .line 527
    iget-object v3, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mMainHandler:Lcom/android/settings_exlib/wifi/WifiTracker$MainHandler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/android/settings_exlib/wifi/WifiTracker$MainHandler;->sendEmptyMessage(I)Z

    .line 493
    :cond_6
    return-void

    .line 524
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private updateWifiState(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 532
    iget-object v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mWorkHandler:Lcom/android/settings_exlib/wifi/WifiTracker$WorkHandler;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/settings_exlib/wifi/WifiTracker$WorkHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 531
    return-void
.end method


# virtual methods
.method public doSavedNetworksExist()Z
    .locals 1

    .prologue
    .line 269
    iget-boolean v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mSavedNetworksExist:Z

    return v0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 277
    const-string/jumbo v2, "  - wifi tracker ------"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 278
    invoke-virtual {p0}, Lcom/android/settings_exlib/wifi/WifiTracker;->getAccessPoints()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "accessPoint$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_exlib/wifi/AccessPoint;

    .line 279
    .local v0, "accessPoint":Lcom/android/settings_exlib/wifi/AccessPoint;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 276
    .end local v0    # "accessPoint":Lcom/android/settings_exlib/wifi/AccessPoint;
    :cond_0
    return-void
.end method

.method public forceScan()V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mScanner:Lcom/android/settings_exlib/wifi/WifiTracker$Scanner;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mScanner:Lcom/android/settings_exlib/wifi/WifiTracker$Scanner;

    invoke-virtual {v0}, Lcom/android/settings_exlib/wifi/WifiTracker$Scanner;->forceScan()V

    .line 177
    :cond_0
    return-void
.end method

.method public forceUpdate()V
    .locals 0

    .prologue
    .line 171
    invoke-direct {p0}, Lcom/android/settings_exlib/wifi/WifiTracker;->updateAccessPoints()V

    .line 170
    return-void
.end method

.method public getAccessPoints()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_exlib/wifi/AccessPoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 251
    iget-object v1, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mAccessPoints:Ljava/util/ArrayList;

    monitor-enter v1

    .line 252
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mAccessPoints:Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 251
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getManager()Landroid/net/wifi/WifiManager;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isWifiEnabled()Z
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    return v0
.end method

.method public pauseScanning()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 187
    iget-object v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mScanner:Lcom/android/settings_exlib/wifi/WifiTracker$Scanner;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mScanner:Lcom/android/settings_exlib/wifi/WifiTracker$Scanner;

    invoke-virtual {v0}, Lcom/android/settings_exlib/wifi/WifiTracker$Scanner;->pause()V

    .line 189
    iput-object v1, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mScanner:Lcom/android/settings_exlib/wifi/WifiTracker$Scanner;

    .line 186
    :cond_0
    return-void
.end method

.method public resumeScanning()V
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mScanner:Lcom/android/settings_exlib/wifi/WifiTracker$Scanner;

    if-nez v0, :cond_0

    .line 198
    new-instance v0, Lcom/android/settings_exlib/wifi/WifiTracker$Scanner;

    invoke-direct {v0, p0}, Lcom/android/settings_exlib/wifi/WifiTracker$Scanner;-><init>(Lcom/android/settings_exlib/wifi/WifiTracker;)V

    iput-object v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mScanner:Lcom/android/settings_exlib/wifi/WifiTracker$Scanner;

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mWorkHandler:Lcom/android/settings_exlib/wifi/WifiTracker$WorkHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/settings_exlib/wifi/WifiTracker$WorkHandler;->sendEmptyMessage(I)Z

    .line 202
    iget-object v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 203
    iget-object v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mScanner:Lcom/android/settings_exlib/wifi/WifiTracker$Scanner;

    invoke-virtual {v0}, Lcom/android/settings_exlib/wifi/WifiTracker$Scanner;->resume()V

    .line 211
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mWorkHandler:Lcom/android/settings_exlib/wifi/WifiTracker$WorkHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_exlib/wifi/WifiTracker$WorkHandler;->sendEmptyMessage(I)Z

    .line 196
    return-void

    .line 207
    :cond_2
    invoke-direct {p0}, Lcom/android/settings_exlib/wifi/WifiTracker;->isScanAlwaysAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 208
    iget-object v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mAccessPoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method public startTracking()V
    .locals 3

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/android/settings_exlib/wifi/WifiTracker;->resumeScanning()V

    .line 221
    iget-boolean v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mRegistered:Z

    if-nez v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 224
    new-instance v0, Lcom/android/settings_exlib/wifi/WifiTracker$WifiTrackerNetworkCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings_exlib/wifi/WifiTracker$WifiTrackerNetworkCallback;-><init>(Lcom/android/settings_exlib/wifi/WifiTracker;Lcom/android/settings_exlib/wifi/WifiTracker$WifiTrackerNetworkCallback;)V

    iput-object v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mNetworkCallback:Lcom/android/settings_exlib/wifi/WifiTracker$WifiTrackerNetworkCallback;

    .line 225
    iget-object v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mNetworkRequest:Landroid/net/NetworkRequest;

    iget-object v2, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mNetworkCallback:Lcom/android/settings_exlib/wifi/WifiTracker$WifiTrackerNetworkCallback;

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 226
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mRegistered:Z

    .line 219
    :cond_0
    return-void
.end method

.method public stopTracking()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 237
    iget-boolean v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mRegistered:Z

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mWorkHandler:Lcom/android/settings_exlib/wifi/WifiTracker$WorkHandler;

    invoke-virtual {v0, v2}, Lcom/android/settings_exlib/wifi/WifiTracker$WorkHandler;->removeMessages(I)V

    .line 239
    iget-object v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mWorkHandler:Lcom/android/settings_exlib/wifi/WifiTracker$WorkHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings_exlib/wifi/WifiTracker$WorkHandler;->removeMessages(I)V

    .line 240
    iget-object v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 241
    iget-object v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mNetworkCallback:Lcom/android/settings_exlib/wifi/WifiTracker$WifiTrackerNetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 242
    iput-boolean v2, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mRegistered:Z

    .line 244
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_exlib/wifi/WifiTracker;->pauseScanning()V

    .line 236
    return-void
.end method
