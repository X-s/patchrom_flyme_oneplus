.class public Lcom/android/settings_exlib/wifi/AccessPoint;
.super Ljava/lang/Object;
.source "AccessPoint.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_exlib/wifi/AccessPoint$AccessPointListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/settings_exlib/wifi/AccessPoint;",
        ">;"
    }
.end annotation


# static fields
.field public static final HIGHER_FREQ_24GHZ:I = 0x9c4

.field public static final HIGHER_FREQ_5GHZ:I = 0x170c

.field private static final KEY_ACTIVE:Ljava/lang/String; = "key_active"

.field private static final KEY_CONFIG:Ljava/lang/String; = "key_config"

.field private static final KEY_NETWORKINFO:Ljava/lang/String; = "key_networkinfo"

.field private static final KEY_PSKTYPE:Ljava/lang/String; = "key_psktype"

.field private static final KEY_SCANRESULT:Ljava/lang/String; = "key_scanresult"

.field private static final KEY_SCANRESULTCACHE:Ljava/lang/String; = "key_scanresultcache"

.field private static final KEY_SECURITY:Ljava/lang/String; = "key_security"

.field private static final KEY_SSID:Ljava/lang/String; = "key_ssid"

.field private static final KEY_WIFIINFO:Ljava/lang/String; = "key_wifiinfo"

.field public static final LOWER_FREQ_24GHZ:I = 0x960

.field public static final LOWER_FREQ_5GHZ:I = 0x1324

.field public static final OEM_SIGNAL_LEVELS:I = 0x5

.field private static final PSK_UNKNOWN:I = 0x0

.field private static final PSK_WPA:I = 0x1

.field private static final PSK_WPA2:I = 0x2

.field private static final PSK_WPA_WPA2:I = 0x3

.field public static final SECURITY_EAP:I = 0x3

.field public static final SECURITY_NONE:I = 0x0

.field public static final SECURITY_PSK:I = 0x2

.field public static final SECURITY_WAPI_CERT:I = 0x5

.field public static final SECURITY_WAPI_PSK:I = 0x4

.field public static final SECURITY_WEP:I = 0x1

.field public static final SIGNAL_LEVELS:I = 0x4

.field static final TAG:Ljava/lang/String; = "SettingsLib.AccessPoint"


# instance fields
.field private bssid:Ljava/lang/String;

.field public foundInScanResult:Z

.field private isCurrentConnected:Z

.field private mAccessPointListener:Lcom/android/settings_exlib/wifi/AccessPoint$AccessPointListener;

.field private mConfig:Landroid/net/wifi/WifiConfiguration;

.field private final mContext:Landroid/content/Context;

.field private mInfo:Landroid/net/wifi/WifiInfo;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mRssi:I

.field public mScanResultCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private mSeen:J

.field private mTag:Ljava/lang/Object;

.field private mWAPIASCertFile:Ljava/lang/String;

.field private mWAPIUserCertFile:Ljava/lang/String;

.field private networkId:I

.field private pskType:I

.field private security:I

.field private ssid:Ljava/lang/String;

.field private wapiPskType:I


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/net/wifi/ScanResult;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "result"    # Landroid/net/wifi/ScanResult;

    .prologue
    const/4 v2, 0x0

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->mScanResultCache:Landroid/util/LruCache;

    .line 127
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->networkId:I

    .line 129
    iput v2, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->pskType:I

    .line 133
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->mRssi:I

    .line 134
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->mSeen:J

    .line 141
    iput-boolean v2, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->isCurrentConnected:Z

    .line 144
    iput-boolean v2, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->foundInScanResult:Z

    .line 183
    iput-object p1, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    .line 184
    invoke-direct {p0, p2}, Lcom/android/settings_exlib/wifi/AccessPoint;->initWithScanResult(Landroid/net/wifi/ScanResult;)V

    .line 182
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v2, 0x0

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->mScanResultCache:Landroid/util/LruCache;

    .line 127
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->networkId:I

    .line 129
    iput v2, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->pskType:I

    .line 133
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->mRssi:I

    .line 134
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->mSeen:J

    .line 141
    iput-boolean v2, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->isCurrentConnected:Z

    .line 144
    iput-boolean v2, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->foundInScanResult:Z

    .line 188
    iput-object p1, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    .line 189
    invoke-virtual {p0, p2}, Lcom/android/settings_exlib/wifi/AccessPoint;->loadConfig(Landroid/net/wifi/WifiConfiguration;)V

    .line 187
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "savedState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v3, Landroid/util/LruCache;

    const/16 v6, 0x20

    invoke-direct {v3, v6}, Landroid/util/LruCache;-><init>(I)V

    iput-object v3, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->mScanResultCache:Landroid/util/LruCache;

    .line 127
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->networkId:I

    .line 129
    iput v5, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->pskType:I

    .line 133
    const v3, 0x7fffffff

    iput v3, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->mRssi:I

    .line 134
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->mSeen:J

    .line 141
    iput-boolean v5, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->isCurrentConnected:Z

    .line 144
    iput-boolean v5, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->foundInScanResult:Z

    .line 148
    iput-object p1, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    .line 149
    const-string/jumbo v3, "key_config"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    iput-object v3, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 150
    iget-object v3, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v3, :cond_0

    .line 151
    iget-object v3, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {p0, v3}, Lcom/android/settings_exlib/wifi/AccessPoint;->loadConfig(Landroid/net/wifi/WifiConfiguration;)V

    .line 153
    :cond_0
    const-string/jumbo v3, "key_ssid"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 154
    const-string/jumbo v3, "key_ssid"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    .line 156
    :cond_1
    const-string/jumbo v3, "key_security"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 157
    const-string/jumbo v3, "key_security"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->security:I

    .line 159
    :cond_2
    const-string/jumbo v3, "key_psktype"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 160
    const-string/jumbo v3, "key_psktype"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->pskType:I

    .line 162
    :cond_3
    const-string/jumbo v3, "key_wifiinfo"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiInfo;

    iput-object v3, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    .line 163
    const-string/jumbo v3, "key_networkinfo"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 164
    const-string/jumbo v3, "key_networkinfo"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkInfo;

    iput-object v3, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 166
    :cond_4
    const-string/jumbo v3, "key_scanresultcache"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 168
    const-string/jumbo v3, "key_scanresultcache"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 169
    .local v2, "scanResultArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/wifi/ScanResult;>;"
    iget-object v3, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->mScanResultCache:Landroid/util/LruCache;

    invoke-virtual {v3}, Landroid/util/LruCache;->evictAll()V

    .line 170
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "result$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 171
    .local v0, "result":Landroid/net/wifi/ScanResult;
    iget-object v3, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->mScanResultCache:Landroid/util/LruCache;

    iget-object v6, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v3, v6, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 174
    .end local v0    # "result":Landroid/net/wifi/ScanResult;
    .end local v1    # "result$iterator":Ljava/util/Iterator;
    .end local v2    # "scanResultArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/wifi/ScanResult;>;"
    :cond_5
    const-string/jumbo v3, "key_active"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 175
    const-string/jumbo v3, "key_active"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v4, :cond_7

    move v3, v4

    :goto_1
    iput-boolean v3, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->isCurrentConnected:Z

    .line 177
    :cond_6
    iget-object v3, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v4, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    iget-object v5, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/settings_exlib/wifi/AccessPoint;->update(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)Z

    .line 178
    invoke-virtual {p0}, Lcom/android/settings_exlib/wifi/AccessPoint;->getRssi()I

    move-result v3

    iput v3, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->mRssi:I

    .line 179
    invoke-virtual {p0}, Lcom/android/settings_exlib/wifi/AccessPoint;->getSeen()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->mSeen:J

    .line 147
    return-void

    :cond_7
    move v3, v5

    .line 175
    goto :goto_1
.end method

.method public static convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 922
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getOemLevel(I)I
    .locals 2
    .param p1, "rssi"    # I

    .prologue
    .line 290
    const/4 v0, 0x0

    .line 291
    .local v0, "level":I
    const/4 v1, 0x5

    invoke-static {p1, v1}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v0

    .line 292
    if-lez v0, :cond_0

    .line 293
    add-int/lit8 v0, v0, -0x1

    .line 294
    :cond_0
    return v0
.end method

.method private static getPskType(Landroid/net/wifi/ScanResult;)I
    .locals 5
    .param p0, "result"    # Landroid/net/wifi/ScanResult;

    .prologue
    .line 926
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string/jumbo v3, "WPA-PSK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 927
    .local v0, "wpa":Z
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string/jumbo v3, "WPA2-PSK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 928
    .local v1, "wpa2":Z
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 929
    const/4 v2, 0x3

    return v2

    .line 930
    :cond_0
    if-eqz v1, :cond_1

    .line 931
    const/4 v2, 0x2

    return v2

    .line 932
    :cond_1
    if-eqz v0, :cond_2

    .line 933
    const/4 v2, 0x1

    return v2

    .line 935
    :cond_2
    const-string/jumbo v2, "SettingsLib.AccessPoint"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Received abnormal flag string: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    const/4 v2, 0x0

    return v2
.end method

.method private static getSecurity(Landroid/net/wifi/ScanResult;)I
    .locals 2
    .param p0, "result"    # Landroid/net/wifi/ScanResult;

    .prologue
    .line 941
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string/jumbo v1, "WEP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 942
    const/4 v0, 0x1

    return v0

    .line 943
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string/jumbo v1, "PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 944
    const/4 v0, 0x2

    return v0

    .line 945
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string/jumbo v1, "EAP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 946
    const/4 v0, 0x3

    return v0

    .line 949
    :cond_2
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string/jumbo v1, "WAPI-KEY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 950
    const/4 v0, 0x4

    return v0

    .line 951
    :cond_3
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string/jumbo v1, "WAPI-CERT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 952
    const/4 v0, 0x5

    return v0

    .line 955
    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method static getSecurity(Landroid/net/wifi/WifiConfiguration;)I
    .locals 5
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 959
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 960
    return v3

    .line 962
    :cond_0
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 963
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    .line 962
    if-eqz v2, :cond_2

    .line 964
    :cond_1
    return v4

    .line 967
    :cond_2
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 968
    const/4 v0, 0x4

    return v0

    .line 970
    :cond_3
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 971
    const/4 v0, 0x5

    return v0

    .line 974
    :cond_4
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-eqz v2, :cond_5

    :goto_0
    return v0

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method private getSettingsSummary(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
    .locals 24
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 468
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    .line 470
    .local v18, "summary":Ljava/lang/StringBuilder;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_exlib/wifi/AccessPoint;->isActive()Z

    move-result v19

    if-eqz v19, :cond_4

    if-eqz p1, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v19

    if-eqz v19, :cond_4

    .line 472
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_exlib/wifi/AccessPoint;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v20

    .line 473
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    .line 472
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v22

    move-object/from16 v3, v21

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings_exlib/wifi/AccessPoint;->getSummary(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    :cond_0
    :goto_0
    sget v19, Lcom/android/settings_exlib/wifi/WifiTracker;->sVerboseLogging:I

    if-lez v19, :cond_10

    .line 512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_exlib/wifi/AccessPoint;->isCurrentConnected:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1

    .line 513
    const-string/jumbo v19, " f="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    :cond_1
    const-string/jumbo v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-direct/range {p0 .. p0}, Lcom/android/settings_exlib/wifi/AccessPoint;->getVisibilityStatus()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    if-eqz p1, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNetworkEnabled()Z

    move-result v19

    if-eqz v19, :cond_d

    .line 532
    :cond_2
    :goto_1
    if-eqz p1, :cond_10

    .line 534
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v11

    .line 535
    .local v11, "networkStatus":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    const/4 v7, 0x0

    .line 536
    .local v7, "index":I
    :goto_2
    const/16 v19, 0xa

    .line 535
    move/from16 v0, v19

    if-ge v7, v0, :cond_10

    .line 538
    invoke-virtual {v11, v7}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getDisableReasonCounter(I)I

    move-result v19

    if-eqz v19, :cond_3

    .line 539
    const-string/jumbo v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {v7}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkDisableReasonString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 540
    const-string/jumbo v20, "="

    .line 539
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 541
    invoke-virtual {v11, v7}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getDisableReasonCounter(I)I

    move-result v20

    .line 539
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 537
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 474
    .end local v7    # "index":I
    .end local v11    # "networkStatus":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_exlib/wifi/AccessPoint;->isActive()Z

    move-result v19

    if-eqz v19, :cond_6

    .line 476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_exlib/wifi/AccessPoint;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v21

    .line 477
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v19, v0

    if-eqz v19, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/WifiInfo;->isEphemeral()Z

    move-result v19

    .line 476
    :goto_3
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/android/settings_exlib/wifi/AccessPoint;->getSummary(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;Z)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 477
    :cond_5
    const/16 v19, 0x0

    goto :goto_3

    .line 478
    :cond_6
    if-eqz p1, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v19

    if-eqz v19, :cond_7

    .line 479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    sget v20, Lcom/android/settings_exlib/R$string;->available_via_passpoint:I

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 480
    .local v6, "format":Ljava/lang/String;
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v20, v19, v21

    move-object/from16 v0, v19

    invoke-static {v6, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 481
    .end local v6    # "format":Ljava/lang/String;
    :cond_7
    if-eqz p1, :cond_9

    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->hasNoInternetAccess()Z

    move-result v19

    if-eqz v19, :cond_9

    .line 482
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNetworkPermanentlyDisabled()Z

    move-result v19

    if-eqz v19, :cond_8

    .line 483
    sget v10, Lcom/android/settings_exlib/R$string;->wifi_no_internet_no_reconnect:I

    .line 485
    .local v10, "messageID":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 484
    .end local v10    # "messageID":I
    :cond_8
    sget v10, Lcom/android/settings_exlib/R$string;->wifi_no_internet:I

    .restart local v10    # "messageID":I
    goto :goto_4

    .line 486
    .end local v10    # "messageID":I
    :cond_9
    if-eqz p1, :cond_a

    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNetworkEnabled()Z

    move-result v19

    if-eqz v19, :cond_b

    .line 501
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_exlib/wifi/AccessPoint;->mRssi:I

    move/from16 v19, v0

    const v20, 0x7fffffff

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_c

    .line 502
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    sget v20, Lcom/android/settings_exlib/R$string;->wifi_not_in_range:I

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 488
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v11

    .line 489
    .restart local v11    # "networkStatus":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    invoke-virtual {v11}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionDisableReason()I

    move-result v19

    packed-switch v19, :pswitch_data_0

    goto/16 :goto_0

    .line 498
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    sget v20, Lcom/android/settings_exlib/R$string;->wifi_disabled_generic:I

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 491
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    sget v20, Lcom/android/settings_exlib/R$string;->wifi_disabled_password_failure:I

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 495
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    sget v20, Lcom/android/settings_exlib/R$string;->wifi_disabled_network_failure:I

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 504
    .end local v11    # "networkStatus":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    :cond_c
    if-eqz p1, :cond_0

    .line 505
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    sget v20, Lcom/android/settings_exlib/R$string;->wifi_remembered:I

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 517
    :cond_d
    const-string/jumbo v19, " ("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkStatusString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getDisableTime()J

    move-result-wide v20

    const-wide/16 v22, 0x0

    cmp-long v19, v20, v22

    if-lez v19, :cond_f

    .line 519
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 520
    .local v14, "now":J
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getDisableTime()J

    move-result-wide v20

    sub-long v20, v14, v20

    const-wide/16 v22, 0x3e8

    div-long v4, v20, v22

    .line 521
    .local v4, "diff":J
    const-wide/16 v20, 0x3c

    rem-long v16, v4, v20

    .line 522
    .local v16, "sec":J
    const-wide/16 v20, 0x3c

    div-long v20, v4, v20

    const-wide/16 v22, 0x3c

    rem-long v12, v20, v22

    .line 523
    .local v12, "min":J
    const-wide/16 v20, 0x3c

    div-long v20, v12, v20

    const-wide/16 v22, 0x3c

    rem-long v8, v20, v22

    .line 524
    .local v8, "hour":J
    const-string/jumbo v19, ", "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    const-wide/16 v20, 0x0

    cmp-long v19, v8, v20

    if-lez v19, :cond_e

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "h "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    :cond_e
    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "m "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "s "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    .end local v4    # "diff":J
    .end local v8    # "hour":J
    .end local v12    # "min":J
    .end local v14    # "now":J
    .end local v16    # "sec":J
    :cond_f
    const-string/jumbo v19, ")"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 546
    :cond_10
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    return-object v19

    .line 489
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public static getSummary(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;Z)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "state"    # Landroid/net/NetworkInfo$DetailedState;
    .param p2, "isEphemeral"    # Z

    .prologue
    const/4 v0, 0x0

    .line 913
    invoke-static {p0, v0, p1, p2, v0}, Lcom/android/settings_exlib/wifi/AccessPoint;->getSummary(Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo$DetailedState;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSummary(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;ZLjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "state"    # Landroid/net/NetworkInfo$DetailedState;
    .param p2, "isEphemeral"    # Z
    .param p3, "passpointProvider"    # Ljava/lang/String;

    .prologue
    .line 918
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2, p3}, Lcom/android/settings_exlib/wifi/AccessPoint;->getSummary(Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo$DetailedState;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSummary(Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo$DetailedState;ZLjava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "state"    # Landroid/net/NetworkInfo$DetailedState;
    .param p3, "isEphemeral"    # Z
    .param p4, "passpointProvider"    # Ljava/lang/String;

    .prologue
    .line 869
    sget-object v8, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p2, v8, :cond_1

    if-nez p1, :cond_1

    .line 870
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 872
    sget v8, Lcom/android/settings_exlib/R$string;->connected_via_passpoint:I

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 873
    .local v2, "format":Ljava/lang/String;
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p4, v8, v9

    invoke-static {v2, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 874
    .end local v2    # "format":Ljava/lang/String;
    :cond_0
    if-eqz p3, :cond_1

    .line 876
    sget v8, Lcom/android/settings_exlib/R$string;->connected_via_wfa:I

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 882
    :cond_1
    const-string/jumbo v8, "connectivity"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 881
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 883
    .local v0, "cm":Landroid/net/ConnectivityManager;
    sget-object v8, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p2, v8, :cond_2

    .line 885
    const-string/jumbo v8, "wifi"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    .line 884
    invoke-static {v8}, Landroid/net/wifi/IWifiManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;

    move-result-object v7

    .line 889
    .local v7, "wifiManager":Landroid/net/wifi/IWifiManager;
    :try_start_0
    invoke-interface {v7}, Landroid/net/wifi/IWifiManager;->getCurrentNetwork()Landroid/net/Network;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 893
    :goto_0
    invoke-virtual {v0, v6}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v5

    .line 894
    .local v5, "nc":Landroid/net/NetworkCapabilities;
    if-eqz v5, :cond_2

    const/16 v8, 0x10

    invoke-virtual {v5, v8}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 898
    .end local v5    # "nc":Landroid/net/NetworkCapabilities;
    .end local v7    # "wifiManager":Landroid/net/wifi/IWifiManager;
    :cond_2
    if-nez p2, :cond_4

    .line 899
    const-string/jumbo v8, "SettingsLib.AccessPoint"

    const-string/jumbo v9, "state is null, returning empty summary"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    const-string/jumbo v8, ""

    return-object v8

    .line 890
    .restart local v7    # "wifiManager":Landroid/net/wifi/IWifiManager;
    :catch_0
    move-exception v1

    .line 891
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v6, 0x0

    .local v6, "nw":Landroid/net/Network;
    goto :goto_0

    .line 895
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v6    # "nw":Landroid/net/Network;
    .restart local v5    # "nc":Landroid/net/NetworkCapabilities;
    :cond_3
    sget v8, Lcom/android/settings_exlib/R$string;->wifi_connected_no_internet:I

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 902
    .end local v5    # "nc":Landroid/net/NetworkCapabilities;
    .end local v7    # "wifiManager":Landroid/net/wifi/IWifiManager;
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    if-nez p1, :cond_6

    .line 903
    sget v8, Lcom/android/settings_exlib/R$array;->wifi_status:I

    .line 902
    :goto_1
    invoke-virtual {v9, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 904
    .local v3, "formats":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v4

    .line 906
    .local v4, "index":I
    array-length v8, v3

    if-ge v4, v8, :cond_5

    aget-object v8, v3, v4

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_7

    .line 907
    :cond_5
    const-string/jumbo v8, ""

    return-object v8

    .line 903
    .end local v3    # "formats":[Ljava/lang/String;
    .end local v4    # "index":I
    :cond_6
    sget v8, Lcom/android/settings_exlib/R$array;->wifi_status_with_ssid:I

    goto :goto_1

    .line 909
    .restart local v3    # "formats":[Ljava/lang/String;
    .restart local v4    # "index":I
    :cond_7
    aget-object v8, v3, v4

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p1, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method

.method private getVisibilityStatus()Ljava/lang/String;
    .locals 22

    .prologue
    .line 558
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 559
    .local v17, "visibility":Ljava/lang/StringBuilder;
    const/4 v15, 0x0

    .line 560
    .local v15, "scans24GHz":Ljava/lang/StringBuilder;
    const/16 v16, 0x0

    .line 561
    .local v16, "scans5GHz":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 563
    .local v2, "bssid":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 565
    .local v6, "now":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1

    .line 566
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    .line 567
    .local v2, "bssid":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 568
    const-string/jumbo v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    :cond_0
    const-string/jumbo v18, " rssi="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 571
    const-string/jumbo v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    const-string/jumbo v18, " score="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/net/wifi/WifiInfo;->score:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 573
    const-string/jumbo v18, " tx=%.1f,"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v20

    const/16 v21, 0x0

    aput-object v20, v19, v21

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    const-string/jumbo v18, "%.1f,"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txRetriesRate:D

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v20

    const/16 v21, 0x0

    aput-object v20, v19, v21

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    const-string/jumbo v18, "%.1f "

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txBadRate:D

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v20

    const/16 v21, 0x0

    aput-object v20, v19, v21

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    const-string/jumbo v18, "rx=%.1f"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v20

    const/16 v21, 0x0

    aput-object v20, v19, v21

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    .end local v2    # "bssid":Ljava/lang/String;
    :cond_1
    sget v14, Landroid/net/wifi/WifiConfiguration;->INVALID_RSSI:I

    .line 580
    .local v14, "rssi5":I
    sget v13, Landroid/net/wifi/WifiConfiguration;->INVALID_RSSI:I

    .line 581
    .local v13, "rssi24":I
    const/4 v9, 0x0

    .line 582
    .local v9, "num5":I
    const/4 v8, 0x0

    .line 583
    .local v8, "num24":I
    const/4 v10, 0x0

    .line 584
    .local v10, "numBlackListed":I
    const/4 v4, 0x0

    .line 585
    .local v4, "n24":I
    const/4 v5, 0x0

    .line 586
    .local v5, "n5":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_exlib/wifi/AccessPoint;->mScanResultCache:Landroid/util/LruCache;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v3

    .line 588
    .local v3, "list":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/net/wifi/ScanResult;>;"
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .end local v15    # "scans24GHz":Ljava/lang/StringBuilder;
    .end local v16    # "scans5GHz":Ljava/lang/StringBuilder;
    .local v12, "result$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_c

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/wifi/ScanResult;

    .line 590
    .local v11, "result":Landroid/net/wifi/ScanResult;
    iget v0, v11, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v18, v0

    const/16 v19, 0x1324

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_7

    .line 591
    iget v0, v11, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v18, v0

    const/16 v19, 0x170c

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_7

    .line 594
    add-int/lit8 v9, v9, 0x1

    .line 603
    :cond_3
    :goto_1
    iget v0, v11, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v18, v0

    const/16 v19, 0x1324

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_8

    .line 604
    iget v0, v11, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v18, v0

    const/16 v19, 0x170c

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_8

    .line 605
    iget v0, v11, Landroid/net/wifi/ScanResult;->level:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-le v0, v14, :cond_4

    .line 606
    iget v14, v11, Landroid/net/wifi/ScanResult;->level:I

    .line 608
    :cond_4
    const/16 v18, 0x4

    move/from16 v0, v18

    if-ge v5, v0, :cond_2

    .line 609
    if-nez v16, :cond_5

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 610
    :cond_5
    const-string/jumbo v18, " \n{"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v11, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    if-eqz v2, :cond_6

    iget-object v0, v11, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6

    const-string/jumbo v18, "*"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 612
    :cond_6
    const-string/jumbo v18, "="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v11, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 613
    const-string/jumbo v18, ","

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v11, Landroid/net/wifi/ScanResult;->level:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 614
    const-string/jumbo v18, "}"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 595
    :cond_7
    iget v0, v11, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v18, v0

    const/16 v19, 0x960

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_3

    .line 596
    iget v0, v11, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v18, v0

    const/16 v19, 0x9c4

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_3

    .line 599
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 617
    :cond_8
    iget v0, v11, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v18, v0

    const/16 v19, 0x960

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_2

    .line 618
    iget v0, v11, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v18, v0

    const/16 v19, 0x9c4

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_2

    .line 619
    iget v0, v11, Landroid/net/wifi/ScanResult;->level:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-le v0, v13, :cond_9

    .line 620
    iget v13, v11, Landroid/net/wifi/ScanResult;->level:I

    .line 622
    :cond_9
    const/16 v18, 0x4

    move/from16 v0, v18

    if-ge v4, v0, :cond_2

    .line 623
    if-nez v15, :cond_a

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 624
    :cond_a
    const-string/jumbo v18, " \n{"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v11, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 625
    if-eqz v2, :cond_b

    iget-object v0, v11, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_b

    const-string/jumbo v18, "*"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 626
    :cond_b
    const-string/jumbo v18, "="

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v11, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 627
    const-string/jumbo v18, ","

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v11, Landroid/net/wifi/ScanResult;->level:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 628
    const-string/jumbo v18, "}"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 633
    .end local v11    # "result":Landroid/net/wifi/ScanResult;
    :cond_c
    const-string/jumbo v18, " ["

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 634
    if-lez v8, :cond_d

    .line 635
    const-string/jumbo v18, "("

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ")"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 636
    const/16 v18, 0x4

    move/from16 v0, v18

    if-gt v4, v0, :cond_f

    .line 637
    if-eqz v15, :cond_d

    .line 638
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 647
    :cond_d
    :goto_2
    const-string/jumbo v18, ";"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 648
    if-lez v9, :cond_e

    .line 649
    const-string/jumbo v18, "("

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ")"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 650
    const/16 v18, 0x4

    move/from16 v0, v18

    if-gt v5, v0, :cond_10

    .line 651
    if-eqz v16, :cond_e

    .line 652
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 663
    :cond_e
    :goto_3
    const-string/jumbo v18, "]"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 665
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    return-object v18

    .line 641
    :cond_f
    const-string/jumbo v18, "max="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 642
    if-eqz v15, :cond_d

    .line 643
    const-string/jumbo v18, ","

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 655
    :cond_10
    const-string/jumbo v18, "max="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 656
    if-eqz v16, :cond_e

    .line 657
    const-string/jumbo v18, ","

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3
.end method

.method private initWithScanResult(Landroid/net/wifi/ScanResult;)V
    .locals 2
    .param p1, "result"    # Landroid/net/wifi/ScanResult;

    .prologue
    .line 753
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    .line 754
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->bssid:Ljava/lang/String;

    .line 755
    invoke-static {p1}, Lcom/android/settings_exlib/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v0

    iput v0, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->security:I

    .line 756
    iget v0, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->security:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 757
    invoke-static {p1}, Lcom/android/settings_exlib/wifi/AccessPoint;->getPskType(Landroid/net/wifi/ScanResult;)I

    move-result v0

    iput v0, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->pskType:I

    .line 758
    :cond_0
    iget v0, p1, Landroid/net/wifi/ScanResult;->level:I

    iput v0, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->mRssi:I

    .line 759
    iget-wide v0, p1, Landroid/net/wifi/ScanResult;->timestamp:J

    iput-wide v0, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->mSeen:J

    .line 752
    return-void
.end method

.method private isInfoForThisAccessPoint(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;)Z
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "info"    # Landroid/net/wifi/WifiInfo;

    .prologue
    .line 699
    invoke-virtual {p0}, Lcom/android/settings_exlib/wifi/AccessPoint;->isPasspoint()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->networkId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 700
    iget v0, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->networkId:I

    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 701
    :cond_1
    if-eqz p1, :cond_2

    .line 702
    invoke-virtual {p0, p1}, Lcom/android/settings_exlib/wifi/AccessPoint;->matches(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    return v0

    .line 708
    :cond_2
    iget-object v0, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_exlib/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isValiableConnectedBssid()Z
    .locals 2

    .prologue
    .line 298
    iget-boolean v0, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->isCurrentConnected:Z

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->bssid:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->bssid:Ljava/lang/String;

    const-string/jumbo v1, "00:00:00:00:00:00"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 303
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 301
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x22

    const/4 v2, 0x1

    .line 996
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 997
    const-string/jumbo v1, ""

    return-object v1

    .line 999
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1000
    .local v0, "length":I
    if-le v0, v2, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_1

    .line 1001
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_1

    .line 1002
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1004
    :cond_1
    return-object p0
.end method

.method public static securityToString(II)Ljava/lang/String;
    .locals 3
    .param p0, "security"    # I
    .param p1, "pskType"    # I

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 978
    if-ne p0, v0, :cond_0

    .line 979
    const-string/jumbo v0, "WEP"

    return-object v0

    .line 980
    :cond_0
    if-ne p0, v1, :cond_4

    .line 981
    if-ne p1, v0, :cond_1

    .line 982
    const-string/jumbo v0, "WPA"

    return-object v0

    .line 983
    :cond_1
    if-ne p1, v1, :cond_2

    .line 984
    const-string/jumbo v0, "WPA2"

    return-object v0

    .line 985
    :cond_2
    if-ne p1, v2, :cond_3

    .line 986
    const-string/jumbo v0, "WPA_WPA2"

    return-object v0

    .line 988
    :cond_3
    const-string/jumbo v0, "PSK"

    return-object v0

    .line 989
    :cond_4
    if-ne p0, v2, :cond_5

    .line 990
    const-string/jumbo v0, "EAP"

    return-object v0

    .line 992
    :cond_5
    const-string/jumbo v0, "NONE"

    return-object v0
.end method


# virtual methods
.method public clearConfig()V
    .locals 1

    .prologue
    .line 280
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 281
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->networkId:I

    .line 279
    return-void
.end method

.method public compareTo(Lcom/android/settings_exlib/wifi/AccessPoint;)I
    .locals 5
    .param p1, "other"    # Lcom/android/settings_exlib/wifi/AccessPoint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x1

    const v3, 0x7fffffff

    const/4 v2, -0x1

    .line 195
    invoke-virtual {p0}, Lcom/android/settings_exlib/wifi/AccessPoint;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/android/settings_exlib/wifi/AccessPoint;->isActive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 196
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_exlib/wifi/AccessPoint;->isActive()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/android/settings_exlib/wifi/AccessPoint;->isActive()Z

    move-result v1

    if-eqz v1, :cond_2

    return v4

    .line 195
    :cond_1
    return v2

    .line 199
    :cond_2
    iget v1, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->mRssi:I

    if-eq v1, v3, :cond_3

    iget v1, p1, Lcom/android/settings_exlib/wifi/AccessPoint;->mRssi:I

    if-ne v1, v3, :cond_3

    return v2

    .line 200
    :cond_3
    iget v1, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->mRssi:I

    if-ne v1, v3, :cond_4

    iget v1, p1, Lcom/android/settings_exlib/wifi/AccessPoint;->mRssi:I

    if-eq v1, v3, :cond_4

    return v4

    .line 203
    :cond_4
    iget v1, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->networkId:I

    if-eq v1, v2, :cond_5

    .line 204
    iget v1, p1, Lcom/android/settings_exlib/wifi/AccessPoint;->networkId:I

    if-ne v1, v2, :cond_5

    return v2

    .line 205
    :cond_5
    iget v1, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->networkId:I

    if-ne v1, v2, :cond_6

    .line 206
    iget v1, p1, Lcom/android/settings_exlib/wifi/AccessPoint;->networkId:I

    if-eq v1, v2, :cond_6

    return v4

    .line 210
    :cond_6
    iget v1, p1, Lcom/android/settings_exlib/wifi/AccessPoint;->mRssi:I

    invoke-direct {p0, v1}, Lcom/android/settings_exlib/wifi/AccessPoint;->getOemLevel(I)I

    move-result v1

    iget v2, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->mRssi:I

    invoke-direct {p0, v2}, Lcom/android/settings_exlib/wifi/AccessPoint;->getOemLevel(I)I

    move-result v2

    sub-int v0, v1, v2

    .line 216
    .local v0, "difference":I
    if-eqz v0, :cond_7

    .line 217
    return v0

    .line 220
    :cond_7
    iget-object v1, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/settings_exlib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 193
    check-cast p1, Lcom/android/settings_exlib/wifi/AccessPoint;

    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings_exlib/wifi/AccessPoint;->compareTo(Lcom/android/settings_exlib/wifi/AccessPoint;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 225
    instance-of v1, p1, Lcom/android/settings_exlib/wifi/AccessPoint;

    if-nez v1, :cond_0

    return v0

    .line 226
    :cond_0
    check-cast p1, Lcom/android/settings_exlib/wifi/AccessPoint;

    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings_exlib/wifi/AccessPoint;->compareTo(Lcom/android/settings_exlib/wifi/AccessPoint;)I

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public generateOpenNetworkConfig()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 729
    iget v0, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->security:I

    if-eqz v0, :cond_0

    .line 730
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 731
    :cond_0
    iget-object v0, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_1

    .line 732
    return-void

    .line 733
    :cond_1
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    iput-object v0, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 734
    iget-object v0, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/settings_exlib/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 735
    iget-object v0, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 728
    return-void
.end method

.method public getBssid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->bssid:Ljava/lang/String;

    return-object v0
.end method

.method public getConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method public getConfigName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    return-object v0

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    return-object v0
.end method

.method public getDetailedState()Landroid/net/NetworkInfo$DetailedState;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 425
    iget-object v0, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->isCurrentConnected:Z

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    return-object v0

    .line 428
    :cond_0
    const-string/jumbo v0, "SettingsLib.AccessPoint"

    const-string/jumbo v1, "NetworkInfo is null, cannot return detailed state"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    return-object v2
.end method

.method public getInfo()Landroid/net/wifi/WifiInfo;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    return-object v0
.end method

.method public getLevel()I
    .locals 2

    .prologue
    .line 308
    iget v0, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->mRssi:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 309
    const/4 v0, -0x1

    return v0

    .line 312
    :cond_0
    iget v0, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->mRssi:I

    invoke-direct {p0, v0}, Lcom/android/settings_exlib/wifi/AccessPoint;->getOemLevel(I)I

    move-result v0

    return v0
.end method

.method public getNetworkInfo()Landroid/net/NetworkInfo;
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method public getRssi()I
    .locals 5

    .prologue
    .line 319
    const/high16 v2, -0x80000000

    .line 320
    .local v2, "rssi":I
    iget-object v3, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->mScanResultCache:Landroid/util/LruCache;

    invoke-virtual {v3}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "result$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 322
    .local v0, "result":Landroid/net/wifi/ScanResult;
    invoke-direct {p0}, Lcom/android/settings_exlib/wifi/AccessPoint;->isValiableConnectedBssid()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 323
    iget-object v3, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->bssid:Ljava/lang/String;

    iget-object v4, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 324
    iget v3, v0, Landroid/net/wifi/ScanResult;->level:I

    if-le v3, v2, :cond_0

    .line 325
    iget v2, v0, Landroid/net/wifi/ScanResult;->level:I

    goto :goto_0

    .line 328
    :cond_1
    iget v3, v0, Landroid/net/wifi/ScanResult;->level:I

    if-le v3, v2, :cond_0

    .line 329
    iget v2, v0, Landroid/net/wifi/ScanResult;->level:I

    goto :goto_0

    .line 335
    .end local v0    # "result":Landroid/net/wifi/ScanResult;
    :cond_2
    return v2
.end method

.method public getSavedNetworkSummary()Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 433
    iget-object v1, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 434
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v1, :cond_0

    .line 435
    iget-object v7, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 436
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/16 v7, 0x3e8

    invoke-virtual {v3, v7}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v5

    .line 437
    .local v5, "systemName":Ljava/lang/String;
    iget v7, v1, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 438
    .local v6, "userId":I
    const/4 v0, 0x0

    .line 439
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v7, v1, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    if-eqz v7, :cond_1

    iget-object v7, v1, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 440
    iget-object v7, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 448
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_0
    if-eqz v0, :cond_0

    .line 449
    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    sget v9, Lcom/android/settings_exlib/R$string;->settings_package:I

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 455
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    .end local v5    # "systemName":Ljava/lang/String;
    .end local v6    # "userId":I
    :cond_0
    const-string/jumbo v7, ""

    return-object v7

    .line 443
    .restart local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v3    # "pm":Landroid/content/pm/PackageManager;
    .restart local v5    # "systemName":Ljava/lang/String;
    .restart local v6    # "userId":I
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 444
    .local v2, "ipm":Landroid/content/pm/IPackageManager;
    iget-object v7, v1, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-interface {v2, v7, v8, v6}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    goto :goto_0

    .line 450
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "ipm":Landroid/content/pm/IPackageManager;
    :cond_2
    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 451
    iget-object v8, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    sget v9, Lcom/android/settings_exlib/R$string;->certinstaller_package:I

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 450
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 452
    iget-object v7, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    sget v8, Lcom/android/settings_exlib/R$string;->saved_network:I

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v0, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 445
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v4

    .local v4, "rex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getSecurity()I
    .locals 1

    .prologue
    .line 354
    iget v0, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->security:I

    return v0
.end method

.method public getSecurityString(Z)Ljava/lang/String;
    .locals 2
    .param p1, "concise"    # Z

    .prologue
    .line 358
    iget-object v0, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    .line 359
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 360
    if-eqz p1, :cond_0

    sget v1, Lcom/android/settings_exlib/R$string;->wifi_security_short_eap:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    .line 361
    :cond_0
    sget v1, Lcom/android/settings_exlib/R$string;->wifi_security_eap:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 363
    :cond_1
    iget v1, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->security:I

    packed-switch v1, :pswitch_data_0

    .line 397
    if-eqz p1, :cond_a

    const-string/jumbo v1, ""

    :goto_1
    return-object v1

    .line 365
    :pswitch_0
    if-eqz p1, :cond_2

    sget v1, Lcom/android/settings_exlib/R$string;->wifi_security_short_eap:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_2
    return-object v1

    .line 366
    :cond_2
    sget v1, Lcom/android/settings_exlib/R$string;->wifi_security_eap:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 368
    :pswitch_1
    iget v1, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->pskType:I

    packed-switch v1, :pswitch_data_1

    .line 380
    if-eqz p1, :cond_6

    sget v1, Lcom/android/settings_exlib/R$string;->wifi_security_short_psk_generic:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_3
    return-object v1

    .line 370
    :pswitch_2
    if-eqz p1, :cond_3

    sget v1, Lcom/android/settings_exlib/R$string;->wifi_security_short_wpa:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_4
    return-object v1

    .line 371
    :cond_3
    sget v1, Lcom/android/settings_exlib/R$string;->wifi_security_wpa:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 373
    :pswitch_3
    if-eqz p1, :cond_4

    sget v1, Lcom/android/settings_exlib/R$string;->wifi_security_short_wpa2:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_5
    return-object v1

    .line 374
    :cond_4
    sget v1, Lcom/android/settings_exlib/R$string;->wifi_security_wpa2:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    .line 376
    :pswitch_4
    if-eqz p1, :cond_5

    sget v1, Lcom/android/settings_exlib/R$string;->wifi_security_short_wpa_wpa2:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_6
    return-object v1

    .line 377
    :cond_5
    sget v1, Lcom/android/settings_exlib/R$string;->wifi_security_wpa_wpa2:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    .line 381
    :cond_6
    sget v1, Lcom/android/settings_exlib/R$string;->wifi_security_psk_generic:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 384
    :pswitch_5
    if-eqz p1, :cond_7

    sget v1, Lcom/android/settings_exlib/R$string;->wifi_security_short_wep:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_7
    return-object v1

    .line 385
    :cond_7
    sget v1, Lcom/android/settings_exlib/R$string;->wifi_security_wep:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    .line 388
    :pswitch_6
    if-eqz p1, :cond_8

    sget v1, Lcom/android/settings_exlib/R$string;->wifi_security_short_WAPI_PSK:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_8
    return-object v1

    .line 389
    :cond_8
    sget v1, Lcom/android/settings_exlib/R$string;->wifi_security_WAPI_PSK:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    .line 392
    :pswitch_7
    if-eqz p1, :cond_9

    sget v1, Lcom/android/settings_exlib/R$string;->wifi_security_short_WAPI_CERT:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_9
    return-object v1

    .line 393
    :cond_9
    sget v1, Lcom/android/settings_exlib/R$string;->wifi_security_WAPI_CERT:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_9

    .line 397
    :cond_a
    sget v1, Lcom/android/settings_exlib/R$string;->wifi_security_none:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 363
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_1
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 368
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getSeen()J
    .locals 6

    .prologue
    .line 339
    const-wide/16 v2, 0x0

    .line 340
    .local v2, "seen":J
    iget-object v4, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->mScanResultCache:Landroid/util/LruCache;

    invoke-virtual {v4}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "result$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 341
    .local v0, "result":Landroid/net/wifi/ScanResult;
    iget-wide v4, v0, Landroid/net/wifi/ScanResult;->timestamp:J

    cmp-long v4, v4, v2

    if-lez v4, :cond_0

    .line 342
    iget-wide v2, v0, Landroid/net/wifi/ScanResult;->timestamp:J

    goto :goto_0

    .line 346
    .end local v0    # "result":Landroid/net/wifi/ScanResult;
    :cond_1
    return-wide v2
.end method

.method public getSettingsSummary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0, v0}, Lcom/android/settings_exlib/wifi/AccessPoint;->getSettingsSummary(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSsid()Ljava/lang/CharSequence;
    .locals 5

    .prologue
    .line 410
    new-instance v0, Landroid/text/SpannableString;

    iget-object v1, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 411
    .local v0, "str":Landroid/text/SpannableString;
    new-instance v1, Landroid/text/style/TtsSpan$VerbatimBuilder;

    iget-object v2, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/text/style/TtsSpan$VerbatimBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/text/style/TtsSpan$VerbatimBuilder;->build()Landroid/text/style/TtsSpan;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    .line 412
    const/16 v4, 0x12

    .line 411
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 413
    return-object v0
.end method

.method public getSsidStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0, v0}, Lcom/android/settings_exlib/wifi/AccessPoint;->getSettingsSummary(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 717
    iget-object v0, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->mTag:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 231
    const/4 v0, 0x0

    .line 232
    .local v0, "result":I
    iget-object v1, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0xd

    add-int/lit8 v0, v1, 0x0

    .line 233
    :cond_0
    iget v1, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->mRssi:I

    mul-int/lit8 v1, v1, 0x13

    add-int/2addr v0, v1

    .line 234
    iget v1, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->networkId:I

    mul-int/lit8 v1, v1, 0x17

    add-int/2addr v0, v1

    .line 235
    iget-object v1, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1d

    add-int/2addr v0, v1

    .line 236
    return v0
.end method

.method public isActive()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 674
    iget-object v1, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz v1, :cond_1

    .line 675
    iget v1, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->networkId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 676
    iget-object v1, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v1, v2, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->isCurrentConnected:Z

    .line 674
    :cond_1
    return v0
.end method

.method public isConnectable()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 680
    invoke-virtual {p0}, Lcom/android/settings_exlib/wifi/AccessPoint;->getLevel()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_exlib/wifi/AccessPoint;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isEphemeral()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 684
    iget-object v1, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->isEphemeral()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 685
    iget-object v1, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->isCurrentConnected:Z

    .line 684
    if-eqz v1, :cond_0

    .line 686
    iget-object v1, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    .line 684
    :cond_0
    return v0
.end method

.method public isPasspoint()Z
    .locals 1

    .prologue
    .line 690
    iget-object v0, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSaved()Z
    .locals 2

    .prologue
    .line 713
    iget v0, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->networkId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method loadConfig(Landroid/net/wifi/WifiConfiguration;)V
    .locals 3
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 739
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 740
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    .line 744
    :goto_0
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->bssid:Ljava/lang/String;

    .line 745
    invoke-static {p1}, Lcom/android/settings_exlib/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    iput v0, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->security:I

    .line 746
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v0, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->networkId:I

    .line 747
    iput-object p1, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 748
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    iput v0, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->wapiPskType:I

    .line 749
    const-string/jumbo v0, "SettingsLib.AccessPoint"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "loadConfig() ssid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  WAPI PSK key type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->wapiPskType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    return-void

    .line 742
    :cond_0
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string/jumbo v0, ""

    :goto_1
    iput-object v0, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings_exlib/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public matches(Landroid/net/wifi/ScanResult;)Z
    .locals 3
    .param p1, "result"    # Landroid/net/wifi/ScanResult;

    .prologue
    const/4 v0, 0x0

    .line 262
    iget-object v1, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    iget-object v2, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->security:I

    invoke-static {p1}, Lcom/android/settings_exlib/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public matches(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 4
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 266
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 267
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 269
    :cond_0
    iget-object v2, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/settings_exlib/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 270
    iget v2, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->security:I

    invoke-static {p1}, Lcom/android/settings_exlib/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 271
    iget-object v2, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-boolean v2, v2, Landroid/net/wifi/WifiConfiguration;->shared:Z

    iget-boolean v3, p1, Landroid/net/wifi/WifiConfiguration;->shared:Z

    if-ne v2, v3, :cond_2

    .line 269
    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    .line 271
    goto :goto_0

    :cond_3
    move v0, v1

    .line 269
    goto :goto_0
.end method

.method public saveWifiState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 763
    iget-object v0, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "key_ssid"

    invoke-virtual {p0}, Lcom/android/settings_exlib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    :cond_0
    const-string/jumbo v0, "key_security"

    iget v1, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->security:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 765
    const-string/jumbo v0, "key_psktype"

    iget v1, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->pskType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 766
    iget-object v0, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_1

    const-string/jumbo v0, "key_config"

    iget-object v1, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 767
    :cond_1
    const-string/jumbo v0, "key_wifiinfo"

    iget-object v1, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 768
    const-string/jumbo v0, "key_scanresultcache"

    .line 769
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->mScanResultCache:Landroid/util/LruCache;

    invoke-virtual {v2}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 768
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 770
    iget-object v0, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz v0, :cond_2

    .line 771
    const-string/jumbo v0, "key_networkinfo"

    iget-object v1, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 773
    :cond_2
    const-string/jumbo v1, "key_active"

    iget-boolean v0, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->isCurrentConnected:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 762
    return-void

    .line 773
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setListener(Lcom/android/settings_exlib/wifi/AccessPoint$AccessPointListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/settings_exlib/wifi/AccessPoint$AccessPointListener;

    .prologue
    .line 777
    iput-object p1, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->mAccessPointListener:Lcom/android/settings_exlib/wifi/AccessPoint$AccessPointListener;

    .line 776
    return-void
.end method

.method setRssi(I)V
    .locals 0
    .param p1, "rssi"    # I

    .prologue
    .line 864
    iput p1, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->mRssi:I

    .line 863
    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 721
    iput-object p1, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->mTag:Ljava/lang/Object;

    .line 720
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x2c

    .line 241
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "AccessPoint("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 242
    iget-object v2, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    .line 241
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 243
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/android/settings_exlib/wifi/AccessPoint;->isSaved()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 244
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "saved"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_exlib/wifi/AccessPoint;->isActive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 247
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "active"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_exlib/wifi/AccessPoint;->isEphemeral()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 250
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ephemeral"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_exlib/wifi/AccessPoint;->isConnectable()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 253
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "connectable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    :cond_3
    iget v1, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->security:I

    if-eqz v1, :cond_4

    .line 256
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->security:I

    iget v3, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->pskType:I

    invoke-static {v2, v3}, Lcom/android/settings_exlib/wifi/AccessPoint;->securityToString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    :cond_4
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method update(Landroid/net/wifi/WifiConfiguration;)V
    .locals 1
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 856
    iput-object p1, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 857
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v0, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->networkId:I

    .line 858
    iget-object v0, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->mAccessPointListener:Lcom/android/settings_exlib/wifi/AccessPoint$AccessPointListener;

    if-eqz v0, :cond_0

    .line 859
    iget-object v0, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->mAccessPointListener:Lcom/android/settings_exlib/wifi/AccessPoint$AccessPointListener;

    invoke-interface {v0, p0}, Lcom/android/settings_exlib/wifi/AccessPoint$AccessPointListener;->onAccessPointChanged(Lcom/android/settings_exlib/wifi/AccessPoint;)V

    .line 855
    :cond_0
    return-void
.end method

.method update(Landroid/net/wifi/ScanResult;)Z
    .locals 6
    .param p1, "result"    # Landroid/net/wifi/ScanResult;

    .prologue
    const/4 v5, 0x0

    .line 781
    invoke-virtual {p0, p1}, Lcom/android/settings_exlib/wifi/AccessPoint;->matches(Landroid/net/wifi/ScanResult;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 783
    iget-object v4, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->mScanResultCache:Landroid/util/LruCache;

    iget-object v5, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 786
    iget-object v4, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->mScanResultCache:Landroid/util/LruCache;

    iget-object v5, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v4, v5, p1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 788
    invoke-virtual {p0}, Lcom/android/settings_exlib/wifi/AccessPoint;->getLevel()I

    move-result v2

    .line 789
    .local v2, "oldLevel":I
    invoke-virtual {p0}, Lcom/android/settings_exlib/wifi/AccessPoint;->getRssi()I

    move-result v3

    .line 792
    .local v3, "oldRssi":I
    invoke-direct {p0}, Lcom/android/settings_exlib/wifi/AccessPoint;->isValiableConnectedBssid()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 793
    iget-object v4, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->bssid:Ljava/lang/String;

    iget-object v5, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 794
    iget v1, p1, Landroid/net/wifi/ScanResult;->level:I

    .line 804
    .local v1, "newRssi":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_exlib/wifi/AccessPoint;->getSeen()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->mSeen:J

    .line 805
    add-int v4, v1, v3

    div-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->mRssi:I

    .line 807
    iget v4, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->mRssi:I

    const/4 v5, 0x5

    invoke-static {v4, v5}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v0

    .line 812
    .local v0, "newLevel":I
    if-lez v0, :cond_0

    if-eq v0, v2, :cond_0

    iget-object v4, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->mAccessPointListener:Lcom/android/settings_exlib/wifi/AccessPoint$AccessPointListener;

    if-eqz v4, :cond_0

    .line 813
    iget-object v4, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->mAccessPointListener:Lcom/android/settings_exlib/wifi/AccessPoint$AccessPointListener;

    invoke-interface {v4, p0}, Lcom/android/settings_exlib/wifi/AccessPoint$AccessPointListener;->onLevelChanged(Lcom/android/settings_exlib/wifi/AccessPoint;)V

    .line 816
    :cond_0
    iget v4, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->security:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 817
    invoke-static {p1}, Lcom/android/settings_exlib/wifi/AccessPoint;->getPskType(Landroid/net/wifi/ScanResult;)I

    move-result v4

    iput v4, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->pskType:I

    .line 820
    :cond_1
    iget-object v4, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->mAccessPointListener:Lcom/android/settings_exlib/wifi/AccessPoint$AccessPointListener;

    if-eqz v4, :cond_2

    .line 821
    iget-object v4, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->mAccessPointListener:Lcom/android/settings_exlib/wifi/AccessPoint$AccessPointListener;

    invoke-interface {v4, p0}, Lcom/android/settings_exlib/wifi/AccessPoint$AccessPointListener;->onAccessPointChanged(Lcom/android/settings_exlib/wifi/AccessPoint;)V

    .line 824
    :cond_2
    const/4 v4, 0x1

    return v4

    .line 796
    .end local v0    # "newLevel":I
    .end local v1    # "newRssi":I
    :cond_3
    move v1, v3

    .restart local v1    # "newRssi":I
    goto :goto_0

    .line 799
    .end local v1    # "newRssi":I
    :cond_4
    iget v1, p1, Landroid/net/wifi/ScanResult;->level:I

    .restart local v1    # "newRssi":I
    goto :goto_0

    .line 826
    .end local v1    # "newRssi":I
    .end local v2    # "oldLevel":I
    .end local v3    # "oldRssi":I
    :cond_5
    return v5
.end method

.method update(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)Z
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "info"    # Landroid/net/wifi/WifiInfo;
    .param p3, "networkInfo"    # Landroid/net/NetworkInfo;

    .prologue
    .line 830
    const/4 v0, 0x0

    .line 831
    .local v0, "reorder":Z
    if-eqz p2, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/android/settings_exlib/wifi/AccessPoint;->isInfoForThisAccessPoint(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 832
    iget-boolean v1, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->isCurrentConnected:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .line 833
    :goto_0
    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v1

    iput v1, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->mRssi:I

    .line 834
    iput-object p2, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    .line 835
    iput-object p3, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 836
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->isCurrentConnected:Z

    .line 838
    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->bssid:Ljava/lang/String;

    .line 840
    iget-object v1, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->mAccessPointListener:Lcom/android/settings_exlib/wifi/AccessPoint$AccessPointListener;

    if-eqz v1, :cond_0

    .line 841
    iget-object v1, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->mAccessPointListener:Lcom/android/settings_exlib/wifi/AccessPoint$AccessPointListener;

    invoke-interface {v1, p0}, Lcom/android/settings_exlib/wifi/AccessPoint$AccessPointListener;->onAccessPointChanged(Lcom/android/settings_exlib/wifi/AccessPoint;)V

    .line 852
    :cond_0
    :goto_1
    return v0

    .line 832
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 843
    :cond_2
    iget-object v1, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v1, :cond_0

    .line 844
    const/4 v0, 0x1

    .line 845
    iget-boolean v1, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->isCurrentConnected:Z

    if-eqz v1, :cond_3

    .line 846
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->isCurrentConnected:Z

    .line 848
    :cond_3
    iget-object v1, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->mAccessPointListener:Lcom/android/settings_exlib/wifi/AccessPoint$AccessPointListener;

    if-eqz v1, :cond_0

    .line 849
    iget-object v1, p0, Lcom/android/settings_exlib/wifi/AccessPoint;->mAccessPointListener:Lcom/android/settings_exlib/wifi/AccessPoint$AccessPointListener;

    invoke-interface {v1, p0}, Lcom/android/settings_exlib/wifi/AccessPoint$AccessPointListener;->onAccessPointChanged(Lcom/android/settings_exlib/wifi/AccessPoint;)V

    goto :goto_1
.end method
