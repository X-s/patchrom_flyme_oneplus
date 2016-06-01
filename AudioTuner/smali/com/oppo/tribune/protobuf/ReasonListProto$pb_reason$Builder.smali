.class public final Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "ReasonListProto.java"

# interfaces
.implements Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;",
        ">;",
        "Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reasonOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private id_:I

.field private reason_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 282
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 459
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;->reason_:Ljava/lang/Object;

    .line 283
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;->maybeForceBuilderInitialization()V

    .line 284
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 287
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 459
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;->reason_:Ljava/lang/Object;

    .line 288
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;->maybeForceBuilderInitialization()V

    .line 289
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/oppo/tribune/protobuf/ReasonListProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;
    .param p2, "x1"    # Lcom/oppo/tribune/protobuf/ReasonListProto$1;

    .prologue
    .line 269
    invoke-direct {p0, p1}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;)Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 269
    invoke-direct {p0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;->buildParsed()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;
    .locals 1

    .prologue
    .line 269
    invoke-static {}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;->create()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 333
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;

    move-result-object v0

    .line 334
    .local v0, "result":Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 335
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 338
    :cond_0
    return-object v0
.end method

.method private static create()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;
    .locals 1

    .prologue
    .line 297
    new-instance v0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;

    invoke-direct {v0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 273
    # getter for: Lcom/oppo/tribune/protobuf/ReasonListProto;->internal_static_pb_reason_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/oppo/tribune/protobuf/ReasonListProto;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 292
    # getter for: Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;->build()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;->build()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;
    .locals 2

    .prologue
    .line 324
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;

    move-result-object v0

    .line 325
    .local v0, "result":Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;
    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 326
    invoke-static {v0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 328
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;
    .locals 5

    .prologue
    .line 342
    new-instance v1, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;-><init>(Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;Lcom/oppo/tribune/protobuf/ReasonListProto$1;)V

    .line 344
    .local v1, "result":Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;
    iget v0, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;->bitField0_:I

    .line 345
    .local v0, "from_bitField0_":I
    const/4 v2, 0x0

    .line 346
    .local v2, "to_bitField0_":I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 347
    or-int/lit8 v2, v2, 0x1

    .line 349
    :cond_0
    iget v3, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;->id_:I

    # setter for: Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;->id_:I
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;->access$702(Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;I)I

    .line 350
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 351
    or-int/lit8 v2, v2, 0x2

    .line 353
    :cond_1
    iget-object v3, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;->reason_:Ljava/lang/Object;

    # setter for: Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;->reason_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;->access$802(Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    # setter for: Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;->bitField0_:I
    invoke-static {v1, v2}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;->access$902(Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;I)I

    .line 355
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;->onBuilt()V

    .line 356
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;->clear()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;->clear()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;->clear()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;->clear()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;
    .locals 1

    .prologue
    .line 301
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 302
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;->id_:I

    .line 303
    iget v0, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;->bitField0_:I

    .line 304
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;->reason_:Ljava/lang/Object;

    .line 305
    iget v0, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;->bitField0_:I

    .line 306
    return-object p0
.end method

.method public clearId()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;
    .locals 1

    .prologue
    .line 452
    iget v0, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;->bitField0_:I

    .line 453
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;->id_:I

    .line 454
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;->onChanged()V

    .line 455
    return-object p0
.end method

.method public clearReason()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;
    .locals 1

    .prologue
    .line 488
    iget v0, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;->bitField0_:I

    .line 489
    invoke-static {}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;->getReason()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;->reason_:Ljava/lang/Object;

    .line 490
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;->onChanged()V

    .line 491
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;->clone()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;->clone()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;->clone()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;->clone()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;->clone()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;
    .locals 2

    .prologue
    .line 310
    invoke-static {}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;->create()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;->buildPartial()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;)Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;->clone()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;->getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;
    .locals 1

    .prologue
    .line 319
    invoke-static {}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 314
    invoke-static {}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 441
    iget v0, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;->id_:I

    return v0
.end method

.method public getReason()Ljava/lang/String;
    .locals 3

    .prologue
    .line 466
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;->reason_:Ljava/lang/Object;

    .line 467
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 468
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 470
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;->reason_:Ljava/lang/Object;

    .line 473
    .end local v1    # "s":Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v0    # "ref":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    .end local v0    # "ref":Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0
.end method

.method public hasId()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 437
    iget v1, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasReason()Z
    .locals 2

    .prologue
    .line 462
    iget v0, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 277
    # getter for: Lcom/oppo/tribune/protobuf/ReasonListProto;->internal_static_pb_reason_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/oppo/tribune/protobuf/ReasonListProto;->access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 384
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;->hasId()Z

    move-result v1

    if-nez v1, :cond_1

    .line 392
    :cond_0
    :goto_0
    return v0

    .line 388
    :cond_1
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;->hasReason()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 392
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "x1"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 269
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 269
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "x1"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 269
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "x1"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 269
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 269
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "x1"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 269
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 399
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-static {v2}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v1

    .line 402
    .local v1, "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 403
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 409
    invoke-virtual {p0, p1, v1, p2, v0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 411
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 412
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;->onChanged()V

    .line 413
    :goto_1
    return-object p0

    .line 405
    :sswitch_0
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 406
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;->onChanged()V

    goto :goto_1

    .line 418
    :sswitch_1
    iget v2, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;->bitField0_:I

    .line 419
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;->id_:I

    goto :goto_0

    .line 423
    :sswitch_2
    iget v2, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;->bitField0_:I

    .line 424
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;->reason_:Ljava/lang/Object;

    goto :goto_0

    .line 403
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;
    .locals 1
    .param p1, "other"    # Lcom/google/protobuf/Message;

    .prologue
    .line 360
    instance-of v0, p1, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;

    if-eqz v0, :cond_0

    .line 361
    check-cast p1, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;

    .end local p1    # "other":Lcom/google/protobuf/Message;
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;->mergeFrom(Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;)Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;

    move-result-object p0

    .line 364
    .end local p0    # "this":Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;
    :goto_0
    return-object p0

    .line 363
    .restart local p0    # "this":Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;
    .restart local p1    # "other":Lcom/google/protobuf/Message;
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;)Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;
    .locals 1
    .param p1, "other"    # Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;

    .prologue
    .line 370
    invoke-static {}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;->getDefaultInstance()Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 380
    :goto_0
    return-object p0

    .line 373
    :cond_0
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;->hasId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 374
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;->setId(I)Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;

    .line 376
    :cond_1
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;->hasReason()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 377
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;->getReason()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;->setReason(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;

    .line 379
    :cond_2
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public setId(I)Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 445
    iget v0, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;->bitField0_:I

    .line 446
    iput p1, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;->id_:I

    .line 447
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;->onChanged()V

    .line 448
    return-object p0
.end method

.method public setReason(Ljava/lang/String;)Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 478
    if-nez p1, :cond_0

    .line 479
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 481
    :cond_0
    iget v0, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;->bitField0_:I

    .line 482
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;->reason_:Ljava/lang/Object;

    .line 483
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;->onChanged()V

    .line 484
    return-object p0
.end method

.method setReason(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 495
    iget v0, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;->bitField0_:I

    .line 496
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;->reason_:Ljava/lang/Object;

    .line 497
    invoke-virtual {p0}, Lcom/oppo/tribune/protobuf/ReasonListProto$pb_reason$Builder;->onChanged()V

    .line 498
    return-void
.end method
