.class public final Lcom/google/analytics/containertag/proto/Serving$Property;
.super Lcom/google/tagmanager/protobuf/nano/ExtendableMessageNano;
.source "Serving.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/analytics/containertag/proto/Serving;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Property"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Serving$Property;


# instance fields
.field public key:I

.field public value:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 456
    new-array v0, v0, [Lcom/google/analytics/containertag/proto/Serving$Property;

    sput-object v0, Lcom/google/analytics/containertag/proto/Serving$Property;->EMPTY_ARRAY:[Lcom/google/analytics/containertag/proto/Serving$Property;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 457
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 460
    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Property;->key:I

    .line 463
    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Property;->value:I

    .line 457
    return-void
.end method

.method public static parseFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Serving$Property;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 551
    new-instance v0, Lcom/google/analytics/containertag/proto/Serving$Property;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Serving$Property;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/analytics/containertag/proto/Serving$Property;->mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Serving$Property;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/analytics/containertag/proto/Serving$Property;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/tagmanager/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 545
    new-instance v0, Lcom/google/analytics/containertag/proto/Serving$Property;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Serving$Property;-><init>()V

    invoke-static {v0, p0}, Lcom/google/tagmanager/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/tagmanager/protobuf/nano/MessageNano;[B)Lcom/google/tagmanager/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/containertag/proto/Serving$Property;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/analytics/containertag/proto/Serving$Property;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 466
    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Property;->key:I

    .line 467
    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Property;->value:I

    const/4 v0, 0x0

    .line 468
    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Property;->unknownFieldData:Ljava/util/List;

    const/4 v0, -0x1

    .line 469
    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Property;->cachedSize:I

    .line 470
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 475
    if-eq p1, p0, :cond_2

    .line 476
    instance-of v2, p1, Lcom/google/analytics/containertag/proto/Serving$Property;

    if-eqz v2, :cond_3

    .line 477
    check-cast p1, Lcom/google/analytics/containertag/proto/Serving$Property;

    .line 478
    iget v2, p0, Lcom/google/analytics/containertag/proto/Serving$Property;->key:I

    iget v3, p1, Lcom/google/analytics/containertag/proto/Serving$Property;->key:I

    if-eq v2, v3, :cond_4

    :cond_0
    :goto_0
    move v0, v1

    :cond_1
    return v0

    .line 475
    :cond_2
    return v0

    .line 476
    :cond_3
    return v1

    .line 478
    :cond_4
    iget v2, p0, Lcom/google/analytics/containertag/proto/Serving$Property;->value:I

    iget v3, p1, Lcom/google/analytics/containertag/proto/Serving$Property;->value:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Property;->unknownFieldData:Ljava/util/List;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Property;->unknownFieldData:Ljava/util/List;

    iget-object v3, p1, Lcom/google/analytics/containertag/proto/Serving$Property;->unknownFieldData:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_5
    iget-object v2, p1, Lcom/google/analytics/containertag/proto/Serving$Property;->unknownFieldData:Ljava/util/List;

    if-eqz v2, :cond_1

    goto :goto_0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 502
    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$Property;->key:I

    invoke-static {v0, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    const/4 v1, 0x2

    .line 504
    iget v2, p0, Lcom/google/analytics/containertag/proto/Serving$Property;->value:I

    invoke-static {v1, v2}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 506
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Property;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 507
    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Property;->cachedSize:I

    .line 508
    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 485
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Property;->key:I

    add-int/lit16 v0, v0, 0x20f

    .line 486
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$Property;->value:I

    add-int/2addr v0, v1

    .line 487
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Property;->unknownFieldData:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Property;->unknownFieldData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v1

    .line 488
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 487
    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Serving$Property;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 516
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 517
    sparse-switch v0, :sswitch_data_0

    .line 521
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Property;->unknownFieldData:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 525
    :goto_1
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Property;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 527
    return-object p0

    .line 519
    :sswitch_0
    return-object p0

    .line 522
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Property;->unknownFieldData:Ljava/util/List;

    goto :goto_1

    .line 532
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Property;->key:I

    goto :goto_0

    .line 536
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Property;->value:I

    goto :goto_0

    .line 517
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/tagmanager/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 453
    invoke-virtual {p0, p1}, Lcom/google/analytics/containertag/proto/Serving$Property;->mergeFrom(Lcom/google/tagmanager/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/analytics/containertag/proto/Serving$Property;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 493
    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$Property;->key:I

    invoke-virtual {p1, v0, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    const/4 v0, 0x2

    .line 494
    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$Property;->value:I

    invoke-virtual {p1, v0, v1}, Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 495
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Property;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/tagmanager/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/tagmanager/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 497
    return-void
.end method
