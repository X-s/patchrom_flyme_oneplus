.class public Landroid/net/wifi/WifiConfiguration;
.super Ljava/lang/Object;
.source "WifiConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiConfiguration$Visibility;,
        Landroid/net/wifi/WifiConfiguration$Status;,
        Landroid/net/wifi/WifiConfiguration$GroupCipher;,
        Landroid/net/wifi/WifiConfiguration$FlymeInjector;,
        Landroid/net/wifi/WifiConfiguration$PairwiseCipher;,
        Landroid/net/wifi/WifiConfiguration$AuthAlgorithm;,
        Landroid/net/wifi/WifiConfiguration$Protocol;,
        Landroid/net/wifi/WifiConfiguration$KeyMgmt;
    }
.end annotation


# static fields
.field public static final AUTO_JOIN_DELETED:I = 0xc8

.field public static final AUTO_JOIN_DISABLED_NO_CREDENTIALS:I = 0xa0

.field public static final AUTO_JOIN_DISABLED_ON_AUTH_FAILURE:I = 0x80

.field public static final AUTO_JOIN_DISABLED_USER_ACTION:I = 0xa1

.field public static final AUTO_JOIN_ENABLED:I = 0x0

.field public static final AUTO_JOIN_TEMPORARY_DISABLED:I = 0x1

.field public static final AUTO_JOIN_TEMPORARY_DISABLED_AT_SUPPLICANT:I = 0x40

.field public static final AUTO_JOIN_TEMPORARY_DISABLED_LINK_ERRORS:I = 0x20

.field public static A_BAND_PREFERENCE_RSSI_THRESHOLD:I = 0x0

.field public static BAD_RSSI_24:I = 0x0

.field public static BAD_RSSI_5:I = 0x0

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field public static final DISABLED_ASSOCIATION_REJECT:I = 0x4

.field public static final DISABLED_AUTH_FAILURE:I = 0x3

.field public static final DISABLED_BY_WIFI_MANAGER:I = 0x5

.field public static final DISABLED_DHCP_FAILURE:I = 0x2

.field public static final DISABLED_DNS_FAILURE:I = 0x1

.field public static final DISABLED_UNKNOWN_REASON:I = 0x0

.field public static GOOD_RSSI_24:I = 0x0

.field public static GOOD_RSSI_5:I = 0x0

.field public static G_BAND_PREFERENCE_RSSI_THRESHOLD:I = 0x0

.field public static HOME_NETWORK_RSSI_BOOST:I = 0x0

.field public static INITIAL_AUTO_JOIN_ATTEMPT_MIN_24:I = 0x0

.field public static INITIAL_AUTO_JOIN_ATTEMPT_MIN_5:I = 0x0

.field public static final INVALID_NETWORK_ID:I = -0x1

.field public static INVALID_RSSI:I = 0x0

.field public static LOW_RSSI_24:I = 0x0

.field public static LOW_RSSI_5:I = 0x0

.field public static MAX_INITIAL_AUTO_JOIN_RSSI_BOOST:I = 0x0

.field public static ROAMING_FAILURE_AUTH_FAILURE:I = 0x0

.field public static ROAMING_FAILURE_IP_CONFIG:I = 0x0

.field public static final SIMNumVarName:Ljava/lang/String; = "sim_num"

.field private static final TAG:Ljava/lang/String; = "WifiConfiguration"

.field public static UNBLACKLIST_THRESHOLD_24_HARD:I = 0x0

.field public static UNBLACKLIST_THRESHOLD_24_SOFT:I = 0x0

.field public static UNBLACKLIST_THRESHOLD_5_HARD:I = 0x0

.field public static UNBLACKLIST_THRESHOLD_5_SOFT:I = 0x0

.field public static UNWANTED_BLACKLIST_HARD_BUMP:I = 0x0

.field public static UNWANTED_BLACKLIST_SOFT_BUMP:I = 0x0

.field public static UNWANTED_BLACKLIST_SOFT_RSSI_24:I = 0x0

.field public static UNWANTED_BLACKLIST_SOFT_RSSI_5:I = 0x0

.field public static final bssidVarName:Ljava/lang/String; = "bssid"

.field public static final hiddenSSIDVarName:Ljava/lang/String; = "scan_ssid"

.field public static final pmfVarName:Ljava/lang/String; = "ieee80211w"

.field public static final priorityVarName:Ljava/lang/String; = "priority"

.field public static final pskVarName:Ljava/lang/String; = "psk"

.field public static final ssidVarName:Ljava/lang/String; = "ssid"

.field public static final updateIdentiferVarName:Ljava/lang/String; = "update_identifier"

.field public static final wapiAsCertFileVarName:Ljava/lang/String; = "as_cert_file"

.field public static final wapiPskTypeVarName:Ljava/lang/String; = "wapi_key_type"

.field public static final wapiPskVarName:Ljava/lang/String; = "wapi_psk"

.field public static final wapiUserCertFileVarName:Ljava/lang/String; = "user_cert_file"

.field public static final wepKeyVarNames:[Ljava/lang/String;

.field public static final wepTxKeyIdxVarName:Ljava/lang/String; = "wep_tx_keyidx"


# instance fields
.field public BandMode:I

.field public HexSSID:Ljava/lang/String;

.field public adhocMode:Ljava/lang/String;

.field public preSharedKeyEncry:Ljava/lang/String;

.field public BSSID:Ljava/lang/String;

.field public FQDN:Ljava/lang/String;

.field public SIMNum:I

.field public SSID:Ljava/lang/String;

.field public allowedAuthAlgorithms:Ljava/util/BitSet;

.field public allowedGroupCiphers:Ljava/util/BitSet;

.field public allowedKeyManagement:Ljava/util/BitSet;

.field public allowedPairwiseCiphers:Ljava/util/BitSet;

.field public allowedProtocols:Ljava/util/BitSet;

.field public autoJoinBSSID:Ljava/lang/String;

.field public autoJoinBailedDueToLowRssi:Z

.field public autoJoinStatus:I

.field public autoJoinUseAggressiveJoinAttemptThreshold:I

.field public blackListTimestamp:J

.field public connectChoices:Ljava/util/HashMap;
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

.field public creatorUid:I

.field public defaultGwMacAddress:Ljava/lang/String;

.field public dhcpServer:Ljava/lang/String;

.field public didSelfAdd:Z

.field public dirty:Z

.field public disableReason:I

.field public duplicateNetwork:Z

.field public enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

.field public ephemeral:Z

.field public hiddenSSID:Z

.field public lastConnectUid:I

.field public lastConnected:J

.field public lastConnectionFailure:J

.field public lastDisconnected:J

.field public lastFailure:Ljava/lang/String;

.field public lastRoamingFailure:J

.field public lastRoamingFailureReason:I

.field public lastUpdateUid:I

.field public linkedConfigurations:Ljava/util/HashMap;
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

.field mCachedConfigKey:Ljava/lang/String;

.field private mIpConfiguration:Landroid/net/IpConfiguration;

.field public naiRealm:Ljava/lang/String;

.field public networkId:I

.field public numAssociation:I

.field public numAuthFailures:I

.field public numConnectionFailures:I

.field public numIpConfigFailures:I

.field public numNoInternetAccessReports:I

.field public numScorerOverride:I

.field public numScorerOverrideAndSwitchedNetwork:I

.field public numTicksAtBadRSSI:I

.field public numTicksAtLowRSSI:I

.field public numTicksAtNotHighRSSI:I

.field public numUserTriggeredJoinAttempts:I

.field public numUserTriggeredWifiDisableBadRSSI:I

.field public numUserTriggeredWifiDisableLowRSSI:I

.field public numUserTriggeredWifiDisableNotHighRSSI:I

.field public peerWifiConfiguration:Ljava/lang/String;

.field public preSharedKey:Ljava/lang/String;

.field public priority:I

.field public requirePMF:Z

.field public roamingFailureBlackListTimeMilli:J

.field public scanResultCache:Ljava/util/HashMap;
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

.field public selfAdded:Z

.field public status:I

.field public updateIdentifier:Ljava/lang/String;

.field public validatedInternetAccess:Z

.field public visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

.field public wapiASCert:Ljava/lang/String;

.field public wapiPsk:Ljava/lang/String;

.field public wapiPskType:I

.field public wapiUserCert:Ljava/lang/String;

.field public wepKeys:[Ljava/lang/String;

.field public wepTxKeyIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/16 v6, -0x41

    const/16 v5, -0x46

    const/16 v4, -0x4d

    const/16 v3, -0x50

    .line 49
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "wep_key0"

    aput-object v2, v0, v1

    const-string/jumbo v1, "wep_key1"

    aput-object v1, v0, v7

    const/4 v1, 0x2

    const-string/jumbo v2, "wep_key2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "wep_key3"

    aput-object v2, v0, v1

    sput-object v0, Landroid/net/wifi/WifiConfiguration;->wepKeyVarNames:[Ljava/lang/String;

    .line 445
    const/16 v0, -0x7f

    sput v0, Landroid/net/wifi/WifiConfiguration;->INVALID_RSSI:I

    .line 448
    sput v3, Landroid/net/wifi/WifiConfiguration;->UNWANTED_BLACKLIST_SOFT_RSSI_24:I

    .line 451
    sput v5, Landroid/net/wifi/WifiConfiguration;->UNWANTED_BLACKLIST_SOFT_RSSI_5:I

    .line 454
    sput v6, Landroid/net/wifi/WifiConfiguration;->GOOD_RSSI_24:I

    .line 457
    sput v4, Landroid/net/wifi/WifiConfiguration;->LOW_RSSI_24:I

    .line 460
    const/16 v0, -0x57

    sput v0, Landroid/net/wifi/WifiConfiguration;->BAD_RSSI_24:I

    .line 463
    const/16 v0, -0x3c

    sput v0, Landroid/net/wifi/WifiConfiguration;->GOOD_RSSI_5:I

    .line 466
    const/16 v0, -0x48

    sput v0, Landroid/net/wifi/WifiConfiguration;->LOW_RSSI_5:I

    .line 469
    const/16 v0, -0x52

    sput v0, Landroid/net/wifi/WifiConfiguration;->BAD_RSSI_5:I

    .line 472
    const/4 v0, 0x4

    sput v0, Landroid/net/wifi/WifiConfiguration;->UNWANTED_BLACKLIST_SOFT_BUMP:I

    .line 475
    const/16 v0, 0x8

    sput v0, Landroid/net/wifi/WifiConfiguration;->UNWANTED_BLACKLIST_HARD_BUMP:I

    .line 478
    sput v4, Landroid/net/wifi/WifiConfiguration;->UNBLACKLIST_THRESHOLD_24_SOFT:I

    .line 481
    const/16 v0, -0x44

    sput v0, Landroid/net/wifi/WifiConfiguration;->UNBLACKLIST_THRESHOLD_24_HARD:I

    .line 484
    const/16 v0, -0x3f

    sput v0, Landroid/net/wifi/WifiConfiguration;->UNBLACKLIST_THRESHOLD_5_SOFT:I

    .line 487
    const/16 v0, -0x38

    sput v0, Landroid/net/wifi/WifiConfiguration;->UNBLACKLIST_THRESHOLD_5_HARD:I

    .line 490
    sput v3, Landroid/net/wifi/WifiConfiguration;->INITIAL_AUTO_JOIN_ATTEMPT_MIN_24:I

    .line 493
    sput v5, Landroid/net/wifi/WifiConfiguration;->INITIAL_AUTO_JOIN_ATTEMPT_MIN_5:I

    .line 497
    sput v6, Landroid/net/wifi/WifiConfiguration;->A_BAND_PREFERENCE_RSSI_THRESHOLD:I

    .line 501
    const/16 v0, -0x4b

    sput v0, Landroid/net/wifi/WifiConfiguration;->G_BAND_PREFERENCE_RSSI_THRESHOLD:I

    .line 510
    const/4 v0, 0x5

    sput v0, Landroid/net/wifi/WifiConfiguration;->HOME_NETWORK_RSSI_BOOST:I

    .line 516
    const/16 v0, 0x8

    sput v0, Landroid/net/wifi/WifiConfiguration;->MAX_INITIAL_AUTO_JOIN_RSSI_BOOST:I

    .line 773
    sput v7, Landroid/net/wifi/WifiConfiguration;->ROAMING_FAILURE_IP_CONFIG:I

    .line 775
    const/4 v0, 0x2

    sput v0, Landroid/net/wifi/WifiConfiguration;->ROAMING_FAILURE_AUTH_FAILURE:I

    .line 1779
    new-instance v0, Landroid/net/wifi/WifiConfiguration$3;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration$3;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 942
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 782
    const-wide/16 v2, 0x3e8

    iput-wide v2, p0, Landroid/net/wifi/WifiConfiguration;->roamingFailureBlackListTimeMilli:J

    .line 943
    const/4 v1, -0x1

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 944
    iput-object v5, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 945
    iput-object v5, p0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 946
    iput-object v5, p0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    .line 947
    iput-object v5, p0, Landroid/net/wifi/WifiConfiguration;->naiRealm:Ljava/lang/String;

    .line 948
    iput v4, p0, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 949
    iput-boolean v4, p0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 950
    iput v4, p0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    .line 951
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 952
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    .line 953
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    .line 954
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    .line 955
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    .line 956
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    .line 957
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 958
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aput-object v5, v1, v0

    .line 957
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 960
    :cond_0
    new-instance v1, Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct {v1}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iput v4, p0, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    iput-boolean v4, p0, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    iput-boolean v4, p0, Landroid/net/wifi/WifiConfiguration;->didSelfAdd:Z

    iput-boolean v4, p0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    iput-boolean v4, p0, Landroid/net/wifi/WifiConfiguration;->validatedInternetAccess:Z

    new-instance v1, Landroid/net/IpConfiguration;

    invoke-direct {v1}, Landroid/net/IpConfiguration;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    iput-boolean v4, p0, Landroid/net/wifi/WifiConfiguration;->duplicateNetwork:Z

    iput v4, p0, Landroid/net/wifi/WifiConfiguration;->SIMNum:I

    invoke-static/range {p0 .. p0}, Landroid/net/wifi/WifiConfiguration$FlymeInjector;->initFlymeExtraFields(Landroid/net/wifi/WifiConfiguration;)V

    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/WifiConfiguration;)V
    .locals 4
    .param p1, "source"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 1610
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 782
    const-wide/16 v2, 0x3e8

    iput-wide v2, p0, Landroid/net/wifi/WifiConfiguration;->roamingFailureBlackListTimeMilli:J

    .line 1611
    if-eqz p1, :cond_5

    .line 1612
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 1613
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->status:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 1614
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    .line 1615
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    .line 1616
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 1617
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 1618
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    .line 1619
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->naiRealm:Ljava/lang/String;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->naiRealm:Ljava/lang/String;

    .line 1620
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 1622
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    .line 1623
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1624
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v2, v2, v0

    aput-object v2, v1, v0

    .line 1623
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1627
    :cond_0
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    .line 1628
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->priority:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 1629
    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    iput-boolean v1, p0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 1630
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/BitSet;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 1631
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/BitSet;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    .line 1632
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/BitSet;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    .line 1633
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/BitSet;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    .line 1634
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/BitSet;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    .line 1636
    new-instance v1, Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct {v1, v2}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>(Landroid/net/wifi/WifiEnterpriseConfig;)V

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 1638
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->defaultGwMacAddress:Ljava/lang/String;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->defaultGwMacAddress:Ljava/lang/String;

    .line 1640
    new-instance v1, Landroid/net/IpConfiguration;

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    invoke-direct {v1, v2}, Landroid/net/IpConfiguration;-><init>(Landroid/net/IpConfiguration;)V

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    .line 1642
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->scanResultCache:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->scanResultCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 1643
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->scanResultCache:Ljava/util/HashMap;

    .line 1644
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->scanResultCache:Ljava/util/HashMap;

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->scanResultCache:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 1647
    :cond_1
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->connectChoices:Ljava/util/HashMap;

    if-eqz v1, :cond_2

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->connectChoices:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 1648
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->connectChoices:Ljava/util/HashMap;

    .line 1649
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->connectChoices:Ljava/util/HashMap;

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->connectChoices:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 1652
    :cond_2
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    if-eqz v1, :cond_3

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 1654
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    .line 1655
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 1657
    :cond_3
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->mCachedConfigKey:Ljava/lang/String;

    .line 1658
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    .line 1659
    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    iput-boolean v1, p0, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    .line 1660
    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->validatedInternetAccess:Z

    iput-boolean v1, p0, Landroid/net/wifi/WifiConfiguration;->validatedInternetAccess:Z

    .line 1661
    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    iput-boolean v1, p0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    .line 1662
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    if-eqz v1, :cond_4

    .line 1663
    new-instance v1, Landroid/net/wifi/WifiConfiguration$Visibility;

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    invoke-direct {v1, p0, v2}, Landroid/net/wifi/WifiConfiguration$Visibility;-><init>(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration$Visibility;)V

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    :cond_4
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->lastFailure:Ljava/lang/String;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->lastFailure:Ljava/lang/String;

    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->didSelfAdd:Z

    iput-boolean v1, p0, Landroid/net/wifi/WifiConfiguration;->didSelfAdd:Z

    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->lastConnectUid:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->lastConnectUid:I

    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->peerWifiConfiguration:Ljava/lang/String;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->peerWifiConfiguration:Ljava/lang/String;

    iget-wide v2, p1, Landroid/net/wifi/WifiConfiguration;->blackListTimestamp:J

    iput-wide v2, p0, Landroid/net/wifi/WifiConfiguration;->blackListTimestamp:J

    iget-wide v2, p1, Landroid/net/wifi/WifiConfiguration;->lastConnected:J

    iput-wide v2, p0, Landroid/net/wifi/WifiConfiguration;->lastConnected:J

    iget-wide v2, p1, Landroid/net/wifi/WifiConfiguration;->lastDisconnected:J

    iput-wide v2, p0, Landroid/net/wifi/WifiConfiguration;->lastDisconnected:J

    iget-wide v2, p1, Landroid/net/wifi/WifiConfiguration;->lastConnectionFailure:J

    iput-wide v2, p0, Landroid/net/wifi/WifiConfiguration;->lastConnectionFailure:J

    iget-wide v2, p1, Landroid/net/wifi/WifiConfiguration;->lastRoamingFailure:J

    iput-wide v2, p0, Landroid/net/wifi/WifiConfiguration;->lastRoamingFailure:J

    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->lastRoamingFailureReason:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->lastRoamingFailureReason:I

    iget-wide v2, p1, Landroid/net/wifi/WifiConfiguration;->roamingFailureBlackListTimeMilli:J

    iput-wide v2, p0, Landroid/net/wifi/WifiConfiguration;->roamingFailureBlackListTimeMilli:J

    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->numConnectionFailures:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->numConnectionFailures:I

    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->numIpConfigFailures:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->numIpConfigFailures:I

    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->numAuthFailures:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->numAuthFailures:I

    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->numScorerOverride:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->numScorerOverride:I

    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->numScorerOverrideAndSwitchedNetwork:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->numScorerOverrideAndSwitchedNetwork:I

    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableLowRSSI:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableLowRSSI:I

    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableBadRSSI:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableBadRSSI:I

    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableNotHighRSSI:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableNotHighRSSI:I

    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->numTicksAtLowRSSI:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->numTicksAtLowRSSI:I

    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->numTicksAtBadRSSI:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->numTicksAtBadRSSI:I

    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->numTicksAtNotHighRSSI:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->numTicksAtNotHighRSSI:I

    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredJoinAttempts:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredJoinAttempts:I

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->autoJoinBSSID:Ljava/lang/String;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->autoJoinBSSID:Ljava/lang/String;

    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->autoJoinUseAggressiveJoinAttemptThreshold:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->autoJoinUseAggressiveJoinAttemptThreshold:I

    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->autoJoinBailedDueToLowRssi:Z

    iput-boolean v1, p0, Landroid/net/wifi/WifiConfiguration;->autoJoinBailedDueToLowRssi:Z

    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->dirty:Z

    iput-boolean v1, p0, Landroid/net/wifi/WifiConfiguration;->dirty:Z

    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->duplicateNetwork:Z

    iput-boolean v1, p0, Landroid/net/wifi/WifiConfiguration;->duplicateNetwork:Z

    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->SIMNum:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->SIMNum:I

    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    invoke-static/range {p0 .. p1}, Landroid/net/wifi/WifiConfiguration$FlymeInjector;->initFlymeExtraFields(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)V

    .end local v0    # "i":I
    :cond_5
    return-void
.end method

.method static synthetic access$000(Landroid/os/Parcel;)Ljava/util/BitSet;
    .locals 1
    .param p0, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 40
    invoke-static {p0}, Landroid/net/wifi/WifiConfiguration;->readBitSet(Landroid/os/Parcel;)Ljava/util/BitSet;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$102(Landroid/net/wifi/WifiConfiguration;Landroid/net/IpConfiguration;)Landroid/net/IpConfiguration;
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiConfiguration;
    .param p1, "x1"    # Landroid/net/IpConfiguration;

    .prologue
    .line 40
    iput-object p1, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    return-object p1
.end method

.method public static configKey(Landroid/net/wifi/ScanResult;)Ljava/lang/String;
    .locals 4
    .param p0, "result"    # Landroid/net/wifi/ScanResult;

    .prologue
    .line 1526
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1528
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v2, "WEP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1529
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-WEP"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1538
    :goto_0
    iget-object v1, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v2, "WAPI-KEY"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1539
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1541
    :cond_0
    iget-object v1, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v2, "WAPI-CERT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1542
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1545
    :cond_1
    return-object v0

    .line 1530
    :cond_2
    iget-object v1, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v2, "PSK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1531
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1532
    :cond_3
    iget-object v1, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v2, "EAP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v2, "IEEE8021X"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1534
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1536
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private static readBitSet(Landroid/os/Parcel;)Ljava/util/BitSet;
    .locals 4
    .param p0, "src"    # Landroid/os/Parcel;

    .prologue
    .line 1438
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1440
    .local v0, "cardinality":I
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2}, Ljava/util/BitSet;-><init>()V

    .line 1441
    .local v2, "set":Ljava/util/BitSet;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1442
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 1441
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1445
    :cond_0
    return-object v2
.end method

.method private sortScanResults()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1104
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->scanResultCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1105
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/wifi/ScanResult;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1106
    new-instance v1, Landroid/net/wifi/WifiConfiguration$2;

    invoke-direct {v1, p0}, Landroid/net/wifi/WifiConfiguration$2;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1132
    :cond_0
    return-object v0
.end method

.method private trimStringForKeyId(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 1434
    const-string v0, "\""

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V
    .locals 2
    .param p0, "dest"    # Landroid/os/Parcel;
    .param p1, "set"    # Ljava/util/BitSet;

    .prologue
    .line 1449
    const/4 v0, -0x1

    .line 1451
    .local v0, "nextSetBit":I
    invoke-virtual {p1}, Ljava/util/BitSet;->cardinality()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1453
    :goto_0
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1454
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 1456
    :cond_0
    return-void
.end method


# virtual methods
.method public configKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1519
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public configKey(Z)Ljava/lang/String;
    .locals 8
    .param p1, "allowCached"    # Z

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1491
    if-eqz p1, :cond_0

    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->mCachedConfigKey:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1492
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mCachedConfigKey:Ljava/lang/String;

    .line 1512
    .local v0, "key":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 1494
    .end local v0    # "key":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1495
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1504
    .restart local v0    # "key":Ljava/lang/String;
    :goto_1
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1505
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object v2, v2, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1507
    :cond_1
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v7}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1508
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object v2, v2, v7

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1510
    :cond_2
    iput-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mCachedConfigKey:Ljava/lang/String;

    goto :goto_0

    .line 1496
    .end local v0    # "key":Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1498
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "key":Ljava/lang/String;
    goto :goto_1

    .line 1499
    .end local v0    # "key":Ljava/lang/String;
    :cond_5
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v1, v1, v3

    if-eqz v1, :cond_6

    .line 1500
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-WEP"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "key":Ljava/lang/String;
    goto/16 :goto_1

    .line 1502
    .end local v0    # "key":Ljava/lang/String;
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "key":Ljava/lang/String;
    goto/16 :goto_1
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 1606
    const/4 v0, 0x0

    return v0
.end method

.method public getAuthType()I
    .locals 6

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x4

    const/4 v2, 0x3

    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 1460
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->isValid()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1461
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid configuration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1463
    :cond_0
    iget-object v5, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v5, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1476
    :goto_0
    return v0

    .line 1465
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v5, 0x6

    invoke-virtual {v0, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1466
    const/4 v0, 0x6

    goto :goto_0

    .line 1467
    :cond_2
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 1468
    goto :goto_0

    .line 1469
    :cond_3
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    .line 1470
    goto :goto_0

    .line 1471
    :cond_4
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v3

    .line 1472
    goto :goto_0

    .line 1473
    :cond_5
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v4

    .line 1474
    goto :goto_0

    .line 1476
    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHttpProxy()Landroid/net/ProxyInfo;
    .locals 1

    .prologue
    .line 1590
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    iget-object v0, v0, Landroid/net/IpConfiguration;->httpProxy:Landroid/net/ProxyInfo;

    return-object v0
.end method

.method public getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;
    .locals 1

    .prologue
    .line 1570
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    iget-object v0, v0, Landroid/net/IpConfiguration;->ipAssignment:Landroid/net/IpConfiguration$IpAssignment;

    return-object v0
.end method

.method public getIpConfiguration()Landroid/net/IpConfiguration;
    .locals 1

    .prologue
    .line 1550
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    return-object v0
.end method

.method public getKeyIdForCredentials(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
    .locals 5
    .param p1, "current"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 1405
    const/4 v1, 0x0

    .line 1409
    .local v1, "keyMgmt":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iput-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 1410
    :cond_0
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2}, Ljava/util/BitSet;->cardinality()I

    move-result v2

    if-nez v2, :cond_1

    .line 1411
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    iput-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 1413
    :cond_1
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1414
    sget-object v2, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v1, v2, v3

    .line 1416
    :cond_2
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1417
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1420
    :cond_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1421
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Not an EAP network"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1427
    :catch_0
    move-exception v0

    .line 1428
    .local v0, "e":Ljava/lang/NullPointerException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Invalid config details"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1424
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_4
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-direct {p0, v3}, Landroid/net/wifi/WifiConfiguration;->trimStringForKeyId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    if-eqz p1, :cond_5

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    :goto_0
    invoke-virtual {v4, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->getKeyId(Landroid/net/wifi/WifiEnterpriseConfig;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/wifi/WifiConfiguration;->trimStringForKeyId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    return-object v2

    :cond_5
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getPrintableSsid()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v4, 0x22

    .line 1377
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v2, :cond_0

    const-string v2, ""

    .line 1393
    :goto_0
    return-object v2

    .line 1378
    :cond_0
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .line 1379
    .local v0, "length":I
    if-le v0, v7, :cond_1

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_1

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_1

    .line 1380
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1387
    :cond_1
    const/4 v2, 0x3

    if-le v0, v2, :cond_2

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x50

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_2

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_2

    .line 1389
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/wifi/WifiSsid;->createFromAsciiEncoded(Ljava/lang/String;)Landroid/net/wifi/WifiSsid;

    move-result-object v1

    .line 1391
    .local v1, "wifiSsid":Landroid/net/wifi/WifiSsid;
    invoke-virtual {v1}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1393
    .end local v1    # "wifiSsid":Landroid/net/wifi/WifiSsid;
    :cond_2
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_0
.end method

.method public getProxySettings()Landroid/net/IpConfiguration$ProxySettings;
    .locals 1

    .prologue
    .line 1580
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    iget-object v0, v0, Landroid/net/IpConfiguration;->proxySettings:Landroid/net/IpConfiguration$ProxySettings;

    return-object v0
.end method

.method public getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;
    .locals 1

    .prologue
    .line 1560
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    invoke-virtual {v0}, Landroid/net/IpConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public hasNoInternetAccess()Z
    .locals 1

    .prologue
    .line 744
    iget v0, p0, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    if-lez v0, :cond_0

    iget-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->validatedInternetAccess:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLinked(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 1011
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 1012
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1014
    const/4 v0, 0x1

    .line 1017
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isValid()Z
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 978
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    if-nez v2, :cond_1

    .line 1003
    :cond_0
    :goto_0
    return v0

    .line 981
    :cond_1
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2}, Ljava/util/BitSet;->cardinality()I

    move-result v2

    if-le v2, v1, :cond_3

    .line 982
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-ne v2, v1, :cond_4

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-ne v2, v1, :cond_4

    .line 984
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2}, Ljava/util/BitSet;->cardinality()I

    move-result v2

    if-ne v2, v5, :cond_0

    .line 993
    :cond_2
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 996
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    .line 1003
    goto :goto_0

    .line 988
    :cond_4
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2}, Ljava/util/BitSet;->cardinality()I

    move-result v2

    if-eq v2, v4, :cond_2

    goto :goto_0
.end method

.method public lastSeen()Landroid/net/wifi/ScanResult;
    .locals 8

    .prologue
    .line 1026
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1027
    .local v3, "sbuf":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 1029
    .local v1, "mostRecent":Landroid/net/wifi/ScanResult;
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->scanResultCache:Ljava/util/HashMap;

    if-nez v4, :cond_0

    .line 1030
    const/4 v4, 0x0

    .line 1049
    :goto_0
    return-object v4

    .line 1033
    :cond_0
    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1034
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->wapiPsk:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 1035
    const-string v4, " wapiPsk: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x2a

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1039
    :cond_1
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->scanResultCache:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    .line 1040
    .local v2, "result":Landroid/net/wifi/ScanResult;
    if-nez v1, :cond_3

    .line 1041
    iget-wide v4, v2, Landroid/net/wifi/ScanResult;->seen:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    .line 1042
    move-object v1, v2

    goto :goto_1

    .line 1044
    :cond_3
    iget-wide v4, v2, Landroid/net/wifi/ScanResult;->seen:J

    iget-wide v6, v1, Landroid/net/wifi/ScanResult;->seen:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    .line 1045
    move-object v1, v2

    goto :goto_1

    .end local v2    # "result":Landroid/net/wifi/ScanResult;
    :cond_4
    move-object v4, v1

    .line 1049
    goto :goto_0
.end method

.method public setAutoJoinStatus(I)V
    .locals 2
    .param p1, "status"    # I

    .prologue
    .line 1054
    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 1055
    :cond_0
    if-nez p1, :cond_3

    .line 1056
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/net/wifi/WifiConfiguration;->blackListTimestamp:J

    .line 1060
    :cond_1
    :goto_0
    iget v0, p0, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    if-eq p1, v0, :cond_2

    .line 1061
    iput p1, p0, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    .line 1062
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->dirty:Z

    .line 1064
    :cond_2
    return-void

    .line 1057
    :cond_3
    iget v0, p0, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    if-le p1, v0, :cond_1

    .line 1058
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/wifi/WifiConfiguration;->blackListTimestamp:J

    goto :goto_0
.end method

.method public setHttpProxy(Landroid/net/ProxyInfo;)V
    .locals 1
    .param p1, "httpProxy"    # Landroid/net/ProxyInfo;

    .prologue
    .line 1595
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    iput-object p1, v0, Landroid/net/IpConfiguration;->httpProxy:Landroid/net/ProxyInfo;

    .line 1596
    return-void
.end method

.method public setIpAssignment(Landroid/net/IpConfiguration$IpAssignment;)V
    .locals 1
    .param p1, "ipAssignment"    # Landroid/net/IpConfiguration$IpAssignment;

    .prologue
    .line 1575
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    iput-object p1, v0, Landroid/net/IpConfiguration;->ipAssignment:Landroid/net/IpConfiguration$IpAssignment;

    .line 1576
    return-void
.end method

.method public setIpConfiguration(Landroid/net/IpConfiguration;)V
    .locals 0
    .param p1, "ipConfiguration"    # Landroid/net/IpConfiguration;

    .prologue
    .line 1555
    iput-object p1, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    .line 1556
    return-void
.end method

.method public setProxy(Landroid/net/IpConfiguration$ProxySettings;Landroid/net/ProxyInfo;)V
    .locals 1
    .param p1, "settings"    # Landroid/net/IpConfiguration$ProxySettings;
    .param p2, "proxy"    # Landroid/net/ProxyInfo;

    .prologue
    .line 1600
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    iput-object p1, v0, Landroid/net/IpConfiguration;->proxySettings:Landroid/net/IpConfiguration$ProxySettings;

    .line 1601
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    iput-object p2, v0, Landroid/net/IpConfiguration;->httpProxy:Landroid/net/ProxyInfo;

    .line 1602
    return-void
.end method

.method public setProxySettings(Landroid/net/IpConfiguration$ProxySettings;)V
    .locals 1
    .param p1, "proxySettings"    # Landroid/net/IpConfiguration$ProxySettings;

    .prologue
    .line 1585
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    iput-object p1, v0, Landroid/net/IpConfiguration;->proxySettings:Landroid/net/IpConfiguration$ProxySettings;

    .line 1586
    return-void
.end method

.method public setStaticIpConfiguration(Landroid/net/StaticIpConfiguration;)V
    .locals 1
    .param p1, "staticIpConfiguration"    # Landroid/net/StaticIpConfiguration;

    .prologue
    .line 1565
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    invoke-virtual {v0, p1}, Landroid/net/IpConfiguration;->setStaticIpConfiguration(Landroid/net/StaticIpConfiguration;)V

    .line 1566
    return-void
.end method

.method public setVisibility(J)Landroid/net/wifi/WifiConfiguration$Visibility;
    .locals 1
    .param p1, "age"    # J

    .prologue
    .line 600
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/net/wifi/WifiConfiguration;->setVisibility(JI)Landroid/net/wifi/WifiConfiguration$Visibility;

    move-result-object v0

    return-object v0
.end method

.method public setVisibility(JI)Landroid/net/wifi/WifiConfiguration$Visibility;
    .locals 15
    .param p1, "age"    # J
    .param p3, "configBand"    # I

    .prologue
    const/4 v9, 0x0

    .line 611
    const/4 v3, 0x0

    .line 612
    .local v3, "isNetworkFound":Z
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v6

    .line 613
    .local v6, "profileConfigKey":Ljava/lang/String;
    iget-object v10, p0, Landroid/net/wifi/WifiConfiguration;->scanResultCache:Ljava/util/HashMap;

    if-nez v10, :cond_0

    .line 614
    iput-object v9, p0, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    move-object v8, v9

    .line 673
    :goto_0
    return-object v8

    .line 618
    :cond_0
    new-instance v8, Landroid/net/wifi/WifiConfiguration$Visibility;

    invoke-direct {v8, p0}, Landroid/net/wifi/WifiConfiguration$Visibility;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    .line 620
    .local v8, "status":Landroid/net/wifi/WifiConfiguration$Visibility;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 621
    .local v4, "now_ms":J
    iget-object v10, p0, Landroid/net/wifi/WifiConfiguration;->scanResultCache:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/ScanResult;

    .line 622
    .local v7, "result":Landroid/net/wifi/ScanResult;
    iget-wide v10, v7, Landroid/net/wifi/ScanResult;->seen:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-eqz v10, :cond_1

    .line 625
    invoke-virtual {v7}, Landroid/net/wifi/ScanResult;->is5GHz()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 626
    const/4 v10, 0x2

    move/from16 v0, p3

    if-eq v0, v10, :cond_1

    .line 631
    iget v10, v8, Landroid/net/wifi/WifiConfiguration$Visibility;->num5:I

    add-int/lit8 v10, v10, 0x1

    iput v10, v8, Landroid/net/wifi/WifiConfiguration$Visibility;->num5:I

    .line 641
    :cond_2
    :goto_2
    iget-wide v10, v7, Landroid/net/wifi/ScanResult;->seen:J

    sub-long v10, v4, v10

    cmp-long v10, v10, p1

    if-gtz v10, :cond_1

    .line 643
    invoke-virtual {v7}, Landroid/net/wifi/ScanResult;->is5GHz()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 644
    invoke-static {v7}, Landroid/net/wifi/WifiConfiguration;->configKey(Landroid/net/wifi/ScanResult;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 645
    const/4 v3, 0x1

    .line 647
    :cond_3
    iget v10, v7, Landroid/net/wifi/ScanResult;->level:I

    iget v11, v8, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    if-le v10, v11, :cond_1

    .line 648
    iget v10, v7, Landroid/net/wifi/ScanResult;->level:I

    iput v10, v8, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    .line 649
    iget-wide v10, v7, Landroid/net/wifi/ScanResult;->seen:J

    iput-wide v10, v8, Landroid/net/wifi/WifiConfiguration$Visibility;->age5:J

    .line 650
    iget-object v10, v7, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iput-object v10, v8, Landroid/net/wifi/WifiConfiguration$Visibility;->BSSID5:Ljava/lang/String;

    goto :goto_1

    .line 632
    :cond_4
    invoke-virtual {v7}, Landroid/net/wifi/ScanResult;->is24GHz()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 633
    const/4 v10, 0x1

    move/from16 v0, p3

    if-eq v0, v10, :cond_1

    .line 638
    iget v10, v8, Landroid/net/wifi/WifiConfiguration$Visibility;->num24:I

    add-int/lit8 v10, v10, 0x1

    iput v10, v8, Landroid/net/wifi/WifiConfiguration$Visibility;->num24:I

    goto :goto_2

    .line 652
    :cond_5
    invoke-virtual {v7}, Landroid/net/wifi/ScanResult;->is24GHz()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 653
    invoke-static {v7}, Landroid/net/wifi/WifiConfiguration;->configKey(Landroid/net/wifi/ScanResult;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 654
    const/4 v3, 0x1

    .line 656
    :cond_6
    iget v10, v7, Landroid/net/wifi/ScanResult;->level:I

    iget v11, v8, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi24:I

    if-le v10, v11, :cond_1

    .line 657
    iget v10, v7, Landroid/net/wifi/ScanResult;->level:I

    iput v10, v8, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi24:I

    .line 658
    iget-wide v10, v7, Landroid/net/wifi/ScanResult;->seen:J

    iput-wide v10, v8, Landroid/net/wifi/WifiConfiguration$Visibility;->age24:J

    .line 659
    iget-object v10, v7, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iput-object v10, v8, Landroid/net/wifi/WifiConfiguration$Visibility;->BSSID24:Ljava/lang/String;

    goto/16 :goto_1

    .line 668
    .end local v7    # "result":Landroid/net/wifi/ScanResult;
    :cond_7
    if-eqz v3, :cond_8

    .line 669
    iput-object v8, p0, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    goto/16 :goto_0

    .line 671
    :cond_8
    iput-object v9, p0, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    goto/16 :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 34

    .prologue
    .line 1137
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    .line 1138
    .local v28, "sbuf":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    move/from16 v29, v0

    if-nez v29, :cond_f

    .line 1139
    const-string v29, "* "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1143
    :cond_0
    :goto_0
    const-string v29, "ID: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " SSID: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " BSSID: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " FQDN: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " REALM: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->naiRealm:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " PRIO: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const/16 v30, 0xa

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1147
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numConnectionFailures:I

    move/from16 v29, v0

    if-lez v29, :cond_1

    .line 1148
    const-string v29, " numConnectFailures "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numConnectionFailures:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "\n"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1150
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numIpConfigFailures:I

    move/from16 v29, v0

    if-lez v29, :cond_2

    .line 1151
    const-string v29, " numIpConfigFailures "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numIpConfigFailures:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "\n"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1153
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numAuthFailures:I

    move/from16 v29, v0

    if-lez v29, :cond_3

    .line 1154
    const-string v29, " numAuthFailures "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numAuthFailures:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "\n"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1156
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    move/from16 v29, v0

    if-lez v29, :cond_4

    .line 1157
    const-string v29, " autoJoinStatus "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "\n"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1159
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    move/from16 v29, v0

    if-lez v29, :cond_5

    .line 1160
    const-string v29, " disableReason "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "\n"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1162
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    move/from16 v29, v0

    if-lez v29, :cond_6

    .line 1163
    const-string v29, " numAssociation "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "\n"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1165
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    move/from16 v29, v0

    if-lez v29, :cond_7

    .line 1166
    const-string v29, " numNoInternetAccessReports "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1167
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "\n"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1169
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->didSelfAdd:Z

    move/from16 v29, v0

    if-eqz v29, :cond_8

    const-string v29, " didSelfAdd"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1170
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    move/from16 v29, v0

    if-eqz v29, :cond_9

    const-string v29, " selfAdded"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1171
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->validatedInternetAccess:Z

    move/from16 v29, v0

    if-eqz v29, :cond_a

    const-string v29, " validatedInternetAccess"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1172
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    move/from16 v29, v0

    if-eqz v29, :cond_b

    const-string v29, " ephemeral"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1173
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->didSelfAdd:Z

    move/from16 v29, v0

    if-nez v29, :cond_c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    move/from16 v29, v0

    if-nez v29, :cond_c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->validatedInternetAccess:Z

    move/from16 v29, v0

    if-nez v29, :cond_c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    move/from16 v29, v0

    if-eqz v29, :cond_d

    .line 1174
    :cond_c
    const-string v29, "\n"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1176
    :cond_d
    const-string v29, " KeyMgmt:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1177
    const/16 v18, 0x0

    .local v18, "k":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/BitSet;->size()I

    move-result v29

    move/from16 v0, v18

    move/from16 v1, v29

    if-ge v0, v1, :cond_11

    .line 1178
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v29

    if-eqz v29, :cond_e

    .line 1179
    const-string v29, " "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1180
    sget-object v29, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v18

    move/from16 v1, v29

    if-ge v0, v1, :cond_10

    .line 1181
    sget-object v29, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object v29, v29, v18

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1177
    :cond_e
    :goto_2
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 1140
    .end local v18    # "k":I
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    move/from16 v29, v0

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_0

    .line 1141
    const-string v29, "- DSBLE "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 1183
    .restart local v18    # "k":I
    :cond_10
    const-string v29, "??"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1187
    :cond_11
    const-string v29, " Protocols:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1188
    const/16 v21, 0x0

    .local v21, "p":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/BitSet;->size()I

    move-result v29

    move/from16 v0, v21

    move/from16 v1, v29

    if-ge v0, v1, :cond_14

    .line 1189
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v29

    if-eqz v29, :cond_12

    .line 1190
    const-string v29, " "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1191
    sget-object v29, Landroid/net/wifi/WifiConfiguration$Protocol;->strings:[Ljava/lang/String;

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v21

    move/from16 v1, v29

    if-ge v0, v1, :cond_13

    .line 1192
    sget-object v29, Landroid/net/wifi/WifiConfiguration$Protocol;->strings:[Ljava/lang/String;

    aget-object v29, v29, v21

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1188
    :cond_12
    :goto_4
    add-int/lit8 v21, v21, 0x1

    goto :goto_3

    .line 1194
    :cond_13
    const-string v29, "??"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 1198
    :cond_14
    const/16 v29, 0xa

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1199
    const-string v29, " AuthAlgorithms:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1200
    const/4 v2, 0x0

    .local v2, "a":I
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/BitSet;->size()I

    move-result v29

    move/from16 v0, v29

    if-ge v2, v0, :cond_17

    .line 1201
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v29

    if-eqz v29, :cond_15

    .line 1202
    const-string v29, " "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1203
    sget-object v29, Landroid/net/wifi/WifiConfiguration$AuthAlgorithm;->strings:[Ljava/lang/String;

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    if-ge v2, v0, :cond_16

    .line 1204
    sget-object v29, Landroid/net/wifi/WifiConfiguration$AuthAlgorithm;->strings:[Ljava/lang/String;

    aget-object v29, v29, v2

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1200
    :cond_15
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1206
    :cond_16
    const-string v29, "??"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 1210
    :cond_17
    const/16 v29, 0xa

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1211
    const-string v29, " PairwiseCiphers:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1212
    const/16 v26, 0x0

    .local v26, "pc":I
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/BitSet;->size()I

    move-result v29

    move/from16 v0, v26

    move/from16 v1, v29

    if-ge v0, v1, :cond_1a

    .line 1213
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v29

    if-eqz v29, :cond_18

    .line 1214
    const-string v29, " "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1215
    sget-object v29, Landroid/net/wifi/WifiConfiguration$PairwiseCipher;->strings:[Ljava/lang/String;

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v26

    move/from16 v1, v29

    if-ge v0, v1, :cond_19

    .line 1216
    sget-object v29, Landroid/net/wifi/WifiConfiguration$PairwiseCipher;->strings:[Ljava/lang/String;

    aget-object v29, v29, v26

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1212
    :cond_18
    :goto_8
    add-int/lit8 v26, v26, 0x1

    goto :goto_7

    .line 1218
    :cond_19
    const-string v29, "??"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 1222
    :cond_1a
    const/16 v29, 0xa

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1223
    const-string v29, " GroupCiphers:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1224
    const/16 v16, 0x0

    .local v16, "gc":I
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/BitSet;->size()I

    move-result v29

    move/from16 v0, v16

    move/from16 v1, v29

    if-ge v0, v1, :cond_1d

    .line 1225
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v29

    if-eqz v29, :cond_1b

    .line 1226
    const-string v29, " "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1227
    sget-object v29, Landroid/net/wifi/WifiConfiguration$GroupCipher;->strings:[Ljava/lang/String;

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v16

    move/from16 v1, v29

    if-ge v0, v1, :cond_1c

    .line 1228
    sget-object v29, Landroid/net/wifi/WifiConfiguration$GroupCipher;->strings:[Ljava/lang/String;

    aget-object v29, v29, v16

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1224
    :cond_1b
    :goto_a
    add-int/lit8 v16, v16, 0x1

    goto :goto_9

    .line 1230
    :cond_1c
    const-string v29, "??"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    .line 1234
    :cond_1d
    const/16 v29, 0xa

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " PSK: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1235
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    move-object/from16 v29, v0

    if-eqz v29, :cond_1e

    .line 1236
    const/16 v29, 0x2a

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1238
    :cond_1e
    const/16 v29, 0xa

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " sim_num "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1239
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->SIMNum:I

    move/from16 v29, v0

    if-lez v29, :cond_1f

    .line 1240
    const/16 v29, 0x2a

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1242
    :cond_1f
    const-string v29, "\nEnterprise config:\n"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1243
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1245
    const-string v29, "IP config:\n"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1246
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/net/IpConfiguration;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1248
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    move/from16 v29, v0

    if-eqz v29, :cond_20

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, " uid="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1249
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->autoJoinBSSID:Ljava/lang/String;

    move-object/from16 v29, v0

    if-eqz v29, :cond_21

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, " autoJoinBSSID="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->autoJoinBSSID:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1250
    :cond_21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    .line 1251
    .local v24, "now_ms":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/wifi/WifiConfiguration;->blackListTimestamp:J

    move-wide/from16 v30, v0

    const-wide/16 v32, 0x0

    cmp-long v29, v30, v32

    if-eqz v29, :cond_22

    .line 1252
    const/16 v29, 0xa

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1253
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/wifi/WifiConfiguration;->blackListTimestamp:J

    move-wide/from16 v30, v0

    sub-long v14, v24, v30

    .line 1254
    .local v14, "diff":J
    const-wide/16 v30, 0x0

    cmp-long v29, v14, v30

    if-gtz v29, :cond_26

    .line 1255
    const-string v29, " blackListed since <incorrect>"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1260
    .end local v14    # "diff":J
    :cond_22
    :goto_b
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/wifi/WifiConfiguration;->lastConnected:J

    move-wide/from16 v30, v0

    const-wide/16 v32, 0x0

    cmp-long v29, v30, v32

    if-eqz v29, :cond_23

    .line 1261
    const/16 v29, 0xa

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1262
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/wifi/WifiConfiguration;->lastConnected:J

    move-wide/from16 v30, v0

    sub-long v14, v24, v30

    .line 1263
    .restart local v14    # "diff":J
    const-wide/16 v30, 0x0

    cmp-long v29, v14, v30

    if-gtz v29, :cond_27

    .line 1264
    const-string v29, "lastConnected since <incorrect>"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1269
    .end local v14    # "diff":J
    :cond_23
    :goto_c
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/wifi/WifiConfiguration;->lastConnectionFailure:J

    move-wide/from16 v30, v0

    const-wide/16 v32, 0x0

    cmp-long v29, v30, v32

    if-eqz v29, :cond_24

    .line 1270
    const/16 v29, 0xa

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1271
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/wifi/WifiConfiguration;->lastConnectionFailure:J

    move-wide/from16 v30, v0

    sub-long v14, v24, v30

    .line 1272
    .restart local v14    # "diff":J
    const-wide/16 v30, 0x0

    cmp-long v29, v14, v30

    if-gtz v29, :cond_28

    .line 1273
    const-string v29, "lastConnectionFailure since <incorrect>"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1279
    .end local v14    # "diff":J
    :cond_24
    :goto_d
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/wifi/WifiConfiguration;->lastRoamingFailure:J

    move-wide/from16 v30, v0

    const-wide/16 v32, 0x0

    cmp-long v29, v30, v32

    if-eqz v29, :cond_25

    .line 1280
    const/16 v29, 0xa

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1281
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/wifi/WifiConfiguration;->lastRoamingFailure:J

    move-wide/from16 v30, v0

    sub-long v14, v24, v30

    .line 1282
    .restart local v14    # "diff":J
    const-wide/16 v30, 0x0

    cmp-long v29, v14, v30

    if-gtz v29, :cond_29

    .line 1283
    const-string v29, "lastRoamingFailure since <incorrect>"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1289
    .end local v14    # "diff":J
    :cond_25
    :goto_e
    const-string/jumbo v29, "roamingFailureBlackListTimeMilli: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/wifi/WifiConfiguration;->roamingFailureBlackListTimeMilli:J

    move-wide/from16 v30, v0

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1291
    const/16 v29, 0xa

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1292
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    move-object/from16 v29, v0

    if-eqz v29, :cond_2a

    .line 1293
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "i$":Ljava/util/Iterator;
    :goto_f
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_2a

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 1294
    .local v19, "key":Ljava/lang/String;
    const-string v29, " linked: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1295
    const/16 v29, 0xa

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_f

    .line 1257
    .end local v17    # "i$":Ljava/util/Iterator;
    .end local v19    # "key":Ljava/lang/String;
    .restart local v14    # "diff":J
    :cond_26
    const-string v29, " blackListed: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-wide/16 v30, 0x3e8

    div-long v30, v14, v30

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, "sec"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 1266
    :cond_27
    const-string v29, "lastConnected: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-wide/16 v30, 0x3e8

    div-long v30, v14, v30

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, "sec"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_c

    .line 1275
    :cond_28
    const-string v29, "lastConnectionFailure: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-wide/16 v30, 0x3e8

    div-long v30, v14, v30

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1276
    const-string/jumbo v29, "sec"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_d

    .line 1285
    :cond_29
    const-string v29, "lastRoamingFailure: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-wide/16 v30, 0x3e8

    div-long v30, v14, v30

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1286
    const-string/jumbo v29, "sec"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_e

    .line 1298
    .end local v14    # "diff":J
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->connectChoices:Ljava/util/HashMap;

    move-object/from16 v29, v0

    if-eqz v29, :cond_2c

    .line 1299
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->connectChoices:Ljava/util/HashMap;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .restart local v17    # "i$":Ljava/util/Iterator;
    :cond_2b
    :goto_10
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_2c

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 1300
    .restart local v19    # "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->connectChoices:Ljava/util/HashMap;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1301
    .local v3, "choice":Ljava/lang/Integer;
    if-eqz v3, :cond_2b

    .line 1302
    const-string v29, " choice: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1303
    const-string v29, " = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1304
    const/16 v29, 0xa

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_10

    .line 1308
    .end local v3    # "choice":Ljava/lang/Integer;
    .end local v17    # "i$":Ljava/util/Iterator;
    .end local v19    # "key":Ljava/lang/String;
    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->scanResultCache:Ljava/util/HashMap;

    move-object/from16 v29, v0

    if-eqz v29, :cond_33

    .line 1309
    const-string v29, "Scan Cache:  "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const/16 v30, 0xa

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1310
    invoke-direct/range {p0 .. p0}, Landroid/net/wifi/WifiConfiguration;->sortScanResults()Ljava/util/ArrayList;

    move-result-object v20

    .line 1311
    .local v20, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/wifi/ScanResult;>;"
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v29

    if-lez v29, :cond_33

    .line 1312
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .restart local v17    # "i$":Ljava/util/Iterator;
    :goto_11
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_32

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/net/wifi/ScanResult;

    .line 1313
    .local v27, "result":Landroid/net/wifi/ScanResult;
    move-object/from16 v0, v27

    iget-wide v0, v0, Landroid/net/wifi/ScanResult;->seen:J

    move-wide/from16 v30, v0

    sub-long v22, v24, v30

    .line 1314
    .local v22, "milli":J
    const-wide/16 v12, 0x0

    .line 1315
    .local v12, "ageSec":J
    const-wide/16 v10, 0x0

    .line 1316
    .local v10, "ageMin":J
    const-wide/16 v6, 0x0

    .line 1317
    .local v6, "ageHour":J
    const-wide/16 v8, 0x0

    .line 1318
    .local v8, "ageMilli":J
    const-wide/16 v4, 0x0

    .line 1319
    .local v4, "ageDay":J
    move-object/from16 v0, v27

    iget-wide v0, v0, Landroid/net/wifi/ScanResult;->seen:J

    move-wide/from16 v30, v0

    cmp-long v29, v24, v30

    if-lez v29, :cond_2d

    move-object/from16 v0, v27

    iget-wide v0, v0, Landroid/net/wifi/ScanResult;->seen:J

    move-wide/from16 v30, v0

    const-wide/16 v32, 0x0

    cmp-long v29, v30, v32

    if-lez v29, :cond_2d

    .line 1320
    const-wide/16 v30, 0x3e8

    rem-long v8, v22, v30

    .line 1321
    const-wide/16 v30, 0x3e8

    div-long v30, v22, v30

    const-wide/16 v32, 0x3c

    rem-long v12, v30, v32

    .line 1322
    const-wide/32 v30, 0xea60

    div-long v30, v22, v30

    const-wide/16 v32, 0x3c

    rem-long v10, v30, v32

    .line 1323
    const-wide/32 v30, 0x36ee80

    div-long v30, v22, v30

    const-wide/16 v32, 0x18

    rem-long v6, v30, v32

    .line 1324
    const-wide/32 v30, 0x5265c00

    div-long v4, v22, v30

    .line 1326
    :cond_2d
    const-string/jumbo v29, "{"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ","

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v27

    iget v0, v0, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1327
    const-string v29, ","

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "%3d"

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    move/from16 v33, v0

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    aput-object v33, v31, v32

    invoke-static/range {v30 .. v31}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1328
    move-object/from16 v0, v27

    iget v0, v0, Landroid/net/wifi/ScanResult;->autoJoinStatus:I

    move/from16 v29, v0

    if-lez v29, :cond_2e

    .line 1329
    const-string v29, ",st="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v27

    iget v0, v0, Landroid/net/wifi/ScanResult;->autoJoinStatus:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1331
    :cond_2e
    const-wide/16 v30, 0x0

    cmp-long v29, v12, v30

    if-gtz v29, :cond_2f

    const-wide/16 v30, 0x0

    cmp-long v29, v8, v30

    if-lez v29, :cond_30

    .line 1332
    :cond_2f
    const-string v29, ",%4d.%02d.%02d.%02d.%03dms"

    const/16 v30, 0x5

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v32

    aput-object v32, v30, v31

    const/16 v31, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v32

    aput-object v32, v30, v31

    const/16 v31, 0x2

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v32

    aput-object v32, v30, v31

    const/16 v31, 0x3

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v32

    aput-object v32, v30, v31

    const/16 v31, 0x4

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v32

    aput-object v32, v30, v31

    invoke-static/range {v29 .. v30}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1335
    :cond_30
    move-object/from16 v0, v27

    iget v0, v0, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    move/from16 v29, v0

    if-lez v29, :cond_31

    .line 1336
    const-string v29, ",ipfail="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1337
    move-object/from16 v0, v27

    iget v0, v0, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1339
    :cond_31
    const-string/jumbo v29, "} "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_11

    .line 1341
    .end local v4    # "ageDay":J
    .end local v6    # "ageHour":J
    .end local v8    # "ageMilli":J
    .end local v10    # "ageMin":J
    .end local v12    # "ageSec":J
    .end local v22    # "milli":J
    .end local v27    # "result":Landroid/net/wifi/ScanResult;
    :cond_32
    const/16 v29, 0xa

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1344
    .end local v17    # "i$":Ljava/util/Iterator;
    .end local v20    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/wifi/ScanResult;>;"
    :cond_33
    const-string/jumbo v29, "triggeredLow: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableLowRSSI:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1345
    const-string v29, " triggeredBad: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableBadRSSI:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1346
    const-string v29, " triggeredNotHigh: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableNotHighRSSI:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1347
    const/16 v29, 0xa

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1348
    const-string/jumbo v29, "ticksLow: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numTicksAtLowRSSI:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1349
    const-string v29, " ticksBad: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numTicksAtBadRSSI:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1350
    const-string v29, " ticksNotHigh: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numTicksAtNotHighRSSI:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1351
    const/16 v29, 0xa

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1352
    const-string/jumbo v29, "triggeredJoin: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredJoinAttempts:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1353
    const/16 v29, 0xa

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1354
    const-string v29, "autoJoinBailedDueToLowRssi: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->autoJoinBailedDueToLowRssi:Z

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1355
    const/16 v29, 0xa

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1356
    const-string v29, "autoJoinUseAggressiveJoinAttemptThreshold: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1357
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->autoJoinUseAggressiveJoinAttemptThreshold:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1358
    const/16 v29, 0xa

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1360
    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    return-object v29
.end method

.method public trimScanResultsCache(I)V
    .locals 6
    .param p1, "num"    # I

    .prologue
    .line 1071
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->scanResultCache:Ljava/util/HashMap;

    if-nez v4, :cond_1

    .line 1100
    :cond_0
    return-void

    .line 1074
    :cond_1
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->scanResultCache:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v0

    .line 1075
    .local v0, "currenSize":I
    if-le v0, p1, :cond_0

    .line 1078
    new-instance v2, Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->scanResultCache:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1079
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/wifi/ScanResult;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_2

    .line 1081
    new-instance v4, Landroid/net/wifi/WifiConfiguration$1;

    invoke-direct {v4, p0}, Landroid/net/wifi/WifiConfiguration$1;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    invoke-static {v2, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1095
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sub-int v4, v0, p1

    if-ge v1, v4, :cond_0

    .line 1097
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    .line 1098
    .local v3, "result":Landroid/net/wifi/ScanResult;
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->scanResultCache:Ljava/util/HashMap;

    iget-object v5, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1095
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 10
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1711
    iget v4, p0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1712
    iget v4, p0, Landroid/net/wifi/WifiConfiguration;->status:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1713
    iget v4, p0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1714
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1715
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1716
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->autoJoinBSSID:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1717
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1718
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->naiRealm:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1719
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1721
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->wapiASCert:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1722
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->wapiUserCert:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1723
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->wapiPsk:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1724
    iget v4, p0, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1726
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 1727
    .local v3, "wepKey":Ljava/lang/String;
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1726
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1729
    .end local v3    # "wepKey":Ljava/lang/String;
    :cond_0
    iget v4, p0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1730
    iget v4, p0, Landroid/net/wifi/WifiConfiguration;->priority:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1731
    iget-boolean v4, p0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-eqz v4, :cond_1

    move v4, v5

    :goto_1
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1732
    iget-boolean v4, p0, Landroid/net/wifi/WifiConfiguration;->requirePMF:Z

    if-eqz v4, :cond_2

    move v4, v5

    :goto_2
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->updateIdentifier:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-static {p1, v4}, Landroid/net/wifi/WifiConfiguration;->writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V

    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-static {p1, v4}, Landroid/net/wifi/WifiConfiguration;->writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V

    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-static {p1, v4}, Landroid/net/wifi/WifiConfiguration;->writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V

    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-static {p1, v4}, Landroid/net/wifi/WifiConfiguration;->writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V

    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-static {p1, v4}, Landroid/net/wifi/WifiConfiguration;->writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V

    invoke-static/range {p0 .. p1}, Landroid/net/wifi/WifiConfiguration$FlymeInjector;->writeFlymeExtraFields(Landroid/net/wifi/WifiConfiguration;Landroid/os/Parcel;)V

    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {p1, v4, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    invoke-virtual {p1, v4, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->dhcpServer:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->defaultGwMacAddress:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v4, p0, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v4, p0, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    if-eqz v4, :cond_3

    move v4, v5

    :goto_3
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1748
    iget-boolean v4, p0, Landroid/net/wifi/WifiConfiguration;->didSelfAdd:Z

    if-eqz v4, :cond_4

    move v4, v5

    :goto_4
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1749
    iget-boolean v4, p0, Landroid/net/wifi/WifiConfiguration;->validatedInternetAccess:Z

    if-eqz v4, :cond_5

    move v4, v5

    :goto_5
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1750
    iget-boolean v4, p0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-eqz v4, :cond_6

    move v4, v5

    :goto_6
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1751
    iget v4, p0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1752
    iget v4, p0, Landroid/net/wifi/WifiConfiguration;->lastConnectUid:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1753
    iget v4, p0, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1754
    iget-wide v8, p0, Landroid/net/wifi/WifiConfiguration;->blackListTimestamp:J

    invoke-virtual {p1, v8, v9}, Landroid/os/Parcel;->writeLong(J)V

    .line 1755
    iget-wide v8, p0, Landroid/net/wifi/WifiConfiguration;->lastConnectionFailure:J

    invoke-virtual {p1, v8, v9}, Landroid/os/Parcel;->writeLong(J)V

    .line 1756
    iget-wide v8, p0, Landroid/net/wifi/WifiConfiguration;->lastRoamingFailure:J

    invoke-virtual {p1, v8, v9}, Landroid/os/Parcel;->writeLong(J)V

    .line 1757
    iget v4, p0, Landroid/net/wifi/WifiConfiguration;->lastRoamingFailureReason:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1758
    iget-wide v8, p0, Landroid/net/wifi/WifiConfiguration;->roamingFailureBlackListTimeMilli:J

    invoke-virtual {p1, v8, v9}, Landroid/os/Parcel;->writeLong(J)V

    .line 1759
    iget v4, p0, Landroid/net/wifi/WifiConfiguration;->numConnectionFailures:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1760
    iget v4, p0, Landroid/net/wifi/WifiConfiguration;->numIpConfigFailures:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1761
    iget v4, p0, Landroid/net/wifi/WifiConfiguration;->numAuthFailures:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1762
    iget v4, p0, Landroid/net/wifi/WifiConfiguration;->numScorerOverride:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1763
    iget v4, p0, Landroid/net/wifi/WifiConfiguration;->numScorerOverrideAndSwitchedNetwork:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1764
    iget v4, p0, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1765
    iget v4, p0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableLowRSSI:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1766
    iget v4, p0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableBadRSSI:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1767
    iget v4, p0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableNotHighRSSI:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1768
    iget v4, p0, Landroid/net/wifi/WifiConfiguration;->numTicksAtLowRSSI:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1769
    iget v4, p0, Landroid/net/wifi/WifiConfiguration;->numTicksAtBadRSSI:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1770
    iget v4, p0, Landroid/net/wifi/WifiConfiguration;->numTicksAtNotHighRSSI:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1771
    iget v4, p0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredJoinAttempts:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1772
    iget v4, p0, Landroid/net/wifi/WifiConfiguration;->autoJoinUseAggressiveJoinAttemptThreshold:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1773
    iget-boolean v4, p0, Landroid/net/wifi/WifiConfiguration;->autoJoinBailedDueToLowRssi:Z

    if-eqz v4, :cond_7

    :goto_7
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1774
    iget v4, p0, Landroid/net/wifi/WifiConfiguration;->SIMNum:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1775
    iget v4, p0, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1776
    return-void

    :cond_1
    move v4, v6

    .line 1731
    goto/16 :goto_1

    :cond_2
    move v4, v6

    .line 1732
    goto/16 :goto_2

    :cond_3
    move v4, v6

    .line 1747
    goto/16 :goto_3

    :cond_4
    move v4, v6

    .line 1748
    goto/16 :goto_4

    :cond_5
    move v4, v6

    .line 1749
    goto/16 :goto_5

    :cond_6
    move v4, v6

    .line 1750
    goto/16 :goto_6

    :cond_7
    move v5, v6

    .line 1773
    goto :goto_7
.end method
