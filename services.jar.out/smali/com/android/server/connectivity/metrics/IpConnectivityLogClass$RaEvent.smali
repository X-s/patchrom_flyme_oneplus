.class public final Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;
.super Lcom/google/protobuf/nano/MessageNano;
.source "IpConnectivityLogClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/metrics/IpConnectivityLogClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RaEvent"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;


# instance fields
.field public dnsslLifetime:J

.field public prefixPreferredLifetime:J

.field public prefixValidLifetime:J

.field public rdnssLifetime:J

.field public routeInfoLifetime:J

.field public routerLifetime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1431
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 1432
    invoke-virtual {p0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->clear()Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;

    .line 1431
    return-void
.end method

.method public static emptyArray()[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;
    .locals 2

    .prologue
    .line 1400
    sget-object v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->_emptyArray:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;

    if-nez v0, :cond_1

    .line 1401
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1403
    :try_start_0
    sget-object v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->_emptyArray:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;

    if-nez v0, :cond_0

    .line 1404
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;

    sput-object v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->_emptyArray:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 1408
    :cond_1
    sget-object v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->_emptyArray:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;

    return-object v0

    .line 1401
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1551
    new-instance v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1545
    new-instance v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 1436
    iput-wide v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->routerLifetime:J

    .line 1437
    iput-wide v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->prefixValidLifetime:J

    .line 1438
    iput-wide v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->prefixPreferredLifetime:J

    .line 1439
    iput-wide v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->routeInfoLifetime:J

    .line 1440
    iput-wide v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->rdnssLifetime:J

    .line 1441
    iput-wide v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->dnsslLifetime:J

    .line 1442
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->cachedSize:I

    .line 1443
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 1472
    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 1473
    .local v0, "size":I
    iget-wide v2, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->routerLifetime:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 1475
    iget-wide v2, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->routerLifetime:J

    const/4 v1, 0x1

    .line 1474
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1477
    :cond_0
    iget-wide v2, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->prefixValidLifetime:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 1479
    iget-wide v2, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->prefixValidLifetime:J

    const/4 v1, 0x2

    .line 1478
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1481
    :cond_1
    iget-wide v2, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->prefixPreferredLifetime:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    .line 1483
    iget-wide v2, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->prefixPreferredLifetime:J

    const/4 v1, 0x3

    .line 1482
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1485
    :cond_2
    iget-wide v2, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->routeInfoLifetime:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_3

    .line 1487
    iget-wide v2, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->routeInfoLifetime:J

    const/4 v1, 0x4

    .line 1486
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1489
    :cond_3
    iget-wide v2, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->rdnssLifetime:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_4

    .line 1491
    iget-wide v2, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->rdnssLifetime:J

    const/4 v1, 0x5

    .line 1490
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1493
    :cond_4
    iget-wide v2, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->dnsslLifetime:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_5

    .line 1495
    iget-wide v2, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->dnsslLifetime:J

    const/4 v1, 0x6

    .line 1494
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1497
    :cond_5
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1505
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1506
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 1510
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1511
    return-object p0

    .line 1508
    :sswitch_0
    return-object p0

    .line 1516
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->routerLifetime:J

    goto :goto_0

    .line 1520
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->prefixValidLifetime:J

    goto :goto_0

    .line 1524
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->prefixPreferredLifetime:J

    goto :goto_0

    .line 1528
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->routeInfoLifetime:J

    goto :goto_0

    .line 1532
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->rdnssLifetime:J

    goto :goto_0

    .line 1536
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->dnsslLifetime:J

    goto :goto_0

    .line 1506
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
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
    .line 1501
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 6
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    .line 1449
    iget-wide v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->routerLifetime:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    .line 1450
    iget-wide v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->routerLifetime:J

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 1452
    :cond_0
    iget-wide v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->prefixValidLifetime:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    .line 1453
    iget-wide v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->prefixValidLifetime:J

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 1455
    :cond_1
    iget-wide v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->prefixPreferredLifetime:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_2

    .line 1456
    iget-wide v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->prefixPreferredLifetime:J

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 1458
    :cond_2
    iget-wide v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->routeInfoLifetime:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_3

    .line 1459
    iget-wide v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->routeInfoLifetime:J

    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 1461
    :cond_3
    iget-wide v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->rdnssLifetime:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_4

    .line 1462
    iget-wide v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->rdnssLifetime:J

    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 1464
    :cond_4
    iget-wide v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->dnsslLifetime:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_5

    .line 1465
    iget-wide v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;->dnsslLifetime:J

    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 1467
    :cond_5
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 1448
    return-void
.end method
