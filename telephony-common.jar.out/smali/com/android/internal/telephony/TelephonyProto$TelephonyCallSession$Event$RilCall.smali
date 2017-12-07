.class public final Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;
.super Lcom/android/framework/protobuf/nano/ExtendableMessageNano;
.source "TelephonyProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RilCall"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall$Type;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/framework/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;


# instance fields
.field private bitField0_:I

.field private index_:I

.field private state_:I

.field private type_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4312
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 4313
    invoke-virtual {p0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->clear()Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    .line 4312
    return-void
.end method

.method public static emptyArray()[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;
    .locals 2

    .prologue
    .line 4240
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    if-nez v0, :cond_1

    .line 4241
    sget-object v1, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 4243
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    if-nez v0, :cond_0

    .line 4244
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    sput-object v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 4248
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->_emptyArray:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    return-object v0

    .line 4241
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;
    .locals 1
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4432
    new-instance v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    invoke-direct {v0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 4426
    new-instance v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    invoke-direct {v0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 4317
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    .line 4318
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->index_:I

    .line 4319
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->state_:I

    .line 4320
    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->type_:I

    .line 4321
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    .line 4322
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->cachedSize:I

    .line 4323
    return-object p0
.end method

.method public clearIndex()Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;
    .locals 1

    .prologue
    .line 4267
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->index_:I

    .line 4268
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    .line 4269
    return-object p0
.end method

.method public clearState()Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;
    .locals 1

    .prologue
    .line 4286
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->state_:I

    .line 4287
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    .line 4288
    return-object p0
.end method

.method public clearType()Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;
    .locals 1

    .prologue
    .line 4305
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->type_:I

    .line 4306
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    .line 4307
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 4343
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 4344
    .local v0, "size":I
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 4346
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->index_:I

    const/4 v2, 0x1

    .line 4345
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4348
    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 4350
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->state_:I

    const/4 v2, 0x2

    .line 4349
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4352
    :cond_1
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 4354
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->type_:I

    const/4 v2, 0x3

    .line 4353
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4356
    :cond_2
    return v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 4256
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->index_:I

    return v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 4275
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->state_:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 4294
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->type_:I

    return v0
.end method

.method public hasIndex()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 4264
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasState()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 4283
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasType()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 4302
    iget v1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

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
    .line 4360
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;
    .locals 4
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4364
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v1

    .line 4365
    .local v1, "tag":I
    sparse-switch v1, :sswitch_data_0

    .line 4369
    invoke-super {p0, p1, v1}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4370
    return-object p0

    .line 4367
    :sswitch_0
    return-object p0

    .line 4375
    :sswitch_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->index_:I

    .line 4376
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    goto :goto_0

    .line 4380
    :sswitch_2
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v0

    .line 4381
    .local v0, "initialPos":I
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    .line 4382
    .local v2, "value":I
    packed-switch v2, :pswitch_data_0

    .line 4397
    invoke-virtual {p1, v0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 4398
    invoke-virtual {p0, p1, v1}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    .line 4393
    :pswitch_0
    iput v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->state_:I

    .line 4394
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    goto :goto_0

    .line 4404
    .end local v0    # "initialPos":I
    .end local v2    # "value":I
    :sswitch_3
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v0

    .line 4405
    .restart local v0    # "initialPos":I
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    .line 4406
    .restart local v2    # "value":I
    packed-switch v2, :pswitch_data_1

    .line 4414
    invoke-virtual {p1, v0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 4415
    invoke-virtual {p0, p1, v1}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    .line 4410
    :pswitch_1
    iput v2, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->type_:I

    .line 4411
    iget v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    goto :goto_0

    .line 4365
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch

    .line 4382
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
        :pswitch_0
    .end packed-switch

    .line 4406
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public setIndex(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 4259
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->index_:I

    .line 4260
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    .line 4261
    return-object p0
.end method

.method public setState(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 4278
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->state_:I

    .line 4279
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    .line 4280
    return-object p0
.end method

.method public setType(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 4297
    iput p1, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->type_:I

    .line 4298
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    .line 4299
    return-object p0
.end method

.method public writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .param p1, "output"    # Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4329
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 4330
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->index_:I

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4332
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 4333
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->state_:I

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4335
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 4336
    iget v0, p0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event$RilCall;->type_:I

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4338
    :cond_2
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 4328
    return-void
.end method
