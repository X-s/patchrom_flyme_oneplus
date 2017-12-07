.class public final Lcom/android/internal/telephony/TelephonyProto$SmsSession;
.super Lcom/android/framework/protobuf/nano/ExtendableMessageNano;
.source "TelephonyProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/TelephonyProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SmsSession"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/framework/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/android/internal/telephony/TelephonyProto$SmsSession;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/internal/telephony/TelephonyProto$SmsSession;


# instance fields
.field private bitField0_:I

.field public events:[Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;

.field private eventsDropped_:Z

.field private phoneId_:I

.field private startTimeMinutes_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6210
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 6211
    invoke-virtual {p0}, Lcom/android/internal/telephony/TelephonyProto$SmsSession;->clear()Lcom/android/internal/telephony/TelephonyProto$SmsSession;

    .line 6210
    return-void
.end method

.method public static emptyArray()[Lcom/android/internal/telephony/TelephonyProto$SmsSession;
    .locals 2

    .prologue
    .line 6135
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$SmsSession;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$SmsSession;

    if-nez v0, :cond_1

    .line 6136
    sget-object v1, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 6138
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$SmsSession;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$SmsSession;

    if-nez v0, :cond_0

    .line 6139
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/internal/telephony/TelephonyProto$SmsSession;

    sput-object v0, Lcom/android/internal/telephony/TelephonyProto$SmsSession;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$SmsSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 6143
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$SmsSession;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$SmsSession;

    return-object v0

    .line 6136
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$SmsSession;
    .locals 1
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6337
    new-instance v0, Lcom/android/internal/telephony/TelephonyProto$SmsSession;

    invoke-direct {v0}, Lcom/android/internal/telephony/TelephonyProto$SmsSession;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/TelephonyProto$SmsSession;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$SmsSession;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/internal/telephony/TelephonyProto$SmsSession;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 6331
    new-instance v0, Lcom/android/internal/telephony/TelephonyProto$SmsSession;

    invoke-direct {v0}, Lcom/android/internal/telephony/TelephonyProto$SmsSession;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/TelephonyProto$SmsSession;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/internal/telephony/TelephonyProto$SmsSession;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 6215
    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession;->bitField0_:I

    .line 6216
    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession;->startTimeMinutes_:I

    .line 6217
    iput v1, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession;->phoneId_:I

    .line 6218
    invoke-static {}, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->emptyArray()[Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession;->events:[Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;

    .line 6219
    iput-boolean v1, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession;->eventsDropped_:Z

    .line 6220
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    .line 6221
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession;->cachedSize:I

    .line 6222
    return-object p0
.end method

.method public clearEventsDropped()Lcom/android/internal/telephony/TelephonyProto$SmsSession;
    .locals 1

    .prologue
    .line 6203
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession;->eventsDropped_:Z

    .line 6204
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession;->bitField0_:I

    .line 6205
    return-object p0
.end method

.method public clearPhoneId()Lcom/android/internal/telephony/TelephonyProto$SmsSession;
    .locals 1

    .prologue
    .line 6181
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession;->phoneId_:I

    .line 6182
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession;->bitField0_:I

    .line 6183
    return-object p0
.end method

.method public clearStartTimeMinutes()Lcom/android/internal/telephony/TelephonyProto$SmsSession;
    .locals 1

    .prologue
    .line 6162
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession;->startTimeMinutes_:I

    .line 6163
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession;->bitField0_:I

    .line 6164
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 5

    .prologue
    .line 6250
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v2

    .line 6251
    .local v2, "size":I
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 6253
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession;->startTimeMinutes_:I

    const/4 v4, 0x1

    .line 6252
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 6255
    :cond_0
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    .line 6257
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession;->phoneId_:I

    const/4 v4, 0x2

    .line 6256
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 6259
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession;->events:[Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession;->events:[Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;

    array-length v3, v3

    if-lez v3, :cond_3

    .line 6260
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession;->events:[Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;

    array-length v3, v3

    if-ge v1, v3, :cond_3

    .line 6261
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession;->events:[Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;

    aget-object v0, v3, v1

    .line 6262
    .local v0, "element":Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;
    if-eqz v0, :cond_2

    .line 6264
    const/4 v3, 0x3

    .line 6263
    invoke-static {v3, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 6260
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6268
    .end local v0    # "element":Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;
    .end local v1    # "i":I
    :cond_3
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_4

    .line 6270
    iget-boolean v3, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession;->eventsDropped_:Z

    const/4 v4, 0x4

    .line 6269
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 6272
    :cond_4
    return v2
.end method

.method public getEventsDropped()Z
    .locals 1

    .prologue
    .line 6192
    iget-boolean v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession;->eventsDropped_:Z

    return v0
.end method

.method public getPhoneId()I
    .locals 1

    .prologue
    .line 6170
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession;->phoneId_:I

    return v0
.end method

.method public getStartTimeMinutes()I
    .locals 1

    .prologue
    .line 6151
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession;->startTimeMinutes_:I

    return v0
.end method

.method public hasEventsDropped()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 6200
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasPhoneId()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 6178
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasStartTimeMinutes()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 6159
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession;->bitField0_:I

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
    .line 6276
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/TelephonyProto$SmsSession;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$SmsSession;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$SmsSession;
    .locals 6
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 6280
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 6281
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 6285
    invoke-super {p0, p1, v3}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 6286
    return-object p0

    .line 6283
    :sswitch_0
    return-object p0

    .line 6291
    :sswitch_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession;->startTimeMinutes_:I

    .line 6292
    iget v5, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession;->bitField0_:I

    goto :goto_0

    .line 6296
    :sswitch_2
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession;->phoneId_:I

    .line 6297
    iget v5, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession;->bitField0_:I

    goto :goto_0

    .line 6302
    :sswitch_3
    const/16 v5, 0x1a

    .line 6301
    invoke-static {p1, v5}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 6303
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession;->events:[Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;

    if-nez v5, :cond_2

    move v1, v4

    .line 6305
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;

    .line 6306
    .local v2, "newArray":[Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;
    if-eqz v1, :cond_1

    .line 6307
    iget-object v5, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession;->events:[Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6309
    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 6310
    new-instance v5, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;

    invoke-direct {v5}, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;-><init>()V

    aput-object v5, v2, v1

    .line 6311
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 6312
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 6309
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 6303
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;
    :cond_2
    iget-object v5, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession;->events:[Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;

    array-length v1, v5

    goto :goto_1

    .line 6315
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;
    :cond_3
    new-instance v5, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;

    invoke-direct {v5}, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;-><init>()V

    aput-object v5, v2, v1

    .line 6316
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 6317
    iput-object v2, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession;->events:[Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;

    goto :goto_0

    .line 6321
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;
    :sswitch_4
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession;->eventsDropped_:Z

    .line 6322
    iget v5, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession;->bitField0_:I

    goto :goto_0

    .line 6281
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch
.end method

.method public setEventsDropped(Z)Lcom/android/internal/telephony/TelephonyProto$SmsSession;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 6195
    iput-boolean p1, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession;->eventsDropped_:Z

    .line 6196
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession;->bitField0_:I

    .line 6197
    return-object p0
.end method

.method public setPhoneId(I)Lcom/android/internal/telephony/TelephonyProto$SmsSession;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 6173
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession;->phoneId_:I

    .line 6174
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession;->bitField0_:I

    .line 6175
    return-object p0
.end method

.method public setStartTimeMinutes(I)Lcom/android/internal/telephony/TelephonyProto$SmsSession;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 6154
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession;->startTimeMinutes_:I

    .line 6155
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession;->bitField0_:I

    .line 6156
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
    .line 6228
    iget v2, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 6229
    iget v2, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession;->startTimeMinutes_:I

    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6231
    :cond_0
    iget v2, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    .line 6232
    iget v2, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession;->phoneId_:I

    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6234
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession;->events:[Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession;->events:[Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;

    array-length v2, v2

    if-lez v2, :cond_3

    .line 6235
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession;->events:[Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 6236
    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession;->events:[Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;

    aget-object v0, v2, v1

    .line 6237
    .local v0, "element":Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;
    if-eqz v0, :cond_2

    .line 6238
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 6235
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6242
    .end local v0    # "element":Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;
    .end local v1    # "i":I
    :cond_3
    iget v2, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_4

    .line 6243
    iget-boolean v2, p0, Lcom/android/internal/telephony/TelephonyProto$SmsSession;->eventsDropped_:Z

    const/4 v3, 0x4

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 6245
    :cond_4
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 6227
    return-void
.end method
