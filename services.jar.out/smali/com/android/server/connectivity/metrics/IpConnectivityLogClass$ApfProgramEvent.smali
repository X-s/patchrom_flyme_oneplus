.class public final Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfProgramEvent;
.super Lcom/google/protobuf/nano/MessageNano;
.source "IpConnectivityLogClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/metrics/IpConnectivityLogClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ApfProgramEvent"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfProgramEvent;


# instance fields
.field public currentRas:I

.field public dropMulticast:Z

.field public filteredRas:I

.field public hasIpv4Addr:Z

.field public lifetime:J

.field public programLength:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1079
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 1080
    invoke-virtual {p0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfProgramEvent;->clear()Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfProgramEvent;

    .line 1079
    return-void
.end method

.method public static emptyArray()[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfProgramEvent;
    .locals 2

    .prologue
    .line 1048
    sget-object v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfProgramEvent;->_emptyArray:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfProgramEvent;

    if-nez v0, :cond_1

    .line 1049
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1051
    :try_start_0
    sget-object v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfProgramEvent;->_emptyArray:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfProgramEvent;

    if-nez v0, :cond_0

    .line 1052
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfProgramEvent;

    sput-object v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfProgramEvent;->_emptyArray:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfProgramEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 1056
    :cond_1
    sget-object v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfProgramEvent;->_emptyArray:[Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfProgramEvent;

    return-object v0

    .line 1049
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfProgramEvent;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1199
    new-instance v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfProgramEvent;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfProgramEvent;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfProgramEvent;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfProgramEvent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfProgramEvent;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1193
    new-instance v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfProgramEvent;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfProgramEvent;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfProgramEvent;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfProgramEvent;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1084
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfProgramEvent;->lifetime:J

    .line 1085
    iput v2, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfProgramEvent;->filteredRas:I

    .line 1086
    iput v2, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfProgramEvent;->currentRas:I

    .line 1087
    iput v2, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfProgramEvent;->programLength:I

    .line 1088
    iput-boolean v2, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfProgramEvent;->dropMulticast:Z

    .line 1089
    iput-boolean v2, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfProgramEvent;->hasIpv4Addr:Z

    .line 1090
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfProgramEvent;->cachedSize:I

    .line 1091
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 6

    .prologue
    .line 1120
    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 1121
    .local v0, "size":I
    iget-wide v2, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfProgramEvent;->lifetime:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 1123
    iget-wide v2, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfProgramEvent;->lifetime:J

    const/4 v1, 0x1

    .line 1122
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1125
    :cond_0
    iget v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfProgramEvent;->filteredRas:I

    if-eqz v1, :cond_1

    .line 1127
    iget v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfProgramEvent;->filteredRas:I

    const/4 v2, 0x2

    .line 1126
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1129
    :cond_1
    iget v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfProgramEvent;->currentRas:I

    if-eqz v1, :cond_2

    .line 1131
    iget v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfProgramEvent;->currentRas:I

    const/4 v2, 0x3

    .line 1130
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1133
    :cond_2
    iget v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfProgramEvent;->programLength:I

    if-eqz v1, :cond_3

    .line 1135
    iget v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfProgramEvent;->programLength:I

    const/4 v2, 0x4

    .line 1134
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1137
    :cond_3
    iget-boolean v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfProgramEvent;->dropMulticast:Z

    if-eqz v1, :cond_4

    .line 1139
    iget-boolean v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfProgramEvent;->dropMulticast:Z

    const/4 v2, 0x5

    .line 1138
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1141
    :cond_4
    iget-boolean v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfProgramEvent;->hasIpv4Addr:Z

    if-eqz v1, :cond_5

    .line 1143
    iget-boolean v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfProgramEvent;->hasIpv4Addr:Z

    const/4 v2, 0x6

    .line 1142
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1145
    :cond_5
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfProgramEvent;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1153
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1154
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 1158
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1159
    return-object p0

    .line 1156
    :sswitch_0
    return-object p0

    .line 1164
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfProgramEvent;->lifetime:J

    goto :goto_0

    .line 1168
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfProgramEvent;->filteredRas:I

    goto :goto_0

    .line 1172
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfProgramEvent;->currentRas:I

    goto :goto_0

    .line 1176
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfProgramEvent;->programLength:I

    goto :goto_0

    .line 1180
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfProgramEvent;->dropMulticast:Z

    goto :goto_0

    .line 1184
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfProgramEvent;->hasIpv4Addr:Z

    goto :goto_0

    .line 1154
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
    .line 1149
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfProgramEvent;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfProgramEvent;

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
    .line 1097
    iget-wide v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfProgramEvent;->lifetime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 1098
    iget-wide v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfProgramEvent;->lifetime:J

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 1100
    :cond_0
    iget v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfProgramEvent;->filteredRas:I

    if-eqz v0, :cond_1

    .line 1101
    iget v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfProgramEvent;->filteredRas:I

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1103
    :cond_1
    iget v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfProgramEvent;->currentRas:I

    if-eqz v0, :cond_2

    .line 1104
    iget v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfProgramEvent;->currentRas:I

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1106
    :cond_2
    iget v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfProgramEvent;->programLength:I

    if-eqz v0, :cond_3

    .line 1107
    iget v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfProgramEvent;->programLength:I

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1109
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfProgramEvent;->dropMulticast:Z

    if-eqz v0, :cond_4

    .line 1110
    iget-boolean v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfProgramEvent;->dropMulticast:Z

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1112
    :cond_4
    iget-boolean v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfProgramEvent;->hasIpv4Addr:Z

    if-eqz v0, :cond_5

    .line 1113
    iget-boolean v0, p0, Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfProgramEvent;->hasIpv4Addr:Z

    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1115
    :cond_5
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 1096
    return-void
.end method
