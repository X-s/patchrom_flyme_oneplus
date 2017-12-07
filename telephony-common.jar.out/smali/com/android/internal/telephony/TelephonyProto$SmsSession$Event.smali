.class public final Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;
.super Lcom/android/framework/protobuf/nano/ExtendableMessageNano;
.source "TelephonyProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/TelephonyProto$SmsSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Event"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event$Format;,
        Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event$Tech;,
        Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event$Type;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/framework/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;


# instance fields
.field private bitField0_:I

.field public dataCalls:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

.field private delay_:I

.field private errorCode_:I

.field private error_:I

.field private format_:I

.field public imsCapabilities:Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

.field public imsConnectionState:Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

.field private rilRequestId_:I

.field public serviceState:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

.field public settings:Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

.field private tech_:I

.field private type_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5778
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 5779
    invoke-virtual {p0}, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->clear()Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;

    .line 5778
    return-void
.end method

.method public static emptyArray()[Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;
    .locals 2

    .prologue
    .line 5615
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;

    if-nez v0, :cond_1

    .line 5616
    sget-object v1, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 5618
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;

    if-nez v0, :cond_0

    .line 5619
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;

    sput-object v0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 5623
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;

    return-object v0

    .line 5616
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;
    .locals 1
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6128
    new-instance v0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;

    invoke-direct {v0}, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 6122
    new-instance v0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;

    invoke-direct {v0}, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 5783
    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    .line 5784
    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->type_:I

    .line 5785
    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->delay_:I

    .line 5786
    iput-object v2, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->settings:Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    .line 5787
    iput-object v2, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->serviceState:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    .line 5788
    iput-object v2, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->imsConnectionState:Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

    .line 5789
    iput-object v2, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->imsCapabilities:Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    .line 5790
    invoke-static {}, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->emptyArray()[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->dataCalls:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    .line 5791
    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->format_:I

    .line 5792
    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->tech_:I

    .line 5793
    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->errorCode_:I

    .line 5794
    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->error_:I

    .line 5795
    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->rilRequestId_:I

    .line 5796
    iput-object v2, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    .line 5797
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->cachedSize:I

    .line 5798
    return-object p0
.end method

.method public clearDelay()Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;
    .locals 1

    .prologue
    .line 5661
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->delay_:I

    .line 5662
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    .line 5663
    return-object p0
.end method

.method public clearError()Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;
    .locals 1

    .prologue
    .line 5752
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->error_:I

    .line 5753
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    .line 5754
    return-object p0
.end method

.method public clearErrorCode()Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;
    .locals 1

    .prologue
    .line 5733
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->errorCode_:I

    .line 5734
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    .line 5735
    return-object p0
.end method

.method public clearFormat()Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;
    .locals 1

    .prologue
    .line 5695
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->format_:I

    .line 5696
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    .line 5697
    return-object p0
.end method

.method public clearRilRequestId()Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;
    .locals 1

    .prologue
    .line 5771
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->rilRequestId_:I

    .line 5772
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    .line 5773
    return-object p0
.end method

.method public clearTech()Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;
    .locals 1

    .prologue
    .line 5714
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->tech_:I

    .line 5715
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    .line 5716
    return-object p0
.end method

.method public clearType()Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;
    .locals 1

    .prologue
    .line 5642
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->type_:I

    .line 5643
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    .line 5644
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 5

    .prologue
    .line 5850
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v2

    .line 5851
    .local v2, "size":I
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 5853
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->type_:I

    const/4 v4, 0x1

    .line 5852
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 5855
    :cond_0
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    .line 5857
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->delay_:I

    const/4 v4, 0x2

    .line 5856
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 5859
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->settings:Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    if-eqz v3, :cond_2

    .line 5861
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->settings:Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    const/4 v4, 0x3

    .line 5860
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 5863
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->serviceState:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    if-eqz v3, :cond_3

    .line 5865
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->serviceState:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    const/4 v4, 0x4

    .line 5864
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 5867
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->imsConnectionState:Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

    if-eqz v3, :cond_4

    .line 5869
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->imsConnectionState:Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

    const/4 v4, 0x5

    .line 5868
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 5871
    :cond_4
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->imsCapabilities:Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    if-eqz v3, :cond_5

    .line 5873
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->imsCapabilities:Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    const/4 v4, 0x6

    .line 5872
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 5875
    :cond_5
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->dataCalls:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->dataCalls:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    array-length v3, v3

    if-lez v3, :cond_7

    .line 5876
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->dataCalls:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    array-length v3, v3

    if-ge v1, v3, :cond_7

    .line 5877
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->dataCalls:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    aget-object v0, v3, v1

    .line 5878
    .local v0, "element":Lcom/android/internal/telephony/TelephonyProto$RilDataCall;
    if-eqz v0, :cond_6

    .line 5880
    const/4 v3, 0x7

    .line 5879
    invoke-static {v3, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 5876
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5884
    .end local v0    # "element":Lcom/android/internal/telephony/TelephonyProto$RilDataCall;
    .end local v1    # "i":I
    :cond_7
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_8

    .line 5886
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->format_:I

    const/16 v4, 0x8

    .line 5885
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 5888
    :cond_8
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_9

    .line 5890
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->tech_:I

    const/16 v4, 0x9

    .line 5889
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 5892
    :cond_9
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_a

    .line 5894
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->errorCode_:I

    const/16 v4, 0xa

    .line 5893
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 5896
    :cond_a
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_b

    .line 5898
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->error_:I

    const/16 v4, 0xb

    .line 5897
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 5900
    :cond_b
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_c

    .line 5902
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->rilRequestId_:I

    const/16 v4, 0xc

    .line 5901
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 5904
    :cond_c
    return v2
.end method

.method public getDelay()I
    .locals 1

    .prologue
    .line 5650
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->delay_:I

    return v0
.end method

.method public getError()I
    .locals 1

    .prologue
    .line 5741
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->error_:I

    return v0
.end method

.method public getErrorCode()I
    .locals 1

    .prologue
    .line 5722
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->errorCode_:I

    return v0
.end method

.method public getFormat()I
    .locals 1

    .prologue
    .line 5684
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->format_:I

    return v0
.end method

.method public getRilRequestId()I
    .locals 1

    .prologue
    .line 5760
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->rilRequestId_:I

    return v0
.end method

.method public getTech()I
    .locals 1

    .prologue
    .line 5703
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->tech_:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 5631
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->type_:I

    return v0
.end method

.method public hasDelay()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 5658
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasError()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 5749
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasErrorCode()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 5730
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasFormat()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 5692
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasRilRequestId()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 5768
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasTech()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 5711
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasType()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 5639
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/framework/protobuf/nano/MessageNano;
    .locals 1
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5908
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;
    .locals 8
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 5912
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v4

    .line 5913
    .local v4, "tag":I
    sparse-switch v4, :sswitch_data_0

    .line 5917
    invoke-super {p0, p1, v4}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 5918
    return-object p0

    .line 5915
    :sswitch_0
    return-object p0

    .line 5923
    :sswitch_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v2

    .line 5924
    .local v2, "initialPos":I
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    .line 5925
    .local v5, "value":I
    packed-switch v5, :pswitch_data_0

    .line 5939
    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 5940
    invoke-virtual {p0, p1, v4}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    .line 5935
    :pswitch_0
    iput v5, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->type_:I

    .line 5936
    iget v7, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    or-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    goto :goto_0

    .line 5946
    .end local v2    # "initialPos":I
    .end local v5    # "value":I
    :sswitch_2
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v2

    .line 5947
    .restart local v2    # "initialPos":I
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    .line 5948
    .restart local v5    # "value":I
    packed-switch v5, :pswitch_data_1

    .line 5973
    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 5974
    invoke-virtual {p0, p1, v4}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    .line 5969
    :pswitch_1
    iput v5, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->delay_:I

    .line 5970
    iget v7, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    or-int/lit8 v7, v7, 0x2

    iput v7, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    goto :goto_0

    .line 5980
    .end local v2    # "initialPos":I
    .end local v5    # "value":I
    :sswitch_3
    iget-object v7, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->settings:Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    if-nez v7, :cond_1

    .line 5981
    new-instance v7, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    invoke-direct {v7}, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;-><init>()V

    iput-object v7, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->settings:Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    .line 5983
    :cond_1
    iget-object v7, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->settings:Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    invoke-virtual {p1, v7}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 5987
    :sswitch_4
    iget-object v7, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->serviceState:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    if-nez v7, :cond_2

    .line 5988
    new-instance v7, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    invoke-direct {v7}, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;-><init>()V

    iput-object v7, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->serviceState:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    .line 5990
    :cond_2
    iget-object v7, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->serviceState:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    invoke-virtual {p1, v7}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 5994
    :sswitch_5
    iget-object v7, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->imsConnectionState:Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

    if-nez v7, :cond_3

    .line 5995
    new-instance v7, Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

    invoke-direct {v7}, Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;-><init>()V

    iput-object v7, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->imsConnectionState:Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

    .line 5997
    :cond_3
    iget-object v7, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->imsConnectionState:Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

    invoke-virtual {p1, v7}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 6001
    :sswitch_6
    iget-object v7, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->imsCapabilities:Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    if-nez v7, :cond_4

    .line 6002
    new-instance v7, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    invoke-direct {v7}, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;-><init>()V

    iput-object v7, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->imsCapabilities:Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    .line 6004
    :cond_4
    iget-object v7, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->imsCapabilities:Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    invoke-virtual {p1, v7}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 6009
    :sswitch_7
    const/16 v7, 0x3a

    .line 6008
    invoke-static {p1, v7}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 6010
    .local v0, "arrayLength":I
    iget-object v7, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->dataCalls:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    if-nez v7, :cond_6

    move v1, v6

    .line 6012
    .local v1, "i":I
    :goto_1
    add-int v7, v1, v0

    new-array v3, v7, [Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    .line 6013
    .local v3, "newArray":[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;
    if-eqz v1, :cond_5

    .line 6014
    iget-object v7, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->dataCalls:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    invoke-static {v7, v6, v3, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6016
    :cond_5
    :goto_2
    array-length v7, v3

    add-int/lit8 v7, v7, -0x1

    if-ge v1, v7, :cond_7

    .line 6017
    new-instance v7, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    invoke-direct {v7}, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;-><init>()V

    aput-object v7, v3, v1

    .line 6018
    aget-object v7, v3, v1

    invoke-virtual {p1, v7}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 6019
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 6016
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 6010
    .end local v1    # "i":I
    .end local v3    # "newArray":[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;
    :cond_6
    iget-object v7, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->dataCalls:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    array-length v1, v7

    goto :goto_1

    .line 6022
    .restart local v1    # "i":I
    .restart local v3    # "newArray":[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;
    :cond_7
    new-instance v7, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    invoke-direct {v7}, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;-><init>()V

    aput-object v7, v3, v1

    .line 6023
    aget-object v7, v3, v1

    invoke-virtual {p1, v7}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 6024
    iput-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->dataCalls:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    goto/16 :goto_0

    .line 6028
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v3    # "newArray":[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;
    :sswitch_8
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v2

    .line 6029
    .restart local v2    # "initialPos":I
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    .line 6030
    .restart local v5    # "value":I
    packed-switch v5, :pswitch_data_2

    .line 6038
    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 6039
    invoke-virtual {p0, p1, v4}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto/16 :goto_0

    .line 6034
    :pswitch_2
    iput v5, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->format_:I

    .line 6035
    iget v7, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    or-int/lit8 v7, v7, 0x4

    iput v7, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    goto/16 :goto_0

    .line 6045
    .end local v2    # "initialPos":I
    .end local v5    # "value":I
    :sswitch_9
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v2

    .line 6046
    .restart local v2    # "initialPos":I
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    .line 6047
    .restart local v5    # "value":I
    packed-switch v5, :pswitch_data_3

    .line 6056
    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 6057
    invoke-virtual {p0, p1, v4}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto/16 :goto_0

    .line 6052
    :pswitch_3
    iput v5, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->tech_:I

    .line 6053
    iget v7, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    or-int/lit8 v7, v7, 0x8

    iput v7, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    goto/16 :goto_0

    .line 6063
    .end local v2    # "initialPos":I
    .end local v5    # "value":I
    :sswitch_a
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v7

    iput v7, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->errorCode_:I

    .line 6064
    iget v7, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    or-int/lit8 v7, v7, 0x10

    iput v7, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    goto/16 :goto_0

    .line 6068
    :sswitch_b
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v2

    .line 6069
    .restart local v2    # "initialPos":I
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    .line 6070
    .restart local v5    # "value":I
    packed-switch v5, :pswitch_data_4

    .line 6105
    :pswitch_4
    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 6106
    invoke-virtual {p0, p1, v4}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto/16 :goto_0

    .line 6101
    :pswitch_5
    iput v5, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->error_:I

    .line 6102
    iget v7, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    or-int/lit8 v7, v7, 0x20

    iput v7, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    goto/16 :goto_0

    .line 6112
    .end local v2    # "initialPos":I
    .end local v5    # "value":I
    :sswitch_c
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v7

    iput v7, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->rilRequestId_:I

    .line 6113
    iget v7, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    or-int/lit8 v7, v7, 0x40

    iput v7, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    goto/16 :goto_0

    .line 5913
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x40 -> :sswitch_8
        0x48 -> :sswitch_9
        0x50 -> :sswitch_a
        0x58 -> :sswitch_b
        0x60 -> :sswitch_c
    .end sparse-switch

    .line 5925
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 5948
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 6030
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 6047
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    .line 6070
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public setDelay(I)Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 5653
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->delay_:I

    .line 5654
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    .line 5655
    return-object p0
.end method

.method public setError(I)Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 5744
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->error_:I

    .line 5745
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    .line 5746
    return-object p0
.end method

.method public setErrorCode(I)Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 5725
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->errorCode_:I

    .line 5726
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    .line 5727
    return-object p0
.end method

.method public setFormat(I)Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 5687
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->format_:I

    .line 5688
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    .line 5689
    return-object p0
.end method

.method public setRilRequestId(I)Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 5763
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->rilRequestId_:I

    .line 5764
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    .line 5765
    return-object p0
.end method

.method public setTech(I)Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 5706
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->tech_:I

    .line 5707
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    .line 5708
    return-object p0
.end method

.method public setType(I)Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 5634
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->type_:I

    .line 5635
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    .line 5636
    return-object p0
.end method

.method public writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .param p1, "output"    # Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5804
    iget v2, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 5805
    iget v2, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->type_:I

    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5807
    :cond_0
    iget v2, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    .line 5808
    iget v2, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->delay_:I

    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5810
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->settings:Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    if-eqz v2, :cond_2

    .line 5811
    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->settings:Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    const/4 v3, 0x3

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 5813
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->serviceState:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    if-eqz v2, :cond_3

    .line 5814
    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->serviceState:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    const/4 v3, 0x4

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 5816
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->imsConnectionState:Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

    if-eqz v2, :cond_4

    .line 5817
    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->imsConnectionState:Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

    const/4 v3, 0x5

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 5819
    :cond_4
    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->imsCapabilities:Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    if-eqz v2, :cond_5

    .line 5820
    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->imsCapabilities:Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    const/4 v3, 0x6

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 5822
    :cond_5
    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->dataCalls:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->dataCalls:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    array-length v2, v2

    if-lez v2, :cond_7

    .line 5823
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->dataCalls:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    array-length v2, v2

    if-ge v1, v2, :cond_7

    .line 5824
    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->dataCalls:[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    aget-object v0, v2, v1

    .line 5825
    .local v0, "element":Lcom/android/internal/telephony/TelephonyProto$RilDataCall;
    if-eqz v0, :cond_6

    .line 5826
    const/4 v2, 0x7

    invoke-virtual {p1, v2, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 5823
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5830
    .end local v0    # "element":Lcom/android/internal/telephony/TelephonyProto$RilDataCall;
    .end local v1    # "i":I
    :cond_7
    iget v2, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_8

    .line 5831
    iget v2, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->format_:I

    const/16 v3, 0x8

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5833
    :cond_8
    iget v2, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_9

    .line 5834
    iget v2, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->tech_:I

    const/16 v3, 0x9

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5836
    :cond_9
    iget v2, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_a

    .line 5837
    iget v2, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->errorCode_:I

    const/16 v3, 0xa

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5839
    :cond_a
    iget v2, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_b

    .line 5840
    iget v2, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->error_:I

    const/16 v3, 0xb

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5842
    :cond_b
    iget v2, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_c

    .line 5843
    iget v2, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->rilRequestId_:I

    const/16 v3, 0xc

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5845
    :cond_c
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 5803
    return-void
.end method
