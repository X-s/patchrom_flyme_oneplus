.class Lcom/android/settings_ex/wifi/AccessPoint;
.super Landroid/preference/Preference;
.source "AccessPoint.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/wifi/AccessPoint$1;,
        Lcom/android/settings_ex/wifi/AccessPoint$PskType;
    }
.end annotation


# static fields
.field public static final HIGHER_FREQ_24GHZ:I = 0x9c4

.field public static final HIGHER_FREQ_5GHZ:I = 0x170c

.field private static final KEY_CONFIG:Ljava/lang/String; = "key_config"

.field private static final KEY_NETWORKINFO:Ljava/lang/String; = "key_networkinfo"

.field private static final KEY_SCANRESULT:Ljava/lang/String; = "key_scanresult"

.field private static final KEY_WIFIINFO:Ljava/lang/String; = "key_wifiinfo"

.field public static final LOWER_FREQ_24GHZ:I = 0x960

.field public static final LOWER_FREQ_5GHZ:I = 0x1324

.field private static final SECOND_TO_MILLI:I = 0x3e8

.field static final SECURITY_EAP:I = 0x3

.field static final SECURITY_NONE:I = 0x0

.field static final SECURITY_PSK:I = 0x2

.field static final SECURITY_WAPI_CERT:I = 0x5

.field static final SECURITY_WAPI_PSK:I = 0x4

.field static final SECURITY_WEP:I = 0x1

.field private static final STATE_NONE:[I

.field private static final STATE_SECURED:[I

.field static final TAG:Ljava/lang/String; = "Settings.AccessPoint"

.field private static final VISIBILITY_MAX_AGE_IN_MILLI:I = 0xf4240

.field private static final VISIBILITY_OUTDATED_AGE_IN_MILLI:I = 0x4e20

.field private static wifi_signal_attributes:[I


# instance fields
.field bssid:Ljava/lang/String;

.field private mConfig:Landroid/net/wifi/WifiConfiguration;

.field private mInfo:Landroid/net/wifi/WifiInfo;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mRssi:I

.field mScanResult:Landroid/net/wifi/ScanResult;

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

.field private mSummaryView:Landroid/widget/TextView;

.field private mWAPIASCertFile:Ljava/lang/String;

.field private mWAPIUserCertFile:Ljava/lang/String;

.field networkId:I

.field pskType:Lcom/android/settings_ex/wifi/AccessPoint$PskType;

.field security:I

.field showSummary:Z

.field ssid:Ljava/lang/String;

.field private wapiPskType:I

.field wpsAvailable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 80
    new-array v0, v3, [I

    const v1, 0x7f010003

    aput v1, v0, v2

    sput-object v0, Lcom/android/settings_ex/wifi/AccessPoint;->STATE_SECURED:[I

    .line 83
    new-array v0, v2, [I

    sput-object v0, Lcom/android/settings_ex/wifi/AccessPoint;->STATE_NONE:[I

    .line 85
    new-array v0, v3, [I

    const v1, 0x7f01002e

    aput v1, v0, v2

    sput-object v0, Lcom/android/settings_ex/wifi/AccessPoint;->wifi_signal_attributes:[I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/net/wifi/ScanResult;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "result"    # Landroid/net/wifi/ScanResult;

    .prologue
    .line 231
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 113
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    .line 114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->wpsAvailable:Z

    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->showSummary:Z

    .line 117
    sget-object v0, Lcom/android/settings_ex/wifi/AccessPoint$PskType;->UNKNOWN:Lcom/android/settings_ex/wifi/AccessPoint$PskType;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->pskType:Lcom/android/settings_ex/wifi/AccessPoint$PskType;

    .line 122
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mRssi:I

    .line 123
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mSeen:J

    .line 232
    invoke-direct {p0, p2}, Lcom/android/settings_ex/wifi/AccessPoint;->loadResult(Landroid/net/wifi/ScanResult;)V

    .line 233
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/AccessPoint;->refresh()V

    .line 234
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 225
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 113
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    .line 114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->wpsAvailable:Z

    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->showSummary:Z

    .line 117
    sget-object v0, Lcom/android/settings_ex/wifi/AccessPoint$PskType;->UNKNOWN:Lcom/android/settings_ex/wifi/AccessPoint$PskType;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->pskType:Lcom/android/settings_ex/wifi/AccessPoint$PskType;

    .line 122
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mRssi:I

    .line 123
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mSeen:J

    .line 226
    invoke-direct {p0, p2}, Lcom/android/settings_ex/wifi/AccessPoint;->loadConfig(Landroid/net/wifi/WifiConfiguration;)V

    .line 227
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/AccessPoint;->refresh()V

    .line 228
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 237
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 113
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    .line 114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->wpsAvailable:Z

    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->showSummary:Z

    .line 117
    sget-object v0, Lcom/android/settings_ex/wifi/AccessPoint$PskType;->UNKNOWN:Lcom/android/settings_ex/wifi/AccessPoint$PskType;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->pskType:Lcom/android/settings_ex/wifi/AccessPoint$PskType;

    .line 122
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mRssi:I

    .line 123
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mSeen:J

    .line 239
    const-string v0, "key_config"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 240
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0, v0}, Lcom/android/settings_ex/wifi/AccessPoint;->loadConfig(Landroid/net/wifi/WifiConfiguration;)V

    .line 243
    :cond_0
    const-string v0, "key_scanresult"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mScanResult:Landroid/net/wifi/ScanResult;

    .line 244
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mScanResult:Landroid/net/wifi/ScanResult;

    if-eqz v0, :cond_1

    .line 245
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mScanResult:Landroid/net/wifi/ScanResult;

    invoke-direct {p0, v0}, Lcom/android/settings_ex/wifi/AccessPoint;->loadResult(Landroid/net/wifi/ScanResult;)V

    .line 247
    :cond_1
    const-string v0, "key_wifiinfo"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiInfo;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    .line 248
    const-string v0, "key_networkinfo"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 249
    const-string v0, "key_networkinfo"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 251
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/wifi/AccessPoint;->update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)V

    .line 252
    return-void
.end method

.method static convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 475
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getPskType(Landroid/net/wifi/ScanResult;)Lcom/android/settings_ex/wifi/AccessPoint$PskType;
    .locals 5
    .param p0, "result"    # Landroid/net/wifi/ScanResult;

    .prologue
    .line 210
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v3, "WPA-PSK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 211
    .local v0, "wpa":Z
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v3, "WPA2-PSK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 212
    .local v1, "wpa2":Z
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 213
    sget-object v2, Lcom/android/settings_ex/wifi/AccessPoint$PskType;->WPA_WPA2:Lcom/android/settings_ex/wifi/AccessPoint$PskType;

    .line 220
    :goto_0
    return-object v2

    .line 214
    :cond_0
    if-eqz v1, :cond_1

    .line 215
    sget-object v2, Lcom/android/settings_ex/wifi/AccessPoint$PskType;->WPA2:Lcom/android/settings_ex/wifi/AccessPoint$PskType;

    goto :goto_0

    .line 216
    :cond_1
    if-eqz v0, :cond_2

    .line 217
    sget-object v2, Lcom/android/settings_ex/wifi/AccessPoint$PskType;->WPA:Lcom/android/settings_ex/wifi/AccessPoint$PskType;

    goto :goto_0

    .line 219
    :cond_2
    const-string v2, "Settings.AccessPoint"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received abnormal flag string: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    sget-object v2, Lcom/android/settings_ex/wifi/AccessPoint$PskType;->UNKNOWN:Lcom/android/settings_ex/wifi/AccessPoint$PskType;

    goto :goto_0
.end method

.method private static getSecurity(Landroid/net/wifi/ScanResult;)I
    .locals 2
    .param p0, "result"    # Landroid/net/wifi/ScanResult;

    .prologue
    .line 153
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WEP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    const/4 v0, 0x1

    .line 166
    :goto_0
    return v0

    .line 155
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    const/4 v0, 0x2

    goto :goto_0

    .line 157
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "EAP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 158
    const/4 v0, 0x3

    goto :goto_0

    .line 160
    :cond_2
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WAPI-KEY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 161
    const/4 v0, 0x4

    goto :goto_0

    .line 162
    :cond_3
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WAPI-CERT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 163
    const/4 v0, 0x5

    goto :goto_0

    .line 166
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static getSecurity(Landroid/net/wifi/WifiConfiguration;)I
    .locals 6
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v2, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 134
    iget-object v5, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v5, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_1

    move v0, v2

    .line 149
    :cond_0
    :goto_0
    return v0

    .line 137
    :cond_1
    iget-object v5, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v5, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move v0, v4

    .line 139
    goto :goto_0

    .line 142
    :cond_3
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_4

    move v0, v3

    .line 143
    goto :goto_0

    .line 145
    :cond_4
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 146
    const/4 v0, 0x5

    goto :goto_0

    .line 149
    :cond_5
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private getVisibilityStatus()Ljava/lang/String;
    .locals 24

    .prologue
    .line 499
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 500
    .local v17, "visibility":Ljava/lang/StringBuilder;
    const/4 v15, 0x0

    .line 501
    .local v15, "scans24GHz":Ljava/lang/StringBuilder;
    const/16 v16, 0x0

    .line 502
    .local v16, "scans5GHz":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 504
    .local v2, "bssid":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 506
    .local v8, "now":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1

    .line 507
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    .line 508
    if-eqz v2, :cond_0

    .line 509
    const-string v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    :cond_0
    const-string v18, " rssi="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 512
    const-string v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    const-string v18, " score="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/net/wifi/WifiInfo;->score:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 514
    const-string v18, " tx=%.1f,"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    const-string v18, "%.1f,"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txRetriesRate:D

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    const-string v18, "%.1f "

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txBadRate:D

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    const-string v18, "rx=%.1f"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/AccessPoint;->mScanResultCache:Landroid/util/LruCache;

    move-object/from16 v18, v0

    if-eqz v18, :cond_18

    .line 521
    sget v14, Landroid/net/wifi/WifiConfiguration;->INVALID_RSSI:I

    .line 522
    .local v14, "rssi5":I
    sget v13, Landroid/net/wifi/WifiConfiguration;->INVALID_RSSI:I

    .line 523
    .local v13, "rssi24":I
    const/4 v10, 0x0

    .line 524
    .local v10, "num5":I
    const/4 v7, 0x0

    .line 525
    .local v7, "num24":I
    const/4 v11, 0x0

    .line 526
    .local v11, "numBlackListed":I
    const/4 v5, 0x0

    .line 527
    .local v5, "n24":I
    const/4 v6, 0x0

    .line 528
    .local v6, "n5":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/AccessPoint;->mScanResultCache:Landroid/util/LruCache;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v4

    .line 530
    .local v4, "list":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/net/wifi/ScanResult;>;"
    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_11

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/wifi/ScanResult;

    .line 531
    .local v12, "result":Landroid/net/wifi/ScanResult;
    iget-wide v0, v12, Landroid/net/wifi/ScanResult;->seen:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x0

    cmp-long v18, v18, v20

    if-eqz v18, :cond_2

    .line 534
    iget v0, v12, Landroid/net/wifi/ScanResult;->autoJoinStatus:I

    move/from16 v18, v0

    if-eqz v18, :cond_3

    add-int/lit8 v11, v11, 0x1

    .line 536
    :cond_3
    iget v0, v12, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v18, v0

    const/16 v19, 0x1324

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_a

    iget v0, v12, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v18, v0

    const/16 v19, 0x170c

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_a

    .line 540
    add-int/lit8 v10, v10, 0x1

    .line 549
    :cond_4
    :goto_1
    iget-wide v0, v12, Landroid/net/wifi/ScanResult;->seen:J

    move-wide/from16 v18, v0

    sub-long v18, v8, v18

    const-wide/16 v20, 0x4e20

    cmp-long v18, v18, v20

    if-gtz v18, :cond_2

    .line 551
    iget v0, v12, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v18, v0

    const/16 v19, 0x1324

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_b

    iget v0, v12, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v18, v0

    const/16 v19, 0x170c

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_b

    .line 553
    iget v0, v12, Landroid/net/wifi/ScanResult;->level:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-le v0, v14, :cond_5

    .line 554
    iget v14, v12, Landroid/net/wifi/ScanResult;->level:I

    .line 556
    :cond_5
    const/16 v18, 0x4

    move/from16 v0, v18

    if-ge v6, v0, :cond_2

    .line 557
    if-nez v16, :cond_6

    new-instance v16, Ljava/lang/StringBuilder;

    .end local v16    # "scans5GHz":Ljava/lang/StringBuilder;
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 558
    .restart local v16    # "scans5GHz":Ljava/lang/StringBuilder;
    :cond_6
    const-string v18, " \n{"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v12, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 559
    if-eqz v2, :cond_7

    iget-object v0, v12, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    const-string v18, "*"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    :cond_7
    const-string v18, "="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v12, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 561
    const-string v18, ","

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v12, Landroid/net/wifi/ScanResult;->level:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 562
    iget v0, v12, Landroid/net/wifi/ScanResult;->autoJoinStatus:I

    move/from16 v18, v0

    if-eqz v18, :cond_8

    .line 563
    const-string v18, ",st="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v12, Landroid/net/wifi/ScanResult;->autoJoinStatus:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 565
    :cond_8
    iget v0, v12, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    move/from16 v18, v0

    if-eqz v18, :cond_9

    .line 566
    const-string v18, ",ipf="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v12, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 568
    :cond_9
    const-string v18, "}"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 541
    :cond_a
    iget v0, v12, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v18, v0

    const/16 v19, 0x960

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_4

    iget v0, v12, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v18, v0

    const/16 v19, 0x9c4

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_4

    .line 545
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 571
    :cond_b
    iget v0, v12, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v18, v0

    const/16 v19, 0x960

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_2

    iget v0, v12, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v18, v0

    const/16 v19, 0x9c4

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_2

    .line 573
    iget v0, v12, Landroid/net/wifi/ScanResult;->level:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-le v0, v13, :cond_c

    .line 574
    iget v13, v12, Landroid/net/wifi/ScanResult;->level:I

    .line 576
    :cond_c
    const/16 v18, 0x4

    move/from16 v0, v18

    if-ge v5, v0, :cond_2

    .line 577
    if-nez v15, :cond_d

    new-instance v15, Ljava/lang/StringBuilder;

    .end local v15    # "scans24GHz":Ljava/lang/StringBuilder;
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 578
    .restart local v15    # "scans24GHz":Ljava/lang/StringBuilder;
    :cond_d
    const-string v18, " \n{"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v12, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    if-eqz v2, :cond_e

    iget-object v0, v12, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_e

    const-string v18, "*"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 580
    :cond_e
    const-string v18, "="

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v12, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 581
    const-string v18, ","

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v12, Landroid/net/wifi/ScanResult;->level:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 582
    iget v0, v12, Landroid/net/wifi/ScanResult;->autoJoinStatus:I

    move/from16 v18, v0

    if-eqz v18, :cond_f

    .line 583
    const-string v18, ",st="

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v12, Landroid/net/wifi/ScanResult;->autoJoinStatus:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 585
    :cond_f
    iget v0, v12, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    move/from16 v18, v0

    if-eqz v18, :cond_10

    .line 586
    const-string v18, ",ipf="

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v12, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 588
    :cond_10
    const-string v18, "}"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 593
    .end local v12    # "result":Landroid/net/wifi/ScanResult;
    :cond_11
    const-string v18, " ["

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 594
    if-lez v7, :cond_12

    .line 595
    const-string v18, "("

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ")"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    const/16 v18, 0x4

    move/from16 v0, v18

    if-gt v5, v0, :cond_16

    .line 597
    if-eqz v15, :cond_12

    .line 598
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 607
    :cond_12
    :goto_2
    const-string v18, ";"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 608
    if-lez v10, :cond_13

    .line 609
    const-string v18, "("

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ")"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    const/16 v18, 0x4

    move/from16 v0, v18

    if-gt v6, v0, :cond_17

    .line 611
    if-eqz v16, :cond_13

    .line 612
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 621
    :cond_13
    :goto_3
    if-lez v11, :cond_14

    .line 622
    const-string v18, "!"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 623
    :cond_14
    const-string v18, "]"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 635
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "list":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/net/wifi/ScanResult;>;"
    .end local v5    # "n24":I
    .end local v6    # "n5":I
    .end local v7    # "num24":I
    .end local v10    # "num5":I
    .end local v11    # "numBlackListed":I
    .end local v13    # "rssi24":I
    .end local v14    # "rssi5":I
    :cond_15
    :goto_4
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    return-object v18

    .line 601
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "list":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/net/wifi/ScanResult;>;"
    .restart local v5    # "n24":I
    .restart local v6    # "n5":I
    .restart local v7    # "num24":I
    .restart local v10    # "num5":I
    .restart local v11    # "numBlackListed":I
    .restart local v13    # "rssi24":I
    .restart local v14    # "rssi5":I
    :cond_16
    const-string v18, "max="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 602
    if-eqz v15, :cond_12

    .line 603
    const-string v18, ","

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 615
    :cond_17
    const-string v18, "max="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 616
    if-eqz v16, :cond_13

    .line 617
    const-string v18, ","

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 625
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "list":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/net/wifi/ScanResult;>;"
    .end local v5    # "n24":I
    .end local v6    # "n5":I
    .end local v7    # "num24":I
    .end local v10    # "num5":I
    .end local v11    # "numBlackListed":I
    .end local v13    # "rssi24":I
    .end local v14    # "rssi5":I
    :cond_18
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/wifi/AccessPoint;->mRssi:I

    move/from16 v18, v0

    const v19, 0x7fffffff

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_15

    .line 626
    const-string v18, " rssi="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 627
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/wifi/AccessPoint;->mRssi:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 628
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/AccessPoint;->mScanResult:Landroid/net/wifi/ScanResult;

    move-object/from16 v18, v0

    if-eqz v18, :cond_15

    .line 629
    const-string v18, ", f="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 630
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/AccessPoint;->mScanResult:Landroid/net/wifi/ScanResult;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_4
.end method

.method private isInfoForThisAccessPoint(Landroid/net/wifi/WifiInfo;)Z
    .locals 3
    .param p1, "info"    # Landroid/net/wifi/WifiInfo;

    .prologue
    const/4 v0, 0x0

    .line 408
    iget v1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 409
    iget v1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 416
    :cond_0
    return v0
.end method

.method private loadConfig(Landroid/net/wifi/WifiConfiguration;)V
    .locals 3
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 264
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->ssid:Ljava/lang/String;

    .line 265
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->bssid:Ljava/lang/String;

    .line 266
    invoke-static {p1}, Lcom/android/settings_ex/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->security:I

    .line 267
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    .line 268
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    iput v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->wapiPskType:I

    .line 269
    const-string v0, "Settings.AccessPoint"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadConfig()wapiPskType  WAPI PSK key type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings_ex/wifi/AccessPoint;->wapiPskType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iput-object p1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 271
    return-void

    .line 264
    :cond_0
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings_ex/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private loadResult(Landroid/net/wifi/ScanResult;)V
    .locals 4
    .param p1, "result"    # Landroid/net/wifi/ScanResult;

    .prologue
    .line 274
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->ssid:Ljava/lang/String;

    .line 275
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->bssid:Ljava/lang/String;

    .line 276
    invoke-static {p1}, Lcom/android/settings_ex/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->security:I

    .line 277
    iget v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->security:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WPS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->wpsAvailable:Z

    .line 278
    iget v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->security:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 279
    invoke-static {p1}, Lcom/android/settings_ex/wifi/AccessPoint;->getPskType(Landroid/net/wifi/ScanResult;)Lcom/android/settings_ex/wifi/AccessPoint$PskType;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->pskType:Lcom/android/settings_ex/wifi/AccessPoint$PskType;

    .line 280
    :cond_0
    iget v0, p1, Landroid/net/wifi/ScanResult;->level:I

    iput v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mRssi:I

    .line 281
    iput-object p1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mScanResult:Landroid/net/wifi/ScanResult;

    .line 282
    iget-wide v0, p1, Landroid/net/wifi/ScanResult;->seen:J

    iget-wide v2, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mSeen:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 283
    iget-wide v0, p1, Landroid/net/wifi/ScanResult;->seen:J

    iput-wide v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mSeen:J

    .line 285
    :cond_1
    return-void

    .line 277
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private refresh()V
    .locals 18

    .prologue
    .line 653
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings_ex/wifi/AccessPoint;->setTitle(Ljava/lang/CharSequence;)V

    .line 655
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/AccessPoint;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 656
    .local v2, "context":Landroid/content/Context;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/AccessPoint;->getLevel()I

    move-result v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v2}, Lcom/android/settings_ex/wifi/AccessPoint;->updateIcon(ILandroid/content/Context;)V

    .line 659
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings_ex/wifi/AccessPoint;->setSummary(Ljava/lang/CharSequence;)V

    .line 662
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 664
    .local v3, "summary":Ljava/lang/StringBuilder;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/AccessPoint;->isActive()Z

    move-result v14

    if-eqz v14, :cond_9

    .line 668
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v14

    invoke-static {v2, v14}, Lcom/android/settings_ex/wifi/Summary;->get(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 716
    :cond_0
    :goto_0
    sget v14, Lcom/android/settings_ex/wifi/WifiSettings;->mVerboseLogging:I

    if-lez v14, :cond_8

    .line 719
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz v14, :cond_1

    .line 720
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " f="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v15}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 722
    :cond_1
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/wifi/AccessPoint;->getVisibilityStatus()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 723
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v14, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v14, v14, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    if-lez v14, :cond_4

    .line 724
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " ("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v15, v15, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 725
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-wide v14, v14, Landroid/net/wifi/WifiConfiguration;->blackListTimestamp:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-lez v14, :cond_3

    .line 726
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 727
    .local v10, "now":J
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-wide v14, v14, Landroid/net/wifi/WifiConfiguration;->blackListTimestamp:J

    sub-long v14, v10, v14

    const-wide/16 v16, 0x3e8

    div-long v4, v14, v16

    .line 728
    .local v4, "diff":J
    const-wide/16 v14, 0x3c

    rem-long v12, v4, v14

    .line 729
    .local v12, "sec":J
    const-wide/16 v14, 0x3c

    div-long v14, v4, v14

    const-wide/16 v16, 0x3c

    rem-long v8, v14, v16

    .line 730
    .local v8, "min":J
    const-wide/16 v14, 0x3c

    div-long v14, v8, v14

    const-wide/16 v16, 0x3c

    rem-long v6, v14, v16

    .line 731
    .local v6, "hour":J
    const-string v14, ", "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 732
    const-wide/16 v14, 0x0

    cmp-long v14, v6, v14

    if-lez v14, :cond_2

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "h "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 733
    :cond_2
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "m "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 734
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "s "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 736
    .end local v4    # "diff":J
    .end local v6    # "hour":J
    .end local v8    # "min":J
    .end local v10    # "now":J
    .end local v12    # "sec":J
    :cond_3
    const-string v14, ")"

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 738
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v14, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v14, v14, Landroid/net/wifi/WifiConfiguration;->numIpConfigFailures:I

    if-lez v14, :cond_5

    .line 739
    const-string v14, " ipf="

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v15, v15, Landroid/net/wifi/WifiConfiguration;->numIpConfigFailures:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 741
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v14, :cond_6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v14, v14, Landroid/net/wifi/WifiConfiguration;->numConnectionFailures:I

    if-lez v14, :cond_6

    .line 742
    const-string v14, " cf="

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v15, v15, Landroid/net/wifi/WifiConfiguration;->numConnectionFailures:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 744
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v14, :cond_7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v14, v14, Landroid/net/wifi/WifiConfiguration;->numAuthFailures:I

    if-lez v14, :cond_7

    .line 745
    const-string v14, " authf="

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v15, v15, Landroid/net/wifi/WifiConfiguration;->numAuthFailures:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 747
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v14, :cond_8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v14, v14, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    if-lez v14, :cond_8

    .line 748
    const-string v14, " noInt="

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v15, v15, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 752
    :cond_8
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v14

    if-lez v14, :cond_12

    .line 753
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings_ex/wifi/AccessPoint;->setSummary(Ljava/lang/CharSequence;)V

    .line 754
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings_ex/wifi/AccessPoint;->setShowSummary(Z)V

    .line 758
    :goto_1
    return-void

    .line 676
    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v14, :cond_f

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v14, v14, Landroid/net/wifi/WifiConfiguration;->status:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_a

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v14, v14, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    if-nez v14, :cond_b

    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v14, v14, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    const/16 v15, 0x80

    if-lt v14, v15, :cond_f

    .line 680
    :cond_b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v14, v14, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    const/16 v15, 0x80

    if-lt v14, v15, :cond_e

    .line 682
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v14, v14, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    const/4 v15, 0x2

    if-ne v14, v15, :cond_c

    .line 683
    const v14, 0x7f09039e

    invoke-virtual {v2, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 684
    :cond_c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v14, v14, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    const/4 v15, 0x3

    if-ne v14, v15, :cond_d

    .line 685
    const v14, 0x7f0903a0

    invoke-virtual {v2, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 687
    :cond_d
    const v14, 0x7f09039f

    invoke-virtual {v2, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 690
    :cond_e
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v14, v14, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    packed-switch v14, :pswitch_data_0

    goto/16 :goto_0

    .line 700
    :pswitch_0
    const v14, 0x7f09039d

    invoke-virtual {v2, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 692
    :pswitch_1
    const v14, 0x7f0903a0

    invoke-virtual {v2, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 696
    :pswitch_2
    const v14, 0x7f09039e

    invoke-virtual {v2, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 704
    :cond_f
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/settings_ex/wifi/AccessPoint;->mRssi:I

    const v15, 0x7fffffff

    if-ne v14, v15, :cond_10

    .line 705
    const v14, 0x7f0903a1

    invoke-virtual {v2, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 707
    :cond_10
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v14, :cond_0

    .line 708
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v14, v14, Landroid/net/wifi/WifiConfiguration;->status:I

    if-nez v14, :cond_11

    .line 709
    const v14, 0x7f0900c5

    invoke-virtual {v2, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 710
    :cond_11
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v14, v14, Landroid/net/wifi/WifiConfiguration;->status:I

    const/4 v15, 0x2

    if-ne v14, v15, :cond_0

    .line 711
    const v14, 0x7f09039c

    invoke-virtual {v2, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 756
    :cond_12
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings_ex/wifi/AccessPoint;->setShowSummary(Z)V

    goto/16 :goto_1

    .line 690
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x22

    const/4 v2, 0x1

    .line 466
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 467
    .local v0, "length":I
    if-le v0, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    .line 469
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 471
    .end local p0    # "string":Ljava/lang/String;
    :cond_0
    return-object p0
.end method


# virtual methods
.method public compareTo(Landroid/preference/Preference;)I
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const v4, 0x7fffffff

    const/4 v0, 0x1

    const/4 v2, -0x1

    .line 333
    instance-of v3, p1, Lcom/android/settings_ex/wifi/AccessPoint;

    if-nez v3, :cond_1

    .line 357
    :cond_0
    :goto_0
    return v0

    :cond_1
    move-object v1, p1

    .line 336
    check-cast v1, Lcom/android/settings_ex/wifi/AccessPoint;

    .line 338
    .local v1, "other":Lcom/android/settings_ex/wifi/AccessPoint;
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AccessPoint;->isActive()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Lcom/android/settings_ex/wifi/AccessPoint;->isActive()Z

    move-result v3

    if-nez v3, :cond_2

    move v0, v2

    goto :goto_0

    .line 339
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AccessPoint;->isActive()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v1}, Lcom/android/settings_ex/wifi/AccessPoint;->isActive()Z

    move-result v3

    if-nez v3, :cond_0

    .line 342
    :cond_3
    iget v3, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mRssi:I

    if-eq v3, v4, :cond_4

    iget v3, v1, Lcom/android/settings_ex/wifi/AccessPoint;->mRssi:I

    if-ne v3, v4, :cond_4

    move v0, v2

    goto :goto_0

    .line 343
    :cond_4
    iget v3, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mRssi:I

    if-ne v3, v4, :cond_5

    iget v3, v1, Lcom/android/settings_ex/wifi/AccessPoint;->mRssi:I

    if-ne v3, v4, :cond_0

    .line 346
    :cond_5
    iget v3, p0, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    if-eq v3, v2, :cond_6

    iget v3, v1, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    if-ne v3, v2, :cond_6

    move v0, v2

    .line 347
    goto :goto_0

    .line 348
    :cond_6
    iget v3, p0, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    if-ne v3, v2, :cond_7

    iget v3, v1, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    if-ne v3, v2, :cond_0

    .line 352
    :cond_7
    iget v2, v1, Lcom/android/settings_ex/wifi/AccessPoint;->mRssi:I

    iget v3, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mRssi:I

    invoke-static {v2, v3}, Landroid/net/wifi/WifiManager;->compareSignalLevel(II)I

    move-result v0

    .line 353
    .local v0, "difference":I
    if-nez v0, :cond_0

    .line 357
    iget-object v2, p0, Lcom/android/settings_ex/wifi/AccessPoint;->ssid:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/settings_ex/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 43
    check-cast p1, Landroid/preference/Preference;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/wifi/AccessPoint;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 362
    instance-of v1, p1, Lcom/android/settings_ex/wifi/AccessPoint;

    if-nez v1, :cond_1

    .line 363
    .end local p1    # "other":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .restart local p1    # "other":Ljava/lang/Object;
    :cond_1
    check-cast p1, Lcom/android/settings_ex/wifi/AccessPoint;

    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/wifi/AccessPoint;->compareTo(Landroid/preference/Preference;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected generateOpenNetworkConfig()V
    .locals 2

    .prologue
    .line 766
    iget v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->security:I

    if-eqz v0, :cond_0

    .line 767
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 768
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_1

    .line 773
    :goto_0
    return-void

    .line 770
    :cond_1
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 771
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/settings_ex/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 772
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    goto :goto_0
.end method

.method getConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method getInfo()Landroid/net/wifi/WifiInfo;
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    return-object v0
.end method

.method getLevel()I
    .locals 2

    .prologue
    .line 443
    iget v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mRssi:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 444
    const/4 v0, -0x1

    .line 446
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mRssi:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v0

    goto :goto_0
.end method

.method getNetworkInfo()Landroid/net/NetworkInfo;
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method public getSecurityString(Z)Ljava/lang/String;
    .locals 3
    .param p1, "concise"    # Z

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AccessPoint;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 171
    .local v0, "context":Landroid/content/Context;
    iget v1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->security:I

    packed-switch v1, :pswitch_data_0

    .line 205
    if-eqz p1, :cond_8

    const-string v1, ""

    :goto_0
    return-object v1

    .line 173
    :pswitch_0
    if-eqz p1, :cond_0

    const v1, 0x7f0903ab

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const v1, 0x7f0903b4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 176
    :pswitch_1
    sget-object v1, Lcom/android/settings_ex/wifi/AccessPoint$1;->$SwitchMap$com$android$settings$wifi$AccessPoint$PskType:[I

    iget-object v2, p0, Lcom/android/settings_ex/wifi/AccessPoint;->pskType:Lcom/android/settings_ex/wifi/AccessPoint$PskType;

    invoke-virtual {v2}, Lcom/android/settings_ex/wifi/AccessPoint$PskType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    .line 188
    if-eqz p1, :cond_4

    const v1, 0x7f0903aa

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 178
    :pswitch_2
    if-eqz p1, :cond_1

    const v1, 0x7f0903a7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const v1, 0x7f0903b0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 181
    :pswitch_3
    if-eqz p1, :cond_2

    const v1, 0x7f0903a8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    const v1, 0x7f0903b1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 184
    :pswitch_4
    if-eqz p1, :cond_3

    const v1, 0x7f0903a9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    const v1, 0x7f0903b2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 188
    :cond_4
    const v1, 0x7f0903b3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 192
    :pswitch_5
    if-eqz p1, :cond_5

    const v1, 0x7f0903a6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_5
    const v1, 0x7f0903af

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 196
    :pswitch_6
    if-eqz p1, :cond_6

    const v1, 0x7f0903ac

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_6
    const v1, 0x7f0903b5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 200
    :pswitch_7
    if-eqz p1, :cond_7

    const v1, 0x7f0903ad

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_7
    const v1, 0x7f0903b6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 205
    :cond_8
    const v1, 0x7f0903ae

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 171
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_1
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 176
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method getState()Landroid/net/NetworkInfo$DetailedState;
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 368
    const/4 v0, 0x0

    .line 369
    .local v0, "result":I
    iget-object v1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0xd

    add-int/2addr v0, v1

    .line 370
    :cond_0
    iget v1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mRssi:I

    mul-int/lit8 v1, v1, 0x13

    add-int/2addr v0, v1

    .line 371
    iget v1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    mul-int/lit8 v1, v1, 0x17

    add-int/2addr v0, v1

    .line 372
    iget-object v1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1d

    add-int/2addr v0, v1

    .line 373
    return v0
.end method

.method isActive()Z
    .locals 2

    .prologue
    .line 644
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 289
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 290
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AccessPoint;->getLevel()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AccessPoint;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/settings_ex/wifi/AccessPoint;->updateIcon(ILandroid/content/Context;)V

    .line 292
    const v2, 0x1020010

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 295
    .local v1, "summaryView":Landroid/widget/TextView;
    :try_start_0
    iget-boolean v2, p0, Lcom/android/settings_ex/wifi/AccessPoint;->showSummary:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AccessPoint;->notifyChanged()V

    .line 302
    return-void

    .line 295
    :cond_0
    const/16 v2, 0x8

    goto :goto_0

    .line 296
    :catch_0
    move-exception v0

    .line 297
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1
.end method

.method public saveWifiState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 255
    const-string v0, "key_config"

    iget-object v1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 256
    const-string v0, "key_scanresult"

    iget-object v1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mScanResult:Landroid/net/wifi/ScanResult;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 257
    const-string v0, "key_wifiinfo"

    iget-object v1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 258
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz v0, :cond_0

    .line 259
    const-string v0, "key_networkinfo"

    iget-object v1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 261
    :cond_0
    return-void
.end method

.method public setShowSummary(Z)V
    .locals 2
    .param p1, "showSummary"    # Z

    .prologue
    .line 484
    iput-boolean p1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->showSummary:Z

    .line 485
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mSummaryView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 486
    iget-object v1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mSummaryView:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 488
    :cond_0
    return-void

    .line 486
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)V
    .locals 3
    .param p1, "info"    # Landroid/net/wifi/WifiInfo;
    .param p2, "networkInfo"    # Landroid/net/NetworkInfo;

    .prologue
    const/4 v2, 0x0

    .line 424
    const/4 v0, 0x0

    .line 425
    .local v0, "reorder":Z
    if-eqz p1, :cond_3

    invoke-direct {p0, p1}, Lcom/android/settings_ex/wifi/AccessPoint;->isInfoForThisAccessPoint(Landroid/net/wifi/WifiInfo;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 426
    iget-object v1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-nez v1, :cond_2

    const/4 v0, 0x1

    .line 427
    :goto_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mRssi:I

    .line 428
    iput-object p1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    .line 429
    iput-object p2, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 430
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/AccessPoint;->refresh()V

    .line 437
    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    .line 438
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AccessPoint;->notifyHierarchyChanged()V

    .line 440
    :cond_1
    return-void

    .line 426
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 431
    :cond_3
    iget-object v1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v1, :cond_0

    .line 432
    const/4 v0, 0x1

    .line 433
    iput-object v2, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    .line 434
    iput-object v2, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 435
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/AccessPoint;->refresh()V

    goto :goto_1
.end method

.method update(Landroid/net/wifi/ScanResult;)Z
    .locals 6
    .param p1, "result"    # Landroid/net/wifi/ScanResult;

    .prologue
    .line 377
    iget-wide v2, p1, Landroid/net/wifi/ScanResult;->seen:J

    iget-wide v4, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mSeen:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 378
    iget-wide v2, p1, Landroid/net/wifi/ScanResult;->seen:J

    iput-wide v2, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mSeen:J

    .line 380
    :cond_0
    sget v1, Lcom/android/settings_ex/wifi/WifiSettings;->mVerboseLogging:I

    if-lez v1, :cond_2

    .line 381
    iget-object v1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mScanResultCache:Landroid/util/LruCache;

    if-nez v1, :cond_1

    .line 382
    new-instance v1, Landroid/util/LruCache;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Landroid/util/LruCache;-><init>(I)V

    iput-object v1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mScanResultCache:Landroid/util/LruCache;

    .line 384
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mScanResultCache:Landroid/util/LruCache;

    iget-object v2, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->ssid:Ljava/lang/String;

    iget-object v2, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->security:I

    invoke-static {p1}, Lcom/android/settings_ex/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v2

    if-ne v1, v2, :cond_5

    .line 388
    iget v1, p1, Landroid/net/wifi/ScanResult;->level:I

    iget v2, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mRssi:I

    invoke-static {v1, v2}, Landroid/net/wifi/WifiManager;->compareSignalLevel(II)I

    move-result v1

    if-lez v1, :cond_3

    .line 389
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AccessPoint;->getLevel()I

    move-result v0

    .line 390
    .local v0, "oldLevel":I
    iget v1, p1, Landroid/net/wifi/ScanResult;->level:I

    iput v1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mRssi:I

    .line 391
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AccessPoint;->getLevel()I

    move-result v1

    if-eq v1, v0, :cond_3

    .line 392
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AccessPoint;->notifyChanged()V

    .line 396
    .end local v0    # "oldLevel":I
    :cond_3
    iget v1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->security:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 397
    invoke-static {p1}, Lcom/android/settings_ex/wifi/AccessPoint;->getPskType(Landroid/net/wifi/ScanResult;)Lcom/android/settings_ex/wifi/AccessPoint$PskType;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->pskType:Lcom/android/settings_ex/wifi/AccessPoint$PskType;

    .line 399
    :cond_4
    iput-object p1, p0, Lcom/android/settings_ex/wifi/AccessPoint;->mScanResult:Landroid/net/wifi/ScanResult;

    .line 400
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/AccessPoint;->refresh()V

    .line 401
    const/4 v1, 0x1

    .line 403
    :goto_0
    return v1

    :cond_5
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected updateIcon(ILandroid/content/Context;)V
    .locals 4
    .param p1, "level"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 306
    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    .line 307
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/wifi/AccessPoint;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 329
    :cond_0
    :goto_0
    return-void

    .line 309
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AccessPoint;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 311
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_2

    .line 314
    invoke-virtual {p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget-object v3, Lcom/android/settings_ex/wifi/AccessPoint;->wifi_signal_attributes:[I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/StateListDrawable;

    .line 318
    .local v1, "sld":Landroid/graphics/drawable/StateListDrawable;
    if-eqz v1, :cond_2

    .line 319
    iget v2, p0, Lcom/android/settings_ex/wifi/AccessPoint;->security:I

    if-eqz v2, :cond_3

    sget-object v2, Lcom/android/settings_ex/wifi/AccessPoint;->STATE_SECURED:[I

    :goto_1
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    .line 320
    invoke-virtual {v1}, Landroid/graphics/drawable/StateListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 321
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/AccessPoint;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 325
    .end local v1    # "sld":Landroid/graphics/drawable/StateListDrawable;
    :cond_2
    if-eqz v0, :cond_0

    .line 326
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_0

    .line 319
    .restart local v1    # "sld":Landroid/graphics/drawable/StateListDrawable;
    :cond_3
    sget-object v2, Lcom/android/settings_ex/wifi/AccessPoint;->STATE_NONE:[I

    goto :goto_1
.end method
