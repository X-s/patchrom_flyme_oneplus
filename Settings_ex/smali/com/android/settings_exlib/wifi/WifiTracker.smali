.class public Lcom/android/settings_exlib/wifi/WifiTracker;
.super Ljava/lang/Object;
.source "WifiTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_exlib/wifi/WifiTracker$WifiListener;,
        Lcom/android/settings_exlib/wifi/WifiTracker$Multimap;,
        Lcom/android/settings_exlib/wifi/WifiTracker$Scanner;,
        Lcom/android/settings_exlib/wifi/WifiTracker$WorkHandler;,
        Lcom/android/settings_exlib/wifi/WifiTracker$MainHandler;
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

.field private mBandChanged:Z

.field private final mBandChangedObserver:Landroid/database/ContentObserver;

.field private final mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mContext:Landroid/content/Context;

.field private final mFilter:Landroid/content/IntentFilter;

.field private final mIncludePasspoints:Z

.field private final mIncludeSaved:Z

.field private final mIncludeScans:Z

.field private mLastInfo:Landroid/net/wifi/WifiInfo;

.field private mLastNetworkInfo:Landroid/net/NetworkInfo;

.field private final mListener:Lcom/android/settings_exlib/wifi/WifiTracker$WifiListener;

.field private final mMainHandler:Lcom/android/settings_exlib/wifi/WifiTracker$MainHandler;

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
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    sput v0, Lcom/android/settings_exlib/wifi/WifiTracker;->sVerboseLogging:I

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
    .line 100
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/settings_exlib/wifi/WifiTracker;-><init>(Landroid/content/Context;Lcom/android/settings_exlib/wifi/WifiTracker$WifiListener;Landroid/os/Looper;ZZZ)V

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings_exlib/wifi/WifiTracker$WifiListener;Landroid/os/Looper;ZZZ)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wifiListener"    # Lcom/android/settings_exlib/wifi/WifiTracker$WifiListener;
    .param p3, "workerLooper"    # Landroid/os/Looper;
    .param p4, "includeSaved"    # Z
    .param p5, "includeScans"    # Z
    .param p6, "includePasspoints"    # Z

    .prologue
    .line 110
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiManager;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/settings_exlib/wifi/WifiTracker;-><init>(Landroid/content/Context;Lcom/android/settings_exlib/wifi/WifiTracker$WifiListener;Landroid/os/Looper;ZZZLandroid/net/wifi/WifiManager;Landroid/os/Looper;)V

    .line 112
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settings_exlib/wifi/WifiTracker$WifiListener;Landroid/os/Looper;ZZZLandroid/net/wifi/WifiManager;Landroid/os/Looper;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wifiListener"    # Lcom/android/settings_exlib/wifi/WifiTracker$WifiListener;
    .param p3, "workerLooper"    # Landroid/os/Looper;
    .param p4, "includeSaved"    # Z
    .param p5, "includeScans"    # Z
    .param p6, "includePasspoints"    # Z
    .param p7, "wifiManager"    # Landroid/net/wifi/WifiManager;
    .param p8, "currentLooper"    # Landroid/os/Looper;

    .prologue
    const/4 v3, 0x0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mAccessPoints:Ljava/util/ArrayList;

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mSeenBssids:Ljava/util/HashMap;

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mScanResultCache:Ljava/util/HashMap;

    .line 82
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mScanId:Ljava/lang/Integer;

    .line 87
    iput-boolean v3, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mBandChanged:Z

    .line 542
    new-instance v0, Lcom/android/settings_exlib/wifi/WifiTracker$2;

    invoke-direct {v0, p0}, Lcom/android/settings_exlib/wifi/WifiTracker$2;-><init>(Lcom/android/settings_exlib/wifi/WifiTracker;)V

    iput-object v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 118
    if-nez p4, :cond_0

    if-nez p5, :cond_0

    .line 119
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must include either saved or scans"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_0
    iput-object p1, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mContext:Landroid/content/Context;

    .line 122
    if-nez p8, :cond_1

    .line 124
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p8

    .line 126
    :cond_1
    new-instance v0, Lcom/android/settings_exlib/wifi/WifiTracker$MainHandler;

    invoke-direct {v0, p0, p8}, Lcom/android/settings_exlib/wifi/WifiTracker$MainHandler;-><init>(Lcom/android/settings_exlib/wifi/WifiTracker;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mMainHandler:Lcom/android/settings_exlib/wifi/WifiTracker$MainHandler;

    .line 127
    new-instance v0, Lcom/android/settings_exlib/wifi/WifiTracker$WorkHandler;

    if-eqz p3, :cond_2

    .end local p3    # "workerLooper":Landroid/os/Looper;
    :goto_0
    invoke-direct {v0, p0, p3}, Lcom/android/settings_exlib/wifi/WifiTracker$WorkHandler;-><init>(Lcom/android/settings_exlib/wifi/WifiTracker;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mWorkHandler:Lcom/android/settings_exlib/wifi/WifiTracker$WorkHandler;

    .line 129
    iput-object p7, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 130
    iput-boolean p4, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mIncludeSaved:Z

    .line 131
    iput-boolean p5, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mIncludeScans:Z

    .line 132
    iput-boolean p6, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mIncludePasspoints:Z

    .line 133
    iput-object p2, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mListener:Lcom/android/settings_exlib/wifi/WifiTracker$WifiListener;

    .line 136
    iget-object v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getVerboseLoggingLevel()I

    move-result v0

    sput v0, Lcom/android/settings_exlib/wifi/WifiTracker;->sVerboseLogging:I

    .line 138
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mFilter:Landroid/content/IntentFilter;

    .line 139
    iget-object v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.NETWORK_IDS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 149
    new-instance v0, Lcom/android/settings_exlib/wifi/WifiTracker$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings_exlib/wifi/WifiTracker$1;-><init>(Lcom/android/settings_exlib/wifi/WifiTracker;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mBandChangedObserver:Landroid/database/ContentObserver;

    .line 157
    iget-object v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_frequency_band"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mBandChangedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 161
    return-void

    .restart local p3    # "workerLooper":Landroid/os/Looper;
    :cond_2
    move-object p3, p8

    .line 127
    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings_exlib/wifi/WifiTracker$WifiListener;ZZ)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wifiListener"    # Lcom/android/settings_exlib/wifi/WifiTracker$WifiListener;
    .param p3, "includeSaved"    # Z
    .param p4, "includeScans"    # Z

    .prologue
    .line 95
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_exlib/wifi/WifiTracker;-><init>(Landroid/content/Context;Lcom/android/settings_exlib/wifi/WifiTracker$WifiListener;Landroid/os/Looper;ZZ)V

    .line 96
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
    .line 105
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/settings_exlib/wifi/WifiTracker;-><init>(Landroid/content/Context;Lcom/android/settings_exlib/wifi/WifiTracker$WifiListener;Landroid/os/Looper;ZZZ)V

    .line 106
    return-void
.end method

.method static synthetic access$002(Lcom/android/settings_exlib/wifi/WifiTracker;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_exlib/wifi/WifiTracker;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mBandChanged:Z

    return p1
.end method

.method static synthetic access$1000(Lcom/android/settings_exlib/wifi/WifiTracker;)Landroid/net/wifi/WifiManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_exlib/wifi/WifiTracker;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings_exlib/wifi/WifiTracker;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_exlib/wifi/WifiTracker;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_exlib/wifi/WifiTracker;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_exlib/wifi/WifiTracker;
    .param p1, "x1"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/settings_exlib/wifi/WifiTracker;->updateWifiState(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings_exlib/wifi/WifiTracker;)Lcom/android/settings_exlib/wifi/WifiTracker$WorkHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_exlib/wifi/WifiTracker;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mWorkHandler:Lcom/android/settings_exlib/wifi/WifiTracker$WorkHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_exlib/wifi/WifiTracker;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_exlib/wifi/WifiTracker;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings_exlib/wifi/WifiTracker;)Lcom/android/settings_exlib/wifi/WifiTracker$MainHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_exlib/wifi/WifiTracker;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mMainHandler:Lcom/android/settings_exlib/wifi/WifiTracker$MainHandler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings_exlib/wifi/WifiTracker;)Lcom/android/settings_exlib/wifi/WifiTracker$WifiListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_exlib/wifi/WifiTracker;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mListener:Lcom/android/settings_exlib/wifi/WifiTracker$WifiListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings_exlib/wifi/WifiTracker;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_exlib/wifi/WifiTracker;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/settings_exlib/wifi/WifiTracker;->updateAccessPoints()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings_exlib/wifi/WifiTracker;Landroid/net/NetworkInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_exlib/wifi/WifiTracker;
    .param p1, "x1"    # Landroid/net/NetworkInfo;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/settings_exlib/wifi/WifiTracker;->updateNetworkInfo(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings_exlib/wifi/WifiTracker;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_exlib/wifi/WifiTracker;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/settings_exlib/wifi/WifiTracker;->handleResume()V

    return-void
.end method

.method private fetchScanResults()Ljava/util/Collection;
    .locals 11
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
    .line 291
    iget-object v8, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mScanId:Ljava/lang/Integer;

    iget-object v8, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mScanId:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mScanId:Ljava/lang/Integer;

    .line 292
    iget-object v8, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v5

    .line 293
    .local v5, "newResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    iget-object v8, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getFrequencyBand()I

    move-result v0

    .line 294
    .local v0, "currentBand":I
    if-nez v5, :cond_0

    .line 295
    const/4 v8, 0x0

    .line 324
    :goto_0
    return-object v8

    .line 297
    :cond_0
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/ScanResult;

    .line 299
    .local v4, "newResult":Landroid/net/wifi/ScanResult;
    invoke-direct {p0, v4, v0}, Lcom/android/settings_exlib/wifi/WifiTracker;->uselessBssid(Landroid/net/wifi/ScanResult;I)Z

    move-result v8

    if-nez v8, :cond_1

    iget-object v8, v4, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v8, :cond_1

    iget-object v8, v4, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_1

    .line 300
    iget-object v8, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mScanResultCache:Ljava/util/HashMap;

    iget-object v9, v4, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v8, v9, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    iget-object v8, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mSeenBssids:Ljava/util/HashMap;

    iget-object v9, v4, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mScanId:Ljava/lang/Integer;

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 306
    .end local v4    # "newResult":Landroid/net/wifi/ScanResult;
    :cond_2
    iget-boolean v8, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mBandChanged:Z

    if-nez v8, :cond_3

    iget-object v8, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mScanId:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x3

    if-le v8, v9, :cond_8

    .line 308
    :cond_3
    iget-object v8, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mScanId:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int/lit8 v8, v8, -0x3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 309
    .local v7, "threshold":Ljava/lang/Integer;
    iget-object v8, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mSeenBssids:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 310
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 311
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 312
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-boolean v8, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mBandChanged:Z

    if-eqz v8, :cond_5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    iget-object v9, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mScanId:Ljava/lang/Integer;

    invoke-virtual {v8, v9}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    :cond_5
    iget-boolean v8, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mBandChanged:Z

    if-nez v8, :cond_4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ge v8, v9, :cond_4

    .line 314
    :cond_6
    iget-object v8, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mScanResultCache:Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/ScanResult;

    .line 316
    .local v6, "result":Landroid/net/wifi/ScanResult;
    iget-object v8, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mScanResultCache:Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 320
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v6    # "result":Landroid/net/wifi/ScanResult;
    :cond_7
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mBandChanged:Z

    .line 324
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    .end local v7    # "threshold":Ljava/lang/Integer;
    :cond_8
    iget-object v8, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mScanResultCache:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    goto/16 :goto_0
.end method

.method private getCachedOrCreate(Landroid/net/wifi/ScanResult;Ljava/util/List;)Lcom/android/settings_exlib/wifi/AccessPoint;
    .locals 4
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
    .line 456
    .local p2, "cache":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_exlib/wifi/AccessPoint;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 457
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 458
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-virtual {v3, p1}, Lcom/android/settings_exlib/wifi/AccessPoint;->matches(Landroid/net/wifi/ScanResult;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 459
    invoke-interface {p2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_exlib/wifi/AccessPoint;

    .line 460
    .local v2, "ret":Lcom/android/settings_exlib/wifi/AccessPoint;
    invoke-virtual {v2, p1}, Lcom/android/settings_exlib/wifi/AccessPoint;->update(Landroid/net/wifi/ScanResult;)Z

    .line 464
    .end local v2    # "ret":Lcom/android/settings_exlib/wifi/AccessPoint;
    :goto_1
    return-object v2

    .line 457
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 464
    :cond_1
    new-instance v2, Lcom/android/settings_exlib/wifi/AccessPoint;

    iget-object v3, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p1}, Lcom/android/settings_exlib/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/ScanResult;)V

    goto :goto_1
.end method

.method private getCachedOrCreate(Landroid/net/wifi/WifiConfiguration;Ljava/util/List;)Lcom/android/settings_exlib/wifi/AccessPoint;
    .locals 4
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
    .line 468
    .local p2, "cache":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_exlib/wifi/AccessPoint;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 469
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 470
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-virtual {v3, p1}, Lcom/android/settings_exlib/wifi/AccessPoint;->matches(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 471
    invoke-interface {p2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_exlib/wifi/AccessPoint;

    .line 472
    .local v2, "ret":Lcom/android/settings_exlib/wifi/AccessPoint;
    invoke-virtual {v2, p1}, Lcom/android/settings_exlib/wifi/AccessPoint;->loadConfig(Landroid/net/wifi/WifiConfiguration;)V

    .line 476
    .end local v2    # "ret":Lcom/android/settings_exlib/wifi/AccessPoint;
    :goto_1
    return-object v2

    .line 469
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 476
    :cond_1
    new-instance v2, Lcom/android/settings_exlib/wifi/AccessPoint;

    iget-object v3, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p1}, Lcom/android/settings_exlib/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_1
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

    .line 536
    new-instance v0, Lcom/android/settings_exlib/wifi/WifiTracker;

    move-object v1, p0

    move-object v3, v2

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/settings_exlib/wifi/WifiTracker;-><init>(Landroid/content/Context;Lcom/android/settings_exlib/wifi/WifiTracker$WifiListener;Landroid/os/Looper;ZZZ)V

    .line 538
    .local v0, "tracker":Lcom/android/settings_exlib/wifi/WifiTracker;
    invoke-virtual {v0}, Lcom/android/settings_exlib/wifi/WifiTracker;->forceUpdate()V

    .line 539
    invoke-virtual {v0}, Lcom/android/settings_exlib/wifi/WifiTracker;->getAccessPoints()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private getWifiConfigurationForNetworkId(I)Landroid/net/wifi/WifiConfiguration;
    .locals 4
    .param p1, "networkId"    # I

    .prologue
    .line 328
    iget-object v3, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 329
    .local v1, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v1, :cond_2

    .line 330
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 331
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v3, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v3, :cond_0

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne p1, v3, :cond_0

    iget-boolean v3, v0, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    if-eqz v3, :cond_1

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    if-eqz v3, :cond_0

    .line 337
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleResume()V
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mScanResultCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 271
    iget-object v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mSeenBssids:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 272
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mScanId:Ljava/lang/Integer;

    .line 273
    return-void
.end method

.method private updateAccessPoints()V
    .locals 19

    .prologue
    .line 342
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_exlib/wifi/WifiTracker;->getAccessPoints()Ljava/util/List;

    move-result-object v5

    .line 343
    .local v5, "cachedAccessPoints":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_exlib/wifi/AccessPoint;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 346
    .local v3, "accessPoints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_exlib/wifi/AccessPoint;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_exlib/wifi/AccessPoint;

    .line 347
    .local v2, "accessPoint":Lcom/android/settings_exlib/wifi/AccessPoint;
    invoke-virtual {v2}, Lcom/android/settings_exlib/wifi/AccessPoint;->clearConfig()V

    goto :goto_0

    .line 352
    .end local v2    # "accessPoint":Lcom/android/settings_exlib/wifi/AccessPoint;
    :cond_0
    new-instance v4, Lcom/android/settings_exlib/wifi/WifiTracker$Multimap;

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-direct {v4, v0}, Lcom/android/settings_exlib/wifi/WifiTracker$Multimap;-><init>(Lcom/android/settings_exlib/wifi/WifiTracker$1;)V

    .line 353
    .local v4, "apMap":Lcom/android/settings_exlib/wifi/WifiTracker$Multimap;, "Lcom/android/settings_exlib/wifi/WifiTracker$Multimap<Ljava/lang/String;Lcom/android/settings_exlib/wifi/AccessPoint;>;"
    const/4 v8, 0x0

    .line 354
    .local v8, "connectionConfig":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    .line 355
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/settings_exlib/wifi/WifiTracker;->getWifiConfigurationForNetworkId(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v8

    .line 358
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v7

    .line 359
    .local v7, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v7, :cond_9

    .line 360
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v17

    if-eqz v17, :cond_7

    const/16 v17, 0x1

    :goto_1
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings_exlib/wifi/WifiTracker;->mSavedNetworksExist:Z

    .line 361
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_2
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiConfiguration;

    .line 362
    .local v6, "config":Landroid/net/wifi/WifiConfiguration;
    iget-boolean v0, v6, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    move/from16 v17, v0

    if-eqz v17, :cond_3

    iget v0, v6, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    move/from16 v17, v0

    if-eqz v17, :cond_2

    .line 365
    :cond_3
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v5}, Lcom/android/settings_exlib/wifi/WifiTracker;->getCachedOrCreate(Landroid/net/wifi/WifiConfiguration;Ljava/util/List;)Lcom/android/settings_exlib/wifi/AccessPoint;

    move-result-object v2

    .line 366
    .restart local v2    # "accessPoint":Lcom/android/settings_exlib/wifi/AccessPoint;
    const/16 v17, 0x0

    move/from16 v0, v17

    iput-boolean v0, v2, Lcom/android/settings_exlib/wifi/AccessPoint;->foundInScanResult:Z

    .line 367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v17, v0

    if-eqz v17, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/wifi/WifiTracker;->mLastNetworkInfo:Landroid/net/NetworkInfo;

    move-object/from16 v17, v0

    if-eqz v17, :cond_4

    .line 368
    invoke-virtual {v6}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v17

    if-nez v17, :cond_4

    .line 369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/wifi/WifiTracker;->mLastNetworkInfo:Landroid/net/NetworkInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v2, v8, v0, v1}, Lcom/android/settings_exlib/wifi/AccessPoint;->update(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)Z

    .line 372
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_exlib/wifi/WifiTracker;->mIncludeSaved:Z

    move/from16 v17, v0

    if-eqz v17, :cond_8

    .line 373
    invoke-virtual {v6}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v17

    if-eqz v17, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_exlib/wifi/WifiTracker;->mIncludePasspoints:Z

    move/from16 v17, v0

    if-eqz v17, :cond_6

    .line 374
    :cond_5
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 376
    :cond_6
    invoke-virtual {v6}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v17

    if-nez v17, :cond_2

    .line 377
    invoke-virtual {v2}, Lcom/android/settings_exlib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0, v2}, Lcom/android/settings_exlib/wifi/WifiTracker$Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 360
    .end local v2    # "accessPoint":Lcom/android/settings_exlib/wifi/AccessPoint;
    .end local v6    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_7
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 382
    .restart local v2    # "accessPoint":Lcom/android/settings_exlib/wifi/AccessPoint;
    .restart local v6    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_8
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 387
    .end local v2    # "accessPoint":Lcom/android/settings_exlib/wifi/AccessPoint;
    .end local v6    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_exlib/wifi/WifiTracker;->fetchScanResults()Ljava/util/Collection;

    move-result-object v16

    .line 388
    .local v16, "results":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/wifi/ScanResult;>;"
    if-eqz v16, :cond_10

    .line 389
    invoke-interface/range {v16 .. v16}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .end local v10    # "i$":Ljava/util/Iterator;
    :cond_a
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_10

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/net/wifi/ScanResult;

    .line 391
    .local v15, "result":Landroid/net/wifi/ScanResult;
    iget-object v0, v15, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_a

    iget-object v0, v15, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    if-eqz v17, :cond_a

    iget-object v0, v15, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "[IBSS]"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_a

    .line 396
    const/4 v9, 0x0

    .line 397
    .local v9, "found":Z
    iget-object v0, v15, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/android/settings_exlib/wifi/WifiTracker$Multimap;->getAll(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_b
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_c

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_exlib/wifi/AccessPoint;

    .line 398
    .restart local v2    # "accessPoint":Lcom/android/settings_exlib/wifi/AccessPoint;
    invoke-virtual {v2, v15}, Lcom/android/settings_exlib/wifi/AccessPoint;->update(Landroid/net/wifi/ScanResult;)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 399
    const/16 v17, 0x1

    move/from16 v0, v17

    iput-boolean v0, v2, Lcom/android/settings_exlib/wifi/AccessPoint;->foundInScanResult:Z

    .line 400
    const/4 v9, 0x1

    .line 404
    .end local v2    # "accessPoint":Lcom/android/settings_exlib/wifi/AccessPoint;
    :cond_c
    if-nez v9, :cond_a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_exlib/wifi/WifiTracker;->mIncludeScans:Z

    move/from16 v17, v0

    if-eqz v17, :cond_a

    .line 405
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v5}, Lcom/android/settings_exlib/wifi/WifiTracker;->getCachedOrCreate(Landroid/net/wifi/ScanResult;Ljava/util/List;)Lcom/android/settings_exlib/wifi/AccessPoint;

    move-result-object v2

    .line 406
    .restart local v2    # "accessPoint":Lcom/android/settings_exlib/wifi/AccessPoint;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v17, v0

    if-eqz v17, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/wifi/WifiTracker;->mLastNetworkInfo:Landroid/net/NetworkInfo;

    move-object/from16 v17, v0

    if-eqz v17, :cond_d

    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/wifi/WifiTracker;->mLastNetworkInfo:Landroid/net/NetworkInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v2, v8, v0, v1}, Lcom/android/settings_exlib/wifi/AccessPoint;->update(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)Z

    .line 410
    :cond_d
    invoke-virtual {v15}, Landroid/net/wifi/ScanResult;->isPasspointNetwork()Z

    move-result v17

    if-eqz v17, :cond_e

    .line 411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Landroid/net/wifi/WifiManager;->getMatchingWifiConfig(Landroid/net/wifi/ScanResult;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v6

    .line 412
    .restart local v6    # "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v6, :cond_e

    .line 413
    invoke-virtual {v2, v6}, Lcom/android/settings_exlib/wifi/AccessPoint;->update(Landroid/net/wifi/WifiConfiguration;)V

    .line 417
    .end local v6    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v17, v0

    if-eqz v17, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v17

    iget-object v0, v15, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_f

    if-eqz v8, :cond_f

    invoke-virtual {v8}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v17

    if-eqz v17, :cond_f

    .line 422
    invoke-virtual {v2, v8}, Lcom/android/settings_exlib/wifi/AccessPoint;->update(Landroid/net/wifi/WifiConfiguration;)V

    .line 425
    :cond_f
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 426
    invoke-virtual {v2}, Lcom/android/settings_exlib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0, v2}, Lcom/android/settings_exlib/wifi/WifiTracker$Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 432
    .end local v2    # "accessPoint":Lcom/android/settings_exlib/wifi/AccessPoint;
    .end local v9    # "found":Z
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v15    # "result":Landroid/net/wifi/ScanResult;
    :cond_10
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/wifi/WifiTracker;->mAccessPoints:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_11
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_14

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/settings_exlib/wifi/AccessPoint;

    .line 437
    .local v13, "prevAccessPoint":Lcom/android/settings_exlib/wifi/AccessPoint;
    invoke-virtual {v13}, Lcom/android/settings_exlib/wifi/AccessPoint;->getSsid()Ljava/lang/CharSequence;

    move-result-object v17

    if-eqz v17, :cond_11

    .line 438
    invoke-virtual {v13}, Lcom/android/settings_exlib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v14

    .line 439
    .local v14, "prevSsid":Ljava/lang/String;
    const/4 v9, 0x0

    .line 440
    .restart local v9    # "found":Z
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .restart local v11    # "i$":Ljava/util/Iterator;
    :cond_12
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_13

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/settings_exlib/wifi/AccessPoint;

    .line 441
    .local v12, "newAccessPoint":Lcom/android/settings_exlib/wifi/AccessPoint;
    invoke-virtual {v12}, Lcom/android/settings_exlib/wifi/AccessPoint;->getSsid()Ljava/lang/CharSequence;

    move-result-object v17

    if-eqz v17, :cond_12

    invoke-virtual {v12}, Lcom/android/settings_exlib/wifi/AccessPoint;->getSsid()Ljava/lang/CharSequence;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_12

    .line 442
    const/4 v9, 0x1

    .line 446
    .end local v12    # "newAccessPoint":Lcom/android/settings_exlib/wifi/AccessPoint;
    :cond_13
    if-nez v9, :cond_11

    goto :goto_4

    .line 451
    .end local v9    # "found":Z
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v13    # "prevAccessPoint":Lcom/android/settings_exlib/wifi/AccessPoint;
    .end local v14    # "prevSsid":Ljava/lang/String;
    :cond_14
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings_exlib/wifi/WifiTracker;->mAccessPoints:Ljava/util/ArrayList;

    .line 452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/wifi/WifiTracker;->mMainHandler:Lcom/android/settings_exlib/wifi/WifiTracker$MainHandler;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    invoke-virtual/range {v17 .. v18}, Lcom/android/settings_exlib/wifi/WifiTracker$MainHandler;->sendEmptyMessage(I)Z

    .line 453
    return-void
.end method

.method private updateNetworkInfo(Landroid/net/NetworkInfo;)V
    .locals 6
    .param p1, "networkInfo"    # Landroid/net/NetworkInfo;

    .prologue
    const/4 v5, 0x4

    .line 481
    iget-object v3, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 482
    iget-object v3, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mMainHandler:Lcom/android/settings_exlib/wifi/WifiTracker$MainHandler;

    invoke-virtual {v3, v5}, Lcom/android/settings_exlib/wifi/WifiTracker$MainHandler;->sendEmptyMessage(I)Z

    .line 515
    :cond_0
    :goto_0
    return-void

    .line 486
    :cond_1
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-ne v3, v4, :cond_5

    .line 488
    iget-object v3, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mMainHandler:Lcom/android/settings_exlib/wifi/WifiTracker$MainHandler;

    invoke-virtual {v3, v5}, Lcom/android/settings_exlib/wifi/WifiTracker$MainHandler;->sendEmptyMessage(I)Z

    .line 493
    :goto_1
    iget-object v3, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    .line 494
    if-eqz p1, :cond_2

    .line 495
    iput-object p1, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mLastNetworkInfo:Landroid/net/NetworkInfo;

    .line 498
    :cond_2
    const/4 v0, 0x0

    .line 499
    .local v0, "connectionConfig":Landroid/net/wifi/WifiConfiguration;
    iget-object v3, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v3, :cond_3

    .line 500
    iget-object v3, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/settings_exlib/wifi/WifiTracker;->getWifiConfigurationForNetworkId(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 503
    :cond_3
    const/4 v2, 0x0

    .line 504
    .local v2, "reorder":Z
    iget-object v3, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mAccessPoints:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_2
    if-ltz v1, :cond_6

    .line 505
    iget-object v3, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mAccessPoints:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings_exlib/wifi/AccessPoint;

    iget-object v4, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    iget-object v5, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mLastNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3, v0, v4, v5}, Lcom/android/settings_exlib/wifi/AccessPoint;->update(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 506
    const/4 v2, 0x1

    .line 504
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 490
    .end local v0    # "connectionConfig":Landroid/net/wifi/WifiConfiguration;
    .end local v1    # "i":I
    .end local v2    # "reorder":Z
    :cond_5
    iget-object v3, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mMainHandler:Lcom/android/settings_exlib/wifi/WifiTracker$MainHandler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/android/settings_exlib/wifi/WifiTracker$MainHandler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 509
    .restart local v0    # "connectionConfig":Landroid/net/wifi/WifiConfiguration;
    .restart local v1    # "i":I
    .restart local v2    # "reorder":Z
    :cond_6
    if-eqz v2, :cond_0

    .line 510
    iget-object v4, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mAccessPoints:Ljava/util/ArrayList;

    monitor-enter v4

    .line 511
    :try_start_0
    iget-object v3, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mAccessPoints:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 512
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 513
    iget-object v3, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mMainHandler:Lcom/android/settings_exlib/wifi/WifiTracker$MainHandler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/android/settings_exlib/wifi/WifiTracker$MainHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 512
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private updateWifiState(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    const/4 v1, 0x0

    .line 518
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 519
    iget-object v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mScanner:Lcom/android/settings_exlib/wifi/WifiTracker$Scanner;

    if-eqz v0, :cond_0

    .line 522
    iget-object v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mScanner:Lcom/android/settings_exlib/wifi/WifiTracker$Scanner;

    invoke-virtual {v0}, Lcom/android/settings_exlib/wifi/WifiTracker$Scanner;->resume()V

    .line 531
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mMainHandler:Lcom/android/settings_exlib/wifi/WifiTracker$MainHandler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/settings_exlib/wifi/WifiTracker$MainHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 532
    return-void

    .line 525
    :cond_1
    iput-object v1, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    .line 526
    iput-object v1, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mLastNetworkInfo:Landroid/net/NetworkInfo;

    .line 527
    iget-object v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mScanner:Lcom/android/settings_exlib/wifi/WifiTracker$Scanner;

    if-eqz v0, :cond_0

    .line 528
    iget-object v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mScanner:Lcom/android/settings_exlib/wifi/WifiTracker$Scanner;

    invoke-virtual {v0}, Lcom/android/settings_exlib/wifi/WifiTracker$Scanner;->pause()V

    goto :goto_0
.end method

.method private uselessBssid(Landroid/net/wifi/ScanResult;I)Z
    .locals 2
    .param p1, "result"    # Landroid/net/wifi/ScanResult;
    .param p2, "currentBand"    # I

    .prologue
    .line 277
    const/4 v0, 0x0

    .line 278
    .local v0, "remove":Z
    packed-switch p2, :pswitch_data_0

    .line 286
    :cond_0
    :goto_0
    return v0

    .line 280
    :pswitch_0
    invoke-virtual {p1}, Landroid/net/wifi/ScanResult;->is24GHz()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 283
    :pswitch_1
    invoke-virtual {p1}, Landroid/net/wifi/ScanResult;->is5GHz()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 278
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public doSavedNetworksExist()Z
    .locals 1

    .prologue
    .line 255
    iget-boolean v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mSavedNetworksExist:Z

    return v0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 263
    const-string v2, "  - wifi tracker ------"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 264
    invoke-virtual {p0}, Lcom/android/settings_exlib/wifi/WifiTracker;->getAccessPoints()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_exlib/wifi/AccessPoint;

    .line 265
    .local v0, "accessPoint":Lcom/android/settings_exlib/wifi/AccessPoint;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 267
    .end local v0    # "accessPoint":Lcom/android/settings_exlib/wifi/AccessPoint;
    :cond_0
    return-void
.end method

.method public forceScan()V
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mScanner:Lcom/android/settings_exlib/wifi/WifiTracker$Scanner;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mScanner:Lcom/android/settings_exlib/wifi/WifiTracker$Scanner;

    invoke-virtual {v0}, Lcom/android/settings_exlib/wifi/WifiTracker$Scanner;->forceScan()V

    .line 177
    :cond_0
    return-void
.end method

.method public forceUpdate()V
    .locals 0

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/android/settings_exlib/wifi/WifiTracker;->updateAccessPoints()V

    .line 168
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
    .line 237
    iget-object v1, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mAccessPoints:Ljava/util/ArrayList;

    monitor-enter v1

    .line 238
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mAccessPoints:Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1

    return-object v0

    .line 239
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getManager()Landroid/net/wifi/WifiManager;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isWifiEnabled()Z
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    return v0
.end method

.method public pauseScanning()V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mScanner:Lcom/android/settings_exlib/wifi/WifiTracker$Scanner;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mScanner:Lcom/android/settings_exlib/wifi/WifiTracker$Scanner;

    invoke-virtual {v0}, Lcom/android/settings_exlib/wifi/WifiTracker$Scanner;->pause()V

    .line 185
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mScanner:Lcom/android/settings_exlib/wifi/WifiTracker$Scanner;

    .line 187
    :cond_0
    return-void
.end method

.method public resumeScanning()V
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mScanner:Lcom/android/settings_exlib/wifi/WifiTracker$Scanner;

    if-nez v0, :cond_0

    .line 194
    new-instance v0, Lcom/android/settings_exlib/wifi/WifiTracker$Scanner;

    invoke-direct {v0, p0}, Lcom/android/settings_exlib/wifi/WifiTracker$Scanner;-><init>(Lcom/android/settings_exlib/wifi/WifiTracker;)V

    iput-object v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mScanner:Lcom/android/settings_exlib/wifi/WifiTracker$Scanner;

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mWorkHandler:Lcom/android/settings_exlib/wifi/WifiTracker$WorkHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/settings_exlib/wifi/WifiTracker$WorkHandler;->sendEmptyMessage(I)Z

    .line 198
    iget-object v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 199
    iget-object v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mScanner:Lcom/android/settings_exlib/wifi/WifiTracker$Scanner;

    invoke-virtual {v0}, Lcom/android/settings_exlib/wifi/WifiTracker$Scanner;->resume()V

    .line 201
    :cond_1
    iget-object v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mWorkHandler:Lcom/android/settings_exlib/wifi/WifiTracker$WorkHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_exlib/wifi/WifiTracker$WorkHandler;->sendEmptyMessage(I)Z

    .line 202
    return-void
.end method

.method public startTracking()V
    .locals 3

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/android/settings_exlib/wifi/WifiTracker;->resumeScanning()V

    .line 211
    iget-boolean v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mRegistered:Z

    if-nez v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 213
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mRegistered:Z

    .line 215
    :cond_0
    return-void
.end method

.method public stopTracking()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 224
    iget-boolean v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mRegistered:Z

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mWorkHandler:Lcom/android/settings_exlib/wifi/WifiTracker$WorkHandler;

    invoke-virtual {v0, v2}, Lcom/android/settings_exlib/wifi/WifiTracker$WorkHandler;->removeMessages(I)V

    .line 226
    iget-object v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mWorkHandler:Lcom/android/settings_exlib/wifi/WifiTracker$WorkHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings_exlib/wifi/WifiTracker$WorkHandler;->removeMessages(I)V

    .line 227
    iget-object v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 228
    iput-boolean v2, p0, Lcom/android/settings_exlib/wifi/WifiTracker;->mRegistered:Z

    .line 230
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_exlib/wifi/WifiTracker;->pauseScanning()V

    .line 231
    return-void
.end method
