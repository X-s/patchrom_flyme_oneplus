.class public Lcom/android/server/wifi/WifiQualifiedNetworkSelector;
.super Ljava/lang/Object;
.source "WifiQualifiedNetworkSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;,
        Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;
    }
.end annotation


# static fields
.field public static final ACCEPTABLE_2G_RSSI:I = -0x50

.field public static final ACCEPTABLE_5G_RSSI:I = -0x4d

.field public static final BAND_AWARD_5GHz:I = 0x28

.field public static final BSSID_BLACKLIST_EXPIRE_TIME:I = 0x493e0

.field public static final BSSID_BLACKLIST_THRESHOLD:I = 0x3

.field private static final FORCE_DEBUG:Z = true

.field private static final INVALID_TIME_STAMP:I = -0x1

.field public static final LAST_SELECTION_AWARD:I = 0x1e0

.field private static final MAX_REENABLE_TIMES:I = 0x3

.field public static final MINIMUM_2G_ACCEPT_RSSI:I = -0x55

.field public static final MINIMUM_5G_ACCEPT_RSSI:I = -0x52

.field private static final MINIMUM_QUALIFIED_NETWORK_SELECTION_INTERVAL:I = 0x2710

.field public static final PASSPOINT_SECURITY_AWARD:I = 0x28

.field public static final QUALIFIED_RSSI_24G_BAND:I = -0x49

.field public static final QUALIFIED_RSSI_5G_BAND:I = -0x46

.field public static final RSSI_SATURATION_2G_BAND:I = -0x3c

.field public static final RSSI_SATURATION_5G_BAND:I = -0x39

.field public static final RSSI_SCORE_OFFSET:I = 0x55

.field public static final RSSI_SCORE_SLOPE:I = 0x4

.field public static final SAME_BSSID_AWARD:I = 0x18

.field public static final SAME_NETWORK_AWARD:I = 0x10

.field public static final SCAN_RESULT_MAXIMUNM_AGE:I = 0x9c40

.field public static final SECURITY_AWARD:I = 0x50

.field private static final TAG:Ljava/lang/String; = "WifiQualifiedNetworkSelector:"


# instance fields
.field private mBssidBlacklist:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;",
            ">;"
        }
    .end annotation
.end field

.field private mClock:Lcom/android/server/wifi/Clock;

.field private mContext:Landroid/content/Context;

.field private mCurrentBssid:Ljava/lang/String;

.field private mCurrentConnectedNetwork:Landroid/net/wifi/WifiConfiguration;

.field private mDbg:Z

.field private volatile mFilteredScanDetails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/android/server/wifi/ScanDetail;",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;>;"
        }
    .end annotation
.end field

.field private mLastQualifiedNetworkSelectionTimeStamp:J

.field private mLastSelectionAward:I

.field private final mLocalLog:Landroid/util/LocalLog;

.field private mNetworkScoreCache:Lcom/android/server/wifi/WifiNetworkScoreCache;

.field private final mNoIntnetPenalty:I

.field private mPasspointSecurityAward:I

.field private final mReenableMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRssiScoreOffset:I

.field private mRssiScoreSlope:I

.field private mSameBssidAward:I

.field private mScanDetails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/ScanDetail;",
            ">;"
        }
    .end annotation
.end field

.field private mScoreManager:Landroid/net/NetworkScoreManager;

.field private mScreenOn:Z

.field private mSecurityAward:I

.field private mUserPreferedBand:I

.field private mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

.field private mWifiInfo:Landroid/net/wifi/WifiInfo;

.field private skipNetworkSelectionForWPS:Z

.field private skipQualifiedNetworkSelectionForAutoConnect:Z


# direct methods
.method static synthetic -wrap0(Landroid/net/wifi/ScanResult;)Ljava/lang/String;
    .locals 1
    .param p0, "scanResult"    # Landroid/net/wifi/ScanResult;

    .prologue
    invoke-static {p0}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->toScanId(Landroid/net/wifi/ScanResult;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method constructor <init>(Lcom/android/server/wifi/WifiConfigManager;Landroid/content/Context;Landroid/net/wifi/WifiInfo;Lcom/android/server/wifi/Clock;)V
    .locals 5
    .param p1, "configureStore"    # Lcom/android/server/wifi/WifiConfigManager;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "wifiInfo"    # Landroid/net/wifi/WifiInfo;
    .param p4, "clock"    # Lcom/android/server/wifi/Clock;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-boolean v3, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->skipQualifiedNetworkSelectionForAutoConnect:Z

    .line 61
    iput-boolean v3, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->skipNetworkSelectionForWPS:Z

    .line 65
    iput-boolean v4, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mDbg:Z

    .line 66
    iput-object v2, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mCurrentConnectedNetwork:Landroid/net/wifi/WifiConfiguration;

    .line 67
    iput-object v2, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mCurrentBssid:Ljava/lang/String;

    .line 69
    iput-object v2, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mScanDetails:Ljava/util/List;

    .line 72
    iput-object v2, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mFilteredScanDetails:Ljava/util/List;

    .line 110
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mLastQualifiedNetworkSelectionTimeStamp:J

    .line 112
    new-instance v0, Landroid/util/LocalLog;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mLocalLog:Landroid/util/LocalLog;

    .line 113
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mRssiScoreSlope:I

    .line 114
    const/16 v0, 0x55

    iput v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mRssiScoreOffset:I

    .line 115
    const/16 v0, 0x18

    iput v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mSameBssidAward:I

    .line 116
    const/16 v0, 0x1e0

    iput v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mLastSelectionAward:I

    .line 117
    const/16 v0, 0x28

    iput v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mPasspointSecurityAward:I

    .line 118
    const/16 v0, 0x50

    iput v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mSecurityAward:I

    .line 119
    iput v3, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mUserPreferedBand:I

    .line 121
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 120
    iput-object v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mBssidBlacklist:Ljava/util/Map;

    .line 124
    iput-boolean v4, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mScreenOn:Z

    .line 126
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 125
    iput-object v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mReenableMap:Ljava/util/Map;

    .line 190
    iput-object p2, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mContext:Landroid/content/Context;

    .line 191
    iput-object p1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    .line 192
    iput-object p3, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 193
    iput-object p4, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mClock:Lcom/android/server/wifi/Clock;

    .line 195
    const-string/jumbo v0, "network_score"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkScoreManager;

    .line 194
    iput-object v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mScoreManager:Landroid/net/NetworkScoreManager;

    .line 196
    iget-object v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mScoreManager:Landroid/net/NetworkScoreManager;

    if-eqz v0, :cond_0

    .line 197
    new-instance v0, Lcom/android/server/wifi/WifiNetworkScoreCache;

    invoke-direct {v0, p2}, Lcom/android/server/wifi/WifiNetworkScoreCache;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mNetworkScoreCache:Lcom/android/server/wifi/WifiNetworkScoreCache;

    .line 198
    iget-object v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mScoreManager:Landroid/net/NetworkScoreManager;

    iget-object v1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mNetworkScoreCache:Lcom/android/server/wifi/WifiNetworkScoreCache;

    invoke-virtual {v0, v4, v1}, Landroid/net/NetworkScoreManager;->registerNetworkScoreCache(ILandroid/net/INetworkScoreCache;)V

    .line 205
    :goto_0
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 206
    const v1, 0x10e001b

    .line 205
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mRssiScoreSlope:I

    .line 207
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 208
    const v1, 0x10e001a

    .line 207
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mRssiScoreOffset:I

    .line 209
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 210
    const v1, 0x10e001c

    .line 209
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mSameBssidAward:I

    .line 211
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 212
    const v1, 0x10e001d

    .line 211
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mLastSelectionAward:I

    .line 213
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 214
    const v1, 0x10e001e

    .line 213
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mPasspointSecurityAward:I

    .line 215
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 216
    const v1, 0x10e001f

    .line 215
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mSecurityAward:I

    .line 217
    iget-object v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigManager;->mThresholdSaturatedRssi24:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget v1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mRssiScoreOffset:I

    add-int/2addr v0, v1

    .line 218
    iget v1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mRssiScoreSlope:I

    .line 217
    mul-int/2addr v0, v1

    .line 218
    iget-object v1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget-object v1, v1, Lcom/android/server/wifi/WifiConfigManager;->mBandAward5Ghz:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    .line 217
    add-int/2addr v0, v1

    .line 219
    iget-object v1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget-object v1, v1, Lcom/android/server/wifi/WifiConfigManager;->mCurrentNetworkBoost:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    .line 217
    add-int/2addr v0, v1

    .line 219
    iget v1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mSameBssidAward:I

    .line 217
    add-int/2addr v0, v1

    .line 219
    iget v1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mSecurityAward:I

    .line 217
    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mNoIntnetPenalty:I

    .line 189
    return-void

    .line 200
    :cond_0
    const-string/jumbo v0, "No network score service: Couldn\'t register as a WiFi score Manager, type=1 service= network_score"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLoge(Ljava/lang/String;)V

    .line 202
    iput-object v2, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mNetworkScoreCache:Lcom/android/server/wifi/WifiNetworkScoreCache;

    goto :goto_0
.end method

.method private getNetworkString(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
    .locals 2
    .param p1, "network"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v0, 0x0

    .line 227
    if-nez p1, :cond_0

    .line 228
    return-object v0

    .line 231
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isNetworkQualified(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 4
    .param p1, "currentNetwork"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v3, 0x0

    .line 244
    if-nez p1, :cond_0

    .line 245
    const-string/jumbo v1, "Disconnected"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 246
    return v3

    .line 248
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Current network is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ,ID is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 249
    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 248
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 254
    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-eqz v1, :cond_1

    .line 255
    const-string/jumbo v1, "Current is ephemeral. Start reselect"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 256
    return v3

    .line 260
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/WifiConfigManager;->isOpenNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 261
    const-string/jumbo v1, "Current network is open network"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 262
    return v3

    .line 266
    :cond_2
    iget-object v1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->is24GHz()Z

    move-result v1

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mUserPreferedBand:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    .line 267
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Current band dose not match user preference. Start Qualified Network Selection Current band = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 268
    iget-object v1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->is24GHz()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "2.4GHz band"

    .line 267
    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 269
    const-string/jumbo v2, "UserPreference band = "

    .line 267
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 269
    iget v2, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mUserPreferedBand:I

    .line 267
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 270
    return v3

    .line 269
    :cond_3
    const-string/jumbo v1, "5GHz band"

    goto :goto_0

    .line 273
    :cond_4
    iget-object v1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v0

    .line 274
    .local v0, "currentRssi":I
    iget-object v1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->is24GHz()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 275
    iget-object v1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget-object v1, v1, Lcom/android/server/wifi/WifiConfigManager;->mThresholdQualifiedRssi24:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 278
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Current band = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->is24GHz()Z

    move-result v1

    if-eqz v1, :cond_8

    const-string/jumbo v1, "2.4GHz band"

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 279
    const-string/jumbo v2, "current RSSI is: "

    .line 278
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 280
    return v3

    .line 276
    :cond_6
    iget-object v1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->is5GHz()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 277
    iget-object v1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget-object v1, v1, Lcom/android/server/wifi/WifiConfigManager;->mThresholdQualifiedRssi5:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-lt v0, v1, :cond_5

    .line 283
    :cond_7
    const/4 v1, 0x1

    return v1

    .line 278
    :cond_8
    const-string/jumbo v1, "5GHz band"

    goto :goto_1
.end method

.method private localLog(Ljava/lang/String;)V
    .locals 1
    .param p1, "log"    # Ljava/lang/String;

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mDbg:Z

    if-eqz v0, :cond_0

    .line 142
    const-string/jumbo v0, "WifiQualifiedNetworkSelector:"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 140
    :cond_0
    return-void
.end method

.method private localLoge(Ljava/lang/String;)V
    .locals 1
    .param p1, "log"    # Ljava/lang/String;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method private needQualifiedNetworkSelection(ZZZZ)Z
    .locals 10
    .param p1, "isLinkDebouncing"    # Z
    .param p2, "isConnected"    # Z
    .param p3, "isDisconnected"    # Z
    .param p4, "isSupplicantTransientState"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 313
    iget-object v1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mScanDetails:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 314
    const-string/jumbo v1, "empty scan result"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 315
    return v8

    .line 319
    :cond_0
    if-eqz p1, :cond_1

    .line 320
    const-string/jumbo v1, "Need not Qualified Network Selection during L2 debouncing"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 321
    return v8

    .line 323
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->skipQualifiedNetworkSelectionForAutoConnect:Z

    if-eqz v1, :cond_2

    .line 324
    const-string/jumbo v1, "Skip network selction, since auto connection disabled"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 325
    return v8

    .line 328
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Current connection state ("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 329
    if-eqz p2, :cond_9

    .line 331
    iget-object v1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mReenableMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 334
    iget-object v1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 335
    const-string/jumbo v4, "wifi_should_switch_network"

    .line 334
    invoke-static {v1, v4, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_3

    .line 336
    return v8

    .line 340
    :cond_3
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->skipNetworkSelectionForWPS:Z

    if-eqz v1, :cond_4

    .line 341
    const-string/jumbo v1, "Skip network selction due to WPS connected"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 342
    return v8

    .line 349
    :cond_4
    iget-object v1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiConfigManager;->getEnableAutoJoinWhenAssociated()Z

    move-result v1

    if-nez v1, :cond_5

    .line 350
    const-string/jumbo v1, "Switch network under connection is not allowed"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 351
    return v8

    .line 356
    :cond_5
    iget-wide v4, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mLastQualifiedNetworkSelectionTimeStamp:J

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-eqz v1, :cond_6

    .line 357
    iget-object v1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v1}, Lcom/android/server/wifi/Clock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mLastQualifiedNetworkSelectionTimeStamp:J

    sub-long v2, v4, v6

    .line 358
    .local v2, "gap":J
    const-wide/16 v4, 0x2710

    cmp-long v1, v2, v4

    if-gez v1, :cond_6

    .line 359
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Too short to last successful Qualified Network Selection Gap is:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 360
    const-string/jumbo v4, " ms!"

    .line 359
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 361
    return v8

    .line 366
    .end local v2    # "gap":J
    :cond_6
    iget-object v1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget-object v4, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 367
    .local v0, "currentNetwork":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_7

    .line 371
    return v8

    .line 374
    :cond_7
    iget-object v1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mCurrentConnectedNetwork:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->isNetworkQualified(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 376
    const-string/jumbo v1, "Current network is not qualified"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 377
    return v9

    .line 379
    :cond_8
    return v8

    .line 381
    .end local v0    # "currentNetwork":Landroid/net/wifi/WifiConfiguration;
    :cond_9
    if-eqz p3, :cond_a

    .line 382
    iput-object v5, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mCurrentConnectedNetwork:Landroid/net/wifi/WifiConfiguration;

    .line 383
    iput-object v5, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mCurrentBssid:Ljava/lang/String;

    .line 385
    if-eqz p4, :cond_b

    .line 386
    return v8

    .line 390
    :cond_a
    const-string/jumbo v1, "WifiStateMachine is not on connected or disconnected state"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 391
    return v8

    .line 394
    :cond_b
    return v9
.end method

.method private static toScanId(Landroid/net/wifi/ScanResult;)Ljava/lang/String;
    .locals 4
    .param p0, "scanResult"    # Landroid/net/wifi/ScanResult;

    .prologue
    .line 1079
    if-nez p0, :cond_0

    const-string/jumbo v0, "NULL"

    :goto_0
    return-object v0

    .line 1080
    :cond_0
    const-string/jumbo v0, "%s:%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private updateBssidBlacklist()V
    .locals 6

    .prologue
    .line 631
    iget-object v2, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mBssidBlacklist:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 632
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 633
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;

    .line 634
    .local v1, "status":Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;
    if-eqz v1, :cond_0

    iget-boolean v2, v1, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;->mIsBlacklisted:Z

    if-eqz v2, :cond_0

    .line 635
    iget-object v2, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v2}, Lcom/android/server/wifi/Clock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, v1, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;->mBlacklistedTimeStamp:J

    sub-long/2addr v2, v4

    .line 636
    const-wide/32 v4, 0x493e0

    .line 635
    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 637
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 630
    .end local v1    # "status":Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;
    :cond_1
    return-void
.end method

.method private updateSavedNetworkSelectionStatus()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 466
    iget-object v7, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v7}, Lcom/android/server/wifi/WifiConfigManager;->getSavedNetworks()Ljava/util/List;

    move-result-object v4

    .line 467
    .local v4, "savedNetworks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_0

    .line 468
    const-string/jumbo v7, "no saved network"

    invoke-direct {p0, v7}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 469
    return-void

    .line 472
    :cond_0
    new-instance v5, Ljava/lang/StringBuffer;

    const-string/jumbo v7, "Saved Network List\n"

    invoke-direct {v5, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 473
    .local v5, "sbuf":Ljava/lang/StringBuffer;
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "network$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 474
    .local v2, "network":Landroid/net/wifi/WifiConfiguration;
    iget-object v7, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget v8, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v7, v8}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 476
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v6

    .line 479
    .local v6, "status":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    invoke-virtual {v6}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNetworkTemporaryDisabled()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 480
    iget-object v7, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget v8, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v7, v8}, Lcom/android/server/wifi/WifiConfigManager;->tryEnableQualifiedNetwork(I)Z

    .line 484
    :cond_1
    invoke-virtual {v6}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionDisableReason()I

    move-result v7

    .line 485
    const/4 v8, 0x2

    .line 484
    if-ne v7, v8, :cond_2

    .line 486
    iget-object v7, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mReenableMap:Ljava/util/Map;

    iget v8, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 487
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "put network "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " into the list"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 488
    iget-object v7, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mReenableMap:Ljava/util/Map;

    iget v8, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    :cond_2
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setCandidate(Landroid/net/wifi/ScanResult;)V

    .line 496
    const/high16 v7, -0x80000000

    invoke-virtual {v6, v7}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setCandidateScore(I)V

    .line 497
    invoke-virtual {v6, v10}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setSeenInLastQualifiedNetworkSelection(Z)V

    .line 500
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "    "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->getNetworkString(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " User Preferred BSSID:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 501
    iget-object v8, v2, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 500
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 501
    const-string/jumbo v8, " FQDN:"

    .line 500
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 501
    iget-object v8, v2, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    .line 500
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 501
    const-string/jumbo v8, " "

    .line 500
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 502
    invoke-virtual {v6}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkStatusString()Ljava/lang/String;

    move-result-object v8

    .line 500
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 502
    const-string/jumbo v8, " Disable account: "

    .line 500
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 503
    const/4 v1, 0x0

    .line 504
    .local v1, "index":I
    :goto_1
    const/16 v7, 0xa

    .line 503
    if-ge v1, v7, :cond_3

    .line 505
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getDisableReasonCounter(I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 504
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 507
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Connect Choice:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getConnectChoice()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " set time:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 508
    invoke-virtual {v6}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getConnectChoiceTimestamp()J

    move-result-wide v8

    .line 507
    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 509
    const-string/jumbo v7, "\n"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 511
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v1    # "index":I
    .end local v2    # "network":Landroid/net/wifi/WifiConfiguration;
    .end local v6    # "status":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    :cond_4
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 465
    return-void
.end method


# virtual methods
.method calculateBssidScore(Landroid/net/wifi/ScanResult;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;ZZLjava/lang/StringBuffer;)I
    .locals 12
    .param p1, "scanResult"    # Landroid/net/wifi/ScanResult;
    .param p2, "network"    # Landroid/net/wifi/WifiConfiguration;
    .param p3, "currentNetwork"    # Landroid/net/wifi/WifiConfiguration;
    .param p4, "sameBssid"    # Z
    .param p5, "sameSelect"    # Z
    .param p6, "sbuf"    # Ljava/lang/StringBuffer;

    .prologue
    .line 403
    iget v5, p1, Landroid/net/wifi/ScanResult;->level:I

    iget-object v8, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget-object v8, v8, Lcom/android/server/wifi/WifiConfigManager;->mThresholdSaturatedRssi24:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v8

    if-gt v5, v8, :cond_7

    .line 404
    iget v3, p1, Landroid/net/wifi/ScanResult;->level:I

    .line 405
    .local v3, "rssi":I
    :goto_0
    iget v5, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mRssiScoreOffset:I

    add-int/2addr v5, v3

    iget v8, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mRssiScoreSlope:I

    mul-int/2addr v5, v8

    add-int/lit8 v4, v5, 0x0

    .line 406
    .local v4, "score":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " RSSI score: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p6

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 407
    invoke-virtual {p1}, Landroid/net/wifi/ScanResult;->is5GHz()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 409
    iget-object v5, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget-object v5, v5, Lcom/android/server/wifi/WifiConfigManager;->mBandAward5Ghz:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    add-int/2addr v4, v5

    .line 410
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " 5GHz bonus: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget-object v8, v8, Lcom/android/server/wifi/WifiConfigManager;->mBandAward5Ghz:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p6

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 414
    :cond_0
    if-eqz p5, :cond_1

    .line 415
    iget-object v5, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v5}, Lcom/android/server/wifi/Clock;->elapsedRealtime()J

    move-result-wide v8

    .line 416
    iget-object v5, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiConfigManager;->getLastSelectedTimeStamp()J

    move-result-wide v10

    .line 415
    sub-long v6, v8, v10

    .line 418
    .local v6, "timeDifference":J
    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_1

    .line 419
    iget v5, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mLastSelectionAward:I

    const-wide/16 v8, 0x3e8

    div-long v8, v6, v8

    const-wide/16 v10, 0x3c

    div-long/2addr v8, v10

    long-to-int v8, v8

    sub-int v2, v5, v8

    .line 420
    .local v2, "bonus":I
    if-lez v2, :cond_8

    move v5, v2

    :goto_1
    add-int/2addr v4, v5

    .line 421
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " User selected it last time "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-wide/16 v8, 0x3e8

    div-long v8, v6, v8

    const-wide/16 v10, 0x3c

    div-long/2addr v8, v10

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 422
    const-string/jumbo v8, " minutes ago, bonus:"

    .line 421
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p6

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 427
    .end local v2    # "bonus":I
    .end local v6    # "timeDifference":J
    :cond_1
    if-eq p2, p3, :cond_2

    invoke-virtual {p2, p3}, Landroid/net/wifi/WifiConfiguration;->isLinked(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 428
    :cond_2
    iget-object v5, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget-object v5, v5, Lcom/android/server/wifi/WifiConfigManager;->mCurrentNetworkBoost:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    add-int/2addr v4, v5

    .line 429
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " Same network with current associated. Bonus: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 430
    iget-object v8, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget-object v8, v8, Lcom/android/server/wifi/WifiConfigManager;->mCurrentNetworkBoost:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v8

    .line 429
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p6

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 434
    :cond_3
    if-eqz p4, :cond_4

    .line 435
    iget v5, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mSameBssidAward:I

    add-int/2addr v4, v5

    .line 436
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " Same BSSID with current association. Bonus: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v8, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mSameBssidAward:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p6

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 440
    :cond_4
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 441
    iget v5, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mPasspointSecurityAward:I

    add-int/2addr v4, v5

    .line 442
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " Passpoint Bonus:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v8, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mPasspointSecurityAward:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p6

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 450
    :cond_5
    :goto_2
    iget v5, p2, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    if-lez v5, :cond_6

    iget-boolean v5, p2, Landroid/net/wifi/WifiConfiguration;->validatedInternetAccess:Z

    if-eqz v5, :cond_a

    .line 456
    :cond_6
    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " Score for scanResult: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, " and Network ID: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 457
    iget v8, p2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 456
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 457
    const-string/jumbo v8, " final score:"

    .line 456
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 457
    const-string/jumbo v8, "\n\n"

    .line 456
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p6

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 459
    return v4

    .line 404
    .end local v3    # "rssi":I
    .end local v4    # "score":I
    :cond_7
    iget-object v5, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget-object v5, v5, Lcom/android/server/wifi/WifiConfigManager;->mThresholdSaturatedRssi24:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    .restart local v3    # "rssi":I
    goto/16 :goto_0

    .line 420
    .restart local v2    # "bonus":I
    .restart local v4    # "score":I
    .restart local v6    # "timeDifference":J
    :cond_8
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 443
    .end local v2    # "bonus":I
    .end local v6    # "timeDifference":J
    :cond_9
    iget-object v5, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v5, p2}, Lcom/android/server/wifi/WifiConfigManager;->isOpenNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 444
    iget v5, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mSecurityAward:I

    add-int/2addr v4, v5

    .line 445
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " Secure network Bonus:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v8, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mSecurityAward:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p6

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 451
    :cond_a
    iget v5, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mNoIntnetPenalty:I

    sub-int/2addr v4, v5

    .line 452
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " No internet Penalty:-"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v8, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mNoIntnetPenalty:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p6

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_3
.end method

.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1085
    const-string/jumbo v0, "Dump of WifiQualifiedNetworkSelector"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1086
    const-string/jumbo v0, "WifiQualifiedNetworkSelector - Log Begin ----"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1087
    iget-object v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1, p2, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1088
    const-string/jumbo v0, "WifiQualifiedNetworkSelector - Log End ----"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1084
    return-void
.end method

.method public enableBssidForQualityNetworkSelection(Ljava/lang/String;Z)Z
    .locals 6
    .param p1, "bssid"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 601
    if-eqz p2, :cond_1

    .line 602
    iget-object v4, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mBssidBlacklist:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0

    .line 604
    :cond_1
    if-eqz p1, :cond_2

    .line 605
    iget-object v4, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mBssidBlacklist:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;

    .line 606
    .local v1, "status":Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;
    if-nez v1, :cond_3

    .line 608
    new-instance v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;

    invoke-direct {v0, v5}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;-><init>(Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;)V

    .line 609
    .local v0, "newStatus":Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;
    iget v2, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;->mCounter:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;->mCounter:I

    .line 610
    iget-object v2, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mBssidBlacklist:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    .end local v0    # "newStatus":Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;
    .end local v1    # "status":Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;
    :cond_2
    return v3

    .line 611
    .restart local v1    # "status":Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;
    :cond_3
    iget-boolean v4, v1, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;->mIsBlacklisted:Z

    if-nez v4, :cond_2

    .line 612
    iget v4, v1, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;->mCounter:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v1, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;->mCounter:I

    .line 613
    iget v4, v1, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;->mCounter:I

    const/4 v5, 0x3

    if-lt v4, v5, :cond_2

    .line 614
    iput-boolean v2, v1, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;->mIsBlacklisted:Z

    .line 615
    iget-object v3, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v3}, Lcom/android/server/wifi/Clock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;->mBlacklistedTimeStamp:J

    .line 616
    return v2
.end method

.method enableVerboseLogging(I)V
    .locals 1
    .param p1, "verbose"    # I

    .prologue
    const/4 v0, 0x1

    .line 223
    if-gtz p1, :cond_0

    :cond_0
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mDbg:Z

    .line 222
    return-void
.end method

.method public getConnetionTargetNetwork()Landroid/net/wifi/WifiConfiguration;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mCurrentConnectedNetwork:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method getExternalScoreCandidate(Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;)Landroid/net/wifi/WifiConfiguration;
    .locals 10
    .param p1, "scoreEvaluator"    # Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1011
    const/4 v0, 0x0

    .line 1012
    .local v0, "networkCandidate":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p1}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;->getBestCandidateType()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 1052
    const-string/jumbo v4, "Unhandled ExternalScoreEvaluator case. No candidate selected."

    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLoge(Ljava/lang/String;)V

    .line 1055
    .end local v0    # "networkCandidate":Landroid/net/wifi/WifiConfiguration;
    :goto_0
    return-object v0

    .line 1015
    .restart local v0    # "networkCandidate":Landroid/net/wifi/WifiConfiguration;
    :pswitch_0
    invoke-virtual {p1}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;->getScanResultCandidate()Landroid/net/wifi/ScanResult;

    move-result-object v3

    .line 1017
    .local v3, "untrustedScanResultCandidate":Landroid/net/wifi/ScanResult;
    iget-object v4, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v4, v3}, Lcom/android/server/wifi/WifiConfigManager;->wifiConfigurationFromScanResult(Landroid/net/wifi/ScanResult;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    .line 1021
    .local v2, "unTrustedNetworkCandidate":Landroid/net/wifi/WifiConfiguration;
    iput-boolean v7, v2, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    .line 1022
    iget-object v4, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mNetworkScoreCache:Lcom/android/server/wifi/WifiNetworkScoreCache;

    if-eqz v4, :cond_0

    .line 1024
    iget-object v4, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mNetworkScoreCache:Lcom/android/server/wifi/WifiNetworkScoreCache;

    invoke-virtual {v4, v3}, Lcom/android/server/wifi/WifiNetworkScoreCache;->getMeteredHint(Landroid/net/wifi/ScanResult;)Z

    move-result v4

    .line 1023
    iput-boolean v4, v2, Landroid/net/wifi/WifiConfiguration;->meteredHint:Z

    .line 1026
    :cond_0
    iget-object v4, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    .line 1027
    const/4 v5, -0x1

    .line 1026
    invoke-virtual {v4, v2, v5}, Lcom/android/server/wifi/WifiConfigManager;->saveNetwork(Landroid/net/wifi/WifiConfiguration;I)Lcom/android/server/wifi/NetworkUpdateResult;

    .line 1029
    const-string/jumbo v4, "new ephemeral candidate %s network ID:%d, meteredHint=%b"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    .line 1031
    invoke-static {v3}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->toScanId(Landroid/net/wifi/ScanResult;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    iget v6, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    .line 1032
    iget-boolean v6, v2, Landroid/net/wifi/WifiConfiguration;->meteredHint:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v9

    .line 1029
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 1034
    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setCandidate(Landroid/net/wifi/ScanResult;)V

    .line 1036
    move-object v0, v2

    .line 1037
    .local v0, "networkCandidate":Landroid/net/wifi/WifiConfiguration;
    goto :goto_0

    .line 1040
    .end local v2    # "unTrustedNetworkCandidate":Landroid/net/wifi/WifiConfiguration;
    .end local v3    # "untrustedScanResultCandidate":Landroid/net/wifi/ScanResult;
    .local v0, "networkCandidate":Landroid/net/wifi/WifiConfiguration;
    :pswitch_1
    invoke-virtual {p1}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;->getScanResultCandidate()Landroid/net/wifi/ScanResult;

    move-result-object v1

    .line 1041
    .local v1, "scanResultCandidate":Landroid/net/wifi/ScanResult;
    invoke-virtual {p1}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;->getSavedConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1042
    .local v0, "networkCandidate":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setCandidate(Landroid/net/wifi/ScanResult;)V

    .line 1043
    const-string/jumbo v4, "new scored candidate %s network ID:%d"

    new-array v5, v9, [Ljava/lang/Object;

    .line 1044
    invoke-static {v1}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->toScanId(Landroid/net/wifi/ScanResult;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    .line 1043
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    goto :goto_0

    .line 1048
    .end local v1    # "scanResultCandidate":Landroid/net/wifi/ScanResult;
    .local v0, "networkCandidate":Landroid/net/wifi/WifiConfiguration;
    :pswitch_2
    const-string/jumbo v4, "ExternalScoreEvaluator did not see any good candidates."

    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    goto :goto_0

    .line 1012
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getFilteredScanDetails()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/android/server/wifi/ScanDetail;",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mFilteredScanDetails:Ljava/util/List;

    return-object v0
.end method

.method getNetworkScore(Landroid/net/wifi/ScanResult;Z)Ljava/lang/Integer;
    .locals 3
    .param p1, "scanResult"    # Landroid/net/wifi/ScanResult;
    .param p2, "isActiveNetwork"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1067
    iget-object v1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mNetworkScoreCache:Lcom/android/server/wifi/WifiNetworkScoreCache;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mNetworkScoreCache:Lcom/android/server/wifi/WifiNetworkScoreCache;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/WifiNetworkScoreCache;->isScoredNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1068
    iget-object v1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mNetworkScoreCache:Lcom/android/server/wifi/WifiNetworkScoreCache;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wifi/WifiNetworkScoreCache;->getNetworkScore(Landroid/net/wifi/ScanResult;Z)I

    move-result v0

    .line 1069
    .local v0, "networkScore":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->toScanId(Landroid/net/wifi/ScanResult;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " has score: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 1070
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 1072
    .end local v0    # "networkScore":I
    :cond_0
    return-object v2
.end method

.method public isBssidDisabled(Ljava/lang/String;)Z
    .locals 2
    .param p1, "bssid"    # Ljava/lang/String;

    .prologue
    .line 650
    iget-object v1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mBssidBlacklist:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;

    .line 651
    .local v0, "status":Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    iget-boolean v1, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;->mIsBlacklisted:Z

    goto :goto_0
.end method

.method public selectQualifiedNetwork(ZZLjava/util/List;ZZZZ)Landroid/net/wifi/WifiConfiguration;
    .locals 54
    .param p1, "forceSelectNetwork"    # Z
    .param p2, "isUntrustedConnectionsAllowed"    # Z
    .param p4, "isLinkDebouncing"    # Z
    .param p5, "isConnected"    # Z
    .param p6, "isDisconnected"    # Z
    .param p7, "isSupplicantTransient"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/ScanDetail;",
            ">;ZZZZ)",
            "Landroid/net/wifi/WifiConfiguration;"
        }
    .end annotation

    .prologue
    .line 681
    .local p3, "scanDetails":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/ScanDetail;>;"
    const-string/jumbo v6, "==========start qualified Network Selection=========="

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 682
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mScanDetails:Ljava/util/List;

    .line 683
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 684
    .local v23, "filteredScanDetails":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Lcom/android/server/wifi/ScanDetail;Landroid/net/wifi/WifiConfiguration;>;>;"
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mCurrentConnectedNetwork:Landroid/net/wifi/WifiConfiguration;

    if-nez v6, :cond_0

    .line 686
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v9}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v9

    invoke-virtual {v6, v9}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v6

    .line 685
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mCurrentConnectedNetwork:Landroid/net/wifi/WifiConfiguration;

    .line 691
    :cond_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mCurrentBssid:Ljava/lang/String;

    .line 693
    if-nez p1, :cond_1

    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p5

    move/from16 v3, p6

    move/from16 v4, p7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->needQualifiedNetworkSelection(ZZZZ)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 701
    :cond_1
    const/high16 v17, -0x80000000

    .line 702
    .local v17, "currentHighestScore":I
    const/16 v42, 0x0

    .line 703
    .local v42, "scanResultCandidate":Landroid/net/wifi/ScanResult;
    const/16 v32, 0x0

    .line 705
    .local v32, "networkCandidate":Landroid/net/wifi/WifiConfiguration;
    new-instance v22, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mLocalLog:Landroid/util/LocalLog;

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mDbg:Z

    move-object/from16 v0, v22

    invoke-direct {v0, v6, v9}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;-><init>(Landroid/util/LocalLog;Z)V

    .line 706
    .local v22, "externalScoreEvaluator":Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiConfigManager;->getLastSelectedConfiguration()Ljava/lang/String;

    move-result-object v26

    .line 708
    .local v26, "lastUserSelectedNetWorkKey":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v27

    .line 709
    .local v27, "lastUserSelectedNetwork":Landroid/net/wifi/WifiConfiguration;
    if-eqz v27, :cond_2

    .line 710
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Last selection is "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v27

    iget-object v9, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v9, " Time to now: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 711
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v9}, Lcom/android/server/wifi/Clock;->elapsedRealtime()J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v9}, Lcom/android/server/wifi/WifiConfigManager;->getLastSelectedTimeStamp()J

    move-result-wide v52

    sub-long v10, v10, v52

    .line 712
    const-wide/16 v52, 0x3e8

    .line 711
    div-long v10, v10, v52

    .line 712
    const-wide/16 v52, 0x3c

    .line 711
    div-long v10, v10, v52

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 712
    const-string/jumbo v9, " minutes"

    .line 711
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 710
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 715
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->updateSavedNetworkSelectionStatus()V

    .line 716
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->updateBssidBlacklist()V

    .line 718
    new-instance v48, Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mReenableMap:Ljava/util/Map;

    move-object/from16 v0, v48

    invoke-direct {v0, v6}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 719
    .local v48, "tmpReenableMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    new-instance v28, Ljava/lang/StringBuffer;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuffer;-><init>()V

    .line 720
    .local v28, "lowSignalScan":Ljava/lang/StringBuffer;
    new-instance v34, Ljava/lang/StringBuffer;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuffer;-><init>()V

    .line 721
    .local v34, "notSavedScan":Ljava/lang/StringBuffer;
    new-instance v33, Ljava/lang/StringBuffer;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuffer;-><init>()V

    .line 722
    .local v33, "noValidSsid":Ljava/lang/StringBuffer;
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    .line 723
    .local v12, "scoreHistory":Ljava/lang/StringBuffer;
    new-instance v50, Ljava/util/ArrayList;

    invoke-direct/range {v50 .. v50}, Ljava/util/ArrayList;-><init>()V

    .line 726
    .local v50, "unscoredNetworks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/NetworkKey;>;"
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mScanDetails:Ljava/util/List;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v40

    .end local v32    # "networkCandidate":Landroid/net/wifi/WifiConfiguration;
    .end local v42    # "scanResultCandidate":Landroid/net/wifi/ScanResult;
    .local v40, "scanDetail$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_25

    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Lcom/android/server/wifi/ScanDetail;

    .line 727
    .local v39, "scanDetail":Lcom/android/server/wifi/ScanDetail;
    invoke-virtual/range {v39 .. v39}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v7

    .line 729
    .local v7, "scanResult":Landroid/net/wifi/ScanResult;
    iget-object v6, v7, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v6, :cond_4

    iget-object v6, v7, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 730
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mDbg:Z

    if-eqz v6, :cond_3

    .line 732
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v7, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v9, " / "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v33

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 695
    .end local v7    # "scanResult":Landroid/net/wifi/ScanResult;
    .end local v12    # "scoreHistory":Ljava/lang/StringBuffer;
    .end local v17    # "currentHighestScore":I
    .end local v22    # "externalScoreEvaluator":Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;
    .end local v26    # "lastUserSelectedNetWorkKey":Ljava/lang/String;
    .end local v27    # "lastUserSelectedNetwork":Landroid/net/wifi/WifiConfiguration;
    .end local v28    # "lowSignalScan":Ljava/lang/StringBuffer;
    .end local v33    # "noValidSsid":Ljava/lang/StringBuffer;
    .end local v34    # "notSavedScan":Ljava/lang/StringBuffer;
    .end local v39    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    .end local v40    # "scanDetail$iterator":Ljava/util/Iterator;
    .end local v48    # "tmpReenableMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v50    # "unscoredNetworks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/NetworkKey;>;"
    :cond_5
    const-string/jumbo v6, "Quit qualified Network Selection since it is not forced and current network is qualified already"

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 697
    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mFilteredScanDetails:Ljava/util/List;

    .line 698
    const/4 v6, 0x0

    return-object v6

    .line 737
    .restart local v7    # "scanResult":Landroid/net/wifi/ScanResult;
    .restart local v12    # "scoreHistory":Ljava/lang/StringBuffer;
    .restart local v17    # "currentHighestScore":I
    .restart local v22    # "externalScoreEvaluator":Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;
    .restart local v26    # "lastUserSelectedNetWorkKey":Ljava/lang/String;
    .restart local v27    # "lastUserSelectedNetwork":Landroid/net/wifi/WifiConfiguration;
    .restart local v28    # "lowSignalScan":Ljava/lang/StringBuffer;
    .restart local v33    # "noValidSsid":Ljava/lang/StringBuffer;
    .restart local v34    # "notSavedScan":Ljava/lang/StringBuffer;
    .restart local v39    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    .restart local v40    # "scanDetail$iterator":Ljava/util/Iterator;
    .restart local v48    # "tmpReenableMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .restart local v50    # "unscoredNetworks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/NetworkKey;>;"
    :cond_6
    invoke-static {v7}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->toScanId(Landroid/net/wifi/ScanResult;)Ljava/lang/String;

    move-result-object v41

    .line 739
    .local v41, "scanId":Ljava/lang/String;
    const/16 v19, 0x0

    .line 741
    .local v19, "enableNetworkWithGoodRssi":Z
    invoke-virtual {v7}, Landroid/net/wifi/ScanResult;->is24GHz()Z

    move-result v6

    if-eqz v6, :cond_8

    iget v6, v7, Landroid/net/wifi/ScanResult;->level:I

    .line 742
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget-object v9, v9, Lcom/android/server/wifi/WifiConfigManager;->mThresholdMinimumRssi24:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v9

    .line 741
    if-ge v6, v9, :cond_8

    .line 745
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mDbg:Z

    if-eqz v6, :cond_3

    .line 746
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v41

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v9, "("

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Landroid/net/wifi/ScanResult;->is24GHz()Z

    move-result v6

    if-eqz v6, :cond_e

    const-string/jumbo v6, "2.4GHz"

    :goto_1
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 747
    const-string/jumbo v9, ")"

    .line 746
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 747
    iget v9, v7, Landroid/net/wifi/ScanResult;->level:I

    .line 746
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 747
    const-string/jumbo v9, " / "

    .line 746
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 743
    :cond_8
    invoke-virtual {v7}, Landroid/net/wifi/ScanResult;->is5GHz()Z

    move-result v6

    if-eqz v6, :cond_9

    iget v6, v7, Landroid/net/wifi/ScanResult;->level:I

    .line 744
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget-object v9, v9, Lcom/android/server/wifi/WifiConfigManager;->mThresholdMinimumRssi5:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v9

    .line 743
    if-lt v6, v9, :cond_7

    .line 751
    :cond_9
    invoke-virtual {v7}, Landroid/net/wifi/ScanResult;->is24GHz()Z

    move-result v6

    if-eqz v6, :cond_f

    iget v6, v7, Landroid/net/wifi/ScanResult;->level:I

    const/16 v9, -0x50

    if-le v6, v9, :cond_f

    .line 753
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mDbg:Z

    if-eqz v6, :cond_a

    .line 754
    const-string/jumbo v6, "WifiQualifiedNetworkSelector:"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v7, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " signal level is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v7, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    :cond_a
    const/16 v19, 0x1

    .line 759
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mScreenOn:Z

    if-eqz v6, :cond_c

    if-eqz v19, :cond_c

    if-eqz p6, :cond_c

    .line 760
    if-eqz p5, :cond_10

    .line 785
    :cond_c
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget-object v9, v7, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v6, v9}, Lcom/android/server/wifi/WifiConfigManager;->isBssidBlacklisted(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_d

    .line 786
    iget-object v6, v7, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->isBssidDisabled(Ljava/lang/String;)Z

    move-result v6

    .line 785
    if-eqz v6, :cond_12

    .line 788
    :cond_d
    const-string/jumbo v6, "WifiQualifiedNetworkSelector:"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v41

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " is in blacklist."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 746
    :cond_e
    const-string/jumbo v6, "5GHz"

    goto/16 :goto_1

    .line 752
    :cond_f
    invoke-virtual {v7}, Landroid/net/wifi/ScanResult;->is5GHz()Z

    move-result v6

    if-eqz v6, :cond_b

    iget v6, v7, Landroid/net/wifi/ScanResult;->level:I

    const/16 v9, -0x4d

    if-le v6, v9, :cond_b

    goto :goto_2

    .line 760
    :cond_10
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mReenableMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_c

    .line 762
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mReenableMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .local v21, "entry$iterator":Ljava/util/Iterator;
    :cond_11
    :goto_3
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/Map$Entry;

    .line 763
    .local v20, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v29

    .line 764
    .local v29, "netId":I
    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v9, 0x3

    if-gt v6, v9, :cond_11

    .line 769
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    move/from16 v0, v29

    invoke-virtual {v6, v0}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v14

    .line 771
    .local v14, "config":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v6, v14, v7}, Lcom/android/server/wifi/WifiConfigManager;->isConfigMatchScanresult(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/ScanResult;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 772
    const-string/jumbo v6, "WifiQualifiedNetworkSelector:"

    const-string/jumbo v9, "re-enable disabled network because rssi is good."

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    iget-object v6, v7, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    const/4 v9, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v9}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->enableBssidForQualityNetworkSelection(Ljava/lang/String;Z)Z

    .line 774
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget-object v9, v7, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v6, v9}, Lcom/android/server/wifi/WifiConfigManager;->removeBlackListBssid(Ljava/lang/String;)V

    .line 775
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    const/4 v9, 0x1

    const/16 v10, 0x3e8

    invoke-virtual {v6, v14, v9, v10}, Lcom/android/server/wifi/WifiConfigManager;->enableNetwork(Landroid/net/wifi/WifiConfiguration;ZI)Z

    .line 777
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mReenableMap:Ljava/util/Map;

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v9, v10, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 793
    .end local v14    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v20    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v21    # "entry$iterator":Ljava/util/Iterator;
    .end local v29    # "netId":I
    :cond_12
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mNetworkScoreCache:Lcom/android/server/wifi/WifiNetworkScoreCache;

    if-eqz v6, :cond_13

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mNetworkScoreCache:Lcom/android/server/wifi/WifiNetworkScoreCache;

    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiNetworkScoreCache;->isScoredNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 809
    :cond_13
    :goto_4
    const/16 v38, 0x0

    .line 811
    .local v38, "potentiallyEphemeral":Z
    const/16 v37, 0x0

    .line 813
    .local v37, "potentialEphemeralCandidate":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    .line 814
    if-nez p7, :cond_16

    if-nez p5, :cond_16

    move/from16 v6, p4

    .line 813
    :goto_5
    move-object/from16 v0, v39

    invoke-virtual {v9, v0, v6}, Lcom/android/server/wifi/WifiConfigManager;->updateSavedNetworkWithNewScanDetail(Lcom/android/server/wifi/ScanDetail;Z)Ljava/util/List;

    move-result-object v13

    .line 815
    .local v13, "associatedWifiConfigurations":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-nez v13, :cond_17

    .line 816
    const/16 v38, 0x1

    .line 817
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mDbg:Z

    if-eqz v6, :cond_14

    .line 818
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v41

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v9, " / "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v34

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 831
    .end local v37    # "potentialEphemeralCandidate":Landroid/net/wifi/WifiConfiguration;
    :cond_14
    :goto_6
    if-eqz v38, :cond_18

    .line 832
    if-eqz p2, :cond_3

    .line 833
    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v6}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->getNetworkScore(Landroid/net/wifi/ScanResult;Z)Ljava/lang/Integer;

    move-result-object v30

    .line 834
    .local v30, "netScore":Ljava/lang/Integer;
    if-eqz v30, :cond_3

    .line 835
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget-object v9, v7, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v6, v9}, Lcom/android/server/wifi/WifiConfigManager;->wasEphemeralNetworkDeleted(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 836
    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v7}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;->evalUntrustedCandidate(Ljava/lang/Integer;Landroid/net/wifi/ScanResult;)V

    .line 838
    move-object/from16 v0, v39

    move-object/from16 v1, v37

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    move-object/from16 v0, v23

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 798
    .end local v13    # "associatedWifiConfigurations":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v30    # "netScore":Ljava/lang/Integer;
    .end local v38    # "potentiallyEphemeral":Z
    :cond_15
    :try_start_0
    new-instance v51, Landroid/net/WifiKey;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "\""

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v9, v7, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v9, "\""

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v9, v7, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v0, v51

    invoke-direct {v0, v6, v9}, Landroid/net/WifiKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    .local v51, "wifiKey":Landroid/net/WifiKey;
    new-instance v35, Landroid/net/NetworkKey;

    move-object/from16 v0, v35

    move-object/from16 v1, v51

    invoke-direct {v0, v1}, Landroid/net/NetworkKey;-><init>(Landroid/net/WifiKey;)V

    .line 801
    .local v35, "ntwkKey":Landroid/net/NetworkKey;
    move-object/from16 v0, v50

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    .line 802
    .end local v35    # "ntwkKey":Landroid/net/NetworkKey;
    .end local v51    # "wifiKey":Landroid/net/WifiKey;
    :catch_0
    move-exception v18

    .line 803
    .local v18, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v6, "WifiQualifiedNetworkSelector:"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Invalid SSID="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v7, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " BSSID="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v7, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 804
    const-string/jumbo v10, " for network score. Skip."

    .line 803
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 814
    .end local v18    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v37    # "potentialEphemeralCandidate":Landroid/net/wifi/WifiConfiguration;
    .restart local v38    # "potentiallyEphemeral":Z
    :cond_16
    const/4 v6, 0x1

    goto/16 :goto_5

    .line 820
    .restart local v13    # "associatedWifiConfigurations":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :cond_17
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v6

    const/4 v9, 0x1

    if-ne v6, v9, :cond_14

    .line 822
    const/4 v6, 0x0

    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/WifiConfiguration;

    .line 823
    .local v8, "network":Landroid/net/wifi/WifiConfiguration;
    iget-boolean v6, v8, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-eqz v6, :cond_14

    .line 824
    move-object/from16 v37, v8

    .line 825
    .local v37, "potentialEphemeralCandidate":Landroid/net/wifi/WifiConfiguration;
    const/16 v38, 0x1

    goto/16 :goto_6

    .line 848
    .end local v8    # "network":Landroid/net/wifi/WifiConfiguration;
    .end local v37    # "potentialEphemeralCandidate":Landroid/net/wifi/WifiConfiguration;
    :cond_18
    const/high16 v24, -0x80000000

    .line 850
    .local v24, "highestScore":I
    const/4 v15, 0x0

    .line 851
    .local v15, "configurationCandidateForThisScan":Landroid/net/wifi/WifiConfiguration;
    const/16 v36, 0x0

    .line 852
    .local v36, "potentialCandidate":Landroid/net/wifi/WifiConfiguration;
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v31

    .end local v15    # "configurationCandidateForThisScan":Landroid/net/wifi/WifiConfiguration;
    .end local v36    # "potentialCandidate":Landroid/net/wifi/WifiConfiguration;
    .local v31, "network$iterator":Ljava/util/Iterator;
    :cond_19
    :goto_7
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_23

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/WifiConfiguration;

    .line 854
    .restart local v8    # "network":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {v8}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v44

    .line 855
    .local v44, "status":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    const/4 v6, 0x1

    move-object/from16 v0, v44

    invoke-virtual {v0, v6}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setSeenInLastQualifiedNetworkSelection(Z)V

    .line 856
    if-nez v36, :cond_1a

    .line 857
    move-object/from16 v36, v8

    .line 859
    :cond_1a
    invoke-virtual/range {v44 .. v44}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNetworkEnabled()Z

    move-result v6

    if-eqz v6, :cond_19

    .line 861
    iget-object v6, v8, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    if-eqz v6, :cond_1b

    iget-object v6, v8, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    const-string/jumbo v9, "any"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 872
    :cond_1b
    iget-boolean v6, v8, Landroid/net/wifi/WifiConfiguration;->useExternalScores:Z

    if-eqz v6, :cond_1d

    .line 873
    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v6}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->getNetworkScore(Landroid/net/wifi/ScanResult;Z)Ljava/lang/Integer;

    move-result-object v30

    .line 874
    .restart local v30    # "netScore":Ljava/lang/Integer;
    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v8, v7}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;->evalSavedCandidate(Ljava/lang/Integer;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/ScanResult;)V

    goto :goto_7

    .line 862
    .end local v30    # "netScore":Ljava/lang/Integer;
    :cond_1c
    iget-object v6, v8, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    iget-object v9, v7, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1b

    .line 865
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Network: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->getNetworkString(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v9, " has specified"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v9, "BSSID:"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 866
    iget-object v9, v8, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 865
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 866
    const-string/jumbo v9, ". Skip "

    .line 865
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 866
    iget-object v9, v7, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 865
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 878
    :cond_1d
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mCurrentConnectedNetwork:Landroid/net/wifi/WifiConfiguration;

    .line 879
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mCurrentBssid:Ljava/lang/String;

    if-nez v6, :cond_21

    const/4 v10, 0x0

    .line 880
    :goto_8
    if-nez v27, :cond_22

    :cond_1e
    const/4 v11, 0x0

    :goto_9
    move-object/from16 v6, p0

    .line 878
    invoke-virtual/range {v6 .. v12}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->calculateBssidScore(Landroid/net/wifi/ScanResult;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;ZZLjava/lang/StringBuffer;)I

    move-result v43

    .line 882
    .local v43, "score":I
    move/from16 v0, v43

    move/from16 v1, v24

    if-le v0, v1, :cond_1f

    .line 883
    move/from16 v24, v43

    .line 884
    move-object v15, v8

    .line 885
    .local v15, "configurationCandidateForThisScan":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v36, v8

    .line 888
    .end local v15    # "configurationCandidateForThisScan":Landroid/net/wifi/WifiConfiguration;
    :cond_1f
    invoke-virtual/range {v44 .. v44}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getCandidateScore()I

    move-result v6

    move/from16 v0, v43

    if-gt v0, v6, :cond_20

    invoke-virtual/range {v44 .. v44}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getCandidateScore()I

    move-result v6

    move/from16 v0, v43

    if-ne v0, v6, :cond_19

    .line 889
    invoke-virtual/range {v44 .. v44}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getCandidate()Landroid/net/wifi/ScanResult;

    move-result-object v6

    if-eqz v6, :cond_19

    .line 890
    iget v6, v7, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual/range {v44 .. v44}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getCandidate()Landroid/net/wifi/ScanResult;

    move-result-object v9

    iget v9, v9, Landroid/net/wifi/ScanResult;->level:I

    if-le v6, v9, :cond_19

    .line 891
    :cond_20
    move-object/from16 v0, v44

    invoke-virtual {v0, v7}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setCandidate(Landroid/net/wifi/ScanResult;)V

    .line 892
    move-object/from16 v0, v44

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setCandidateScore(I)V

    goto/16 :goto_7

    .line 879
    .end local v43    # "score":I
    :cond_21
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mCurrentBssid:Ljava/lang/String;

    iget-object v10, v7, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    goto :goto_8

    .line 880
    :cond_22
    move-object/from16 v0, v27

    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 881
    iget v11, v8, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 880
    if-ne v6, v11, :cond_1e

    const/4 v11, 0x1

    goto :goto_9

    .line 896
    .end local v8    # "network":Landroid/net/wifi/WifiConfiguration;
    .end local v44    # "status":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    :cond_23
    move-object/from16 v0, v39

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    move-object/from16 v0, v23

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 898
    move/from16 v0, v24

    move/from16 v1, v17

    if-gt v0, v1, :cond_24

    move/from16 v0, v24

    move/from16 v1, v17

    if-ne v0, v1, :cond_3

    .line 899
    if-eqz v42, :cond_3

    .line 900
    iget v6, v7, Landroid/net/wifi/ScanResult;->level:I

    move-object/from16 v0, v42

    iget v9, v0, Landroid/net/wifi/ScanResult;->level:I

    if-le v6, v9, :cond_3

    .line 901
    :cond_24
    move/from16 v17, v24

    .line 902
    move-object/from16 v42, v7

    .line 903
    .local v42, "scanResultCandidate":Landroid/net/wifi/ScanResult;
    move-object/from16 v32, v15

    .line 904
    .local v32, "networkCandidate":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {v15}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setCandidate(Landroid/net/wifi/ScanResult;)V

    goto/16 :goto_0

    .line 910
    .end local v7    # "scanResult":Landroid/net/wifi/ScanResult;
    .end local v13    # "associatedWifiConfigurations":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v19    # "enableNetworkWithGoodRssi":Z
    .end local v24    # "highestScore":I
    .end local v31    # "network$iterator":Ljava/util/Iterator;
    .end local v32    # "networkCandidate":Landroid/net/wifi/WifiConfiguration;
    .end local v38    # "potentiallyEphemeral":Z
    .end local v39    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    .end local v41    # "scanId":Ljava/lang/String;
    .end local v42    # "scanResultCandidate":Landroid/net/wifi/ScanResult;
    :cond_25
    invoke-interface/range {v48 .. v48}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .restart local v21    # "entry$iterator":Ljava/util/Iterator;
    :goto_a
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_27

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/Map$Entry;

    .line 911
    .restart local v20    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mReenableMap:Ljava/util/Map;

    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-gt v9, v6, :cond_26

    .line 912
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mReenableMap:Ljava/util/Map;

    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v9, 0x3

    if-gt v6, v9, :cond_26

    .line 913
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "remove network "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v9, " from the list"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 914
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mReenableMap:Ljava/util/Map;

    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    .line 917
    :cond_26
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "retain network "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 918
    const-string/jumbo v9, " with reenable count "

    .line 917
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 918
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mReenableMap:Ljava/util/Map;

    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 917
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 923
    .end local v20    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_27
    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mFilteredScanDetails:Ljava/util/List;

    .line 926
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mScoreManager:Landroid/net/NetworkScoreManager;

    if-eqz v6, :cond_28

    invoke-virtual/range {v50 .. v50}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eqz v6, :cond_28

    .line 928
    invoke-virtual/range {v50 .. v50}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Landroid/net/NetworkKey;

    move-object/from16 v0, v50

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v49

    check-cast v49, [Landroid/net/NetworkKey;

    .line 929
    .local v49, "unscoredNetworkKeys":[Landroid/net/NetworkKey;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mScoreManager:Landroid/net/NetworkScoreManager;

    move-object/from16 v0, v49

    invoke-virtual {v6, v0}, Landroid/net/NetworkScoreManager;->requestScores([Landroid/net/NetworkKey;)Z

    .line 932
    .end local v49    # "unscoredNetworkKeys":[Landroid/net/NetworkKey;
    :cond_28
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mDbg:Z

    if-eqz v6, :cond_29

    .line 933
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v9, " skipped due to low signal\n"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 934
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v34

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v9, " skipped due to not saved\n "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 935
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v9, " skipped due to not valid SSID\n"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 936
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 940
    :cond_29
    if-eqz v42, :cond_2d

    .line 941
    move-object/from16 v46, v32

    .line 943
    .local v46, "tempConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_2a
    :goto_b
    invoke-virtual/range {v46 .. v46}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getConnectChoice()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2c

    .line 944
    invoke-virtual/range {v46 .. v46}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getConnectChoice()Ljava/lang/String;

    move-result-object v25

    .line 945
    .local v25, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v46

    .line 947
    if-eqz v46, :cond_2b

    .line 949
    invoke-virtual/range {v46 .. v46}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v47

    .line 950
    .local v47, "tempStatus":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    invoke-virtual/range {v47 .. v47}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getCandidate()Landroid/net/wifi/ScanResult;

    move-result-object v6

    if-eqz v6, :cond_2a

    invoke-virtual/range {v47 .. v47}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNetworkEnabled()Z

    move-result v6

    if-eqz v6, :cond_2a

    .line 951
    invoke-virtual/range {v47 .. v47}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getCandidate()Landroid/net/wifi/ScanResult;

    move-result-object v42

    .line 952
    .restart local v42    # "scanResultCandidate":Landroid/net/wifi/ScanResult;
    move-object/from16 v32, v46

    .restart local v32    # "networkCandidate":Landroid/net/wifi/WifiConfiguration;
    goto :goto_b

    .line 956
    .end local v32    # "networkCandidate":Landroid/net/wifi/WifiConfiguration;
    .end local v42    # "scanResultCandidate":Landroid/net/wifi/ScanResult;
    .end local v47    # "tempStatus":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    :cond_2b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Connect choice: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v9, " has no corresponding saved config"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLoge(Ljava/lang/String;)V

    .line 960
    .end local v25    # "key":Ljava/lang/String;
    :cond_2c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "After user choice adjust, the final candidate is:"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 961
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->getNetworkString(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v9

    .line 960
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 961
    const-string/jumbo v9, " : "

    .line 960
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 961
    move-object/from16 v0, v42

    iget-object v9, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 960
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 966
    .end local v46    # "tempConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_2d
    if-nez v42, :cond_2e

    .line 967
    const-string/jumbo v6, "Checking the externalScoreEvaluator for candidates..."

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 968
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->getExternalScoreCandidate(Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v32

    .line 969
    .restart local v32    # "networkCandidate":Landroid/net/wifi/WifiConfiguration;
    if-eqz v32, :cond_2e

    .line 970
    invoke-virtual/range {v32 .. v32}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getCandidate()Landroid/net/wifi/ScanResult;

    move-result-object v42

    .line 974
    .end local v32    # "networkCandidate":Landroid/net/wifi/WifiConfiguration;
    :cond_2e
    if-nez v42, :cond_2f

    .line 975
    const-string/jumbo v6, "Can not find any suitable candidates"

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 976
    const/4 v6, 0x0

    return-object v6

    .line 979
    :cond_2f
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mCurrentConnectedNetwork:Landroid/net/wifi/WifiConfiguration;

    if-nez v6, :cond_31

    const-string/jumbo v16, "Disconnected"

    .line 981
    .local v16, "currentAssociationId":Ljava/lang/String;
    :goto_c
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->getNetworkString(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v45

    .line 984
    .local v45, "targetAssociationId":Ljava/lang/String;
    invoke-virtual/range {v32 .. v32}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v6

    if-eqz v6, :cond_30

    .line 986
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "\""

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v42

    iget-object v9, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v9, "\""

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v32

    iput-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 990
    :cond_30
    move-object/from16 v0, v42

    iget-object v6, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mCurrentBssid:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_32

    .line 991
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v9, " is already the best choice!"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 1000
    :goto_d
    move-object/from16 v0, v42

    iget-object v6, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mCurrentBssid:Ljava/lang/String;

    .line 1001
    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mCurrentConnectedNetwork:Landroid/net/wifi/WifiConfiguration;

    .line 1002
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v6}, Lcom/android/server/wifi/Clock;->elapsedRealtime()J

    move-result-wide v10

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mLastQualifiedNetworkSelectionTimeStamp:J

    .line 1003
    return-object v32

    .line 980
    .end local v16    # "currentAssociationId":Ljava/lang/String;
    .end local v45    # "targetAssociationId":Ljava/lang/String;
    :cond_31
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mCurrentConnectedNetwork:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->getNetworkString(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v16

    .restart local v16    # "currentAssociationId":Ljava/lang/String;
    goto :goto_c

    .line 992
    .restart local v45    # "targetAssociationId":Ljava/lang/String;
    :cond_32
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mCurrentConnectedNetwork:Landroid/net/wifi/WifiConfiguration;

    if-eqz v6, :cond_34

    .line 993
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mCurrentConnectedNetwork:Landroid/net/wifi/WifiConfiguration;

    iget v6, v6, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move-object/from16 v0, v32

    iget v9, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-eq v6, v9, :cond_33

    .line 994
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mCurrentConnectedNetwork:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v0, v32

    invoke-virtual {v6, v0}, Landroid/net/wifi/WifiConfiguration;->isLinked(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v6

    .line 992
    if-eqz v6, :cond_34

    .line 995
    :cond_33
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Roaming from "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v9, " to "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v45

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    goto :goto_d

    .line 997
    :cond_34
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "reconnect from "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v9, " to "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v45

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    goto/16 :goto_d
.end method

.method public setScreenState(Z)V
    .locals 0
    .param p1, "on"    # Z

    .prologue
    .line 184
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mScreenOn:Z

    .line 183
    return-void
.end method

.method public setUserPreferredBand(I)V
    .locals 0
    .param p1, "band"    # I

    .prologue
    .line 179
    iput p1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mUserPreferedBand:I

    .line 178
    return-void
.end method

.method setWifiNetworkScoreCache(Lcom/android/server/wifi/WifiNetworkScoreCache;)V
    .locals 0
    .param p1, "cache"    # Lcom/android/server/wifi/WifiNetworkScoreCache;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mNetworkScoreCache:Lcom/android/server/wifi/WifiNetworkScoreCache;

    .line 152
    return-void
.end method

.method public skipNetworkSelectionForWPS(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "skipNetworkSelectionForWPS set to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 293
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->skipNetworkSelectionForWPS:Z

    .line 291
    return-void
.end method

.method public skipQualifiedNetworkSelectionForAutoConnect(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 287
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->skipQualifiedNetworkSelectionForAutoConnect:Z

    .line 286
    return-void
.end method

.method public userSelectNetwork(IZ)Z
    .locals 16
    .param p1, "netId"    # I
    .param p2, "persist"    # Z

    .prologue
    .line 531
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v10

    .line 532
    .local v10, "selected":Landroid/net/wifi/WifiConfiguration;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "userSelectNetwork:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " persist:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 533
    if-eqz v10, :cond_0

    iget-object v12, v10, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v12, :cond_1

    .line 534
    :cond_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "userSelectNetwork: Bad configuration with nid="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLoge(Ljava/lang/String;)V

    .line 535
    const/4 v12, 0x0

    return v12

    .line 539
    :cond_1
    invoke-virtual {v10}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNetworkEnabled()Z

    move-result v12

    if-nez v12, :cond_2

    .line 540
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    .line 541
    const/4 v13, 0x0

    .line 540
    move/from16 v0, p1

    invoke-virtual {v12, v0, v13}, Lcom/android/server/wifi/WifiConfigManager;->updateNetworkSelectionStatus(II)Z

    .line 544
    :cond_2
    if-nez p2, :cond_3

    .line 545
    const-string/jumbo v12, "User has no privilege to overwrite the current priority"

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 546
    const/4 v12, 0x0

    return v12

    .line 549
    :cond_3
    const/4 v2, 0x0

    .line 550
    .local v2, "change":Z
    invoke-virtual {v10}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v6

    .line 552
    .local v6, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v12}, Lcom/android/server/wifi/Clock;->currentTimeMillis()J

    move-result-wide v4

    .line 553
    .local v4, "currentTime":J
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v12}, Lcom/android/server/wifi/WifiConfigManager;->getSavedNetworks()Ljava/util/List;

    move-result-object v9

    .line 555
    .local v9, "savedNetworks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "network$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiConfiguration;

    .line 556
    .local v7, "network":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget v13, v7, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v12, v13}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    .line 557
    .local v3, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v11

    .line 558
    .local v11, "status":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    iget v12, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget v13, v10, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v12, v13, :cond_5

    .line 559
    invoke-virtual {v11}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getConnectChoice()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_4

    .line 560
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Remove user selection preference of "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v11}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getConnectChoice()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 561
    const-string/jumbo v13, " Set Time: "

    .line 560
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 561
    invoke-virtual {v11}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getConnectChoiceTimestamp()J

    move-result-wide v14

    .line 560
    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 561
    const-string/jumbo v13, " from "

    .line 560
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 562
    iget-object v13, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 560
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 562
    const-string/jumbo v13, " : "

    .line 560
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 562
    iget v13, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 560
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 563
    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setConnectChoice(Ljava/lang/String;)V

    .line 564
    const-wide/16 v12, -0x1

    invoke-virtual {v11, v12, v13}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setConnectChoiceTimestamp(J)V

    .line 566
    const/4 v2, 0x1

    goto :goto_0

    .line 571
    :cond_5
    invoke-virtual {v11}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getSeenInLastQualifiedNetworkSelection()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 572
    invoke-virtual {v11}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getConnectChoice()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_6

    .line 573
    invoke-virtual {v11}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getConnectChoice()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 574
    :cond_6
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Add key:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " Set Time: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " to "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 575
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->getNetworkString(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v13

    .line 574
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 576
    invoke-virtual {v11, v6}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setConnectChoice(Ljava/lang/String;)V

    .line 577
    invoke-virtual {v11, v4, v5}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setConnectChoiceTimestamp(J)V

    .line 578
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 582
    .end local v3    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v7    # "network":Landroid/net/wifi/WifiConfiguration;
    .end local v11    # "status":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    :cond_7
    if-eqz v2, :cond_8

    .line 583
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v12}, Lcom/android/server/wifi/WifiConfigManager;->writeKnownNetworkHistory()V

    .line 584
    const/4 v12, 0x1

    return v12

    .line 587
    :cond_8
    const/4 v12, 0x0

    return v12
.end method
