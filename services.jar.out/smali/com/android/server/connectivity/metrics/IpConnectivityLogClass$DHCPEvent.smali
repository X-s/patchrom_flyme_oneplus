.class public final Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;
.super Lcom/google/protobuf/nano/MessageNano;
.source "IpConnectivityLogClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/metrics/IpConnectivityLogClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DHCPEvent"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;


# instance fields
.field public durationMs:I

.field public errorCode:I

.field public ifName:Ljava/lang/String;

.field public stateTransition:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 942
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 943
    invoke-virtual {p0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;->clear()Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;

    .line 942
    return-void
.end method

.method public static emptyArray()[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;
    .locals 2

    .prologue
    .line 917
    sget-object v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;->_emptyArray:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;

    if-nez v0, :cond_1

    .line 918
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 920
    :try_start_0
    sget-object v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;->_emptyArray:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;

    if-nez v0, :cond_0

    .line 921
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;

    sput-object v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;->_emptyArray:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 925
    :cond_1
    sget-object v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;->_emptyArray:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;

    return-object v0

    .line 918
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1038
    new-instance v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1032
    new-instance v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 947
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;->ifName:Ljava/lang/String;

    .line 948
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;->stateTransition:Ljava/lang/String;

    .line 949
    iput v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;->errorCode:I

    .line 950
    iput v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;->durationMs:I

    .line 951
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;->cachedSize:I

    .line 952
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 975
    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 976
    .local v0, "size":I
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;->ifName:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 978
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;->ifName:Ljava/lang/String;

    const/4 v2, 0x1

    .line 977
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 980
    :cond_0
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;->stateTransition:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 982
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;->stateTransition:Ljava/lang/String;

    const/4 v2, 0x2

    .line 981
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 984
    :cond_1
    iget v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;->errorCode:I

    if-eqz v1, :cond_2

    .line 986
    iget v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;->errorCode:I

    const/4 v2, 0x3

    .line 985
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 988
    :cond_2
    iget v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;->durationMs:I

    if-eqz v1, :cond_3

    .line 990
    iget v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;->durationMs:I

    const/4 v2, 0x4

    .line 989
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 992
    :cond_3
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1000
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1001
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 1005
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1006
    return-object p0

    .line 1003
    :sswitch_0
    return-object p0

    .line 1011
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;->ifName:Ljava/lang/String;

    goto :goto_0

    .line 1015
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;->stateTransition:Ljava/lang/String;

    goto :goto_0

    .line 1019
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;->errorCode:I

    goto :goto_0

    .line 1023
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;->durationMs:I

    goto :goto_0

    .line 1001
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
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
    .line 996
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 958
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;->ifName:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 959
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;->ifName:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 961
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;->stateTransition:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 962
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;->stateTransition:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 964
    :cond_1
    iget v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;->errorCode:I

    if-eqz v0, :cond_2

    .line 965
    iget v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;->errorCode:I

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 967
    :cond_2
    iget v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;->durationMs:I

    if-eqz v0, :cond_3

    .line 968
    iget v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;->durationMs:I

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 970
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 957
    return-void
.end method
