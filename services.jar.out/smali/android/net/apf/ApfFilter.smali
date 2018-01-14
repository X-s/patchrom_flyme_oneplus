.class public Landroid/net/apf/ApfFilter;
.super Ljava/lang/Object;
.source "ApfFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/apf/ApfFilter$ProcessRaResult;,
        Landroid/net/apf/ApfFilter$Ra;,
        Landroid/net/apf/ApfFilter$ReceiveThread;
    }
.end annotation


# static fields
.field private static final ARP_HEADER_OFFSET:I = 0xe

.field private static final ARP_IPV4_HEADER:[B

.field private static final ARP_OPCODE_OFFSET:I = 0x14

.field private static final ARP_OPCODE_REPLY:S = 0x2s

.field private static final ARP_OPCODE_REQUEST:S = 0x1s

.field private static final ARP_TARGET_IP_ADDRESS_OFFSET:I = 0x26

.field private static final DBG:Z = true

.field private static final DHCP_CLIENT_MAC_OFFSET:I = 0x32

.field private static final DHCP_CLIENT_PORT:I = 0x44

.field private static final ETH_BROADCAST_MAC_ADDRESS:[B

.field private static final ETH_DEST_ADDR_OFFSET:I = 0x0

.field private static final ETH_ETHERTYPE_OFFSET:I = 0xc

.field private static final ETH_HEADER_LEN:I = 0xe

.field private static final FRACTION_OF_LIFETIME_TO_FILTER:I = 0x6

.field private static final ICMP6_NEIGHBOR_ANNOUNCEMENT:I = 0x88

.field private static final ICMP6_ROUTER_ADVERTISEMENT:I = 0x86

.field private static final ICMP6_TYPE_OFFSET:I = 0x36

.field private static final IPV4_ANY_HOST_ADDRESS:I = 0x0

.field private static final IPV4_BROADCAST_ADDRESS:I = -0x1

.field private static final IPV4_DEST_ADDR_OFFSET:I = 0x1e

.field private static final IPV4_FRAGMENT_OFFSET_MASK:I = 0x1fff

.field private static final IPV4_FRAGMENT_OFFSET_OFFSET:I = 0x14

.field private static final IPV4_PROTOCOL_OFFSET:I = 0x17

.field private static final IPV6_ALL_NODES_ADDRESS:[B

.field private static final IPV6_DEST_ADDR_OFFSET:I = 0x26

.field private static final IPV6_HEADER_LEN:I = 0x28

.field private static final IPV6_NEXT_HEADER_OFFSET:I = 0x14

.field private static final IPV6_SRC_ADDR_OFFSET:I = 0x16

.field private static final MAX_PROGRAM_LIFETIME_WORTH_REFRESHING:J = 0x1eL

.field private static final MAX_RAS:I = 0xa

.field private static final TAG:Ljava/lang/String; = "ApfFilter"

.field private static final UDP_DESTINATION_PORT_OFFSET:I = 0x10

.field private static final UDP_HEADER_LEN:I = 0x8

.field private static final VDBG:Z


# instance fields
.field private final mApfCapabilities:Landroid/net/apf/ApfCapabilities;

.field mHardwareAddress:[B

.field private mIPv4Address:[B
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mIPv4PrefixLength:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mIpManagerCallback:Landroid/net/ip/IpManager$Callback;

.field private mLastInstalledProgram:[B
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mLastInstalledProgramMinLifetime:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mLastTimeInstalledProgram:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

.field private mMulticastFilter:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mNetworkInterface:Ljava/net/NetworkInterface;

.field private mNumProgramUpdates:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mRas:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/apf/ApfFilter$Ra;",
            ">;"
        }
    .end annotation
.end field

.field mReceiveThread:Landroid/net/apf/ApfFilter$ReceiveThread;

.field private mUniqueCounter:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Landroid/net/apf/ApfFilter;)Landroid/net/apf/ApfCapabilities;
    .locals 1

    iget-object v0, p0, Landroid/net/apf/ApfFilter;->mApfCapabilities:Landroid/net/apf/ApfCapabilities;

    return-object v0
.end method

.method static synthetic -get1(Landroid/net/apf/ApfFilter;)Landroid/net/metrics/IpConnectivityLog;
    .locals 1

    iget-object v0, p0, Landroid/net/apf/ApfFilter;->mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/net/apf/ApfFilter;[BI)Landroid/net/apf/ApfFilter$ProcessRaResult;
    .locals 1
    .param p1, "packet"    # [B
    .param p2, "length"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/net/apf/ApfFilter;->processRa([BI)Landroid/net/apf/ApfFilter$ProcessRaResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(S)I
    .locals 1
    .param p0, "s"    # S

    .prologue
    invoke-static {p0}, Landroid/net/apf/ApfFilter;->uint16(S)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(B)I
    .locals 1
    .param p0, "b"    # B

    .prologue
    invoke-static {p0}, Landroid/net/apf/ApfFilter;->uint8(B)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap3()J
    .locals 2

    invoke-static {}, Landroid/net/apf/ApfFilter;->curTime()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -wrap4(Ljava/nio/ByteBuffer;I)J
    .locals 2
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "position"    # I

    .prologue
    invoke-static {p0, p1}, Landroid/net/apf/ApfFilter;->getUint16(Ljava/nio/ByteBuffer;I)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -wrap5(Ljava/nio/ByteBuffer;I)J
    .locals 2
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "position"    # I

    .prologue
    invoke-static {p0, p1}, Landroid/net/apf/ApfFilter;->getUint32(Ljava/nio/ByteBuffer;I)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -wrap6(Landroid/net/apf/ApfFilter;)J
    .locals 2

    invoke-direct {p0}, Landroid/net/apf/ApfFilter;->getUniqueNumberLocked()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -wrap7(I)J
    .locals 2
    .param p0, "i"    # I

    .prologue
    invoke-static {p0}, Landroid/net/apf/ApfFilter;->uint32(I)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -wrap8(Landroid/net/apf/ApfFilter;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Landroid/net/apf/ApfFilter;->log(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x6

    .line 177
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    .line 176
    sput-object v0, Landroid/net/apf/ApfFilter;->ETH_BROADCAST_MAC_ADDRESS:[B

    .line 194
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    .line 193
    sput-object v0, Landroid/net/apf/ApfFilter;->IPV6_ALL_NODES_ADDRESS:[B

    .line 212
    new-array v0, v1, [B

    fill-array-data v0, :array_2

    sput-object v0, Landroid/net/apf/ApfFilter;->ARP_IPV4_HEADER:[B

    .line 79
    return-void

    .line 177
    nop

    :array_0
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
    .end array-data

    .line 194
    nop

    :array_1
    .array-data 1
        -0x1t
        0x2t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    .line 212
    :array_2
    .array-data 1
        0x0t
        0x1t
        0x8t
        0x0t
        0x6t
        0x4t
    .end array-data
.end method

.method constructor <init>(Landroid/net/apf/ApfCapabilities;Ljava/net/NetworkInterface;Landroid/net/ip/IpManager$Callback;ZLandroid/net/metrics/IpConnectivityLog;)V
    .locals 1
    .param p1, "apfCapabilities"    # Landroid/net/apf/ApfCapabilities;
    .param p2, "networkInterface"    # Ljava/net/NetworkInterface;
    .param p3, "ipManagerCallback"    # Landroid/net/ip/IpManager$Callback;
    .param p4, "multicastFilter"    # Z
    .param p5, "log"    # Landroid/net/metrics/IpConnectivityLog;

    .prologue
    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 633
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/apf/ApfFilter;->mRas:Ljava/util/ArrayList;

    .line 242
    iput-object p1, p0, Landroid/net/apf/ApfFilter;->mApfCapabilities:Landroid/net/apf/ApfCapabilities;

    .line 243
    iput-object p3, p0, Landroid/net/apf/ApfFilter;->mIpManagerCallback:Landroid/net/ip/IpManager$Callback;

    .line 244
    iput-object p2, p0, Landroid/net/apf/ApfFilter;->mNetworkInterface:Ljava/net/NetworkInterface;

    .line 245
    iput-boolean p4, p0, Landroid/net/apf/ApfFilter;->mMulticastFilter:Z

    .line 246
    iput-object p5, p0, Landroid/net/apf/ApfFilter;->mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

    .line 248
    invoke-virtual {p0}, Landroid/net/apf/ApfFilter;->maybeStartFilter()V

    .line 241
    return-void
.end method

.method private beginProgramLocked()Landroid/net/apf/ApfGenerator;
    .locals 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/apf/ApfGenerator$IllegalInstructionException;
        }
    .end annotation

    .prologue
    .line 851
    new-instance v0, Landroid/net/apf/ApfGenerator;

    invoke-direct {v0}, Landroid/net/apf/ApfGenerator;-><init>()V

    .line 853
    .local v0, "gen":Landroid/net/apf/ApfGenerator;
    iget-object v4, p0, Landroid/net/apf/ApfFilter;->mApfCapabilities:Landroid/net/apf/ApfCapabilities;

    iget v4, v4, Landroid/net/apf/ApfCapabilities;->apfVersionSupported:I

    invoke-virtual {v0, v4}, Landroid/net/apf/ApfGenerator;->setApfVersion(I)Z

    .line 868
    const-string/jumbo v2, "skipArpFilters"

    .line 869
    .local v2, "skipArpFiltersLabel":Ljava/lang/String;
    sget-object v4, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    const/16 v5, 0xc

    invoke-virtual {v0, v4, v5}, Landroid/net/apf/ApfGenerator;->addLoad16(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    .line 870
    sget v4, Landroid/system/OsConstants;->ETH_P_ARP:I

    invoke-virtual {v0, v4, v2}, Landroid/net/apf/ApfGenerator;->addJumpIfR0NotEquals(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 871
    invoke-direct {p0, v0}, Landroid/net/apf/ApfFilter;->generateArpFilterLocked(Landroid/net/apf/ApfGenerator;)V

    .line 872
    invoke-virtual {v0, v2}, Landroid/net/apf/ApfGenerator;->defineLabel(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 875
    const-string/jumbo v3, "skipIPv4Filters"

    .line 879
    .local v3, "skipIPv4FiltersLabel":Ljava/lang/String;
    sget v4, Landroid/system/OsConstants;->ETH_P_IP:I

    invoke-virtual {v0, v4, v3}, Landroid/net/apf/ApfGenerator;->addJumpIfR0NotEquals(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 880
    invoke-direct {p0, v0}, Landroid/net/apf/ApfFilter;->generateIPv4FilterLocked(Landroid/net/apf/ApfGenerator;)V

    .line 881
    invoke-virtual {v0, v3}, Landroid/net/apf/ApfGenerator;->defineLabel(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 887
    const-string/jumbo v1, "IPv6Filters"

    .line 888
    .local v1, "ipv6FilterLabel":Ljava/lang/String;
    sget v4, Landroid/system/OsConstants;->ETH_P_IPV6:I

    invoke-virtual {v0, v4, v1}, Landroid/net/apf/ApfGenerator;->addJumpIfR0Equals(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 891
    sget-object v4, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/net/apf/ApfGenerator;->addLoadImmediate(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    .line 892
    sget-object v4, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    sget-object v5, Landroid/net/apf/ApfFilter;->ETH_BROADCAST_MAC_ADDRESS:[B

    const-string/jumbo v6, "__PASS__"

    invoke-virtual {v0, v4, v5, v6}, Landroid/net/apf/ApfGenerator;->addJumpIfBytesNotEqual(Landroid/net/apf/ApfGenerator$Register;[BLjava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 893
    const-string/jumbo v4, "__DROP__"

    invoke-virtual {v0, v4}, Landroid/net/apf/ApfGenerator;->addJump(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 896
    invoke-virtual {v0, v1}, Landroid/net/apf/ApfGenerator;->defineLabel(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 897
    invoke-direct {p0, v0}, Landroid/net/apf/ApfFilter;->generateIPv6FilterLocked(Landroid/net/apf/ApfGenerator;)V

    .line 898
    return-object v0
.end method

.method public static bytesToInt([B)I
    .locals 2
    .param p0, "addrBytes"    # [B

    .prologue
    .line 1169
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    invoke-static {v0}, Landroid/net/apf/ApfFilter;->uint8(B)I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    .line 1170
    const/4 v1, 0x1

    aget-byte v1, p0, v1

    invoke-static {v1}, Landroid/net/apf/ApfFilter;->uint8(B)I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    .line 1169
    add-int/2addr v0, v1

    .line 1171
    const/4 v1, 0x2

    aget-byte v1, p0, v1

    invoke-static {v1}, Landroid/net/apf/ApfFilter;->uint8(B)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    .line 1169
    add-int/2addr v0, v1

    .line 1172
    const/4 v1, 0x3

    aget-byte v1, p0, v1

    invoke-static {v1}, Landroid/net/apf/ApfFilter;->uint8(B)I

    move-result v1

    .line 1169
    add-int/2addr v0, v1

    return v0
.end method

.method private static curTime()J
    .locals 4

    .prologue
    .line 289
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private static findIPv4LinkAddress(Landroid/net/LinkProperties;)Landroid/net/LinkAddress;
    .locals 5
    .param p0, "lp"    # Landroid/net/LinkProperties;

    .prologue
    const/4 v4, 0x0

    .line 1071
    const/4 v2, 0x0

    .line 1072
    .local v2, "ipv4Address":Landroid/net/LinkAddress;
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local v2    # "ipv4Address":Landroid/net/LinkAddress;
    .local v1, "address$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/LinkAddress;

    .line 1073
    .local v0, "address":Landroid/net/LinkAddress;
    invoke-virtual {v0}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    instance-of v3, v3, Ljava/net/Inet4Address;

    if-eqz v3, :cond_0

    .line 1076
    if-eqz v2, :cond_1

    invoke-virtual {v2, v0}, Landroid/net/LinkAddress;->isSameAddressAs(Landroid/net/LinkAddress;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1080
    :cond_1
    move-object v2, v0

    .local v2, "ipv4Address":Landroid/net/LinkAddress;
    goto :goto_0

    .line 1078
    .end local v2    # "ipv4Address":Landroid/net/LinkAddress;
    :cond_2
    return-object v4

    .line 1082
    .end local v0    # "address":Landroid/net/LinkAddress;
    :cond_3
    return-object v2
.end method

.method private generateArpFilterLocked(Landroid/net/apf/ApfGenerator;)V
    .locals 6
    .param p1, "gen"    # Landroid/net/apf/ApfGenerator;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/apf/ApfGenerator$IllegalInstructionException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x26

    const/4 v4, 0x0

    .line 684
    const-string/jumbo v0, "checkTargetIPv4"

    .line 687
    .local v0, "checkTargetIPv4":Ljava/lang/String;
    sget-object v1, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    const/16 v2, 0xe

    invoke-virtual {p1, v1, v2}, Landroid/net/apf/ApfGenerator;->addLoadImmediate(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    .line 688
    sget-object v1, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    sget-object v2, Landroid/net/apf/ApfFilter;->ARP_IPV4_HEADER:[B

    const-string/jumbo v3, "__PASS__"

    invoke-virtual {p1, v1, v2, v3}, Landroid/net/apf/ApfGenerator;->addJumpIfBytesNotEqual(Landroid/net/apf/ApfGenerator$Register;[BLjava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 691
    sget-object v1, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    const/16 v2, 0x14

    invoke-virtual {p1, v1, v2}, Landroid/net/apf/ApfGenerator;->addLoad16(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    .line 692
    const/4 v1, 0x1

    const-string/jumbo v2, "checkTargetIPv4"

    invoke-virtual {p1, v1, v2}, Landroid/net/apf/ApfGenerator;->addJumpIfR0Equals(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 693
    const/4 v1, 0x2

    const-string/jumbo v2, "__PASS__"

    invoke-virtual {p1, v1, v2}, Landroid/net/apf/ApfGenerator;->addJumpIfR0NotEquals(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 696
    sget-object v1, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    invoke-virtual {p1, v1, v4}, Landroid/net/apf/ApfGenerator;->addLoadImmediate(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    .line 697
    sget-object v1, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    sget-object v2, Landroid/net/apf/ApfFilter;->ETH_BROADCAST_MAC_ADDRESS:[B

    const-string/jumbo v3, "__PASS__"

    invoke-virtual {p1, v1, v2, v3}, Landroid/net/apf/ApfGenerator;->addJumpIfBytesNotEqual(Landroid/net/apf/ApfGenerator$Register;[BLjava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 700
    const-string/jumbo v1, "checkTargetIPv4"

    invoke-virtual {p1, v1}, Landroid/net/apf/ApfGenerator;->defineLabel(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 701
    iget-object v1, p0, Landroid/net/apf/ApfFilter;->mIPv4Address:[B

    if-nez v1, :cond_0

    .line 703
    sget-object v1, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    invoke-virtual {p1, v1, v5}, Landroid/net/apf/ApfGenerator;->addLoad32(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    .line 704
    const-string/jumbo v1, "__DROP__"

    invoke-virtual {p1, v4, v1}, Landroid/net/apf/ApfGenerator;->addJumpIfR0Equals(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 712
    :goto_0
    const-string/jumbo v1, "__PASS__"

    invoke-virtual {p1, v1}, Landroid/net/apf/ApfGenerator;->addJump(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 667
    return-void

    .line 708
    :cond_0
    sget-object v1, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    invoke-virtual {p1, v1, v5}, Landroid/net/apf/ApfGenerator;->addLoadImmediate(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    .line 709
    sget-object v1, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    iget-object v2, p0, Landroid/net/apf/ApfFilter;->mIPv4Address:[B

    const-string/jumbo v3, "__DROP__"

    invoke-virtual {p1, v1, v2, v3}, Landroid/net/apf/ApfGenerator;->addJumpIfBytesNotEqual(Landroid/net/apf/ApfGenerator$Register;[BLjava/lang/String;)Landroid/net/apf/ApfGenerator;

    goto :goto_0
.end method

.method private generateIPv4FilterLocked(Landroid/net/apf/ApfGenerator;)V
    .locals 6
    .param p1, "gen"    # Landroid/net/apf/ApfGenerator;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/apf/ApfGenerator$IllegalInstructionException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x1e

    .line 736
    iget-boolean v2, p0, Landroid/net/apf/ApfFilter;->mMulticastFilter:Z

    if-eqz v2, :cond_1

    .line 737
    const-string/jumbo v1, "skip_dhcp_v4_filter"

    .line 741
    .local v1, "skipDhcpv4Filter":Ljava/lang/String;
    sget-object v2, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    const/16 v3, 0x17

    invoke-virtual {p1, v2, v3}, Landroid/net/apf/ApfGenerator;->addLoad8(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    .line 742
    sget v2, Landroid/system/OsConstants;->IPPROTO_UDP:I

    const-string/jumbo v3, "skip_dhcp_v4_filter"

    invoke-virtual {p1, v2, v3}, Landroid/net/apf/ApfGenerator;->addJumpIfR0NotEquals(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 744
    sget-object v2, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    const/16 v3, 0x14

    invoke-virtual {p1, v2, v3}, Landroid/net/apf/ApfGenerator;->addLoad16(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    .line 745
    const-string/jumbo v2, "skip_dhcp_v4_filter"

    const/16 v3, 0x1fff

    invoke-virtual {p1, v3, v2}, Landroid/net/apf/ApfGenerator;->addJumpIfR0AnyBitsSet(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 747
    sget-object v2, Landroid/net/apf/ApfGenerator$Register;->R1:Landroid/net/apf/ApfGenerator$Register;

    const/16 v3, 0xd

    invoke-virtual {p1, v2, v3}, Landroid/net/apf/ApfGenerator;->addLoadFromMemory(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    .line 748
    sget-object v2, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    const/16 v3, 0x10

    invoke-virtual {p1, v2, v3}, Landroid/net/apf/ApfGenerator;->addLoad16Indexed(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    .line 749
    const-string/jumbo v2, "skip_dhcp_v4_filter"

    const/16 v3, 0x44

    invoke-virtual {p1, v3, v2}, Landroid/net/apf/ApfGenerator;->addJumpIfR0NotEquals(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 751
    sget-object v2, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    const/16 v3, 0x32

    invoke-virtual {p1, v2, v3}, Landroid/net/apf/ApfGenerator;->addLoadImmediate(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    .line 753
    invoke-virtual {p1}, Landroid/net/apf/ApfGenerator;->addAddR1()Landroid/net/apf/ApfGenerator;

    .line 754
    sget-object v2, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    iget-object v3, p0, Landroid/net/apf/ApfFilter;->mHardwareAddress:[B

    const-string/jumbo v4, "skip_dhcp_v4_filter"

    invoke-virtual {p1, v2, v3, v4}, Landroid/net/apf/ApfGenerator;->addJumpIfBytesNotEqual(Landroid/net/apf/ApfGenerator$Register;[BLjava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 755
    const-string/jumbo v2, "__PASS__"

    invoke-virtual {p1, v2}, Landroid/net/apf/ApfGenerator;->addJump(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 758
    const-string/jumbo v2, "skip_dhcp_v4_filter"

    invoke-virtual {p1, v2}, Landroid/net/apf/ApfGenerator;->defineLabel(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 761
    sget-object v2, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    invoke-virtual {p1, v2, v5}, Landroid/net/apf/ApfGenerator;->addLoad8(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    .line 762
    const/16 v2, 0xf0

    invoke-virtual {p1, v2}, Landroid/net/apf/ApfGenerator;->addAnd(I)Landroid/net/apf/ApfGenerator;

    .line 763
    const-string/jumbo v2, "__DROP__"

    const/16 v3, 0xe0

    invoke-virtual {p1, v3, v2}, Landroid/net/apf/ApfGenerator;->addJumpIfR0Equals(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 766
    sget-object v2, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    invoke-virtual {p1, v2, v5}, Landroid/net/apf/ApfGenerator;->addLoad32(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    .line 767
    const-string/jumbo v2, "__DROP__"

    const/4 v3, -0x1

    invoke-virtual {p1, v3, v2}, Landroid/net/apf/ApfGenerator;->addJumpIfR0Equals(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 768
    iget-object v2, p0, Landroid/net/apf/ApfFilter;->mIPv4Address:[B

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/net/apf/ApfFilter;->mIPv4PrefixLength:I

    const/16 v3, 0x1f

    if-ge v2, v3, :cond_0

    .line 769
    iget-object v2, p0, Landroid/net/apf/ApfFilter;->mIPv4Address:[B

    iget v3, p0, Landroid/net/apf/ApfFilter;->mIPv4PrefixLength:I

    invoke-static {v2, v3}, Landroid/net/apf/ApfFilter;->ipv4BroadcastAddress([BI)I

    move-result v0

    .line 770
    .local v0, "broadcastAddr":I
    const-string/jumbo v2, "__DROP__"

    invoke-virtual {p1, v0, v2}, Landroid/net/apf/ApfGenerator;->addJumpIfR0Equals(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 774
    .end local v0    # "broadcastAddr":I
    :cond_0
    sget-object v2, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/net/apf/ApfGenerator;->addLoadImmediate(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    .line 775
    sget-object v2, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    sget-object v3, Landroid/net/apf/ApfFilter;->ETH_BROADCAST_MAC_ADDRESS:[B

    const-string/jumbo v4, "__PASS__"

    invoke-virtual {p1, v2, v3, v4}, Landroid/net/apf/ApfGenerator;->addJumpIfBytesNotEqual(Landroid/net/apf/ApfGenerator$Register;[BLjava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 776
    const-string/jumbo v2, "__DROP__"

    invoke-virtual {p1, v2}, Landroid/net/apf/ApfGenerator;->addJump(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 780
    .end local v1    # "skipDhcpv4Filter":Ljava/lang/String;
    :cond_1
    const-string/jumbo v2, "__PASS__"

    invoke-virtual {p1, v2}, Landroid/net/apf/ApfGenerator;->addJump(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 722
    return-void
.end method

.method private generateIPv6FilterLocked(Landroid/net/apf/ApfGenerator;)V
    .locals 5
    .param p1, "gen"    # Landroid/net/apf/ApfGenerator;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/apf/ApfGenerator$IllegalInstructionException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x26

    .line 801
    sget-object v2, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    const/16 v3, 0x14

    invoke-virtual {p1, v2, v3}, Landroid/net/apf/ApfGenerator;->addLoad8(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    .line 804
    iget-boolean v2, p0, Landroid/net/apf/ApfFilter;->mMulticastFilter:Z

    if-eqz v2, :cond_0

    .line 806
    const-string/jumbo v0, "skipIPv6MulticastFilter"

    .line 807
    .local v0, "skipIpv6MulticastFilterLabel":Ljava/lang/String;
    sget v2, Landroid/system/OsConstants;->IPPROTO_ICMPV6:I

    invoke-virtual {p1, v2, v0}, Landroid/net/apf/ApfGenerator;->addJumpIfR0Equals(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 810
    sget-object v2, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    invoke-virtual {p1, v2, v4}, Landroid/net/apf/ApfGenerator;->addLoad8(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    .line 811
    const-string/jumbo v2, "__DROP__"

    const/16 v3, 0xff

    invoke-virtual {p1, v3, v2}, Landroid/net/apf/ApfGenerator;->addJumpIfR0Equals(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 813
    const-string/jumbo v2, "__PASS__"

    invoke-virtual {p1, v2}, Landroid/net/apf/ApfGenerator;->addJump(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 814
    invoke-virtual {p1, v0}, Landroid/net/apf/ApfGenerator;->defineLabel(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 821
    .end local v0    # "skipIpv6MulticastFilterLabel":Ljava/lang/String;
    :goto_0
    const-string/jumbo v1, "skipUnsolicitedMulticastNA"

    .line 823
    .local v1, "skipUnsolicitedMulticastNALabel":Ljava/lang/String;
    sget-object v2, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    const/16 v3, 0x36

    invoke-virtual {p1, v2, v3}, Landroid/net/apf/ApfGenerator;->addLoad8(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    .line 824
    const/16 v2, 0x88

    invoke-virtual {p1, v2, v1}, Landroid/net/apf/ApfGenerator;->addJumpIfR0NotEquals(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 827
    sget-object v2, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    invoke-virtual {p1, v2, v4}, Landroid/net/apf/ApfGenerator;->addLoadImmediate(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    .line 828
    sget-object v2, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    sget-object v3, Landroid/net/apf/ApfFilter;->IPV6_ALL_NODES_ADDRESS:[B

    invoke-virtual {p1, v2, v3, v1}, Landroid/net/apf/ApfGenerator;->addJumpIfBytesNotEqual(Landroid/net/apf/ApfGenerator$Register;[BLjava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 830
    const-string/jumbo v2, "__DROP__"

    invoke-virtual {p1, v2}, Landroid/net/apf/ApfGenerator;->addJump(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 831
    invoke-virtual {p1, v1}, Landroid/net/apf/ApfGenerator;->defineLabel(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;

    .line 791
    return-void

    .line 817
    .end local v1    # "skipUnsolicitedMulticastNALabel":Ljava/lang/String;
    :cond_0
    sget v2, Landroid/system/OsConstants;->IPPROTO_ICMPV6:I

    const-string/jumbo v3, "__PASS__"

    invoke-virtual {p1, v2, v3}, Landroid/net/apf/ApfGenerator;->addJumpIfR0NotEquals(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    goto :goto_0
.end method

.method private static getUint16(Ljava/nio/ByteBuffer;I)J
    .locals 2
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "position"    # I

    .prologue
    .line 1154
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    invoke-static {v0}, Landroid/net/apf/ApfFilter;->uint16(S)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method private static getUint32(Ljava/nio/ByteBuffer;I)J
    .locals 2
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "position"    # I

    .prologue
    .line 1158
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    invoke-static {v0}, Landroid/net/apf/ApfFilter;->uint32(I)J

    move-result-wide v0

    return-wide v0
.end method

.method private getUniqueNumberLocked()J
    .locals 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .prologue
    .line 257
    iget-wide v0, p0, Landroid/net/apf/ApfFilter;->mUniqueCounter:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Landroid/net/apf/ApfFilter;->mUniqueCounter:J

    return-wide v0
.end method

.method private hexDump(Ljava/lang/String;[BI)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "packet"    # [B
    .param p3, "length"    # I

    .prologue
    const/4 v1, 0x0

    .line 955
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2, v1, p3, v1}, Lcom/android/internal/util/HexDump;->toHexString([BIIZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/apf/ApfFilter;->log(Ljava/lang/String;)V

    .line 954
    return-void
.end method

.method public static ipv4BroadcastAddress([BI)I
    .locals 4
    .param p0, "addrBytes"    # [B
    .param p1, "prefixLength"    # I

    .prologue
    .line 1164
    invoke-static {p0}, Landroid/net/apf/ApfFilter;->bytesToInt([B)I

    move-result v0

    const/4 v1, -0x1

    invoke-static {v1}, Landroid/net/apf/ApfFilter;->uint32(I)J

    move-result-wide v2

    ushr-long/2addr v2, p1

    long-to-int v1, v2

    or-int/2addr v0, v1

    return v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 252
    const-string/jumbo v0, "ApfFilter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/apf/ApfFilter;->mNetworkInterface:Ljava/net/NetworkInterface;

    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    return-void
.end method

.method public static maybeCreate(Landroid/net/apf/ApfCapabilities;Ljava/net/NetworkInterface;Landroid/net/ip/IpManager$Callback;Z)Landroid/net/apf/ApfFilter;
    .locals 6
    .param p0, "apfCapabilities"    # Landroid/net/apf/ApfCapabilities;
    .param p1, "networkInterface"    # Ljava/net/NetworkInterface;
    .param p2, "ipManagerCallback"    # Landroid/net/ip/IpManager$Callback;
    .param p3, "multicastFilter"    # Z

    .prologue
    const/4 v3, 0x0

    .line 1034
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    return-object v3

    .line 1035
    :cond_1
    iget v0, p0, Landroid/net/apf/ApfCapabilities;->apfVersionSupported:I

    if-nez v0, :cond_2

    return-object v3

    .line 1036
    :cond_2
    iget v0, p0, Landroid/net/apf/ApfCapabilities;->maximumApfProgramSize:I

    const/16 v1, 0x200

    if-ge v0, v1, :cond_3

    .line 1037
    const-string/jumbo v0, "ApfFilter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unacceptably small APF limit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/apf/ApfCapabilities;->maximumApfProgramSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    return-object v3

    .line 1044
    :cond_3
    iget v0, p0, Landroid/net/apf/ApfCapabilities;->apfPacketFormat:I

    sget v1, Landroid/system/OsConstants;->ARPHRD_ETHER:I

    if-eq v0, v1, :cond_4

    return-object v3

    .line 1045
    :cond_4
    new-instance v0, Landroid/net/apf/ApfGenerator;

    invoke-direct {v0}, Landroid/net/apf/ApfGenerator;-><init>()V

    iget v1, p0, Landroid/net/apf/ApfCapabilities;->apfVersionSupported:I

    invoke-virtual {v0, v1}, Landroid/net/apf/ApfGenerator;->setApfVersion(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1046
    const-string/jumbo v0, "ApfFilter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unsupported APF version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/apf/ApfCapabilities;->apfVersionSupported:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    return-object v3

    .line 1049
    :cond_5
    new-instance v0, Landroid/net/apf/ApfFilter;

    .line 1050
    new-instance v5, Landroid/net/metrics/IpConnectivityLog;

    invoke-direct {v5}, Landroid/net/metrics/IpConnectivityLog;-><init>()V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    .line 1049
    invoke-direct/range {v0 .. v5}, Landroid/net/apf/ApfFilter;-><init>(Landroid/net/apf/ApfCapabilities;Ljava/net/NetworkInterface;Landroid/net/ip/IpManager$Callback;ZLandroid/net/metrics/IpConnectivityLog;)V

    return-object v0
.end method

.method private declared-synchronized processRa([BI)Landroid/net/apf/ApfFilter$ProcessRaResult;
    .locals 6
    .param p1, "packet"    # [B
    .param p2, "length"    # I

    .prologue
    monitor-enter p0

    .line 979
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Landroid/net/apf/ApfFilter;->mRas:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 980
    iget-object v3, p0, Landroid/net/apf/ApfFilter;->mRas:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/apf/ApfFilter$Ra;

    .line 981
    .local v2, "ra":Landroid/net/apf/ApfFilter$Ra;
    invoke-virtual {v2, p1, p2}, Landroid/net/apf/ApfFilter$Ra;->matches([BI)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 984
    invoke-static {}, Landroid/net/apf/ApfFilter;->curTime()J

    move-result-wide v4

    iput-wide v4, v2, Landroid/net/apf/ApfFilter$Ra;->mLastSeen:J

    .line 985
    invoke-virtual {v2, p1, p2}, Landroid/net/apf/ApfFilter$Ra;->minLifetime([BI)J

    move-result-wide v4

    iput-wide v4, v2, Landroid/net/apf/ApfFilter$Ra;->mMinLifetime:J

    .line 986
    iget v3, v2, Landroid/net/apf/ApfFilter$Ra;->seenCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Landroid/net/apf/ApfFilter$Ra;->seenCount:I

    .line 995
    iget-object v4, p0, Landroid/net/apf/ApfFilter;->mRas:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/net/apf/ApfFilter;->mRas:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/apf/ApfFilter$Ra;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 998
    invoke-direct {p0}, Landroid/net/apf/ApfFilter;->shouldInstallnewProgram()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 999
    invoke-virtual {p0}, Landroid/net/apf/ApfFilter;->installNewProgramLocked()V

    .line 1000
    sget-object v3, Landroid/net/apf/ApfFilter$ProcessRaResult;->UPDATE_EXPIRY:Landroid/net/apf/ApfFilter$ProcessRaResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v3

    .line 1002
    :cond_0
    :try_start_1
    sget-object v3, Landroid/net/apf/ApfFilter$ProcessRaResult;->MATCH:Landroid/net/apf/ApfFilter$ProcessRaResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v3

    .line 979
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1005
    .end local v2    # "ra":Landroid/net/apf/ApfFilter$Ra;
    :cond_2
    :try_start_2
    invoke-direct {p0}, Landroid/net/apf/ApfFilter;->purgeExpiredRasLocked()V

    .line 1007
    iget-object v3, p0, Landroid/net/apf/ApfFilter;->mRas:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v4, 0xa

    if-lt v3, v4, :cond_3

    .line 1008
    sget-object v3, Landroid/net/apf/ApfFilter$ProcessRaResult;->DROPPED:Landroid/net/apf/ApfFilter$ProcessRaResult;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v3

    .line 1012
    :cond_3
    :try_start_3
    new-instance v2, Landroid/net/apf/ApfFilter$Ra;

    invoke-direct {v2, p0, p1, p2}, Landroid/net/apf/ApfFilter$Ra;-><init>(Landroid/net/apf/ApfFilter;[BI)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1018
    .restart local v2    # "ra":Landroid/net/apf/ApfFilter$Ra;
    :try_start_4
    invoke-virtual {v2}, Landroid/net/apf/ApfFilter$Ra;->isExpired()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1019
    sget-object v3, Landroid/net/apf/ApfFilter$ProcessRaResult;->ZERO_LIFETIME:Landroid/net/apf/ApfFilter$ProcessRaResult;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object v3

    .line 1013
    .end local v2    # "ra":Landroid/net/apf/ApfFilter$Ra;
    :catch_0
    move-exception v0

    .line 1014
    .local v0, "e":Ljava/lang/Exception;
    :try_start_5
    const-string/jumbo v3, "ApfFilter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error parsing RA: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    sget-object v3, Landroid/net/apf/ApfFilter$ProcessRaResult;->PARSE_ERROR:Landroid/net/apf/ApfFilter$ProcessRaResult;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-object v3

    .line 1021
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "ra":Landroid/net/apf/ApfFilter$Ra;
    :cond_4
    :try_start_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Adding "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/net/apf/ApfFilter;->log(Ljava/lang/String;)V

    .line 1022
    iget-object v3, p0, Landroid/net/apf/ApfFilter;->mRas:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1023
    invoke-virtual {p0}, Landroid/net/apf/ApfFilter;->installNewProgramLocked()V

    .line 1024
    sget-object v3, Landroid/net/apf/ApfFilter$ProcessRaResult;->UPDATE_NEW_RA:Landroid/net/apf/ApfFilter$ProcessRaResult;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return-object v3

    .end local v2    # "ra":Landroid/net/apf/ApfFilter$Ra;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private purgeExpiredRasLocked()V
    .locals 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .prologue
    .line 960
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/net/apf/ApfFilter;->mRas:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 961
    iget-object v1, p0, Landroid/net/apf/ApfFilter;->mRas:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/apf/ApfFilter$Ra;

    invoke-virtual {v1}, Landroid/net/apf/ApfFilter$Ra;->isExpired()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 962
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Expiring "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/apf/ApfFilter;->mRas:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/apf/ApfFilter;->log(Ljava/lang/String;)V

    .line 963
    iget-object v1, p0, Landroid/net/apf/ApfFilter;->mRas:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 965
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 959
    :cond_1
    return-void
.end method

.method private shouldInstallnewProgram()Z
    .locals 6

    .prologue
    .line 950
    iget-wide v2, p0, Landroid/net/apf/ApfFilter;->mLastTimeInstalledProgram:J

    iget-wide v4, p0, Landroid/net/apf/ApfFilter;->mLastInstalledProgramMinLifetime:J

    add-long v0, v2, v4

    .line 951
    .local v0, "expiry":J
    invoke-static {}, Landroid/net/apf/ApfFilter;->curTime()J

    move-result-wide v2

    const-wide/16 v4, 0x1e

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static uint16(S)I
    .locals 1
    .param p0, "s"    # S

    .prologue
    .line 1146
    const v0, 0xffff

    and-int/2addr v0, p0

    return v0
.end method

.method private static uint32(I)J
    .locals 4
    .param p0, "i"    # I

    .prologue
    .line 1150
    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method private static uint8(B)I
    .locals 1
    .param p0, "b"    # B

    .prologue
    .line 1142
    and-int/lit16 v0, p0, 0xff

    return v0
.end method


# virtual methods
.method public declared-synchronized dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 10
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .prologue
    monitor-enter p0

    .line 1099
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Capabilities: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/apf/ApfFilter;->mApfCapabilities:Landroid/net/apf/ApfCapabilities;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1100
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Receive thread: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, p0, Landroid/net/apf/ApfFilter;->mReceiveThread:Landroid/net/apf/ApfFilter$ReceiveThread;

    if-eqz v3, :cond_0

    const-string/jumbo v3, "RUNNING"

    :goto_0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1101
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Multicast: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v3, p0, Landroid/net/apf/ApfFilter;->mMulticastFilter:Z

    if-eqz v3, :cond_1

    const-string/jumbo v3, "DROP"

    :goto_1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1103
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "IPv4 address: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/apf/ApfFilter;->mIPv4Address:[B

    invoke-static {v4}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1106
    :goto_2
    :try_start_2
    iget-wide v4, p0, Landroid/net/apf/ApfFilter;->mLastTimeInstalledProgram:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_2

    .line 1107
    const-string/jumbo v3, "No program installed."

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 1108
    return-void

    .line 1100
    :cond_0
    :try_start_3
    const-string/jumbo v3, "STOPPED"

    goto :goto_0

    .line 1101
    :cond_1
    const-string/jumbo v3, "ALLOW"

    goto :goto_1

    .line 1110
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Program updates: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/net/apf/ApfFilter;->mNumProgramUpdates:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1112
    const-string/jumbo v3, "Last program length %d, installed %ds ago, lifetime %ds"

    .line 1111
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    .line 1113
    iget-object v5, p0, Landroid/net/apf/ApfFilter;->mLastInstalledProgram:[B

    array-length v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {}, Landroid/net/apf/ApfFilter;->curTime()J

    move-result-wide v6

    iget-wide v8, p0, Landroid/net/apf/ApfFilter;->mLastTimeInstalledProgram:J

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    .line 1114
    iget-wide v6, p0, Landroid/net/apf/ApfFilter;->mLastInstalledProgramMinLifetime:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v4, v6

    .line 1111
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1116
    const-string/jumbo v3, "RA filters:"

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1117
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1118
    iget-object v3, p0, Landroid/net/apf/ApfFilter;->mRas:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "ra$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/apf/ApfFilter$Ra;

    .line 1119
    .local v1, "ra":Landroid/net/apf/ApfFilter$Ra;
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 1120
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1122
    const-string/jumbo v3, "Seen: %d, last %ds ago"

    .line 1121
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 1122
    iget v5, v1, Landroid/net/apf/ApfFilter$Ra;->seenCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {}, Landroid/net/apf/ApfFilter;->curTime()J

    move-result-wide v6

    iget-wide v8, v1, Landroid/net/apf/ApfFilter$Ra;->mLastSeen:J

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    .line 1121
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1124
    const-string/jumbo v3, "Last match:"

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1125
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1126
    invoke-virtual {v1}, Landroid/net/apf/ApfFilter$Ra;->getLastMatchingPacket()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1127
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1129
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .end local v1    # "ra":Landroid/net/apf/ApfFilter$Ra;
    .end local v2    # "ra$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1131
    .restart local v2    # "ra$iterator":Ljava/util/Iterator;
    :cond_3
    :try_start_4
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1134
    const-string/jumbo v3, "Last program:"

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1135
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1136
    iget-object v3, p0, Landroid/net/apf/ApfFilter;->mLastInstalledProgram:[B

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/internal/util/HexDump;->toHexString([BZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1137
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    .line 1098
    return-void

    .line 1104
    .end local v2    # "ra$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto/16 :goto_2
.end method

.method installNewProgramLocked()V
    .locals 14
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .prologue
    .line 907
    invoke-direct {p0}, Landroid/net/apf/ApfFilter;->purgeExpiredRasLocked()V

    .line 908
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 910
    .local v12, "rasToFilter":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/apf/ApfFilter$Ra;>;"
    const-wide v2, 0x7fffffffffffffffL

    .line 913
    .local v2, "programMinLifetime":J
    :try_start_0
    invoke-direct {p0}, Landroid/net/apf/ApfFilter;->beginProgramLocked()Landroid/net/apf/ApfGenerator;

    move-result-object v8

    .line 914
    .local v8, "gen":Landroid/net/apf/ApfGenerator;
    iget-object v1, p0, Landroid/net/apf/ApfFilter;->mRas:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "ra$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/apf/ApfFilter$Ra;

    .line 915
    .local v10, "ra":Landroid/net/apf/ApfFilter$Ra;
    invoke-virtual {v10, v8}, Landroid/net/apf/ApfFilter$Ra;->generateFilterLocked(Landroid/net/apf/ApfGenerator;)J

    .line 917
    invoke-virtual {v8}, Landroid/net/apf/ApfGenerator;->programLengthOverEstimate()I

    move-result v1

    iget-object v4, p0, Landroid/net/apf/ApfFilter;->mApfCapabilities:Landroid/net/apf/ApfCapabilities;

    iget v4, v4, Landroid/net/apf/ApfCapabilities;->maximumApfProgramSize:I

    if-le v1, v4, :cond_1

    .line 921
    .end local v10    # "ra":Landroid/net/apf/ApfFilter$Ra;
    :cond_0
    invoke-direct {p0}, Landroid/net/apf/ApfFilter;->beginProgramLocked()Landroid/net/apf/ApfGenerator;

    move-result-object v8

    .line 922
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/apf/ApfFilter$Ra;

    .line 923
    .restart local v10    # "ra":Landroid/net/apf/ApfFilter$Ra;
    invoke-virtual {v10, v8}, Landroid/net/apf/ApfFilter$Ra;->generateFilterLocked(Landroid/net/apf/ApfGenerator;)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    goto :goto_1

    .line 918
    :cond_1
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/net/apf/ApfGenerator$IllegalInstructionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 928
    .end local v8    # "gen":Landroid/net/apf/ApfGenerator;
    .end local v10    # "ra":Landroid/net/apf/ApfFilter$Ra;
    .end local v11    # "ra$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v0

    .line 929
    .local v0, "e":Landroid/net/apf/ApfGenerator$IllegalInstructionException;
    const-string/jumbo v1, "ApfFilter"

    const-string/jumbo v4, "Program failed to generate: "

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 930
    return-void

    .line 927
    .end local v0    # "e":Landroid/net/apf/ApfGenerator$IllegalInstructionException;
    .restart local v8    # "gen":Landroid/net/apf/ApfGenerator;
    .restart local v11    # "ra$iterator":Ljava/util/Iterator;
    :cond_2
    :try_start_1
    invoke-virtual {v8}, Landroid/net/apf/ApfGenerator;->generate()[B
    :try_end_1
    .catch Landroid/net/apf/ApfGenerator$IllegalInstructionException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v9

    .line 932
    .local v9, "program":[B
    invoke-static {}, Landroid/net/apf/ApfFilter;->curTime()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/net/apf/ApfFilter;->mLastTimeInstalledProgram:J

    .line 933
    iput-wide v2, p0, Landroid/net/apf/ApfFilter;->mLastInstalledProgramMinLifetime:J

    .line 934
    iput-object v9, p0, Landroid/net/apf/ApfFilter;->mLastInstalledProgram:[B

    .line 935
    iget v1, p0, Landroid/net/apf/ApfFilter;->mNumProgramUpdates:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/net/apf/ApfFilter;->mNumProgramUpdates:I

    .line 940
    iget-object v1, p0, Landroid/net/apf/ApfFilter;->mIpManagerCallback:Landroid/net/ip/IpManager$Callback;

    invoke-virtual {v1, v9}, Landroid/net/ip/IpManager$Callback;->installPacketFilter([B)V

    .line 941
    iget-object v1, p0, Landroid/net/apf/ApfFilter;->mIPv4Address:[B

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    :goto_2
    iget-boolean v4, p0, Landroid/net/apf/ApfFilter;->mMulticastFilter:Z

    invoke-static {v1, v4}, Landroid/net/metrics/ApfProgramEvent;->flagsFor(ZZ)I

    move-result v7

    .line 942
    .local v7, "flags":I
    iget-object v13, p0, Landroid/net/apf/ApfFilter;->mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

    new-instance v1, Landroid/net/metrics/ApfProgramEvent;

    .line 943
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget-object v5, p0, Landroid/net/apf/ApfFilter;->mRas:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    array-length v6, v9

    .line 942
    invoke-direct/range {v1 .. v7}, Landroid/net/metrics/ApfProgramEvent;-><init>(JIIII)V

    invoke-virtual {v13, v1}, Landroid/net/metrics/IpConnectivityLog;->log(Landroid/os/Parcelable;)V

    .line 906
    return-void

    .line 941
    .end local v7    # "flags":I
    :cond_3
    const/4 v1, 0x0

    goto :goto_2
.end method

.method maybeStartFilter()V
    .locals 6

    .prologue
    .line 268
    :try_start_0
    iget-object v3, p0, Landroid/net/apf/ApfFilter;->mNetworkInterface:Ljava/net/NetworkInterface;

    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v3

    iput-object v3, p0, Landroid/net/apf/ApfFilter;->mHardwareAddress:[B

    .line 269
    monitor-enter p0
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    :try_start_1
    invoke-virtual {p0}, Landroid/net/apf/ApfFilter;->installNewProgramLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p0

    .line 273
    sget v3, Landroid/system/OsConstants;->AF_PACKET:I

    sget v4, Landroid/system/OsConstants;->SOCK_RAW:I

    sget v5, Landroid/system/OsConstants;->ETH_P_IPV6:I

    invoke-static {v3, v4, v5}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v2

    .line 274
    .local v2, "socket":Ljava/io/FileDescriptor;
    new-instance v0, Landroid/system/PacketSocketAddress;

    sget v3, Landroid/system/OsConstants;->ETH_P_IPV6:I

    int-to-short v3, v3

    .line 275
    iget-object v4, p0, Landroid/net/apf/ApfFilter;->mNetworkInterface:Ljava/net/NetworkInterface;

    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getIndex()I

    move-result v4

    .line 274
    invoke-direct {v0, v3, v4}, Landroid/system/PacketSocketAddress;-><init>(SI)V

    .line 276
    .local v0, "addr":Landroid/system/PacketSocketAddress;
    invoke-static {v2, v0}, Landroid/system/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)V

    .line 277
    iget-object v3, p0, Landroid/net/apf/ApfFilter;->mApfCapabilities:Landroid/net/apf/ApfCapabilities;

    iget v3, v3, Landroid/net/apf/ApfCapabilities;->apfPacketFormat:I

    invoke-static {v2, v3}, Landroid/net/NetworkUtils;->attachRaFilter(Ljava/io/FileDescriptor;I)V
    :try_end_2
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_0

    .line 282
    new-instance v3, Landroid/net/apf/ApfFilter$ReceiveThread;

    invoke-direct {v3, p0, v2}, Landroid/net/apf/ApfFilter$ReceiveThread;-><init>(Landroid/net/apf/ApfFilter;Ljava/io/FileDescriptor;)V

    iput-object v3, p0, Landroid/net/apf/ApfFilter;->mReceiveThread:Landroid/net/apf/ApfFilter$ReceiveThread;

    .line 283
    iget-object v3, p0, Landroid/net/apf/ApfFilter;->mReceiveThread:Landroid/net/apf/ApfFilter$ReceiveThread;

    invoke-virtual {v3}, Landroid/net/apf/ApfFilter$ReceiveThread;->start()V

    .line 265
    return-void

    .line 269
    .end local v0    # "addr":Landroid/system/PacketSocketAddress;
    .end local v2    # "socket":Ljava/io/FileDescriptor;
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit p0

    throw v3
    :try_end_3
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_3 .. :try_end_3} :catch_0

    .line 278
    :catch_0
    move-exception v1

    .line 279
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "ApfFilter"

    const-string/jumbo v4, "Error starting filter"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 280
    return-void
.end method

.method public declared-synchronized setLinkProperties(Landroid/net/LinkProperties;)V
    .locals 4
    .param p1, "lp"    # Landroid/net/LinkProperties;

    .prologue
    monitor-enter p0

    .line 1087
    :try_start_0
    invoke-static {p1}, Landroid/net/apf/ApfFilter;->findIPv4LinkAddress(Landroid/net/LinkProperties;)Landroid/net/LinkAddress;

    move-result-object v1

    .line 1088
    .local v1, "ipv4Address":Landroid/net/LinkAddress;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 1089
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v2

    .line 1090
    .local v2, "prefix":I
    :goto_1
    iget v3, p0, Landroid/net/apf/ApfFilter;->mIPv4PrefixLength:I

    if-ne v2, v3, :cond_2

    iget-object v3, p0, Landroid/net/apf/ApfFilter;->mIPv4Address:[B

    invoke-static {v0, v3}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_2

    monitor-exit p0

    .line 1091
    return-void

    .line 1088
    .end local v2    # "prefix":I
    :cond_0
    const/4 v0, 0x0

    .local v0, "addr":[B
    goto :goto_0

    .line 1089
    .end local v0    # "addr":[B
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "prefix":I
    goto :goto_1

    .line 1093
    :cond_2
    :try_start_1
    iput-object v0, p0, Landroid/net/apf/ApfFilter;->mIPv4Address:[B

    .line 1094
    iput v2, p0, Landroid/net/apf/ApfFilter;->mIPv4PrefixLength:I

    .line 1095
    invoke-virtual {p0}, Landroid/net/apf/ApfFilter;->installNewProgramLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 1085
    return-void

    .end local v1    # "ipv4Address":Landroid/net/LinkAddress;
    .end local v2    # "prefix":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized setMulticastFilter(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    monitor-enter p0

    .line 1063
    :try_start_0
    iget-boolean v0, p0, Landroid/net/apf/ApfFilter;->mMulticastFilter:Z

    if-eq v0, p1, :cond_0

    .line 1064
    iput-boolean p1, p0, Landroid/net/apf/ApfFilter;->mMulticastFilter:Z

    .line 1065
    invoke-virtual {p0}, Landroid/net/apf/ApfFilter;->installNewProgramLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 1062
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized shutdown()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 1054
    :try_start_0
    iget-object v0, p0, Landroid/net/apf/ApfFilter;->mReceiveThread:Landroid/net/apf/ApfFilter$ReceiveThread;

    if-eqz v0, :cond_0

    .line 1055
    const-string/jumbo v0, "shutting down"

    invoke-direct {p0, v0}, Landroid/net/apf/ApfFilter;->log(Ljava/lang/String;)V

    .line 1056
    iget-object v0, p0, Landroid/net/apf/ApfFilter;->mReceiveThread:Landroid/net/apf/ApfFilter$ReceiveThread;

    invoke-virtual {v0}, Landroid/net/apf/ApfFilter$ReceiveThread;->halt()V

    .line 1057
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/apf/ApfFilter;->mReceiveThread:Landroid/net/apf/ApfFilter$ReceiveThread;

    .line 1059
    :cond_0
    iget-object v0, p0, Landroid/net/apf/ApfFilter;->mRas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1053
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
