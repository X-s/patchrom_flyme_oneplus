.class public Lcom/android/server/wifi/WifiNetworkHistory;
.super Ljava/lang/Object;
.source "WifiNetworkHistory.java"


# static fields
.field private static final AUTH_KEY:Ljava/lang/String; = "AUTH"

.field private static final BSSID_KEY:Ljava/lang/String; = "BSSID"

.field private static final BSSID_KEY_END:Ljava/lang/String; = "/BSSID"

.field private static final BSSID_STATUS_KEY:Ljava/lang/String; = "BSSID_STATUS"

.field private static final CHOICE_KEY:Ljava/lang/String; = "CHOICE"

.field private static final CHOICE_TIME_KEY:Ljava/lang/String; = "CHOICE_TIME"

.field private static final CONFIG_BSSID_KEY:Ljava/lang/String; = "CONFIG_BSSID"

.field static final CONFIG_KEY:Ljava/lang/String; = "CONFIG"

.field private static final CONNECT_UID_KEY:Ljava/lang/String; = "CONNECT_UID_KEY"

.field private static final CREATION_TIME_KEY:Ljava/lang/String; = "CREATION_TIME"

.field private static final CREATOR_NAME_KEY:Ljava/lang/String; = "CREATOR_NAME"

.field static final CREATOR_UID_KEY:Ljava/lang/String; = "CREATOR_UID_KEY"

.field private static final DATE_KEY:Ljava/lang/String; = "DATE"

.field private static final DBG:Z = true

.field private static final DEFAULT_GW_KEY:Ljava/lang/String; = "DEFAULT_GW"

.field private static final DELETED_EPHEMERAL_KEY:Ljava/lang/String; = "DELETED_EPHEMERAL"

.field private static final DID_SELF_ADD_KEY:Ljava/lang/String; = "DID_SELF_ADD"

.field private static final EPHEMERAL_KEY:Ljava/lang/String; = "EPHEMERAL"

.field private static final FAILURE_KEY:Ljava/lang/String; = "FAILURE"

.field private static final FQDN_KEY:Ljava/lang/String; = "FQDN"

.field private static final FREQ_KEY:Ljava/lang/String; = "FREQ"

.field private static final HAS_EVER_CONNECTED_KEY:Ljava/lang/String; = "HAS_EVER_CONNECTED"

.field private static final LINK_KEY:Ljava/lang/String; = "LINK"

.field private static final METERED_HINT_KEY:Ljava/lang/String; = "METERED_HINT"

.field private static final MILLI_KEY:Ljava/lang/String; = "MILLI"

.field static final NETWORK_HISTORY_CONFIG_FILE:Ljava/lang/String;

.field private static final NETWORK_ID_KEY:Ljava/lang/String; = "ID"

.field private static final NETWORK_SELECTION_DISABLE_REASON_KEY:Ljava/lang/String; = "NETWORK_SELECTION_DISABLE_REASON"

.field private static final NETWORK_SELECTION_STATUS_KEY:Ljava/lang/String; = "NETWORK_SELECTION_STATUS"

.field private static final NL:Ljava/lang/String; = "\n"

.field private static final NO_INTERNET_ACCESS_EXPECTED_KEY:Ljava/lang/String; = "NO_INTERNET_ACCESS_EXPECTED"

.field private static final NO_INTERNET_ACCESS_REPORTS_KEY:Ljava/lang/String; = "NO_INTERNET_ACCESS_REPORTS"

.field private static final NUM_ASSOCIATION_KEY:Ljava/lang/String; = "NUM_ASSOCIATION"

.field private static final PEER_CONFIGURATION_KEY:Ljava/lang/String; = "PEER_CONFIGURATION"

.field private static final PRIORITY_KEY:Ljava/lang/String; = "PRIORITY"

.field private static final RSSI_KEY:Ljava/lang/String; = "RSSI"

.field private static final SCORER_OVERRIDE_AND_SWITCH_KEY:Ljava/lang/String; = "SCORER_OVERRIDE_AND_SWITCH"

.field private static final SCORER_OVERRIDE_KEY:Ljava/lang/String; = "SCORER_OVERRIDE"

.field private static final SELF_ADDED_KEY:Ljava/lang/String; = "SELF_ADDED"

.field private static final SEPARATOR:Ljava/lang/String; = ":  "

.field static final SHARED_KEY:Ljava/lang/String; = "SHARED"

.field private static final SSID_KEY:Ljava/lang/String; = "SSID"

.field public static final TAG:Ljava/lang/String; = "WifiNetworkHistory"

.field private static final UPDATE_NAME_KEY:Ljava/lang/String; = "UPDATE_NAME"

.field private static final UPDATE_TIME_KEY:Ljava/lang/String; = "UPDATE_TIME"

.field private static final UPDATE_UID_KEY:Ljava/lang/String; = "UPDATE_UID"

.field private static final USER_APPROVED_KEY:Ljava/lang/String; = "USER_APPROVED"

.field private static final USE_EXTERNAL_SCORES_KEY:Ljava/lang/String; = "USE_EXTERNAL_SCORES"

.field private static final VALIDATED_INTERNET_ACCESS_KEY:Ljava/lang/String; = "VALIDATED_INTERNET_ACCESS"

.field private static final VDBG:Z = true


# instance fields
.field mContext:Landroid/content/Context;

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

.field protected final mWriter:Lcom/android/server/net/DelayedDiskWrite;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/wifi/WifiNetworkHistory;Landroid/net/wifi/WifiConfiguration;Ljava/util/concurrent/ConcurrentHashMap;)Lcom/android/server/wifi/ScanDetailCache;
    .locals 1
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "scanDetailCaches"    # Ljava/util/concurrent/ConcurrentHashMap;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiNetworkHistory;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;Ljava/util/concurrent/ConcurrentHashMap;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "set"    # Ljava/util/BitSet;
    .param p1, "strings"    # [Ljava/lang/String;

    .prologue
    invoke-static {p0, p1}, Lcom/android/server/wifi/WifiNetworkHistory;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 60
    const-string/jumbo v1, "/misc/wifi/networkHistory.txt"

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/WifiNetworkHistory;->NETWORK_HISTORY_CONFIG_FILE:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/LocalLog;Lcom/android/server/net/DelayedDiskWrite;)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "localLog"    # Landroid/util/LocalLog;
    .param p3, "writer"    # Lcom/android/server/net/DelayedDiskWrite;

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiNetworkHistory;->mLostConfigsDbg:Ljava/util/HashSet;

    .line 121
    iput-object p1, p0, Lcom/android/server/wifi/WifiNetworkHistory;->mContext:Landroid/content/Context;

    .line 122
    iput-object p3, p0, Lcom/android/server/wifi/WifiNetworkHistory;->mWriter:Lcom/android/server/net/DelayedDiskWrite;

    .line 123
    iput-object p2, p0, Lcom/android/server/wifi/WifiNetworkHistory;->mLocalLog:Landroid/util/LocalLog;

    .line 120
    return-void
.end method

.method private getScanDetailCache(Landroid/net/wifi/WifiConfiguration;Ljava/util/concurrent/ConcurrentHashMap;)Lcom/android/server/wifi/ScanDetailCache;
    .locals 3
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/WifiConfiguration;",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/wifi/ScanDetailCache;",
            ">;)",
            "Lcom/android/server/wifi/ScanDetailCache;"
        }
    .end annotation

    .prologue
    .local p2, "scanDetailCaches":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Integer;Lcom/android/server/wifi/ScanDetailCache;>;"
    const/4 v1, 0x0

    .line 655
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    return-object v1

    .line 656
    :cond_1
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/ScanDetailCache;

    .line 657
    .local v0, "cache":Lcom/android/server/wifi/ScanDetailCache;
    if-nez v0, :cond_2

    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 658
    new-instance v0, Lcom/android/server/wifi/ScanDetailCache;

    .end local v0    # "cache":Lcom/android/server/wifi/ScanDetailCache;
    invoke-direct {v0, p1}, Lcom/android/server/wifi/ScanDetailCache;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    .line 659
    .restart local v0    # "cache":Lcom/android/server/wifi/ScanDetailCache;
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 661
    :cond_2
    return-object v0
.end method

.method private localLog(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 648
    iget-object v0, p0, Lcom/android/server/wifi/WifiNetworkHistory;->mLocalLog:Landroid/util/LocalLog;

    if-eqz v0, :cond_0

    .line 649
    iget-object v0, p0, Lcom/android/server/wifi/WifiNetworkHistory;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 647
    :cond_0
    return-void
.end method

.method private static makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "set"    # Ljava/util/BitSet;
    .param p1, "strings"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 605
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 606
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/4 v1, -0x1

    .line 610
    .local v1, "nextSetBit":I
    array-length v2, p1

    invoke-virtual {p0, v3, v2}, Ljava/util/BitSet;->get(II)Ljava/util/BitSet;

    move-result-object p0

    .line 612
    :goto_0
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 613
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

    .line 617
    :cond_0
    invoke-virtual {p0}, Ljava/util/BitSet;->cardinality()I

    move-result v2

    if-lez v2, :cond_1

    .line 618
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 621
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public isValid(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 4
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 586
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    if-nez v0, :cond_0

    .line 587
    return v2

    .line 589
    :cond_0
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    if-le v0, v3, :cond_3

    .line 590
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 591
    return v2

    .line 593
    :cond_1
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 594
    return v2

    .line 596
    :cond_2
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 597
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 601
    :cond_3
    return v3

    .line 598
    :cond_4
    return v2
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 631
    const-string/jumbo v0, "WifiNetworkHistory"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    return-void
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 628
    const-string/jumbo v0, "WifiNetworkHistory"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 634
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wifi/WifiNetworkHistory;->loge(Ljava/lang/String;Z)V

    .line 633
    return-void
.end method

.method protected loge(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "stack"    # Z

    .prologue
    .line 637
    if-eqz p2, :cond_0

    .line 638
    const-string/jumbo v0, "WifiNetworkHistory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " stack:"

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

    .line 639
    const-string/jumbo v2, " - "

    .line 638
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 639
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    .line 638
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 640
    const-string/jumbo v2, " - "

    .line 638
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 640
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    .line 638
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 641
    const-string/jumbo v2, " - "

    .line 638
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 641
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x5

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    .line 638
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    :goto_0
    return-void

    .line 643
    :cond_0
    const-string/jumbo v0, "WifiNetworkHistory"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected logv(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 625
    const-string/jumbo v0, "WifiNetworkHistory"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    return-void
.end method

.method public readNetworkHistory(Ljava/util/Map;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/Set;)V
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/wifi/ScanDetailCache;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 328
    .local p1, "configs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;>;"
    .local p2, "scanDetailCaches":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Integer;Lcom/android/server/wifi/ScanDetailCache;>;"
    .local p3, "deletedEphemeralSSIDs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "readNetworkHistory() path:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/server/wifi/WifiNetworkHistory;->NETWORK_HISTORY_CONFIG_FILE:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/server/wifi/WifiNetworkHistory;->localLog(Ljava/lang/String;)V

    .line 330
    const/16 v28, 0x0

    const/16 v18, 0x0

    .line 331
    .local v18, "in":Ljava/io/DataInputStream;
    :try_start_0
    new-instance v19, Ljava/io/DataInputStream;

    new-instance v8, Ljava/io/BufferedInputStream;

    .line 332
    new-instance v9, Ljava/io/FileInputStream;

    sget-object v29, Lcom/android/server/wifi/WifiNetworkHistory;->NETWORK_HISTORY_CONFIG_FILE:Ljava/lang/String;

    move-object/from16 v0, v29

    invoke-direct {v9, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 331
    invoke-direct {v8, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v19

    invoke-direct {v0, v8}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_b
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 334
    .end local v18    # "in":Ljava/io/DataInputStream;
    .local v19, "in":Ljava/io/DataInputStream;
    const/4 v4, 0x0

    .line 335
    .local v4, "bssid":Ljava/lang/String;
    const/16 v25, 0x0

    .line 336
    .local v25, "ssid":Ljava/lang/String;
    const/16 v20, 0x0

    .line 337
    .local v20, "key":Ljava/lang/String;
    const/16 v27, 0x0

    .line 339
    .local v27, "value":Ljava/lang/String;
    const/4 v7, 0x0

    .line 340
    .local v7, "freq":I
    const/16 v26, 0x0

    .line 341
    .local v26, "status":I
    const-wide/16 v10, 0x0

    .line 342
    .local v10, "seen":J
    :try_start_1
    sget v6, Landroid/net/wifi/WifiConfiguration;->INVALID_RSSI:I

    .line 343
    .local v6, "rssi":I
    const/4 v5, 0x0

    .line 345
    .local v5, "caps":Ljava/lang/String;
    const/4 v13, 0x0

    .line 347
    .end local v4    # "bssid":Ljava/lang/String;
    .end local v5    # "caps":Ljava/lang/String;
    .end local v20    # "key":Ljava/lang/String;
    .end local v25    # "ssid":Ljava/lang/String;
    .end local v27    # "value":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual/range {v19 .. v19}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v21

    .line 348
    .local v21, "line":Ljava/lang/String;
    if-nez v21, :cond_3

    .line 577
    :cond_1
    if-eqz v19, :cond_2

    :try_start_2
    invoke-virtual/range {v19 .. v19}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    :cond_2
    :goto_1
    if-eqz v28, :cond_34

    :try_start_3
    throw v28
    :try_end_3
    .catch Ljava/io/EOFException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7

    .line 569
    :catch_0
    move-exception v14

    .local v14, "e":Ljava/io/EOFException;
    move-object/from16 v18, v19

    .line 327
    .end local v6    # "rssi":I
    .end local v7    # "freq":I
    .end local v10    # "seen":J
    .end local v14    # "e":Ljava/io/EOFException;
    .end local v19    # "in":Ljava/io/DataInputStream;
    .end local v21    # "line":Ljava/lang/String;
    .end local v26    # "status":I
    :goto_2
    return-void

    .line 354
    .restart local v6    # "rssi":I
    .restart local v7    # "freq":I
    .restart local v10    # "seen":J
    .restart local v19    # "in":Ljava/io/DataInputStream;
    .restart local v21    # "line":Ljava/lang/String;
    .restart local v26    # "status":I
    :cond_3
    :try_start_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "readNetworkHistory() line: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " length = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/server/wifi/WifiNetworkHistory;->loge(Ljava/lang/String;)V

    .line 355
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_1

    .line 360
    const/16 v8, 0x3a

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    .line 361
    .local v12, "colon":I
    const/4 v8, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v24

    .line 362
    .local v24, "slash":C
    if-gez v12, :cond_4

    const/16 v8, 0x2f

    move/from16 v0, v24

    if-ne v0, v8, :cond_0

    .line 365
    :cond_4
    const/16 v8, 0x2f

    move/from16 v0, v24

    if-ne v0, v8, :cond_6

    .line 366
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v20

    .line 372
    .local v20, "key":Ljava/lang/String;
    :goto_3
    const-string/jumbo v8, "CONFIG"

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 373
    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/wifi/WifiConfiguration;

    .line 377
    .local v13, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v13, :cond_7

    .line 378
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "readNetworkHistory didnt find netid for hash="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 379
    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->hashCode()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    .line 378
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 380
    const-string/jumbo v9, " key: "

    .line 378
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v27

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/server/wifi/WifiNetworkHistory;->localLog(Ljava/lang/String;)V

    .line 381
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wifi/WifiNetworkHistory;->mLostConfigsDbg:Ljava/util/HashSet;

    move-object/from16 v0, v27

    invoke-virtual {v8, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_0

    .line 577
    .end local v6    # "rssi":I
    .end local v12    # "colon":I
    .end local v13    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v20    # "key":Ljava/lang/String;
    .end local v21    # "line":Ljava/lang/String;
    .end local v24    # "slash":C
    :catch_1
    move-exception v8

    move-object/from16 v18, v19

    .end local v7    # "freq":I
    .end local v10    # "seen":J
    .end local v19    # "in":Ljava/io/DataInputStream;
    .end local v26    # "status":I
    :goto_4
    :try_start_5
    throw v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v9

    move-object/from16 v30, v9

    move-object v9, v8

    move-object/from16 v8, v30

    :goto_5
    if-eqz v18, :cond_5

    :try_start_6
    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/io/EOFException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_a

    :cond_5
    :goto_6
    if-eqz v9, :cond_36

    :try_start_7
    throw v9
    :try_end_7
    .catch Ljava/io/EOFException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_a

    .line 569
    :catch_2
    move-exception v14

    .restart local v14    # "e":Ljava/io/EOFException;
    goto/16 :goto_2

    .line 368
    .end local v14    # "e":Ljava/io/EOFException;
    .restart local v6    # "rssi":I
    .restart local v7    # "freq":I
    .restart local v10    # "seen":J
    .restart local v12    # "colon":I
    .restart local v19    # "in":Ljava/io/DataInputStream;
    .restart local v21    # "line":Ljava/lang/String;
    .restart local v24    # "slash":C
    .restart local v26    # "status":I
    :cond_6
    const/4 v8, 0x0

    :try_start_8
    move-object/from16 v0, v21

    invoke-virtual {v0, v8, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v20

    .line 369
    .restart local v20    # "key":Ljava/lang/String;
    add-int/lit8 v8, v12, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v27

    .local v27, "value":Ljava/lang/String;
    goto :goto_3

    .line 385
    .end local v27    # "value":Ljava/lang/String;
    .restart local v13    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_7
    iget-object v8, v13, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    if-eqz v8, :cond_8

    iget-object v8, v13, Landroid/net/wifi/WifiConfiguration;->lastUpdateName:Ljava/lang/String;

    if-nez v8, :cond_0

    .line 387
    :cond_8
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wifi/WifiNetworkHistory;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/16 v9, 0x3e8

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v8

    .line 386
    iput-object v8, v13, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    .line 388
    iget-object v8, v13, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    iput-object v8, v13, Landroid/net/wifi/WifiConfiguration;->lastUpdateName:Ljava/lang/String;

    .line 391
    const-string/jumbo v8, "WifiNetworkHistory"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "Upgrading network "

    move-object/from16 v0, v29

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v0, v13, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v29, v0

    move/from16 v0, v29

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 392
    const-string/jumbo v29, " to "

    .line 391
    move-object/from16 v0, v29

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 392
    iget-object v0, v13, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    move-object/from16 v29, v0

    .line 391
    move-object/from16 v0, v29

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 577
    .end local v6    # "rssi":I
    .end local v12    # "colon":I
    .end local v13    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v20    # "key":Ljava/lang/String;
    .end local v21    # "line":Ljava/lang/String;
    .end local v24    # "slash":C
    :catchall_1
    move-exception v8

    move-object/from16 v9, v28

    move-object/from16 v18, v19

    .end local v19    # "in":Ljava/io/DataInputStream;
    .local v18, "in":Ljava/io/DataInputStream;
    goto :goto_5

    .line 396
    .end local v18    # "in":Ljava/io/DataInputStream;
    .restart local v6    # "rssi":I
    .restart local v12    # "colon":I
    .restart local v19    # "in":Ljava/io/DataInputStream;
    .restart local v20    # "key":Ljava/lang/String;
    .restart local v21    # "line":Ljava/lang/String;
    .restart local v24    # "slash":C
    :cond_9
    if-eqz v13, :cond_0

    .line 397
    invoke-virtual {v13}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v22

    .line 398
    .local v22, "networkStatus":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    const-string/jumbo v8, "SSID"

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 400
    invoke-virtual {v13}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v8

    if-nez v8, :cond_0

    .line 403
    move-object/from16 v25, v27

    .line 404
    .local v25, "ssid":Ljava/lang/String;
    iget-object v8, v13, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v8, :cond_a

    iget-object v8, v13, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_30

    .line 409
    :cond_a
    move-object/from16 v0, v25

    iput-object v0, v13, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto/16 :goto_0

    .line 398
    .end local v25    # "ssid":Ljava/lang/String;
    :cond_b
    const-string/jumbo v8, "CONFIG_BSSID"

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 413
    const-string/jumbo v8, "null"

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_31

    const/4 v8, 0x0

    :goto_7
    iput-object v8, v13, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    goto/16 :goto_0

    .line 398
    :cond_c
    const-string/jumbo v8, "FQDN"

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 417
    const-string/jumbo v8, "null"

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_32

    const/4 v8, 0x0

    :goto_8
    iput-object v8, v13, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    goto/16 :goto_0

    .line 398
    :cond_d
    const-string/jumbo v8, "DEFAULT_GW"

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 420
    move-object/from16 v0, v27

    iput-object v0, v13, Landroid/net/wifi/WifiConfiguration;->defaultGwMacAddress:Ljava/lang/String;

    goto/16 :goto_0

    .line 398
    :cond_e
    const-string/jumbo v8, "SELF_ADDED"

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 423
    invoke-static/range {v27 .. v27}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, v13, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    goto/16 :goto_0

    .line 398
    :cond_f
    const-string/jumbo v8, "DID_SELF_ADD"

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 426
    invoke-static/range {v27 .. v27}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, v13, Landroid/net/wifi/WifiConfiguration;->didSelfAdd:Z

    goto/16 :goto_0

    .line 398
    :cond_10
    const-string/jumbo v8, "NO_INTERNET_ACCESS_REPORTS"

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 429
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v13, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    goto/16 :goto_0

    .line 398
    :cond_11
    const-string/jumbo v8, "VALIDATED_INTERNET_ACCESS"

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 432
    invoke-static/range {v27 .. v27}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, v13, Landroid/net/wifi/WifiConfiguration;->validatedInternetAccess:Z

    goto/16 :goto_0

    .line 398
    :cond_12
    const-string/jumbo v8, "NO_INTERNET_ACCESS_EXPECTED"

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 435
    invoke-static/range {v27 .. v27}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, v13, Landroid/net/wifi/WifiConfiguration;->noInternetAccessExpected:Z

    goto/16 :goto_0

    .line 398
    :cond_13
    const-string/jumbo v8, "CREATION_TIME"

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    .line 438
    move-object/from16 v0, v27

    iput-object v0, v13, Landroid/net/wifi/WifiConfiguration;->creationTime:Ljava/lang/String;

    goto/16 :goto_0

    .line 398
    :cond_14
    const-string/jumbo v8, "UPDATE_TIME"

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_15

    .line 441
    move-object/from16 v0, v27

    iput-object v0, v13, Landroid/net/wifi/WifiConfiguration;->updateTime:Ljava/lang/String;

    goto/16 :goto_0

    .line 398
    :cond_15
    const-string/jumbo v8, "EPHEMERAL"

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_16

    .line 444
    invoke-static/range {v27 .. v27}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, v13, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    goto/16 :goto_0

    .line 398
    :cond_16
    const-string/jumbo v8, "METERED_HINT"

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_17

    .line 447
    invoke-static/range {v27 .. v27}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, v13, Landroid/net/wifi/WifiConfiguration;->meteredHint:Z

    goto/16 :goto_0

    .line 398
    :cond_17
    const-string/jumbo v8, "USE_EXTERNAL_SCORES"

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_18

    .line 450
    invoke-static/range {v27 .. v27}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, v13, Landroid/net/wifi/WifiConfiguration;->useExternalScores:Z

    goto/16 :goto_0

    .line 398
    :cond_18
    const-string/jumbo v8, "CREATOR_UID_KEY"

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_19

    .line 453
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v13, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    goto/16 :goto_0

    .line 398
    :cond_19
    const-string/jumbo v8, "SCORER_OVERRIDE"

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1a

    .line 456
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v13, Landroid/net/wifi/WifiConfiguration;->numScorerOverride:I

    goto/16 :goto_0

    .line 398
    :cond_1a
    const-string/jumbo v8, "SCORER_OVERRIDE_AND_SWITCH"

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1b

    .line 459
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v13, Landroid/net/wifi/WifiConfiguration;->numScorerOverrideAndSwitchedNetwork:I

    goto/16 :goto_0

    .line 398
    :cond_1b
    const-string/jumbo v8, "NUM_ASSOCIATION"

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1c

    .line 462
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v13, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    goto/16 :goto_0

    .line 398
    :cond_1c
    const-string/jumbo v8, "CONNECT_UID_KEY"

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1d

    .line 465
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v13, Landroid/net/wifi/WifiConfiguration;->lastConnectUid:I

    goto/16 :goto_0

    .line 398
    :cond_1d
    const-string/jumbo v8, "UPDATE_UID"

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1e

    .line 468
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v13, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    goto/16 :goto_0

    .line 398
    :cond_1e
    const-string/jumbo v8, "FAILURE"

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1f

    .line 471
    move-object/from16 v0, v27

    iput-object v0, v13, Landroid/net/wifi/WifiConfiguration;->lastFailure:Ljava/lang/String;

    goto/16 :goto_0

    .line 398
    :cond_1f
    const-string/jumbo v8, "PEER_CONFIGURATION"

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_20

    .line 474
    move-object/from16 v0, v27

    iput-object v0, v13, Landroid/net/wifi/WifiConfiguration;->peerWifiConfiguration:Ljava/lang/String;

    goto/16 :goto_0

    .line 398
    :cond_20
    const-string/jumbo v8, "NETWORK_SELECTION_STATUS"

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_22

    .line 477
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    .line 480
    .local v23, "networkStatusValue":I
    const/4 v8, 0x1

    .line 479
    move/from16 v0, v23

    if-ne v0, v8, :cond_21

    .line 482
    const/16 v23, 0x0

    .line 484
    :cond_21
    invoke-virtual/range {v22 .. v23}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setNetworkSelectionStatus(I)V

    goto/16 :goto_0

    .line 398
    .end local v23    # "networkStatusValue":I
    :cond_22
    const-string/jumbo v8, "NETWORK_SELECTION_DISABLE_REASON"

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_23

    .line 487
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setNetworkSelectionDisableReason(I)V

    goto/16 :goto_0

    .line 398
    :cond_23
    const-string/jumbo v8, "CHOICE"

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_24

    .line 490
    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setConnectChoice(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 398
    :cond_24
    const-string/jumbo v8, "CHOICE_TIME"

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_25

    .line 493
    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    move-object/from16 v0, v22

    invoke-virtual {v0, v8, v9}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setConnectChoiceTimestamp(J)V

    goto/16 :goto_0

    .line 398
    :cond_25
    const-string/jumbo v8, "LINK"

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_26

    .line 496
    iget-object v8, v13, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    if-nez v8, :cond_33

    .line 497
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, v13, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    goto/16 :goto_0

    .line 398
    :cond_26
    const-string/jumbo v8, "BSSID"

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_27

    .line 503
    const/16 v26, 0x0

    .line 512
    move-object/from16 v4, v27

    .line 513
    .local v4, "bssid":Ljava/lang/String;
    const/4 v7, 0x0

    .line 514
    const-wide/16 v10, 0x0

    .line 515
    sget v6, Landroid/net/wifi/WifiConfiguration;->INVALID_RSSI:I

    .line 516
    const-string/jumbo v5, ""

    .local v5, "caps":Ljava/lang/String;
    goto/16 :goto_0

    .line 398
    .end local v4    # "bssid":Ljava/lang/String;
    .end local v5    # "caps":Ljava/lang/String;
    :cond_27
    const-string/jumbo v8, "RSSI"

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_28

    .line 519
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    goto/16 :goto_0

    .line 398
    :cond_28
    const-string/jumbo v8, "FREQ"

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_29

    .line 522
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    goto/16 :goto_0

    .line 398
    :cond_29
    const-string/jumbo v8, "DATE"

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string/jumbo v8, "/BSSID"

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2a

    .line 537
    if-eqz v4, :cond_0

    if-eqz v25, :cond_0

    .line 538
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v13, v1}, Lcom/android/server/wifi/WifiNetworkHistory;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;Ljava/util/concurrent/ConcurrentHashMap;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 539
    invoke-static/range {v25 .. v25}, Landroid/net/wifi/WifiSsid;->createFromAsciiEncoded(Ljava/lang/String;)Landroid/net/wifi/WifiSsid;

    move-result-object v3

    .line 540
    .local v3, "wssid":Landroid/net/wifi/WifiSsid;
    new-instance v2, Lcom/android/server/wifi/ScanDetail;

    .line 541
    const-wide/16 v8, 0x0

    .line 540
    invoke-direct/range {v2 .. v11}, Lcom/android/server/wifi/ScanDetail;-><init>(Landroid/net/wifi/WifiSsid;Ljava/lang/String;Ljava/lang/String;IIJJ)V

    .line 542
    .local v2, "scanDetail":Lcom/android/server/wifi/ScanDetail;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v13, v1}, Lcom/android/server/wifi/WifiNetworkHistory;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;Ljava/util/concurrent/ConcurrentHashMap;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/android/server/wifi/ScanDetailCache;->put(Lcom/android/server/wifi/ScanDetail;)V

    goto/16 :goto_0

    .line 398
    .end local v2    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    .end local v3    # "wssid":Landroid/net/wifi/WifiSsid;
    :cond_2a
    const-string/jumbo v8, "DELETED_EPHEMERAL"

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2b

    .line 547
    invoke-static/range {v27 .. v27}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 548
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 398
    :cond_2b
    const-string/jumbo v8, "CREATOR_NAME"

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2c

    .line 552
    move-object/from16 v0, v27

    iput-object v0, v13, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    goto/16 :goto_0

    .line 398
    :cond_2c
    const-string/jumbo v8, "UPDATE_NAME"

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2d

    .line 555
    move-object/from16 v0, v27

    iput-object v0, v13, Landroid/net/wifi/WifiConfiguration;->lastUpdateName:Ljava/lang/String;

    goto/16 :goto_0

    .line 398
    :cond_2d
    const-string/jumbo v8, "USER_APPROVED"

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2e

    .line 558
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v13, Landroid/net/wifi/WifiConfiguration;->userApproved:I

    goto/16 :goto_0

    .line 398
    :cond_2e
    const-string/jumbo v8, "SHARED"

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2f

    .line 561
    invoke-static/range {v27 .. v27}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, v13, Landroid/net/wifi/WifiConfiguration;->shared:Z

    goto/16 :goto_0

    .line 398
    :cond_2f
    const-string/jumbo v8, "HAS_EVER_CONNECTED"

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 564
    invoke-static/range {v27 .. v27}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setHasEverConnected(Z)V

    goto/16 :goto_0

    .line 405
    .restart local v25    # "ssid":Ljava/lang/String;
    :cond_30
    const-string/jumbo v8, "Error parsing network history file, mismatched SSIDs"

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/server/wifi/WifiNetworkHistory;->loge(Ljava/lang/String;)V

    .line 406
    const/4 v13, 0x0

    .line 407
    .local v13, "config":Landroid/net/wifi/WifiConfiguration;
    const/16 v25, 0x0

    .local v25, "ssid":Ljava/lang/String;
    goto/16 :goto_0

    .end local v13    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v25    # "ssid":Ljava/lang/String;
    :cond_31
    move-object/from16 v8, v27

    .line 413
    goto/16 :goto_7

    :cond_32
    move-object/from16 v8, v27

    .line 417
    goto/16 :goto_8

    .line 499
    :cond_33
    iget-object v8, v13, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    const/4 v9, -0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 v0, v27

    invoke-virtual {v8, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/16 :goto_0

    .line 577
    .end local v12    # "colon":I
    .end local v20    # "key":Ljava/lang/String;
    .end local v22    # "networkStatus":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    .end local v24    # "slash":C
    :catch_3
    move-exception v28

    goto/16 :goto_1

    :cond_34
    move-object/from16 v18, v19

    .end local v19    # "in":Ljava/io/DataInputStream;
    .restart local v18    # "in":Ljava/io/DataInputStream;
    goto/16 :goto_2

    .end local v6    # "rssi":I
    .end local v7    # "freq":I
    .end local v10    # "seen":J
    .end local v18    # "in":Ljava/io/DataInputStream;
    .end local v21    # "line":Ljava/lang/String;
    .end local v26    # "status":I
    :catch_4
    move-exception v28

    if-nez v9, :cond_35

    move-object/from16 v9, v28

    goto/16 :goto_6

    :cond_35
    move-object/from16 v0, v28

    if-eq v9, v0, :cond_5

    :try_start_9
    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_9
    .catch Ljava/io/EOFException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_6
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_a

    goto/16 :goto_6

    .line 571
    :catch_5
    move-exception v15

    .line 572
    .local v15, "e":Ljava/io/FileNotFoundException;
    :goto_9
    const-string/jumbo v8, "WifiNetworkHistory"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "readNetworkHistory: no config file, "

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 577
    .end local v15    # "e":Ljava/io/FileNotFoundException;
    :cond_36
    :try_start_a
    throw v8
    :try_end_a
    .catch Ljava/io/EOFException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_6
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_a

    .line 573
    :catch_6
    move-exception v17

    .line 574
    .local v17, "e":Ljava/lang/NumberFormatException;
    :goto_a
    const-string/jumbo v8, "WifiNetworkHistory"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "readNetworkHistory: failed to parse, "

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, v17

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 575
    .end local v17    # "e":Ljava/lang/NumberFormatException;
    .restart local v6    # "rssi":I
    .restart local v7    # "freq":I
    .restart local v10    # "seen":J
    .restart local v19    # "in":Ljava/io/DataInputStream;
    .restart local v21    # "line":Ljava/lang/String;
    .restart local v26    # "status":I
    :catch_7
    move-exception v16

    .local v16, "e":Ljava/io/IOException;
    move-object/from16 v18, v19

    .line 576
    .end local v6    # "rssi":I
    .end local v7    # "freq":I
    .end local v10    # "seen":J
    .end local v19    # "in":Ljava/io/DataInputStream;
    .end local v21    # "line":Ljava/lang/String;
    .end local v26    # "status":I
    :goto_b
    const-string/jumbo v8, "WifiNetworkHistory"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "readNetworkHistory: failed to read, "

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, v16

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 571
    .end local v16    # "e":Ljava/io/IOException;
    .restart local v6    # "rssi":I
    .restart local v7    # "freq":I
    .restart local v10    # "seen":J
    .restart local v19    # "in":Ljava/io/DataInputStream;
    .restart local v21    # "line":Ljava/lang/String;
    .restart local v26    # "status":I
    :catch_8
    move-exception v15

    .restart local v15    # "e":Ljava/io/FileNotFoundException;
    move-object/from16 v18, v19

    .end local v19    # "in":Ljava/io/DataInputStream;
    .restart local v18    # "in":Ljava/io/DataInputStream;
    goto :goto_9

    .line 573
    .end local v15    # "e":Ljava/io/FileNotFoundException;
    .end local v18    # "in":Ljava/io/DataInputStream;
    .restart local v19    # "in":Ljava/io/DataInputStream;
    :catch_9
    move-exception v17

    .restart local v17    # "e":Ljava/lang/NumberFormatException;
    move-object/from16 v18, v19

    .end local v19    # "in":Ljava/io/DataInputStream;
    .restart local v18    # "in":Ljava/io/DataInputStream;
    goto :goto_a

    .line 575
    .end local v6    # "rssi":I
    .end local v7    # "freq":I
    .end local v10    # "seen":J
    .end local v17    # "e":Ljava/lang/NumberFormatException;
    .end local v18    # "in":Ljava/io/DataInputStream;
    .end local v21    # "line":Ljava/lang/String;
    .end local v26    # "status":I
    :catch_a
    move-exception v16

    .restart local v16    # "e":Ljava/io/IOException;
    goto :goto_b

    .line 577
    .end local v16    # "e":Ljava/io/IOException;
    .local v18, "in":Ljava/io/DataInputStream;
    :catchall_2
    move-exception v8

    move-object/from16 v9, v28

    goto/16 :goto_5

    :catch_b
    move-exception v8

    goto/16 :goto_4
.end method

.method public writeKnownNetworkHistory(Ljava/util/List;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/wifi/ScanDetailCache;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 142
    .local p1, "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .local p2, "scanDetailCaches":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Integer;Lcom/android/server/wifi/ScanDetailCache;>;"
    .local p3, "deletedEphemeralSSIDs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/wifi/WifiNetworkHistory;->mWriter:Lcom/android/server/net/DelayedDiskWrite;

    sget-object v1, Lcom/android/server/wifi/WifiNetworkHistory;->NETWORK_HISTORY_CONFIG_FILE:Ljava/lang/String;

    new-instance v2, Lcom/android/server/wifi/WifiNetworkHistory$1;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/android/server/wifi/WifiNetworkHistory$1;-><init>(Lcom/android/server/wifi/WifiNetworkHistory;Ljava/util/List;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/Set;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/server/net/DelayedDiskWrite;->write(Ljava/lang/String;Lcom/android/server/net/DelayedDiskWrite$Writer;)V

    .line 133
    return-void
.end method
