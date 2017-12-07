.class public final Lcom/android/server/connectivity/IpConnectivityEventBuilder;
.super Ljava/lang/Object;
.source "IpConnectivityEventBuilder.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static bytesToInts([B)[I
    .locals 3
    .param p0, "in"    # [B

    .prologue
    .line 228
    array-length v2, p0

    new-array v1, v2, [I

    .line 229
    .local v1, "out":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 230
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v0

    .line 229
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 232
    :cond_0
    return-object v1
.end method

.method private static ipSupportOf(Landroid/net/metrics/DefaultNetworkEvent;)I
    .locals 1
    .param p0, "in"    # Landroid/net/metrics/DefaultNetworkEvent;

    .prologue
    .line 242
    iget-boolean v0, p0, Landroid/net/metrics/DefaultNetworkEvent;->prevIPv4:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/net/metrics/DefaultNetworkEvent;->prevIPv6:Z

    if-eqz v0, :cond_0

    .line 243
    const/4 v0, 0x3

    return v0

    .line 245
    :cond_0
    iget-boolean v0, p0, Landroid/net/metrics/DefaultNetworkEvent;->prevIPv6:Z

    if-eqz v0, :cond_1

    .line 246
    const/4 v0, 0x2

    return v0

    .line 248
    :cond_1
    iget-boolean v0, p0, Landroid/net/metrics/DefaultNetworkEvent;->prevIPv4:Z

    if-eqz v0, :cond_2

    .line 249
    const/4 v0, 0x1

    return v0

    .line 251
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private static isBitSet(II)Z
    .locals 3
    .param p0, "flags"    # I
    .param p1, "bit"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 255
    shl-int v2, v0, p1

    and-int/2addr v2, p0

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private static netIdOf(I)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;
    .locals 1
    .param p0, "netid"    # I

    .prologue
    .line 236
    new-instance v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;-><init>()V

    .line 237
    .local v0, "ni":Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;
    iput p0, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;->networkId:I

    .line 238
    return-object v0
.end method

.method public static serialize(ILjava/util/List;)[B
    .locals 2
    .param p0, "dropped"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Landroid/net/ConnectivityMetricsEvent;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    .local p1, "events":Ljava/util/List;, "Ljava/util/List<Landroid/net/ConnectivityMetricsEvent;>;"
    new-instance v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityLog;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityLog;-><init>()V

    .line 49
    .local v0, "log":Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityLog;
    invoke-static {p1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->toProto(Ljava/util/List;)[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityLog;->events:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;

    .line 50
    iput p0, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityLog;->droppedEvents:I

    .line 51
    invoke-static {v0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityLog;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v1

    return-object v1
.end method

.method private static setApfProgramEvent(Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/ApfProgramEvent;)V
    .locals 5
    .param p0, "out"    # Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;
    .param p1, "in"    # Landroid/net/metrics/ApfProgramEvent;

    .prologue
    const/4 v4, 0x1

    .line 192
    new-instance v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfProgramEvent;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfProgramEvent;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->apfProgramEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfProgramEvent;

    .line 193
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->apfProgramEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfProgramEvent;

    iget-wide v2, p1, Landroid/net/metrics/ApfProgramEvent;->lifetime:J

    iput-wide v2, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfProgramEvent;->lifetime:J

    .line 194
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->apfProgramEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfProgramEvent;

    iget v1, p1, Landroid/net/metrics/ApfProgramEvent;->filteredRas:I

    iput v1, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfProgramEvent;->filteredRas:I

    .line 195
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->apfProgramEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfProgramEvent;

    iget v1, p1, Landroid/net/metrics/ApfProgramEvent;->currentRas:I

    iput v1, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfProgramEvent;->currentRas:I

    .line 196
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->apfProgramEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfProgramEvent;

    iget v1, p1, Landroid/net/metrics/ApfProgramEvent;->programLength:I

    iput v1, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfProgramEvent;->programLength:I

    .line 197
    iget v0, p1, Landroid/net/metrics/ApfProgramEvent;->flags:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->isBitSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->apfProgramEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfProgramEvent;

    iput-boolean v4, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfProgramEvent;->dropMulticast:Z

    .line 200
    :cond_0
    iget v0, p1, Landroid/net/metrics/ApfProgramEvent;->flags:I

    invoke-static {v0, v4}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->isBitSet(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 201
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->apfProgramEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfProgramEvent;

    iput-boolean v4, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfProgramEvent;->hasIpv4Addr:Z

    .line 191
    :cond_1
    return-void
.end method

.method private static setApfStats(Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/ApfStats;)V
    .locals 4
    .param p0, "out"    # Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;
    .param p1, "in"    # Landroid/net/metrics/ApfStats;

    .prologue
    .line 206
    new-instance v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->apfStatistics:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;

    .line 207
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->apfStatistics:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;

    iget-wide v2, p1, Landroid/net/metrics/ApfStats;->durationMs:J

    iput-wide v2, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;->durationMs:J

    .line 208
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->apfStatistics:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;

    iget v1, p1, Landroid/net/metrics/ApfStats;->receivedRas:I

    iput v1, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;->receivedRas:I

    .line 209
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->apfStatistics:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;

    iget v1, p1, Landroid/net/metrics/ApfStats;->matchingRas:I

    iput v1, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;->matchingRas:I

    .line 210
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->apfStatistics:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;

    iget v1, p1, Landroid/net/metrics/ApfStats;->droppedRas:I

    iput v1, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;->droppedRas:I

    .line 211
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->apfStatistics:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;

    iget v1, p1, Landroid/net/metrics/ApfStats;->zeroLifetimeRas:I

    iput v1, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;->zeroLifetimeRas:I

    .line 212
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->apfStatistics:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;

    iget v1, p1, Landroid/net/metrics/ApfStats;->parseErrors:I

    iput v1, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;->parseErrors:I

    .line 213
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->apfStatistics:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;

    iget v1, p1, Landroid/net/metrics/ApfStats;->programUpdates:I

    iput v1, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;->programUpdates:I

    .line 214
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->apfStatistics:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;

    iget v1, p1, Landroid/net/metrics/ApfStats;->maxProgramSize:I

    iput v1, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;->maxProgramSize:I

    .line 205
    return-void
.end method

.method private static setDefaultNetworkEvent(Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/DefaultNetworkEvent;)V
    .locals 2
    .param p0, "out"    # Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;
    .param p1, "in"    # Landroid/net/metrics/DefaultNetworkEvent;

    .prologue
    .line 169
    new-instance v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->defaultNetworkEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;

    .line 170
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->defaultNetworkEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;

    iget v1, p1, Landroid/net/metrics/DefaultNetworkEvent;->netId:I

    invoke-static {v1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->netIdOf(I)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;->networkId:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

    .line 171
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->defaultNetworkEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;

    iget v1, p1, Landroid/net/metrics/DefaultNetworkEvent;->prevNetId:I

    invoke-static {v1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->netIdOf(I)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;->previousNetworkId:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

    .line 172
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->defaultNetworkEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;

    iget-object v1, p1, Landroid/net/metrics/DefaultNetworkEvent;->transportTypes:[I

    iput-object v1, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;->transportTypes:[I

    .line 173
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->defaultNetworkEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;

    invoke-static {p1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->ipSupportOf(Landroid/net/metrics/DefaultNetworkEvent;)I

    move-result v1

    iput v1, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;->previousNetworkIpSupport:I

    .line 168
    return-void
.end method

.method private static setDhcpClientEvent(Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/DhcpClientEvent;)V
    .locals 2
    .param p0, "out"    # Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;
    .param p1, "in"    # Landroid/net/metrics/DhcpClientEvent;

    .prologue
    .line 141
    new-instance v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->dhcpEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;

    .line 142
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->dhcpEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;

    iget-object v1, p1, Landroid/net/metrics/DhcpClientEvent;->ifName:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;->ifName:Ljava/lang/String;

    .line 143
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->dhcpEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;

    iget-object v1, p1, Landroid/net/metrics/DhcpClientEvent;->msg:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;->stateTransition:Ljava/lang/String;

    .line 144
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->dhcpEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;

    iget v1, p1, Landroid/net/metrics/DhcpClientEvent;->durationMs:I

    iput v1, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;->durationMs:I

    .line 140
    return-void
.end method

.method private static setDhcpErrorEvent(Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/DhcpErrorEvent;)V
    .locals 2
    .param p0, "out"    # Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;
    .param p1, "in"    # Landroid/net/metrics/DhcpErrorEvent;

    .prologue
    .line 135
    new-instance v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->dhcpEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;

    .line 136
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->dhcpEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;

    iget-object v1, p1, Landroid/net/metrics/DhcpErrorEvent;->ifName:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;->ifName:Ljava/lang/String;

    .line 137
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->dhcpEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;

    iget v1, p1, Landroid/net/metrics/DhcpErrorEvent;->errorCode:I

    iput v1, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;->errorCode:I

    .line 134
    return-void
.end method

.method private static setDnsEvent(Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/DnsEvent;)V
    .locals 2
    .param p0, "out"    # Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;
    .param p1, "in"    # Landroid/net/metrics/DnsEvent;

    .prologue
    .line 148
    new-instance v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->dnsLookupBatch:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;

    .line 149
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->dnsLookupBatch:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;

    iget v1, p1, Landroid/net/metrics/DnsEvent;->netId:I

    invoke-static {v1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->netIdOf(I)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->networkId:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

    .line 150
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->dnsLookupBatch:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;

    iget-object v1, p1, Landroid/net/metrics/DnsEvent;->eventTypes:[B

    invoke-static {v1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->bytesToInts([B)[I

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->eventTypes:[I

    .line 151
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->dnsLookupBatch:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;

    iget-object v1, p1, Landroid/net/metrics/DnsEvent;->returnCodes:[B

    invoke-static {v1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->bytesToInts([B)[I

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->returnCodes:[I

    .line 152
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->dnsLookupBatch:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;

    iget-object v1, p1, Landroid/net/metrics/DnsEvent;->latenciesMs:[I

    iput-object v1, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;->latenciesMs:[I

    .line 147
    return-void
.end method

.method private static setEvent(Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;Landroid/os/Parcelable;)Z
    .locals 2
    .param p0, "out"    # Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;
    .param p1, "in"    # Landroid/os/Parcelable;

    .prologue
    const/4 v1, 0x1

    .line 76
    instance-of v0, p1, Landroid/net/metrics/DhcpErrorEvent;

    if-eqz v0, :cond_0

    .line 77
    check-cast p1, Landroid/net/metrics/DhcpErrorEvent;

    .end local p1    # "in":Landroid/os/Parcelable;
    invoke-static {p0, p1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->setDhcpErrorEvent(Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/DhcpErrorEvent;)V

    .line 78
    return v1

    .line 81
    .restart local p1    # "in":Landroid/os/Parcelable;
    :cond_0
    instance-of v0, p1, Landroid/net/metrics/DhcpClientEvent;

    if-eqz v0, :cond_1

    .line 82
    check-cast p1, Landroid/net/metrics/DhcpClientEvent;

    .end local p1    # "in":Landroid/os/Parcelable;
    invoke-static {p0, p1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->setDhcpClientEvent(Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/DhcpClientEvent;)V

    .line 83
    return v1

    .line 86
    .restart local p1    # "in":Landroid/os/Parcelable;
    :cond_1
    instance-of v0, p1, Landroid/net/metrics/DnsEvent;

    if-eqz v0, :cond_2

    .line 87
    check-cast p1, Landroid/net/metrics/DnsEvent;

    .end local p1    # "in":Landroid/os/Parcelable;
    invoke-static {p0, p1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->setDnsEvent(Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/DnsEvent;)V

    .line 88
    return v1

    .line 91
    .restart local p1    # "in":Landroid/os/Parcelable;
    :cond_2
    instance-of v0, p1, Landroid/net/metrics/IpManagerEvent;

    if-eqz v0, :cond_3

    .line 92
    check-cast p1, Landroid/net/metrics/IpManagerEvent;

    .end local p1    # "in":Landroid/os/Parcelable;
    invoke-static {p0, p1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->setIpManagerEvent(Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/IpManagerEvent;)V

    .line 93
    return v1

    .line 96
    .restart local p1    # "in":Landroid/os/Parcelable;
    :cond_3
    instance-of v0, p1, Landroid/net/metrics/IpReachabilityEvent;

    if-eqz v0, :cond_4

    .line 97
    check-cast p1, Landroid/net/metrics/IpReachabilityEvent;

    .end local p1    # "in":Landroid/os/Parcelable;
    invoke-static {p0, p1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->setIpReachabilityEvent(Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/IpReachabilityEvent;)V

    .line 98
    return v1

    .line 101
    .restart local p1    # "in":Landroid/os/Parcelable;
    :cond_4
    instance-of v0, p1, Landroid/net/metrics/DefaultNetworkEvent;

    if-eqz v0, :cond_5

    .line 102
    check-cast p1, Landroid/net/metrics/DefaultNetworkEvent;

    .end local p1    # "in":Landroid/os/Parcelable;
    invoke-static {p0, p1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->setDefaultNetworkEvent(Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/DefaultNetworkEvent;)V

    .line 103
    return v1

    .line 106
    .restart local p1    # "in":Landroid/os/Parcelable;
    :cond_5
    instance-of v0, p1, Landroid/net/metrics/NetworkEvent;

    if-eqz v0, :cond_6

    .line 107
    check-cast p1, Landroid/net/metrics/NetworkEvent;

    .end local p1    # "in":Landroid/os/Parcelable;
    invoke-static {p0, p1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->setNetworkEvent(Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/NetworkEvent;)V

    .line 108
    return v1

    .line 111
    .restart local p1    # "in":Landroid/os/Parcelable;
    :cond_6
    instance-of v0, p1, Landroid/net/metrics/ValidationProbeEvent;

    if-eqz v0, :cond_7

    .line 112
    check-cast p1, Landroid/net/metrics/ValidationProbeEvent;

    .end local p1    # "in":Landroid/os/Parcelable;
    invoke-static {p0, p1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->setValidationProbeEvent(Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/ValidationProbeEvent;)V

    .line 113
    return v1

    .line 116
    .restart local p1    # "in":Landroid/os/Parcelable;
    :cond_7
    instance-of v0, p1, Landroid/net/metrics/ApfProgramEvent;

    if-eqz v0, :cond_8

    .line 117
    check-cast p1, Landroid/net/metrics/ApfProgramEvent;

    .end local p1    # "in":Landroid/os/Parcelable;
    invoke-static {p0, p1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->setApfProgramEvent(Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/ApfProgramEvent;)V

    .line 118
    return v1

    .line 121
    .restart local p1    # "in":Landroid/os/Parcelable;
    :cond_8
    instance-of v0, p1, Landroid/net/metrics/ApfStats;

    if-eqz v0, :cond_9

    .line 122
    check-cast p1, Landroid/net/metrics/ApfStats;

    .end local p1    # "in":Landroid/os/Parcelable;
    invoke-static {p0, p1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->setApfStats(Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/ApfStats;)V

    .line 123
    return v1

    .line 126
    .restart local p1    # "in":Landroid/os/Parcelable;
    :cond_9
    instance-of v0, p1, Landroid/net/metrics/RaEvent;

    if-eqz v0, :cond_a

    .line 127
    check-cast p1, Landroid/net/metrics/RaEvent;

    .end local p1    # "in":Landroid/os/Parcelable;
    invoke-static {p0, p1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->setRaEvent(Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/RaEvent;)V

    .line 128
    return v1

    .line 131
    .restart local p1    # "in":Landroid/os/Parcelable;
    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method private static setIpManagerEvent(Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/IpManagerEvent;)V
    .locals 4
    .param p0, "out"    # Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;
    .param p1, "in"    # Landroid/net/metrics/IpManagerEvent;

    .prologue
    .line 156
    new-instance v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpProvisioningEvent;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpProvisioningEvent;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->ipProvisioningEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpProvisioningEvent;

    .line 157
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->ipProvisioningEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpProvisioningEvent;

    iget-object v1, p1, Landroid/net/metrics/IpManagerEvent;->ifName:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpProvisioningEvent;->ifName:Ljava/lang/String;

    .line 158
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->ipProvisioningEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpProvisioningEvent;

    iget v1, p1, Landroid/net/metrics/IpManagerEvent;->eventType:I

    iput v1, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpProvisioningEvent;->eventType:I

    .line 159
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->ipProvisioningEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpProvisioningEvent;

    iget-wide v2, p1, Landroid/net/metrics/IpManagerEvent;->durationMs:J

    long-to-int v1, v2

    iput v1, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpProvisioningEvent;->latencyMs:I

    .line 155
    return-void
.end method

.method private static setIpReachabilityEvent(Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/IpReachabilityEvent;)V
    .locals 2
    .param p0, "out"    # Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;
    .param p1, "in"    # Landroid/net/metrics/IpReachabilityEvent;

    .prologue
    .line 163
    new-instance v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpReachabilityEvent;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpReachabilityEvent;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->ipReachabilityEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpReachabilityEvent;

    .line 164
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->ipReachabilityEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpReachabilityEvent;

    iget-object v1, p1, Landroid/net/metrics/IpReachabilityEvent;->ifName:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpReachabilityEvent;->ifName:Ljava/lang/String;

    .line 165
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->ipReachabilityEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpReachabilityEvent;

    iget v1, p1, Landroid/net/metrics/IpReachabilityEvent;->eventType:I

    iput v1, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpReachabilityEvent;->eventType:I

    .line 162
    return-void
.end method

.method private static setNetworkEvent(Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/NetworkEvent;)V
    .locals 4
    .param p0, "out"    # Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;
    .param p1, "in"    # Landroid/net/metrics/NetworkEvent;

    .prologue
    .line 177
    new-instance v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->networkEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;

    .line 178
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->networkEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;

    iget v1, p1, Landroid/net/metrics/NetworkEvent;->netId:I

    invoke-static {v1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->netIdOf(I)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;->networkId:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

    .line 179
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->networkEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;

    iget v1, p1, Landroid/net/metrics/NetworkEvent;->eventType:I

    iput v1, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;->eventType:I

    .line 180
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->networkEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;

    iget-wide v2, p1, Landroid/net/metrics/NetworkEvent;->durationMs:J

    long-to-int v1, v2

    iput v1, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;->latencyMs:I

    .line 176
    return-void
.end method

.method private static setRaEvent(Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/RaEvent;)V
    .locals 4
    .param p0, "out"    # Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;
    .param p1, "in"    # Landroid/net/metrics/RaEvent;

    .prologue
    .line 218
    new-instance v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->raEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;

    .line 219
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->raEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;

    iget-wide v2, p1, Landroid/net/metrics/RaEvent;->routerLifetime:J

    iput-wide v2, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->routerLifetime:J

    .line 220
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->raEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;

    iget-wide v2, p1, Landroid/net/metrics/RaEvent;->prefixValidLifetime:J

    iput-wide v2, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->prefixValidLifetime:J

    .line 221
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->raEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;

    iget-wide v2, p1, Landroid/net/metrics/RaEvent;->prefixPreferredLifetime:J

    iput-wide v2, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->prefixPreferredLifetime:J

    .line 222
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->raEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;

    iget-wide v2, p1, Landroid/net/metrics/RaEvent;->routeInfoLifetime:J

    iput-wide v2, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->routeInfoLifetime:J

    .line 223
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->raEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;

    iget-wide v2, p1, Landroid/net/metrics/RaEvent;->rdnssLifetime:J

    iput-wide v2, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->rdnssLifetime:J

    .line 224
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->raEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;

    iget-wide v2, p1, Landroid/net/metrics/RaEvent;->dnsslLifetime:J

    iput-wide v2, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->dnsslLifetime:J

    .line 217
    return-void
.end method

.method private static setValidationProbeEvent(Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/ValidationProbeEvent;)V
    .locals 4
    .param p0, "out"    # Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;
    .param p1, "in"    # Landroid/net/metrics/ValidationProbeEvent;

    .prologue
    .line 184
    new-instance v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ValidationProbeEvent;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ValidationProbeEvent;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->validationProbeEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ValidationProbeEvent;

    .line 185
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->validationProbeEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ValidationProbeEvent;

    iget v1, p1, Landroid/net/metrics/ValidationProbeEvent;->netId:I

    invoke-static {v1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->netIdOf(I)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ValidationProbeEvent;->networkId:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;

    .line 186
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->validationProbeEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ValidationProbeEvent;

    iget-wide v2, p1, Landroid/net/metrics/ValidationProbeEvent;->durationMs:J

    long-to-int v1, v2

    iput v1, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ValidationProbeEvent;->latencyMs:I

    .line 187
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->validationProbeEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ValidationProbeEvent;

    iget v1, p1, Landroid/net/metrics/ValidationProbeEvent;->probeType:I

    iput v1, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ValidationProbeEvent;->probeType:I

    .line 188
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->validationProbeEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ValidationProbeEvent;

    iget v1, p1, Landroid/net/metrics/ValidationProbeEvent;->returnCode:I

    iput v1, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ValidationProbeEvent;->probeResult:I

    .line 183
    return-void
.end method

.method public static toProto(Landroid/net/ConnectivityMetricsEvent;)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;
    .locals 4
    .param p0, "ev"    # Landroid/net/ConnectivityMetricsEvent;

    .prologue
    .line 67
    new-instance v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;-><init>()V

    .line 68
    .local v0, "out":Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;
    iget-object v1, p0, Landroid/net/ConnectivityMetricsEvent;->data:Landroid/os/Parcelable;

    invoke-static {v0, v1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->setEvent(Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;Landroid/os/Parcelable;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 69
    const/4 v1, 0x0

    return-object v1

    .line 71
    :cond_0
    iget-wide v2, p0, Landroid/net/ConnectivityMetricsEvent;->timestamp:J

    iput-wide v2, v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->timeMs:J

    .line 72
    return-object v0
.end method

.method public static toProto(Ljava/util/List;)[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/ConnectivityMetricsEvent;",
            ">;)[",
            "Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "eventsIn":Ljava/util/List;, "Ljava/util/List<Landroid/net/ConnectivityMetricsEvent;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 56
    .local v0, "eventsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "in$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityMetricsEvent;

    .line 57
    .local v1, "in":Landroid/net/ConnectivityMetricsEvent;
    invoke-static {v1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->toProto(Landroid/net/ConnectivityMetricsEvent;)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;

    move-result-object v3

    .line 58
    .local v3, "out":Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;
    if-eqz v3, :cond_0

    .line 61
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 63
    .end local v1    # "in":Landroid/net/ConnectivityMetricsEvent;
    .end local v3    # "out":Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;

    return-object v4
.end method
