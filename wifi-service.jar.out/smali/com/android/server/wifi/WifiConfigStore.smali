.class public Lcom/android/server/wifi/WifiConfigStore;
.super Lcom/android/server/net/IpConfigStore;
.source "WifiConfigStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiConfigStore$4;,
        Lcom/android/server/wifi/WifiConfigStore$WpaConfigFileObserver;
    }
.end annotation


# static fields
.field private static final ALWAYS_ENABLE_SCAN_WHILE_ASSOCIATED_KEY:Ljava/lang/String; = "ALWAYS_ENABLE_SCAN_WHILE_ASSOCIATED"

.field private static final ASSOCIATED_FULL_SCAN_BACKOFF_KEY:Ljava/lang/String; = "ASSOCIATED_FULL_SCAN_BACKOFF_PERIOD"

.field private static final ASSOCIATED_PARTIAL_SCAN_PERIOD_KEY:Ljava/lang/String; = "ASSOCIATED_PARTIAL_SCAN_PERIOD"

.field private static final AUTH_KEY:Ljava/lang/String; = "AUTH"

.field private static final A_BAND_PREFERENCE_RSSI_THRESHOLD_KEY:Ljava/lang/String; = "A_BAND_PREFERENCE_RSSI_THRESHOLD"

.field private static final A_BAND_PREFERENCE_RSSI_THRESHOLD_LOW_KEY:Ljava/lang/String; = "A_BAND_PREFERENCE_RSSI_THRESHOLD_LOW"

.field private static final BLACKLIST_MILLI_KEY:Ljava/lang/String; = "BLACKLIST_MILLI"

.field private static final BSSID_KEY:Ljava/lang/String; = "BSSID"

.field private static final BSSID_KEY_END:Ljava/lang/String; = "/BSSID"

.field private static final BSSID_STATUS_KEY:Ljava/lang/String; = "BSSID_STATUS"

.field private static final CHOICE_KEY:Ljava/lang/String; = "CHOICE"

.field private static final CONFIG_KEY:Ljava/lang/String; = "CONFIG"

.field private static final CONNECT_UID_KEY:Ljava/lang/String; = "CONNECT_UID_KEY"

.field private static final CREATION_TIME_KEY:Ljava/lang/String; = "CREATION_TIME"

.field private static final CREATOR_NAME_KEY:Ljava/lang/String; = "CREATOR_NAME"

.field private static final CREATOR_UID_KEY:Ljava/lang/String; = "CREATOR_UID_KEY"

.field private static final DATE_KEY:Ljava/lang/String; = "DATE"

.field private static final DBG:Z = true

.field private static final DEFAULT_GW_KEY:Ljava/lang/String; = "DEFAULT_GW"

.field private static final DEFAULT_MAX_DHCP_RETRIES:I = 0x9

.field private static final DELETED_CONFIG_PSK:Ljava/lang/String; = "Mjkd86jEMGn79KhKll298Uu7-deleted"

.field private static final DELETED_CRC32_KEY:Ljava/lang/String; = "DELETED_CRC32"

.field private static final DELETED_EPHEMERAL_KEY:Ljava/lang/String; = "DELETED_EPHEMERAL"

.field private static final DID_SELF_ADD_KEY:Ljava/lang/String; = "DID_SELF_ADD"

.field static final EMPTY_VALUE:Ljava/lang/String; = "NULL"

.field private static final ENABLE_AUTOJOIN_WHILE_ASSOCIATED_KEY:Ljava/lang/String; = "ENABLE_AUTOJOIN_WHILE_ASSOCIATED:   "

.field private static final ENABLE_AUTO_JOIN_WHILE_ASSOCIATED_KEY:Ljava/lang/String; = "ENABLE_AUTO_JOIN_WHILE_ASSOCIATED"

.field private static final ENABLE_CHIP_WAKE_UP_WHILE_ASSOCIATED_KEY:Ljava/lang/String; = "ENABLE_CHIP_WAKE_UP_WHILE_ASSOCIATED"

.field private static final ENABLE_FULL_BAND_SCAN_WHEN_ASSOCIATED_KEY:Ljava/lang/String; = "ENABLE_FULL_BAND_SCAN_WHEN_ASSOCIATED"

.field private static final ENABLE_HAL_BASED_PNO:Ljava/lang/String; = "ENABLE_HAL_BASED_PNO"

.field private static final ENABLE_RSSI_POLL_WHILE_ASSOCIATED_KEY:Ljava/lang/String; = "ENABLE_RSSI_POLL_WHILE_ASSOCIATED_KEY"

.field private static final ENTERPRISE_CONFIG_SUPPLICANT_KEYS:[Ljava/lang/String;

.field private static final EPHEMERAL_KEY:Ljava/lang/String; = "EPHEMERAL"

.field private static final FAILURE_KEY:Ljava/lang/String; = "FAILURE"

.field private static final FQDN_KEY:Ljava/lang/String; = "FQDN"

.field private static final FREQ_KEY:Ljava/lang/String; = "FREQ"

.field private static final G_BAND_PREFERENCE_RSSI_THRESHOLD_KEY:Ljava/lang/String; = "G_BAND_PREFERENCE_RSSI_THRESHOLD"

.field private static final JOIN_ATTEMPT_BOOST_KEY:Ljava/lang/String; = "JOIN_ATTEMPT_BOOST"

.field private static final LINK_KEY:Ljava/lang/String; = "LINK"

.field private static final MAX_NUM_ACTIVE_CHANNELS_FOR_PARTIAL_SCANS_KEY:Ljava/lang/String; = "MAX_NUM_ACTIVE_CHANNELS_FOR_PARTIAL_SCANS"

.field private static final MAX_NUM_PASSIVE_CHANNELS_FOR_PARTIAL_SCANS_KEY:Ljava/lang/String; = "MAX_NUM_PASSIVE_CHANNELS_FOR_PARTIAL_SCANS"

.field private static final MILLI_KEY:Ljava/lang/String; = "MILLI"

.field private static final NETWORK_ID_KEY:Ljava/lang/String; = "ID"

.field private static final NL:Ljava/lang/String; = "\n"

.field private static final NO_INTERNET_ACCESS_REPORTS_KEY:Ljava/lang/String; = "NO_INTERNET_ACCESS_REPORTS"

.field private static final NUM_ASSOCIATION_KEY:Ljava/lang/String; = "NUM_ASSOCIATION"

.field private static final NUM_AUTH_FAILURES_KEY:Ljava/lang/String; = "AUTH_FAILURES"

.field private static final NUM_CONNECTION_FAILURES_KEY:Ljava/lang/String; = "CONNECT_FAILURES"

.field private static final NUM_IP_CONFIG_FAILURES_KEY:Ljava/lang/String; = "IP_CONFIG_FAILURES"

.field public static final OLD_PRIVATE_KEY_NAME:Ljava/lang/String; = "private_key"

.field private static final ONLY_LINK_SAME_CREDENTIAL_CONFIGURATIONS_KEY:Ljava/lang/String; = "ONLY_LINK_SAME_CREDENTIAL_CONFIGURATIONS"

.field private static final PEER_CONFIGURATION_KEY:Ljava/lang/String; = "PEER_CONFIGURATION"

.field private static final PPS_FILE:Ljava/lang/String; = "/data/misc/wifi/PerProviderSubscription.conf"

.field private static final PRIORITY_KEY:Ljava/lang/String; = "PRIORITY"

.field private static final RSSI_KEY:Ljava/lang/String; = "RSSI"

.field private static final SCORER_OVERRIDE_AND_SWITCH_KEY:Ljava/lang/String; = "SCORER_OVERRIDE_AND_SWITCH"

.field private static final SCORER_OVERRIDE_KEY:Ljava/lang/String; = "SCORER_OVERRIDE"

.field private static final SELF_ADDED_KEY:Ljava/lang/String; = "SELF_ADDED"

.field private static final SEPARATOR:Ljava/lang/String; = ":  "

.field private static final SSID_KEY:Ljava/lang/String; = "SSID"

.field private static final STATUS_KEY:Ljava/lang/String; = "AUTO_JOIN_STATUS"

.field private static final SUPPLICANT_CONFIG_FILE:Ljava/lang/String; = "/data/misc/wifi/wpa_supplicant.conf"

.field private static final SUPPLICANT_CONFIG_FILE_BACKUP:Ljava/lang/String; = "/data/misc/wifi/wpa_supplicant.conf.tmp"

.field private static final SUPPLICANT_DISABLE_REASON_KEY:Ljava/lang/String; = "SUP_DIS_REASON"

.field private static final SUPPLICANT_STATUS_KEY:Ljava/lang/String; = "SUP_STATUS"

.field public static final TAG:Ljava/lang/String; = "WifiConfigStore"

.field private static final THRESHOLD_BAD_RSSI_24_KEY:Ljava/lang/String; = "THRESHOLD_BAD_RSSI_24"

.field private static final THRESHOLD_BAD_RSSI_5_KEY:Ljava/lang/String; = "THRESHOLD_BAD_RSSI_5"

.field private static final THRESHOLD_GOOD_RSSI_24_KEY:Ljava/lang/String; = "THRESHOLD_GOOD_RSSI_24"

.field private static final THRESHOLD_GOOD_RSSI_5_KEY:Ljava/lang/String; = "THRESHOLD_GOOD_RSSI_5"

.field private static final THRESHOLD_INITIAL_AUTO_JOIN_ATTEMPT_RSSI_MIN_24G_KEY:Ljava/lang/String; = "THRESHOLD_INITIAL_AUTO_JOIN_ATTEMPT_RSSI_MIN_24G"

.field private static final THRESHOLD_INITIAL_AUTO_JOIN_ATTEMPT_RSSI_MIN_5G_KEY:Ljava/lang/String; = "THRESHOLD_INITIAL_AUTO_JOIN_ATTEMPT_RSSI_MIN_5G"

.field private static final THRESHOLD_LOW_RSSI_24_KEY:Ljava/lang/String; = "THRESHOLD_LOW_RSSI_24"

.field private static final THRESHOLD_LOW_RSSI_5_KEY:Ljava/lang/String; = "THRESHOLD_LOW_RSSI_5"

.field private static final THRESHOLD_MAX_RX_PACKETS_FOR_FULL_SCANS_KEY:Ljava/lang/String; = "THRESHOLD_MAX_RX_PACKETS_FOR_FULL_SCANS"

.field private static final THRESHOLD_MAX_RX_PACKETS_FOR_NETWORK_SWITCHING_KEY:Ljava/lang/String; = "THRESHOLD_MAX_RX_PACKETS_FOR_NETWORK_SWITCHING"

.field private static final THRESHOLD_MAX_RX_PACKETS_FOR_PARTIAL_SCANS_KEY:Ljava/lang/String; = "THRESHOLD_MAX_RX_PACKETS_FOR_PARTIAL_SCANS"

.field private static final THRESHOLD_MAX_TX_PACKETS_FOR_FULL_SCANS_KEY:Ljava/lang/String; = "THRESHOLD_MAX_TX_PACKETS_FOR_FULL_SCANS"

.field private static final THRESHOLD_MAX_TX_PACKETS_FOR_NETWORK_SWITCHING_KEY:Ljava/lang/String; = "THRESHOLD_MAX_TX_PACKETS_FOR_NETWORK_SWITCHING"

.field private static final THRESHOLD_MAX_TX_PACKETS_FOR_PARTIAL_SCANS_KEY:Ljava/lang/String; = "THRESHOLD_MAX_TX_PACKETS_FOR_PARTIAL_SCANS"

.field private static final THRESHOLD_UNBLACKLIST_HARD_24G_KEY:Ljava/lang/String; = "THRESHOLD_UNBLACKLIST_HARD_24G"

.field private static final THRESHOLD_UNBLACKLIST_HARD_5G_KEY:Ljava/lang/String; = "THRESHOLD_UNBLACKLIST_HARD_5G"

.field private static final THRESHOLD_UNBLACKLIST_SOFT_24G_KEY:Ljava/lang/String; = "THRESHOLD_UNBLACKLIST_SOFT_24G"

.field private static final THRESHOLD_UNBLACKLIST_SOFT_5G_KEY:Ljava/lang/String; = "THRESHOLD_UNBLACKLIST_SOFT_5G"

.field private static final UPDATE_NAME_KEY:Ljava/lang/String; = "UPDATE_NAME"

.field private static final UPDATE_TIME_KEY:Ljava/lang/String; = "UPDATE_TIME"

.field private static final UPDATE_UID_KEY:Ljava/lang/String; = "UPDATE_UID"

.field private static final USER_APPROVED_KEY:Ljava/lang/String; = "USER_APPROVED"

.field private static final VALIDATED_INTERNET_ACCESS_KEY:Ljava/lang/String; = "VALIDATED_INTERNET_ACCESS"

.field private static VDBG:Z = false

.field private static VVDBG:Z = false

.field private static final WIFI_VERBOSE_LOGS_KEY:Ljava/lang/String; = "WIFI_VERBOSE_LOGS"

.field private static final autoJoinConfigFile:Ljava/lang/String;

.field public static final idStringVarName:Ljava/lang/String; = "id_str"

.field private static final ipConfigFile:Ljava/lang/String;

.field private static mConnectChoice:Ljava/util/regex/Pattern; = null

.field public static final maxNumScanCacheEntries:I = 0x80

.field private static final networkHistoryConfigFile:Ljava/lang/String;

.field private static final sKeyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final alwaysEnableScansWhileAssociated:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final associatedFullScanBackoff:Ljava/util/concurrent/atomic/AtomicInteger;

.field public associatedFullScanMaxIntervalMilli:I

.field public associatedHysteresisHigh:I

.field public associatedHysteresisLow:I

.field public badLinkSpeed24:I

.field public badLinkSpeed5:I

.field public bandPreferenceBoostFactor5:I

.field public final bandPreferenceBoostThreshold5:Ljava/util/concurrent/atomic/AtomicInteger;

.field public bandPreferencePenaltyFactor5:I

.field public final bandPreferencePenaltyThreshold5:Ljava/util/concurrent/atomic/AtomicInteger;

.field public currentNetworkBoost:I

.field public enable5GHzPreference:Z

.field public final enableAutoJoinWhenAssociated:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final enableChipWakeUpWhenAssociated:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final enableFullBandScanWhenAssociated:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final enableHalBasedPno:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public enableLinkDebouncing:Z

.field public final enableRssiPollWhenAssociated:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final enableSsidWhitelist:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final enableVerboseLogging:Ljava/util/concurrent/atomic/AtomicInteger;

.field public enableWifiCellularHandoverUserTriggeredAdjustment:Z

.field public goodLinkSpeed24:I

.field public goodLinkSpeed5:I

.field private lastSelectedConfiguration:Ljava/lang/String;

.field public lastUnwantedNetworkDisconnectTimestamp:J

.field private final mAnqpCache:Lcom/android/server/wifi/hotspot2/AnqpCache;

.field mBssidBlacklist:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mCachedPnoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;",
            ">;"
        }
    .end annotation
.end field

.field private mConfiguredBand:I

.field private final mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

.field private mContext:Landroid/content/Context;

.field public mDeletedEphemeralSSIDs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDeletedSSIDs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mFileObserver:Lcom/android/server/wifi/WifiConfigStore$WpaConfigFileObserver;

.field private final mKeyStore:Landroid/security/KeyStore;

.field private mLastPriority:I

.field private final mLocalLog:Landroid/util/LocalLog;

.field mLostConfigsDbg:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mMOManager:Lcom/android/server/wifi/hotspot2/omadm/MOManager;

.field private final mSIMAccessor:Lcom/android/server/wifi/SIMAccessor;

.field private mScanDetailCaches:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/wifi/ScanDetailCache;",
            ">;"
        }
    .end annotation
.end field

.field private final mSupplicantBridge:Lcom/android/server/wifi/hotspot2/SupplicantBridge;

.field private mWifiNative:Lcom/android/server/wifi/WifiNative;

.field private mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

.field public maxAuthErrorsToBlacklist:I

.field public maxConnectionErrorsToBlacklist:I

.field public final maxNumActiveChannelsForPartialScans:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final maxNumPassiveChannelsForPartialScans:Ljava/util/concurrent/atomic/AtomicInteger;

.field public maxRxPacketForFullScans:I

.field public final maxRxPacketForNetworkSwitching:Ljava/util/concurrent/atomic/AtomicInteger;

.field public maxRxPacketForPartialScans:I

.field public maxTxPacketForFullScans:I

.field public final maxTxPacketForNetworkSwitching:Ljava/util/concurrent/atomic/AtomicInteger;

.field public maxTxPacketForPartialScans:I

.field public networkSwitchingBlackListPeriodMilli:I

.field public onlyLinkSameCredentialConfigurations:Z

.field public roamOnAny:Z

.field public scanResultRssiLevelPatchUp:I

.field showNetworks:Z

.field public final thresholdBadRssi24:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final thresholdBadRssi5:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final thresholdGoodRssi24:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final thresholdGoodRssi5:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final thresholdInitialAutoJoinAttemptMin24RSSI:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final thresholdInitialAutoJoinAttemptMin5RSSI:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final thresholdLowRssi24:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final thresholdLowRssi5:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final thresholdUnblacklistThreshold24Hard:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final thresholdUnblacklistThreshold24Soft:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final thresholdUnblacklistThreshold5Hard:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final thresholdUnblacklistThreshold5Soft:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final wifiAssociatedLongScanIntervalMilli:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final wifiAssociatedShortScanIntervalMilli:Ljava/util/concurrent/atomic/AtomicInteger;

.field public wifiConfigBlacklistMinTimeMilli:I

.field public wifiConfigLastSelectionHysteresis:I

.field public final wifiDisconnectedLongScanIntervalMilli:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final wifiDisconnectedShortScanIntervalMilli:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 165
    sput-boolean v2, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    .line 166
    sput-boolean v2, Lcom/android/server/wifi/WifiConfigStore;->VVDBG:Z

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/misc/wifi/ipconfig.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/WifiConfigStore;->ipConfigFile:Ljava/lang/String;

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/misc/wifi/networkHistory.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/WifiConfigStore;->networkHistoryConfigFile:Ljava/lang/String;

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/misc/wifi/autojoinconfig.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/WifiConfigStore;->autoJoinConfigFile:Ljava/lang/String;

    .line 442
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    .line 449
    const-string v0, "(.*)=([0-9]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/WifiConfigStore;->mConnectChoice:Ljava/util/regex/Pattern;

    .line 469
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "eap"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "phase2"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "identity"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "anonymous_identity"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "password"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "client_cert"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "ca_cert"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "subject_match"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "engine"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "engine_id"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "key_id"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "altsubject_match"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "domain_suffix_match"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "phase1"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/wifi/WifiConfigStore;->ENTERPRISE_CONFIG_SUPPLICANT_KEYS:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/WifiStateMachine;Lcom/android/server/wifi/WifiNative;)V
    .locals 7
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "w"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p3, "wn"    # Lcom/android/server/wifi/WifiNative;

    .prologue
    const/4 v6, 0x4

    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 535
    invoke-direct {p0}, Lcom/android/server/net/IpConfigStore;-><init>()V

    .line 173
    new-instance v1, Lcom/android/server/wifi/ConfigurationMap;

    invoke-direct {v1}, Lcom/android/server/wifi/ConfigurationMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    .line 190
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mDeletedSSIDs:Ljava/util/Set;

    .line 199
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mDeletedEphemeralSSIDs:Ljava/util/Set;

    .line 202
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mLastPriority:I

    .line 353
    const/16 v1, 0x8

    iput v1, p0, Lcom/android/server/wifi/WifiConfigStore;->maxTxPacketForFullScans:I

    .line 354
    const/16 v1, 0x10

    iput v1, p0, Lcom/android/server/wifi/WifiConfigStore;->maxRxPacketForFullScans:I

    .line 356
    const/16 v1, 0x28

    iput v1, p0, Lcom/android/server/wifi/WifiConfigStore;->maxTxPacketForPartialScans:I

    .line 357
    const/16 v1, 0x50

    iput v1, p0, Lcom/android/server/wifi/WifiConfigStore;->maxRxPacketForPartialScans:I

    .line 359
    const v1, 0x493e0

    iput v1, p0, Lcom/android/server/wifi/WifiConfigStore;->associatedFullScanMaxIntervalMilli:I

    .line 363
    const v1, 0xa4cb800

    iput v1, p0, Lcom/android/server/wifi/WifiConfigStore;->networkSwitchingBlackListPeriodMilli:I

    .line 365
    const/4 v1, 0x5

    iput v1, p0, Lcom/android/server/wifi/WifiConfigStore;->bandPreferenceBoostFactor5:I

    .line 366
    iput v3, p0, Lcom/android/server/wifi/WifiConfigStore;->bandPreferencePenaltyFactor5:I

    .line 368
    const/4 v1, 0x6

    iput v1, p0, Lcom/android/server/wifi/WifiConfigStore;->badLinkSpeed24:I

    .line 369
    const/16 v1, 0xc

    iput v1, p0, Lcom/android/server/wifi/WifiConfigStore;->badLinkSpeed5:I

    .line 370
    const/16 v1, 0x18

    iput v1, p0, Lcom/android/server/wifi/WifiConfigStore;->goodLinkSpeed24:I

    .line 371
    const/16 v1, 0x24

    iput v1, p0, Lcom/android/server/wifi/WifiConfigStore;->goodLinkSpeed5:I

    .line 373
    iput v6, p0, Lcom/android/server/wifi/WifiConfigStore;->maxAuthErrorsToBlacklist:I

    .line 374
    iput v6, p0, Lcom/android/server/wifi/WifiConfigStore;->maxConnectionErrorsToBlacklist:I

    .line 375
    const v1, 0x493e0

    iput v1, p0, Lcom/android/server/wifi/WifiConfigStore;->wifiConfigBlacklistMinTimeMilli:I

    .line 378
    const v1, 0x2bf20

    iput v1, p0, Lcom/android/server/wifi/WifiConfigStore;->wifiConfigLastSelectionHysteresis:I

    .line 381
    const/16 v1, 0xe

    iput v1, p0, Lcom/android/server/wifi/WifiConfigStore;->associatedHysteresisHigh:I

    .line 382
    const/16 v1, 0x8

    iput v1, p0, Lcom/android/server/wifi/WifiConfigStore;->associatedHysteresisLow:I

    .line 384
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiConfigStore;->showNetworks:Z

    .line 386
    iput-boolean v4, p0, Lcom/android/server/wifi/WifiConfigStore;->roamOnAny:Z

    .line 387
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiConfigStore;->onlyLinkSameCredentialConfigurations:Z

    .line 389
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiConfigStore;->enableLinkDebouncing:Z

    .line 390
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiConfigStore;->enable5GHzPreference:Z

    .line 391
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiConfigStore;->enableWifiCellularHandoverUserTriggeredAdjustment:Z

    .line 393
    iput v4, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredBand:I

    .line 394
    const/16 v1, 0x19

    iput v1, p0, Lcom/android/server/wifi/WifiConfigStore;->currentNetworkBoost:I

    .line 395
    const/16 v1, -0x55

    iput v1, p0, Lcom/android/server/wifi/WifiConfigStore;->scanResultRssiLevelPatchUp:I

    .line 399
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->enableHalBasedPno:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 400
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->enableSsidWhitelist:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 401
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->enableAutoJoinWhenAssociated:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 402
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->enableFullBandScanWhenAssociated:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 403
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->enableChipWakeUpWhenAssociated:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 404
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->enableRssiPollWhenAssociated:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 405
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    sget v2, Landroid/net/wifi/WifiConfiguration;->INITIAL_AUTO_JOIN_ATTEMPT_MIN_5:I

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdInitialAutoJoinAttemptMin5RSSI:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 407
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    sget v2, Landroid/net/wifi/WifiConfiguration;->INITIAL_AUTO_JOIN_ATTEMPT_MIN_24:I

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdInitialAutoJoinAttemptMin24RSSI:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 409
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    sget v2, Landroid/net/wifi/WifiConfiguration;->UNBLACKLIST_THRESHOLD_5_HARD:I

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdUnblacklistThreshold5Hard:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 411
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    sget v2, Landroid/net/wifi/WifiConfiguration;->UNBLACKLIST_THRESHOLD_5_SOFT:I

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdUnblacklistThreshold5Soft:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 413
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    sget v2, Landroid/net/wifi/WifiConfiguration;->UNBLACKLIST_THRESHOLD_24_HARD:I

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdUnblacklistThreshold24Hard:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 415
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    sget v2, Landroid/net/wifi/WifiConfiguration;->UNBLACKLIST_THRESHOLD_24_SOFT:I

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdUnblacklistThreshold24Soft:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 417
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    sget v2, Landroid/net/wifi/WifiConfiguration;->GOOD_RSSI_5:I

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdGoodRssi5:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 419
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    sget v2, Landroid/net/wifi/WifiConfiguration;->LOW_RSSI_5:I

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdLowRssi5:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 420
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    sget v2, Landroid/net/wifi/WifiConfiguration;->BAD_RSSI_5:I

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdBadRssi5:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 421
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    sget v2, Landroid/net/wifi/WifiConfiguration;->GOOD_RSSI_24:I

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdGoodRssi24:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 423
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    sget v2, Landroid/net/wifi/WifiConfiguration;->LOW_RSSI_24:I

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdLowRssi24:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 424
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    sget v2, Landroid/net/wifi/WifiConfiguration;->BAD_RSSI_24:I

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdBadRssi24:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 425
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v2, 0x28

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->maxTxPacketForNetworkSwitching:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 426
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v2, 0x50

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->maxRxPacketForNetworkSwitching:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 427
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->enableVerboseLogging:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 428
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    sget v2, Landroid/net/wifi/WifiConfiguration;->A_BAND_PREFERENCE_RSSI_THRESHOLD:I

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->bandPreferenceBoostThreshold5:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 430
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v2, 0xc

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->associatedFullScanBackoff:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 432
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    sget v2, Landroid/net/wifi/WifiConfiguration;->G_BAND_PREFERENCE_RSSI_THRESHOLD:I

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->bandPreferencePenaltyThreshold5:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 434
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->alwaysEnableScansWhileAssociated:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 435
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->maxNumPassiveChannelsForPartialScans:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 436
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->maxNumActiveChannelsForPartialScans:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 437
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v2, 0x3a98

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->wifiDisconnectedShortScanIntervalMilli:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 438
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const v2, 0x1d4c0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->wifiDisconnectedLongScanIntervalMilli:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 439
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v2, 0x4e20

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->wifiAssociatedShortScanIntervalMilli:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 440
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const v2, 0x2bf20

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->wifiAssociatedLongScanIntervalMilli:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 483
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/wifi/WifiConfigStore;->lastUnwantedNetworkDisconnectTimestamp:J

    .line 500
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    .line 509
    iput-object v5, p0, Lcom/android/server/wifi/WifiConfigStore;->lastSelectedConfiguration:Ljava/lang/String;

    .line 514
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mCachedPnoList:Ljava/util/ArrayList;

    .line 520
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mBssidBlacklist:Ljava/util/HashSet;

    .line 526
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mLostConfigsDbg:Ljava/util/HashSet;

    .line 536
    iput-object p1, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    .line 537
    iput-object p3, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    .line 538
    iput-object p2, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    .line 541
    sget-object v1, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    const-string v2, "ENABLE_AUTO_JOIN_WHILE_ASSOCIATED"

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->enableAutoJoinWhenAssociated:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    sget-object v1, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    const-string v2, "ENABLE_FULL_BAND_SCAN_WHEN_ASSOCIATED"

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->enableFullBandScanWhenAssociated:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    sget-object v1, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    const-string v2, "ENABLE_CHIP_WAKE_UP_WHILE_ASSOCIATED"

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->enableChipWakeUpWhenAssociated:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    sget-object v1, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    const-string v2, "ENABLE_RSSI_POLL_WHILE_ASSOCIATED_KEY"

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->enableRssiPollWhenAssociated:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    sget-object v1, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    const-string v2, "THRESHOLD_INITIAL_AUTO_JOIN_ATTEMPT_RSSI_MIN_5G"

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdInitialAutoJoinAttemptMin5RSSI:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    sget-object v1, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    const-string v2, "THRESHOLD_INITIAL_AUTO_JOIN_ATTEMPT_RSSI_MIN_24G"

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdInitialAutoJoinAttemptMin24RSSI:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    sget-object v1, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    const-string v2, "THRESHOLD_UNBLACKLIST_HARD_5G"

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdUnblacklistThreshold5Hard:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    sget-object v1, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    const-string v2, "THRESHOLD_UNBLACKLIST_SOFT_5G"

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdUnblacklistThreshold5Soft:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    sget-object v1, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    const-string v2, "THRESHOLD_UNBLACKLIST_HARD_24G"

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdUnblacklistThreshold24Hard:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    sget-object v1, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    const-string v2, "THRESHOLD_UNBLACKLIST_SOFT_24G"

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdUnblacklistThreshold24Soft:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    sget-object v1, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    const-string v2, "THRESHOLD_GOOD_RSSI_5"

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdGoodRssi5:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    sget-object v1, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    const-string v2, "THRESHOLD_LOW_RSSI_5"

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdLowRssi5:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    sget-object v1, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    const-string v2, "THRESHOLD_BAD_RSSI_5"

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdBadRssi5:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    sget-object v1, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    const-string v2, "THRESHOLD_GOOD_RSSI_24"

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdGoodRssi24:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    sget-object v1, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    const-string v2, "THRESHOLD_LOW_RSSI_24"

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdLowRssi24:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    sget-object v1, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    const-string v2, "THRESHOLD_BAD_RSSI_24"

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdBadRssi24:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    sget-object v1, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    const-string v2, "THRESHOLD_MAX_TX_PACKETS_FOR_NETWORK_SWITCHING"

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->maxTxPacketForNetworkSwitching:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    sget-object v1, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    const-string v2, "THRESHOLD_MAX_RX_PACKETS_FOR_NETWORK_SWITCHING"

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->maxRxPacketForNetworkSwitching:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    sget-object v1, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    const-string v2, "THRESHOLD_MAX_TX_PACKETS_FOR_FULL_SCANS"

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->maxTxPacketForNetworkSwitching:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    sget-object v1, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    const-string v2, "THRESHOLD_MAX_RX_PACKETS_FOR_FULL_SCANS"

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->maxRxPacketForNetworkSwitching:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    sget-object v1, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    const-string v2, "THRESHOLD_MAX_TX_PACKETS_FOR_PARTIAL_SCANS"

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->maxTxPacketForNetworkSwitching:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    sget-object v1, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    const-string v2, "THRESHOLD_MAX_RX_PACKETS_FOR_PARTIAL_SCANS"

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->maxRxPacketForNetworkSwitching:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    sget-object v1, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    const-string v2, "WIFI_VERBOSE_LOGS"

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->enableVerboseLogging:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    sget-object v1, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    const-string v2, "A_BAND_PREFERENCE_RSSI_THRESHOLD"

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->bandPreferenceBoostThreshold5:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    sget-object v1, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    const-string v2, "ASSOCIATED_PARTIAL_SCAN_PERIOD"

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->wifiAssociatedShortScanIntervalMilli:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 566
    sget-object v1, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    const-string v2, "ASSOCIATED_PARTIAL_SCAN_PERIOD"

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->wifiAssociatedShortScanIntervalMilli:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    sget-object v1, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    const-string v2, "ASSOCIATED_FULL_SCAN_BACKOFF_PERIOD"

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->associatedFullScanBackoff:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    sget-object v1, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    const-string v2, "G_BAND_PREFERENCE_RSSI_THRESHOLD"

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->bandPreferencePenaltyThreshold5:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    sget-object v1, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    const-string v2, "ALWAYS_ENABLE_SCAN_WHILE_ASSOCIATED"

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->alwaysEnableScansWhileAssociated:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    sget-object v1, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    const-string v2, "MAX_NUM_PASSIVE_CHANNELS_FOR_PARTIAL_SCANS"

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->maxNumPassiveChannelsForPartialScans:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    sget-object v1, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    const-string v2, "MAX_NUM_ACTIVE_CHANNELS_FOR_PARTIAL_SCANS"

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->maxNumActiveChannelsForPartialScans:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    sget-object v1, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    const-string v2, "ENABLE_HAL_BASED_PNO"

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->enableHalBasedPno:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    sget-object v1, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    const-string v2, "ENABLE_HAL_BASED_PNO"

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->enableSsidWhitelist:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiConfigStore;->showNetworks:Z

    if-eqz v1, :cond_1

    .line 577
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-static {}, Lcom/android/server/wifi/WifiNative;->getLocalLog()Landroid/util/LocalLog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mLocalLog:Landroid/util/LocalLog;

    .line 578
    new-instance v1, Lcom/android/server/wifi/WifiConfigStore$WpaConfigFileObserver;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/WifiConfigStore$WpaConfigFileObserver;-><init>(Lcom/android/server/wifi/WifiConfigStore;)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mFileObserver:Lcom/android/server/wifi/WifiConfigStore$WpaConfigFileObserver;

    .line 579
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mFileObserver:Lcom/android/server/wifi/WifiConfigStore$WpaConfigFileObserver;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiConfigStore$WpaConfigFileObserver;->startWatching()V

    .line 585
    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->wifiAssociatedShortScanIntervalMilli:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e002d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 587
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->wifiAssociatedLongScanIntervalMilli:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e002d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 589
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->wifiDisconnectedShortScanIntervalMilli:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e002b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 591
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->wifiDisconnectedLongScanIntervalMilli:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e002c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 594
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1120021

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wifi/WifiConfigStore;->onlyLinkSameCredentialConfigurations:Z

    .line 596
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->maxNumActiveChannelsForPartialScans:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0032

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 598
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->maxNumPassiveChannelsForPartialScans:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0033

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 600
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0030

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/WifiConfigStore;->associatedFullScanMaxIntervalMilli:I

    .line 602
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->associatedFullScanBackoff:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e002f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 604
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x112001b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wifi/WifiConfigStore;->enableLinkDebouncing:Z

    .line 607
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x112001c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wifi/WifiConfigStore;->enable5GHzPreference:Z

    .line 610
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0011

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/WifiConfigStore;->bandPreferenceBoostFactor5:I

    .line 612
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0015

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/WifiConfigStore;->bandPreferencePenaltyFactor5:I

    .line 615
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->bandPreferencePenaltyThreshold5:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0014

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 617
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->bandPreferenceBoostThreshold5:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0010

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 620
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0012

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/WifiConfigStore;->associatedHysteresisHigh:I

    .line 622
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0013

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/WifiConfigStore;->associatedHysteresisLow:I

    .line 625
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdBadRssi5:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0016

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 627
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdLowRssi5:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0017

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 629
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdGoodRssi5:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0018

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 631
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdBadRssi24:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0019

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 633
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdLowRssi24:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e001a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 635
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdGoodRssi24:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e001b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 638
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x112001f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wifi/WifiConfigStore;->enableWifiCellularHandoverUserTriggeredAdjustment:Z

    .line 641
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e001c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/WifiConfigStore;->badLinkSpeed24:I

    .line 643
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e001d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/WifiConfigStore;->badLinkSpeed5:I

    .line 645
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e001e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/WifiConfigStore;->goodLinkSpeed24:I

    .line 647
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e001f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/WifiConfigStore;->goodLinkSpeed5:I

    .line 650
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0035

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/WifiConfigStore;->maxAuthErrorsToBlacklist:I

    .line 652
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0034

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/WifiConfigStore;->maxConnectionErrorsToBlacklist:I

    .line 654
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0036

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/WifiConfigStore;->wifiConfigBlacklistMinTimeMilli:I

    .line 657
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->enableAutoJoinWhenAssociated:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1120020

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 660
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0037

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/WifiConfigStore;->currentNetworkBoost:I

    .line 663
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e003a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/WifiConfigStore;->scanResultRssiLevelPatchUp:I

    .line 666
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0027

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/WifiConfigStore;->networkSwitchingBlackListPeriodMilli:I

    .line 669
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->enableHalBasedPno:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1120023

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 672
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->enableSsidWhitelist:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1120024

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 674
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->enableHalBasedPno:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->enableSsidWhitelist:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 675
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->enableSsidWhitelist:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 678
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1120019

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 679
    .local v0, "hs2on":Z
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Passpoint is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_2

    const-string v1, "enabled"

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    new-instance v1, Lcom/android/server/wifi/hotspot2/omadm/MOManager;

    new-instance v2, Ljava/io/File;

    const-string v3, "/data/misc/wifi/PerProviderSubscription.conf"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v0}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;-><init>(Ljava/io/File;Z)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mMOManager:Lcom/android/server/wifi/hotspot2/omadm/MOManager;

    .line 682
    new-instance v1, Lcom/android/server/wifi/hotspot2/AnqpCache;

    invoke-direct {v1}, Lcom/android/server/wifi/hotspot2/AnqpCache;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mAnqpCache:Lcom/android/server/wifi/hotspot2/AnqpCache;

    .line 683
    new-instance v1, Lcom/android/server/wifi/hotspot2/SupplicantBridge;

    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-direct {v1, v2, p0}, Lcom/android/server/wifi/hotspot2/SupplicantBridge;-><init>(Lcom/android/server/wifi/WifiNative;Lcom/android/server/wifi/WifiConfigStore;)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mSupplicantBridge:Lcom/android/server/wifi/hotspot2/SupplicantBridge;

    .line 684
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mScanDetailCaches:Ljava/util/HashMap;

    .line 686
    new-instance v1, Lcom/android/server/wifi/SIMAccessor;

    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/wifi/SIMAccessor;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mSIMAccessor:Lcom/android/server/wifi/SIMAccessor;

    .line 687
    return-void

    .line 581
    .end local v0    # "hs2on":Z
    :cond_1
    iput-object v5, p0, Lcom/android/server/wifi/WifiConfigStore;->mLocalLog:Landroid/util/LocalLog;

    .line 582
    iput-object v5, p0, Lcom/android/server/wifi/WifiConfigStore;->mFileObserver:Lcom/android/server/wifi/WifiConfigStore$WpaConfigFileObserver;

    goto/16 :goto_0

    .line 679
    .restart local v0    # "hs2on":Z
    :cond_2
    const-string v1, "disabled"

    goto :goto_1
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 160
    sget-boolean v0, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/wifi/WifiConfigStore;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiConfigStore;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 160
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/wifi/WifiConfigStore;)Lcom/android/server/wifi/hotspot2/omadm/MOManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiConfigStore;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mMOManager:Lcom/android/server/wifi/hotspot2/omadm/MOManager;

    return-object v0
.end method

.method static synthetic access$300(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/util/BitSet;
    .param p1, "x1"    # [Ljava/lang/String;

    .prologue
    .line 160
    invoke-static {p0, p1}, Lcom/android/server/wifi/WifiConfigStore;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private addOrUpdateNetworkNative(Landroid/net/wifi/WifiConfiguration;I)Lcom/android/server/wifi/NetworkUpdateResult;
    .locals 44
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "uid"    # I

    .prologue
    .line 2680
    sget-boolean v5, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addOrUpdateNetworkNative "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->getPrintableSsid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;)V

    .line 2681
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigStore;->mMOManager:Lcom/android/server/wifi/hotspot2/omadm/MOManager;

    invoke-virtual {v5}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_1

    .line 2682
    const-string v5, "WifiConfigStore"

    const-string v6, "Passpoint is not enabled"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2683
    new-instance v36, Lcom/android/server/wifi/NetworkUpdateResult;

    const/4 v5, -0x1

    move-object/from16 v0, v36

    invoke-direct {v0, v5}, Lcom/android/server/wifi/NetworkUpdateResult;-><init>(I)V

    .line 3241
    :goto_0
    return-object v36

    .line 2686
    :cond_1
    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v34, v0

    .line 2687
    .local v34, "netId":I
    const/16 v35, 0x0

    .line 2689
    .local v35, "newNetwork":Z
    const/4 v5, -0x1

    move/from16 v0, v34

    if-ne v0, v5, :cond_2

    .line 2690
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/wifi/ConfigurationMap;->getByConfigKey(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v38

    .line 2691
    .local v38, "savedConfig":Landroid/net/wifi/WifiConfiguration;
    if-eqz v38, :cond_6

    .line 2692
    move-object/from16 v0, v38

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v34, v0

    .line 2709
    .end local v38    # "savedConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_2
    :goto_1
    const/16 v42, 0x1

    .line 2710
    .local v42, "updateFailed":Z
    const/16 v38, 0x0

    .line 2713
    .restart local v38    # "savedConfig":Landroid/net/wifi/WifiConfiguration;
    if-nez v35, :cond_3

    .line 2714
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    move/from16 v0, v34

    invoke-virtual {v5, v0}, Lcom/android/server/wifi/ConfigurationMap;->get(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v25

    .line 2715
    .local v25, "existingConfig":Landroid/net/wifi/WifiConfiguration;
    if-eqz v25, :cond_3

    .line 2716
    new-instance v38, Landroid/net/wifi/WifiConfiguration;

    .end local v38    # "savedConfig":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, v38

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    .line 2717
    .restart local v38    # "savedConfig":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->readNetworkVariables(Landroid/net/wifi/WifiConfiguration;)V

    .line 2721
    .end local v25    # "existingConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_3
    if-nez v35, :cond_4

    if-eqz v38, :cond_4

    move-object/from16 v0, v38

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v5, :cond_4

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v5, :cond_4

    move-object/from16 v0, v38

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    :cond_4
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v5, :cond_9

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v6, "ssid"

    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v8}, Lcom/android/server/wifi/WifiConfigStore;->encodeSSID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move/from16 v0, v34

    invoke-virtual {v5, v0, v6, v8}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 2729
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed to set SSID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 3093
    :goto_2
    if-eqz v42, :cond_3d

    .line 3094
    if-eqz v35, :cond_5

    .line 3095
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move/from16 v0, v34

    invoke-virtual {v5, v0}, Lcom/android/server/wifi/WifiNative;->removeNetwork(I)Z

    .line 3096
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to set a network variable, removed network: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v34

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 3098
    :cond_5
    new-instance v36, Lcom/android/server/wifi/NetworkUpdateResult;

    const/4 v5, -0x1

    move-object/from16 v0, v36

    invoke-direct {v0, v5}, Lcom/android/server/wifi/NetworkUpdateResult;-><init>(I)V

    goto/16 :goto_0

    .line 2694
    .end local v42    # "updateFailed":Z
    :cond_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigStore;->mMOManager:Lcom/android/server/wifi/hotspot2/omadm/MOManager;

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->getHomeSP(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 2695
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addOrUpdateNetworkNative passpoint "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " was found, but no network Id"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 2698
    :cond_7
    const/16 v35, 0x1

    .line 2699
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiNative;->addNetwork()I

    move-result v34

    .line 2700
    if-gez v34, :cond_8

    .line 2701
    const-string v5, "Failed to add a network!"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 2702
    new-instance v36, Lcom/android/server/wifi/NetworkUpdateResult;

    const/4 v5, -0x1

    move-object/from16 v0, v36

    invoke-direct {v0, v5}, Lcom/android/server/wifi/NetworkUpdateResult;-><init>(I)V

    goto/16 :goto_0

    .line 2704
    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addOrUpdateNetworkNative created netId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v34

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2733
    .restart local v42    # "updateFailed":Z
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 2734
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v6, "id_str"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v9, 0x22

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x22

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move/from16 v0, v34

    invoke-virtual {v5, v0, v6, v8}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 2738
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed to set id_str: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2743
    :cond_a
    if-nez v35, :cond_b

    if-eqz v38, :cond_b

    move-object/from16 v0, v38

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    if-eqz v5, :cond_b

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    if-eqz v5, :cond_b

    move-object/from16 v0, v38

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    :cond_b
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    if-eqz v5, :cond_c

    .line 2747
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Setting BSSID for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->log(Ljava/lang/String;)V

    .line 2748
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v6, "bssid"

    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    move/from16 v0, v34

    invoke-virtual {v5, v0, v6, v8}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 2752
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed to set BSSID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2757
    :cond_c
    if-nez v35, :cond_d

    if-eqz v38, :cond_d

    move-object/from16 v0, v38

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->SIMNum:I

    move-object/from16 v0, p1

    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->SIMNum:I

    if-eq v5, v6, :cond_e

    :cond_d
    move-object/from16 v0, p1

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->SIMNum:I

    if-eqz v5, :cond_e

    .line 2759
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v6, "sim_num"

    move-object/from16 v0, p1

    iget v8, v0, Landroid/net/wifi/WifiConfiguration;->SIMNum:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    move/from16 v0, v34

    invoke-virtual {v5, v0, v6, v8}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_e

    .line 2763
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->SIMNum:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": failed to set sim no: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->SIMNum:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2769
    :cond_e
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    sget-object v6, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/android/server/wifi/WifiConfigStore;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 2771
    .local v16, "allowedKeyManagementString":Ljava/lang/String;
    if-nez v35, :cond_f

    if-eqz v38, :cond_f

    if-eqz v16, :cond_f

    move-object/from16 v0, v38

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v5, v6}, Ljava/util/BitSet;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_10

    :cond_f
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v5}, Ljava/util/BitSet;->cardinality()I

    move-result v5

    if-eqz v5, :cond_10

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v6, "key_mgmt"

    move/from16 v0, v34

    move-object/from16 v1, v16

    invoke-virtual {v5, v0, v6, v1}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_10

    .line 2780
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed to set key_mgmt: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2785
    :cond_10
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    sget-object v6, Landroid/net/wifi/WifiConfiguration$Protocol;->strings:[Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/android/server/wifi/WifiConfigStore;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 2787
    .local v18, "allowedProtocolsString":Ljava/lang/String;
    if-nez v35, :cond_11

    if-eqz v38, :cond_11

    if-eqz v18, :cond_11

    move-object/from16 v0, v38

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v5, v6}, Ljava/util/BitSet;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_12

    :cond_11
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v5}, Ljava/util/BitSet;->cardinality()I

    move-result v5

    if-eqz v5, :cond_12

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v6, "proto"

    move/from16 v0, v34

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v6, v1}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_12

    .line 2795
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed to set proto: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2800
    :cond_12
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    sget-object v6, Landroid/net/wifi/WifiConfiguration$AuthAlgorithm;->strings:[Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/android/server/wifi/WifiConfigStore;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 2802
    .local v14, "allowedAuthAlgorithmsString":Ljava/lang/String;
    if-nez v35, :cond_13

    if-eqz v38, :cond_13

    if-eqz v14, :cond_13

    move-object/from16 v0, v38

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v5, v6}, Ljava/util/BitSet;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_14

    :cond_13
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v5}, Ljava/util/BitSet;->cardinality()I

    move-result v5

    if-eqz v5, :cond_14

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v6, "auth_alg"

    move/from16 v0, v34

    invoke-virtual {v5, v0, v6, v14}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_14

    .line 2811
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed to set auth_alg: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2816
    :cond_14
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    sget-object v6, Landroid/net/wifi/WifiConfiguration$PairwiseCipher;->strings:[Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/android/server/wifi/WifiConfigStore;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 2819
    .local v17, "allowedPairwiseCiphersString":Ljava/lang/String;
    if-nez v35, :cond_15

    if-eqz v38, :cond_15

    if-eqz v17, :cond_15

    move-object/from16 v0, v38

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v5, v6}, Ljava/util/BitSet;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_16

    :cond_15
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v5}, Ljava/util/BitSet;->cardinality()I

    move-result v5

    if-eqz v5, :cond_16

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v6, "pairwise"

    move/from16 v0, v34

    move-object/from16 v1, v17

    invoke-virtual {v5, v0, v6, v1}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_16

    .line 2828
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed to set pairwise: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2833
    :cond_16
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    sget-object v6, Landroid/net/wifi/WifiConfiguration$GroupCipher;->strings:[Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/android/server/wifi/WifiConfigStore;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 2835
    .local v15, "allowedGroupCiphersString":Ljava/lang/String;
    if-nez v35, :cond_17

    if-eqz v38, :cond_17

    if-eqz v15, :cond_17

    move-object/from16 v0, v38

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v5, v6}, Ljava/util/BitSet;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_18

    :cond_17
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v5}, Ljava/util/BitSet;->cardinality()I

    move-result v5

    if-eqz v5, :cond_18

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v6, "group"

    move/from16 v0, v34

    invoke-virtual {v5, v0, v6, v15}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_18

    .line 2844
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed to set group: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2851
    :cond_18
    if-nez v35, :cond_19

    if-eqz v38, :cond_19

    move-object/from16 v0, v38

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v5, :cond_19

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v5, :cond_19

    move-object/from16 v0, v38

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1a

    :cond_19
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v5, :cond_1a

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    const-string v6, "*"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1a

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v6, "psk"

    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    move/from16 v0, v34

    invoke-virtual {v5, v0, v6, v8}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1a

    .line 2861
    const-string v5, "failed to set psk"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2865
    :cond_1a
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->wapiASCert:Ljava/lang/String;

    if-eqz v5, :cond_1b

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->wapiASCert:Ljava/lang/String;

    const-string v6, "*"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1b

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v6, "as_cert_file"

    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->wapiASCert:Ljava/lang/String;

    move/from16 v0, v34

    invoke-virtual {v5, v0, v6, v8}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1b

    .line 2867
    const-string v5, "WifiConfigStore"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "failed to set as cert: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->wapiASCert:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2868
    const-string v5, "WifiConfigStore"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "- config.wapiASCert = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->wapiASCert:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2871
    :cond_1b
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->wapiUserCert:Ljava/lang/String;

    if-eqz v5, :cond_1c

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->wapiUserCert:Ljava/lang/String;

    const-string v6, "*"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1c

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v6, "user_cert_file"

    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->wapiUserCert:Ljava/lang/String;

    move/from16 v0, v34

    invoke-virtual {v5, v0, v6, v8}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1c

    .line 2873
    const-string v5, "WifiConfigStore"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "failed to set user cert: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->wapiUserCert:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2874
    const-string v5, "WifiConfigStore"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "- config.wapiUserCert =  "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->wapiUserCert:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2877
    :cond_1c
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 2878
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->wapiPsk:Ljava/lang/String;

    if-eqz v5, :cond_1d

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->wapiPsk:Ljava/lang/String;

    const-string v6, "*"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1d

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v6, "wapi_psk"

    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->wapiPsk:Ljava/lang/String;

    move/from16 v0, v34

    invoke-virtual {v5, v0, v6, v8}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1d

    .line 2880
    const-string v5, "WifiConfigStore"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "failed to set wapi psk: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->wapiPsk:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2883
    :cond_1d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v6, "wapi_key_type"

    move-object/from16 v0, p1

    iget v8, v0, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    move/from16 v0, v34

    invoke-virtual {v5, v0, v6, v8}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1e

    .line 2884
    const-string v5, "WifiConfigStore"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "failed to set wapi key type: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget v8, v0, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2889
    :cond_1e
    const/16 v26, 0x0

    .line 2890
    .local v26, "hasSetKey":Z
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    if-eqz v5, :cond_22

    .line 2891
    const/16 v28, 0x0

    .local v28, "i":I
    :goto_3
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    array-length v5, v5

    move/from16 v0, v28

    if-ge v0, v5, :cond_22

    .line 2894
    if-nez v35, :cond_1f

    if-eqz v38, :cond_1f

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v5, v5, v28

    if-eqz v5, :cond_1f

    move-object/from16 v0, v38

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v5, v5, v28

    if-eqz v5, :cond_1f

    move-object/from16 v0, v38

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v5, v5, v28

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v6, v6, v28

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_21

    .line 2898
    :cond_1f
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v5, v5, v28

    if-eqz v5, :cond_21

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v5, v5, v28

    const-string v6, "*"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_21

    .line 2899
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    sget-object v6, Landroid/net/wifi/WifiConfiguration;->wepKeyVarNames:[Ljava/lang/String;

    aget-object v6, v6, v28

    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v8, v8, v28

    move/from16 v0, v34

    invoke-virtual {v5, v0, v6, v8}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_20

    .line 2903
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed to set wep_key"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v6, v6, v28

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2906
    :cond_20
    const/16 v26, 0x1

    .line 2891
    :cond_21
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_3

    .line 2912
    .end local v28    # "i":I
    :cond_22
    if-eqz v26, :cond_23

    .line 2913
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v6, "wep_tx_keyidx"

    move-object/from16 v0, p1

    iget v8, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    move/from16 v0, v34

    invoke-virtual {v5, v0, v6, v8}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_23

    .line 2917
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed to set wep_tx_keyidx: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2922
    :cond_23
    if-nez v35, :cond_24

    if-eqz v38, :cond_24

    move-object/from16 v0, p1

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    move-object/from16 v0, v38

    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    if-eq v5, v6, :cond_25

    :cond_24
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v6, "priority"

    move-object/from16 v0, p1

    iget v8, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    move/from16 v0, v34

    invoke-virtual {v5, v0, v6, v8}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_25

    .line 2928
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": failed to set priority: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2933
    :cond_25
    if-nez v35, :cond_26

    if-eqz v38, :cond_26

    move-object/from16 v0, v38

    iget-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    move-object/from16 v0, p1

    iget-boolean v6, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-eq v5, v6, :cond_28

    :cond_26
    move-object/from16 v0, p1

    iget-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-eqz v5, :cond_28

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v8, "scan_ssid"

    move-object/from16 v0, p1

    iget-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-eqz v5, :cond_27

    const/4 v5, 0x1

    :goto_4
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    move/from16 v0, v34

    invoke-virtual {v6, v0, v8, v5}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_28

    .line 2939
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": failed to set hiddenSSID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-boolean v6, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2933
    :cond_27
    const/4 v5, 0x0

    goto :goto_4

    .line 2944
    :cond_28
    if-nez v35, :cond_29

    if-eqz v38, :cond_29

    move-object/from16 v0, v38

    iget-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->requirePMF:Z

    move-object/from16 v0, p1

    iget-boolean v6, v0, Landroid/net/wifi/WifiConfiguration;->requirePMF:Z

    if-eq v5, v6, :cond_2a

    :cond_29
    move-object/from16 v0, p1

    iget-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->requirePMF:Z

    if-eqz v5, :cond_2a

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v6, "ieee80211w"

    const-string v8, "2"

    move/from16 v0, v34

    invoke-virtual {v5, v0, v6, v8}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2a

    .line 2950
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": failed to set requirePMF: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-boolean v6, v0, Landroid/net/wifi/WifiConfiguration;->requirePMF:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2955
    :cond_2a
    if-nez v35, :cond_2b

    if-eqz v38, :cond_2b

    move-object/from16 v0, v38

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->updateIdentifier:Ljava/lang/String;

    if-eqz v5, :cond_2b

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->updateIdentifier:Ljava/lang/String;

    if-eqz v5, :cond_2b

    move-object/from16 v0, v38

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->updateIdentifier:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->updateIdentifier:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2c

    :cond_2b
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->updateIdentifier:Ljava/lang/String;

    if-eqz v5, :cond_2c

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v6, "update_identifier"

    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->updateIdentifier:Ljava/lang/String;

    move/from16 v0, v34

    invoke-virtual {v5, v0, v6, v8}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2c

    .line 2963
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": failed to set updateIdentifier: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->updateIdentifier:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2968
    :cond_2c
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    if-eqz v5, :cond_3c

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v5}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_3c

    .line 2971
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v23, v0

    .line 2973
    .local v23, "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    invoke-static/range {v23 .. v23}, Lcom/android/server/wifi/WifiConfigStore;->needsKeyStore(Landroid/net/wifi/WifiEnterpriseConfig;)Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 2980
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v5}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v5

    sget-object v6, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    if-eq v5, v6, :cond_2d

    .line 2981
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": key store is locked"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2990
    :cond_2d
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    move/from16 v0, v34

    invoke-virtual {v5, v0}, Lcom/android/server/wifi/ConfigurationMap;->get(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v21

    .line 2991
    .local v21, "currentConfig":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfiguration;->getKeyIdForCredentials(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v32

    .line 2993
    .local v32, "keyId":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiConfigStore;->installKeys(Landroid/net/wifi/WifiEnterpriseConfig;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2e

    .line 2994
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": failed to install keys"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 2997
    .end local v21    # "currentConfig":Landroid/net/wifi/WifiConfiguration;
    .end local v32    # "keyId":Ljava/lang/String;
    :catch_0
    move-exception v22

    .line 2998
    .local v22, "e":Ljava/lang/IllegalStateException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " invalid config for key installation"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 3003
    .end local v22    # "e":Ljava/lang/IllegalStateException;
    :cond_2e
    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiEnterpriseConfig;->getFields()Ljava/util/HashMap;

    move-result-object v24

    .line 3004
    .local v24, "enterpriseFields":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v39, 0x0

    .line 3005
    .local v39, "savedEnterpriseFields":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v40, 0x0

    .line 3006
    .local v40, "savedValue":Ljava/lang/String;
    if-eqz v38, :cond_2f

    move-object/from16 v0, v38

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    if-eqz v5, :cond_2f

    .line 3007
    move-object/from16 v0, v38

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v5}, Landroid/net/wifi/WifiEnterpriseConfig;->getFields()Ljava/util/HashMap;

    move-result-object v39

    .line 3009
    :cond_2f
    invoke-virtual/range {v24 .. v24}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v29

    .local v29, "i$":Ljava/util/Iterator;
    :cond_30
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3c

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/String;

    .line 3010
    .local v31, "key":Ljava/lang/String;
    move-object/from16 v0, v24

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Ljava/lang/String;

    .line 3011
    .local v43, "value":Ljava/lang/String;
    if-eqz v39, :cond_31

    .line 3012
    move-object/from16 v0, v39

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v40

    .end local v40    # "savedValue":Ljava/lang/String;
    check-cast v40, Ljava/lang/String;

    .line 3014
    .restart local v40    # "savedValue":Ljava/lang/String;
    :cond_31
    const-string v5, "password"

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_32

    if-eqz v43, :cond_32

    const-string v5, "*"

    move-object/from16 v0, v43

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_30

    .line 3018
    :cond_32
    const-string v5, "realm"

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_30

    const-string v5, "plmn"

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_30

    .line 3023
    const-string v5, "identity"

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_36

    .line 3024
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v5}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v5

    const/4 v6, 0x4

    if-eq v5, v6, :cond_33

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v5}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v5

    const/4 v6, 0x5

    if-eq v5, v6, :cond_33

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v5}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v5

    const/4 v6, 0x6

    if-ne v5, v6, :cond_34

    .line 3027
    :cond_33
    if-nez v35, :cond_30

    if-eqz v43, :cond_30

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v6, "NULL"

    move/from16 v0, v34

    move-object/from16 v1, v31

    invoke-virtual {v5, v0, v1, v6}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_30

    .line 3031
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": failed to set "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v43

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 3036
    :cond_34
    if-nez v35, :cond_35

    if-eqz v40, :cond_35

    if-eqz v43, :cond_35

    move-object/from16 v0, v43

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_30

    :cond_35
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move/from16 v0, v34

    move-object/from16 v1, v31

    move-object/from16 v2, v43

    invoke-virtual {v5, v0, v1, v2}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_30

    .line 3042
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->removeKeys(Landroid/net/wifi/WifiEnterpriseConfig;)V

    .line 3043
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": failed to set "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v43

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 3050
    :cond_36
    const-string v5, "anonymous_identity"

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 3051
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v5}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v5

    const/4 v6, 0x4

    if-eq v5, v6, :cond_37

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v5}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v5

    const/4 v6, 0x5

    if-eq v5, v6, :cond_37

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v5}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v5

    const/4 v6, 0x6

    if-ne v5, v6, :cond_38

    .line 3054
    :cond_37
    if-nez v35, :cond_30

    if-eqz v43, :cond_30

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v6, "NULL"

    move/from16 v0, v34

    move-object/from16 v1, v31

    invoke-virtual {v5, v0, v1, v6}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_30

    .line 3058
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": failed to set "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v43

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 3063
    :cond_38
    if-nez v35, :cond_39

    if-eqz v40, :cond_39

    if-eqz v43, :cond_39

    move-object/from16 v0, v43

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_30

    :cond_39
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move/from16 v0, v34

    move-object/from16 v1, v31

    move-object/from16 v2, v43

    invoke-virtual {v5, v0, v1, v2}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_30

    .line 3069
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->removeKeys(Landroid/net/wifi/WifiEnterpriseConfig;)V

    .line 3070
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": failed to set "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v43

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 3077
    :cond_3a
    if-nez v35, :cond_3b

    if-eqz v40, :cond_3b

    if-eqz v43, :cond_3b

    move-object/from16 v0, v43

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_30

    :cond_3b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move/from16 v0, v34

    move-object/from16 v1, v31

    move-object/from16 v2, v43

    invoke-virtual {v5, v0, v1, v2}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_30

    .line 3083
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->removeKeys(Landroid/net/wifi/WifiEnterpriseConfig;)V

    .line 3084
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": failed to set "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v43

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 3090
    .end local v23    # "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    .end local v24    # "enterpriseFields":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v29    # "i$":Ljava/util/Iterator;
    .end local v31    # "key":Ljava/lang/String;
    .end local v39    # "savedEnterpriseFields":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v40    # "savedValue":Ljava/lang/String;
    .end local v43    # "value":Ljava/lang/String;
    :cond_3c
    const/16 v42, 0x0

    goto/16 :goto_2

    .line 3108
    .end local v14    # "allowedAuthAlgorithmsString":Ljava/lang/String;
    .end local v15    # "allowedGroupCiphersString":Ljava/lang/String;
    .end local v16    # "allowedKeyManagementString":Ljava/lang/String;
    .end local v17    # "allowedPairwiseCiphersString":Ljava/lang/String;
    .end local v18    # "allowedProtocolsString":Ljava/lang/String;
    .end local v26    # "hasSetKey":Z
    :cond_3d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    move/from16 v0, v34

    invoke-virtual {v5, v0}, Lcom/android/server/wifi/ConfigurationMap;->get(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v21

    .line 3109
    .restart local v21    # "currentConfig":Landroid/net/wifi/WifiConfiguration;
    if-nez v21, :cond_3f

    .line 3110
    new-instance v21, Landroid/net/wifi/WifiConfiguration;

    .end local v21    # "currentConfig":Landroid/net/wifi/WifiConfiguration;
    invoke-direct/range {v21 .. v21}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 3111
    .restart local v21    # "currentConfig":Landroid/net/wifi/WifiConfiguration;
    sget-object v5, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Landroid/net/wifi/WifiConfiguration;->setIpAssignment(Landroid/net/IpConfiguration$IpAssignment;)V

    .line 3112
    sget-object v5, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Landroid/net/wifi/WifiConfiguration;->setProxySettings(Landroid/net/IpConfiguration$ProxySettings;)V

    .line 3113
    move/from16 v0, v34

    move-object/from16 v1, v21

    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 3114
    if-eqz p1, :cond_3e

    .line 3116
    move-object/from16 v0, p1

    iget-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    move-object/from16 v0, v21

    iput-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    .line 3117
    move-object/from16 v0, p1

    iget-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->didSelfAdd:Z

    move-object/from16 v0, v21

    iput-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->didSelfAdd:Z

    .line 3118
    move-object/from16 v0, p1

    iget-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    move-object/from16 v0, v21

    iput-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    .line 3119
    move-object/from16 v0, p1

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->autoJoinUseAggressiveJoinAttemptThreshold:I

    move-object/from16 v0, v21

    iput v5, v0, Landroid/net/wifi/WifiConfiguration;->autoJoinUseAggressiveJoinAttemptThreshold:I

    .line 3121
    move-object/from16 v0, p1

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->lastConnectUid:I

    move-object/from16 v0, v21

    iput v5, v0, Landroid/net/wifi/WifiConfiguration;->lastConnectUid:I

    .line 3122
    move-object/from16 v0, p1

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    move-object/from16 v0, v21

    iput v5, v0, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    .line 3123
    move-object/from16 v0, p1

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    move-object/from16 v0, v21

    iput v5, v0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    .line 3124
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    move-object/from16 v0, v21

    iput-object v5, v0, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    .line 3125
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->lastUpdateName:Ljava/lang/String;

    move-object/from16 v0, v21

    iput-object v5, v0, Landroid/net/wifi/WifiConfiguration;->lastUpdateName:Ljava/lang/String;

    .line 3126
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->peerWifiConfiguration:Ljava/lang/String;

    move-object/from16 v0, v21

    iput-object v5, v0, Landroid/net/wifi/WifiConfiguration;->peerWifiConfiguration:Ljava/lang/String;

    .line 3127
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    move-object/from16 v0, v21

    iput-object v5, v0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    .line 3128
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    move-object/from16 v0, v21

    iput-object v5, v0, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    .line 3129
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->roamingConsortiumIds:[J

    move-object/from16 v0, v21

    iput-object v5, v0, Landroid/net/wifi/WifiConfiguration;->roamingConsortiumIds:[J

    .line 3130
    move-object/from16 v0, p1

    iget-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->validatedInternetAccess:Z

    move-object/from16 v0, v21

    iput-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->validatedInternetAccess:Z

    .line 3131
    move-object/from16 v0, p1

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    move-object/from16 v0, v21

    iput v5, v0, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    .line 3132
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->updateTime:Ljava/lang/String;

    move-object/from16 v0, v21

    iput-object v5, v0, Landroid/net/wifi/WifiConfiguration;->updateTime:Ljava/lang/String;

    .line 3133
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->creationTime:Ljava/lang/String;

    move-object/from16 v0, v21

    iput-object v5, v0, Landroid/net/wifi/WifiConfiguration;->creationTime:Ljava/lang/String;

    .line 3136
    :cond_3e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "created new config netId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v21

    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " name="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v21

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->log(Ljava/lang/String;)V

    .line 3143
    :cond_3f
    const/16 v27, 0x0

    .line 3145
    .local v27, "homeSP":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v5

    if-eqz v5, :cond_4c

    .line 3147
    :try_start_1
    new-instance v13, Lcom/android/server/wifi/hotspot2/pps/Credential;

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    if-nez v35, :cond_40

    const/4 v5, 0x1

    :goto_5
    invoke-direct {v13, v6, v8, v5}, Lcom/android/server/wifi/hotspot2/pps/Credential;-><init>(Landroid/net/wifi/WifiEnterpriseConfig;Landroid/security/KeyStore;Z)V

    .line 3149
    .local v13, "credential":Lcom/android/server/wifi/hotspot2/pps/Credential;
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 3150
    .local v7, "roamingConsortiumIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->roamingConsortiumIds:[J

    move-object/from16 v19, v0

    .local v19, "arr$":[J
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v33, v0

    .local v33, "len$":I
    const/16 v29, 0x0

    .local v29, "i$":I
    :goto_6
    move/from16 v0, v29

    move/from16 v1, v33

    if-ge v0, v1, :cond_41

    aget-wide v8, v19, v29

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v37

    .line 3151
    .local v37, "roamingConsortiumId":Ljava/lang/Long;
    move-object/from16 v0, v37

    invoke-virtual {v7, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3150
    add-int/lit8 v29, v29, 0x1

    goto :goto_6

    .line 3147
    .end local v7    # "roamingConsortiumIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    .end local v13    # "credential":Lcom/android/server/wifi/hotspot2/pps/Credential;
    .end local v19    # "arr$":[J
    .end local v29    # "i$":I
    .end local v33    # "len$":I
    .end local v37    # "roamingConsortiumId":Ljava/lang/Long;
    :cond_40
    const/4 v5, 0x0

    goto :goto_5

    .line 3154
    .restart local v7    # "roamingConsortiumIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    .restart local v13    # "credential":Lcom/android/server/wifi/hotspot2/pps/Credential;
    .restart local v19    # "arr$":[J
    .restart local v29    # "i$":I
    .restart local v33    # "len$":I
    :cond_41
    new-instance v4, Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v8

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v9

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v10

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-direct/range {v4 .. v13}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;-><init>(Ljava/util/Map;Ljava/lang/String;Ljava/util/HashSet;Ljava/util/Set;Ljava/util/Set;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/wifi/hotspot2/pps/Credential;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3159
    .end local v27    # "homeSP":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    .local v4, "homeSP":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "created a homeSP object for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->log(Ljava/lang/String;)V

    .line 3162
    move-object/from16 v0, v21

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v6}, Landroid/net/wifi/WifiEnterpriseConfig;->getRealm()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->setRealm(Ljava/lang/String;)V

    .line 3163
    move-object/from16 v0, v21

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v6}, Landroid/net/wifi/WifiEnterpriseConfig;->getPlmn()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->setPlmn(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 3171
    .end local v7    # "roamingConsortiumIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    .end local v13    # "credential":Lcom/android/server/wifi/hotspot2/pps/Credential;
    .end local v19    # "arr$":[J
    .end local v29    # "i$":I
    .end local v33    # "len$":I
    :goto_7
    const/4 v5, -0x1

    move/from16 v0, p2

    if-eq v0, v5, :cond_42

    .line 3172
    if-eqz v35, :cond_4a

    .line 3173
    move/from16 v0, p2

    move-object/from16 v1, v21

    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    .line 3180
    :cond_42
    :goto_8
    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    .line 3181
    .local v41, "sb":Ljava/lang/StringBuilder;
    const-string v5, "time="

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3182
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v20

    .line 3183
    .local v20, "c":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move-object/from16 v0, v20

    invoke-virtual {v0, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 3184
    const-string v5, "%tm-%td %tH:%tM:%tS.%tL"

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v20, v6, v8

    const/4 v8, 0x1

    aput-object v20, v6, v8

    const/4 v8, 0x2

    aput-object v20, v6, v8

    const/4 v8, 0x3

    aput-object v20, v6, v8

    const/4 v8, 0x4

    aput-object v20, v6, v8

    const/4 v8, 0x5

    aput-object v20, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3186
    if-eqz v35, :cond_4b

    .line 3187
    const/4 v5, 0x1

    move-object/from16 v0, v21

    iput-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->dirty:Z

    .line 3188
    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v21

    iput-object v5, v0, Landroid/net/wifi/WifiConfiguration;->creationTime:Ljava/lang/String;

    .line 3193
    :goto_9
    move-object/from16 v0, v21

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    const/16 v6, 0xc8

    if-ne v5, v6, :cond_43

    .line 3196
    const/4 v5, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Landroid/net/wifi/WifiConfiguration;->setAutoJoinStatus(I)V

    .line 3197
    const/4 v5, 0x0

    move-object/from16 v0, v21

    iput-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    .line 3198
    const/4 v5, 0x0

    move-object/from16 v0, v21

    iput-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->didSelfAdd:Z

    .line 3200
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "remove deleted status netId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->log(Ljava/lang/String;)V

    .line 3205
    :cond_43
    move-object/from16 v0, v21

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_44

    .line 3207
    const/4 v5, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Landroid/net/wifi/WifiConfiguration;->setAutoJoinStatus(I)V

    .line 3210
    :cond_44
    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiConfigStore;->getLastSelectedConfiguration()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_45

    move-object/from16 v0, v21

    iget-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-eqz v5, :cond_45

    .line 3213
    const/4 v5, 0x0

    move-object/from16 v0, v21

    iput-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    .line 3214
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "remove ephemeral status netId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->log(Ljava/lang/String;)V

    .line 3218
    :cond_45
    sget-boolean v5, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v5, :cond_46

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "will read network variables netId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->log(Ljava/lang/String;)V

    .line 3220
    :cond_46
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->readNetworkVariables(Landroid/net/wifi/WifiConfiguration;)V

    .line 3223
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->lastUpdateName:Ljava/lang/String;

    if-eqz v5, :cond_47

    .line 3224
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->lastUpdateName:Ljava/lang/String;

    move-object/from16 v0, v21

    iput-object v5, v0, Landroid/net/wifi/WifiConfiguration;->lastUpdateName:Ljava/lang/String;

    .line 3226
    :cond_47
    move-object/from16 v0, p1

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_48

    .line 3227
    move-object/from16 v0, p1

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    move-object/from16 v0, v21

    iput v5, v0, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    .line 3230
    :cond_48
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    move/from16 v0, v34

    move-object/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Lcom/android/server/wifi/ConfigurationMap;->put(ILandroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 3232
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/WifiConfigStore;->writeIpAndProxyConfigurationsOnChange(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/NetworkUpdateResult;

    move-result-object v36

    .line 3233
    .local v36, "result":Lcom/android/server/wifi/NetworkUpdateResult;
    move-object/from16 v0, v36

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/NetworkUpdateResult;->setIsNewNetwork(Z)V

    .line 3234
    move-object/from16 v0, v36

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/NetworkUpdateResult;->setNetworkId(I)V

    .line 3236
    if-eqz v4, :cond_49

    .line 3237
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v4}, Lcom/android/server/wifi/WifiConfigStore;->writePasspointConfigs(Ljava/lang/String;Lcom/android/server/wifi/hotspot2/pps/HomeSP;)V

    .line 3239
    :cond_49
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->writeKnownNetworkHistory(Z)V

    goto/16 :goto_0

    .line 3165
    .end local v4    # "homeSP":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    .end local v20    # "c":Ljava/util/Calendar;
    .end local v36    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    .end local v41    # "sb":Ljava/lang/StringBuilder;
    .restart local v27    # "homeSP":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    :catch_1
    move-exception v30

    move-object/from16 v4, v27

    .line 3166
    .end local v27    # "homeSP":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    .restart local v4    # "homeSP":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    .local v30, "ioe":Ljava/io/IOException;
    :goto_a
    const-string v5, "WifiConfigStore"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to create Passpoint config: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v30

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3167
    new-instance v36, Lcom/android/server/wifi/NetworkUpdateResult;

    const/4 v5, -0x1

    move-object/from16 v0, v36

    invoke-direct {v0, v5}, Lcom/android/server/wifi/NetworkUpdateResult;-><init>(I)V

    goto/16 :goto_0

    .line 3175
    .end local v30    # "ioe":Ljava/io/IOException;
    :cond_4a
    move/from16 v0, p2

    move-object/from16 v1, v21

    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    goto/16 :goto_8

    .line 3190
    .restart local v20    # "c":Ljava/util/Calendar;
    .restart local v41    # "sb":Ljava/lang/StringBuilder;
    :cond_4b
    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v21

    iput-object v5, v0, Landroid/net/wifi/WifiConfiguration;->updateTime:Ljava/lang/String;

    goto/16 :goto_9

    .line 3165
    .end local v20    # "c":Ljava/util/Calendar;
    .end local v41    # "sb":Ljava/lang/StringBuilder;
    .restart local v7    # "roamingConsortiumIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    .restart local v13    # "credential":Lcom/android/server/wifi/hotspot2/pps/Credential;
    .restart local v19    # "arr$":[J
    .restart local v29    # "i$":I
    .restart local v33    # "len$":I
    :catch_2
    move-exception v30

    goto :goto_a

    .end local v4    # "homeSP":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    .end local v7    # "roamingConsortiumIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    .end local v13    # "credential":Lcom/android/server/wifi/hotspot2/pps/Credential;
    .end local v19    # "arr$":[J
    .end local v29    # "i$":I
    .end local v33    # "len$":I
    .restart local v27    # "homeSP":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    :cond_4c
    move-object/from16 v4, v27

    .end local v27    # "homeSP":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    .restart local v4    # "homeSP":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    goto/16 :goto_7
.end method

.method private buildPnoList()V
    .locals 8

    .prologue
    .line 1331
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/server/wifi/WifiConfigStore;->mCachedPnoList:Ljava/util/ArrayList;

    .line 1333
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConfigStore;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1335
    .local v3, "sortedWifiConfigurations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/wifi/WifiConfiguration;>;"
    const-string v5, "WifiConfigStore"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "buildPnoList sortedWifiConfigurations size "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1336
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eqz v5, :cond_0

    .line 1338
    new-instance v5, Lcom/android/server/wifi/WifiConfigStore$1;

    invoke-direct {v5, p0}, Lcom/android/server/wifi/WifiConfigStore$1;-><init>(Lcom/android/server/wifi/WifiConfigStore;)V

    invoke-static {v3, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1345
    :cond_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 1350
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v5, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdInitialAutoJoinAttemptMin24RSSI:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    .line 1351
    .local v4, "threshold":I
    const-string v5, "WifiConfigStore"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "found sortedWifiConfigurations : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1352
    new-instance v2, Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;

    iget-object v5, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v5, v0, v4}, Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;-><init>(Lcom/android/server/wifi/WifiNative;Landroid/net/wifi/WifiConfiguration;I)V

    .line 1353
    .local v2, "network":Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;
    iget-object v5, p0, Lcom/android/server/wifi/WifiConfigStore;->mCachedPnoList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1355
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "network":Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;
    .end local v4    # "threshold":I
    :cond_1
    return-void
.end method

.method private cacheScanResultForConfig(Landroid/net/wifi/WifiConfiguration;Lcom/android/server/wifi/ScanDetail;Lcom/android/server/wifi/hotspot2/PasspointMatch;)V
    .locals 12
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "scanDetail"    # Lcom/android/server/wifi/ScanDetail;
    .param p3, "passpointMatch"    # Lcom/android/server/wifi/hotspot2/PasspointMatch;

    .prologue
    .line 3583
    invoke-virtual {p2}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v7

    .line 3585
    .local v7, "scanResult":Landroid/net/wifi/ScanResult;
    iget v9, p1, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    const/16 v10, 0xc8

    if-lt v9, v10, :cond_1

    .line 3586
    sget-boolean v9, Lcom/android/server/wifi/WifiConfigStore;->VVDBG:Z

    if-eqz v9, :cond_0

    .line 3587
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateSavedNetworkHistory(): found a deleted, skip it...  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 3652
    :cond_0
    :goto_0
    return-void

    .line 3597
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v6

    .line 3598
    .local v6, "scanDetailCache":Lcom/android/server/wifi/ScanDetailCache;
    if-nez v6, :cond_2

    .line 3599
    const-string v9, "WifiConfigStore"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could not allocate scan cache for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3604
    :cond_2
    iget-object v9, v7, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v6, v9}, Lcom/android/server/wifi/ScanDetailCache;->get(Ljava/lang/String;)Landroid/net/wifi/ScanResult;

    move-result-object v3

    .line 3605
    .local v3, "result":Landroid/net/wifi/ScanResult;
    if-eqz v3, :cond_3

    .line 3607
    iget v9, v3, Landroid/net/wifi/ScanResult;->autoJoinStatus:I

    iput v9, v7, Landroid/net/wifi/ScanResult;->autoJoinStatus:I

    .line 3608
    iget-wide v10, v3, Landroid/net/wifi/ScanResult;->blackListTimestamp:J

    iput-wide v10, v7, Landroid/net/wifi/ScanResult;->blackListTimestamp:J

    .line 3609
    iget v9, v3, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    iput v9, v7, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    .line 3610
    iget v9, v3, Landroid/net/wifi/ScanResult;->numConnection:I

    iput v9, v7, Landroid/net/wifi/ScanResult;->numConnection:I

    .line 3611
    iget v9, v3, Landroid/net/wifi/ScanResult;->isAutoJoinCandidate:I

    iput v9, v7, Landroid/net/wifi/ScanResult;->isAutoJoinCandidate:I

    .line 3614
    :cond_3
    iget-boolean v9, p1, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-eqz v9, :cond_4

    .line 3617
    const/4 v9, 0x1

    iput-boolean v9, v7, Landroid/net/wifi/ScanResult;->untrusted:Z

    .line 3620
    :cond_4
    invoke-virtual {v6}, Lcom/android/server/wifi/ScanDetailCache;->size()I

    move-result v9

    const/16 v10, 0xc0

    if-le v9, v10, :cond_7

    .line 3621
    const-wide/16 v4, 0x0

    .line 3622
    .local v4, "now_dbg":J
    sget-boolean v9, Lcom/android/server/wifi/WifiConfigStore;->VVDBG:Z

    if-eqz v9, :cond_6

    .line 3623
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " Will trim config "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " size "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Lcom/android/server/wifi/ScanDetailCache;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 3626
    invoke-virtual {v6}, Lcom/android/server/wifi/ScanDetailCache;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wifi/ScanDetail;

    .line 3627
    .local v8, "sd":Lcom/android/server/wifi/ScanDetail;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "     "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Lcom/android/server/wifi/ScanDetail;->getBSSIDString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Lcom/android/server/wifi/ScanDetail;->getSeen()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 3629
    .end local v8    # "sd":Lcom/android/server/wifi/ScanDetail;
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v4

    .line 3634
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_6
    const/16 v9, 0x80

    invoke-virtual {v6, v9}, Lcom/android/server/wifi/ScanDetailCache;->trim(I)V

    .line 3635
    sget-boolean v9, Lcom/android/server/wifi/WifiConfigStore;->VVDBG:Z

    if-eqz v9, :cond_7

    .line 3636
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v10

    sub-long v0, v10, v4

    .line 3637
    .local v0, "diff":J
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " Finished trimming config, time(ns) "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 3638
    invoke-virtual {v6}, Lcom/android/server/wifi/ScanDetailCache;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wifi/ScanDetail;

    .line 3639
    .restart local v8    # "sd":Lcom/android/server/wifi/ScanDetail;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "     "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Lcom/android/server/wifi/ScanDetail;->getBSSIDString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Lcom/android/server/wifi/ScanDetail;->getSeen()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto :goto_2

    .line 3645
    .end local v0    # "diff":J
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "now_dbg":J
    .end local v8    # "sd":Lcom/android/server/wifi/ScanDetail;
    :cond_7
    if-eqz p3, :cond_8

    .line 3646
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigStore;->getHomeSPForConfig(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    move-result-object v9

    invoke-virtual {v6, p2, p3, v9}, Lcom/android/server/wifi/ScanDetailCache;->put(Lcom/android/server/wifi/ScanDetail;Lcom/android/server/wifi/hotspot2/PasspointMatch;Lcom/android/server/wifi/hotspot2/pps/HomeSP;)V

    .line 3651
    :goto_3
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiConfigStore;->linkConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    goto/16 :goto_0

    .line 3648
    :cond_8
    invoke-virtual {v6, p2}, Lcom/android/server/wifi/ScanDetailCache;->put(Lcom/android/server/wifi/ScanDetail;)V

    goto :goto_3
.end method

.method private cacheScanResultForPasspointConfigs(Lcom/android/server/wifi/ScanDetail;Ljava/util/Map;)V
    .locals 7
    .param p1, "scanDetail"    # Lcom/android/server/wifi/ScanDetail;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wifi/ScanDetail;",
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/wifi/hotspot2/pps/HomeSP;",
            "Lcom/android/server/wifi/hotspot2/PasspointMatch;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3565
    .local p2, "matches":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/hotspot2/pps/HomeSP;Lcom/android/server/wifi/hotspot2/PasspointMatch;>;"
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3566
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/wifi/hotspot2/pps/HomeSP;Lcom/android/server/wifi/hotspot2/PasspointMatch;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/hotspot2/PasspointMatch;

    .line 3567
    .local v3, "match":Lcom/android/server/wifi/hotspot2/PasspointMatch;
    sget-object v4, Lcom/android/server/wifi/hotspot2/PasspointMatch;->HomeProvider:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    if-eq v3, v4, :cond_1

    sget-object v4, Lcom/android/server/wifi/hotspot2/PasspointMatch;->RoamingProvider:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    if-ne v3, v4, :cond_0

    .line 3568
    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfigForHomeSP(Lcom/android/server/wifi/hotspot2/pps/HomeSP;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 3569
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_2

    .line 3570
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wifi/hotspot2/PasspointMatch;

    invoke-direct {p0, v0, p1, v4}, Lcom/android/server/wifi/WifiConfigStore;->cacheScanResultForConfig(Landroid/net/wifi/WifiConfiguration;Lcom/android/server/wifi/ScanDetail;Lcom/android/server/wifi/hotspot2/PasspointMatch;)V

    goto :goto_0

    .line 3572
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to find config for \'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    invoke-virtual {v4}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getFQDN()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3578
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/wifi/hotspot2/pps/HomeSP;Lcom/android/server/wifi/hotspot2/PasspointMatch;>;"
    .end local v3    # "match":Lcom/android/server/wifi/hotspot2/PasspointMatch;
    :cond_3
    return-void
.end method

.method private static configKey(Landroid/net/wifi/WifiConfiguration;)I
    .locals 2
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 4088
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v0

    .line 4089
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    return v1
.end method

.method public static encodeSSID(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 2670
    invoke-static {p0}, Lcom/android/server/wifi/WifiConfigStore;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wifi/hotspot2/Utils;->toHex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private enterpriseConfigKeyShouldBeQuoted(Ljava/lang/String;)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 3837
    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 3842
    :pswitch_0
    return v0

    .line 3837
    :sswitch_0
    const-string v3, "eap"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, v0

    goto :goto_0

    :sswitch_1
    const-string v3, "engine"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, v1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4d6805be -> :sswitch_1
        0x18754 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getAllConfiguredNetworks()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 784
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 785
    .local v2, "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v4}, Lcom/android/server/wifi/ConfigurationMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 786
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    new-instance v3, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v3, v0}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    .line 787
    .local v3, "newConfig":Landroid/net/wifi/WifiConfiguration;
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 789
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v3    # "newConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_0
    return-object v2
.end method

.method private static getChecksum(Ljava/lang/String;)Ljava/lang/Long;
    .locals 4
    .param p0, "source"    # Ljava/lang/String;

    .prologue
    .line 1441
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 1442
    .local v0, "csum":Ljava/util/zip/Checksum;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    invoke-interface {v0, v1, v2, v3}, Ljava/util/zip/Checksum;->update([BII)V

    .line 1443
    invoke-interface {v0}, Ljava/util/zip/Checksum;->getValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method private getConfiguredNetworks(Ljava/util/Map;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 756
    .local p1, "pskMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 757
    .local v2, "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v4}, Lcom/android/server/wifi/ConfigurationMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 758
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    new-instance v3, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v3, v0}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    .line 761
    .local v3, "newConfig":Landroid/net/wifi/WifiConfiguration;
    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    const/16 v5, 0xc8

    if-eq v4, v5, :cond_0

    iget-boolean v4, v0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-nez v4, :cond_0

    .line 769
    if-eqz p1, :cond_1

    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    if-eqz v4, :cond_1

    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-interface {p1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 772
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v3, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 774
    :cond_1
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 776
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v3    # "newConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_2
    return-object v2
.end method

.method private getCredentialsBySsidMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 833
    const-string v0, "psk"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConfigStore;->readNetworkVariablesFromSupplicantFile(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private getHomeSPForConfig(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    .locals 3
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 3253
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/ConfigurationMap;->get(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 3254
    .local v0, "storedConfig":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mMOManager:Lcom/android/server/wifi/hotspot2/omadm/MOManager;

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->getHomeSP(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static hasHardwareBackedKey(Ljava/security/cert/Certificate;)Z
    .locals 1
    .param p0, "certificate"    # Ljava/security/cert/Certificate;

    .prologue
    .line 4192
    invoke-virtual {p0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/security/KeyChain;->isBoundKeyAlgorithm(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static isHardwareBackedKey(Ljava/security/PrivateKey;)Z
    .locals 1
    .param p0, "key"    # Ljava/security/PrivateKey;

    .prologue
    .line 4188
    invoke-interface {p0}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/security/KeyChain;->isBoundKeyAlgorithm(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private localLog(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 4150
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mLocalLog:Landroid/util/LocalLog;

    if-eqz v0, :cond_0

    .line 4151
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 4153
    :cond_0
    return-void
.end method

.method private localLog(Ljava/lang/String;I)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "netId"    # I

    .prologue
    .line 4161
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mLocalLog:Landroid/util/LocalLog;

    if-nez v1, :cond_0

    .line 4177
    :goto_0
    return-void

    .line 4166
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    monitor-enter v2

    .line 4167
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v1, p2}, Lcom/android/server/wifi/ConfigurationMap;->get(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 4168
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4170
    if-eqz v0, :cond_1

    .line 4171
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mLocalLog:Landroid/util/LocalLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getPrintableSsid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 4168
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 4175
    .restart local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mLocalLog:Landroid/util/LocalLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private localLog(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "force"    # Z

    .prologue
    .line 4156
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;)V

    .line 4157
    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 4158
    :cond_0
    return-void
.end method

.method private logContents(Ljava/lang/String;)V
    .locals 7
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 1932
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--- Begin "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ---"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v6}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;Z)V

    .line 1933
    const/4 v2, 0x0

    .line 1935
    .local v2, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1936
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .local v3, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, "line":Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_0

    .line 1937
    const/4 v4, 0x1

    invoke-direct {p0, v1, v4}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;Z)V

    .line 1936
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    goto :goto_0

    .line 1945
    :cond_0
    if-eqz v3, :cond_1

    .line 1946
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    move-object v2, v3

    .line 1952
    .end local v1    # "line":Ljava/lang/String;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    :cond_2
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--- End "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Contents ---"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v6}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;Z)V

    .line 1953
    return-void

    .line 1948
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "line":Ljava/lang/String;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v4

    move-object v2, v3

    .line 1951
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    goto :goto_1

    .line 1939
    .end local v1    # "line":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 1940
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not open "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1945
    if-eqz v2, :cond_2

    .line 1946
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 1948
    :catch_2
    move-exception v4

    goto :goto_1

    .line 1941
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v0

    .line 1942
    .local v0, "e":Ljava/io/IOException;
    :goto_3
    :try_start_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not read "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1945
    if-eqz v2, :cond_2

    .line 1946
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_1

    .line 1948
    :catch_4
    move-exception v4

    goto :goto_1

    .line 1944
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 1945
    :goto_4
    if-eqz v2, :cond_3

    .line 1946
    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 1950
    :cond_3
    :goto_5
    throw v4

    .line 1948
    :catch_5
    move-exception v5

    goto :goto_5

    .line 1944
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    goto :goto_4

    .line 1941
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catch_6
    move-exception v0

    move-object v2, v3

    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 1939
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catch_7
    move-exception v0

    move-object v2, v3

    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method private logKernelTime()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x3e8

    .line 4138
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    const-wide/32 v6, 0xf4240

    div-long v2, v4, v6

    .line 4139
    .local v2, "kernelTimeMs":J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4140
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "kernel time = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    div-long v4, v2, v8

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    rem-long v4, v2, v8

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4142
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;)V

    .line 4143
    return-void
.end method

.method private lookupString(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "strings"    # [Ljava/lang/String;

    .prologue
    .line 4035
    array-length v1, p2

    .line 4037
    .local v1, "size":I
    const/16 v2, 0x2d

    const/16 v3, 0x5f

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 4039
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 4040
    aget-object v2, p2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4048
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 4039
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4046
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to look-up a string: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 4048
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private static makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "set"    # Ljava/util/BitSet;
    .param p1, "strings"    # [Ljava/lang/String;

    .prologue
    .line 4015
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 4016
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/4 v1, -0x1

    .line 4020
    .local v1, "nextSetBit":I
    const/4 v2, 0x0

    array-length v3, p1

    invoke-virtual {p0, v2, v3}, Ljava/util/BitSet;->get(II)Ljava/util/BitSet;

    move-result-object p0

    .line 4022
    :goto_0
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 4023
    aget-object v2, p1, v1

    const/16 v3, 0x5f

    const/16 v4, 0x2d

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 4027
    :cond_0
    invoke-virtual {p0}, Ljava/util/BitSet;->cardinality()I

    move-result v2

    if-lez v2, :cond_1

    .line 4028
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 4031
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private markAllNetworksDisabled()V
    .locals 1

    .prologue
    .line 2033
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConfigStore;->markAllNetworksDisabledExcept(I)V

    .line 2034
    return-void
.end method

.method private markAllNetworksDisabledExcept(I)V
    .locals 4
    .param p1, "netId"    # I

    .prologue
    const/4 v3, 0x1

    .line 2022
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v2}, Lcom/android/server/wifi/ConfigurationMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 2023
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-eq v2, p1, :cond_0

    .line 2024
    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    if-eq v2, v3, :cond_0

    .line 2025
    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 2026
    const/4 v2, 0x0

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    goto :goto_0

    .line 2030
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    return-void
.end method

.method private matchNetwork(Lcom/android/server/wifi/ScanDetail;Z)Ljava/util/Map;
    .locals 12
    .param p1, "scanDetail"    # Lcom/android/server/wifi/ScanDetail;
    .param p2, "query"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wifi/ScanDetail;",
            "Z)",
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/wifi/hotspot2/pps/HomeSP;",
            "Lcom/android/server/wifi/hotspot2/PasspointMatch;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3485
    invoke-virtual {p1}, Lcom/android/server/wifi/ScanDetail;->getNetworkDetail()Lcom/android/server/wifi/hotspot2/NetworkDetail;

    move-result-object v7

    .line 3487
    .local v7, "networkDetail":Lcom/android/server/wifi/hotspot2/NetworkDetail;
    iget-object v9, p0, Lcom/android/server/wifi/WifiConfigStore;->mAnqpCache:Lcom/android/server/wifi/hotspot2/AnqpCache;

    invoke-virtual {v9, v7}, Lcom/android/server/wifi/hotspot2/AnqpCache;->getEntry(Lcom/android/server/wifi/hotspot2/NetworkDetail;)Lcom/android/server/wifi/hotspot2/ANQPData;

    move-result-object v0

    .line 3489
    .local v0, "anqpData":Lcom/android/server/wifi/hotspot2/ANQPData;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/ANQPData;->getANQPElements()Ljava/util/Map;

    move-result-object v1

    .line 3492
    .local v1, "anqpElements":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Lcom/android/server/wifi/anqp/ANQPElement;>;"
    :goto_0
    if-nez p2, :cond_3

    const/4 v8, 0x1

    .line 3493
    .local v8, "queried":Z
    :goto_1
    iget-object v9, p0, Lcom/android/server/wifi/WifiConfigStore;->mMOManager:Lcom/android/server/wifi/hotspot2/omadm/MOManager;

    invoke-virtual {v9}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->getLoadedSPs()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    .line 3494
    .local v3, "homeSPs":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/wifi/hotspot2/pps/HomeSP;>;"
    new-instance v6, Ljava/util/HashMap;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v9

    invoke-direct {v6, v9}, Ljava/util/HashMap;-><init>(I)V

    .line 3495
    .local v6, "matches":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/hotspot2/pps/HomeSP;Lcom/android/server/wifi/hotspot2/PasspointMatch;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v10

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "match nwk "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/android/server/wifi/ScanDetail;->toKeyString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ", anqp "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-eqz v0, :cond_4

    const-string v9, "present"

    :goto_2
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ", query "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ", home sps: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3499
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    .line 3500
    .local v2, "homeSP":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    iget-object v9, p0, Lcom/android/server/wifi/WifiConfigStore;->mSIMAccessor:Lcom/android/server/wifi/SIMAccessor;

    invoke-virtual {v2, v7, v1, v9}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->match(Lcom/android/server/wifi/hotspot2/NetworkDetail;Ljava/util/Map;Lcom/android/server/wifi/SIMAccessor;)Lcom/android/server/wifi/hotspot2/PasspointMatch;

    move-result-object v5

    .line 3502
    .local v5, "match":Lcom/android/server/wifi/hotspot2/PasspointMatch;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " -- "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getFQDN()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": match "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", queried "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3505
    sget-object v9, Lcom/android/server/wifi/hotspot2/PasspointMatch;->Incomplete:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    if-ne v5, v9, :cond_1

    if-nez v8, :cond_1

    .line 3506
    iget-object v9, p0, Lcom/android/server/wifi/WifiConfigStore;->mAnqpCache:Lcom/android/server/wifi/hotspot2/AnqpCache;

    invoke-virtual {v9, v7}, Lcom/android/server/wifi/hotspot2/AnqpCache;->initiate(Lcom/android/server/wifi/hotspot2/NetworkDetail;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 3507
    iget-object v9, p0, Lcom/android/server/wifi/WifiConfigStore;->mSupplicantBridge:Lcom/android/server/wifi/hotspot2/SupplicantBridge;

    invoke-virtual {v9, p1}, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->startANQP(Lcom/android/server/wifi/ScanDetail;)V

    .line 3509
    :cond_0
    const/4 v8, 0x1

    .line 3511
    :cond_1
    invoke-interface {v6, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 3489
    .end local v1    # "anqpElements":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Lcom/android/server/wifi/anqp/ANQPElement;>;"
    .end local v2    # "homeSP":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    .end local v3    # "homeSPs":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/wifi/hotspot2/pps/HomeSP;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "match":Lcom/android/server/wifi/hotspot2/PasspointMatch;
    .end local v6    # "matches":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/hotspot2/pps/HomeSP;Lcom/android/server/wifi/hotspot2/PasspointMatch;>;"
    .end local v8    # "queried":Z
    :cond_2
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 3492
    .restart local v1    # "anqpElements":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Lcom/android/server/wifi/anqp/ANQPElement;>;"
    :cond_3
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 3495
    .restart local v3    # "homeSPs":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/wifi/hotspot2/pps/HomeSP;>;"
    .restart local v6    # "matches":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/hotspot2/pps/HomeSP;Lcom/android/server/wifi/hotspot2/PasspointMatch;>;"
    .restart local v8    # "queried":Z
    :cond_4
    const-string v9, "missing"

    goto/16 :goto_2

    .line 3513
    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_5
    return-object v6
.end method

.method private matchPasspointNetworks(Lcom/android/server/wifi/ScanDetail;)Ljava/util/Map;
    .locals 5
    .param p1, "scanDetail"    # Lcom/android/server/wifi/ScanDetail;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wifi/ScanDetail;",
            ")",
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/wifi/hotspot2/pps/HomeSP;",
            "Lcom/android/server/wifi/hotspot2/PasspointMatch;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 3469
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mMOManager:Lcom/android/server/wifi/hotspot2/omadm/MOManager;

    invoke-virtual {v2}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->isConfigured()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3481
    :cond_0
    :goto_0
    return-object v0

    .line 3472
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wifi/ScanDetail;->getNetworkDetail()Lcom/android/server/wifi/hotspot2/NetworkDetail;

    move-result-object v1

    .line 3473
    .local v1, "networkDetail":Lcom/android/server/wifi/hotspot2/NetworkDetail;
    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->hasInterworking()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3476
    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getANQPElements()Ljava/util/Map;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/android/server/wifi/WifiConfigStore;->updateAnqpCache(Lcom/android/server/wifi/ScanDetail;Ljava/util/Map;)V

    .line 3478
    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Lcom/android/server/wifi/WifiConfigStore;->matchNetwork(Lcom/android/server/wifi/ScanDetail;Z)Ljava/util/Map;

    move-result-object v0

    .line 3479
    .local v0, "matches":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/hotspot2/pps/HomeSP;Lcom/android/server/wifi/hotspot2/PasspointMatch;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/server/wifi/ScanDetail;->getSSID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " pass 1 matches: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/android/server/wifi/WifiConfigStore;->toMatchString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static needsKeyStore(Landroid/net/wifi/WifiEnterpriseConfig;)Z
    .locals 1
    .param p0, "config"    # Landroid/net/wifi/WifiEnterpriseConfig;

    .prologue
    .line 4182
    invoke-virtual {p0}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4183
    const/4 v0, 0x0

    .line 4184
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static needsSoftwareBackedKeyStore(Landroid/net/wifi/WifiEnterpriseConfig;)Z
    .locals 2
    .param p0, "config"    # Landroid/net/wifi/WifiEnterpriseConfig;

    .prologue
    .line 4196
    invoke-virtual {p0}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateAlias()Ljava/lang/String;

    move-result-object v0

    .line 4197
    .local v0, "client":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4206
    const/4 v1, 0x1

    .line 4249
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private putCertInKeyStore(Ljava/lang/String;Ljava/security/cert/Certificate;)Z
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "cert"    # Ljava/security/cert/Certificate;

    .prologue
    const/4 v3, 0x0

    .line 4654
    const/4 v4, 0x1

    :try_start_0
    new-array v4, v4, [Ljava/security/cert/Certificate;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    invoke-static {v4}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object v0

    .line 4655
    .local v0, "certData":[B
    const-string v4, "WifiConfigStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "putting certificate "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in keystore"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4656
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    const/16 v5, 0x3f2

    const/4 v6, 0x0

    invoke-virtual {v4, p1, v0, v5, v6}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    .line 4661
    .end local v0    # "certData":[B
    :goto_0
    return v3

    .line 4658
    :catch_0
    move-exception v1

    .line 4659
    .local v1, "e1":Ljava/io/IOException;
    goto :goto_0

    .line 4660
    .end local v1    # "e1":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 4661
    .local v2, "e2":Ljava/security/cert/CertificateException;
    goto :goto_0
.end method

.method private readAutoJoinConfig()V
    .locals 15

    .prologue
    const/4 v11, 0x0

    .line 2593
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/FileReader;

    sget-object v10, Lcom/android/server/wifi/WifiConfigStore;->autoJoinConfigFile:Ljava/lang/String;

    invoke-direct {v9, v10}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .local v4, "reader":Ljava/io/BufferedReader;
    const/4 v10, 0x0

    .line 2594
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, "key":Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_6

    .line 2595
    const-string v9, "WifiConfigStore"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "readAutoJoinConfig line: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2597
    const/16 v9, 0x3a

    invoke-virtual {v1, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 2598
    .local v6, "split":I
    if-gez v6, :cond_1

    .line 2594
    :cond_0
    :goto_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 2602
    :cond_1
    const/4 v9, 0x0

    invoke-virtual {v1, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 2603
    .local v2, "name":Ljava/lang/String;
    sget-object v9, Lcom/android/server/wifi/WifiConfigStore;->sKeyMap:Ljava/util/Map;

    invoke-interface {v9, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v5

    .line 2604
    .local v5, "reference":Ljava/lang/Object;
    if-eqz v5, :cond_0

    .line 2609
    add-int/lit8 v9, v6, 0x1

    :try_start_2
    invoke-virtual {v1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 2610
    .local v7, "value":I
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const-class v12, Ljava/util/concurrent/atomic/AtomicBoolean;

    if-ne v9, v12, :cond_5

    .line 2611
    check-cast v5, Ljava/util/concurrent/atomic/AtomicBoolean;

    .end local v5    # "reference":Ljava/lang/Object;
    if-eqz v7, :cond_4

    const/4 v9, 0x1

    :goto_2
    invoke-virtual {v5, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2616
    :goto_3
    const-string v9, "WifiConfigStore"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "readAutoJoinConfig: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 2618
    .end local v7    # "value":I
    :catch_0
    move-exception v3

    .line 2619
    .local v3, "nfe":Ljava/lang/NumberFormatException;
    :try_start_3
    const-string v9, "WifiConfigStore"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "readAutoJoinConfig: incorrect format :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 2593
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "nfe":Ljava/lang/NumberFormatException;
    .end local v6    # "split":I
    :catch_1
    move-exception v9

    :try_start_4
    throw v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2622
    :catchall_0
    move-exception v10

    move-object v14, v10

    move-object v10, v9

    move-object v9, v14

    :goto_4
    if-eqz v4, :cond_2

    if-eqz v10, :cond_8

    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_2
    :goto_5
    :try_start_6
    throw v9
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .end local v4    # "reader":Ljava/io/BufferedReader;
    :catch_2
    move-exception v0

    .line 2623
    .local v0, "e":Ljava/io/IOException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readAutoJoinStatus: Error parsing configuration"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 2625
    .end local v0    # "e":Ljava/io/IOException;
    :cond_3
    :goto_6
    return-void

    .restart local v1    # "key":Ljava/lang/String;
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "split":I
    .restart local v7    # "value":I
    :cond_4
    move v9, v11

    .line 2611
    goto :goto_2

    .line 2614
    .restart local v5    # "reference":Ljava/lang/Object;
    :cond_5
    :try_start_7
    check-cast v5, Ljava/util/concurrent/atomic/AtomicInteger;

    .end local v5    # "reference":Ljava/lang/Object;
    invoke-virtual {v5, v7}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_3

    .line 2622
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "name":Ljava/lang/String;
    .end local v6    # "split":I
    .end local v7    # "value":I
    :catchall_1
    move-exception v9

    goto :goto_4

    .restart local v1    # "key":Ljava/lang/String;
    :cond_6
    if-eqz v4, :cond_3

    if-eqz v10, :cond_7

    :try_start_8
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_6

    :catch_3
    move-exception v8

    .local v8, "x2":Ljava/lang/Throwable;
    :try_start_9
    invoke-virtual {v10, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    .end local v8    # "x2":Ljava/lang/Throwable;
    :cond_7
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    goto :goto_6

    .end local v1    # "key":Ljava/lang/String;
    :catch_4
    move-exception v8

    .restart local v8    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v10, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    .end local v8    # "x2":Ljava/lang/Throwable;
    :cond_8
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_5
.end method

.method private readIpAndProxyConfigurations()V
    .locals 6

    .prologue
    .line 2640
    sget-object v4, Lcom/android/server/wifi/WifiConfigStore;->ipConfigFile:Ljava/lang/String;

    invoke-super {p0, v4}, Lcom/android/server/net/IpConfigStore;->readIpAndProxyConfigurations(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v3

    .line 2642
    .local v3, "networks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/net/IpConfiguration;>;"
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 2660
    :cond_0
    return-void

    .line 2647
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 2648
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 2649
    .local v2, "id":I
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v4, v2}, Lcom/android/server/wifi/ConfigurationMap;->getByConfigKeyID(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 2652
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_2

    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    const/16 v5, 0xc8

    if-eq v4, v5, :cond_2

    iget-boolean v4, v0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-eqz v4, :cond_3

    .line 2654
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "configuration found for missing network, nid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ignored, networks.size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 2647
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2657
    :cond_3
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/IpConfiguration;

    invoke-virtual {v0, v4}, Landroid/net/wifi/WifiConfiguration;->setIpConfiguration(Landroid/net/IpConfiguration;)V

    goto :goto_1
.end method

.method private readNetworkBitsetVariable(ILjava/util/BitSet;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8
    .param p1, "netId"    # I
    .param p2, "variable"    # Ljava/util/BitSet;
    .param p3, "varName"    # Ljava/lang/String;
    .param p4, "strings"    # [Ljava/lang/String;

    .prologue
    .line 4762
    iget-object v7, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v7, p1, p3}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 4763
    .local v6, "value":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 4764
    invoke-virtual {p2}, Ljava/util/BitSet;->clear()V

    .line 4765
    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 4766
    .local v5, "vals":[Ljava/lang/String;
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v0, v1

    .line 4767
    .local v4, "val":Ljava/lang/String;
    invoke-direct {p0, v4, p4}, Lcom/android/server/wifi/WifiConfigStore;->lookupString(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 4768
    .local v2, "index":I
    if-ltz v2, :cond_0

    .line 4769
    invoke-virtual {p2, v2}, Ljava/util/BitSet;->set(I)V

    .line 4766
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4773
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "index":I
    .end local v3    # "len$":I
    .end local v4    # "val":Ljava/lang/String;
    .end local v5    # "vals":[Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private readNetworkHistory()V
    .locals 31

    .prologue
    .line 2335
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/server/wifi/WifiConfigStore;->showNetworks:Z

    if-eqz v8, :cond_0

    .line 2336
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "readNetworkHistory() path:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/server/wifi/WifiConfigStore;->networkHistoryConfigFile:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;)V

    .line 2339
    :cond_0
    :try_start_0
    new-instance v17, Ljava/io/DataInputStream;

    new-instance v8, Ljava/io/BufferedInputStream;

    new-instance v9, Ljava/io/FileInputStream;

    sget-object v26, Lcom/android/server/wifi/WifiConfigStore;->networkHistoryConfigFile:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-direct {v9, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v17

    invoke-direct {v0, v8}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    .local v17, "in":Ljava/io/DataInputStream;
    const/16 v26, 0x0

    .line 2343
    const/4 v4, 0x0

    .line 2344
    .local v4, "bssid":Ljava/lang/String;
    const/16 v22, 0x0

    .line 2345
    .local v22, "ssid":Ljava/lang/String;
    const/16 v18, 0x0

    .line 2346
    .local v18, "key":Ljava/lang/String;
    const/16 v24, 0x0

    .line 2348
    .local v24, "value":Ljava/lang/String;
    const/4 v7, 0x0

    .line 2349
    .local v7, "freq":I
    const/16 v23, 0x0

    .line 2350
    .local v23, "status":I
    const-wide/16 v10, 0x0

    .line 2351
    .local v10, "seen":J
    :try_start_1
    sget v6, Landroid/net/wifi/WifiConfiguration;->INVALID_RSSI:I

    .line 2352
    .local v6, "rssi":I
    const/4 v5, 0x0

    .line 2354
    .local v5, "caps":Ljava/lang/String;
    const/4 v14, 0x0

    .line 2356
    .local v14, "config":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    :goto_0
    :pswitch_0
    invoke-virtual/range {v17 .. v17}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v19

    .line 2357
    .local v19, "line":Ljava/lang/String;
    if-nez v19, :cond_3

    .line 2583
    if-eqz v17, :cond_2

    if-eqz v26, :cond_10

    :try_start_2
    invoke-virtual/range {v17 .. v17}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 2590
    .end local v4    # "bssid":Ljava/lang/String;
    .end local v5    # "caps":Ljava/lang/String;
    .end local v6    # "rssi":I
    .end local v7    # "freq":I
    .end local v10    # "seen":J
    .end local v14    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v17    # "in":Ljava/io/DataInputStream;
    .end local v18    # "key":Ljava/lang/String;
    .end local v19    # "line":Ljava/lang/String;
    .end local v22    # "ssid":Ljava/lang/String;
    .end local v23    # "status":I
    .end local v24    # "value":Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 2360
    .restart local v4    # "bssid":Ljava/lang/String;
    .restart local v5    # "caps":Ljava/lang/String;
    .restart local v6    # "rssi":I
    .restart local v7    # "freq":I
    .restart local v10    # "seen":J
    .restart local v14    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v17    # "in":Ljava/io/DataInputStream;
    .restart local v18    # "key":Ljava/lang/String;
    .restart local v19    # "line":Ljava/lang/String;
    .restart local v22    # "ssid":Ljava/lang/String;
    .restart local v23    # "status":I
    .restart local v24    # "value":Ljava/lang/String;
    :cond_3
    const/16 v8, 0x3a

    :try_start_3
    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    .line 2361
    .local v13, "colon":I
    const/4 v8, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v21

    .line 2362
    .local v21, "slash":C
    if-gez v13, :cond_4

    const/16 v8, 0x2f

    move/from16 v0, v21

    if-ne v0, v8, :cond_1

    .line 2366
    :cond_4
    const/16 v8, 0x2f

    move/from16 v0, v21

    if-ne v0, v8, :cond_6

    .line 2367
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    .line 2373
    :goto_2
    const-string v8, "CONFIG"

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 2375
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Lcom/android/server/wifi/ConfigurationMap;->getByConfigKey(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v14

    .line 2379
    if-nez v14, :cond_7

    .line 2380
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "readNetworkHistory didnt find netid for hash="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->hashCode()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " key: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;)V

    .line 2383
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wifi/WifiConfigStore;->mLostConfigsDbg:Ljava/util/HashSet;

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 2339
    .end local v5    # "caps":Ljava/lang/String;
    .end local v6    # "rssi":I
    .end local v13    # "colon":I
    .end local v14    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v19    # "line":Ljava/lang/String;
    .end local v21    # "slash":C
    :catch_0
    move-exception v8

    :try_start_4
    throw v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2583
    :catchall_0
    move-exception v9

    move-object/from16 v30, v9

    move-object v9, v8

    move-object/from16 v8, v30

    :goto_3
    if-eqz v17, :cond_5

    if-eqz v9, :cond_11

    :try_start_5
    invoke-virtual/range {v17 .. v17}, Ljava/io/DataInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/EOFException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    :cond_5
    :goto_4
    :try_start_6
    throw v8
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/EOFException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .end local v4    # "bssid":Ljava/lang/String;
    .end local v7    # "freq":I
    .end local v10    # "seen":J
    .end local v17    # "in":Ljava/io/DataInputStream;
    .end local v18    # "key":Ljava/lang/String;
    .end local v22    # "ssid":Ljava/lang/String;
    .end local v23    # "status":I
    .end local v24    # "value":Ljava/lang/String;
    :catch_1
    move-exception v16

    .line 2584
    .local v16, "e":Ljava/lang/NumberFormatException;
    const-string v8, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "readNetworkHistory: failed to read, revert to default, "

    move-object/from16 v0, v26

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, v16

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 2369
    .end local v16    # "e":Ljava/lang/NumberFormatException;
    .restart local v4    # "bssid":Ljava/lang/String;
    .restart local v5    # "caps":Ljava/lang/String;
    .restart local v6    # "rssi":I
    .restart local v7    # "freq":I
    .restart local v10    # "seen":J
    .restart local v13    # "colon":I
    .restart local v14    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v17    # "in":Ljava/io/DataInputStream;
    .restart local v18    # "key":Ljava/lang/String;
    .restart local v19    # "line":Ljava/lang/String;
    .restart local v21    # "slash":C
    .restart local v22    # "ssid":Ljava/lang/String;
    .restart local v23    # "status":I
    .restart local v24    # "value":Ljava/lang/String;
    :cond_6
    const/4 v8, 0x0

    :try_start_7
    move-object/from16 v0, v19

    invoke-virtual {v0, v8, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    .line 2370
    add-int/lit8 v8, v13, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v24

    goto/16 :goto_2

    .line 2387
    :cond_7
    iget-object v8, v14, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    if-eqz v8, :cond_8

    iget-object v8, v14, Landroid/net/wifi/WifiConfiguration;->lastUpdateName:Ljava/lang/String;

    if-nez v8, :cond_1

    .line 2388
    :cond_8
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/16 v9, 0x3e8

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v14, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    .line 2390
    iget-object v8, v14, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    iput-object v8, v14, Landroid/net/wifi/WifiConfiguration;->lastUpdateName:Ljava/lang/String;

    .line 2392
    const-string v8, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Upgrading network "

    move-object/from16 v0, v27

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v0, v14, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v27, v0

    move/from16 v0, v27

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v27, " to "

    move-object/from16 v0, v27

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v0, v14, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2583
    .end local v5    # "caps":Ljava/lang/String;
    .end local v6    # "rssi":I
    .end local v13    # "colon":I
    .end local v14    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v19    # "line":Ljava/lang/String;
    .end local v21    # "slash":C
    :catchall_1
    move-exception v8

    move-object/from16 v9, v26

    goto/16 :goto_3

    .line 2396
    .restart local v5    # "caps":Ljava/lang/String;
    .restart local v6    # "rssi":I
    .restart local v13    # "colon":I
    .restart local v14    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v19    # "line":Ljava/lang/String;
    .restart local v21    # "slash":C
    :cond_9
    if-eqz v14, :cond_1

    .line 2397
    const/4 v8, -0x1

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    :cond_a
    :goto_5
    packed-switch v8, :pswitch_data_0

    goto/16 :goto_0

    .line 2399
    :pswitch_1
    invoke-virtual {v14}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v8

    if-nez v8, :cond_1

    .line 2402
    move-object/from16 v22, v24

    .line 2403
    iget-object v8, v14, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v8, :cond_b

    iget-object v8, v14, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    .line 2404
    const-string v8, "Error parsing network history file, mismatched SSIDs"

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 2405
    const/4 v14, 0x0

    .line 2406
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 2397
    :sswitch_0
    const-string v9, "SSID"

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/4 v8, 0x0

    goto :goto_5

    :sswitch_1
    const-string v9, "FQDN"

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/4 v8, 0x1

    goto :goto_5

    :sswitch_2
    const-string v9, "DEFAULT_GW"

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/4 v8, 0x2

    goto :goto_5

    :sswitch_3
    const-string v9, "AUTO_JOIN_STATUS"

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/4 v8, 0x3

    goto :goto_5

    :sswitch_4
    const-string v9, "SUP_DIS_REASON"

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/4 v8, 0x4

    goto :goto_5

    :sswitch_5
    const-string v9, "SELF_ADDED"

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/4 v8, 0x5

    goto :goto_5

    :sswitch_6
    const-string v9, "DID_SELF_ADD"

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/4 v8, 0x6

    goto :goto_5

    :sswitch_7
    const-string v9, "NO_INTERNET_ACCESS_REPORTS"

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/4 v8, 0x7

    goto/16 :goto_5

    :sswitch_8
    const-string v9, "VALIDATED_INTERNET_ACCESS"

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v8, 0x8

    goto/16 :goto_5

    :sswitch_9
    const-string v9, "CREATION_TIME"

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v8, 0x9

    goto/16 :goto_5

    :sswitch_a
    const-string v9, "UPDATE_TIME"

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v8, 0xa

    goto/16 :goto_5

    :sswitch_b
    const-string v9, "EPHEMERAL"

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v8, 0xb

    goto/16 :goto_5

    :sswitch_c
    const-string v9, "CREATOR_UID_KEY"

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v8, 0xc

    goto/16 :goto_5

    :sswitch_d
    const-string v9, "BLACKLIST_MILLI"

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v8, 0xd

    goto/16 :goto_5

    :sswitch_e
    const-string v9, "CONNECT_FAILURES"

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v8, 0xe

    goto/16 :goto_5

    :sswitch_f
    const-string v9, "IP_CONFIG_FAILURES"

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v8, 0xf

    goto/16 :goto_5

    :sswitch_10
    const-string v9, "AUTH_FAILURES"

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v8, 0x10

    goto/16 :goto_5

    :sswitch_11
    const-string v9, "SCORER_OVERRIDE"

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v8, 0x11

    goto/16 :goto_5

    :sswitch_12
    const-string v9, "SCORER_OVERRIDE_AND_SWITCH"

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v8, 0x12

    goto/16 :goto_5

    :sswitch_13
    const-string v9, "NUM_ASSOCIATION"

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v8, 0x13

    goto/16 :goto_5

    :sswitch_14
    const-string v9, "JOIN_ATTEMPT_BOOST"

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v8, 0x14

    goto/16 :goto_5

    :sswitch_15
    const-string v9, "CONNECT_UID_KEY"

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v8, 0x15

    goto/16 :goto_5

    :sswitch_16
    const-string v9, "UPDATE_UID"

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v8, 0x16

    goto/16 :goto_5

    :sswitch_17
    const-string v9, "FAILURE"

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v8, 0x17

    goto/16 :goto_5

    :sswitch_18
    const-string v9, "PEER_CONFIGURATION"

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v8, 0x18

    goto/16 :goto_5

    :sswitch_19
    const-string v9, "CHOICE"

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v8, 0x19

    goto/16 :goto_5

    :sswitch_1a
    const-string v9, "LINK"

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v8, 0x1a

    goto/16 :goto_5

    :sswitch_1b
    const-string v9, "BSSID"

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v8, 0x1b

    goto/16 :goto_5

    :sswitch_1c
    const-string v9, "RSSI"

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v8, 0x1c

    goto/16 :goto_5

    :sswitch_1d
    const-string v9, "BSSID_STATUS"

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v8, 0x1d

    goto/16 :goto_5

    :sswitch_1e
    const-string v9, "FREQ"

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v8, 0x1e

    goto/16 :goto_5

    :sswitch_1f
    const-string v9, "DATE"

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v8, 0x1f

    goto/16 :goto_5

    :sswitch_20
    const-string v9, "/BSSID"

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v8, 0x20

    goto/16 :goto_5

    :sswitch_21
    const-string v9, "DELETED_CRC32"

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v8, 0x21

    goto/16 :goto_5

    :sswitch_22
    const-string v9, "DELETED_EPHEMERAL"

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v8, 0x22

    goto/16 :goto_5

    :sswitch_23
    const-string v9, "CREATOR_NAME"

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v8, 0x23

    goto/16 :goto_5

    :sswitch_24
    const-string v9, "UPDATE_NAME"

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v8, 0x24

    goto/16 :goto_5

    :sswitch_25
    const-string v9, "USER_APPROVED"

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v8, 0x25

    goto/16 :goto_5

    .line 2408
    :cond_b
    move-object/from16 v0, v22

    iput-object v0, v14, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto/16 :goto_0

    .line 2413
    :pswitch_2
    const-string v8, "null"

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    const/4 v8, 0x0

    :goto_6
    iput-object v8, v14, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    goto/16 :goto_0

    :cond_c
    move-object/from16 v8, v24

    goto :goto_6

    .line 2416
    :pswitch_3
    move-object/from16 v0, v24

    iput-object v0, v14, Landroid/net/wifi/WifiConfiguration;->defaultGwMacAddress:Ljava/lang/String;

    goto/16 :goto_0

    .line 2419
    :pswitch_4
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v14, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    goto/16 :goto_0

    .line 2422
    :pswitch_5
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v14, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    goto/16 :goto_0

    .line 2425
    :pswitch_6
    invoke-static/range {v24 .. v24}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, v14, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    goto/16 :goto_0

    .line 2428
    :pswitch_7
    invoke-static/range {v24 .. v24}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, v14, Landroid/net/wifi/WifiConfiguration;->didSelfAdd:Z

    goto/16 :goto_0

    .line 2431
    :pswitch_8
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v14, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    goto/16 :goto_0

    .line 2434
    :pswitch_9
    invoke-static/range {v24 .. v24}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, v14, Landroid/net/wifi/WifiConfiguration;->validatedInternetAccess:Z

    goto/16 :goto_0

    .line 2437
    :pswitch_a
    move-object/from16 v0, v24

    iput-object v0, v14, Landroid/net/wifi/WifiConfiguration;->creationTime:Ljava/lang/String;

    goto/16 :goto_0

    .line 2440
    :pswitch_b
    move-object/from16 v0, v24

    iput-object v0, v14, Landroid/net/wifi/WifiConfiguration;->updateTime:Ljava/lang/String;

    goto/16 :goto_0

    .line 2443
    :pswitch_c
    invoke-static/range {v24 .. v24}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, v14, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    goto/16 :goto_0

    .line 2446
    :pswitch_d
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v14, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    goto/16 :goto_0

    .line 2449
    :pswitch_e
    invoke-static/range {v24 .. v24}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v14, Landroid/net/wifi/WifiConfiguration;->blackListTimestamp:J

    goto/16 :goto_0

    .line 2452
    :pswitch_f
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v14, Landroid/net/wifi/WifiConfiguration;->numConnectionFailures:I

    goto/16 :goto_0

    .line 2455
    :pswitch_10
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v14, Landroid/net/wifi/WifiConfiguration;->numIpConfigFailures:I

    goto/16 :goto_0

    .line 2458
    :pswitch_11
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v14, Landroid/net/wifi/WifiConfiguration;->numIpConfigFailures:I

    goto/16 :goto_0

    .line 2461
    :pswitch_12
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v14, Landroid/net/wifi/WifiConfiguration;->numScorerOverride:I

    goto/16 :goto_0

    .line 2464
    :pswitch_13
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v14, Landroid/net/wifi/WifiConfiguration;->numScorerOverrideAndSwitchedNetwork:I

    goto/16 :goto_0

    .line 2467
    :pswitch_14
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v14, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    goto/16 :goto_0

    .line 2470
    :pswitch_15
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v14, Landroid/net/wifi/WifiConfiguration;->autoJoinUseAggressiveJoinAttemptThreshold:I

    goto/16 :goto_0

    .line 2474
    :pswitch_16
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v14, Landroid/net/wifi/WifiConfiguration;->lastConnectUid:I

    goto/16 :goto_0

    .line 2477
    :pswitch_17
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v14, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    goto/16 :goto_0

    .line 2480
    :pswitch_18
    move-object/from16 v0, v24

    iput-object v0, v14, Landroid/net/wifi/WifiConfiguration;->lastFailure:Ljava/lang/String;

    goto/16 :goto_0

    .line 2483
    :pswitch_19
    move-object/from16 v0, v24

    iput-object v0, v14, Landroid/net/wifi/WifiConfiguration;->peerWifiConfiguration:Ljava/lang/String;

    goto/16 :goto_0

    .line 2486
    :pswitch_1a
    const-string v15, ""

    .line 2487
    .local v15, "configKey":Ljava/lang/String;
    const/4 v12, 0x0

    .line 2488
    .local v12, "choice":I
    sget-object v8, Lcom/android/server/wifi/WifiConfigStore;->mConnectChoice:Ljava/util/regex/Pattern;

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v20

    .line 2489
    .local v20, "match":Ljava/util/regex/Matcher;
    invoke-virtual/range {v20 .. v20}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-nez v8, :cond_d

    .line 2490
    const-string v8, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "WifiConfigStore: connectChoice:  Couldnt match pattern : "

    move-object/from16 v0, v27

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2493
    :cond_d
    const/4 v8, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result-object v15

    .line 2495
    const/4 v8, 0x2

    :try_start_8
    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result v12

    .line 2499
    :goto_7
    if-lez v12, :cond_1

    .line 2500
    :try_start_9
    iget-object v8, v14, Landroid/net/wifi/WifiConfiguration;->connectChoices:Ljava/util/HashMap;

    if-nez v8, :cond_e

    .line 2501
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, v14, Landroid/net/wifi/WifiConfiguration;->connectChoices:Ljava/util/HashMap;

    .line 2503
    :cond_e
    iget-object v8, v14, Landroid/net/wifi/WifiConfiguration;->connectChoices:Ljava/util/HashMap;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v15, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 2496
    :catch_2
    move-exception v16

    .line 2497
    .restart local v16    # "e":Ljava/lang/NumberFormatException;
    const/4 v12, 0x0

    goto :goto_7

    .line 2508
    .end local v12    # "choice":I
    .end local v15    # "configKey":Ljava/lang/String;
    .end local v16    # "e":Ljava/lang/NumberFormatException;
    .end local v20    # "match":Ljava/util/regex/Matcher;
    :pswitch_1b
    iget-object v8, v14, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    if-nez v8, :cond_f

    .line 2509
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, v14, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    goto/16 :goto_0

    .line 2512
    :cond_f
    iget-object v8, v14, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    const/4 v9, -0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 v0, v24

    invoke-virtual {v8, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 2516
    :pswitch_1c
    const/16 v23, 0x0

    .line 2525
    move-object/from16 v4, v24

    .line 2526
    const/4 v7, 0x0

    .line 2527
    const-wide/16 v10, 0x0

    .line 2528
    sget v6, Landroid/net/wifi/WifiConfiguration;->INVALID_RSSI:I

    .line 2529
    const-string v5, ""

    .line 2530
    goto/16 :goto_0

    .line 2532
    :pswitch_1d
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 2533
    goto/16 :goto_0

    .line 2535
    :pswitch_1e
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    .line 2536
    goto/16 :goto_0

    .line 2538
    :pswitch_1f
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 2539
    goto/16 :goto_0

    .line 2552
    :pswitch_20
    if-eqz v4, :cond_1

    if-eqz v22, :cond_1

    .line 2554
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 2555
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/WifiSsid;->createFromAsciiEncoded(Ljava/lang/String;)Landroid/net/wifi/WifiSsid;

    move-result-object v3

    .line 2556
    .local v3, "wssid":Landroid/net/wifi/WifiSsid;
    new-instance v2, Lcom/android/server/wifi/ScanDetail;

    const-wide/16 v8, 0x0

    invoke-direct/range {v2 .. v11}, Lcom/android/server/wifi/ScanDetail;-><init>(Landroid/net/wifi/WifiSsid;Ljava/lang/String;Ljava/lang/String;IIJJ)V

    .line 2558
    .local v2, "scanDetail":Lcom/android/server/wifi/ScanDetail;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/android/server/wifi/ScanDetailCache;->put(Lcom/android/server/wifi/ScanDetail;)V

    .line 2559
    invoke-virtual {v2}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v8

    move/from16 v0, v23

    iput v0, v8, Landroid/net/wifi/ScanResult;->autoJoinStatus:I

    goto/16 :goto_0

    .line 2564
    .end local v2    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    .end local v3    # "wssid":Landroid/net/wifi/WifiSsid;
    :pswitch_21
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wifi/WifiConfigStore;->mDeletedSSIDs:Ljava/util/Set;

    invoke-static/range {v24 .. v24}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v28

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2567
    :pswitch_22
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 2568
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wifi/WifiConfigStore;->mDeletedEphemeralSSIDs:Ljava/util/Set;

    move-object/from16 v0, v24

    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2572
    :pswitch_23
    move-object/from16 v0, v24

    iput-object v0, v14, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    goto/16 :goto_0

    .line 2575
    :pswitch_24
    move-object/from16 v0, v24

    iput-object v0, v14, Landroid/net/wifi/WifiConfiguration;->lastUpdateName:Ljava/lang/String;

    goto/16 :goto_0

    .line 2578
    :pswitch_25
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v14, Landroid/net/wifi/WifiConfiguration;->userApproved:I
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/16 :goto_0

    .line 2583
    .end local v13    # "colon":I
    .end local v21    # "slash":C
    :catch_3
    move-exception v25

    .local v25, "x2":Ljava/lang/Throwable;
    :try_start_a
    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 2585
    .end local v4    # "bssid":Ljava/lang/String;
    .end local v5    # "caps":Ljava/lang/String;
    .end local v6    # "rssi":I
    .end local v7    # "freq":I
    .end local v10    # "seen":J
    .end local v14    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v17    # "in":Ljava/io/DataInputStream;
    .end local v18    # "key":Ljava/lang/String;
    .end local v19    # "line":Ljava/lang/String;
    .end local v22    # "ssid":Ljava/lang/String;
    .end local v23    # "status":I
    .end local v24    # "value":Ljava/lang/String;
    .end local v25    # "x2":Ljava/lang/Throwable;
    :catch_4
    move-exception v8

    goto/16 :goto_1

    .line 2583
    .restart local v4    # "bssid":Ljava/lang/String;
    .restart local v5    # "caps":Ljava/lang/String;
    .restart local v6    # "rssi":I
    .restart local v7    # "freq":I
    .restart local v10    # "seen":J
    .restart local v14    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v17    # "in":Ljava/io/DataInputStream;
    .restart local v18    # "key":Ljava/lang/String;
    .restart local v19    # "line":Ljava/lang/String;
    .restart local v22    # "ssid":Ljava/lang/String;
    .restart local v23    # "status":I
    .restart local v24    # "value":Ljava/lang/String;
    :cond_10
    invoke-virtual/range {v17 .. v17}, Ljava/io/DataInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/io/EOFException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    goto/16 :goto_1

    .line 2587
    .end local v4    # "bssid":Ljava/lang/String;
    .end local v5    # "caps":Ljava/lang/String;
    .end local v6    # "rssi":I
    .end local v7    # "freq":I
    .end local v10    # "seen":J
    .end local v14    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v17    # "in":Ljava/io/DataInputStream;
    .end local v18    # "key":Ljava/lang/String;
    .end local v19    # "line":Ljava/lang/String;
    .end local v22    # "ssid":Ljava/lang/String;
    .end local v23    # "status":I
    .end local v24    # "value":Ljava/lang/String;
    :catch_5
    move-exception v16

    .line 2588
    .local v16, "e":Ljava/io/IOException;
    const-string v8, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "readNetworkHistory: No config file, revert to default, "

    move-object/from16 v0, v26

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, v16

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 2583
    .end local v16    # "e":Ljava/io/IOException;
    .restart local v4    # "bssid":Ljava/lang/String;
    .restart local v7    # "freq":I
    .restart local v10    # "seen":J
    .restart local v17    # "in":Ljava/io/DataInputStream;
    .restart local v18    # "key":Ljava/lang/String;
    .restart local v22    # "ssid":Ljava/lang/String;
    .restart local v23    # "status":I
    .restart local v24    # "value":Ljava/lang/String;
    :catch_6
    move-exception v25

    .restart local v25    # "x2":Ljava/lang/Throwable;
    :try_start_b
    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .end local v25    # "x2":Ljava/lang/Throwable;
    :cond_11
    invoke-virtual/range {v17 .. v17}, Ljava/io/DataInputStream;->close()V
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/io/EOFException; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    goto/16 :goto_4

    .line 2397
    nop

    :sswitch_data_0
    .sparse-switch
        -0x77e81a92 -> :sswitch_f
        -0x7719684c -> :sswitch_1d
        -0x740b4755 -> :sswitch_25
        -0x6f46bcc5 -> :sswitch_15
        -0x6f2cb82f -> :sswitch_8
        -0x622b2dfc -> :sswitch_7
        -0x41c84b47 -> :sswitch_18
        -0x38535683 -> :sswitch_b
        -0x2f732002 -> :sswitch_e
        -0x2d6010b3 -> :sswitch_21
        -0x20eb6f12 -> :sswitch_6
        -0x18796e15 -> :sswitch_d
        -0x15f84296 -> :sswitch_17
        0x1fe7ae -> :sswitch_1f
        0x210a95 -> :sswitch_1
        0x210e78 -> :sswitch_1e
        0x23a7fa -> :sswitch_1a
        0x268857 -> :sswitch_1c
        0x26fb7b -> :sswitch_0
        0x3c90abd -> :sswitch_1b
        0x551d90b -> :sswitch_11
        0x94828e0 -> :sswitch_10
        0xb5a17ba -> :sswitch_16
        0x141ecd1c -> :sswitch_14
        0x18e77cb7 -> :sswitch_22
        0x1ddf6a2d -> :sswitch_5
        0x1f1b4de6 -> :sswitch_4
        0x2c26c6de -> :sswitch_23
        0x2eae182d -> :sswitch_9
        0x3cbace17 -> :sswitch_3
        0x455dcbce -> :sswitch_2
        0x53fccfee -> :sswitch_20
        0x580b1670 -> :sswitch_12
        0x5fe59441 -> :sswitch_24
        0x5fe86c83 -> :sswitch_a
        0x72f01508 -> :sswitch_13
        0x7400e87d -> :sswitch_c
        0x767051a1 -> :sswitch_19
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_0
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
    .end packed-switch
.end method

.method private readNetworkVariableFromSupplicantFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 2009
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v4

    .line 2010
    .local v4, "start":J
    invoke-direct {p0, p2}, Lcom/android/server/wifi/WifiConfigStore;->readNetworkVariablesFromSupplicantFile(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 2011
    .local v0, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    .line 2013
    .local v2, "end":J
    sget-boolean v1, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v1, :cond_0

    .line 2014
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readNetworkVariableFromSupplicantFile ssid=["

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "] key="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " duration="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sub-long v6, v2, v4

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 2017
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method private readNetworkVariables(Landroid/net/wifi/WifiConfiguration;)V
    .locals 13
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 3854
    iget v7, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 3855
    .local v7, "netId":I
    if-gez v7, :cond_0

    .line 4003
    :goto_0
    return-void

    .line 3865
    :cond_0
    iget-object v9, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v10, "ssid"

    invoke-virtual {v9, v7, v10}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3866
    .local v8, "value":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 3867
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x22

    if-eq v9, v10, :cond_5

    .line 3868
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v8}, Landroid/net/wifi/WifiSsid;->createFromHex(Ljava/lang/String;)Landroid/net/wifi/WifiSsid;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 3878
    :goto_1
    iget-object v9, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v10, "bssid"

    invoke-virtual {v9, v7, v10}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3879
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 3880
    iput-object v8, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 3885
    :goto_2
    iget-object v9, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v10, "priority"

    invoke-virtual {v9, v7, v10}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3886
    const/4 v9, -0x1

    iput v9, p1, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 3887
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 3889
    :try_start_0
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p1, Landroid/net/wifi/WifiConfiguration;->priority:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_4

    .line 3894
    :cond_1
    :goto_3
    iget-object v9, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v10, "sim_num"

    invoke-virtual {v9, v7, v10}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3895
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 3897
    :try_start_1
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p1, Landroid/net/wifi/WifiConfiguration;->SIMNum:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3903
    :cond_2
    :goto_4
    iget-object v9, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v10, "scan_ssid"

    invoke-virtual {v9, v7, v10}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3904
    const/4 v9, 0x0

    iput-boolean v9, p1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 3905
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 3907
    :try_start_2
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_8

    const/4 v9, 0x1

    :goto_5
    iput-boolean v9, p1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_3

    .line 3912
    :cond_3
    :goto_6
    iget-object v9, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v10, "wep_tx_keyidx"

    invoke-virtual {v9, v7, v10}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3913
    const/4 v9, -0x1

    iput v9, p1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    .line 3914
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 3916
    :try_start_3
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    .line 3921
    :cond_4
    :goto_7
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    const/4 v9, 0x4

    if-ge v2, v9, :cond_a

    .line 3922
    iget-object v9, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    sget-object v10, Landroid/net/wifi/WifiConfiguration;->wepKeyVarNames:[Ljava/lang/String;

    aget-object v10, v10, v2

    invoke-virtual {v9, v7, v10}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3924
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_9

    .line 3925
    iget-object v9, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aput-object v8, v9, v2

    .line 3921
    :goto_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 3872
    .end local v2    # "i":I
    :cond_5
    iput-object v8, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto/16 :goto_1

    .line 3875
    :cond_6
    const/4 v9, 0x0

    iput-object v9, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto/16 :goto_1

    .line 3882
    :cond_7
    const/4 v9, 0x0

    iput-object v9, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    goto/16 :goto_2

    .line 3898
    :catch_0
    move-exception v4

    .line 3899
    .local v4, "ignore":Ljava/lang/NumberFormatException;
    const-string v9, "WifiConfigStore"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "error in parsing Selected Sim number "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p1, Landroid/net/wifi/WifiConfiguration;->SIMNum:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 3907
    .end local v4    # "ignore":Ljava/lang/NumberFormatException;
    :cond_8
    const/4 v9, 0x0

    goto :goto_5

    .line 3927
    .restart local v2    # "i":I
    :cond_9
    iget-object v9, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v10, v9, v2

    goto :goto_9

    .line 3931
    :cond_a
    iget-object v9, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v10, "as_cert_file"

    invoke-virtual {v9, v7, v10}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3932
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_e

    .line 3933
    iput-object v8, p1, Landroid/net/wifi/WifiConfiguration;->wapiASCert:Ljava/lang/String;

    .line 3938
    :goto_a
    iget-object v9, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v10, "user_cert_file"

    invoke-virtual {v9, v7, v10}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3939
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_f

    .line 3940
    iput-object v8, p1, Landroid/net/wifi/WifiConfiguration;->wapiUserCert:Ljava/lang/String;

    .line 3944
    :goto_b
    iget-object v9, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v10, "wapi_key_type"

    invoke-virtual {v9, v7, v10}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3945
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_b

    .line 3947
    :try_start_4
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p1, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_1

    .line 3951
    :cond_b
    :goto_c
    iget-object v9, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v10, "wapi_psk"

    invoke-virtual {v9, v7, v10}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3952
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_10

    .line 3953
    iput-object v8, p1, Landroid/net/wifi/WifiConfiguration;->wapiPsk:Ljava/lang/String;

    .line 3959
    :goto_d
    iget-object v9, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v10, "psk"

    invoke-virtual {v9, v7, v10}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3960
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_11

    .line 3961
    iput-object v8, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 3966
    :goto_e
    iget v9, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget-object v10, p1, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    const-string v11, "proto"

    sget-object v12, Landroid/net/wifi/WifiConfiguration$Protocol;->strings:[Ljava/lang/String;

    invoke-direct {p0, v9, v10, v11, v12}, Lcom/android/server/wifi/WifiConfigStore;->readNetworkBitsetVariable(ILjava/util/BitSet;Ljava/lang/String;[Ljava/lang/String;)V

    .line 3969
    iget v9, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget-object v10, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const-string v11, "key_mgmt"

    sget-object v12, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    invoke-direct {p0, v9, v10, v11, v12}, Lcom/android/server/wifi/WifiConfigStore;->readNetworkBitsetVariable(ILjava/util/BitSet;Ljava/lang/String;[Ljava/lang/String;)V

    .line 3972
    iget v9, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget-object v10, p1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    const-string v11, "auth_alg"

    sget-object v12, Landroid/net/wifi/WifiConfiguration$AuthAlgorithm;->strings:[Ljava/lang/String;

    invoke-direct {p0, v9, v10, v11, v12}, Lcom/android/server/wifi/WifiConfigStore;->readNetworkBitsetVariable(ILjava/util/BitSet;Ljava/lang/String;[Ljava/lang/String;)V

    .line 3975
    iget v9, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget-object v10, p1, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    const-string v11, "pairwise"

    sget-object v12, Landroid/net/wifi/WifiConfiguration$PairwiseCipher;->strings:[Ljava/lang/String;

    invoke-direct {p0, v9, v10, v11, v12}, Lcom/android/server/wifi/WifiConfigStore;->readNetworkBitsetVariable(ILjava/util/BitSet;Ljava/lang/String;[Ljava/lang/String;)V

    .line 3978
    iget v9, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget-object v10, p1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    const-string v11, "group"

    sget-object v12, Landroid/net/wifi/WifiConfiguration$GroupCipher;->strings:[Ljava/lang/String;

    invoke-direct {p0, v9, v10, v11, v12}, Lcom/android/server/wifi/WifiConfigStore;->readNetworkBitsetVariable(ILjava/util/BitSet;Ljava/lang/String;[Ljava/lang/String;)V

    .line 3981
    iget-object v9, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    if-nez v9, :cond_c

    .line 3982
    new-instance v9, Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct {v9}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>()V

    iput-object v9, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 3984
    :cond_c
    iget-object v9, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v9}, Landroid/net/wifi/WifiEnterpriseConfig;->getFields()Ljava/util/HashMap;

    move-result-object v1

    .line 3985
    .local v1, "enterpriseFields":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Lcom/android/server/wifi/WifiConfigStore;->ENTERPRISE_CONFIG_SUPPLICANT_KEYS:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_f
    if-ge v3, v6, :cond_13

    aget-object v5, v0, v3

    .line 3986
    .local v5, "key":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v9, v7, v5}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3987
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_12

    .line 3988
    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiConfigStore;->enterpriseConfigKeyShouldBeQuoted(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_d

    .line 3989
    invoke-static {v8}, Lcom/android/server/wifi/WifiConfigStore;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3991
    :cond_d
    invoke-virtual {v1, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3985
    :goto_10
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 3935
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "enterpriseFields":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "i$":I
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "len$":I
    :cond_e
    const/4 v9, 0x0

    iput-object v9, p1, Landroid/net/wifi/WifiConfiguration;->wapiASCert:Ljava/lang/String;

    goto/16 :goto_a

    .line 3942
    :cond_f
    const/4 v9, 0x0

    iput-object v9, p1, Landroid/net/wifi/WifiConfiguration;->wapiUserCert:Ljava/lang/String;

    goto/16 :goto_b

    .line 3955
    :cond_10
    const/4 v9, 0x0

    iput-object v9, p1, Landroid/net/wifi/WifiConfiguration;->wapiPsk:Ljava/lang/String;

    goto/16 :goto_d

    .line 3963
    :cond_11
    const/4 v9, 0x0

    iput-object v9, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_e

    .line 3993
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "enterpriseFields":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v3    # "i$":I
    .restart local v5    # "key":Ljava/lang/String;
    .restart local v6    # "len$":I
    :cond_12
    const-string v9, "NULL"

    invoke-virtual {v1, v5, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    .line 3997
    .end local v5    # "key":Ljava/lang/String;
    :cond_13
    iget-object v9, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {p0, v9, v7}, Lcom/android/server/wifi/WifiConfigStore;->migrateOldEapTlsNative(Landroid/net/wifi/WifiEnterpriseConfig;I)Z

    move-result v9

    if-eqz v9, :cond_14

    .line 3998
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConfigStore;->saveConfig()Z

    .line 4001
    :cond_14
    iget-object v9, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {p0, v9}, Lcom/android/server/wifi/WifiConfigStore;->migrateCerts(Landroid/net/wifi/WifiEnterpriseConfig;)V

    goto/16 :goto_0

    .line 3948
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "enterpriseFields":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "i$":I
    .end local v6    # "len$":I
    :catch_1
    move-exception v9

    goto/16 :goto_c

    .line 3917
    .end local v2    # "i":I
    :catch_2
    move-exception v9

    goto/16 :goto_7

    .line 3908
    :catch_3
    move-exception v9

    goto/16 :goto_6

    .line 3890
    :catch_4
    move-exception v9

    goto/16 :goto_3
.end method

.method private readNetworkVariablesFromSupplicantFile(Ljava/lang/String;)Ljava/util/Map;
    .locals 11
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1956
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 1957
    .local v6, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 1958
    .local v4, "reader":Ljava/io/BufferedReader;
    sget-boolean v9, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v9, :cond_0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readNetworkVariablesFromSupplicantFile key="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 1961
    :cond_0
    :try_start_0
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/FileReader;

    const-string v10, "/data/misc/wifi/wpa_supplicant.conf"

    invoke-direct {v9, v10}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1962
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .local v5, "reader":Ljava/io/BufferedReader;
    const/4 v1, 0x0

    .line 1963
    .local v1, "found":Z
    const/4 v3, 0x0

    .line 1964
    .local v3, "networkSsid":Ljava/lang/String;
    const/4 v8, 0x0

    .line 1966
    .local v8, "value":Ljava/lang/String;
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .local v2, "line":Ljava/lang/String;
    :goto_0
    if-eqz v2, :cond_6

    .line 1968
    const-string v9, "[ \\t]*network=\\{"

    invoke-virtual {v2, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1969
    const/4 v1, 0x1

    .line 1970
    const/4 v3, 0x0

    .line 1971
    const/4 v8, 0x0

    .line 1978
    :cond_1
    :goto_1
    if-eqz v1, :cond_3

    .line 1979
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 1980
    .local v7, "trimmedLine":Ljava/lang/String;
    const-string v9, "ssid="

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1981
    const/4 v9, 0x5

    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 1986
    :cond_2
    :goto_2
    if-eqz v3, :cond_3

    if-eqz v8, :cond_3

    .line 1987
    invoke-interface {v6, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1966
    .end local v7    # "trimmedLine":Ljava/lang/String;
    :cond_3
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1972
    :cond_4
    const-string v9, "[ \\t]*\\}"

    invoke-virtual {v2, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1973
    const/4 v1, 0x0

    .line 1974
    const/4 v3, 0x0

    .line 1975
    const/4 v8, 0x0

    goto :goto_1

    .line 1982
    .restart local v7    # "trimmedLine":Ljava/lang/String;
    :cond_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1983
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v8

    goto :goto_2

    .line 1997
    .end local v7    # "trimmedLine":Ljava/lang/String;
    :cond_6
    if-eqz v5, :cond_7

    .line 1998
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_7
    move-object v4, v5

    .line 2005
    .end local v1    # "found":Z
    .end local v2    # "line":Ljava/lang/String;
    .end local v3    # "networkSsid":Ljava/lang/String;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .end local v8    # "value":Ljava/lang/String;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :cond_8
    :goto_3
    return-object v6

    .line 2000
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "found":Z
    .restart local v2    # "line":Ljava/lang/String;
    .restart local v3    # "networkSsid":Ljava/lang/String;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v8    # "value":Ljava/lang/String;
    :catch_0
    move-exception v9

    move-object v4, v5

    .line 2003
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 1991
    .end local v1    # "found":Z
    .end local v2    # "line":Ljava/lang/String;
    .end local v3    # "networkSsid":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 1992
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_4
    :try_start_3
    sget-boolean v9, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v9, :cond_9

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Could not open /data/misc/wifi/wpa_supplicant.conf, "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1997
    :cond_9
    if-eqz v4, :cond_8

    .line 1998
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    .line 2000
    :catch_2
    move-exception v9

    goto :goto_3

    .line 1993
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v0

    .line 1994
    .local v0, "e":Ljava/io/IOException;
    :goto_5
    :try_start_5
    sget-boolean v9, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v9, :cond_a

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Could not read /data/misc/wifi/wpa_supplicant.conf, "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1997
    :cond_a
    if-eqz v4, :cond_8

    .line 1998
    :try_start_6
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_3

    .line 2000
    :catch_4
    move-exception v9

    goto :goto_3

    .line 1996
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 1997
    :goto_6
    if-eqz v4, :cond_b

    .line 1998
    :try_start_7
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 2002
    :cond_b
    :goto_7
    throw v9

    .line 2000
    :catch_5
    move-exception v10

    goto :goto_7

    .line 1996
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "found":Z
    .restart local v3    # "networkSsid":Ljava/lang/String;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v8    # "value":Ljava/lang/String;
    :catchall_1
    move-exception v9

    move-object v4, v5

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    goto :goto_6

    .line 1993
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catch_6
    move-exception v0

    move-object v4, v5

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    goto :goto_5

    .line 1991
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catch_7
    move-exception v0

    move-object v4, v5

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    goto :goto_4
.end method

.method private removeConfigAndSendBroadcastIfNeeded(I)Z
    .locals 5
    .param p1, "netId"    # I

    .prologue
    const/4 v4, 0x1

    .line 1447
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v2, p1}, Lcom/android/server/wifi/ConfigurationMap;->get(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1448
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_5

    .line 1449
    sget-boolean v2, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v2, :cond_0

    .line 1450
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeNetwork "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " config.id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 1455
    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->lastSelectedConfiguration:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1456
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->lastSelectedConfiguration:Ljava/lang/String;

    .line 1460
    :cond_1
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    if-eqz v2, :cond_2

    .line 1461
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiConfigStore;->removeKeys(Landroid/net/wifi/WifiEnterpriseConfig;)V

    .line 1464
    :cond_2
    iget-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    if-nez v2, :cond_3

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    if-nez v2, :cond_3

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1466
    :cond_3
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1468
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 1469
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConfigStore;->getChecksum(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    .line 1470
    .local v1, "csum":Ljava/lang/Long;
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mDeletedSSIDs:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1471
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeNetwork "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " config.id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  crc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 1483
    .end local v1    # "csum":Ljava/lang/Long;
    :cond_4
    :goto_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v2, p1}, Lcom/android/server/wifi/ConfigurationMap;->remove(I)Landroid/net/wifi/WifiConfiguration;

    .line 1484
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mScanDetailCaches:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1486
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigStore;->writeIpAndProxyConfigurations()V

    .line 1487
    invoke-direct {p0, v0, v4}, Lcom/android/server/wifi/WifiConfigStore;->sendConfiguredNetworksChangedBroadcast(Landroid/net/wifi/WifiConfiguration;I)V

    .line 1488
    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiConfigStore;->writeKnownNetworkHistory(Z)V

    .line 1490
    :cond_5
    return v4

    .line 1476
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeNetwork "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " config.id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x22

    const/4 v2, 0x1

    .line 4006
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 4007
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

    .line 4009
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 4011
    .end local p0    # "string":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method private sendConfiguredNetworksChangedBroadcast()V
    .locals 3

    .prologue
    .line 1808
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1809
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1810
    const-string v1, "multipleChanges"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1811
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1812
    return-void
.end method

.method private sendConfiguredNetworksChangedBroadcast(Landroid/net/wifi/WifiConfiguration;I)V
    .locals 3
    .param p1, "network"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "reason"    # I

    .prologue
    .line 1796
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1797
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1798
    const-string v1, "multipleChanges"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1799
    const-string v1, "wifiConfiguration"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1800
    const-string v1, "changeReason"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1801
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1802
    return-void
.end method

.method private setNetworkPriorityNative(II)Z
    .locals 3
    .param p1, "netId"    # I
    .param p2, "priority"    # I

    .prologue
    .line 975
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v1, "priority"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private setSSIDNative(ILjava/lang/String;)Z
    .locals 3
    .param p1, "netId"    # I
    .param p2, "ssid"    # Ljava/lang/String;

    .prologue
    .line 980
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v1, "ssid"

    invoke-static {p2}, Lcom/android/server/wifi/WifiConfigStore;->encodeSSID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static toMatchString(Ljava/util/Map;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/wifi/hotspot2/pps/HomeSP;",
            "Lcom/android/server/wifi/hotspot2/PasspointMatch;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 3555
    .local p0, "matches":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/hotspot2/pps/HomeSP;Lcom/android/server/wifi/hotspot2/PasspointMatch;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 3556
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3557
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/wifi/hotspot2/pps/HomeSP;Lcom/android/server/wifi/hotspot2/PasspointMatch;>;"
    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    invoke-virtual {v3}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getFQDN()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 3559
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/wifi/hotspot2/pps/HomeSP;Lcom/android/server/wifi/hotspot2/PasspointMatch;>;"
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private updateAnqpCache(Lcom/android/server/wifi/ScanDetail;Ljava/util/Map;)V
    .locals 3
    .param p1, "scanDetail"    # Lcom/android/server/wifi/ScanDetail;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wifi/ScanDetail;",
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/wifi/anqp/Constants$ANQPElementType;",
            "Lcom/android/server/wifi/anqp/ANQPElement;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3540
    .local p2, "anqpElements":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Lcom/android/server/wifi/anqp/ANQPElement;>;"
    invoke-virtual {p1}, Lcom/android/server/wifi/ScanDetail;->getNetworkDetail()Lcom/android/server/wifi/hotspot2/NetworkDetail;

    move-result-object v1

    .line 3542
    .local v1, "networkDetail":Lcom/android/server/wifi/hotspot2/NetworkDetail;
    if-nez p2, :cond_1

    .line 3544
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mAnqpCache:Lcom/android/server/wifi/hotspot2/AnqpCache;

    invoke-virtual {v2, v1}, Lcom/android/server/wifi/hotspot2/AnqpCache;->getEntry(Lcom/android/server/wifi/hotspot2/NetworkDetail;)Lcom/android/server/wifi/hotspot2/ANQPData;

    move-result-object v0

    .line 3545
    .local v0, "data":Lcom/android/server/wifi/hotspot2/ANQPData;
    if-eqz v0, :cond_0

    .line 3546
    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/ANQPData;->getANQPElements()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/server/wifi/ScanDetail;->propagateANQPInfo(Ljava/util/Map;)V

    .line 3552
    .end local v0    # "data":Lcom/android/server/wifi/hotspot2/ANQPData;
    :cond_0
    :goto_0
    return-void

    .line 3551
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mAnqpCache:Lcom/android/server/wifi/hotspot2/AnqpCache;

    invoke-virtual {v2, v1, p2}, Lcom/android/server/wifi/hotspot2/AnqpCache;->update(Lcom/android/server/wifi/hotspot2/NetworkDetail;Ljava/util/Map;)V

    goto :goto_0
.end method

.method private writeIpAndProxyConfigurations()V
    .locals 5

    .prologue
    .line 2629
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 2630
    .local v2, "networks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/net/IpConfiguration;>;"
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v3}, Lcom/android/server/wifi/ConfigurationMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 2631
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-boolean v3, v0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-nez v3, :cond_0

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    const/16 v4, 0xc8

    if-eq v3, v4, :cond_0

    .line 2632
    invoke-static {v0}, Lcom/android/server/wifi/WifiConfigStore;->configKey(Landroid/net/wifi/WifiConfiguration;)I

    move-result v3

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getIpConfiguration()Landroid/net/IpConfiguration;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 2636
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    sget-object v3, Lcom/android/server/wifi/WifiConfigStore;->ipConfigFile:Ljava/lang/String;

    invoke-super {p0, v3, v2}, Lcom/android/server/net/IpConfigStore;->writeIpAndProxyConfigurations(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 2637
    return-void
.end method

.method private writeIpAndProxyConfigurationsOnChange(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/NetworkUpdateResult;
    .locals 8
    .param p1, "currentConfig"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "newConfig"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 3751
    const/4 v1, 0x0

    .line 3752
    .local v1, "ipChanged":Z
    const/4 v3, 0x0

    .line 3754
    .local v3, "proxyChanged":Z
    sget-boolean v6, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v6, :cond_0

    .line 3755
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "writeIpAndProxyConfigurationsOnChange: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " path: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/server/wifi/WifiConfigStore;->ipConfigFile:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 3760
    :cond_0
    sget-object v6, Lcom/android/server/wifi/WifiConfigStore$4;->$SwitchMap$android$net$IpConfiguration$IpAssignment:[I

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/IpConfiguration$IpAssignment;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 3779
    const-string v6, "Ignore invalid ip assignment during write"

    invoke-virtual {p0, v6}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 3783
    :cond_1
    :goto_0
    :pswitch_0
    sget-object v6, Lcom/android/server/wifi/WifiConfigStore$4;->$SwitchMap$android$net$IpConfiguration$ProxySettings:[I

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/IpConfiguration$ProxySettings;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_1

    .line 3804
    const-string v4, "Ignore invalid proxy configuration during write"

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 3808
    :cond_2
    :goto_1
    :pswitch_1
    if-eqz v1, :cond_3

    .line 3809
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/net/wifi/WifiConfiguration;->setIpAssignment(Landroid/net/IpConfiguration$IpAssignment;)V

    .line 3810
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/net/wifi/WifiConfiguration;->setStaticIpConfiguration(Landroid/net/StaticIpConfiguration;)V

    .line 3811
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IP config changed SSID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiConfigStore;->log(Ljava/lang/String;)V

    .line 3812
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 3813
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " static configuration: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/StaticIpConfiguration;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiConfigStore;->log(Ljava/lang/String;)V

    .line 3818
    :cond_3
    if-eqz v3, :cond_4

    .line 3819
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/net/wifi/WifiConfiguration;->setProxySettings(Landroid/net/IpConfiguration$ProxySettings;)V

    .line 3820
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/net/wifi/WifiConfiguration;->setHttpProxy(Landroid/net/ProxyInfo;)V

    .line 3821
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "proxy changed SSID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiConfigStore;->log(Ljava/lang/String;)V

    .line 3822
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 3823
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " proxyProperties: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/ProxyInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiConfigStore;->log(Ljava/lang/String;)V

    .line 3827
    :cond_4
    if-nez v1, :cond_5

    if-eqz v3, :cond_6

    .line 3828
    :cond_5
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigStore;->writeIpAndProxyConfigurations()V

    .line 3829
    const/4 v4, 0x2

    invoke-direct {p0, p1, v4}, Lcom/android/server/wifi/WifiConfigStore;->sendConfiguredNetworksChangedBroadcast(Landroid/net/wifi/WifiConfiguration;I)V

    .line 3832
    :cond_6
    new-instance v4, Lcom/android/server/wifi/NetworkUpdateResult;

    invoke-direct {v4, v1, v3}, Lcom/android/server/wifi/NetworkUpdateResult;-><init>(ZZ)V

    return-object v4

    .line 3762
    :pswitch_2
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v6

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v7

    if-eq v6, v7, :cond_7

    .line 3763
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 3765
    :cond_7
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v6

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    move v1, v4

    .line 3769
    :goto_2
    goto/16 :goto_0

    :cond_8
    move v1, v5

    .line 3765
    goto :goto_2

    .line 3771
    :pswitch_3
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v6

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v7

    if-eq v6, v7, :cond_1

    .line 3772
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 3786
    :pswitch_4
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v2

    .line 3787
    .local v2, "newHttpProxy":Landroid/net/ProxyInfo;
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v0

    .line 3789
    .local v0, "currentHttpProxy":Landroid/net/ProxyInfo;
    if-eqz v2, :cond_a

    .line 3790
    invoke-virtual {v2, v0}, Landroid/net/ProxyInfo;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    move v3, v4

    :goto_3
    goto/16 :goto_1

    :cond_9
    move v3, v5

    goto :goto_3

    .line 3792
    :cond_a
    if-eqz v0, :cond_b

    move v3, v4

    .line 3794
    :goto_4
    goto/16 :goto_1

    :cond_b
    move v3, v5

    .line 3792
    goto :goto_4

    .line 3796
    .end local v0    # "currentHttpProxy":Landroid/net/ProxyInfo;
    .end local v2    # "newHttpProxy":Landroid/net/ProxyInfo;
    :pswitch_5
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v4

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v5

    if-eq v4, v5, :cond_2

    .line 3797
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 3760
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch

    .line 3783
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;I)I
    .locals 6
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "uid"    # I

    .prologue
    .line 1298
    iget-boolean v3, p0, Lcom/android/server/wifi/WifiConfigStore;->showNetworks:Z

    if-eqz v3, :cond_0

    const-string v3, "addOrUpdateNetwork id="

    iget v4, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-direct {p0, v3, v4}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;I)V

    .line 1300
    :cond_0
    const-string v3, "WifiConfigStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " key="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " netId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1304
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1306
    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/server/wifi/WifiConfigStore;->getChecksum(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    .line 1307
    .local v1, "csum":Ljava/lang/Long;
    invoke-virtual {v1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 1308
    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->setDomainSuffixMatch(Ljava/lang/String;)V

    .line 1311
    .end local v1    # "csum":Ljava/lang/Long;
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiConfigStore;->addOrUpdateNetworkNative(Landroid/net/wifi/WifiConfiguration;I)Lcom/android/server/wifi/NetworkUpdateResult;

    move-result-object v2

    .line 1312
    .local v2, "result":Lcom/android/server/wifi/NetworkUpdateResult;
    invoke-virtual {v2}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 1313
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v2}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/ConfigurationMap;->get(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1314
    .local v0, "conf":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_2

    .line 1315
    iget-boolean v3, v2, Lcom/android/server/wifi/NetworkUpdateResult;->isNewNetwork:Z

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    :goto_0
    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/WifiConfigStore;->sendConfiguredNetworksChangedBroadcast(Landroid/net/wifi/WifiConfiguration;I)V

    .line 1321
    .end local v0    # "conf":Landroid/net/wifi/WifiConfiguration;
    :cond_2
    invoke-virtual {v2}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v3

    return v3

    .line 1315
    .restart local v0    # "conf":Landroid/net/wifi/WifiConfiguration;
    :cond_3
    const/4 v3, 0x2

    goto :goto_0
.end method

.method blackListBssid(Ljava/lang/String;)V
    .locals 7
    .param p1, "BSSID"    # Ljava/lang/String;

    .prologue
    .line 4463
    iget-object v5, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiStateMachine;->useHalBasedAutoJoinOffload()Z

    move-result v5

    if-nez v5, :cond_1

    .line 4465
    const-string v5, "WifiConfigStore"

    const-string v6, "No blacklist allowed without epno enabled"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4481
    :cond_0
    :goto_0
    return-void

    .line 4469
    :cond_1
    if-eqz p1, :cond_0

    .line 4471
    iget-object v5, p0, Lcom/android/server/wifi/WifiConfigStore;->mBssidBlacklist:Ljava/util/HashSet;

    invoke-virtual {v5, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4473
    iget-object v5, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v5, p1}, Lcom/android/server/wifi/WifiNative;->addToBlacklist(Ljava/lang/String;)Z

    .line 4475
    iget-object v5, p0, Lcom/android/server/wifi/WifiConfigStore;->mBssidBlacklist:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v5

    new-array v4, v5, [Ljava/lang/String;

    .line 4476
    .local v4, "list":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 4477
    .local v1, "count":I
    iget-object v5, p0, Lcom/android/server/wifi/WifiConfigStore;->mBssidBlacklist:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4478
    .local v0, "bssid":Ljava/lang/String;
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "count":I
    .local v2, "count":I
    aput-object v0, v4, v1

    move v1, v2

    .line 4479
    .end local v2    # "count":I
    .restart local v1    # "count":I
    goto :goto_1

    .line 4480
    .end local v0    # "bssid":Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-static {v4}, Lcom/android/server/wifi/WifiNative;->setBssidBlacklist([Ljava/lang/String;)Z

    goto :goto_0
.end method

.method canModifyNetwork(IIZ)Z
    .locals 12
    .param p1, "uid"    # I
    .param p2, "networkId"    # I
    .param p3, "onlyAnnotate"    # Z

    .prologue
    const/4 v11, -0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 4278
    iget-object v9, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v9, p2}, Lcom/android/server/wifi/ConfigurationMap;->get(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 4280
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_1

    .line 4281
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "canModifyNetwork: cannot find config networkId "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 4320
    :cond_0
    :goto_0
    return v7

    .line 4285
    :cond_1
    const-class v9, Landroid/app/admin/DevicePolicyManagerInternal;

    invoke-static {v9}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 4288
    .local v1, "dpmi":Landroid/app/admin/DevicePolicyManagerInternal;
    if-eqz v1, :cond_2

    invoke-virtual {v1, p1, v11}, Landroid/app/admin/DevicePolicyManagerInternal;->isActiveAdminWithPolicy(II)Z

    move-result v9

    if-eqz v9, :cond_2

    move v5, v8

    .line 4291
    .local v5, "isUidDeviceOwner":Z
    :goto_1
    if-eqz v5, :cond_3

    move v7, v8

    .line 4293
    goto :goto_0

    .end local v5    # "isUidDeviceOwner":Z
    :cond_2
    move v5, v7

    .line 4288
    goto :goto_1

    .line 4296
    .restart local v5    # "isUidDeviceOwner":Z
    :cond_3
    iget v9, v0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    if-ne v9, p1, :cond_5

    move v3, v8

    .line 4298
    .local v3, "isCreator":Z
    :goto_2
    if-eqz p3, :cond_6

    .line 4299
    if-nez v3, :cond_4

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiConfigStore;->checkConfigOverridePermission(I)Z

    move-result v9

    if-eqz v9, :cond_0

    :cond_4
    move v7, v8

    goto :goto_0

    .end local v3    # "isCreator":Z
    :cond_5
    move v3, v7

    .line 4296
    goto :goto_2

    .line 4304
    .restart local v3    # "isCreator":Z
    :cond_6
    iget-object v9, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const-string v10, "android.software.device_admin"

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    if-eqz v1, :cond_0

    .line 4311
    :cond_7
    if-eqz v1, :cond_9

    iget v9, v0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    invoke-virtual {v1, v9, v11}, Landroid/app/admin/DevicePolicyManagerInternal;->isActiveAdminWithPolicy(II)Z

    move-result v9

    if-eqz v9, :cond_9

    move v2, v8

    .line 4313
    .local v2, "isConfigEligibleForLockdown":Z
    :goto_3
    if-nez v2, :cond_a

    .line 4314
    if-nez v3, :cond_8

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiConfigStore;->checkConfigOverridePermission(I)Z

    move-result v9

    if-eqz v9, :cond_0

    :cond_8
    move v7, v8

    goto :goto_0

    .end local v2    # "isConfigEligibleForLockdown":Z
    :cond_9
    move v2, v7

    .line 4311
    goto :goto_3

    .line 4317
    .restart local v2    # "isConfigEligibleForLockdown":Z
    :cond_a
    iget-object v9, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 4318
    .local v6, "resolver":Landroid/content/ContentResolver;
    const-string v9, "wifi_device_owner_configs_lockdown"

    invoke-static {v6, v9, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_b

    move v4, v8

    .line 4320
    .local v4, "isLockdownFeatureEnabled":Z
    :goto_4
    if-nez v4, :cond_c

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiConfigStore;->checkConfigOverridePermission(I)Z

    move-result v9

    if-eqz v9, :cond_c

    :goto_5
    move v7, v8

    goto :goto_0

    .end local v4    # "isLockdownFeatureEnabled":Z
    :cond_b
    move v4, v7

    .line 4318
    goto :goto_4

    .restart local v4    # "isLockdownFeatureEnabled":Z
    :cond_c
    move v8, v7

    .line 4320
    goto :goto_5
.end method

.method canModifyNetwork(ILandroid/net/wifi/WifiConfiguration;Z)Z
    .locals 5
    .param p1, "uid"    # I
    .param p2, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p3, "onlyAnnotate"    # Z

    .prologue
    const/4 v2, 0x0

    .line 4327
    if-nez p2, :cond_1

    .line 4328
    const-string v3, "canModifyNetowrk recieved null configuration"

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 4345
    :cond_0
    :goto_0
    return v2

    .line 4334
    :cond_1
    iget v3, p2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 4335
    iget v0, p2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 4345
    .local v0, "netid":I
    :goto_1
    invoke-virtual {p0, p1, v0, p3}, Lcom/android/server/wifi/WifiConfigStore;->canModifyNetwork(IIZ)Z

    move-result v2

    goto :goto_0

    .line 4337
    .end local v0    # "netid":I
    :cond_2
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/ConfigurationMap;->getByConfigKey(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 4338
    .local v1, "test":Landroid/net/wifi/WifiConfiguration;
    if-eqz v1, :cond_0

    .line 4341
    iget v0, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .restart local v0    # "netid":I
    goto :goto_1
.end method

.method checkConfigOverridePermission(I)Z
    .locals 4
    .param p1, "uid"    # I

    .prologue
    const/4 v1, 0x0

    .line 4350
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    const-string v3, "android.permission.OVERRIDE_WIFI_CONFIG"

    invoke-interface {v2, v3, p1}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 4354
    :cond_0
    :goto_0
    return v1

    .line 4353
    :catch_0
    move-exception v0

    .line 4354
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method clearBssidBlacklist()V
    .locals 2

    .prologue
    .line 4451
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->useHalBasedAutoJoinOffload()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4453
    const-string v0, "WifiConfigStore"

    const-string v1, "No blacklist allowed without epno enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4460
    :goto_0
    return-void

    .line 4457
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mBssidBlacklist:Ljava/util/HashSet;

    .line 4458
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative;->clearBlacklist()Z

    .line 4459
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/wifi/WifiNative;->setBssidBlacklist([Ljava/lang/String;)Z

    goto :goto_0
.end method

.method disableAllNetworks()V
    .locals 5

    .prologue
    .line 1588
    sget-boolean v3, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v3, :cond_0

    const-string v3, "disableAllNetworks"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;)V

    .line 1589
    :cond_0
    const/4 v2, 0x0

    .line 1590
    .local v2, "networkDisabled":Z
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v3}, Lcom/android/server/wifi/ConfigurationMap;->getEnabledNetworks()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 1591
    .local v0, "enabled":Landroid/net/wifi/WifiConfiguration;
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiNative;->disableNetwork(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1592
    const/4 v2, 0x1

    .line 1593
    const/4 v3, 0x1

    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    goto :goto_0

    .line 1595
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Disable network failed on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 1599
    .end local v0    # "enabled":Landroid/net/wifi/WifiConfiguration;
    :cond_2
    if-eqz v2, :cond_3

    .line 1600
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigStore;->sendConfiguredNetworksChangedBroadcast()V

    .line 1602
    :cond_3
    return-void
.end method

.method disableEphemeralNetwork(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 3
    .param p1, "SSID"    # Ljava/lang/String;

    .prologue
    .line 1240
    if-nez p1, :cond_0

    .line 1241
    const/4 v0, 0x0

    .line 1257
    :goto_0
    return-object v0

    .line 1244
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/ConfigurationMap;->getEphemeral(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1246
    .local v0, "foundConfig":Landroid/net/wifi/WifiConfiguration;
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mDeletedEphemeralSSIDs:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1247
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Forget ephemeral SSID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " num="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mDeletedEphemeralSSIDs:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 1249
    if-eqz v0, :cond_1

    .line 1250
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found ephemeral config in disableEphemeralNetwork: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 1255
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigStore;->writeKnownNetworkHistory(Z)V

    goto :goto_0
.end method

.method disableNetwork(I)Z
    .locals 2
    .param p1, "netId"    # I

    .prologue
    .line 1609
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wifi/WifiConfigStore;->disableNetwork(II)Z

    move-result v0

    .line 1610
    .local v0, "ret":Z
    if-eqz v0, :cond_0

    .line 1611
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/WifiStateMachine;->registerNetworkDisabled(I)V

    .line 1613
    :cond_0
    return v0
.end method

.method disableNetwork(II)Z
    .locals 7
    .param p1, "netId"    # I
    .param p2, "reason"    # I

    .prologue
    const/4 v6, 0x5

    const/4 v4, 0x1

    .line 1623
    sget-boolean v3, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v3, :cond_0

    const-string v3, "disableNetwork"

    invoke-direct {p0, v3, p1}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;I)V

    .line 1624
    :cond_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v3, p1}, Lcom/android/server/wifi/WifiNative;->disableNetwork(I)Z

    move-result v2

    .line 1625
    .local v2, "ret":Z
    const/4 v1, 0x0

    .line 1626
    .local v1, "network":Landroid/net/wifi/WifiConfiguration;
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v3, p1}, Lcom/android/server/wifi/ConfigurationMap;->get(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1628
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    sget-boolean v3, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v3, :cond_1

    .line 1629
    if-eqz v0, :cond_1

    .line 1630
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "disableNetwork netId="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " SSID="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " disabled="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    if-ne v3, v4, :cond_5

    move v3, v4

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " reason="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 1639
    :cond_1
    if-eqz v0, :cond_3

    .line 1640
    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    if-eq v3, v4, :cond_2

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    if-eq v3, v6, :cond_2

    .line 1642
    iput v4, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 1643
    iput p2, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    .line 1644
    move-object v1, v0

    .line 1646
    :cond_2
    if-ne p2, v6, :cond_3

    .line 1649
    iput v4, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 1650
    const/16 v3, 0xa1

    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    .line 1653
    :cond_3
    if-eqz v1, :cond_4

    .line 1654
    const/4 v3, 0x2

    invoke-direct {p0, v1, v3}, Lcom/android/server/wifi/WifiConfigStore;->sendConfiguredNetworksChangedBroadcast(Landroid/net/wifi/WifiConfiguration;I)V

    .line 1657
    :cond_4
    return v2

    .line 1630
    :cond_5
    const/4 v3, 0x0

    goto :goto_0
.end method

.method driverRoamedFrom(Landroid/net/wifi/WifiInfo;)V
    .locals 4
    .param p1, "info"    # Landroid/net/wifi/WifiInfo;

    .prologue
    .line 1146
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v2

    invoke-static {v2}, Landroid/net/wifi/ScanResult;->is5GHz(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->bandPreferenceBoostThreshold5:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    add-int/lit8 v3, v3, 0x3

    if-le v2, v3, :cond_0

    .line 1150
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1151
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    .line 1152
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1153
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/ScanDetailCache;->get(Ljava/lang/String;)Landroid/net/wifi/ScanResult;

    move-result-object v1

    .line 1154
    .local v1, "result":Landroid/net/wifi/ScanResult;
    if-eqz v1, :cond_0

    .line 1155
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/net/wifi/ScanResult;->setAutoJoinStatus(I)V

    .line 1160
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v1    # "result":Landroid/net/wifi/ScanResult;
    :cond_0
    return-void
.end method

.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 4093
    const-string v3, "Dump of WifiConfigStore"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4094
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mLastPriority "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/wifi/WifiConfigStore;->mLastPriority:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4095
    const-string v3, "Configured networks"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4096
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigStore;->getAllConfiguredNetworks()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 4097
    .local v0, "conf":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_0

    .line 4099
    .end local v0    # "conf":Landroid/net/wifi/WifiConfiguration;
    :cond_0
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 4100
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->mLostConfigsDbg:Ljava/util/HashSet;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->mLostConfigsDbg:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 4101
    const-string v3, "LostConfigs: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4102
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->mLostConfigsDbg:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4103
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 4106
    .end local v2    # "s":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->mLocalLog:Landroid/util/LocalLog;

    if-eqz v3, :cond_2

    .line 4107
    const-string v3, "WifiConfigStore - Log Begin ----"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4108
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v3, p1, p2, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4109
    const-string v3, "WifiConfigStore - Log End ----"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4111
    :cond_2
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->mMOManager:Lcom/android/server/wifi/hotspot2/omadm/MOManager;

    invoke-virtual {v3}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->isConfigured()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4112
    const-string v3, "Begin dump of ANQP Cache"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4113
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->mAnqpCache:Lcom/android/server/wifi/hotspot2/AnqpCache;

    invoke-virtual {v3, p2}, Lcom/android/server/wifi/hotspot2/AnqpCache;->dump(Ljava/io/PrintWriter;)V

    .line 4114
    const-string v3, "End dump of ANQP Cache"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4116
    :cond_3
    return-void
.end method

.method enableAllNetworks()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    .line 925
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 926
    .local v4, "now":J
    const/4 v2, 0x0

    .line 928
    .local v2, "networkEnabledStateChanged":Z
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v3}, Lcom/android/server/wifi/ConfigurationMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 930
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    const/4 v6, 0x1

    if-ne v3, v6, :cond_0

    iget-boolean v3, v0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-nez v3, :cond_0

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    const/16 v6, 0x80

    if-gt v3, v6, :cond_0

    .line 936
    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    if-eq v3, v11, :cond_1

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    const/4 v6, 0x4

    if-eq v3, v6, :cond_1

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    const/4 v6, 0x3

    if-ne v3, v6, :cond_2

    .line 941
    :cond_1
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiStateMachine;->reenableSSID()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-wide v6, v0, Landroid/net/wifi/WifiConfiguration;->blackListTimestamp:J

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-eqz v3, :cond_2

    iget-wide v6, v0, Landroid/net/wifi/WifiConfiguration;->blackListTimestamp:J

    cmp-long v3, v4, v6

    if-lez v3, :cond_2

    iget-wide v6, v0, Landroid/net/wifi/WifiConfiguration;->blackListTimestamp:J

    sub-long v6, v4, v6

    iget v3, p0, Lcom/android/server/wifi/WifiConfigStore;->wifiConfigBlacklistMinTimeMilli:I

    int-to-long v8, v3

    cmp-long v3, v6, v8

    if-ltz v3, :cond_0

    .line 950
    :cond_2
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v3, v6, v10}, Lcom/android/server/wifi/WifiNative;->enableNetwork(IZ)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 951
    const/4 v2, 0x1

    .line 952
    iput v11, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 955
    iput v10, v0, Landroid/net/wifi/WifiConfiguration;->numConnectionFailures:I

    .line 956
    iput v10, v0, Landroid/net/wifi/WifiConfiguration;->numIpConfigFailures:I

    .line 957
    iput v10, v0, Landroid/net/wifi/WifiConfiguration;->numAuthFailures:I

    .line 960
    invoke-virtual {v0, v10}, Landroid/net/wifi/WifiConfiguration;->setAutoJoinStatus(I)V

    goto :goto_0

    .line 962
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Enable network failed on "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 968
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_4
    if-eqz v2, :cond_5

    .line 969
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiNative;->saveConfig()Z

    .line 970
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigStore;->sendConfiguredNetworksChangedBroadcast()V

    .line 972
    :cond_5
    return-void
.end method

.method enableNetwork(IZI)Z
    .locals 4
    .param p1, "netId"    # I
    .param p2, "disableOthers"    # Z
    .param p3, "uid"    # I

    .prologue
    .line 1554
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wifi/WifiConfigStore;->enableNetworkWithoutBroadcast(IZ)Z

    move-result v1

    .line 1555
    .local v1, "ret":Z
    if-eqz p2, :cond_2

    .line 1556
    sget-boolean v2, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableNetwork(disableOthers=true, uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;I)V

    .line 1557
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    invoke-virtual {p0, v2, p3}, Lcom/android/server/wifi/WifiConfigStore;->updateLastConnectUid(Landroid/net/wifi/WifiConfiguration;I)Z

    .line 1558
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiConfigStore;->writeKnownNetworkHistory(Z)V

    .line 1559
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigStore;->sendConfiguredNetworksChangedBroadcast()V

    .line 1572
    :cond_1
    :goto_0
    return v1

    .line 1561
    :cond_2
    sget-boolean v2, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v2, :cond_3

    const-string v2, "enableNetwork(disableOthers=false) "

    invoke-direct {p0, v2, p1}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;I)V

    .line 1563
    :cond_3
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    monitor-enter v3

    .line 1564
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v2, p1}, Lcom/android/server/wifi/ConfigurationMap;->get(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1565
    .local v0, "enabledNetwork":Landroid/net/wifi/WifiConfiguration;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1567
    if-eqz v0, :cond_1

    .line 1568
    const/4 v2, 0x2

    invoke-direct {p0, v0, v2}, Lcom/android/server/wifi/WifiConfigStore;->sendConfiguredNetworksChangedBroadcast(Landroid/net/wifi/WifiConfiguration;I)V

    goto :goto_0

    .line 1565
    .end local v0    # "enabledNetwork":Landroid/net/wifi/WifiConfiguration;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method enableNetworkWithoutBroadcast(IZ)Z
    .locals 3
    .param p1, "netId"    # I
    .param p2, "disableOthers"    # Z

    .prologue
    .line 1576
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/wifi/WifiNative;->enableNetwork(IZ)Z

    move-result v1

    .line 1578
    .local v1, "ret":Z
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v2, p1}, Lcom/android/server/wifi/ConfigurationMap;->get(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1579
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    const/4 v2, 0x2

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 1581
    :cond_0
    if-eqz p2, :cond_1

    .line 1582
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigStore;->markAllNetworksDisabledExcept(I)V

    .line 1584
    :cond_1
    return v1
.end method

.method enableVerboseLogging(I)V
    .locals 3
    .param p1, "verbose"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 694
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->enableVerboseLogging:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 695
    if-lez p1, :cond_0

    .line 696
    sput-boolean v1, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    .line 697
    iput-boolean v1, p0, Lcom/android/server/wifi/WifiConfigStore;->showNetworks:Z

    .line 701
    :goto_0
    if-le p1, v1, :cond_1

    .line 702
    sput-boolean v1, Lcom/android/server/wifi/WifiConfigStore;->VVDBG:Z

    .line 706
    :goto_1
    return-void

    .line 699
    :cond_0
    sput-boolean v2, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    goto :goto_0

    .line 704
    :cond_1
    sput-boolean v2, Lcom/android/server/wifi/WifiConfigStore;->VVDBG:Z

    goto :goto_1
.end method

.method forgetNetwork(I)Z
    .locals 5
    .param p1, "netId"    # I

    .prologue
    const/4 v2, 0x1

    .line 1267
    iget-boolean v3, p0, Lcom/android/server/wifi/WifiConfigStore;->showNetworks:Z

    if-eqz v3, :cond_0

    const-string v3, "forgetNetwork"

    invoke-direct {p0, v3, p1}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;I)V

    .line 1269
    :cond_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v3, p1}, Lcom/android/server/wifi/ConfigurationMap;->get(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1270
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigStore;->removeConfigAndSendBroadcastIfNeeded(I)Z

    move-result v1

    .line 1271
    .local v1, "remove":Z
    if-nez v1, :cond_1

    .line 1284
    :goto_0
    return v2

    .line 1275
    :cond_1
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v3, p1}, Lcom/android/server/wifi/WifiNative;->removeNetwork(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1276
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1277
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/android/server/wifi/WifiConfigStore;->writePasspointConfigs(Ljava/lang/String;Lcom/android/server/wifi/hotspot2/pps/HomeSP;)V

    .line 1279
    :cond_2
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiNative;->saveConfig()Z

    .line 1280
    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiConfigStore;->writeKnownNetworkHistory(Z)V

    goto :goto_0

    .line 1283
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to remove network "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 1284
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getConfigFile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4119
    sget-object v0, Lcom/android/server/wifi/WifiConfigStore;->ipConfigFile:Ljava/lang/String;

    return-object v0
.end method

.method public getConfiguredChannelList()Ljava/util/TreeSet;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 736
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 737
    .local v1, "freqs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v7}, Lcom/android/server/wifi/ConfigurationMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 738
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 739
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/wifi/ScanDetailCache;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wifi/ScanDetail;

    .line 740
    .local v5, "scanDetail":Lcom/android/server/wifi/ScanDetail;
    invoke-virtual {v5}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v4

    .line 741
    .local v4, "result":Landroid/net/wifi/ScanResult;
    iget v7, v4, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 745
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "result":Landroid/net/wifi/ScanResult;
    .end local v5    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    :cond_1
    new-instance v6, Ljava/util/TreeSet;

    invoke-direct {v6}, Ljava/util/TreeSet;-><init>()V

    .line 746
    .local v6, "tfreqs":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/String;>;"
    invoke-virtual {v6, v1}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    .line 747
    return-object v6
.end method

.method getConfiguredNetworks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 797
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConfigStore;->getConfiguredNetworks(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getConfiguredNetworksSize()I
    .locals 1

    .prologue
    .line 751
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v0}, Lcom/android/server/wifi/ConfigurationMap;->size()I

    move-result v0

    return v0
.end method

.method public getLastSelectedConfiguration()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2321
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->lastSelectedConfiguration:Ljava/lang/String;

    return-object v0
.end method

.method getMatchingConfig(Landroid/net/wifi/ScanResult;)Landroid/net/wifi/WifiConfiguration;
    .locals 6
    .param p1, "scanResult"    # Landroid/net/wifi/ScanResult;

    .prologue
    .line 814
    iget-object v5, p0, Lcom/android/server/wifi/WifiConfigStore;->mScanDetailCaches:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 815
    .local v2, "entry":Ljava/util/Map$Entry;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 816
    .local v4, "netId":Ljava/lang/Integer;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/ScanDetailCache;

    .line 817
    .local v0, "cache":Lcom/android/server/wifi/ScanDetailCache;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 818
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v1, :cond_0

    .line 820
    iget-object v5, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/ScanDetailCache;->get(Ljava/lang/String;)Landroid/net/wifi/ScanResult;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 825
    .end local v0    # "cache":Lcom/android/server/wifi/ScanDetailCache;
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "entry":Ljava/util/Map$Entry;
    .end local v4    # "netId":Ljava/lang/Integer;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getMaxDhcpRetries()I
    .locals 3

    .prologue
    .line 4445
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_max_dhcp_retry_count"

    const/16 v2, 0x9

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method getPrivilegedConfiguredNetworks()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 805
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigStore;->getCredentialsBySsidMap()Ljava/util/Map;

    move-result-object v0

    .line 806
    .local v0, "pskMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConfigStore;->getConfiguredNetworks(Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method getProxyProperties(I)Landroid/net/ProxyInfo;
    .locals 2
    .param p1, "netId"    # I

    .prologue
    .line 1763
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/ConfigurationMap;->get(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1764
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    .line 1765
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v1

    .line 1767
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getRecentConfiguredNetworks(IZ)Ljava/util/List;
    .locals 7
    .param p1, "milli"    # I
    .param p2, "copy"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 842
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 844
    .local v3, "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v4}, Lcom/android/server/wifi/ConfigurationMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 845
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    iget v4, v1, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    const/16 v5, 0xc8

    if-eq v4, v5, :cond_0

    iget-boolean v4, v1, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-nez v4, :cond_0

    .line 853
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v0

    .line 854
    .local v0, "cache":Lcom/android/server/wifi/ScanDetailCache;
    if-eqz v0, :cond_0

    .line 857
    int-to-long v4, p1

    iget v6, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredBand:I

    invoke-virtual {v0, v4, v5, v6}, Lcom/android/server/wifi/ScanDetailCache;->getVisibility(JI)Landroid/net/wifi/WifiConfiguration$Visibility;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/net/wifi/WifiConfiguration;->setVisibility(Landroid/net/wifi/WifiConfiguration$Visibility;)V

    .line 858
    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    if-eqz v4, :cond_0

    .line 861
    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    iget v4, v4, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    sget v5, Landroid/net/wifi/WifiConfiguration;->INVALID_RSSI:I

    if-ne v4, v5, :cond_1

    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    iget v4, v4, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi24:I

    sget v5, Landroid/net/wifi/WifiConfiguration;->INVALID_RSSI:I

    if-eq v4, v5, :cond_0

    .line 865
    :cond_1
    if-eqz p2, :cond_2

    .line 866
    new-instance v4, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v4, v1}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 868
    :cond_2
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 871
    .end local v0    # "cache":Lcom/android/server/wifi/ScanDetailCache;
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_3
    return-object v3
.end method

.method public getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;
    .locals 3
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 3259
    if-nez p1, :cond_1

    const/4 v0, 0x0

    .line 3265
    :cond_0
    :goto_0
    return-object v0

    .line 3260
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mScanDetailCaches:Ljava/util/HashMap;

    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/ScanDetailCache;

    .line 3261
    .local v0, "cache":Lcom/android/server/wifi/ScanDetailCache;
    if-nez v0, :cond_0

    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 3262
    new-instance v0, Lcom/android/server/wifi/ScanDetailCache;

    .end local v0    # "cache":Lcom/android/server/wifi/ScanDetailCache;
    invoke-direct {v0, p1}, Lcom/android/server/wifi/ScanDetailCache;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    .line 3263
    .restart local v0    # "cache":Lcom/android/server/wifi/ScanDetailCache;
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mScanDetailCaches:Ljava/util/HashMap;

    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method getStaticIpConfiguration(I)Landroid/net/StaticIpConfiguration;
    .locals 2
    .param p1, "netId"    # I

    .prologue
    .line 1728
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/ConfigurationMap;->get(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1729
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    .line 1730
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v1

    .line 1732
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getWhiteListedSsids(Landroid/net/wifi/WifiConfiguration;)[Ljava/lang/String;
    .locals 13
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/16 v9, 0x22

    .line 1358
    const/4 v6, 0x0

    .line 1361
    .local v6, "num_ssids":I
    iget-object v8, p0, Lcom/android/server/wifi/WifiConfigStore;->enableSsidWhitelist:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v8

    if-nez v8, :cond_1

    .line 1414
    :cond_0
    :goto_0
    return-object v7

    .line 1363
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1364
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 1366
    iget-object v8, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    if-eqz v8, :cond_0

    .line 1369
    iget-object v8, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v8, :cond_0

    iget-object v8, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1372
    iget-object v7, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1375
    .local v0, "configKey":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    .line 1376
    .local v3, "link":Landroid/net/wifi/WifiConfiguration;
    if-eqz v3, :cond_2

    .line 1380
    iget v7, v3, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    if-nez v7, :cond_2

    .line 1384
    iget-boolean v7, v3, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-eq v7, v11, :cond_2

    .line 1388
    iget-object v7, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v7, :cond_2

    iget-object v7, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1392
    iget-object v7, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v2

    .line 1393
    .local v2, "length":I
    if-le v2, v12, :cond_3

    iget-object v7, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v9, :cond_3

    iget-object v7, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    add-int/lit8 v8, v2, -0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v9, :cond_3

    .line 1394
    iget-object v7, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    add-int/lit8 v8, v2, -0x1

    invoke-virtual {v7, v11, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 1399
    .local v5, "nonQuoteSSID":Ljava/lang/String;
    :goto_2
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1396
    .end local v5    # "nonQuoteSSID":Ljava/lang/String;
    :cond_3
    iget-object v5, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .restart local v5    # "nonQuoteSSID":Ljava/lang/String;
    goto :goto_2

    .line 1402
    .end local v0    # "configKey":Ljava/lang/String;
    .end local v2    # "length":I
    .end local v3    # "link":Landroid/net/wifi/WifiConfiguration;
    .end local v5    # "nonQuoteSSID":Ljava/lang/String;
    :cond_4
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-eqz v7, :cond_5

    .line 1403
    iget-object v7, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v2

    .line 1404
    .restart local v2    # "length":I
    if-le v2, v12, :cond_6

    iget-object v7, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v9, :cond_6

    iget-object v7, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    add-int/lit8 v8, v2, -0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v9, :cond_6

    .line 1406
    iget-object v7, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    add-int/lit8 v8, v2, -0x1

    invoke-virtual {v7, v11, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 1411
    .restart local v5    # "nonQuoteSSID":Ljava/lang/String;
    :goto_3
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1414
    .end local v2    # "length":I
    .end local v5    # "nonQuoteSSID":Ljava/lang/String;
    :cond_5
    new-array v7, v10, [Ljava/lang/String;

    invoke-interface {v4, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    check-cast v7, [Ljava/lang/String;

    goto/16 :goto_0

    .line 1408
    .restart local v2    # "length":I
    :cond_6
    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .restart local v5    # "nonQuoteSSID":Ljava/lang/String;
    goto :goto_3
.end method

.method public getWifiConfigForHomeSP(Lcom/android/server/wifi/hotspot2/pps/HomeSP;)Landroid/net/wifi/WifiConfiguration;
    .locals 4
    .param p1, "homeSP"    # Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    .prologue
    .line 3245
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getFQDN()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/ConfigurationMap;->getByFQDN(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 3246
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_0

    .line 3247
    const-string v1, "WifiConfigStore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not find network for homeSP "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getFQDN()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3249
    :cond_0
    return-object v0
.end method

.method getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;
    .locals 1
    .param p1, "netId"    # I

    .prologue
    .line 909
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/ConfigurationMap;->get(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    return-object v0
.end method

.method getWifiConfiguration(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 917
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/ConfigurationMap;->getByConfigKey(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    return-object v0
.end method

.method handleBSSIDBlackList(ILjava/lang/String;Z)Z
    .locals 8
    .param p1, "netId"    # I
    .param p2, "BSSID"    # Ljava/lang/String;
    .param p3, "enable"    # Z

    .prologue
    .line 4386
    const/4 v1, 0x0

    .line 4387
    .local v1, "found":Z
    if-nez p2, :cond_0

    move v2, v1

    .line 4409
    .end local v1    # "found":Z
    .local v2, "found":I
    :goto_0
    return v2

    .line 4391
    .end local v2    # "found":I
    .restart local v1    # "found":Z
    :cond_0
    iget-object v6, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v6}, Lcom/android/server/wifi/ConfigurationMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 4392
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 4393
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wifi/ScanDetailCache;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wifi/ScanDetail;

    .line 4394
    .local v5, "scanDetail":Lcom/android/server/wifi/ScanDetail;
    invoke-virtual {v5}, Lcom/android/server/wifi/ScanDetail;->getBSSIDString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 4395
    if-eqz p3, :cond_3

    .line 4396
    invoke-virtual {v5}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/net/wifi/ScanResult;->setAutoJoinStatus(I)V

    goto :goto_1

    .line 4401
    :cond_3
    invoke-virtual {v5}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v6

    const/16 v7, 0x10

    invoke-virtual {v6, v7}, Landroid/net/wifi/ScanResult;->setAutoJoinStatus(I)V

    .line 4403
    const/4 v1, 0x1

    goto :goto_1

    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    :cond_4
    move v2, v1

    .line 4409
    .restart local v2    # "found":I
    goto :goto_0
.end method

.method handleBadNetworkDisconnectReport(ILandroid/net/wifi/WifiInfo;)V
    .locals 4
    .param p1, "netId"    # I
    .param p2, "info"    # Landroid/net/wifi/WifiInfo;

    .prologue
    .line 4363
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/ConfigurationMap;->get(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 4364
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_2

    .line 4365
    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v1

    sget v2, Landroid/net/wifi/WifiConfiguration;->UNWANTED_BLACKLIST_SOFT_RSSI_24:I

    if-ge v1, v2, :cond_0

    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->is24GHz()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v1

    sget v2, Landroid/net/wifi/WifiConfiguration;->UNWANTED_BLACKLIST_SOFT_RSSI_5:I

    if-ge v1, v2, :cond_3

    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->is5GHz()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4369
    :cond_1
    sget v1, Landroid/net/wifi/WifiConfiguration;->UNWANTED_BLACKLIST_SOFT_BUMP:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfiguration;->setAutoJoinStatus(I)V

    .line 4371
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleBadNetworkDisconnectReport (+4) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 4382
    :cond_2
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/wifi/WifiConfigStore;->lastUnwantedNetworkDisconnectTimestamp:J

    .line 4383
    return-void

    .line 4375
    :cond_3
    sget v1, Landroid/net/wifi/WifiConfiguration;->UNWANTED_BLACKLIST_HARD_BUMP:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfiguration;->setAutoJoinStatus(I)V

    .line 4377
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleBadNetworkDisconnectReport (+8) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method handleDisabledAPs(ZLjava/lang/String;I)V
    .locals 7
    .param p1, "enable"    # Z
    .param p2, "BSSID"    # Ljava/lang/String;
    .param p3, "reason"    # I

    .prologue
    const/4 v6, 0x0

    .line 4420
    if-nez p2, :cond_1

    .line 4441
    :cond_0
    return-void

    .line 4422
    :cond_1
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v4}, Lcom/android/server/wifi/ConfigurationMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 4423
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 4424
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wifi/ScanDetailCache;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/ScanDetail;

    .line 4425
    .local v3, "scanDetail":Lcom/android/server/wifi/ScanDetail;
    invoke-virtual {v3}, Lcom/android/server/wifi/ScanDetail;->getBSSIDString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 4426
    if-eqz p1, :cond_4

    .line 4427
    const-string v4, "any"

    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 4428
    invoke-virtual {v3}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/net/wifi/ScanResult;->setAutoJoinStatus(I)V

    .line 4430
    invoke-virtual {v0, v6}, Landroid/net/wifi/WifiConfiguration;->setAutoJoinStatus(I)V

    goto :goto_0

    .line 4433
    :cond_4
    invoke-virtual {v3}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v4

    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Landroid/net/wifi/ScanResult;->setAutoJoinStatus(I)V

    .line 4434
    iput-object p2, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 4435
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/net/wifi/WifiConfiguration;->setAutoJoinStatus(I)V

    goto :goto_0
.end method

.method handleSSIDStateChange(IZLjava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "netId"    # I
    .param p2, "enabled"    # Z
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "BSSID"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x3

    const/16 v8, 0x80

    .line 4484
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v4, p1}, Lcom/android/server/wifi/ConfigurationMap;->get(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 4485
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v1, :cond_0

    .line 4486
    if-eqz p2, :cond_1

    .line 4487
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring SSID re-enabled from supplicant:  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " had autoJoinStatus="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " self added "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v1, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ephemeral "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v1, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 4590
    :cond_0
    :goto_0
    return-void

    .line 4493
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SSID temp disabled for  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " had autoJoinStatus="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " self added "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v1, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ephemeral "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v1, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 4496
    if-eqz p3, :cond_2

    .line 4497
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " message="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 4499
    :cond_2
    iget-boolean v4, v1, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    if-eqz v4, :cond_3

    iget-wide v4, v1, Landroid/net/wifi/WifiConfiguration;->lastConnected:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    .line 4503
    iget v4, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiConfigStore;->removeConfigAndSendBroadcastIfNeeded(I)Z

    goto :goto_0

    .line 4505
    :cond_3
    if-eqz p3, :cond_0

    .line 4506
    const-string v4, "no identity"

    invoke-virtual {p3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 4507
    const/16 v4, 0xa0

    invoke-virtual {v1, v4}, Landroid/net/wifi/WifiConfiguration;->setAutoJoinStatus(I)V

    .line 4510
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "no identity blacklisted "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 4583
    :cond_4
    :goto_1
    const-string v4, "\n"

    const-string v5, ""

    invoke-virtual {p3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 4584
    const-string v4, "\r"

    const-string v5, ""

    invoke-virtual {p3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 4585
    iput-object p3, v1, Landroid/net/wifi/WifiConfiguration;->lastFailure:Ljava/lang/String;

    goto/16 :goto_0

    .line 4513
    :cond_5
    const-string v4, "WRONG_KEY"

    invoke-virtual {p3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "AUTH_FAILED"

    invoke-virtual {p3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 4519
    :cond_6
    iget v4, v1, Landroid/net/wifi/WifiConfiguration;->numAuthFailures:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v1, Landroid/net/wifi/WifiConfiguration;->numAuthFailures:I

    .line 4520
    iget v4, v1, Landroid/net/wifi/WifiConfiguration;->numAuthFailures:I

    iget v5, p0, Lcom/android/server/wifi/WifiConfigStore;->maxAuthErrorsToBlacklist:I

    if-le v4, v5, :cond_4

    .line 4521
    invoke-virtual {v1, v8}, Landroid/net/wifi/WifiConfiguration;->setAutoJoinStatus(I)V

    .line 4523
    invoke-virtual {p0, p1, v9}, Lcom/android/server/wifi/WifiConfigStore;->disableNetwork(II)Z

    .line 4525
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Authentication failure, blacklist "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " num failures "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/net/wifi/WifiConfiguration;->numAuthFailures:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 4529
    :cond_7
    const-string v4, "DHCP FAILURE"

    invoke-virtual {p3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 4530
    iget v4, v1, Landroid/net/wifi/WifiConfiguration;->numIpConfigFailures:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v1, Landroid/net/wifi/WifiConfiguration;->numIpConfigFailures:I

    .line 4531
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v1, Landroid/net/wifi/WifiConfiguration;->lastConnectionFailure:J

    .line 4532
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConfigStore;->getMaxDhcpRetries()I

    move-result v2

    .line 4534
    .local v2, "maxRetries":I
    if-lez v2, :cond_8

    iget v4, v1, Landroid/net/wifi/WifiConfiguration;->numIpConfigFailures:I

    if-le v4, v2, :cond_8

    .line 4539
    invoke-virtual {v1, v8}, Landroid/net/wifi/WifiConfiguration;->setAutoJoinStatus(I)V

    .line 4541
    const/4 v4, 0x2

    invoke-virtual {p0, p1, v4}, Lcom/android/server/wifi/WifiConfigStore;->disableNetwork(II)Z

    .line 4542
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DHCP failure, blacklist "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " num failures "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/net/wifi/WifiConfiguration;->numIpConfigFailures:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 4548
    :cond_8
    const/4 v3, 0x0

    .line 4549
    .local v3, "result":Landroid/net/wifi/ScanResult;
    const-string v0, ""

    .line 4550
    .local v0, "bssidDbg":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v4

    if-eqz v4, :cond_9

    if-eqz p4, :cond_9

    .line 4551
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v4

    invoke-virtual {v4, p4}, Lcom/android/server/wifi/ScanDetailCache;->get(Ljava/lang/String;)Landroid/net/wifi/ScanResult;

    move-result-object v3

    .line 4553
    :cond_9
    if-eqz v3, :cond_a

    .line 4554
    iget v4, v3, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    .line 4555
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ipfail="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4556
    iget v4, v3, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    if-le v4, v9, :cond_a

    .line 4558
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v4, p4}, Lcom/android/server/wifi/WifiNative;->addToBlacklist(Ljava/lang/String;)Z

    .line 4559
    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Landroid/net/wifi/ScanResult;->setAutoJoinStatus(I)V

    .line 4564
    :cond_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "blacklisted "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " due to IP config failures, count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/net/wifi/WifiConfiguration;->numIpConfigFailures:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " disableReason="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 4571
    .end local v0    # "bssidDbg":Ljava/lang/String;
    .end local v2    # "maxRetries":I
    .end local v3    # "result":Landroid/net/wifi/ScanResult;
    :cond_b
    const-string v4, "CONN_FAILED"

    invoke-virtual {p3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 4572
    iget v4, v1, Landroid/net/wifi/WifiConfiguration;->numConnectionFailures:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v1, Landroid/net/wifi/WifiConfiguration;->numConnectionFailures:I

    .line 4573
    iget v4, v1, Landroid/net/wifi/WifiConfiguration;->numConnectionFailures:I

    iget v5, p0, Lcom/android/server/wifi/WifiConfigStore;->maxConnectionErrorsToBlacklist:I

    if-le v4, v5, :cond_4

    .line 4574
    invoke-virtual {v1, v8}, Landroid/net/wifi/WifiConfiguration;->setAutoJoinStatus(I)V

    .line 4576
    const/4 v4, 0x4

    invoke-virtual {p0, p1, v4}, Lcom/android/server/wifi/WifiConfigStore;->disableNetwork(II)Z

    .line 4578
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Connection failure, blacklist "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " num failures "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/net/wifi/WifiConfiguration;->numConnectionFailures:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method installKeys(Landroid/net/wifi/WifiEnterpriseConfig;Ljava/lang/String;)Z
    .locals 10
    .param p1, "config"    # Landroid/net/wifi/WifiEnterpriseConfig;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0x3f2

    .line 4593
    const/4 v3, 0x1

    .line 4594
    .local v3, "ret":Z
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "USRPKEY_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4595
    .local v2, "privKeyName":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "USRCERT_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4596
    .local v5, "userCertName":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CACERT_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4597
    .local v0, "caCertName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 4598
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientPrivateKey()Ljava/security/PrivateKey;

    move-result-object v6

    invoke-interface {v6}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v1

    .line 4599
    .local v1, "privKeyData":[B
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientPrivateKey()Ljava/security/PrivateKey;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/wifi/WifiConfigStore;->isHardwareBackedKey(Ljava/security/PrivateKey;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 4602
    const-string v6, "WifiConfigStore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "importing keys "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " in hardware backed store"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4603
    iget-object v6, p0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    const/4 v7, 0x0

    invoke-virtual {v6, v2, v1, v9, v7}, Landroid/security/KeyStore;->importKey(Ljava/lang/String;[BII)Z

    move-result v3

    .line 4614
    :goto_0
    if-nez v3, :cond_1

    move v4, v3

    .line 4649
    .end local v1    # "privKeyData":[B
    .end local v3    # "ret":Z
    .local v4, "ret":Z
    :goto_1
    return v4

    .line 4610
    .end local v4    # "ret":Z
    .restart local v1    # "privKeyData":[B
    .restart local v3    # "ret":Z
    :cond_0
    const-string v6, "WifiConfigStore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "importing keys "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " in software backed store"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4611
    iget-object v6, p0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    const/4 v7, 0x1

    invoke-virtual {v6, v2, v1, v9, v7}, Landroid/security/KeyStore;->importKey(Ljava/lang/String;[BII)Z

    move-result v3

    goto :goto_0

    .line 4618
    :cond_1
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/android/server/wifi/WifiConfigStore;->putCertInKeyStore(Ljava/lang/String;Ljava/security/cert/Certificate;)Z

    move-result v3

    .line 4619
    if-nez v3, :cond_2

    .line 4621
    iget-object v6, p0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v6, v2, v9}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    move v4, v3

    .line 4622
    .end local v3    # "ret":Z
    .restart local v4    # "ret":Z
    goto :goto_1

    .line 4626
    .end local v1    # "privKeyData":[B
    .end local v4    # "ret":Z
    .restart local v3    # "ret":Z
    :cond_2
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 4627
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v6

    invoke-direct {p0, v0, v6}, Lcom/android/server/wifi/WifiConfigStore;->putCertInKeyStore(Ljava/lang/String;Ljava/security/cert/Certificate;)Z

    move-result v3

    .line 4628
    if-nez v3, :cond_4

    .line 4629
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 4631
    iget-object v6, p0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v6, v2, v9}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    .line 4632
    iget-object v6, p0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v6, v5, v9}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    :cond_3
    move v4, v3

    .line 4634
    .end local v3    # "ret":Z
    .restart local v4    # "ret":Z
    goto :goto_1

    .line 4639
    .end local v4    # "ret":Z
    .restart local v3    # "ret":Z
    :cond_4
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 4640
    invoke-virtual {p1, p2}, Landroid/net/wifi/WifiEnterpriseConfig;->setClientCertificateAlias(Ljava/lang/String;)V

    .line 4641
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->resetClientKeyEntry()V

    .line 4644
    :cond_5
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 4645
    invoke-virtual {p1, p2}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAlias(Ljava/lang/String;)V

    .line 4646
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->resetCaCertificate()V

    :cond_6
    move v4, v3

    .line 4649
    .end local v3    # "ret":Z
    .restart local v4    # "ret":Z
    goto :goto_1
.end method

.method isEphemeral(I)Z
    .locals 2
    .param p1, "netId"    # I

    .prologue
    .line 1784
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/ConfigurationMap;->get(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1785
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isLastSelectedConfiguration(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 2329
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->lastSelectedConfiguration:Ljava/lang/String;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->lastSelectedConfiguration:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isNetworkConfigured(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 4
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4256
    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 4257
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    iget v3, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/ConfigurationMap;->get(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 4260
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 4257
    goto :goto_0

    .line 4260
    :cond_2
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/ConfigurationMap;->getByConfigKey(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method isUsingStaticIp(I)Z
    .locals 3
    .param p1, "netId"    # I

    .prologue
    .line 1776
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/ConfigurationMap;->get(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1777
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v1

    sget-object v2, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    if-ne v1, v2, :cond_0

    .line 1778
    const/4 v1, 0x1

    .line 1780
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public linkConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    .locals 14
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 3274
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wifi/ScanDetailCache;->size()I

    move-result v1

    const/4 v2, 0x6

    if-le v1, v2, :cond_1

    .line 3391
    :cond_0
    return-void

    .line 3278
    :cond_1
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3282
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v1}, Lcom/android/server/wifi/ConfigurationMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/wifi/WifiConfiguration;

    .line 3283
    .local v12, "link":Landroid/net/wifi/WifiConfiguration;
    const/4 v8, 0x0

    .line 3285
    .local v8, "doLink":Z
    invoke-virtual {v12}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3289
    iget v1, v12, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_2

    iget-boolean v1, v12, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-nez v1, :cond_2

    .line 3295
    iget-object v1, v12, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3299
    invoke-virtual {p0, v12}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v13

    .line 3300
    .local v13, "linkedScanDetailCache":Lcom/android/server/wifi/ScanDetailCache;
    if-eqz v13, :cond_3

    invoke-virtual {v13}, Lcom/android/server/wifi/ScanDetailCache;->size()I

    move-result v1

    const/4 v2, 0x6

    if-gt v1, v2, :cond_2

    .line 3305
    :cond_3
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->defaultGwMacAddress:Ljava/lang/String;

    if-eqz v1, :cond_c

    iget-object v1, v12, Landroid/net/wifi/WifiConfiguration;->defaultGwMacAddress:Ljava/lang/String;

    if-eqz v1, :cond_c

    .line 3307
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->defaultGwMacAddress:Ljava/lang/String;

    iget-object v2, v12, Landroid/net/wifi/WifiConfiguration;->defaultGwMacAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3308
    sget-boolean v1, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v1, :cond_4

    .line 3309
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "linkConfiguration link due to same gw "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v12, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " GW "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->defaultGwMacAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 3312
    :cond_4
    const/4 v8, 0x1

    .line 3340
    :cond_5
    const/4 v1, 0x1

    if-ne v8, v1, :cond_7

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiConfigStore;->onlyLinkSameCredentialConfigurations:Z

    if-eqz v1, :cond_7

    .line 3341
    iget-object v1, v12, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const-string v2, "psk"

    invoke-direct {p0, v1, v2}, Lcom/android/server/wifi/WifiConfigStore;->readNetworkVariableFromSupplicantFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3342
    .local v6, "apsk":Ljava/lang/String;
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const-string v2, "psk"

    invoke-direct {p0, v1, v2}, Lcom/android/server/wifi/WifiConfigStore;->readNetworkVariableFromSupplicantFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3343
    .local v7, "bpsk":Ljava/lang/String;
    if-eqz v6, :cond_6

    if-eqz v7, :cond_6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "*"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "Mjkd86jEMGn79KhKll298Uu7-deleted"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 3347
    :cond_6
    const/4 v8, 0x0

    .line 3351
    .end local v6    # "apsk":Ljava/lang/String;
    .end local v7    # "bpsk":Ljava/lang/String;
    :cond_7
    if-eqz v8, :cond_10

    .line 3352
    sget-boolean v1, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v1, :cond_8

    .line 3353
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "linkConfiguration: will link "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v12}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 3356
    :cond_8
    iget-object v1, v12, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    if-nez v1, :cond_9

    .line 3357
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v12, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    .line 3359
    :cond_9
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    if-nez v1, :cond_a

    .line 3360
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    .line 3362
    :cond_a
    iget-object v1, v12, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_b

    .line 3363
    iget-object v1, v12, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3364
    const/4 v1, 0x1

    iput-boolean v1, v12, Landroid/net/wifi/WifiConfiguration;->dirty:Z

    .line 3366
    :cond_b
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    invoke-virtual {v12}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    .line 3367
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    invoke-virtual {v12}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3368
    const/4 v1, 0x1

    iput-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->dirty:Z

    goto/16 :goto_0

    .line 3319
    :cond_c
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wifi/ScanDetailCache;->size()I

    move-result v1

    const/4 v2, 0x6

    if-gt v1, v2, :cond_5

    .line 3322
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wifi/ScanDetailCache;->keySet()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_d
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3323
    .local v0, "abssid":Ljava/lang/String;
    invoke-virtual {v13}, Lcom/android/server/wifi/ScanDetailCache;->keySet()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_e
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3324
    .local v3, "bbssid":Ljava/lang/String;
    sget-boolean v1, Lcom/android/server/wifi/WifiConfigStore;->VVDBG:Z

    if-eqz v1, :cond_f

    .line 3325
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "linkConfiguration try to link due to DBDC BSSID match "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v12, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bssida "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bssidb "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 3330
    :cond_f
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x10

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 3333
    const/4 v8, 0x1

    goto :goto_1

    .line 3371
    .end local v0    # "abssid":Ljava/lang/String;
    .end local v3    # "bbssid":Ljava/lang/String;
    .end local v11    # "i$":Ljava/util/Iterator;
    :cond_10
    iget-object v1, v12, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    if-eqz v1, :cond_12

    iget-object v1, v12, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 3373
    sget-boolean v1, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v1, :cond_11

    .line 3374
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "linkConfiguration: un-link "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v12}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 3377
    :cond_11
    const/4 v1, 0x1

    iput-boolean v1, v12, Landroid/net/wifi/WifiConfiguration;->dirty:Z

    .line 3378
    iget-object v1, v12, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3380
    :cond_12
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    if-eqz v1, :cond_2

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    invoke-virtual {v12}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 3382
    sget-boolean v1, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v1, :cond_13

    .line 3383
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "linkConfiguration: un-link "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v12}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 3386
    :cond_13
    const/4 v1, 0x1

    iput-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->dirty:Z

    .line 3387
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    invoke-virtual {v12}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method loadAndEnableAllNetworks()V
    .locals 1

    .prologue
    .line 729
    const-string v0, "Loading config and enabling all networks "

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiConfigStore;->log(Ljava/lang/String;)V

    .line 730
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConfigStore;->loadConfiguredNetworks()V

    .line 731
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConfigStore;->enableAllNetworks()V

    .line 732
    return-void
.end method

.method loadConfiguredNetworks()V
    .locals 23

    .prologue
    .line 1816
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/WifiConfigStore;->mLastPriority:I

    .line 1818
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/wifi/ConfigurationMap;->clear()V

    .line 1821
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mScanDetailCaches:Ljava/util/HashMap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/HashMap;->clear()V

    .line 1823
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1824
    .local v6, "configTlsResetList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    const/4 v14, -0x1

    .line 1825
    .local v14, "last_id":I
    const/4 v10, 0x0

    .line 1826
    .local v10, "done":Z
    :goto_0
    if-nez v10, :cond_e

    .line 1828
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Lcom/android/server/wifi/WifiNative;->listNetworks(I)Ljava/lang/String;

    move-result-object v17

    .line 1829
    .local v17, "listStr":Ljava/lang/String;
    if-nez v17, :cond_1

    .line 1929
    .end local v17    # "listStr":Ljava/lang/String;
    :cond_0
    return-void

    .line 1832
    .restart local v17    # "listStr":Ljava/lang/String;
    :cond_1
    const-string v20, "\n"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 1834
    .local v16, "lines":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiConfigStore;->showNetworks:Z

    move/from16 v20, v0

    if-eqz v20, :cond_2

    .line 1835
    const-string v20, "WifiConfigStore: loadConfiguredNetworks:  "

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;)V

    .line 1836
    move-object/from16 v4, v16

    .local v4, "arr$":[Ljava/lang/String;
    array-length v15, v4

    .local v15, "len$":I
    const/4 v13, 0x0

    .local v13, "i$":I
    :goto_1
    if-ge v13, v15, :cond_2

    aget-object v18, v4, v13

    .line 1837
    .local v18, "net":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;)V

    .line 1836
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 1842
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v13    # "i$":I
    .end local v15    # "len$":I
    .end local v18    # "net":Ljava/lang/String;
    :cond_2
    const/4 v12, 0x1

    .local v12, "i":I
    :goto_2
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v12, v0, :cond_c

    .line 1843
    aget-object v20, v16, v12

    const-string v21, "\t"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 1845
    .local v19, "result":[Ljava/lang/String;
    new-instance v5, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v5}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 1847
    .local v5, "config":Landroid/net/wifi/WifiConfiguration;
    const/16 v20, 0x0

    :try_start_0
    aget-object v20, v19, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    iput v0, v5, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 1848
    iget v14, v5, Landroid/net/wifi/WifiConfiguration;->networkId:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1853
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v20, v0

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_9

    .line 1854
    const/16 v20, 0x3

    aget-object v20, v19, v20

    const-string v21, "[CURRENT]"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v20

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_7

    .line 1855
    const/16 v20, 0x0

    move/from16 v0, v20

    iput v0, v5, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 1864
    :goto_3
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->readNetworkVariables(Landroid/net/wifi/WifiConfiguration;)V

    .line 1866
    new-instance v7, Ljava/util/zip/CRC32;

    invoke-direct {v7}, Ljava/util/zip/CRC32;-><init>()V

    .line 1867
    .local v7, "csum":Ljava/util/zip/Checksum;
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_3

    .line 1868
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->getBytes()[B

    move-result-object v20

    const/16 v21, 0x0

    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->getBytes()[B

    move-result-object v22

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-interface {v7, v0, v1, v2}, Ljava/util/zip/Checksum;->update([BII)V

    .line 1869
    invoke-interface {v7}, Ljava/util/zip/Checksum;->getValue()J

    move-result-wide v8

    .line 1870
    .local v8, "d":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mDeletedSSIDs:Ljava/util/Set;

    move-object/from16 v20, v0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 1871
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, " got CRC for SSID "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " -> "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", was deleted"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 1875
    .end local v8    # "d":J
    :cond_3
    iget v0, v5, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mLastPriority:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_4

    .line 1876
    iget v0, v5, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/WifiConfigStore;->mLastPriority:I

    .line 1879
    :cond_4
    sget-object v20, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/net/wifi/WifiConfiguration;->setIpAssignment(Landroid/net/IpConfiguration$IpAssignment;)V

    .line 1880
    sget-object v20, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/net/wifi/WifiConfiguration;->setProxySettings(Landroid/net/IpConfiguration$ProxySettings;)V

    .line 1882
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    move-object/from16 v20, v0

    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/android/server/wifi/ConfigurationMap;->getByConfigKey(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v20

    if-eqz v20, :cond_a

    .line 1884
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiConfigStore;->showNetworks:Z

    move/from16 v20, v0

    if-eqz v20, :cond_5

    const-string v20, "discarded duplicate network "

    iget v0, v5, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;I)V

    .line 1893
    :cond_5
    :goto_4
    if-eqz v5, :cond_6

    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v20, v0

    if-eqz v20, :cond_6

    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v20

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_6

    .line 1895
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/WifiEnterpriseConfig;->getTls12Enable()Z

    move-result v20

    if-nez v20, :cond_6

    .line 1897
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1842
    .end local v7    # "csum":Ljava/util/zip/Checksum;
    :cond_6
    :goto_5
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2

    .line 1849
    :catch_0
    move-exception v11

    .line 1850
    .local v11, "e":Ljava/lang/NumberFormatException;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Failed to read network-id \'"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x0

    aget-object v21, v19, v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\'"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto :goto_5

    .line 1856
    .end local v11    # "e":Ljava/lang/NumberFormatException;
    :cond_7
    const/16 v20, 0x3

    aget-object v20, v19, v20

    const-string v21, "[DISABLED]"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v20

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_8

    .line 1857
    const/16 v20, 0x1

    move/from16 v0, v20

    iput v0, v5, Landroid/net/wifi/WifiConfiguration;->status:I

    goto/16 :goto_3

    .line 1859
    :cond_8
    const/16 v20, 0x2

    move/from16 v0, v20

    iput v0, v5, Landroid/net/wifi/WifiConfiguration;->status:I

    goto/16 :goto_3

    .line 1861
    :cond_9
    const/16 v20, 0x2

    move/from16 v0, v20

    iput v0, v5, Landroid/net/wifi/WifiConfiguration;->status:I

    goto/16 :goto_3

    .line 1885
    .restart local v7    # "csum":Ljava/util/zip/Checksum;
    :cond_a
    invoke-static {v5}, Lcom/android/server/wifi/WifiServiceImpl;->isValid(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v20

    if-eqz v20, :cond_b

    .line 1886
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    move-object/from16 v20, v0

    iget v0, v5, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v21, v0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Lcom/android/server/wifi/ConfigurationMap;->put(ILandroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 1887
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiConfigStore;->showNetworks:Z

    move/from16 v20, v0

    if-eqz v20, :cond_5

    const-string v20, "loaded configured network"

    iget v0, v5, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;I)V

    goto/16 :goto_4

    .line 1889
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiConfigStore;->showNetworks:Z

    move/from16 v20, v0

    if-eqz v20, :cond_5

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Ignoring loaded configured for network "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget v0, v5, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " because config are not valid"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->log(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1902
    .end local v5    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v7    # "csum":Ljava/util/zip/Checksum;
    .end local v19    # "result":[Ljava/lang/String;
    :cond_c
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_d

    const/4 v10, 0x1

    .line 1903
    :goto_6
    goto/16 :goto_0

    .line 1902
    :cond_d
    const/4 v10, 0x0

    goto :goto_6

    .line 1905
    .end local v12    # "i":I
    .end local v16    # "lines":[Ljava/lang/String;
    .end local v17    # "listStr":Ljava/lang/String;
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiConfigStore;->readPasspointConfig()V

    .line 1906
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/WifiConfigStore;->readIpAndProxyConfigurations()V

    .line 1907
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/WifiConfigStore;->readNetworkHistory()V

    .line 1908
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/WifiConfigStore;->readAutoJoinConfig()V

    .line 1910
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/WifiConfigStore;->buildPnoList()V

    .line 1912
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/WifiConfigStore;->sendConfiguredNetworksChangedBroadcast()V

    .line 1914
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiConfigStore;->showNetworks:Z

    move/from16 v20, v0

    if-eqz v20, :cond_f

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "loadConfiguredNetworks loaded "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wifi/ConfigurationMap;->size()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " networks"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;)V

    .line 1916
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/wifi/ConfigurationMap;->isEmpty()Z

    move-result v20

    if-eqz v20, :cond_10

    .line 1918
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/WifiConfigStore;->logKernelTime()V

    .line 1919
    const-string v20, "/data/misc/wifi/wpa_supplicant.conf"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->logContents(Ljava/lang/String;)V

    .line 1920
    const-string v20, "/data/misc/wifi/wpa_supplicant.conf.tmp"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->logContents(Ljava/lang/String;)V

    .line 1921
    sget-object v20, Lcom/android/server/wifi/WifiConfigStore;->networkHistoryConfigFile:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->logContents(Ljava/lang/String;)V

    .line 1925
    :cond_10
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :goto_7
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_0

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiConfiguration;

    .line 1926
    .restart local v5    # "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/net/wifi/WifiEnterpriseConfig;->setTls12Enable(Z)V

    .line 1927
    const/16 v20, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v5, v1}, Lcom/android/server/wifi/WifiConfigStore;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;I)I

    goto :goto_7
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 4146
    const-string v0, "WifiConfigStore"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4147
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 4123
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;Z)V

    .line 4124
    return-void
.end method

.method protected loge(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "stack"    # Z

    .prologue
    .line 4127
    if-eqz p2, :cond_0

    .line 4128
    const-string v0, "WifiConfigStore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " stack:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x5

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4135
    :goto_0
    return-void

    .line 4133
    :cond_0
    const-string v0, "WifiConfigStore"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public makeChannelList(Landroid/net/wifi/WifiConfiguration;IZ)Ljava/util/HashSet;
    .locals 18
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "age"    # I
    .param p3, "restrict"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/WifiConfiguration;",
            "IZ)",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3394
    if-nez p1, :cond_1

    .line 3395
    const/4 v2, 0x0

    .line 3465
    :cond_0
    :goto_0
    return-object v2

    .line 3396
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 3398
    .local v8, "now_ms":J
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 3401
    .local v2, "channels":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v14

    if-nez v14, :cond_2

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    if-nez v14, :cond_2

    .line 3402
    const/4 v2, 0x0

    goto :goto_0

    .line 3405
    :cond_2
    sget-boolean v14, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v14, :cond_5

    .line 3406
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 3407
    .local v3, "dbg":Ljava/lang/StringBuilder;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "makeChannelList age="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " for "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " max="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiConfigStore;->maxNumActiveChannelsForPartialScans:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3410
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v14

    if-eqz v14, :cond_3

    .line 3411
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " bssids="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/server/wifi/ScanDetailCache;->size()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3413
    :cond_3
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    if-eqz v14, :cond_4

    .line 3414
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " linked="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    invoke-virtual {v15}, Ljava/util/HashMap;->size()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3416
    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 3419
    .end local v3    # "dbg":Ljava/lang/StringBuilder;
    :cond_5
    const/4 v10, 0x0

    .line 3420
    .local v10, "numChannels":I
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v14

    if-eqz v14, :cond_7

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/server/wifi/ScanDetailCache;->size()I

    move-result v14

    if-lez v14, :cond_7

    .line 3421
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/server/wifi/ScanDetailCache;->values()Ljava/util/Collection;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_6
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/wifi/ScanDetail;

    .line 3422
    .local v12, "scanDetail":Lcom/android/server/wifi/ScanDetail;
    invoke-virtual {v12}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v11

    .line 3424
    .local v11, "result":Landroid/net/wifi/ScanResult;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiConfigStore;->maxNumActiveChannelsForPartialScans:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v14

    if-le v10, v14, :cond_b

    .line 3440
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v11    # "result":Landroid/net/wifi/ScanResult;
    .end local v12    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    :cond_7
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    if-eqz v14, :cond_0

    .line 3441
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 3442
    .local v6, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v7

    .line 3443
    .local v7, "linked":Landroid/net/wifi/WifiConfiguration;
    if-eqz v7, :cond_8

    .line 3445
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v14

    if-eqz v14, :cond_8

    .line 3448
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/server/wifi/ScanDetailCache;->values()Ljava/util/Collection;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_9
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/wifi/ScanDetail;

    .line 3449
    .restart local v12    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    invoke-virtual {v12}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v11

    .line 3450
    .restart local v11    # "result":Landroid/net/wifi/ScanResult;
    sget-boolean v14, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v14, :cond_a

    .line 3451
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "has link: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v11, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " freq="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v11, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " age="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-wide v0, v11, Landroid/net/wifi/ScanResult;->seen:J

    move-wide/from16 v16, v0

    sub-long v16, v8, v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 3455
    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiConfigStore;->maxNumActiveChannelsForPartialScans:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v14

    if-gt v10, v14, :cond_8

    .line 3458
    iget-wide v14, v11, Landroid/net/wifi/ScanResult;->seen:J

    sub-long v14, v8, v14

    move/from16 v0, p2

    int-to-long v0, v0

    move-wide/from16 v16, v0

    cmp-long v14, v14, v16

    if-gez v14, :cond_9

    .line 3459
    iget v14, v11, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3460
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 3427
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "linked":Landroid/net/wifi/WifiConfiguration;
    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_b
    sget-boolean v14, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v14, :cond_c

    .line 3428
    iget-wide v14, v11, Landroid/net/wifi/ScanResult;->seen:J

    sub-long v14, v8, v14

    move/from16 v0, p2

    int-to-long v0, v0

    move-wide/from16 v16, v0

    cmp-long v14, v14, v16

    if-gez v14, :cond_d

    const/4 v13, 0x1

    .line 3429
    .local v13, "test":Z
    :goto_3
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "has "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v11, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " freq="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v11, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " age="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-wide v0, v11, Landroid/net/wifi/ScanResult;->seen:J

    move-wide/from16 v16, v0

    sub-long v16, v8, v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " ?="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 3432
    .end local v13    # "test":Z
    :cond_c
    iget-wide v14, v11, Landroid/net/wifi/ScanResult;->seen:J

    sub-long v14, v8, v14

    move/from16 v0, p2

    int-to-long v0, v0

    move-wide/from16 v16, v0

    cmp-long v14, v14, v16

    if-gez v14, :cond_6

    .line 3433
    iget v14, v11, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3434
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 3428
    :cond_d
    const/4 v13, 0x0

    goto :goto_3
.end method

.method migrateCerts(Landroid/net/wifi/WifiEnterpriseConfig;)V
    .locals 8
    .param p1, "config"    # Landroid/net/wifi/WifiEnterpriseConfig;

    .prologue
    const/4 v7, -0x1

    const/16 v6, 0x3f2

    .line 4739
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateAlias()Ljava/lang/String;

    move-result-object v1

    .line 4741
    .local v1, "client":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4742
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USRPKEY_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v6}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4743
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USRPKEY_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "USRPKEY_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v7, v4, v6}, Landroid/security/KeyStore;->duplicate(Ljava/lang/String;ILjava/lang/String;I)Z

    .line 4745
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USRCERT_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "USRCERT_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v7, v4, v6}, Landroid/security/KeyStore;->duplicate(Ljava/lang/String;ILjava/lang/String;I)Z

    .line 4750
    :cond_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAlias()Ljava/lang/String;

    move-result-object v0

    .line 4752
    .local v0, "ca":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4753
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CACERT_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v6}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4754
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CACERT_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CACERT_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v7, v4, v6}, Landroid/security/KeyStore;->duplicate(Ljava/lang/String;ILjava/lang/String;I)Z

    .line 4758
    :cond_1
    return-void
.end method

.method migrateOldEapTlsNative(Landroid/net/wifi/WifiEnterpriseConfig;I)Z
    .locals 6
    .param p1, "config"    # Landroid/net/wifi/WifiEnterpriseConfig;
    .param p2, "netId"    # I

    .prologue
    const/4 v2, 0x0

    .line 4690
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v4, "private_key"

    invoke-virtual {v3, p2, v4}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4695
    .local v1, "oldPrivateKey":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4734
    :cond_0
    :goto_0
    return v2

    .line 4699
    :cond_1
    invoke-static {v1}, Lcom/android/server/wifi/WifiConfigStore;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4700
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4705
    const-string v2, "engine"

    const-string v3, "1"

    invoke-virtual {p1, v2, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 4706
    const-string v2, "engine_id"

    const-string v3, "keystore"

    invoke-virtual {p1, v2, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 4714
    const-string v2, "keystore://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4715
    new-instance v0, Ljava/lang/String;

    const-string v2, "keystore://"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 4720
    .local v0, "keyName":Ljava/lang/String;
    :goto_1
    const-string v2, "key_id"

    invoke-virtual {p1, v2, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 4722
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v3, "engine"

    const-string v4, "engine"

    const-string v5, ""

    invoke-virtual {p1, v4, v5}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, p2, v3, v4}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    .line 4725
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v3, "engine_id"

    const-string v4, "engine_id"

    const-string v5, ""

    invoke-virtual {p1, v4, v5}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, p2, v3, v4}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    .line 4728
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v3, "key_id"

    const-string v4, "key_id"

    const-string v5, ""

    invoke-virtual {p1, v4, v5}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, p2, v3, v4}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    .line 4732
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v3, "private_key"

    const-string v4, "NULL"

    invoke-virtual {v2, p2, v3, v4}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    .line 4734
    const/4 v2, 0x1

    goto :goto_0

    .line 4718
    .end local v0    # "keyName":Ljava/lang/String;
    :cond_2
    move-object v0, v1

    .restart local v0    # "keyName":Ljava/lang/String;
    goto :goto_1
.end method

.method needsUnlockedKeyStore()Z
    .locals 4

    .prologue
    .line 2042
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v2}, Lcom/android/server/wifi/ConfigurationMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 2044
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2047
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConfigStore;->needsSoftwareBackedKeyStore(Landroid/net/wifi/WifiEnterpriseConfig;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2048
    const/4 v2, 0x1

    .line 2053
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method noteRoamingFailure(Landroid/net/wifi/WifiConfiguration;I)V
    .locals 6
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "reason"    # I

    .prologue
    .line 1163
    if-nez p1, :cond_0

    .line 1173
    :goto_0
    return-void

    .line 1164
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Landroid/net/wifi/WifiConfiguration;->lastRoamingFailure:J

    .line 1165
    const-wide/16 v0, 0x2

    iget-wide v2, p1, Landroid/net/wifi/WifiConfiguration;->roamingFailureBlackListTimeMilli:J

    const-wide/16 v4, 0x3e8

    add-long/2addr v2, v4

    mul-long/2addr v0, v2

    iput-wide v0, p1, Landroid/net/wifi/WifiConfiguration;->roamingFailureBlackListTimeMilli:J

    .line 1167
    iget-wide v0, p1, Landroid/net/wifi/WifiConfiguration;->roamingFailureBlackListTimeMilli:J

    iget v2, p0, Lcom/android/server/wifi/WifiConfigStore;->networkSwitchingBlackListPeriodMilli:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 1169
    iget v0, p0, Lcom/android/server/wifi/WifiConfigStore;->networkSwitchingBlackListPeriodMilli:I

    int-to-long v0, v0

    iput-wide v0, p1, Landroid/net/wifi/WifiConfiguration;->roamingFailureBlackListTimeMilli:J

    .line 1172
    :cond_1
    iput p2, p1, Landroid/net/wifi/WifiConfiguration;->lastRoamingFailureReason:I

    goto :goto_0
.end method

.method public notifyANQPDone(Ljava/lang/Long;Z)V
    .locals 1
    .param p1, "bssid"    # Ljava/lang/Long;
    .param p2, "success"    # Z

    .prologue
    .line 3517
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mSupplicantBridge:Lcom/android/server/wifi/hotspot2/SupplicantBridge;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->notifyANQPDone(Ljava/lang/Long;Z)V

    .line 3518
    return-void
.end method

.method public notifyANQPResponse(Lcom/android/server/wifi/ScanDetail;Ljava/util/Map;)V
    .locals 4
    .param p1, "scanDetail"    # Lcom/android/server/wifi/ScanDetail;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wifi/ScanDetail;",
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/wifi/anqp/Constants$ANQPElementType;",
            "Lcom/android/server/wifi/anqp/ANQPElement;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3523
    .local p2, "anqpElements":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Lcom/android/server/wifi/anqp/ANQPElement;>;"
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiConfigStore;->updateAnqpCache(Lcom/android/server/wifi/ScanDetail;Ljava/util/Map;)V

    .line 3524
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3534
    :cond_0
    :goto_0
    return-void

    .line 3527
    :cond_1
    invoke-virtual {p1, p2}, Lcom/android/server/wifi/ScanDetail;->propagateANQPInfo(Ljava/util/Map;)V

    .line 3529
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/server/wifi/WifiConfigStore;->matchNetwork(Lcom/android/server/wifi/ScanDetail;Z)Ljava/util/Map;

    move-result-object v0

    .line 3530
    .local v0, "matches":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/hotspot2/pps/HomeSP;Lcom/android/server/wifi/hotspot2/PasspointMatch;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/server/wifi/ScanDetail;->getSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " pass 2 matches: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/android/server/wifi/WifiConfigStore;->toMatchString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3533
    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/WifiConfigStore;->cacheScanResultForPasspointConfigs(Lcom/android/server/wifi/ScanDetail;Ljava/util/Map;)V

    goto :goto_0
.end method

.method readPasspointConfig()V
    .locals 4

    .prologue
    .line 2060
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mMOManager:Lcom/android/server/wifi/hotspot2/omadm/MOManager;

    invoke-virtual {v2}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->loadAllSPs()Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2066
    .local v1, "homeSPs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/pps/HomeSP;>;"
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v2, v1, v3}, Lcom/android/server/wifi/ConfigurationMap;->populatePasspointData(Ljava/util/Collection;Lcom/android/server/wifi/WifiNative;)V

    .line 2067
    .end local v1    # "homeSPs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/pps/HomeSP;>;"
    :goto_0
    return-void

    .line 2061
    :catch_0
    move-exception v0

    .line 2062
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not read /data/misc/wifi/PerProviderSubscription.conf : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method removeKeys(Landroid/net/wifi/WifiEnterpriseConfig;)V
    .locals 6
    .param p1, "config"    # Landroid/net/wifi/WifiEnterpriseConfig;

    .prologue
    const/16 v5, 0x3f2

    .line 4666
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateAlias()Ljava/lang/String;

    move-result-object v1

    .line 4668
    .local v1, "client":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4669
    const-string v2, "WifiConfigStore"

    const-string v3, "removing client private key and user cert"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4670
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USRPKEY_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    .line 4671
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USRCERT_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    .line 4674
    :cond_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAlias()Ljava/lang/String;

    move-result-object v0

    .line 4676
    .local v0, "ca":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4677
    const-string v2, "WifiConfigStore"

    const-string v3, "removing CA cert"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4678
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CACERT_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    .line 4680
    :cond_1
    return-void
.end method

.method removeNetwork(I)Z
    .locals 4
    .param p1, "netId"    # I

    .prologue
    .line 1427
    iget-boolean v2, p0, Lcom/android/server/wifi/WifiConfigStore;->showNetworks:Z

    if-eqz v2, :cond_0

    const-string v2, "removeNetwork"

    invoke-direct {p0, v2, p1}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;I)V

    .line 1428
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v2, p1}, Lcom/android/server/wifi/ConfigurationMap;->get(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1429
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v2, p1}, Lcom/android/server/wifi/WifiNative;->removeNetwork(I)Z

    move-result v1

    .line 1430
    .local v1, "ret":Z
    if-eqz v1, :cond_1

    .line 1431
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigStore;->removeConfigAndSendBroadcastIfNeeded(I)Z

    .line 1432
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1433
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/server/wifi/WifiConfigStore;->writePasspointConfigs(Ljava/lang/String;Lcom/android/server/wifi/hotspot2/pps/HomeSP;)V

    .line 1436
    :cond_1
    return v1
.end method

.method removeNetworksForApp(Landroid/content/pm/ApplicationInfo;)Z
    .locals 8
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    const/4 v6, 0x0

    .line 1500
    if-eqz p1, :cond_0

    iget-object v7, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-nez v7, :cond_1

    :cond_0
    move v5, v6

    .line 1522
    :goto_0
    return v5

    .line 1504
    :cond_1
    const/4 v5, 0x1

    .line 1506
    .local v5, "success":Z
    iget-object v7, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v7}, Lcom/android/server/wifi/ConfigurationMap;->values()Ljava/util/Collection;

    move-result-object v7

    new-array v6, v6, [Landroid/net/wifi/WifiConfiguration;

    invoke-interface {v7, v6}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/net/wifi/WifiConfiguration;

    .line 1508
    .local v2, "copiedConfigs":[Landroid/net/wifi/WifiConfiguration;
    move-object v0, v2

    .local v0, "arr$":[Landroid/net/wifi/WifiConfiguration;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_5

    aget-object v1, v0, v3

    .line 1509
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    iget v6, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget v7, v1, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    if-ne v6, v7, :cond_2

    iget-object v6, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v7, v1, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1508
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1512
    :cond_3
    iget-boolean v6, p0, Lcom/android/server/wifi/WifiConfigStore;->showNetworks:Z

    if-eqz v6, :cond_4

    .line 1513
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removing network "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", application \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\" uninstalled"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " from user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;)V

    .line 1517
    :cond_4
    iget v6, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p0, v6}, Lcom/android/server/wifi/WifiConfigStore;->removeNetwork(I)Z

    move-result v6

    and-int/2addr v5, v6

    goto :goto_2

    .line 1520
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_5
    iget-object v6, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiNative;->saveConfig()Z

    goto :goto_0
.end method

.method removeNetworksForUser(I)Z
    .locals 8
    .param p1, "userId"    # I

    .prologue
    .line 1526
    const/4 v5, 0x1

    .line 1528
    .local v5, "success":Z
    iget-object v6, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v6}, Lcom/android/server/wifi/ConfigurationMap;->values()Ljava/util/Collection;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Landroid/net/wifi/WifiConfiguration;

    invoke-interface {v6, v7}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/net/wifi/WifiConfiguration;

    .line 1530
    .local v2, "copiedConfigs":[Landroid/net/wifi/WifiConfiguration;
    move-object v0, v2

    .local v0, "arr$":[Landroid/net/wifi/WifiConfiguration;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v1, v0, v3

    .line 1531
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    iget v6, v1, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    if-eq p1, v6, :cond_1

    .line 1530
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1534
    :cond_1
    iget v6, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p0, v6}, Lcom/android/server/wifi/WifiConfigStore;->removeNetwork(I)Z

    move-result v6

    and-int/2addr v5, v6

    .line 1535
    iget-boolean v6, p0, Lcom/android/server/wifi/WifiConfigStore;->showNetworks:Z

    if-eqz v6, :cond_0

    .line 1536
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removing network "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " removed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;)V

    goto :goto_1

    .line 1541
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_2
    return v5
.end method

.method saveConfig()Z
    .locals 1

    .prologue
    .line 1665
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative;->saveConfig()Z

    move-result v0

    return v0
.end method

.method saveNetwork(Landroid/net/wifi/WifiConfiguration;I)Lcom/android/server/wifi/NetworkUpdateResult;
    .locals 9
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "uid"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v8, -0x1

    const/4 v4, 0x0

    .line 1077
    if-eqz p1, :cond_0

    iget v6, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v6, v8, :cond_1

    iget-object v6, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v6, :cond_1

    .line 1079
    :cond_0
    new-instance v3, Lcom/android/server/wifi/NetworkUpdateResult;

    invoke-direct {v3, v8}, Lcom/android/server/wifi/NetworkUpdateResult;-><init>(I)V

    .line 1132
    :goto_0
    return-object v3

    .line 1081
    :cond_1
    sget-boolean v6, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v6, :cond_2

    const-string v6, "WifiConfigStore: saveNetwork netId"

    iget v7, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-direct {p0, v6, v7}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;I)V

    .line 1082
    :cond_2
    sget-boolean v6, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v6, :cond_3

    .line 1083
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WifiConfigStore saveNetwork, size="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v7}, Lcom/android/server/wifi/ConfigurationMap;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " SSID="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 1089
    :cond_3
    iget-object v6, p0, Lcom/android/server/wifi/WifiConfigStore;->mDeletedEphemeralSSIDs:Ljava/util/Set;

    iget-object v7, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1090
    sget-boolean v6, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v6, :cond_4

    .line 1091
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WifiConfigStore: removed from ephemeral blacklist: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 1097
    :cond_4
    iget v6, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v6, v8, :cond_b

    const/4 v2, 0x1

    .line 1098
    .local v2, "newNetwork":Z
    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiConfigStore;->addOrUpdateNetworkNative(Landroid/net/wifi/WifiConfiguration;I)Lcom/android/server/wifi/NetworkUpdateResult;

    move-result-object v3

    .line 1099
    .local v3, "result":Lcom/android/server/wifi/NetworkUpdateResult;
    invoke-virtual {v3}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v1

    .line 1101
    .local v1, "netId":I
    sget-boolean v6, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v6, :cond_5

    const-string v6, "WifiConfigStore: saveNetwork got it back netId="

    invoke-direct {p0, v6, v1}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;I)V

    .line 1104
    :cond_5
    if-eqz v2, :cond_7

    if-eq v1, v8, :cond_7

    .line 1105
    sget-boolean v6, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v6, :cond_6

    const-string v6, "WifiConfigStore: will enable netId="

    invoke-direct {p0, v6, v1}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;I)V

    .line 1107
    :cond_6
    iget-object v6, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v6, v1, v4}, Lcom/android/server/wifi/WifiNative;->enableNetwork(IZ)Z

    .line 1108
    iget-object v6, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v6, v1}, Lcom/android/server/wifi/ConfigurationMap;->get(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1109
    .local v0, "conf":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_7

    .line 1110
    iput v5, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 1113
    .end local v0    # "conf":Landroid/net/wifi/WifiConfiguration;
    :cond_7
    iget-object v6, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v6, v1}, Lcom/android/server/wifi/ConfigurationMap;->get(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1114
    .restart local v0    # "conf":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_a

    .line 1115
    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    if-eqz v6, :cond_9

    .line 1116
    sget-boolean v6, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v6, :cond_8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WifiConfigStore: re-enabling: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;)V

    .line 1119
    :cond_8
    invoke-virtual {v0, v4}, Landroid/net/wifi/WifiConfiguration;->setAutoJoinStatus(I)V

    .line 1120
    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p0, v6, v4}, Lcom/android/server/wifi/WifiConfigStore;->enableNetworkWithoutBroadcast(IZ)Z

    .line 1122
    :cond_9
    sget-boolean v6, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v6, :cond_a

    .line 1123
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WifiConfigStore: saveNetwork got config back netId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 1129
    :cond_a
    iget-object v6, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiNative;->saveConfig()Z

    .line 1130
    invoke-virtual {v3}, Lcom/android/server/wifi/NetworkUpdateResult;->isNewNetwork()Z

    move-result v6

    if-eqz v6, :cond_c

    :goto_2
    invoke-direct {p0, v0, v4}, Lcom/android/server/wifi/WifiConfigStore;->sendConfiguredNetworksChangedBroadcast(Landroid/net/wifi/WifiConfiguration;I)V

    goto/16 :goto_0

    .end local v0    # "conf":Landroid/net/wifi/WifiConfiguration;
    .end local v1    # "netId":I
    .end local v2    # "newNetwork":Z
    .end local v3    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    :cond_b
    move v2, v4

    .line 1097
    goto/16 :goto_1

    .restart local v0    # "conf":Landroid/net/wifi/WifiConfiguration;
    .restart local v1    # "netId":I
    .restart local v2    # "newNetwork":Z
    .restart local v3    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    :cond_c
    move v4, v5

    .line 1130
    goto :goto_2
.end method

.method saveWifiConfigBSSID(Landroid/net/wifi/WifiConfiguration;)V
    .locals 4
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 1177
    if-eqz p1, :cond_0

    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1201
    :cond_0
    :goto_0
    return-void

    .line 1183
    :cond_1
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    const-string v1, "any"

    if-ne v0, v1, :cond_0

    .line 1188
    :cond_2
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->autoJoinBSSID:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saveWifiConfigBSSID Setting BSSID for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->autoJoinBSSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 1191
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const-string v2, "bssid"

    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->autoJoinBSSID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed to set BSSID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->autoJoinBSSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 1196
    :cond_3
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->autoJoinBSSID:Ljava/lang/String;

    const-string v1, "any"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1198
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative;->saveConfig()Z

    goto :goto_0
.end method

.method selectNetwork(Landroid/net/wifi/WifiConfiguration;ZI)Z
    .locals 8
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "updatePriorities"    # Z
    .param p3, "uid"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v7, -0x1

    const/4 v3, 0x0

    .line 1009
    sget-boolean v5, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v5, :cond_0

    const-string v5, "selectNetwork"

    iget v6, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-direct {p0, v5, v6}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;I)V

    .line 1010
    :cond_0
    iget v5, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v5, v7, :cond_1

    .line 1064
    :goto_0
    return v3

    .line 1013
    :cond_1
    iget v5, p0, Lcom/android/server/wifi/WifiConfigStore;->mLastPriority:I

    if-eq v5, v7, :cond_2

    iget v5, p0, Lcom/android/server/wifi/WifiConfigStore;->mLastPriority:I

    const v6, 0xf4240

    if-le v5, v6, :cond_5

    .line 1014
    :cond_2
    iget-object v5, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v5}, Lcom/android/server/wifi/ConfigurationMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 1015
    .local v0, "config2":Landroid/net/wifi/WifiConfiguration;
    if-eqz p2, :cond_3

    .line 1016
    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-eq v5, v7, :cond_3

    .line 1017
    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 1018
    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget v6, p1, Landroid/net/wifi/WifiConfiguration;->priority:I

    invoke-direct {p0, v5, v6}, Lcom/android/server/wifi/WifiConfigStore;->setNetworkPriorityNative(II)Z

    goto :goto_1

    .line 1022
    .end local v0    # "config2":Landroid/net/wifi/WifiConfiguration;
    :cond_4
    iput v3, p0, Lcom/android/server/wifi/WifiConfigStore;->mLastPriority:I

    .line 1026
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_5
    if-eqz p2, :cond_6

    .line 1027
    iget v5, p0, Lcom/android/server/wifi/WifiConfigStore;->mLastPriority:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/server/wifi/WifiConfigStore;->mLastPriority:I

    iput v5, p1, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 1028
    iget v5, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget v6, p1, Landroid/net/wifi/WifiConfiguration;->priority:I

    invoke-direct {p0, v5, v6}, Lcom/android/server/wifi/WifiConfigStore;->setNetworkPriorityNative(II)Z

    .line 1029
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigStore;->buildPnoList()V

    .line 1032
    :cond_6
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1034
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wifi/ScanDetailCache;->size()I

    move-result v5

    if-eqz v5, :cond_9

    .line 1035
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wifi/ScanDetailCache;->getFirst()Lcom/android/server/wifi/ScanDetail;

    move-result-object v2

    .line 1036
    .local v2, "result":Lcom/android/server/wifi/ScanDetail;
    if-nez v2, :cond_8

    .line 1037
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not find scan result for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 1049
    .end local v2    # "result":Lcom/android/server/wifi/ScanDetail;
    :cond_7
    :goto_2
    iget-object v5, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/server/wifi/WifiNative;->setHs20(Z)V

    .line 1051
    if-eqz p2, :cond_a

    .line 1052
    iget-object v5, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiNative;->saveConfig()Z

    .line 1056
    :goto_3
    invoke-virtual {p0, p1, p3}, Lcom/android/server/wifi/WifiConfigStore;->updateLastConnectUid(Landroid/net/wifi/WifiConfiguration;I)Z

    .line 1057
    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiConfigStore;->writeKnownNetworkHistory(Z)V

    .line 1060
    iget v3, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p0, v3, v4}, Lcom/android/server/wifi/WifiConfigStore;->enableNetworkWithoutBroadcast(IZ)Z

    move v3, v4

    .line 1064
    goto/16 :goto_0

    .line 1039
    .restart local v2    # "result":Lcom/android/server/wifi/ScanDetail;
    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Setting SSID for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/server/wifi/ScanDetail;->getSSID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/wifi/WifiConfigStore;->log(Ljava/lang/String;)V

    .line 1040
    iget v5, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v2}, Lcom/android/server/wifi/ScanDetail;->getSSID()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/android/server/wifi/WifiConfigStore;->setSSIDNative(ILjava/lang/String;)Z

    .line 1041
    invoke-virtual {v2}, Lcom/android/server/wifi/ScanDetail;->getSSID()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_2

    .line 1045
    .end local v2    # "result":Lcom/android/server/wifi/ScanDetail;
    :cond_9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not find bssid for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto :goto_2

    .line 1054
    :cond_a
    iget-object v5, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget v6, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v5, v6}, Lcom/android/server/wifi/WifiNative;->selectNetwork(I)Z

    goto :goto_3
.end method

.method public setConfiguredBand(I)V
    .locals 0
    .param p1, "band"    # I

    .prologue
    .line 2325
    iput p1, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredBand:I

    .line 2326
    return-void
.end method

.method setDefaultGwMacAddress(ILjava/lang/String;)V
    .locals 2
    .param p1, "netId"    # I
    .param p2, "macAddress"    # Ljava/lang/String;

    .prologue
    .line 1749
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/ConfigurationMap;->get(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1750
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    .line 1752
    iput-object p2, v0, Landroid/net/wifi/WifiConfiguration;->defaultGwMacAddress:Ljava/lang/String;

    .line 1754
    :cond_0
    return-void
.end method

.method public setLastSelectedConfiguration(I)V
    .locals 5
    .param p1, "netId"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 2298
    sget-boolean v1, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v1, :cond_0

    .line 2299
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLastSelectedConfiguration "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 2301
    :cond_0
    const/4 v1, -0x1

    if-ne p1, v1, :cond_2

    .line 2302
    iput-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->lastSelectedConfiguration:Ljava/lang/String;

    .line 2318
    :cond_1
    :goto_0
    return-void

    .line 2304
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 2305
    .local v0, "selected":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_3

    .line 2306
    iput-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->lastSelectedConfiguration:Ljava/lang/String;

    goto :goto_0

    .line 2308
    :cond_3
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->lastSelectedConfiguration:Ljava/lang/String;

    .line 2309
    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->numConnectionFailures:I

    .line 2310
    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->numIpConfigFailures:I

    .line 2311
    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->numAuthFailures:I

    .line 2312
    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    .line 2313
    sget-boolean v1, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v1, :cond_1

    .line 2314
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLastSelectedConfiguration now: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->lastSelectedConfiguration:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method setStaticIpConfiguration(ILandroid/net/StaticIpConfiguration;)V
    .locals 2
    .param p1, "netId"    # I
    .param p2, "staticIpConfiguration"    # Landroid/net/StaticIpConfiguration;

    .prologue
    .line 1739
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/ConfigurationMap;->get(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1740
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    .line 1741
    invoke-virtual {v0, p2}, Landroid/net/wifi/WifiConfiguration;->setStaticIpConfiguration(Landroid/net/StaticIpConfiguration;)V

    .line 1743
    :cond_0
    return-void
.end method

.method startWpsPbc(Landroid/net/wifi/WpsInfo;)Landroid/net/wifi/WpsResult;
    .locals 3
    .param p1, "config"    # Landroid/net/wifi/WpsInfo;

    .prologue
    .line 1712
    new-instance v0, Landroid/net/wifi/WpsResult;

    invoke-direct {v0}, Landroid/net/wifi/WpsResult;-><init>()V

    .line 1713
    .local v0, "result":Landroid/net/wifi/WpsResult;
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v2, p1, Landroid/net/wifi/WpsInfo;->BSSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiNative;->startWpsPbc(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1715
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigStore;->markAllNetworksDisabled()V

    .line 1716
    sget-object v1, Landroid/net/wifi/WpsResult$Status;->SUCCESS:Landroid/net/wifi/WpsResult$Status;

    iput-object v1, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    .line 1721
    :goto_0
    return-object v0

    .line 1718
    :cond_0
    const-string v1, "Failed to start WPS push button configuration"

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 1719
    sget-object v1, Landroid/net/wifi/WpsResult$Status;->FAILURE:Landroid/net/wifi/WpsResult$Status;

    iput-object v1, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    goto :goto_0
.end method

.method startWpsWithPinFromAccessPoint(Landroid/net/wifi/WpsInfo;)Landroid/net/wifi/WpsResult;
    .locals 4
    .param p1, "config"    # Landroid/net/wifi/WpsInfo;

    .prologue
    .line 1675
    new-instance v0, Landroid/net/wifi/WpsResult;

    invoke-direct {v0}, Landroid/net/wifi/WpsResult;-><init>()V

    .line 1676
    .local v0, "result":Landroid/net/wifi/WpsResult;
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v2, p1, Landroid/net/wifi/WpsInfo;->BSSID:Ljava/lang/String;

    iget-object v3, p1, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wifi/WifiNative;->startWpsRegistrar(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1678
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigStore;->markAllNetworksDisabled()V

    .line 1679
    sget-object v1, Landroid/net/wifi/WpsResult$Status;->SUCCESS:Landroid/net/wifi/WpsResult$Status;

    iput-object v1, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    .line 1684
    :goto_0
    return-object v0

    .line 1681
    :cond_0
    const-string v1, "Failed to start WPS pin method configuration"

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 1682
    sget-object v1, Landroid/net/wifi/WpsResult$Status;->FAILURE:Landroid/net/wifi/WpsResult$Status;

    iput-object v1, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    goto :goto_0
.end method

.method startWpsWithPinFromDevice(Landroid/net/wifi/WpsInfo;)Landroid/net/wifi/WpsResult;
    .locals 3
    .param p1, "config"    # Landroid/net/wifi/WpsInfo;

    .prologue
    .line 1693
    new-instance v0, Landroid/net/wifi/WpsResult;

    invoke-direct {v0}, Landroid/net/wifi/WpsResult;-><init>()V

    .line 1694
    .local v0, "result":Landroid/net/wifi/WpsResult;
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v2, p1, Landroid/net/wifi/WpsInfo;->BSSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiNative;->startWpsPinDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WpsResult;->pin:Ljava/lang/String;

    .line 1696
    iget-object v1, v0, Landroid/net/wifi/WpsResult;->pin:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1697
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigStore;->markAllNetworksDisabled()V

    .line 1698
    sget-object v1, Landroid/net/wifi/WpsResult$Status;->SUCCESS:Landroid/net/wifi/WpsResult$Status;

    iput-object v1, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    .line 1703
    :goto_0
    return-object v0

    .line 1700
    :cond_0
    const-string v1, "Failed to start WPS pin method configuration"

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 1701
    sget-object v1, Landroid/net/wifi/WpsResult$Status;->FAILURE:Landroid/net/wifi/WpsResult$Status;

    iput-object v1, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    goto :goto_0
.end method

.method public trimANQPCache(Z)V
    .locals 2
    .param p1, "all"    # Z

    .prologue
    .line 690
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mAnqpCache:Lcom/android/server/wifi/hotspot2/AnqpCache;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wifi/hotspot2/AnqpCache;->clear(ZZ)V

    .line 691
    return-void
.end method

.method updateConfiguration(Landroid/net/wifi/WifiInfo;)V
    .locals 8
    .param p1, "info"    # Landroid/net/wifi/WifiInfo;

    .prologue
    .line 878
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 879
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 880
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v6

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/wifi/ScanDetailCache;->getScanDetail(Ljava/lang/String;)Lcom/android/server/wifi/ScanDetail;

    move-result-object v5

    .line 881
    .local v5, "scanDetail":Lcom/android/server/wifi/ScanDetail;
    if-eqz v5, :cond_0

    .line 882
    invoke-virtual {v5}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v4

    .line 883
    .local v4, "result":Landroid/net/wifi/ScanResult;
    iget-wide v2, v4, Landroid/net/wifi/ScanResult;->seen:J

    .line 884
    .local v2, "previousSeen":J
    iget v1, v4, Landroid/net/wifi/ScanResult;->level:I

    .line 887
    .local v1, "previousRssi":I
    invoke-virtual {v5}, Lcom/android/server/wifi/ScanDetail;->setSeen()J

    .line 888
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v6

    iput v6, v4, Landroid/net/wifi/ScanResult;->level:I

    .line 891
    sget v6, Lcom/android/server/wifi/WifiAutoJoinController;->mScanResultMaximumAge:I

    invoke-virtual {v4, v1, v2, v3, v6}, Landroid/net/wifi/ScanResult;->averageRssi(IJI)V

    .line 893
    sget-boolean v6, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v6, :cond_0

    .line 894
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateConfiguration freq="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " BSSID="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " RSSI="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 901
    .end local v1    # "previousRssi":I
    .end local v2    # "previousSeen":J
    .end local v4    # "result":Landroid/net/wifi/ScanResult;
    .end local v5    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    :cond_0
    return-void
.end method

.method public updateLastConnectUid(Landroid/net/wifi/WifiConfiguration;I)Z
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "uid"    # I

    .prologue
    const/4 v0, 0x1

    .line 985
    if-eqz p1, :cond_0

    .line 986
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->lastConnectUid:I

    if-eq v1, p2, :cond_0

    .line 987
    iput p2, p1, Landroid/net/wifi/WifiConfiguration;->lastConnectUid:I

    .line 988
    iput-boolean v0, p1, Landroid/net/wifi/WifiConfiguration;->dirty:Z

    .line 992
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateSavedNetworkHistory(Lcom/android/server/wifi/ScanDetail;)Z
    .locals 13
    .param p1, "scanDetail"    # Lcom/android/server/wifi/ScanDetail;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 3659
    invoke-virtual {p1}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v7

    .line 3660
    .local v7, "scanResult":Landroid/net/wifi/ScanResult;
    invoke-virtual {p1}, Lcom/android/server/wifi/ScanDetail;->getNetworkDetail()Lcom/android/server/wifi/hotspot2/NetworkDetail;

    move-result-object v5

    .line 3662
    .local v5, "networkDetail":Lcom/android/server/wifi/hotspot2/NetworkDetail;
    const/4 v6, 0x0

    .line 3663
    .local v6, "numConfigFound":I
    if-nez v7, :cond_1

    move v9, v10

    .line 3744
    :cond_0
    :goto_0
    return v9

    .line 3666
    :cond_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v7, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3668
    .local v0, "SSID":Ljava/lang/String;
    invoke-virtual {v5}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->hasInterworking()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 3669
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigStore;->matchPasspointNetworks(Lcom/android/server/wifi/ScanDetail;)Ljava/util/Map;

    move-result-object v4

    .line 3670
    .local v4, "matches":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/hotspot2/pps/HomeSP;Lcom/android/server/wifi/hotspot2/PasspointMatch;>;"
    if-eqz v4, :cond_2

    .line 3671
    invoke-direct {p0, p1, v4}, Lcom/android/server/wifi/WifiConfigStore;->cacheScanResultForPasspointConfigs(Lcom/android/server/wifi/ScanDetail;Ljava/util/Map;)V

    .line 3672
    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v11

    if-nez v11, :cond_0

    move v9, v10

    goto :goto_0

    .line 3676
    .end local v4    # "matches":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/hotspot2/pps/HomeSP;Lcom/android/server/wifi/hotspot2/PasspointMatch;>;"
    :cond_2
    iget-object v11, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v11}, Lcom/android/server/wifi/ConfigurationMap;->values()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_11

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 3677
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    const/4 v2, 0x0

    .line 3679
    .local v2, "found":Z
    iget-object v11, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v11, :cond_4

    iget-object v11, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 3681
    :cond_4
    sget-boolean v11, Lcom/android/server/wifi/WifiConfigStore;->VVDBG:Z

    if-eqz v11, :cond_3

    .line 3682
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateSavedNetworkHistory(): SSID mismatch "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " SSID="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 3687
    :cond_5
    sget-boolean v11, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v11, :cond_6

    .line 3688
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateSavedNetworkHistory(): try "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " SSID="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v7, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v7, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " ajst="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v1, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 3693
    :cond_6
    iget-object v11, v7, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v12, "WEP"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_a

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v11

    const-string v12, "WEP"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 3695
    const/4 v2, 0x1

    .line 3725
    :cond_7
    :goto_2
    if-eqz v2, :cond_8

    .line 3726
    add-int/lit8 v6, v6, 0x1

    .line 3727
    const/4 v11, 0x0

    invoke-direct {p0, v1, p1, v11}, Lcom/android/server/wifi/WifiConfigStore;->cacheScanResultForConfig(Landroid/net/wifi/WifiConfiguration;Lcom/android/server/wifi/ScanDetail;Lcom/android/server/wifi/hotspot2/PasspointMatch;)V

    .line 3730
    :cond_8
    sget-boolean v11, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v11, :cond_3

    if-eqz v2, :cond_3

    .line 3731
    const-string v8, ""

    .line 3732
    .local v8, "status":Ljava/lang/String;
    iget v11, v7, Landroid/net/wifi/ScanResult;->autoJoinStatus:I

    if-lez v11, :cond_9

    .line 3733
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " status="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v7, Landroid/net/wifi/ScanResult;->autoJoinStatus:I

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3735
    :cond_9
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "        got known scan result "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v7, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " key : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " num: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/server/wifi/ScanDetailCache;->size()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " rssi="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v7, Landroid/net/wifi/ScanResult;->level:I

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " freq="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v7, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3696
    .end local v8    # "status":Ljava/lang/String;
    :cond_a
    iget-object v11, v7, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v12, "PSK"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_b

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v11

    const-string v12, "PSK"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 3698
    const/4 v2, 0x1

    goto/16 :goto_2

    .line 3700
    :cond_b
    iget-object v11, v7, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v12, "WAPI-KEY"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_c

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v11

    const-string v12, "PSK"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 3702
    const/4 v2, 0x1

    goto/16 :goto_2

    .line 3703
    :cond_c
    iget-object v11, v7, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v12, "WAPI-CERT"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_d

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v11

    const-string v12, "CERT"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 3705
    const/4 v2, 0x1

    goto/16 :goto_2

    .line 3707
    :cond_d
    iget-object v11, v7, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v12, "EAP"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_e

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v11

    const-string v12, "EAP"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 3709
    const/4 v2, 0x1

    goto/16 :goto_2

    .line 3710
    :cond_e
    iget-object v11, v7, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v12, "WEP"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_f

    iget-object v11, v7, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v12, "PSK"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_f

    iget-object v11, v7, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v12, "EAP"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_f

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v11

    const-string v12, "WEP"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_f

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v11

    const-string v12, "PSK"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_f

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v11

    const-string v12, "EAP"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_f

    .line 3716
    const/4 v2, 0x1

    goto/16 :goto_2

    .line 3717
    :cond_f
    iget-object v11, v7, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v12, "WAPI-KEY"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_10

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v11

    const-string v12, "WAPI_PSK"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 3719
    const/4 v2, 0x1

    goto/16 :goto_2

    .line 3720
    :cond_10
    iget-object v11, v7, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v12, "WAPI-CERT"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v11

    const-string v12, "WAPI_CERT"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 3722
    const/4 v2, 0x1

    goto/16 :goto_2

    .line 3744
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "found":Z
    :cond_11
    if-nez v6, :cond_0

    move v9, v10

    goto/16 :goto_0
.end method

.method updateStatus(ILandroid/net/NetworkInfo$DetailedState;)V
    .locals 4
    .param p1, "netId"    # I
    .param p2, "state"    # Landroid/net/NetworkInfo$DetailedState;

    .prologue
    const/4 v3, 0x0

    .line 1205
    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 1206
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/ConfigurationMap;->get(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1207
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_1

    .line 1225
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_0
    :goto_0
    return-void

    .line 1208
    .restart local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    sget-object v1, Lcom/android/server/wifi/WifiConfigStore$4;->$SwitchMap$android$net$NetworkInfo$DetailedState:[I

    invoke-virtual {p2}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1210
    :pswitch_0
    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 1212
    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiConfiguration;->setAutoJoinStatus(I)V

    goto :goto_0

    .line 1216
    :pswitch_1
    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    if-nez v1, :cond_0

    .line 1217
    const/4 v1, 0x2

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    goto :goto_0

    .line 1208
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public wifiConfigurationFromScanResult(Lcom/android/server/wifi/ScanDetail;)Landroid/net/wifi/WifiConfiguration;
    .locals 6
    .param p1, "scanDetail"    # Lcom/android/server/wifi/ScanDetail;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4055
    invoke-virtual {p1}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v1

    .line 4056
    .local v1, "result":Landroid/net/wifi/ScanResult;
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 4058
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 4060
    sget-boolean v2, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v2, :cond_0

    .line 4061
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WifiConfiguration from scan results "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " cap "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 4064
    :cond_0
    iget-object v2, v1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v3, "WEP"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4065
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    .line 4066
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    .line 4067
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v2, v5}, Ljava/util/BitSet;->set(I)V

    .line 4070
    :cond_1
    iget-object v2, v1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v3, "PSK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4071
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v5}, Ljava/util/BitSet;->set(I)V

    .line 4074
    :cond_2
    iget-object v2, v1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v3, "EAP"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4076
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 4077
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 4082
    :cond_3
    return-object v0
.end method

.method public writeKnownNetworkHistory(Z)V
    .locals 12
    .param p1, "force"    # Z

    .prologue
    .line 2088
    move v5, p1

    .line 2091
    .local v5, "needUpdate":Z
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2092
    .local v6, "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    iget-object v8, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v8}, Lcom/android/server/wifi/ConfigurationMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 2093
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    new-instance v8, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v8, v0}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2094
    iget-boolean v8, v0, Landroid/net/wifi/WifiConfiguration;->dirty:Z

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    .line 2095
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " rewrite network history for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 2096
    const/4 v8, 0x0

    iput-boolean v8, v0, Landroid/net/wifi/WifiConfiguration;->dirty:Z

    .line 2097
    const/4 v5, 0x1

    goto :goto_0

    .line 2100
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2101
    .local v3, "deletedSSIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v8, p0, Lcom/android/server/wifi/WifiConfigStore;->mDeletedSSIDs:Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 2102
    .local v1, "csum":Ljava/lang/Long;
    new-instance v8, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-direct {v8, v10, v11}, Ljava/lang/Long;-><init>(J)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2104
    .end local v1    # "csum":Ljava/lang/Long;
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2105
    .local v2, "deletedEphemeralSSIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/android/server/wifi/WifiConfigStore;->mDeletedEphemeralSSIDs:Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 2106
    .local v7, "ssid":Ljava/lang/String;
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2108
    .end local v7    # "ssid":Ljava/lang/String;
    :cond_3
    sget-boolean v8, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v8, :cond_4

    .line 2109
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " writeKnownNetworkHistory() num networks:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v9}, Lcom/android/server/wifi/ConfigurationMap;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " needWrite="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 2112
    :cond_4
    if-nez v5, :cond_5

    .line 2295
    :goto_3
    return-void

    .line 2115
    :cond_5
    iget-object v8, p0, Lcom/android/server/wifi/WifiConfigStore;->mWriter:Lcom/android/server/net/DelayedDiskWrite;

    sget-object v9, Lcom/android/server/wifi/WifiConfigStore;->networkHistoryConfigFile:Ljava/lang/String;

    new-instance v10, Lcom/android/server/wifi/WifiConfigStore$3;

    invoke-direct {v10, p0, v6, v3, v2}, Lcom/android/server/wifi/WifiConfigStore$3;-><init>(Lcom/android/server/wifi/WifiConfigStore;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v8, v9, v10}, Lcom/android/server/net/DelayedDiskWrite;->write(Ljava/lang/String;Lcom/android/server/net/DelayedDiskWrite$Writer;)V

    goto :goto_3
.end method

.method public writePasspointConfigs(Ljava/lang/String;Lcom/android/server/wifi/hotspot2/pps/HomeSP;)V
    .locals 4
    .param p1, "fqdn"    # Ljava/lang/String;
    .param p2, "homeSP"    # Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    .prologue
    .line 2070
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mWriter:Lcom/android/server/net/DelayedDiskWrite;

    const-string v1, "/data/misc/wifi/PerProviderSubscription.conf"

    new-instance v2, Lcom/android/server/wifi/WifiConfigStore$2;

    invoke-direct {v2, p0, p2, p1}, Lcom/android/server/wifi/WifiConfigStore$2;-><init>(Lcom/android/server/wifi/WifiConfigStore;Lcom/android/server/wifi/hotspot2/pps/HomeSP;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/net/DelayedDiskWrite;->write(Ljava/lang/String;Lcom/android/server/net/DelayedDiskWrite$Writer;Z)V

    .line 2085
    return-void
.end method
