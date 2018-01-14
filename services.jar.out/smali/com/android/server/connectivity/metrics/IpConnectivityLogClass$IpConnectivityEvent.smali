.class public final Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;
.super Lcom/google/protobuf/nano/MessageNano;
.source "IpConnectivityLogClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/metrics/IpConnectivityLogClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IpConnectivityEvent"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;


# instance fields
.field public apfProgramEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfProgramEvent;

.field public apfStatistics:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;

.field public defaultNetworkEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;

.field public dhcpEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;

.field public dnsLookupBatch:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;

.field public ipProvisioningEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpProvisioningEvent;

.field public ipReachabilityEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpReachabilityEvent;

.field public networkEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;

.field public raEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;

.field public timeMs:J

.field public validationProbeEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ValidationProbeEvent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1723
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 1724
    invoke-virtual {p0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->clear()Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;

    .line 1723
    return-void
.end method

.method public static emptyArray()[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;
    .locals 2

    .prologue
    .line 1677
    sget-object v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->_emptyArray:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;

    if-nez v0, :cond_1

    .line 1678
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1680
    :try_start_0
    sget-object v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->_emptyArray:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;

    if-nez v0, :cond_0

    .line 1681
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;

    sput-object v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->_emptyArray:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 1685
    :cond_1
    sget-object v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->_emptyArray:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;

    return-object v0

    .line 1678
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1933
    new-instance v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1927
    new-instance v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1728
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->timeMs:J

    .line 1729
    iput-object v2, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->defaultNetworkEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;

    .line 1730
    iput-object v2, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->ipReachabilityEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpReachabilityEvent;

    .line 1731
    iput-object v2, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->networkEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;

    .line 1732
    iput-object v2, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->dnsLookupBatch:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;

    .line 1733
    iput-object v2, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->dhcpEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;

    .line 1734
    iput-object v2, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->ipProvisioningEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpProvisioningEvent;

    .line 1735
    iput-object v2, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->validationProbeEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ValidationProbeEvent;

    .line 1736
    iput-object v2, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->apfProgramEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfProgramEvent;

    .line 1737
    iput-object v2, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->apfStatistics:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;

    .line 1738
    iput-object v2, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->raEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;

    .line 1739
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->cachedSize:I

    .line 1740
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 6

    .prologue
    .line 1784
    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 1785
    .local v0, "size":I
    iget-wide v2, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->timeMs:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 1787
    iget-wide v2, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->timeMs:J

    const/4 v1, 0x1

    .line 1786
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1789
    :cond_0
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->defaultNetworkEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;

    if-eqz v1, :cond_1

    .line 1791
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->defaultNetworkEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;

    const/4 v2, 0x2

    .line 1790
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1793
    :cond_1
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->ipReachabilityEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpReachabilityEvent;

    if-eqz v1, :cond_2

    .line 1795
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->ipReachabilityEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpReachabilityEvent;

    const/4 v2, 0x3

    .line 1794
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1797
    :cond_2
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->networkEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;

    if-eqz v1, :cond_3

    .line 1799
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->networkEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;

    const/4 v2, 0x4

    .line 1798
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1801
    :cond_3
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->dnsLookupBatch:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;

    if-eqz v1, :cond_4

    .line 1803
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->dnsLookupBatch:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;

    const/4 v2, 0x5

    .line 1802
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1805
    :cond_4
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->dhcpEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;

    if-eqz v1, :cond_5

    .line 1807
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->dhcpEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;

    const/4 v2, 0x6

    .line 1806
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1809
    :cond_5
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->ipProvisioningEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpProvisioningEvent;

    if-eqz v1, :cond_6

    .line 1811
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->ipProvisioningEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpProvisioningEvent;

    const/4 v2, 0x7

    .line 1810
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1813
    :cond_6
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->validationProbeEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ValidationProbeEvent;

    if-eqz v1, :cond_7

    .line 1815
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->validationProbeEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ValidationProbeEvent;

    const/16 v2, 0x8

    .line 1814
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1817
    :cond_7
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->apfProgramEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfProgramEvent;

    if-eqz v1, :cond_8

    .line 1819
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->apfProgramEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfProgramEvent;

    const/16 v2, 0x9

    .line 1818
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1821
    :cond_8
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->apfStatistics:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;

    if-eqz v1, :cond_9

    .line 1823
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->apfStatistics:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;

    const/16 v2, 0xa

    .line 1822
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1825
    :cond_9
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->raEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;

    if-eqz v1, :cond_a

    .line 1827
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->raEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;

    const/16 v2, 0xb

    .line 1826
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1829
    :cond_a
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1837
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1838
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 1842
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1843
    return-object p0

    .line 1840
    :sswitch_0
    return-object p0

    .line 1848
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->timeMs:J

    goto :goto_0

    .line 1852
    :sswitch_2
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->defaultNetworkEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;

    if-nez v1, :cond_1

    .line 1853
    new-instance v1, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;

    invoke-direct {v1}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;-><init>()V

    iput-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->defaultNetworkEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;

    .line 1855
    :cond_1
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->defaultNetworkEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1859
    :sswitch_3
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->ipReachabilityEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpReachabilityEvent;

    if-nez v1, :cond_2

    .line 1860
    new-instance v1, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpReachabilityEvent;

    invoke-direct {v1}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpReachabilityEvent;-><init>()V

    iput-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->ipReachabilityEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpReachabilityEvent;

    .line 1862
    :cond_2
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->ipReachabilityEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpReachabilityEvent;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1866
    :sswitch_4
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->networkEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;

    if-nez v1, :cond_3

    .line 1867
    new-instance v1, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;

    invoke-direct {v1}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;-><init>()V

    iput-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->networkEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;

    .line 1869
    :cond_3
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->networkEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1873
    :sswitch_5
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->dnsLookupBatch:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;

    if-nez v1, :cond_4

    .line 1874
    new-instance v1, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;

    invoke-direct {v1}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;-><init>()V

    iput-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->dnsLookupBatch:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;

    .line 1876
    :cond_4
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->dnsLookupBatch:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1880
    :sswitch_6
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->dhcpEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;

    if-nez v1, :cond_5

    .line 1881
    new-instance v1, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;

    invoke-direct {v1}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;-><init>()V

    iput-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->dhcpEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;

    .line 1883
    :cond_5
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->dhcpEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1887
    :sswitch_7
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->ipProvisioningEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpProvisioningEvent;

    if-nez v1, :cond_6

    .line 1888
    new-instance v1, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpProvisioningEvent;

    invoke-direct {v1}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpProvisioningEvent;-><init>()V

    iput-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->ipProvisioningEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpProvisioningEvent;

    .line 1890
    :cond_6
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->ipProvisioningEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpProvisioningEvent;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1894
    :sswitch_8
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->validationProbeEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ValidationProbeEvent;

    if-nez v1, :cond_7

    .line 1895
    new-instance v1, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ValidationProbeEvent;

    invoke-direct {v1}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ValidationProbeEvent;-><init>()V

    iput-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->validationProbeEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ValidationProbeEvent;

    .line 1897
    :cond_7
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->validationProbeEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ValidationProbeEvent;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1901
    :sswitch_9
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->apfProgramEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfProgramEvent;

    if-nez v1, :cond_8

    .line 1902
    new-instance v1, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfProgramEvent;

    invoke-direct {v1}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfProgramEvent;-><init>()V

    iput-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->apfProgramEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfProgramEvent;

    .line 1904
    :cond_8
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->apfProgramEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfProgramEvent;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1908
    :sswitch_a
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->apfStatistics:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;

    if-nez v1, :cond_9

    .line 1909
    new-instance v1, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;

    invoke-direct {v1}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;-><init>()V

    iput-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->apfStatistics:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;

    .line 1911
    :cond_9
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->apfStatistics:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1915
    :sswitch_b
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->raEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;

    if-nez v1, :cond_a

    .line 1916
    new-instance v1, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;

    invoke-direct {v1}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;-><init>()V

    iput-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->raEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;

    .line 1918
    :cond_a
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->raEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1838
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
        0x5a -> :sswitch_b
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1833
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1746
    iget-wide v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->timeMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 1747
    iget-wide v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->timeMs:J

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 1749
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->defaultNetworkEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;

    if-eqz v0, :cond_1

    .line 1750
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->defaultNetworkEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1752
    :cond_1
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->ipReachabilityEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpReachabilityEvent;

    if-eqz v0, :cond_2

    .line 1753
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->ipReachabilityEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpReachabilityEvent;

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1755
    :cond_2
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->networkEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;

    if-eqz v0, :cond_3

    .line 1756
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->networkEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1758
    :cond_3
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->dnsLookupBatch:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;

    if-eqz v0, :cond_4

    .line 1759
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->dnsLookupBatch:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1761
    :cond_4
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->dhcpEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;

    if-eqz v0, :cond_5

    .line 1762
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->dhcpEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;

    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1764
    :cond_5
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->ipProvisioningEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpProvisioningEvent;

    if-eqz v0, :cond_6

    .line 1765
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->ipProvisioningEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpProvisioningEvent;

    const/4 v1, 0x7

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1767
    :cond_6
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->validationProbeEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ValidationProbeEvent;

    if-eqz v0, :cond_7

    .line 1768
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->validationProbeEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ValidationProbeEvent;

    const/16 v1, 0x8

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1770
    :cond_7
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->apfProgramEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfProgramEvent;

    if-eqz v0, :cond_8

    .line 1771
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->apfProgramEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfProgramEvent;

    const/16 v1, 0x9

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1773
    :cond_8
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->apfStatistics:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;

    if-eqz v0, :cond_9

    .line 1774
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->apfStatistics:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;

    const/16 v1, 0xa

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1776
    :cond_9
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->raEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;

    if-eqz v0, :cond_a

    .line 1777
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;->raEvent:Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;

    const/16 v1, 0xb

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1779
    :cond_a
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 1745
    return-void
.end method
